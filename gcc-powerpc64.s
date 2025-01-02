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
	ble- 0,.L5
	cmpdi 0,5,0
	add 4,4,5
	add 9,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L16
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 0
.L16:
	srdi 10,5,1
	mtctr 10
.L7:
	lbz 7,-1(4)
	mr 8,4
	addi 10,9,-1
	stb 7,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L7
	blr
.L5:
	beqlr- 0
	cmpdi 0,5,0
	beqlr- 0
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne- 0,.L29
.L19:
	srdi 8,5,1
	mtctr 8
.L8:
	lbz 6,1(9)
	mr 7,9
	addi 8,10,1
	stb 6,1(10)
	addi 9,9,2
	addi 10,10,2
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L8
	blr
.L29:
	cmpdi 0,8,0
	lbz 8,0(4)
	mr 9,4
	stb 8,0(3)
	mr 10,3
	bne+ 0,.L19
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
	cmpdi 0,6,0
	rlwinm 5,5,0,0xff
	beq- 0,.L31
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L51
.L41:
	srdi 10,6,1
	mtctr 10
	b .L32
.L34:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq- 0,.L49
	addi 3,3,1
	bdz .L31
.L32:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne+ 0,.L34
.L49:
	addi 3,3,1
	blr
.L51:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq- 0,.L49
	cmpdi 0,8,0
	addi 3,3,1
	bne+ 0,.L41
.L31:
	li 3,0
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
	cmpdi 0,5,0
	rlwinm 4,4,0,0xff
	beq- 0,.L56
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L72
.L59:
	srdi 9,5,1
	mtctr 9
.L53:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	bdnz .L53
.L56:
	li 3,0
	blr
.L72:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpdi 0,9,0
	addi 3,3,1
	bne+ 0,.L59
	b .L56
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
	beq- 0,.L78
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L93
.L81:
	srdi 9,5,1
	mtctr 9
	b .L74
.L76:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,8,1
	cmpw 0,10,9
	bne- 0,.L90
	bdz .L78
.L74:
	lbz 10,0(3)
	addi 7,3,1
	lbz 9,0(4)
	addi 8,4,1
	cmpw 0,10,9
	beq+ 0,.L76
.L90:
	subf 3,9,10
	extsw 3,3
	blr
.L93:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L90
	cmpdi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 0,.L81
.L78:
	li 3,0
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,3
	beq- 0,.L95
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L95:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
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
	mr 10,5
	andi. 9,10,0x1
	addi 5,5,-1
	add 9,3,5
	rlwinm 4,4,0,0xff
	beq- 0,.L105
	lbz 8,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,8,4
	beqlr- 0
.L105:
	srdi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L112
.L103:
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr- 0
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr- 0
	bdnz .L103
.L112:
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,3
	beq- 0,.L116
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	std 0,144(1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L116:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
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
	rlwinm 10,9,0,0xff
	stb 9,0(3)
	cmpwi 0,10,0
	beqlr- 0
.L120:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr- 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne+ 0,.L120
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
	lbz 9,0(3)
	rlwinm 4,4,0,0xff
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	beqlr- 0
.L131:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L131
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
.L134:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L134
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
	cmpw 0,9,10
	beq+ 0,.L139
	b .L138
.L140:
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 0,9,10
	bne- 0,.L138
.L139:
	cmpwi 0,9,0
	bne+ 0,.L140
.L138:
	subf 3,10,9
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
	beq- 0,.L146
	mr 9,3
.L145:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L145
	subf 3,3,9
	blr
.L146:
	li 3,0
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
	beq- 0,.L156
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	cmpwi 0,10,0
	subf 5,3,5
	addi 9,5,1
	mtctr 9
	bne+ 0,.L152
	b .L159
.L161:
	bdz .L151
	bne- 7,.L151
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq- 0,.L160
	mr 4,8
.L152:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne+ 0,.L161
.L151:
	subf 3,9,10
	extsw 3,3
	blr
.L156:
	li 3,0
	extsw 3,3
	blr
.L160:
	lbz 9,1(4)
	b .L151
.L159:
	lbz 9,0(4)
	b .L151
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
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L172
.L167:
	srdi 9,5,1
	mtctr 9
.L164:
	lbz 6,1(3)
	mr 9,4
	lbz 5,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 5,-2(4)
	stb 6,-4(4)
	stb 7,-3(4)
	stb 8,3(9)
	bdnz .L164
	blr
.L172:
	cmpdi 0,9,0
	lbz 10,1(3)
	lbz 9,0(3)
	addi 4,4,2
	stb 10,-2(4)
	addi 3,3,2
	stb 9,-1(4)
	bne+ 0,.L167
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
	beq- 0,.L177
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
.L177:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	ble- 0,.L180
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
.L180:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	beq- 0,.L187
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
.L187:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	cmplwi 0,3,31
	li 9,1
	ble- 0,.L190
	addi 9,3,-127
	cmplwi 0,9,32
	li 9,1
	bgt- 0,.L194
.L190:
	rldicl 3,9,0,63
	blr
.L194:
	addi 10,3,-8232
	cmplwi 0,10,1
	ble- 0,.L190
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
	rldicl 3,9,0,63
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
	ble- 0,.L203
	cmplwi 0,3,8231
	li 9,1
	ble- 0,.L198
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble- 0,.L198
	addis 10,3,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	ble- 0,.L198
	lis 9,0x10
	ori 9,9,0x3
	addi 10,10,4
	cmplw 0,10,9
	li 9,0
	bgt- 0,.L198
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
.L198:
	rldicl 3,9,0,63
	blr
.L203:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
	rldicl 3,9,0,63
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
	ble- 0,.L206
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
.L206:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	bun- 0,.L212
	fcmpu 0,1,2
	bng- 0,.L215
	fsub 1,1,2
	blr
.L215:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
.L212:
	fmr 1,2
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
	bun- 0,.L220
	fcmpu 0,1,2
	bng- 0,.L223
	fsubs 1,1,2
	blr
.L223:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
.L220:
	fmr 1,2
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
	fmr 0,1
	bun- 0,.L229
	fcmpu 0,2,2
	bun- 0,.L230
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L226
	cmpwi 0,9,0
	fmr 1,2
	bnelr- 0
.L230:
	fmr 1,0
	blr
.L226:
	fcmpu 0,1,2
	bnllr- 0
.L229:
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
	fcmpu 0,1,1
	stfs 1,48(1)
	stfs 2,56(1)
	bun- 0,.L238
	fcmpu 0,2,2
	bunlr- 0
	lwz 9,48(1)
	lwz 10,56(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq- 0,.L235
	cmpwi 0,9,0
	fmr 1,2
	bnelr- 0
	lfs 1,48(1)
	blr
.L235:
	fcmpu 0,1,2
	bnllr- 0
	fmr 1,2
	blr
.L238:
	fmr 1,2
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
	fcmpu 0,0,0
	bun- 0,.L249
	fmr 11,3
	fcmpu 0,11,11
	bunlr- 0
	stfd 0,-16(1)
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L244
	cmpwi 0,9,0
	beqlr- 0
.L249:
	fmr 1,3
	fmr 2,4
	blr
.L244:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr- 0
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
	fcmpu 0,1,1
	bun- 0,.L256
	fcmpu 0,2,2
	bunlr- 0
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	bne- 0,.L260
	fcmpu 0,1,2
	fmr 0,2
	bnl- 0,.L255
	fmr 0,1
.L255:
	fmr 1,0
	blr
.L260:
	cmpwi 0,9,0
	bnelr- 0
.L256:
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
	fcmpu 0,1,1
	stfs 1,48(1)
	stfs 2,56(1)
	bun- 0,.L266
	fcmpu 0,2,2
	fmr 0,2
	bunlr- 0
	lwz 9,48(1)
	lwz 10,56(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	bne- 0,.L271
	fcmpu 0,1,2
	fmr 0,1
	fmr 1,2
	bnllr- 0
	fmr 1,0
	blr
.L271:
	cmpwi 0,9,0
	bnelr- 0
	fmr 1,0
	blr
.L266:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun- 0,.L277
	fmr 11,3
	fcmpu 0,11,11
	bunlr- 0
	stfd 0,-16(1)
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L274
	cmpwi 0,9,0
	bnelr- 0
.L277:
	fmr 1,3
	fmr 2,4
	blr
.L274:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bltlr- 0
	fmr 1,3
	fmr 2,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-.L.fminl
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
	cmpwi 0,9,0
	addis 3,2,.LANCHOR0@toc@ha
	addi 3,3,.LANCHOR0@toc@l
	mr 10,3
	beq- 0,.L281
	addis 7,2,.LANCHOR1@toc@ha
	addi 7,7,.LANCHOR1@toc@l
.L282:
	rldicl 8,9,0,58
	srwi 9,9,6
	lbzx 8,7,8
	cmpwi 0,9,0
	stb 8,0(10)
	addi 10,10,1
	bne+ 0,.L282
.L281:
	li 9,0
	stb 9,0(10)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-.L.l64a
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
	addis 9,2,.LANCHOR0+8@toc@ha
	std 3,.LANCHOR0+8@toc@l(9)
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
	addis 7,2,.LANCHOR0+8@toc@ha
	ld 10,.LANCHOR0+8@toc@l(7)
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
	std 3,.LANCHOR0+8@toc@l(7)
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
	beq- 0,.L293
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr- 0
	std 3,8(9)
	blr
.L293:
	std 4,8(3)
	std 4,0(3)
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
	beq- 0,.L295
	ld 10,8(3)
	std 10,8(9)
.L295:
	ld 10,8(3)
	cmpdi 0,10,0
	beqlr- 0
	std 9,0(10)
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
	std 27,-40(1)
	.cfi_offset 27, -40
	ld 27,0(5)
	mflr 0
	cmpdi 0,27,0
	std 23,-72(1)
	std 24,-64(1)
	.cfi_register 65, 0
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr 23,4
	std 26,-48(1)
	mr 24,5
	std 28,-32(1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr 26,3
	std 0,16(1)
	mr 28,6
	std 25,-56(1)
	stdu 1,-192(1)
	.cfi_def_cfa_offset 192
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	std 2,40(1)
	beq- 0,.L304
	std 29,168(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,176(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,184(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L306
.L318:
	beq- 7,.L317
.L306:
	ld 9,0(30)
	mr 4,31
	ld 11,16(30)
	mr 3,26
	mtctr 9
	addi 29,29,1
	mr 25,31
	add 31,31,28
	ld 2,8(30)
	bctrl
	ld 2,40(1)
	cmpld 7,27,29
	cmpwi 0,3,0
	bne+ 0,.L318
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L303:
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mr 3,25
	ld 23,-72(1)
	mtlr 0
	.cfi_restore 65
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
.L317:
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
.L304:
	mulld 25,28,27
	cmpdi 0,28,0
	addi 27,27,1
	std 27,0(24)
	add 25,23,25
	beq- 0,.L303
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mr 3,25
	ld 23,-72(1)
	mtlr 0
	.cfi_restore 65
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
	std 26,-48(1)
	.cfi_offset 26, -48
	ld 26,0(5)
	std 25,-56(1)
	cmpdi 0,26,0
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	beq- 0,.L320
	mflr 0
	.cfi_register 65, 0
	std 27,136(1)
	.cfi_offset 27, -40
	mr 27,6
	std 28,144(1)
	.cfi_offset 28, -32
	mr 28,3
	std 29,152(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,160(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,168(1)
	.cfi_offset 31, -8
	mr 31,4
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	b .L322
.L330:
	beq- 7,.L329
.L322:
	ld 9,0(30)
	mr 4,31
	ld 11,16(30)
	mr 3,28
	mtctr 9
	addi 29,29,1
	mr 25,31
	add 31,31,27
	ld 2,8(30)
	bctrl
	ld 2,40(1)
	cmpld 7,26,29
	cmpwi 0,3,0
	bne+ 0,.L330
	ld 0,192(1)
	mr 3,25
	ld 27,136(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	ld 30,160(1)
	.cfi_restore 30
	ld 31,168(1)
	.cfi_restore 31
	addi 1,1,176
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 25,-56(1)
	ld 26,-48(1)
	.cfi_restore 26
	.cfi_restore 25
	blr
.L329:
	.cfi_restore_state
	ld 0,192(1)
	ld 27,136(1)
	.cfi_restore 27
	mtlr 0
	.cfi_restore 65
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	ld 30,160(1)
	.cfi_restore 30
	ld 31,168(1)
	.cfi_restore 31
.L320:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 25,0
	ld 26,-48(1)
	mr 3,25
	ld 25,-56(1)
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
.L339:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L333
	ble- 7,.L333
	cmpwi 0,10,43
	beq- 0,.L334
	cmpwi 0,10,45
	bne- 0,.L352
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L344
	li 5,1
.L337:
	li 3,0
.L341:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	slwi 9,9,1
	subf 3,7,9
	ble+ 0,.L341
	cmpwi 0,5,0
	bne- 0,.L340
	subf 3,9,7
.L340:
	extsw 3,3
	blr
.L333:
	addi 3,3,1
	b .L339
.L352:
	addi 9,10,-48
	cmplwi 0,9,9
	mr 8,3
	li 5,0
	ble+ 0,.L337
.L344:
	li 3,0
	b .L340
.L334:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L337
	li 3,0
	b .L340
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
.L360:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L354
	ble- 7,.L354
	cmpwi 0,10,43
	beq- 0,.L355
	cmpwi 0,10,45
	bne- 0,.L373
	lbz 10,1(3)
	addi 7,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L365
	li 5,1
.L358:
	li 3,0
.L362:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	extsw 8,8
	sldi 9,9,1
	subf 3,8,9
	ble+ 0,.L362
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,8
	blr
.L354:
	addi 3,3,1
	b .L360
.L373:
	addi 9,10,-48
	cmplwi 0,9,9
	mr 7,3
	li 5,0
	ble+ 0,.L358
.L365:
	li 3,0
	blr
.L355:
	lbz 10,1(3)
	addi 7,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L358
	b .L365
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
.LFB171:
	.cfi_startproc
.L379:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L375
	ble- 7,.L375
	cmpwi 0,10,43
	beq- 0,.L376
	cmpwi 0,10,45
	beq- 0,.L377
	addi 9,10,-48
	cmplwi 0,9,9
	mr 7,3
	li 5,0
	bgt- 0,.L386
.L380:
	li 3,0
.L383:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	extsw 8,8
	sldi 9,9,1
	subf 3,8,9
	ble+ 0,.L383
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,8
	blr
.L375:
	addi 3,3,1
	b .L379
.L377:
	lbz 10,1(3)
	addi 7,3,1
	li 5,1
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L380
.L386:
	li 3,0
	blr
.L376:
	lbz 10,1(3)
	addi 7,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L386
	li 5,0
	b .L380
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE171:
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- 0,.L395
	mflr 0
	.cfi_register 65, 0
	std 25,120(1)
	.cfi_offset 25, -56
	mr 25,3
	std 26,128(1)
	.cfi_offset 26, -48
	mr 26,4
	std 27,136(1)
	.cfi_offset 27, -40
	mr 27,6
	std 28,144(1)
	.cfi_offset 28, -32
	mr 28,7
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	std 29,152(1)
	.cfi_offset 29, -24
	b .L398
.L407:
	beq- 0,.L405
	cmpdi 0,31,0
	add 26,30,27
	beq- 0,.L406
.L398:
	srdi 29,31,1
	ld 9,0(28)
	mulld 30,29,27
	ld 11,16(28)
	mr 3,25
	mtctr 9
	addi 31,31,-1
	subf 31,29,31
	add 30,26,30
	mr 4,30
	ld 2,8(28)
	bctrl
	ld 2,40(1)
	cmpwi 0,3,0
	bge+ 0,.L407
	mr 31,29
	cmpdi 0,31,0
	bne+ 0,.L398
.L406:
	ld 0,192(1)
	ld 25,120(1)
	.cfi_restore 25
	mtlr 0
	.cfi_restore 65
	ld 26,128(1)
	.cfi_restore 26
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
.L395:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 31,-8(1)
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L405:
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 0,192(1)
	mr 3,30
	ld 25,120(1)
	.cfi_restore 25
	ld 26,128(1)
	.cfi_restore 26
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	addi 1,1,176
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
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
	cmpwi 0,5,0
	std 24,-64(1)
	std 25,-56(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	mr 24,3
	std 26,-48(1)
	mr 25,8
	std 27,-40(1)
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr 26,4
	std 29,-24(1)
	mr 27,6
	std 31,-8(1)
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 29,7
	std 30,-16(1)
	mr 31,5
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- 0,.L413
	mflr 0
	.cfi_register 65, 0
	std 2,40(1)
	std 0,192(1)
	.cfi_offset 65, 16
	std 28,144(1)
	.cfi_offset 28, -32
.L409:
	srawi 30,31,1
	ld 9,0(29)
	mulld 30,30,27
	ld 11,16(29)
	mr 5,25
	mtctr 9
	mr 3,24
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,26,30
	mr 4,30
	ld 2,8(29)
	bctrl
	ld 2,40(1)
	cmpwi 7,31,0
	cmpwi 0,3,0
	beq- 0,.L420
	cmpwi 5,28,0
	ble- 0,.L411
	add 26,30,27
	bne+ 7,.L409
.L421:
	ld 0,192(1)
	ld 28,144(1)
	.cfi_restore 28
	mtlr 0
	.cfi_restore 65
.L413:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 24,-64(1)
	mr 3,30
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
	.cfi_restore 24
	blr
.L411:
	.cfi_def_cfa_offset 176
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	mr 31,28
	bne+ 5,.L409
	b .L421
.L420:
	ld 0,192(1)
	mr 3,30
	ld 28,144(1)
	.cfi_restore 28
	addi 1,1,176
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 24,-64(1)
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
	.cfi_restore 24
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
	divw 10,4,5
	mullw 5,10,5
	stw 10,0(3)
	subf 4,5,4
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
	std 10,0(3)
	subf 4,5,4
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
.LFB167:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE167:
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
	std 10,0(3)
	subf 4,5,4
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
.LFB169:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE169:
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
	std 10,0(3)
	subf 4,5,4
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
	beq- 0,.L433
.L430:
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L430
.L433:
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
	beq+ 0,.L438
	b .L437
.L439:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L437
.L438:
	cmpwi 7,9,0
	bne+ 7,.L439
.L437:
	li 3,-1
	blt- 0,.L440
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L440:
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
.L443:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L443
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
	beq- 0,.L449
	mr 9,3
.L448:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L448
	subf 3,3,9
	sradi 3,3,2
	blr
.L449:
	li 3,0
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
	cmpdi 0,5,0
	beq- 0,.L461
	mtctr 5
	b .L452
.L463:
	beq- 7,.L454
	addi 3,3,4
	addi 4,4,4
	bdz .L461
.L452:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 0,9,10
	beq+ 0,.L463
.L454:
	lwz 3,0(3)
	lwz 10,0(4)
	cmpw 0,3,10
	bge- 0,.L456
	li 3,-1
	extsw 3,3
	blr
.L456:
	extsw 10,10
	extsw 3,3
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
.L461:
	li 3,0
	extsw 3,3
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
	cmpdi 0,5,0
	beq- 0,.L468
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L484
.L471:
	srdi 9,5,1
	mtctr 9
.L465:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,4
	bdnz .L465
.L468:
	li 3,0
	blr
.L484:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpdi 0,9,0
	addi 3,3,4
	bne+ 0,.L471
	b .L468
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
	beq- 0,.L491
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L506
.L494:
	srdi 9,5,1
	mtctr 9
	b .L486
.L488:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,8,4
	cmpw 0,9,10
	bne- 0,.L503
	bdz .L491
.L486:
	lwz 9,0(3)
	addi 7,3,4
	lwz 10,0(4)
	addi 8,4,4
	cmpw 0,9,10
	beq+ 0,.L488
.L503:
	blt- 0,.L507
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
.L506:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L503
	cmpdi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 0,.L494
.L491:
	li 3,0
	extsw 3,3
	blr
.L507:
	li 3,-1
	extsw 3,3
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,3
	beq- 0,.L509
	mflr 0
	.cfi_register 65, 0
	sldi 5,5,2
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L509:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
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
	sldi 9,5,2
	subf 10,4,3
	cmpld 0,10,9
	bge- 0,.L541
	cmpdi 0,5,0
	beqlr- 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne- 0,.L542
.L528:
	srdi 10,5,1
	mtctr 10
.L519:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L519
	blr
.L541:
	cmpdi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L543
.L531:
	srdi 8,5,1
	mtctr 8
.L520:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	stw 6,4(10)
	addi 9,9,8
	addi 10,10,8
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L520
	blr
.L542:
	cmpdi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne+ 0,.L528
	blr
.L543:
	cmpdi 0,8,0
	lwz 8,0(4)
	mr 9,4
	stw 8,0(3)
	mr 10,3
	bne+ 0,.L531
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
	andi. 8,5,0x3
	addi 9,3,-4
	addi 7,5,-1
	mr 10,5
	beq- 0,.L555
	cmpdi 0,8,1
	beq- 0,.L559
	cmpdi 0,8,2
	beq- 0,.L560
	stw 4,0(3)
	mr 5,7
	mr 9,3
.L560:
	stwu 4,4(9)
	addi 5,5,-1
.L559:
	cmpdi 0,5,1
	stwu 4,4(9)
	beqlr- 0
.L555:
	srdi 10,10,2
	mtctr 10
.L546:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L546
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
	bge- 0,.L568
	cmpdi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L579
	cmpdi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr- 0
.L579:
	srdi 9,5,1
	mtctr 9
.L570:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	stb 8,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L570
	blr
.L568:
	beqlr- 0
	cmpdi 0,5,0
	beqlr- 0
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne- 0,.L592
.L582:
	srdi 8,5,1
	mtctr 8
.L571:
	lbz 6,1(10)
	mr 7,10
	addi 8,9,1
	stb 6,1(9)
	addi 10,10,2
	addi 9,9,2
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L571
	blr
.L592:
	cmpdi 0,8,0
	lbz 8,0(3)
	mr 10,3
	stb 8,0(4)
	mr 9,4
	bne+ 0,.L582
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
.LFB173:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE173:
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
.LFB175:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE175:
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
	neg 9,4
	rlwinm 9,9,0,28,31
	srw 9,3,9
	slw 3,3,4
	or 3,3,9
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
	neg 9,4
	rlwinm 9,9,0,28,31
	slw 9,3,9
	srw 3,3,4
	or 3,3,9
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
	neg 9,4
	rlwinm 9,9,0,29,31
	srw 9,3,9
	slw 3,3,4
	or 3,3,9
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
	neg 9,4
	rlwinm 9,9,0,29,31
	slw 9,3,9
	srw 3,3,4
	or 3,3,9
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
	rlwinm 10,3,8,16,23
	rlwinm 9,3,24,24,31
	or 9,9,10
	rlwinm 3,9,0,0xffff
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
	rotlwi 9,3,24
	rlwimi 9,3,8,8,15
	rlwimi 9,3,8,24,31
	rldicl 3,9,0,32
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
	rotlwi 10,3,24
	srdi 9,3,32
	rlwimi 10,3,8,8,15
	rlwimi 10,3,8,24,31
	rotlwi 3,9,24
	rlwimi 3,9,8,8,15
	rlwimi 3,9,8,24,31
	rldimi 3,10,32,0
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
	li 10,16
	mtctr 10
	li 9,0
	b .L609
.L617:
	addi 9,9,1
	bne- 0,.L608
	bdz .L616
.L609:
	srw 10,3,9
	rldicl 10,10,0,63
	cmpdi 7,10,0
	addi 9,9,1
	srw 10,3,9
	andi. 10,10,0x1
	beq+ 7,.L617
.L608:
	extsw 3,9
	blr
.L616:
	li 9,0
	extsw 3,9
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
	mr. 9,3
	beq- 0,.L621
	andi. 3,9,0x1
	bne- 0,.L619
	li 3,1
.L620:
	srawi 9,9,1
	andi. 10,9,0x1
	addi 3,3,1
	beq+ 0,.L620
.L619:
	extsw 3,3
	blr
.L621:
	li 3,0
	extsw 3,3
	blr
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
	addis 9,2,.LC4@toc@ha
	lfs 0,.LC4@toc@l(9)
	li 3,1
	fcmpu 0,1,0
	blt- 0,.L625
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L625:
	rldicl 3,3,0,63
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
	addis 9,2,.LC8@toc@ha
	lfd 0,.LC8@toc@l(9)
	li 3,1
	fcmpu 0,1,0
	blt- 0,.L628
	addis 9,2,.LC9@toc@ha
	lfd 0,.LC9@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L628:
	rldicl 3,3,0,63
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
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 12,0(9)
	li 3,1
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt- 0,.L631
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L631:
	rldicl 3,3,0,63
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
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	lfd 0,-16(1)
	stfd 1,8(3)
	fcfid 0,0
	stfd 0,0(3)
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
	blt- 0,.L647
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
.L636:
	andi. 9,4,0x1
	beq- 0,.L637
.L638:
	fmuls 1,1,0
.L637:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmuls 0,0,0
	srawi 9,4,1
	addze 9,9
	bne- 0,.L638
.L648:
	extsw 4,9
	fmuls 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne- 0,.L638
	b .L648
.L647:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L636
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
	blt- 0,.L662
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
.L651:
	andi. 9,4,0x1
	beq- 0,.L652
.L653:
	fmul 1,1,0
.L652:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmul 0,0,0
	srawi 9,4,1
	addze 9,9
	bne- 0,.L653
.L663:
	extsw 4,9
	fmul 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne- 0,.L653
	b .L663
.L662:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L651
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
	.cfi_offset 60, -32
	fmr 28,1
	stfd 29,-24(1)
	.cfi_offset 61, -24
	fmr 29,2
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	fmr 0,28
	fcmpu 0,0,0
	bun- 0,.L665
	fmr 3,1
	mflr 0
	.cfi_register 65, 0
	fmr 4,2
	std 31,120(1)
	.cfi_offset 31, -40
	mr 31,5
	std 0,176(1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq- 0,.L680
	cmpwi 0,31,0
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	blt- 0,.L681
	addis 9,2,.LC25@toc@ha
	addi 9,9,.LC25@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
.L666:
	andi. 9,31,0x1
	beq- 0,.L667
.L668:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L667:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L679
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	fmr 31,2
	srawi 9,31,1
	addze 9,9
	fmr 30,1
	bne- 0,.L668
.L682:
	fmr 3,30
	extsw 31,9
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	fmr 31,2
	srawi 9,31,1
	addze 9,9
	fmr 30,1
	bne- 0,.L668
	b .L682
.L679:
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
.L680:
	ld 0,176(1)
	ld 31,120(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L665:
	fmr 1,28
	addi 1,1,160
	.cfi_def_cfa_offset 0
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L681:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 9,2,.LC26@toc@ha
	addi 9,9,.LC26@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L666
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
	andi. 9,5,0x1
	addi 7,4,-1
	addi 9,3,-1
	addi 8,5,-1
	bne- 0,.L696
.L690:
	srdi 10,5,1
	mtctr 10
.L685:
	lbz 8,1(9)
	mr 10,9
	lbz 4,1(7)
	addi 9,9,2
	lbz 5,2(7)
	addi 7,7,2
	xor 8,8,4
	stb 8,-1(9)
	lbz 8,2(10)
	xor 8,8,5
	stb 8,2(10)
	bdnz .L685
	blr
.L696:
	cmpdi 0,8,0
	lbz 10,0(3)
	lbz 8,0(4)
	mr 7,4
	mr 9,3
	xor 10,10,8
	stb 10,0(3)
	bne+ 0,.L690
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
	lbz 9,0(3)
	cmpwi 0,9,0
	mr 9,3
	beq- 0,.L698
.L699:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L699
.L698:
	cmpdi 0,5,0
	beq- 0,.L700
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L722
.L711:
	srdi 8,5,1
	mtctr 8
.L701:
	lbz 8,1(10)
	addi 7,10,1
	addi 6,9,1
	rlwinm 10,8,0,0xff
	stb 8,0(9)
	cmpwi 0,10,0
	addi 10,7,1
	beqlr- 0
	lbz 8,1(7)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	cmpwi 0,7,0
	addi 9,6,1
	beqlr- 0
	bdnz .L701
.L700:
	li 10,0
	stb 10,0(9)
	blr
.L722:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	cmpdi 0,7,0
	addi 9,9,1
	bne+ 0,.L711
	b .L700
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	cmpdi 0,4,0
	mr 9,3
	li 3,0
	beqlr- 0
	andi. 8,4,0x3
	mr 10,4
	beq- 0,.L735
	cmpdi 0,8,1
	beq- 0,.L746
	cmpdi 0,8,2
	beq- 0,.L747
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L747:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L746:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr- 0
.L735:
	srdi 10,10,2
.L724:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	lbzx 8,9,3
	mr 7,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,7,2
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	cmpdi 0,10,1
	addi 3,7,3
	addi 10,10,-1
	bne+ 0,.L724
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
	addi 4,4,-1
	cmpwi 0,8,0
	beq- 0,.L759
.L755:
	mr 10,4
	b .L758
.L757:
	beqlr- 7
.L758:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne+ 0,.L757
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L755
.L759:
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
.L764:
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	bne+ 7,.L763
	mr 3,9
.L763:
	addi 9,9,1
	bne+ 0,.L764
	blr
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
	lbz 11,0(4)
	mr 8,3
	andi. 5,11,0xff
	beq- 0,.L780
	mr 9,4
.L769:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L769
	subf. 9,4,9
	mr 3,8
	beqlr- 0
	addi 3,9,-1
	b .L777
.L790:
	cmpwi 0,9,0
	addi 8,8,1
	beq- 0,.L789
.L777:
	lbz 9,0(8)
	cmpw 0,9,5
	bne+ 0,.L790
	addi 0,3,1
	mtctr 0
	mr 6,4
	mr 10,11
	mr 7,8
	b .L771
.L792:
	bdz .L773
	bne- 7,.L774
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq- 0,.L791
	lbzu 10,1(6)
.L771:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne+ 0,.L792
.L774:
	addi 8,8,1
	b .L777
.L789:
	li 3,0
	blr
.L791:
	lbz 10,1(6)
.L773:
	cmpw 0,9,10
	bne+ 0,.L774
.L780:
	mr 3,8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	blt- 0,.L803
	bnglr- 0
	fcmpu 0,2,0
	bnllr+ 0
	fneg 1,1
	blr
.L803:
	fcmpu 0,2,0
	bnglr+ 0
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
	cmpdi 0,6,0
	mr 9,3
	beqlr- 0
	cmpld 0,4,6
	blt- 0,.L812
	subf 4,6,4
	add 0,3,4
	cmpld 0,3,0
	bgt- 0,.L812
	cmpldi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L809
.L806:
	cmpld 0,0,9
	blt- 0,.L812
.L809:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 0,10,12
	bne+ 0,.L806
	beqlr- 7
	subf 10,11,9
	add 10,10,6
	addi 10,10,-2
	mtctr 10
	mr 8,5
	mr 10,11
.L807:
	lbzu 4,1(10)
	lbzu 7,1(8)
	cmpw 0,4,7
	bne- 0,.L806
	bdnz .L807
	blr
.L812:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 30,3
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	beq- 0,.L821
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L821:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	add 3,30,31
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
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
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 7,1,0
	blt- 7,.L849
	addis 9,2,.LC35@toc@ha
	lfs 0,.LC35@toc@l(9)
	li 10,0
	fcmpu 0,1,0
	cror 2,1,2
	bne- 0,.L850
.L829:
	addis 8,2,.LC35@toc@ha
	lfs 0,.LC35@toc@l(8)
	addis 9,2,.LC18@toc@ha
	lfs 12,.LC18@toc@l(9)
	li 9,0
.L835:
	fmul 1,1,12
	addi 9,9,1
	fcmpu 0,1,0
	cror 2,1,2
	beq+ 0,.L835
	cmpwi 0,10,0
	stw 9,0(4)
	beqlr- 0
.L852:
	fneg 1,1
	blr
.L850:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	fcmpu 0,1,0
	bnl- 0,.L832
	bne- 7,.L841
.L832:
	li 9,0
	stw 9,0(4)
	blr
.L849:
	addis 9,2,.LC31@toc@ha
	fneg 12,1
	lfs 0,.LC31@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,2
	bne- 0,.L851
	fmr 1,12
	li 10,1
	b .L829
.L851:
	addis 9,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(9)
	fcmpu 0,1,0
	bng- 0,.L832
	li 10,1
.L830:
	fmr 1,12
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	li 9,0
.L837:
	fadd 1,1,1
	addi 9,9,-1
	fcmpu 0,1,0
	blt+ 0,.L837
	cmpwi 0,10,0
	stw 9,0(4)
	bne+ 0,.L852
	blr
.L841:
	fmr 12,1
	b .L830
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
	mr. 10,3
	li 3,0
	beqlr- 0
.L855:
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	beqlr- 0
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	bne+ 0,.L855
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
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 10,32
	li 9,1
	blt+ 0,.L860
	b .L861
.L864:
	rldicl 4,8,0,32
	slwi 8,4,1
	cmpwi 0,4,0
	cmplw 5,3,8
	slwi 9,9,1
	ble- 7,.L862
	blt- 0,.L861
	rldicl 4,8,0,32
	slwi 9,9,1
	ble- 5,.L862
	bdz .L863
.L860:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge+ 0,.L864
.L861:
	li 10,0
.L866:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt- 0,.L865
	rldicl 3,8,0,32
	or 10,10,9
.L865:
	srwi 9,9,1
	cmpwi 0,9,0
	bne+ 0,.L866
.L863:
	cmpdi 0,5,0
	beq+ 0,.L867
	mr 10,3
.L867:
	rldicl 3,10,0,32
	blr
.L862:
	cmpwi 0,9,0
	bne+ 0,.L861
	li 10,0
	b .L863
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
	beq- 0,.L881
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	extsw 3,3
	blr
.L881:
	li 3,7
	extsw 3,3
	blr
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
	cmpd 0,3,9
	xor 3,3,9
	beq- 0,.L884
	cntlzd 3,3
	addi 3,3,-1
	extsw 3,3
	blr
.L884:
	li 3,63
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
	mr. 10,3
	li 3,0
	beq- 0,.L886
.L887:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	bne+ 0,.L887
.L886:
	rldicl 3,3,0,32
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
	cmpld 0,3,4
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	blt- 0,.L894
	add 7,4,5
	cmpld 0,3,7
	mr 8,5
	ble- 0,.L925
.L894:
	cmpwi 0,10,0
	addi 8,4,-8
	addi 7,3,-8
	beq- 0,.L893
	andi. 6,10,0x1
	addi 6,10,-1
	bne- 0,.L926
.L909:
	srdi 10,10,1
	mtctr 10
.L897:
	ld 11,8(8)
	mr 6,8
	addi 10,7,8
	std 11,8(7)
	addi 8,8,16
	addi 7,7,16
	ld 6,16(6)
	std 6,8(10)
	bdnz .L897
.L893:
	cmplw 0,9,5
	bgelr- 0
	subf 5,9,5
	rldicl 5,5,0,32
	andi. 10,5,0x1
	rldicl 9,9,0,32
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	bne- 0,.L927
.L906:
	srdi 9,5,1
	mtctr 9
.L898:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	addi 3,3,2
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L898
	blr
.L927:
	cmpdi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne+ 0,.L906
	blr
.L926:
	cmpdi 0,6,0
	ld 7,0(4)
	mr 8,4
	std 7,0(3)
	mr 7,3
	bne+ 0,.L909
	b .L893
.L925:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L928
.L912:
	srdi 9,8,1
	mtctr 9
.L899:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L899
	blr
.L928:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L912
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
	cmpld 0,3,4
	srwi 9,5,1
	blt- 0,.L933
	add 8,4,5
	cmpld 0,3,8
	mr 10,5
	ble- 0,.L960
.L933:
	cmpwi 0,9,0
	addi 8,4,-2
	addi 10,3,-2
	beq- 0,.L932
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L961
.L946:
	srdi 9,9,1
	mtctr 9
.L936:
	lhz 6,2(8)
	mr 7,8
	addi 9,10,2
	sth 6,2(10)
	addi 8,8,4
	addi 10,10,4
	lhz 7,4(7)
	sth 7,2(9)
	bdnz .L936
.L932:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L961:
	cmpdi 0,7,0
	lhz 10,0(4)
	mr 8,4
	sth 10,0(3)
	mr 10,3
	bne+ 0,.L946
	b .L932
.L960:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L962
.L949:
	srdi 9,10,1
	mtctr 9
.L938:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L938
	blr
.L962:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L949
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
	cmpld 0,3,4
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	blt- 0,.L967
	add 7,4,5
	cmpld 0,3,7
	mr 8,5
	ble- 0,.L998
.L967:
	cmpwi 0,10,0
	addi 8,4,-4
	addi 7,3,-4
	beq- 0,.L966
	andi. 6,10,0x1
	addi 6,10,-1
	bne- 0,.L999
.L982:
	srdi 10,10,1
	mtctr 10
.L970:
	lwz 11,4(8)
	mr 6,8
	addi 10,7,4
	stw 11,4(7)
	addi 8,8,8
	addi 7,7,8
	lwz 6,8(6)
	stw 6,4(10)
	bdnz .L970
.L966:
	cmplw 0,9,5
	bgelr- 0
	subf 5,9,5
	rldicl 5,5,0,32
	andi. 10,5,0x1
	rldicl 9,9,0,32
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	bne- 0,.L1000
.L979:
	srdi 9,5,1
	mtctr 9
.L971:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	addi 3,3,2
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L971
	blr
.L1000:
	cmpdi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne+ 0,.L979
	blr
.L999:
	cmpdi 0,6,0
	lwz 7,0(4)
	mr 8,4
	stw 7,0(3)
	mr 7,3
	bne+ 0,.L982
	b .L966
.L998:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L1001
.L985:
	srdi 9,8,1
	mtctr 9
.L972:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L972
	blr
.L1001:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L985
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
	blt- 0,.L1008
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L1008:
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
	blt- 0,.L1011
	sradi 10,3,53
	addi 10,10,1
	rldicl 9,3,0,53
	cmpldi 0,10,2
	addi 9,9,2047
	or 9,9,3
	rldicr 9,9,0,52
	blt- 0,.L1014
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L1014:
	mr 9,3
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L1011:
	srdi 10,3,1
	srdi 9,10,53
	rldicl 3,3,0,63
	or 3,3,10
	addi 9,9,1
	cmpldi 0,9,2
	rldicl 9,3,0,53
	addi 9,9,2047
	or 9,9,3
	rldicr 9,9,0,52
	bge- 0,.L1013
	mr 9,3
.L1013:
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
	srdi. 9,3,15
	bne- 0,.L1019
	srawi 9,3,14
	cmpwi 0,9,0
	bne- 0,.L1018
	srdi. 9,3,13
	bne- 0,.L1020
	srdi. 9,3,12
	bne- 0,.L1021
	srdi. 9,3,11
	bne- 0,.L1022
	srdi. 9,3,10
	bne- 0,.L1023
	srdi. 9,3,9
	bne- 0,.L1024
	srdi. 9,3,8
	bne- 0,.L1025
	srdi. 9,3,7
	bne- 0,.L1026
	srdi. 9,3,6
	bne- 0,.L1027
	srdi. 9,3,5
	bne- 0,.L1028
	srdi. 9,3,4
	bne- 0,.L1029
	srdi. 9,3,3
	bne- 0,.L1030
	srdi. 9,3,2
	bne- 0,.L1031
	srdi. 9,3,1
	bne- 0,.L1032
	cntlzd 3,3
	srdi 3,3,6
	addi 9,3,15
.L1018:
	rldicl 3,9,0,59
	blr
.L1019:
	li 9,0
	b .L1018
.L1030:
	li 9,12
	b .L1018
.L1020:
	li 9,2
	b .L1018
.L1021:
	li 9,3
	b .L1018
.L1022:
	li 9,4
	b .L1018
.L1023:
	li 9,5
	b .L1018
.L1024:
	li 9,6
	b .L1018
.L1025:
	li 9,7
	b .L1018
.L1026:
	li 9,8
	b .L1018
.L1027:
	li 9,9
	b .L1018
.L1028:
	li 9,10
	b .L1018
.L1029:
	li 9,11
	b .L1018
.L1031:
	li 9,13
	b .L1018
.L1032:
	li 9,14
	b .L1018
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
	andi. 9,3,0x1
	bne- 0,.L1037
	andi. 9,3,0x2
	bne- 0,.L1038
	andi. 9,3,0x4
	bne- 0,.L1039
	andi. 9,3,0x8
	bne- 0,.L1040
	andi. 9,3,0x10
	bne- 0,.L1041
	andi. 9,3,0x20
	bne- 0,.L1042
	andi. 9,3,0x40
	bne- 0,.L1043
	andi. 9,3,0x80
	bne- 0,.L1044
	andi. 9,3,0x100
	bne- 0,.L1045
	andi. 9,3,0x200
	bne- 0,.L1046
	andi. 9,3,0x400
	bne- 0,.L1047
	andi. 9,3,0x800
	bne- 0,.L1048
	andi. 9,3,0x1000
	bne- 0,.L1049
	andi. 9,3,0x2000
	bne- 0,.L1050
	andi. 9,3,0x4000
	bne- 0,.L1051
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
.L1036:
	rldicl 3,3,0,59
	blr
.L1037:
	li 3,0
	b .L1036
.L1038:
	li 3,1
	b .L1036
.L1049:
	li 3,12
	b .L1036
.L1039:
	li 3,2
	b .L1036
.L1040:
	li 3,3
	b .L1036
.L1041:
	li 3,4
	b .L1036
.L1042:
	li 3,5
	b .L1036
.L1043:
	li 3,6
	b .L1036
.L1044:
	li 3,7
	b .L1036
.L1045:
	li 3,8
	b .L1036
.L1046:
	li 3,9
	b .L1036
.L1047:
	li 3,10
	b .L1036
.L1048:
	li 3,11
	b .L1036
.L1050:
	li 3,13
	b .L1036
.L1051:
	li 3,14
	b .L1036
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
	addis 9,2,.LC41@toc@ha
	lfs 0,.LC41@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1059
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L1059:
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
	rlwinm 10,3,0,31,31
	rlwinm 9,3,31,31,31
	add 9,9,10
	rlwinm 10,3,30,31,31
	add 9,9,10
	rlwinm 10,3,29,31,31
	add 9,9,10
	rlwinm 10,3,28,31,31
	add 9,9,10
	rlwinm 10,3,27,31,31
	add 9,9,10
	rlwinm 10,3,26,31,31
	add 9,9,10
	rlwinm 10,3,25,31,31
	add 9,9,10
	rlwinm 10,3,24,31,31
	add 9,9,10
	rlwinm 10,3,23,31,31
	add 9,9,10
	rlwinm 10,3,22,31,31
	add 9,9,10
	rlwinm 10,3,21,31,31
	add 9,9,10
	rlwinm 10,3,20,31,31
	add 9,9,10
	rlwinm 10,3,19,31,31
	add 9,9,10
	rlwinm 10,3,18,31,31
	add 9,9,10
	srawi 3,3,15
	add 3,9,3
	rldicl 3,3,0,63
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
	rlwinm 10,3,0,31,31
	rlwinm 9,3,31,31,31
	add 9,9,10
	rlwinm 10,3,30,31,31
	add 9,9,10
	rlwinm 10,3,29,31,31
	add 9,9,10
	rlwinm 10,3,28,31,31
	add 9,9,10
	rlwinm 10,3,27,31,31
	add 9,9,10
	rlwinm 10,3,26,31,31
	add 9,9,10
	rlwinm 10,3,25,31,31
	add 9,9,10
	rlwinm 10,3,24,31,31
	add 9,9,10
	rlwinm 10,3,23,31,31
	add 9,9,10
	rlwinm 10,3,22,31,31
	add 9,9,10
	rlwinm 10,3,21,31,31
	add 9,9,10
	rlwinm 10,3,20,31,31
	add 9,9,10
	rlwinm 10,3,19,31,31
	add 9,9,10
	rlwinm 10,3,18,31,31
	add 9,9,10
	srawi 3,3,15
	add 3,9,3
	rldicl 3,3,0,32
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
.LFB177:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq- 0,.L1063
.L1064:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 0,10,0
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	bne+ 0,.L1064
.L1063:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE177:
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
	li 3,0
	beq- 0,.L1068
	cmpdi 0,4,0
	beq- 0,.L1068
.L1069:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	bne+ 0,.L1069
.L1068:
	rldicl 3,3,0,32
	blr
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
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 10,32
	li 9,1
	blt+ 0,.L1074
	b .L1075
.L1078:
	rldicl 4,8,0,32
	slwi 8,4,1
	cmpwi 0,4,0
	cmplw 5,3,8
	slwi 9,9,1
	ble- 7,.L1076
	blt- 0,.L1075
	rldicl 4,8,0,32
	slwi 9,9,1
	ble- 5,.L1076
	bdz .L1077
.L1074:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge+ 0,.L1078
.L1075:
	li 10,0
.L1080:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt- 0,.L1079
	rldicl 3,8,0,32
	or 10,10,9
.L1079:
	srwi 9,9,1
	cmpwi 0,9,0
	bne+ 0,.L1080
.L1077:
	cmpdi 0,5,0
	beq+ 0,.L1081
	mr 10,3
.L1081:
	rldicl 3,10,0,32
	blr
.L1076:
	cmpwi 0,9,0
	bne+ 0,.L1075
	li 10,0
	b .L1077
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
	fcmpu 0,1,2
	li 3,-1
	blt- 0,.L1094
	mfcr 3
	rlwinm 3,3,2,1
.L1094:
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
	fcmpu 0,1,2
	li 3,-1
	blt- 0,.L1097
	mfcr 3
	rlwinm 3,3,2,1
.L1097:
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
	blt- 0,.L1115
	cmpdi 0,4,0
	beq- 0,.L1107
	li 6,0
.L1103:
	li 10,32
	li 8,0
	b .L1106
.L1116:
	beq- 7,.L1105
.L1106:
	rlwinm 9,4,0,31,31
	sradi. 4,4,1
	addi 10,10,-1
	neg 9,9
	and 9,9,3
	rlwinm 7,10,0,0xff
	slwi 3,3,1
	cmpwi 7,7,0
	add 8,8,9
	extsw 3,3
	bne+ 0,.L1116
.L1105:
	cmpwi 0,6,0
	beq- 0,.L1104
	neg 8,8
.L1104:
	extsw 3,8
	blr
.L1115:
	neg 4,4
	extsw 4,4
	li 6,1
	b .L1103
.L1107:
	li 8,0
	b .L1104
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
	cmpdi 0,3,0
	li 9,1
	li 8,0
	bge+ 0,.L1118
	neg 3,3
	li 9,0
	li 8,1
.L1118:
	cmpdi 0,4,0
	bge+ 0,.L1119
	neg 4,4
	mr 8,9
.L1119:
	cmplw 0,3,4
	li 10,16
	mtctr 10
	li 9,1
	bgt+ 0,.L1120
	b .L1121
.L1124:
	slwi 4,4,1
	cmplw 0,3,4
	cmpwi 7,4,0
	slwi 9,9,1
	ble- 0,.L1122
	blt- 7,.L1140
	slwi 4,4,1
	cmplw 0,3,4
	slwi 9,9,1
	ble- 0,.L1122
	bdz .L1131
.L1120:
	cmpwi 0,4,0
	bge+ 0,.L1124
.L1140:
	cmplw 0,3,4
.L1121:
	li 10,0
.L1126:
	blt- 0,.L1125
	subf 3,4,3
	or 10,10,9
.L1125:
	srwi 9,9,1
	cmpwi 7,9,0
	srwi 4,4,1
	cmplw 0,3,4
	bne+ 7,.L1126
	cmpwi 0,8,0
	rldicl 3,10,0,32
	beqlr- 0
.L1144:
	neg 3,3
	blr
.L1122:
	cmpwi 7,9,0
	bne+ 7,.L1121
.L1131:
	cmpwi 0,8,0
	li 3,0
	beqlr- 0
	b .L1144
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	cmpdi 0,3,0
	li 8,0
	bge+ 0,.L1146
	neg 3,3
	li 8,1
.L1146:
	sradi 9,4,63
	xor 4,9,4
	subf 9,9,4
	cmplw 0,3,9
	li 7,16
	mtctr 7
	li 10,1
	bgt+ 0,.L1147
	b .L1153
.L1151:
	slwi 9,9,1
	cmplw 0,3,9
	cmpwi 7,9,0
	slwi 10,10,1
	ble- 0,.L1149
	blt- 7,.L1170
	slwi 9,9,1
	cmplw 0,3,9
	slwi 10,10,1
	ble- 0,.L1149
	bdz .L1150
.L1147:
	cmpwi 0,9,0
	bge+ 0,.L1151
.L1170:
	cmplw 0,3,9
.L1153:
	srwi 10,10,1
	blt- 0,.L1152
	subf 3,9,3
.L1152:
	cmpwi 7,10,0
	srwi 9,9,1
	cmplw 0,3,9
	bne+ 7,.L1153
.L1150:
	cmpwi 0,8,0
	rldicl 3,3,0,32
	beqlr- 0
	neg 3,3
	blr
.L1149:
	cmpwi 7,10,0
	bne+ 7,.L1153
	b .L1150
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	cmplw 0,4,3
	bge- 0,.L1287
	andi. 9,4,0x8000
	bne- 0,.L1175
	rldic 9,4,1,48
	cmplw 0,3,9
	ble- 0,.L1176
	andi. 10,9,0x8000
	bne- 0,.L1177
	rldic 9,4,2,48
	cmplw 0,3,9
	ble- 0,.L1178
	andi. 10,9,0x8000
	bne- 0,.L1179
	rldic 9,4,3,48
	cmplw 0,3,9
	ble- 0,.L1180
	andi. 10,9,0x8000
	bne- 0,.L1181
	rldic 9,4,4,48
	cmplw 0,3,9
	ble- 0,.L1182
	andi. 10,9,0x8000
	bne- 0,.L1183
	rldic 9,4,5,48
	cmplw 0,3,9
	ble- 0,.L1184
	andi. 10,9,0x8000
	bne- 0,.L1185
	rldic 9,4,6,48
	cmplw 0,3,9
	ble- 0,.L1186
	andi. 10,9,0x8000
	bne- 0,.L1187
	rldic 9,4,7,48
	cmplw 0,3,9
	ble- 0,.L1188
	andi. 10,9,0x8000
	bne- 0,.L1189
	rldic 9,4,8,48
	cmplw 0,3,9
	ble- 0,.L1190
	andi. 10,9,0x8000
	bne- 0,.L1191
	rldic 9,4,9,48
	cmplw 0,3,9
	ble- 0,.L1192
	andi. 10,9,0x8000
	bne- 0,.L1193
	rldic 9,4,10,48
	cmplw 0,3,9
	ble- 0,.L1194
	andi. 10,9,0x8000
	bne- 0,.L1195
	rldic 9,4,11,48
	cmplw 0,3,9
	ble- 0,.L1196
	andi. 10,9,0x8000
	bne- 0,.L1197
	rldic 9,4,12,48
	cmplw 0,3,9
	ble- 0,.L1198
	andi. 10,9,0x8000
	bne- 0,.L1199
	rldic 9,4,13,48
	cmplw 0,3,9
	ble- 0,.L1200
	andi. 10,9,0x8000
	bne- 0,.L1201
	rldic 9,4,14,48
	cmplw 0,3,9
	ble- 0,.L1202
	andi. 10,9,0x8000
	bne- 0,.L1203
	rldic 4,4,15,48
	cmplw 0,3,4
	ble- 0,.L1204
	cmpdi 0,4,0
	li 7,0
	bne- 0,.L1288
.L1205:
	cmpdi 0,5,0
	beq+ 0,.L1223
	mr 7,3
.L1223:
	rlwinm 3,7,0,0xffff
	blr
.L1192:
	blt- 0,.L1239
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,512
	li 8,512
.L1207:
	srwi 10,8,2
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,2
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1208
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1208:
	srwi 10,8,3
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,3
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1209
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1209:
	srwi 10,8,4
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,4
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1210
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1210:
	srwi 10,8,5
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,5
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1211
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1211:
	srwi 10,8,6
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,6
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1212
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1212:
	srwi 10,8,7
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,7
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1213
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1213:
	srwi 10,8,8
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,8
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1214
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1214:
	srwi 10,8,9
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,9
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1215
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1215:
	srwi 10,8,10
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,10
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1216
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1216:
	srwi 10,8,11
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,11
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1217
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1217:
	srwi 10,8,12
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,12
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1218
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1218:
	srwi 10,8,13
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,13
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1219
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1219:
	srwi 10,8,14
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,14
	beq- 0,.L1205
	cmplw 0,3,10
	blt- 0,.L1220
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1220:
	cmpwi 0,8,16384
	srdi 9,9,15
	beq- 0,.L1205
	cmplw 0,3,9
	blt- 0,.L1228
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	ori 7,7,0x1
	b .L1205
.L1228:
	li 3,0
	b .L1205
.L1287:
	li 7,0
	bne- 0,.L1205
	li 7,1
	li 3,0
	b .L1205
.L1175:
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	li 7,1
	b .L1205
.L1176:
	blt- 0,.L1231
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,2
	li 8,2
	b .L1207
.L1177:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	rldicl 4,4,0,49
	li 10,1
	li 7,2
	li 8,2
.L1225:
	cmplw 0,3,4
	blt- 0,.L1207
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 7,7,10
	b .L1207
.L1178:
	blt- 0,.L1232
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,4
	li 8,4
	b .L1207
.L1179:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,2
	li 7,4
	li 8,4
	b .L1225
.L1180:
	blt- 0,.L1233
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,8
	li 8,8
	b .L1207
.L1181:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,4
	li 7,8
	li 8,8
	b .L1225
.L1182:
	blt- 0,.L1234
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,16
	li 8,16
	b .L1207
.L1183:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,8
	li 7,16
	li 8,16
	b .L1225
.L1184:
	blt- 0,.L1235
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,32
	li 8,32
	b .L1207
.L1185:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,16
	li 7,32
	li 8,32
	b .L1225
.L1186:
	blt- 0,.L1236
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,64
	li 8,64
	b .L1207
.L1187:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,32
	li 7,64
	li 8,64
	b .L1225
.L1188:
	blt- 0,.L1237
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,128
	li 8,128
	b .L1207
.L1189:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,64
	li 7,128
	li 8,128
	b .L1225
.L1191:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,128
	li 7,256
	li 8,256
	b .L1225
.L1193:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,256
	li 7,512
	li 8,512
	b .L1225
.L1231:
	li 8,2
.L1224:
	rldicl 10,8,63,49
	srdi 4,9,1
	li 7,0
	b .L1225
.L1195:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,512
	li 7,1024
	li 8,1024
	b .L1225
.L1197:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1225
.L1232:
	li 8,4
	b .L1224
.L1233:
	li 8,8
	b .L1224
.L1199:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1225
.L1201:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1225
.L1234:
	li 8,16
	b .L1224
.L1203:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1225
.L1235:
	li 8,32
	b .L1224
.L1236:
	li 8,64
	b .L1224
.L1204:
	andi. 9,3,0x8000
	li 9,-1
	rlwinm 9,9,0,16,16
	bne- 0,.L1230
	li 8,0
	ori 8,8,0x8000
	b .L1224
.L1288:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1225
.L1237:
	li 8,128
	b .L1224
.L1190:
	blt- 0,.L1238
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,256
	li 8,256
	b .L1207
.L1230:
	mr 8,9
	li 7,-32768
	li 3,0
	b .L1207
.L1238:
	li 8,256
	b .L1224
.L1194:
	blt- 0,.L1240
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,1024
	li 8,1024
	b .L1207
.L1202:
	blt- 0,.L1244
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,16384
	li 8,16384
	b .L1207
.L1240:
	li 8,1024
	b .L1224
.L1244:
	li 8,16384
	b .L1224
.L1239:
	li 8,512
	b .L1224
.L1200:
	blt- 0,.L1243
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,8192
	li 8,8192
	b .L1207
.L1198:
	blt- 0,.L1242
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,4096
	li 8,4096
	b .L1207
.L1196:
	blt- 0,.L1241
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,2048
	li 8,2048
	b .L1207
.L1243:
	li 8,8192
	b .L1224
.L1242:
	li 8,4096
	b .L1224
.L1241:
	li 8,2048
	b .L1224
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
	cmpld 0,4,3
	li 8,64
	mtctr 8
	mr 10,3
	li 9,1
	blt+ 0,.L1290
	b .L1310
.L1294:
	sldi 4,4,1
	cmpld 7,10,4
	sldi 9,9,1
	ble- 7,.L1292
	bdz .L1293
.L1290:
	andis. 3,4,0x8000
	beq+ 0,.L1294
.L1310:
	cmpld 7,10,4
	li 3,0
.L1296:
	blt- 7,.L1295
	subf 10,4,10
	or 3,3,9
.L1295:
	srdi. 9,9,1
	srdi 4,4,1
	cmpld 7,10,4
	bne+ 0,.L1296
.L1293:
	cmpdi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1292:
	cmpdi 0,9,0
	beq- 0,.L1293
	li 3,0
	b .L1296
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
	andi. 9,4,0x20
	beq- 0,.L1312
	addi 4,4,-32
	slw 10,3,4
	sldi 10,10,32
	li 3,0
	or 3,3,10
	blr
.L1312:
	cmpdi 0,4,0
	beqlr- 0
	sradi 8,3,32
	subfic 10,4,32
	srw 10,3,10
	slw 8,8,4
	or 10,10,8
	slw 3,3,4
	sldi 10,10,32
	or 3,3,10
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
	beq- 0,.L1318
	addi 5,5,-64
	sld 3,4,5
	li 4,0
	blr
.L1318:
	cmpdi 0,5,0
	beqlr- 0
	subfic 9,5,64
	srd 9,4,9
	sld 3,3,5
	or 3,9,3
	sld 4,4,5
	blr
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
	andi. 9,4,0x20
	mr 9,3
	beq- 0,.L1323
	sradi 9,3,32
	addi 4,4,-32
	sraw 10,9,4
	srawi 3,9,31
	rldicl 10,10,0,32
	sldi 3,3,32
	or 3,3,10
	blr
.L1323:
	cmpdi 0,4,0
	beqlr- 0
	sradi 3,3,32
	subfic 10,4,32
	srw 9,9,4
	slw 10,3,10
	or 10,10,9
	sraw 3,3,4
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
	beq- 0,.L1329
	addi 5,5,-64
	srad 4,3,5
	sradi 3,3,63
	blr
.L1329:
	cmpdi 0,5,0
	beqlr- 0
	subfic 9,5,64
	sld 9,3,9
	srd 4,4,5
	or 4,9,4
	srad 3,3,5
	blr
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
	rotlwi 10,3,24
	srdi 9,3,32
	rlwimi 10,3,8,8,15
	rlwimi 10,3,8,24,31
	rotlwi 3,9,24
	rlwimi 3,9,8,8,15
	rlwimi 3,9,8,24,31
	rldimi 3,10,32,0
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
	rotlwi 9,3,24
	rlwimi 9,3,8,8,15
	rlwimi 9,3,8,24,31
	rldicl 3,9,0,32
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
	rldicl 7,3,0,32
	addis 7,7,0xffff
	srdi 7,7,63
	slwi 7,7,4
	subfic 9,7,16
	srw 3,3,9
	rlwinm 8,3,0,16,23
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,3
	subfic 9,8,8
	srw 3,3,9
	rlwinm 10,3,0,24,27
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	subfic 9,10,4
	srw 3,3,9
	rlwinm 9,3,0,28,29
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,1
	subfic 6,9,2
	srw 3,3,6
	andi. 6,3,0x2
	add 8,8,7
	add 10,10,8
	bne- 0,.L1336
	subfic 3,3,2
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
.L1336:
	add 9,9,10
	li 3,0
	add 3,3,9
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
	andi. 9,9,0xff
	subfic 10,3,0
	subfe 10,10,10
	and 10,10,3
	bne- 0,.L1340
	li 4,0
.L1340:
	or 10,10,4
	cntlzd 10,10
	slwi 9,9,6
	add 3,9,10
	rldicl 3,3,0,49
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
	blt- 0,.L1343
	li 9,2
	bgt- 0,.L1342
	cmplw 0,3,4
	li 9,0
	blt- 0,.L1342
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1342:
	rldicl 3,9,0,62
	blr
.L1343:
	li 9,0
	rldicl 3,9,0,62
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
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt- 0,.L1349
	li 9,1
	bgt- 0,.L1348
	cmplw 0,3,4
	li 9,-1
	blt- 0,.L1348
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1348:
	extsw 3,9
	blr
.L1349:
	li 9,-1
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	cmpd 0,3,5
	blt- 0,.L1354
	li 3,2
	bgt- 0,.L1353
	cmpld 0,4,6
	li 3,0
	blt- 0,.L1353
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
.L1353:
	rldicl 3,3,0,62
	blr
.L1354:
	li 3,0
	rldicl 3,3,0,62
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
	rlwinm 6,3,0,16,31
	cntlzw 6,6
	srwi 6,6,5
	slwi 6,6,4
	srw 9,3,6
	rlwinm 7,9,0,24,31
	cntlzw 7,7
	srwi 7,7,5
	slwi 7,7,3
	srw 9,9,7
	rlwinm 8,9,0,28,31
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,2
	srw 9,9,8
	rlwinm 10,9,0,30,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	srw 9,9,10
	rlwinm 9,9,0,30,31
	not 3,9
	add 7,7,6
	rlwinm 3,3,0,31,31
	srwi 9,9,1
	add 8,8,7
	subfic 9,9,2
	neg 3,3
	add 10,10,8
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
	andi. 9,9,0xff
	bne- 0,.L1361
	li 3,0
.L1361:
	addi 10,9,-1
	extsw 10,10
	and 4,10,4
	or 4,3,4
	neg 10,4
	and 4,4,10
	cntlzd 4,4
	slwi 3,9,6
	subfic 4,4,63
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
	bne- 0,.L1363
	cmpdi 0,3,0
	li 4,0
	bne- 0,.L1367
	extsw 3,4
	blr
.L1363:
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 4,4,64
	extsw 3,4
	blr
.L1367:
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 4,3,128
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
	andi. 9,4,0x20
	mr 9,3
	beq- 0,.L1369
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L1369:
	cmpdi 0,4,0
	beqlr- 0
	srdi 3,3,32
	subfic 10,4,32
	slw 10,3,10
	srw 9,9,4
	or 9,10,9
	srw 3,3,4
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
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
	beq- 0,.L1375
	addi 5,5,-64
	srd 4,3,5
	li 3,0
	blr
.L1375:
	cmpdi 0,5,0
	beqlr- 0
	subfic 9,5,64
	sld 9,3,9
	srd 4,4,5
	or 4,9,4
	srd 3,3,5
	blr
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
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,10,9
	srwi 3,3,16
	srwi 4,4,16
	mullw 9,9,3
	srwi 7,8,16
	mullw 10,10,4
	add 9,9,7
	rlwinm 7,9,0,0xffff
	srwi 9,9,16
	mullw 3,3,4
	add 10,10,7
	srwi 7,10,16
	rlwimi 8,10,16,0,31-16
	rldicl 8,8,0,32
	add 9,9,3
	add 9,9,7
	sldi 9,9,32
	or 3,8,9
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
	rlwinm 8,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 10,8,9
	srwi 7,3,16
	srwi 6,4,16
	sradi 11,4,32
	sradi 5,3,32
	mullw 9,9,7
	srwi 0,10,16
	mullw 8,8,6
	add 9,9,0
	rlwinm 0,9,0,0xffff
	srwi 9,9,16
	mullw 7,7,6
	add 8,8,0
	srwi 6,8,16
	rlwimi 10,8,16,0,31-16
	rldicl 10,10,0,32
	mullw 11,3,11
	add 9,9,7
	add 9,9,6
	sldi 9,9,32
	or 3,10,9
	sradi 9,3,32
	mullw 4,4,5
	add 9,11,9
	add 9,9,4
	rldimi 3,9,32,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	rldicl 10,3,0,32
	rldicl 9,4,0,32
	mr 8,4
	mulld 4,10,9
	srdi 3,3,32
	srdi 8,8,32
	mulld 9,9,3
	srdi 7,4,32
	mulld 10,10,8
	add 9,9,7
	rldicl 7,9,0,32
	srdi 9,9,32
	mulld 3,3,8
	add 10,10,7
	srdi 8,10,32
	rldimi 4,10,32,0
	add 3,9,3
	add 3,3,8
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
	rldicl 9,6,0,32
	mulld 3,6,3
	rldicl 8,4,0,32
	srdi 7,4,32
	mr 10,4
	srdi 11,6,32
	mulld 4,8,9
	mulld 9,9,7
	srdi 0,4,32
	mulld 8,8,11
	add 9,9,0
	rldicl 0,9,0,32
	srdi 9,9,32
	mulld 7,7,11
	add 8,8,0
	srdi 11,8,32
	rldimi 4,8,32,0
	mulld 10,10,5
	add 9,9,7
	add 9,9,11
	add 10,10,9
	add 3,10,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	xor 4,4,3
	sradi 10,4,32
	xor 10,10,4
	srwi 9,10,16
	xor 9,9,10
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
	lis 10,0x5555
	ori 10,10,0x5555
	srdi 9,3,1
	rldimi 10,10,32,0
	and 9,9,10
	lis 10,0x3333
	subf 3,9,3
	ori 9,10,0x3333
	rldimi 9,9,32,0
	srdi 8,3,2
	and 8,8,9
	and 3,3,9
	add 8,8,3
	lis 10,0xf0f
	srdi 9,8,4
	ori 10,10,0xf0f
	add 9,9,8
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
	lis 10,0x5555
	srwi 9,3,1
	ori 10,10,0x5555
	and 9,9,10
	subf 3,9,3
	lis 9,0x3333
	ori 9,9,0x3333
	srwi 10,3,2
	and 10,10,9
	and 3,3,9
	add 10,10,3
	srwi 9,10,4
	lis 8,0xf0f
	add 9,9,10
	ori 8,8,0xf0f
	and 9,9,8
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
	lis 0,0x5555
	std 31,-8(1)
	sldi 12,3,63
	std 30,-16(1)
	.cfi_offset 31, -8
	.cfi_offset 30, -16
	srdi 31,4,1
	std 24,-64(1)
	ori 0,0,0x5555
	std 25,-56(1)
	rldimi 0,0,32,0
	std 26,-48(1)
	or 31,12,31
	std 27,-40(1)
	and 31,31,0
	std 28,-32(1)
	srdi 30,3,1
	std 29,-24(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	subfc 9,31,4
	ld 24,-64(1)
	and 30,30,0
	ld 25,-56(1)
	subfe 8,30,3
	ld 26,-48(1)
	lis 4,0x3333
	ld 27,-40(1)
	sldi 3,8,62
	ld 28,-32(1)
	srdi 11,9,2
	ld 29,-24(1)
	ori 4,4,0x3333
	ld 30,-16(1)
	rldimi 4,4,32,0
	ld 31,-8(1)
	or 11,3,11
	srdi 10,8,2
	and 11,11,4
	and 9,9,4
	and 8,8,4
	and 10,10,4
	addc 4,11,9
	adde 10,10,8
	srdi 9,4,4
	rldimi 9,10,60,0
	lis 5,0xf0f
	addc 7,9,4
	ori 5,5,0xf0f
	srdi 4,10,4
	rldimi 5,5,32,0
	adde 6,4,10
	and 6,6,5
	and 7,7,5
	add 6,6,7
	srdi 10,6,32
	add 10,10,6
	srwi 9,10,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
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
	addis 9,2,.LC35@toc@ha
	fmr 0,1
	lfs 12,.LC35@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq- 0,.L1393
.L1395:
	fmul 1,1,0
.L1393:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L1394
	andi. 10,9,0x1
	fmul 0,0,0
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1395
.L1399:
	extsw 9,10
	fmul 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1395
	b .L1399
.L1394:
	cmpwi 0,4,0
	bgelr+ 0
	fdiv 1,12,1
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
	addis 9,2,.LC35@toc@ha
	fmr 0,1
	lfs 12,.LC35@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq- 0,.L1401
.L1403:
	fmuls 1,1,0
.L1401:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L1402
	andi. 10,9,0x1
	fmuls 0,0,0
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1403
.L1407:
	extsw 9,10
	fmuls 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1403
	b .L1407
.L1402:
	cmpwi 0,4,0
	bgelr+ 0
	fdivs 1,12,1
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
	blt- 0,.L1410
	li 9,2
	bgt- 0,.L1409
	cmplw 0,3,4
	li 9,0
	blt- 0,.L1409
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1409:
	rldicl 3,9,0,62
	blr
.L1410:
	li 9,0
	rldicl 3,9,0,62
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
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt- 0,.L1416
	li 9,1
	bgt- 0,.L1415
	cmplw 0,3,4
	li 9,-1
	blt- 0,.L1415
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1415:
	extsw 3,9
	blr
.L1416:
	li 9,-1
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	cmpld 0,3,5
	blt- 0,.L1421
	li 3,2
	bgt- 0,.L1420
	cmpld 0,4,6
	li 3,0
	blt- 0,.L1420
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
.L1420:
	rldicl 3,3,0,62
	blr
.L1421:
	li 3,0
	rldicl 3,3,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
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
	.long	-1082130432
	.align 2
.LC33:
	.long	-1090519040
	.align 2
.LC35:
	.long	1065353216
	.align 2
.LC41:
	.long	1191182336
	.section	.rodata
	.align 3
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".bss"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.zero	1
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
