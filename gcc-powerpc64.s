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
	beq- 0,.L40
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 0
.L40:
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
	addi 9,5,-1
	cmpldi 0,9,6
	ble- 0,.L8
	or 10,4,3
	andi. 10,10,0x7
	bne- 0,.L8
	addi 10,4,1
	subf 10,10,3
	subfic 10,10,6
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L8
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	addi 8,4,-8
	addi 10,3,-8
	bne- 0,.L69
.L46:
	srdi 9,9,1
	mtctr 9
.L9:
	ld 6,8(8)
	mr 7,8
	addi 9,10,8
	std 6,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L9
.L65:
	andi. 9,5,0x7
	rldicr 9,5,0,60
	add 8,4,9
	add 10,3,9
	subf 5,9,5
	beqlr- 0
	cmpldi 0,5,1
	lbzx 7,4,9
	stbx 7,3,9
	beqlr- 0
	cmpldi 0,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr- 0
	cmpldi 0,5,3
	lbz 9,2(8)
	stb 9,2(10)
	beqlr- 0
	cmpldi 0,5,4
	lbz 9,3(8)
	stb 9,3(10)
	beqlr- 0
	cmpldi 0,5,5
	lbz 9,4(8)
	stb 9,4(10)
	beqlr- 0
	cmpldi 0,5,6
	lbz 9,5(8)
	stb 9,5(10)
	beqlr- 0
	lbz 9,6(8)
	stb 9,6(10)
	blr
.L69:
	cmpdi 0,7,0
	ld 10,0(4)
	mr 8,4
	std 10,0(3)
	mr 10,3
	bne+ 0,.L46
	b .L65
.L8:
	andi. 10,9,0x1
	addi 8,3,-1
	addi 10,4,-1
	bne- 0,.L70
.L43:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L12
.L71:
	lbz 7,1(7)
	addi 10,10,2
	addi 8,8,2
	stb 7,1(9)
.L12:
	lbz 6,1(10)
	addi 7,10,1
	addi 9,8,1
	stb 6,1(8)
	bdnz .L71
	blr
.L70:
	lbz 7,0(4)
	mr 10,4
	mr 8,3
	stb 7,0(3)
	b .L43
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
	beq- 0,.L73
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L93
.L83:
	srdi 10,6,1
	mtctr 10
	b .L74
.L76:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq- 0,.L91
	addi 3,3,1
	bdz .L73
.L74:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne+ 0,.L76
.L91:
	addi 3,3,1
	blr
.L93:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq- 0,.L91
	cmpdi 0,8,0
	addi 3,3,1
	bne+ 0,.L83
.L73:
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
	beq- 0,.L98
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L114
.L101:
	srdi 9,5,1
	mtctr 9
.L95:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	bdnz .L95
.L98:
	li 3,0
	blr
.L114:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpdi 0,9,0
	addi 3,3,1
	bne+ 0,.L101
	b .L98
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
	beq- 0,.L120
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L135
.L123:
	srdi 9,5,1
	mtctr 9
	b .L116
.L118:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,8,1
	cmpw 0,10,9
	bne- 0,.L132
	bdz .L120
.L116:
	lbz 10,0(3)
	addi 7,3,1
	lbz 9,0(4)
	addi 8,4,1
	cmpw 0,10,9
	beq+ 0,.L118
.L132:
	subf 3,9,10
	extsw 3,3
	blr
.L135:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L132
	cmpdi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 0,.L123
.L120:
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
	beq- 0,.L137
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L137:
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
	beq- 0,.L147
	lbz 8,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,8,4
	beqlr- 0
.L147:
	srdi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L154
.L145:
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
	bdnz .L145
.L154:
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
	beq- 0,.L158
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
.L158:
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
.L162:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr- 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne+ 0,.L162
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
.L173:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L173
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
.L176:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L176
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
	beq+ 0,.L181
	b .L180
.L182:
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 0,9,10
	bne- 0,.L180
.L181:
	cmpwi 0,9,0
	bne+ 0,.L182
.L180:
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
	beq- 0,.L188
	mr 9,3
.L187:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L187
	subf 3,3,9
	blr
.L188:
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
	beq- 0,.L198
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	cmpwi 0,10,0
	subf 5,3,5
	addi 9,5,1
	mtctr 9
	bne+ 0,.L194
	b .L201
.L203:
	bdz .L193
	bne- 7,.L193
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq- 0,.L202
	mr 4,8
.L194:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne+ 0,.L203
.L193:
	subf 3,9,10
	extsw 3,3
	blr
.L198:
	li 3,0
	extsw 3,3
	blr
.L202:
	lbz 9,1(4)
	b .L193
.L201:
	lbz 9,0(4)
	b .L193
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
	bne- 0,.L214
.L209:
	srdi 9,5,1
	mtctr 9
.L206:
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
	bdnz .L206
	blr
.L214:
	cmpdi 0,9,0
	lbz 10,1(3)
	lbz 9,0(3)
	addi 4,4,2
	stb 10,-2(4)
	addi 3,3,2
	stb 9,-1(4)
	bne+ 0,.L209
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
	beq- 0,.L219
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
.L219:
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
	ble- 0,.L222
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
.L222:
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
	beq- 0,.L229
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
.L229:
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
	ble- 0,.L232
	addi 9,3,-127
	cmplwi 0,9,32
	li 9,1
	bgt- 0,.L236
.L232:
	rldicl 3,9,0,63
	blr
.L236:
	addi 10,3,-8232
	cmplwi 0,10,1
	ble- 0,.L232
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
	ble- 0,.L245
	cmplwi 0,3,8231
	li 9,1
	ble- 0,.L240
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble- 0,.L240
	addis 10,3,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	ble- 0,.L240
	lis 9,0x10
	ori 9,9,0x3
	addi 10,10,4
	cmplw 0,10,9
	li 9,0
	bgt- 0,.L240
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
.L240:
	rldicl 3,9,0,63
	blr
.L245:
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
	ble- 0,.L248
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
.L248:
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
	bun- 0,.L254
	fcmpu 0,1,2
	bng- 0,.L257
	fsub 1,1,2
	blr
.L257:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	frsp 1,1
	blr
.L254:
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
	bun- 0,.L262
	fcmpu 0,1,2
	bng- 0,.L265
	fsubs 1,1,2
	blr
.L265:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
.L262:
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
	bun- 0,.L271
	fcmpu 0,2,2
	bun- 0,.L272
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L268
	cmpwi 0,9,0
	fmr 1,2
	bnelr- 0
.L272:
	fmr 1,0
	blr
.L268:
	fcmpu 0,1,2
	bnllr- 0
.L271:
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
	bun- 0,.L280
	fcmpu 0,2,2
	bunlr- 0
	lwz 9,48(1)
	lwz 10,56(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq- 0,.L277
	cmpwi 0,9,0
	fmr 1,2
	bnelr- 0
	lfs 1,48(1)
	blr
.L277:
	fcmpu 0,1,2
	bnllr- 0
	fmr 1,2
	blr
.L280:
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
	bun- 0,.L291
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
	beq- 0,.L286
	cmpwi 0,9,0
	beqlr- 0
.L291:
	fmr 1,3
	fmr 2,4
	blr
.L286:
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
	bun- 0,.L298
	fcmpu 0,2,2
	bunlr- 0
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	bne- 0,.L302
	fcmpu 0,1,2
	fmr 0,2
	bnl- 0,.L297
	fmr 0,1
.L297:
	fmr 1,0
	blr
.L302:
	cmpwi 0,9,0
	bnelr- 0
.L298:
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
	bun- 0,.L308
	fcmpu 0,2,2
	fmr 0,2
	bunlr- 0
	lwz 9,48(1)
	lwz 10,56(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	bne- 0,.L313
	fcmpu 0,1,2
	fmr 0,1
	fmr 1,2
	bnllr- 0
	fmr 1,0
	blr
.L313:
	cmpwi 0,9,0
	bnelr- 0
	fmr 1,0
	blr
.L308:
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
	bun- 0,.L319
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
	beq- 0,.L316
	cmpwi 0,9,0
	bnelr- 0
.L319:
	fmr 1,3
	fmr 2,4
	blr
.L316:
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
	beq- 0,.L323
	addis 7,2,.LANCHOR1@toc@ha
	addi 7,7,.LANCHOR1@toc@l
.L324:
	rldicl 8,9,0,58
	srwi 9,9,6
	lbzx 8,7,8
	cmpwi 0,9,0
	stb 8,0(10)
	addi 10,10,1
	bne+ 0,.L324
.L323:
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
	beq- 0,.L335
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr- 0
	std 3,8(9)
	blr
.L335:
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
	beq- 0,.L337
	ld 10,8(3)
	std 10,8(9)
.L337:
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
	beq- 0,.L346
	std 29,168(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,176(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,184(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L348
.L360:
	beq- 7,.L359
.L348:
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
	bne+ 0,.L360
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L345:
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
.L359:
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
.L346:
	mulld 25,28,27
	cmpdi 0,28,0
	addi 27,27,1
	std 27,0(24)
	add 25,23,25
	beq- 0,.L345
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
	beq- 0,.L362
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
	b .L364
.L372:
	beq- 7,.L371
.L364:
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
	bne+ 0,.L372
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
.L371:
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
.L362:
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
.L381:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L375
	ble- 7,.L375
	cmpwi 0,10,43
	beq- 0,.L376
	cmpwi 0,10,45
	bne- 0,.L394
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L386
	li 5,1
.L379:
	li 3,0
.L383:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	slwi 9,9,1
	subf 3,7,9
	ble+ 0,.L383
	cmpwi 0,5,0
	bne- 0,.L382
	subf 3,9,7
.L382:
	extsw 3,3
	blr
.L375:
	addi 3,3,1
	b .L381
.L394:
	addi 9,10,-48
	cmplwi 0,9,9
	mr 8,3
	li 5,0
	ble+ 0,.L379
.L386:
	li 3,0
	b .L382
.L376:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L379
	li 3,0
	b .L382
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
.L402:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L396
	ble- 7,.L396
	cmpwi 0,10,43
	beq- 0,.L397
	cmpwi 0,10,45
	bne- 0,.L415
	lbz 10,1(3)
	addi 7,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L407
	li 5,1
.L400:
	li 3,0
.L404:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	extsw 8,8
	sldi 9,9,1
	subf 3,8,9
	ble+ 0,.L404
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,8
	blr
.L396:
	addi 3,3,1
	b .L402
.L415:
	addi 9,10,-48
	cmplwi 0,9,9
	mr 7,3
	li 5,0
	ble+ 0,.L400
.L407:
	li 3,0
	blr
.L397:
	lbz 10,1(3)
	addi 7,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L400
	b .L407
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
.L421:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L417
	ble- 7,.L417
	cmpwi 0,10,43
	beq- 0,.L418
	cmpwi 0,10,45
	beq- 0,.L419
	addi 9,10,-48
	cmplwi 0,9,9
	mr 7,3
	li 5,0
	bgt- 0,.L428
.L422:
	li 3,0
.L425:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	extsw 8,8
	sldi 9,9,1
	subf 3,8,9
	ble+ 0,.L425
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,8
	blr
.L417:
	addi 3,3,1
	b .L421
.L419:
	lbz 10,1(3)
	addi 7,3,1
	li 5,1
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L422
.L428:
	li 3,0
	blr
.L418:
	lbz 10,1(3)
	addi 7,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L428
	li 5,0
	b .L422
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
	beq- 0,.L437
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
	b .L440
.L449:
	beq- 0,.L447
	cmpdi 0,31,0
	add 26,30,27
	beq- 0,.L448
.L440:
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
	bge+ 0,.L449
	mr 31,29
	cmpdi 0,31,0
	bne+ 0,.L440
.L448:
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
.L437:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 31,-8(1)
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L447:
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
	beq- 0,.L455
	mflr 0
	.cfi_register 65, 0
	std 2,40(1)
	std 0,192(1)
	.cfi_offset 65, 16
	std 28,144(1)
	.cfi_offset 28, -32
.L451:
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
	beq- 0,.L462
	cmpwi 5,28,0
	ble- 0,.L453
	add 26,30,27
	bne+ 7,.L451
.L463:
	ld 0,192(1)
	ld 28,144(1)
	.cfi_restore 28
	mtlr 0
	.cfi_restore 65
.L455:
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
.L453:
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
	bne+ 5,.L451
	b .L463
.L462:
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
	beq- 0,.L475
.L472:
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L472
.L475:
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
	beq+ 0,.L480
	b .L479
.L481:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L479
.L480:
	cmpwi 7,9,0
	bne+ 7,.L481
.L479:
	li 3,-1
	blt- 0,.L482
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L482:
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
.L485:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L485
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
	beq- 0,.L491
	mr 9,3
.L490:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L490
	subf 3,3,9
	sradi 3,3,2
	blr
.L491:
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
	beq- 0,.L503
	mtctr 5
	b .L494
.L505:
	beq- 7,.L496
	addi 3,3,4
	addi 4,4,4
	bdz .L503
.L494:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 0,9,10
	beq+ 0,.L505
.L496:
	lwz 3,0(3)
	lwz 10,0(4)
	cmpw 0,3,10
	bge- 0,.L498
	li 3,-1
	extsw 3,3
	blr
.L498:
	extsw 10,10
	extsw 3,3
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
.L503:
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
	beq- 0,.L510
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L526
.L513:
	srdi 9,5,1
	mtctr 9
.L507:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,4
	bdnz .L507
.L510:
	li 3,0
	blr
.L526:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpdi 0,9,0
	addi 3,3,4
	bne+ 0,.L513
	b .L510
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
	beq- 0,.L533
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L548
.L536:
	srdi 9,5,1
	mtctr 9
	b .L528
.L530:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,8,4
	cmpw 0,9,10
	bne- 0,.L545
	bdz .L533
.L528:
	lwz 9,0(3)
	addi 7,3,4
	lwz 10,0(4)
	addi 8,4,4
	cmpw 0,9,10
	beq+ 0,.L530
.L545:
	blt- 0,.L549
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
.L548:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L545
	cmpdi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 0,.L536
.L533:
	li 3,0
	extsw 3,3
	blr
.L549:
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
	beq- 0,.L551
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
.L551:
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
	bge- 0,.L583
	cmpdi 0,5,0
	beqlr- 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne- 0,.L584
.L570:
	srdi 10,5,1
	mtctr 10
.L561:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L561
	blr
.L583:
	cmpdi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L585
.L573:
	srdi 8,5,1
	mtctr 8
.L562:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	stw 6,4(10)
	addi 9,9,8
	addi 10,10,8
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L562
	blr
.L584:
	cmpdi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne+ 0,.L570
	blr
.L585:
	cmpdi 0,8,0
	lwz 8,0(4)
	mr 9,4
	stw 8,0(3)
	mr 10,3
	bne+ 0,.L573
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
	addi 7,5,-1
	beqlr- 0
	cmpldi 0,7,5
	rldicl 9,3,62,63
	ble- 0,.L592
	cmpdi 0,9,0
	mr 11,3
	beq- 0,.L589
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
.L589:
	subf 5,9,5
	srdi 6,5,1
	andi. 0,6,0x3
	sldi 9,9,2
	addi 9,9,-8
	mr 10,4
	add 9,3,9
	addi 12,6,-1
	mr 8,6
	rldimi 10,4,32,0
	beq- 0,.L614
	cmpdi 0,0,1
	beq- 0,.L618
	cmpdi 0,0,2
	beq- 0,.L619
	stdu 10,8(9)
	mr 6,12
.L619:
	stdu 10,8(9)
	addi 6,6,-1
.L618:
	cmpdi 0,6,1
	stdu 10,8(9)
	beq- 0,.L632
.L614:
	srdi 8,8,2
	mtctr 8
.L590:
	std 10,8(9)
	addi 9,9,32
	std 10,-16(9)
	std 10,-8(9)
	std 10,0(9)
	bdnz .L590
.L632:
	andi. 9,5,0x1
	beqlr- 0
	rldicr 5,5,0,62
	sldi 9,5,2
	subf 7,5,7
	add 9,11,9
.L588:
	cmpdi 0,7,0
	stw 4,0(9)
	beqlr- 0
	cmpldi 0,7,1
	stw 4,4(9)
	beqlr- 0
	cmpldi 0,7,2
	stw 4,8(9)
	beqlr- 0
	cmpldi 0,7,3
	stw 4,12(9)
	beqlr- 0
	cmpldi 0,7,4
	stw 4,16(9)
	beqlr- 0
	stw 4,20(9)
	blr
.L592:
	mr 9,3
	b .L588
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
	bge- 0,.L635
	cmpdi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L670
	cmpdi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr- 0
.L670:
	srdi 9,5,1
	mtctr 9
.L637:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	stb 8,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L637
	blr
.L635:
	beqlr- 0
	cmpdi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmpldi 0,9,6
	ble- 0,.L638
	or 10,4,3
	andi. 10,10,0x7
	bne- 0,.L638
	addi 10,3,1
	subf 10,10,4
	subfic 10,10,6
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L638
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	addi 8,3,-8
	addi 10,4,-8
	bne- 0,.L699
.L676:
	srdi 9,9,1
	mtctr 9
.L639:
	ld 6,8(8)
	mr 7,8
	addi 9,10,8
	std 6,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L639
.L695:
	andi. 9,5,0x7
	rldicr 9,5,0,60
	add 10,4,9
	add 8,3,9
	subf 5,9,5
	beqlr- 0
	cmpldi 0,5,1
	lbzx 7,3,9
	stbx 7,4,9
	beqlr- 0
	cmpldi 0,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr- 0
	cmpldi 0,5,3
	lbz 9,2(8)
	stb 9,2(10)
	beqlr- 0
	cmpldi 0,5,4
	lbz 9,3(8)
	stb 9,3(10)
	beqlr- 0
	cmpldi 0,5,5
	lbz 9,4(8)
	stb 9,4(10)
	beqlr- 0
	cmpldi 0,5,6
	lbz 9,5(8)
	stb 9,5(10)
	beqlr- 0
	lbz 9,6(8)
	stb 9,6(10)
	blr
.L699:
	cmpdi 0,7,0
	ld 10,0(3)
	mr 8,3
	std 10,0(4)
	mr 10,4
	bne+ 0,.L676
	b .L695
.L638:
	andi. 10,9,0x1
	addi 8,4,-1
	addi 10,3,-1
	bne- 0,.L700
.L673:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L642
.L701:
	lbz 7,1(7)
	addi 10,10,2
	addi 8,8,2
	stb 7,1(9)
.L642:
	lbz 6,1(10)
	addi 7,10,1
	addi 9,8,1
	stb 6,1(8)
	bdnz .L701
	blr
.L700:
	lbz 7,0(3)
	mr 10,3
	mr 8,4
	stb 7,0(4)
	b .L673
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
	b .L718
.L726:
	addi 9,9,1
	bne- 0,.L717
	bdz .L725
.L718:
	srw 10,3,9
	rldicl 10,10,0,63
	cmpdi 7,10,0
	addi 9,9,1
	srw 10,3,9
	andi. 10,10,0x1
	beq+ 7,.L726
.L717:
	extsw 3,9
	blr
.L725:
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
	beq- 0,.L730
	andi. 3,9,0x1
	bne- 0,.L728
	li 3,1
.L729:
	srawi 9,9,1
	andi. 10,9,0x1
	addi 3,3,1
	beq+ 0,.L729
.L728:
	extsw 3,3
	blr
.L730:
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
	blt- 0,.L734
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L734:
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
	blt- 0,.L737
	addis 9,2,.LC9@toc@ha
	lfd 0,.LC9@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L737:
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
	blt- 0,.L740
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L740:
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
	blt- 0,.L758
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
.L746:
	andi. 9,4,0x1
	beq- 0,.L747
.L748:
	fmuls 1,1,0
.L747:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmuls 0,0,0
	srawi 9,4,1
	addze 9,9
	bne- 0,.L748
.L759:
	extsw 4,9
	fmuls 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne- 0,.L748
	b .L759
.L758:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	b .L746
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
	blt- 0,.L775
	addis 9,2,.LC17@toc@ha
	lfs 0,.LC17@toc@l(9)
	frsp 0,0
.L763:
	andi. 9,4,0x1
	beq- 0,.L764
.L765:
	fmul 1,1,0
.L764:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmul 0,0,0
	srawi 9,4,1
	addze 9,9
	bne- 0,.L765
.L776:
	extsw 4,9
	fmul 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne- 0,.L765
	b .L776
.L775:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	frsp 0,0
	b .L763
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
	bun- 0,.L778
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
	beq- 0,.L795
	cmpwi 0,31,0
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	blt- 0,.L796
	addis 9,2,.LC25@toc@ha
	addi 9,9,.LC25@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
.L780:
	andi. 9,31,0x1
	beq- 0,.L781
.L782:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L781:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L794
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
	bne- 0,.L782
.L797:
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
	bne- 0,.L782
	b .L797
.L794:
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
.L795:
	ld 0,176(1)
	ld 31,120(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L778:
	fmr 1,28
	addi 1,1,160
	.cfi_def_cfa_offset 0
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L796:
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
	b .L780
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
	addi 9,5,-1
	cmpldi 0,9,6
	ble- 0,.L800
	or 10,3,4
	andi. 10,10,0x7
	bne- 0,.L800
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	mr 10,9
	addi 8,3,-8
	addi 9,4,-8
	bne- 0,.L844
.L827:
	srdi 10,10,1
	mtctr 10
.L801:
	ld 11,8(8)
	addi 10,8,8
	ld 6,8(9)
	addi 8,8,16
	ld 7,16(9)
	addi 9,9,16
	xor 6,6,11
	std 6,-8(8)
	ld 6,8(10)
	xor 7,7,6
	std 7,8(10)
	bdnz .L801
.L841:
	andi. 9,5,0x7
	rldicr 10,5,0,60
	add 9,3,10
	add 8,4,10
	subf 5,10,5
	beqlr- 0
	cmpldi 0,5,1
	lbzx 7,3,10
	lbzx 6,4,10
	xor 7,7,6
	stbx 7,3,10
	beqlr- 0
	cmpldi 0,5,2
	lbz 7,1(9)
	lbz 10,1(8)
	xor 10,10,7
	stb 10,1(9)
	beqlr- 0
	cmpldi 0,5,3
	lbz 7,2(9)
	lbz 10,2(8)
	xor 10,10,7
	stb 10,2(9)
	beqlr- 0
	cmpldi 0,5,4
	lbz 7,3(9)
	lbz 10,3(8)
	xor 10,10,7
	stb 10,3(9)
	beqlr- 0
	cmpldi 0,5,5
	lbz 7,4(9)
	lbz 10,4(8)
	xor 10,10,7
	stb 10,4(9)
	beqlr- 0
	cmpldi 0,5,6
	lbz 7,5(9)
	lbz 10,5(8)
	xor 10,10,7
	stb 10,5(9)
	beqlr- 0
	lbz 10,6(8)
	lbz 8,6(9)
	xor 10,10,8
	stb 10,6(9)
	blr
.L844:
	ld 6,0(3)
	cmpdi 0,7,0
	ld 7,0(4)
	mr 9,4
	mr 8,3
	xor 7,7,6
	std 7,0(3)
	bne+ 0,.L827
	b .L841
.L800:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 10,3,-1
	beq- 0,.L824
	lbz 6,0(3)
	mr 7,4
	lbz 8,0(4)
	mr 10,3
	xor 8,8,6
	stb 8,0(3)
.L824:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L803
.L845:
	lbz 9,1(6)
	addi 10,10,2
	lbz 6,1(8)
	xor 9,9,6
	stb 9,1(8)
.L803:
	lbz 9,1(7)
	addi 6,7,1
	lbz 5,1(10)
	addi 8,10,1
	addi 7,7,2
	xor 9,9,5
	stb 9,1(10)
	bdnz .L845
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
	beq- 0,.L847
.L848:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L848
.L847:
	cmpdi 0,5,0
	beq- 0,.L849
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L871
.L860:
	srdi 8,5,1
	mtctr 8
.L850:
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
	bdnz .L850
.L849:
	li 10,0
	stb 10,0(9)
	blr
.L871:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	cmpdi 0,7,0
	addi 9,9,1
	bne+ 0,.L860
	b .L849
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
	beq- 0,.L884
	cmpdi 0,8,1
	beq- 0,.L895
	cmpdi 0,8,2
	beq- 0,.L896
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L896:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L895:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr- 0
.L884:
	srdi 10,10,2
.L873:
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
	bne+ 0,.L873
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
	beq- 0,.L908
.L904:
	mr 10,4
	b .L907
.L906:
	beqlr- 7
.L907:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne+ 0,.L906
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L904
.L908:
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
.L913:
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	bne+ 7,.L912
	mr 3,9
.L912:
	addi 9,9,1
	bne+ 0,.L913
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
	beq- 0,.L929
	mr 9,4
.L918:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L918
	subf. 9,4,9
	mr 3,8
	beqlr- 0
	addi 3,9,-1
	b .L926
.L939:
	cmpwi 0,9,0
	addi 8,8,1
	beq- 0,.L938
.L926:
	lbz 9,0(8)
	cmpw 0,9,5
	bne+ 0,.L939
	addi 0,3,1
	mtctr 0
	mr 6,4
	mr 10,11
	mr 7,8
	b .L920
.L941:
	bdz .L922
	bne- 7,.L923
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq- 0,.L940
	lbzu 10,1(6)
.L920:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne+ 0,.L941
.L923:
	addi 8,8,1
	b .L926
.L938:
	li 3,0
	blr
.L940:
	lbz 10,1(6)
.L922:
	cmpw 0,9,10
	bne+ 0,.L923
.L929:
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
	frsp 0,0
	fcmpu 0,1,0
	blt- 0,.L952
	bnglr- 0
	fcmpu 0,2,0
	bnllr+ 0
	fneg 1,1
	blr
.L952:
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
	blt- 0,.L961
	subf 4,6,4
	add 0,3,4
	cmpld 0,3,0
	bgt- 0,.L961
	cmpldi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L958
.L955:
	cmpld 0,0,9
	blt- 0,.L961
.L958:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 0,10,12
	bne+ 0,.L955
	beqlr- 7
	subf 10,11,9
	add 10,10,6
	addi 10,10,-2
	mtctr 10
	mr 8,5
	mr 10,11
.L956:
	lbzu 4,1(10)
	lbzu 7,1(8)
	cmpw 0,4,7
	bne- 0,.L955
	bdnz .L956
	blr
.L961:
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
	beq- 0,.L970
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L970:
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
	frsp 0,0
	fcmpu 7,1,0
	blt- 7,.L998
	addis 9,2,.LC35@toc@ha
	lfs 0,.LC35@toc@l(9)
	li 10,0
	frsp 0,0
	fcmpu 0,1,0
	cror 2,1,2
	bne- 0,.L999
.L978:
	addis 9,2,.LC18@toc@ha
	addis 8,2,.LC35@toc@ha
	lfs 12,.LC18@toc@l(9)
	lfs 0,.LC35@toc@l(8)
	li 9,0
	frsp 12,12
	frsp 0,0
.L984:
	fmul 1,1,12
	addi 9,9,1
	fcmpu 0,1,0
	cror 2,1,2
	beq+ 0,.L984
	cmpwi 0,10,0
	stw 9,0(4)
	beqlr- 0
.L1001:
	fneg 1,1
	blr
.L999:
	addis 9,2,.LC18@toc@ha
	lfs 0,.LC18@toc@l(9)
	frsp 0,0
	fcmpu 0,1,0
	bnl- 0,.L981
	bne- 7,.L990
.L981:
	li 9,0
	stw 9,0(4)
	blr
.L998:
	addis 9,2,.LC31@toc@ha
	fneg 12,1
	lfs 0,.LC31@toc@l(9)
	frsp 0,0
	fcmpu 0,1,0
	cror 2,0,2
	bne- 0,.L1000
	fmr 1,12
	li 10,1
	b .L978
.L1000:
	addis 9,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(9)
	frsp 0,0
	fcmpu 0,1,0
	bng- 0,.L981
	li 10,1
.L979:
	addis 9,2,.LC18@toc@ha
	fmr 1,12
	lfs 0,.LC18@toc@l(9)
	li 9,0
	frsp 0,0
.L986:
	fadd 1,1,1
	addi 9,9,-1
	fcmpu 0,1,0
	blt+ 0,.L986
	cmpwi 0,10,0
	stw 9,0(4)
	bne+ 0,.L1001
	blr
.L990:
	fmr 12,1
	b .L979
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
.L1004:
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
	bne+ 0,.L1004
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
	blt+ 0,.L1009
	b .L1010
.L1013:
	rldicl 4,8,0,32
	slwi 8,4,1
	cmpwi 0,4,0
	cmplw 5,3,8
	slwi 9,9,1
	ble- 7,.L1011
	blt- 0,.L1010
	rldicl 4,8,0,32
	slwi 9,9,1
	ble- 5,.L1011
	bdz .L1012
.L1009:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge+ 0,.L1013
.L1010:
	li 10,0
.L1015:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt- 0,.L1014
	rldicl 3,8,0,32
	or 10,10,9
.L1014:
	srwi 9,9,1
	cmpwi 0,9,0
	bne+ 0,.L1015
.L1012:
	cmpdi 0,5,0
	beq+ 0,.L1016
	mr 10,3
.L1016:
	rldicl 3,10,0,32
	blr
.L1011:
	cmpwi 0,9,0
	bne+ 0,.L1010
	li 10,0
	b .L1012
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
	beq- 0,.L1030
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	extsw 3,3
	blr
.L1030:
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
	beq- 0,.L1033
	cntlzd 3,3
	addi 3,3,-1
	extsw 3,3
	blr
.L1033:
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
	beq- 0,.L1035
.L1036:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	bne+ 0,.L1036
.L1035:
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
	srwi 9,5,3
	rlwinm 11,5,0,0,28
	blt- 0,.L1043
	add 8,4,5
	cmpld 0,3,8
	mr 10,5
	ble- 0,.L1102
.L1043:
	cmpwi 0,9,0
	addi 10,4,-8
	addi 8,3,-8
	beq- 0,.L1089
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1103
.L1075:
	srdi 9,9,1
	mtctr 9
.L1046:
	ld 6,8(10)
	mr 7,10
	addi 9,8,8
	std 6,8(8)
	addi 10,10,16
	addi 8,8,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L1046
.L1092:
	cmplw 0,11,5
	bgelr- 0
	subf 9,11,5
	addi 10,9,-1
	cmplwi 0,10,6
	rldicl 10,11,0,32
	ble- 0,.L1048
	addi 8,10,1
	add 8,4,8
	add 6,3,10
	subf 8,8,6
	subfic 8,8,6
	subfe 8,8,8
	neg 8,8
	rlwinm 8,8,0,0xff
	cmpwi 0,8,0
	add 12,4,10
	beq- 0,.L1048
	or 8,12,6
	andi. 8,8,0x7
	bne- 0,.L1048
	rldicl 10,9,61,35
	andi. 8,10,0x1
	addi 0,10,-1
	addi 8,12,-8
	addi 7,6,-8
	bne- 0,.L1104
.L1072:
	srdi 10,10,1
	mtctr 10
.L1049:
	ld 0,8(8)
	mr 6,8
	addi 10,7,8
	std 0,8(7)
	addi 8,8,16
	addi 7,7,16
	ld 6,16(6)
	std 6,8(10)
	bdnz .L1049
.L1096:
	andi. 10,9,0x7
	rlwinm 9,9,0,0,28
	add 9,9,11
	beqlr- 0
	addi 10,9,1
	cmplw 0,10,5
	rldicl 8,9,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 0
	addi 8,9,2
	cmplw 0,8,5
	rldicl 10,10,0,32
	lbzx 7,4,10
	stbx 7,3,10
	bgelr- 0
	addi 10,9,3
	cmplw 0,10,5
	rldicl 8,8,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 0
	addi 8,9,4
	cmplw 0,8,5
	rldicl 10,10,0,32
	lbzx 7,4,10
	stbx 7,3,10
	bgelr- 0
	addi 10,9,5
	cmplw 0,10,5
	rldicl 8,8,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 0
	addi 9,9,6
	cmplw 0,9,5
	rldicl 10,10,0,32
	lbzx 8,4,10
	stbx 8,3,10
	bgelr- 0
	rldicl 9,9,0,32
	lbzx 10,4,9
	stbx 10,3,9
	blr
.L1103:
	cmpdi 0,7,0
	ld 8,0(4)
	mr 10,4
	std 8,0(3)
	mr 8,3
	bne+ 0,.L1075
	b .L1092
.L1104:
	cmpdi 0,0,0
	ld 0,0(12)
	mr 8,12
	std 0,0(6)
	mr 7,6
	bne+ 0,.L1072
	b .L1096
.L1102:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L1105
.L1078:
	srdi 9,10,1
	mtctr 9
.L1053:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L1053
	blr
.L1105:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L1078
	blr
.L1089:
	cmpdi 0,5,0
	rldicl 10,11,0,32
	mr 9,5
	beqlr- 0
.L1048:
	rldicl 9,9,0,32
	andi. 8,9,0x1
	addi 10,10,-1
	add 4,4,10
	addi 8,9,-1
	add 10,3,10
	beq- 0,.L1069
	cmpdi 0,8,0
	lbzu 8,1(4)
	stbu 8,1(10)
	beqlr- 0
.L1069:
	srdi 9,9,1
	mtctr 9
.L1051:
	lbz 7,1(4)
	mr 8,4
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	addi 10,10,2
	lbz 8,2(8)
	stb 8,1(9)
	bdnz .L1051
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
	srwi 6,5,1
	blt- 0,.L1110
	add 10,4,5
	cmpld 0,3,10
	mr 9,5
	ble- 0,.L1153
.L1110:
	cmpwi 0,6,0
	beq- 0,.L1109
	addi 9,6,-1
	cmplwi 0,9,4
	ble- 0,.L1113
	or 9,4,3
	andi. 9,9,0x7
	bne- 0,.L1113
	addi 9,4,2
	subf 9,9,3
	subfic 9,9,4
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1113
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	srwi 11,5,3
	addi 10,4,-8
	addi 8,3,-8
	bne- 0,.L1154
.L1134:
	srdi 9,9,1
	mtctr 9
.L1114:
	ld 0,8(10)
	mr 7,10
	addi 9,8,8
	std 0,8(8)
	addi 10,10,16
	addi 8,8,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L1114
.L1149:
	slwi 11,11,2
	cmplw 0,6,11
	beq- 0,.L1109
	addi 10,11,1
	rlwinm 8,11,1,0,28
	cmplw 0,6,10
	lhzx 7,4,8
	sthx 7,3,8
	ble- 0,.L1109
	addi 9,11,2
	rldic 10,10,1,31
	cmplw 0,6,9
	lhzx 8,4,10
	sthx 8,3,10
	ble- 0,.L1109
	rldicl 9,9,0,32
	sldi 9,9,1
	lhzx 10,4,9
	sthx 10,3,9
.L1109:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L1154:
	cmpdi 0,7,0
	ld 8,0(4)
	mr 10,4
	std 8,0(3)
	mr 8,3
	bne+ 0,.L1134
	b .L1149
.L1153:
	cmpdi 0,5,0
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1155
.L1137:
	srdi 9,9,1
	mtctr 9
.L1119:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L1119
	blr
.L1155:
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(3)
	bne+ 0,.L1137
	blr
.L1113:
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-2
	addi 10,3,-2
	beq- 0,.L1131
	cmpdi 0,8,0
	lhz 10,0(4)
	mr 9,4
	sth 10,0(3)
	mr 10,3
	beq- 0,.L1109
.L1131:
	srdi 8,6,1
	mtctr 8
.L1116:
	lhz 6,2(9)
	mr 7,9
	addi 8,10,2
	sth 6,2(10)
	addi 9,9,4
	addi 10,10,4
	lhz 7,4(7)
	sth 7,2(8)
	bdnz .L1116
	b .L1109
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
	srwi 9,5,2
	rlwinm 11,5,0,0,29
	blt- 0,.L1160
	add 8,4,5
	cmpld 0,3,8
	mr 10,5
	ble- 0,.L1219
.L1160:
	cmpwi 0,9,0
	addi 10,4,-4
	addi 8,3,-4
	beq- 0,.L1206
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1220
.L1192:
	srdi 9,9,1
	mtctr 9
.L1163:
	lwz 6,4(10)
	mr 7,10
	addi 9,8,4
	stw 6,4(8)
	addi 10,10,8
	addi 8,8,8
	lwz 7,8(7)
	stw 7,4(9)
	bdnz .L1163
.L1209:
	cmplw 0,11,5
	bgelr- 0
	subf 9,11,5
	addi 10,9,-1
	cmplwi 0,10,6
	rldicl 10,11,0,32
	ble- 0,.L1165
	addi 8,10,1
	add 8,4,8
	add 6,3,10
	subf 8,8,6
	subfic 8,8,6
	subfe 8,8,8
	neg 8,8
	rlwinm 8,8,0,0xff
	cmpwi 0,8,0
	add 12,4,10
	beq- 0,.L1165
	or 8,12,6
	andi. 8,8,0x7
	bne- 0,.L1165
	rldicl 10,9,61,35
	andi. 8,10,0x1
	addi 0,10,-1
	addi 8,12,-8
	addi 7,6,-8
	bne- 0,.L1221
.L1189:
	srdi 10,10,1
	mtctr 10
.L1166:
	ld 0,8(8)
	mr 6,8
	addi 10,7,8
	std 0,8(7)
	addi 8,8,16
	addi 7,7,16
	ld 6,16(6)
	std 6,8(10)
	bdnz .L1166
.L1213:
	andi. 10,9,0x7
	rlwinm 9,9,0,0,28
	add 9,9,11
	beqlr- 0
	addi 10,9,1
	cmplw 0,10,5
	rldicl 8,9,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 0
	addi 8,9,2
	cmplw 0,8,5
	rldicl 10,10,0,32
	lbzx 7,4,10
	stbx 7,3,10
	bgelr- 0
	addi 10,9,3
	cmplw 0,10,5
	rldicl 8,8,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 0
	addi 8,9,4
	cmplw 0,8,5
	rldicl 10,10,0,32
	lbzx 7,4,10
	stbx 7,3,10
	bgelr- 0
	addi 10,9,5
	cmplw 0,10,5
	rldicl 8,8,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 0
	addi 9,9,6
	cmplw 0,9,5
	rldicl 10,10,0,32
	lbzx 8,4,10
	stbx 8,3,10
	bgelr- 0
	rldicl 9,9,0,32
	lbzx 10,4,9
	stbx 10,3,9
	blr
.L1220:
	cmpdi 0,7,0
	lwz 8,0(4)
	mr 10,4
	stw 8,0(3)
	mr 8,3
	bne+ 0,.L1192
	b .L1209
.L1221:
	cmpdi 0,0,0
	ld 0,0(12)
	mr 8,12
	std 0,0(6)
	mr 7,6
	bne+ 0,.L1189
	b .L1213
.L1219:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L1222
.L1195:
	srdi 9,10,1
	mtctr 9
.L1170:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L1170
	blr
.L1222:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L1195
	blr
.L1206:
	cmpdi 0,5,0
	rldicl 10,11,0,32
	mr 9,5
	beqlr- 0
.L1165:
	rldicl 9,9,0,32
	andi. 8,9,0x1
	addi 10,10,-1
	add 4,4,10
	addi 8,9,-1
	add 10,3,10
	beq- 0,.L1186
	cmpdi 0,8,0
	lbzu 8,1(4)
	stbu 8,1(10)
	beqlr- 0
.L1186:
	srdi 9,9,1
	mtctr 9
.L1168:
	lbz 7,1(4)
	mr 8,4
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	addi 10,10,2
	lbz 8,2(8)
	stb 8,1(9)
	bdnz .L1168
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
	blt- 0,.L1229
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L1229:
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
	blt- 0,.L1232
	sradi 10,3,53
	addi 10,10,1
	rldicl 9,3,0,53
	cmpldi 0,10,2
	addi 9,9,2047
	or 9,9,3
	rldicr 9,9,0,52
	blt- 0,.L1235
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L1235:
	mr 9,3
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L1232:
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
	bge- 0,.L1234
	mr 9,3
.L1234:
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
	bne- 0,.L1240
	srawi 9,3,14
	cmpwi 0,9,0
	bne- 0,.L1239
	srdi. 9,3,13
	bne- 0,.L1241
	srdi. 9,3,12
	bne- 0,.L1242
	srdi. 9,3,11
	bne- 0,.L1243
	srdi. 9,3,10
	bne- 0,.L1244
	srdi. 9,3,9
	bne- 0,.L1245
	srdi. 9,3,8
	bne- 0,.L1246
	srdi. 9,3,7
	bne- 0,.L1247
	srdi. 9,3,6
	bne- 0,.L1248
	srdi. 9,3,5
	bne- 0,.L1249
	srdi. 9,3,4
	bne- 0,.L1250
	srdi. 9,3,3
	bne- 0,.L1251
	srdi. 9,3,2
	bne- 0,.L1252
	srdi. 9,3,1
	bne- 0,.L1253
	cntlzd 3,3
	srdi 3,3,6
	addi 9,3,15
.L1239:
	rldicl 3,9,0,59
	blr
.L1240:
	li 9,0
	b .L1239
.L1251:
	li 9,12
	b .L1239
.L1241:
	li 9,2
	b .L1239
.L1242:
	li 9,3
	b .L1239
.L1243:
	li 9,4
	b .L1239
.L1244:
	li 9,5
	b .L1239
.L1245:
	li 9,6
	b .L1239
.L1246:
	li 9,7
	b .L1239
.L1247:
	li 9,8
	b .L1239
.L1248:
	li 9,9
	b .L1239
.L1249:
	li 9,10
	b .L1239
.L1250:
	li 9,11
	b .L1239
.L1252:
	li 9,13
	b .L1239
.L1253:
	li 9,14
	b .L1239
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
	bne- 0,.L1258
	andi. 9,3,0x2
	bne- 0,.L1259
	andi. 9,3,0x4
	bne- 0,.L1260
	andi. 9,3,0x8
	bne- 0,.L1261
	andi. 9,3,0x10
	bne- 0,.L1262
	andi. 9,3,0x20
	bne- 0,.L1263
	andi. 9,3,0x40
	bne- 0,.L1264
	andi. 9,3,0x80
	bne- 0,.L1265
	andi. 9,3,0x100
	bne- 0,.L1266
	andi. 9,3,0x200
	bne- 0,.L1267
	andi. 9,3,0x400
	bne- 0,.L1268
	andi. 9,3,0x800
	bne- 0,.L1269
	andi. 9,3,0x1000
	bne- 0,.L1270
	andi. 9,3,0x2000
	bne- 0,.L1271
	andi. 9,3,0x4000
	bne- 0,.L1272
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
.L1257:
	rldicl 3,3,0,59
	blr
.L1258:
	li 3,0
	b .L1257
.L1259:
	li 3,1
	b .L1257
.L1270:
	li 3,12
	b .L1257
.L1260:
	li 3,2
	b .L1257
.L1261:
	li 3,3
	b .L1257
.L1262:
	li 3,4
	b .L1257
.L1263:
	li 3,5
	b .L1257
.L1264:
	li 3,6
	b .L1257
.L1265:
	li 3,7
	b .L1257
.L1266:
	li 3,8
	b .L1257
.L1267:
	li 3,9
	b .L1257
.L1268:
	li 3,10
	b .L1257
.L1269:
	li 3,11
	b .L1257
.L1271:
	li 3,13
	b .L1257
.L1272:
	li 3,14
	b .L1257
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
	bne- 0,.L1280
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L1280:
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
	beq- 0,.L1284
.L1285:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 0,10,0
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	bne+ 0,.L1285
.L1284:
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
	beq- 0,.L1289
	cmpdi 0,4,0
	beq- 0,.L1289
.L1290:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	bne+ 0,.L1290
.L1289:
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
	blt+ 0,.L1295
	b .L1296
.L1299:
	rldicl 4,8,0,32
	slwi 8,4,1
	cmpwi 0,4,0
	cmplw 5,3,8
	slwi 9,9,1
	ble- 7,.L1297
	blt- 0,.L1296
	rldicl 4,8,0,32
	slwi 9,9,1
	ble- 5,.L1297
	bdz .L1298
.L1295:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge+ 0,.L1299
.L1296:
	li 10,0
.L1301:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt- 0,.L1300
	rldicl 3,8,0,32
	or 10,10,9
.L1300:
	srwi 9,9,1
	cmpwi 0,9,0
	bne+ 0,.L1301
.L1298:
	cmpdi 0,5,0
	beq+ 0,.L1302
	mr 10,3
.L1302:
	rldicl 3,10,0,32
	blr
.L1297:
	cmpwi 0,9,0
	bne+ 0,.L1296
	li 10,0
	b .L1298
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
	blt- 0,.L1315
	mfcr 3
	rlwinm 3,3,2,1
.L1315:
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
	blt- 0,.L1318
	mfcr 3
	rlwinm 3,3,2,1
.L1318:
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
	blt- 0,.L1336
	cmpdi 0,4,0
	beq- 0,.L1328
	li 6,0
.L1324:
	li 10,32
	li 8,0
	b .L1327
.L1337:
	beq- 7,.L1326
.L1327:
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
	bne+ 0,.L1337
.L1326:
	cmpwi 0,6,0
	beq- 0,.L1325
	neg 8,8
.L1325:
	extsw 3,8
	blr
.L1336:
	neg 4,4
	extsw 4,4
	li 6,1
	b .L1324
.L1328:
	li 8,0
	b .L1325
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
	bge+ 0,.L1339
	neg 3,3
	li 9,0
	li 8,1
.L1339:
	cmpdi 0,4,0
	bge+ 0,.L1340
	neg 4,4
	mr 8,9
.L1340:
	cmplw 0,3,4
	li 10,16
	mtctr 10
	li 9,1
	bgt+ 0,.L1341
	b .L1342
.L1345:
	slwi 4,4,1
	cmplw 0,3,4
	cmpwi 7,4,0
	slwi 9,9,1
	ble- 0,.L1343
	blt- 7,.L1361
	slwi 4,4,1
	cmplw 0,3,4
	slwi 9,9,1
	ble- 0,.L1343
	bdz .L1352
.L1341:
	cmpwi 0,4,0
	bge+ 0,.L1345
.L1361:
	cmplw 0,3,4
.L1342:
	li 10,0
.L1347:
	blt- 0,.L1346
	subf 3,4,3
	or 10,10,9
.L1346:
	srwi 9,9,1
	cmpwi 7,9,0
	srwi 4,4,1
	cmplw 0,3,4
	bne+ 7,.L1347
	cmpwi 0,8,0
	rldicl 3,10,0,32
	beqlr- 0
.L1365:
	neg 3,3
	blr
.L1343:
	cmpwi 7,9,0
	bne+ 7,.L1342
.L1352:
	cmpwi 0,8,0
	li 3,0
	beqlr- 0
	b .L1365
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
	bge+ 0,.L1367
	neg 3,3
	li 8,1
.L1367:
	sradi 9,4,63
	xor 4,9,4
	subf 9,9,4
	cmplw 0,3,9
	li 7,16
	mtctr 7
	li 10,1
	bgt+ 0,.L1368
	b .L1374
.L1372:
	slwi 9,9,1
	cmplw 0,3,9
	cmpwi 7,9,0
	slwi 10,10,1
	ble- 0,.L1370
	blt- 7,.L1391
	slwi 9,9,1
	cmplw 0,3,9
	slwi 10,10,1
	ble- 0,.L1370
	bdz .L1371
.L1368:
	cmpwi 0,9,0
	bge+ 0,.L1372
.L1391:
	cmplw 0,3,9
.L1374:
	srwi 10,10,1
	blt- 0,.L1373
	subf 3,9,3
.L1373:
	cmpwi 7,10,0
	srwi 9,9,1
	cmplw 0,3,9
	bne+ 7,.L1374
.L1371:
	cmpwi 0,8,0
	rldicl 3,3,0,32
	beqlr- 0
	neg 3,3
	blr
.L1370:
	cmpwi 7,10,0
	bne+ 7,.L1374
	b .L1371
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
	bge- 0,.L1508
	andi. 9,4,0x8000
	bne- 0,.L1396
	rldic 9,4,1,48
	cmplw 0,3,9
	ble- 0,.L1397
	andi. 10,9,0x8000
	bne- 0,.L1398
	rldic 9,4,2,48
	cmplw 0,3,9
	ble- 0,.L1399
	andi. 10,9,0x8000
	bne- 0,.L1400
	rldic 9,4,3,48
	cmplw 0,3,9
	ble- 0,.L1401
	andi. 10,9,0x8000
	bne- 0,.L1402
	rldic 9,4,4,48
	cmplw 0,3,9
	ble- 0,.L1403
	andi. 10,9,0x8000
	bne- 0,.L1404
	rldic 9,4,5,48
	cmplw 0,3,9
	ble- 0,.L1405
	andi. 10,9,0x8000
	bne- 0,.L1406
	rldic 9,4,6,48
	cmplw 0,3,9
	ble- 0,.L1407
	andi. 10,9,0x8000
	bne- 0,.L1408
	rldic 9,4,7,48
	cmplw 0,3,9
	ble- 0,.L1409
	andi. 10,9,0x8000
	bne- 0,.L1410
	rldic 9,4,8,48
	cmplw 0,3,9
	ble- 0,.L1411
	andi. 10,9,0x8000
	bne- 0,.L1412
	rldic 9,4,9,48
	cmplw 0,3,9
	ble- 0,.L1413
	andi. 10,9,0x8000
	bne- 0,.L1414
	rldic 9,4,10,48
	cmplw 0,3,9
	ble- 0,.L1415
	andi. 10,9,0x8000
	bne- 0,.L1416
	rldic 9,4,11,48
	cmplw 0,3,9
	ble- 0,.L1417
	andi. 10,9,0x8000
	bne- 0,.L1418
	rldic 9,4,12,48
	cmplw 0,3,9
	ble- 0,.L1419
	andi. 10,9,0x8000
	bne- 0,.L1420
	rldic 9,4,13,48
	cmplw 0,3,9
	ble- 0,.L1421
	andi. 10,9,0x8000
	bne- 0,.L1422
	rldic 9,4,14,48
	cmplw 0,3,9
	ble- 0,.L1423
	andi. 10,9,0x8000
	bne- 0,.L1424
	rldic 4,4,15,48
	cmplw 0,3,4
	ble- 0,.L1425
	cmpdi 0,4,0
	li 7,0
	bne- 0,.L1509
.L1426:
	cmpdi 0,5,0
	beq+ 0,.L1444
	mr 7,3
.L1444:
	rlwinm 3,7,0,0xffff
	blr
.L1413:
	blt- 0,.L1460
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,512
	li 8,512
.L1428:
	srwi 10,8,2
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,2
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1429
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1429:
	srwi 10,8,3
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,3
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1430
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1430:
	srwi 10,8,4
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,4
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1431
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1431:
	srwi 10,8,5
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,5
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1432
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1432:
	srwi 10,8,6
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,6
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1433
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1433:
	srwi 10,8,7
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,7
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1434
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1434:
	srwi 10,8,8
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,8
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1435
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1435:
	srwi 10,8,9
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,9
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1436
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1436:
	srwi 10,8,10
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,10
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1437
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1437:
	srwi 10,8,11
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,11
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1438
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1438:
	srwi 10,8,12
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,12
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1439
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1439:
	srwi 10,8,13
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,13
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1440
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1440:
	srwi 10,8,14
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,14
	beq- 0,.L1426
	cmplw 0,3,10
	blt- 0,.L1441
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1441:
	cmpwi 0,8,16384
	srdi 9,9,15
	beq- 0,.L1426
	cmplw 0,3,9
	blt- 0,.L1449
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	ori 7,7,0x1
	b .L1426
.L1449:
	li 3,0
	b .L1426
.L1508:
	li 7,0
	bne- 0,.L1426
	li 7,1
	li 3,0
	b .L1426
.L1396:
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	li 7,1
	b .L1426
.L1397:
	blt- 0,.L1452
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,2
	li 8,2
	b .L1428
.L1398:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	rldicl 4,4,0,49
	li 10,1
	li 7,2
	li 8,2
.L1446:
	cmplw 0,3,4
	blt- 0,.L1428
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 7,7,10
	b .L1428
.L1399:
	blt- 0,.L1453
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,4
	li 8,4
	b .L1428
.L1400:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,2
	li 7,4
	li 8,4
	b .L1446
.L1401:
	blt- 0,.L1454
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,8
	li 8,8
	b .L1428
.L1402:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,4
	li 7,8
	li 8,8
	b .L1446
.L1403:
	blt- 0,.L1455
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,16
	li 8,16
	b .L1428
.L1404:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,8
	li 7,16
	li 8,16
	b .L1446
.L1405:
	blt- 0,.L1456
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,32
	li 8,32
	b .L1428
.L1406:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,16
	li 7,32
	li 8,32
	b .L1446
.L1407:
	blt- 0,.L1457
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,64
	li 8,64
	b .L1428
.L1408:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,32
	li 7,64
	li 8,64
	b .L1446
.L1409:
	blt- 0,.L1458
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,128
	li 8,128
	b .L1428
.L1410:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,64
	li 7,128
	li 8,128
	b .L1446
.L1412:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,128
	li 7,256
	li 8,256
	b .L1446
.L1414:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,256
	li 7,512
	li 8,512
	b .L1446
.L1452:
	li 8,2
.L1445:
	rldicl 10,8,63,49
	srdi 4,9,1
	li 7,0
	b .L1446
.L1416:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,512
	li 7,1024
	li 8,1024
	b .L1446
.L1418:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1446
.L1453:
	li 8,4
	b .L1445
.L1454:
	li 8,8
	b .L1445
.L1420:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1446
.L1422:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1446
.L1455:
	li 8,16
	b .L1445
.L1424:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1446
.L1456:
	li 8,32
	b .L1445
.L1457:
	li 8,64
	b .L1445
.L1425:
	andi. 9,3,0x8000
	li 9,-1
	rlwinm 9,9,0,16,16
	bne- 0,.L1451
	li 8,0
	ori 8,8,0x8000
	b .L1445
.L1509:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1446
.L1458:
	li 8,128
	b .L1445
.L1411:
	blt- 0,.L1459
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,256
	li 8,256
	b .L1428
.L1451:
	mr 8,9
	li 7,-32768
	li 3,0
	b .L1428
.L1459:
	li 8,256
	b .L1445
.L1415:
	blt- 0,.L1461
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,1024
	li 8,1024
	b .L1428
.L1423:
	blt- 0,.L1465
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,16384
	li 8,16384
	b .L1428
.L1461:
	li 8,1024
	b .L1445
.L1465:
	li 8,16384
	b .L1445
.L1460:
	li 8,512
	b .L1445
.L1421:
	blt- 0,.L1464
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,8192
	li 8,8192
	b .L1428
.L1419:
	blt- 0,.L1463
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,4096
	li 8,4096
	b .L1428
.L1417:
	blt- 0,.L1462
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,2048
	li 8,2048
	b .L1428
.L1464:
	li 8,8192
	b .L1445
.L1463:
	li 8,4096
	b .L1445
.L1462:
	li 8,2048
	b .L1445
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
	blt+ 0,.L1511
	b .L1531
.L1515:
	sldi 4,4,1
	cmpld 7,10,4
	sldi 9,9,1
	ble- 7,.L1513
	bdz .L1514
.L1511:
	andis. 3,4,0x8000
	beq+ 0,.L1515
.L1531:
	cmpld 7,10,4
	li 3,0
.L1517:
	blt- 7,.L1516
	subf 10,4,10
	or 3,3,9
.L1516:
	srdi. 9,9,1
	srdi 4,4,1
	cmpld 7,10,4
	bne+ 0,.L1517
.L1514:
	cmpdi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1513:
	cmpdi 0,9,0
	beq- 0,.L1514
	li 3,0
	b .L1517
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
	beq- 0,.L1533
	addi 4,4,-32
	slw 10,3,4
	sldi 10,10,32
	li 3,0
	or 3,3,10
	blr
.L1533:
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
	beq- 0,.L1539
	addi 5,5,-64
	sld 3,4,5
	li 4,0
	blr
.L1539:
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
	beq- 0,.L1544
	sradi 9,3,32
	addi 4,4,-32
	sraw 10,9,4
	srawi 3,9,31
	rldicl 10,10,0,32
	sldi 3,3,32
	or 3,3,10
	blr
.L1544:
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
	beq- 0,.L1550
	addi 5,5,-64
	srad 4,3,5
	sradi 3,3,63
	blr
.L1550:
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
	bne- 0,.L1557
	subfic 3,3,2
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
.L1557:
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
	bne- 0,.L1561
	li 4,0
.L1561:
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
	blt- 0,.L1564
	li 9,2
	bgt- 0,.L1563
	cmplw 0,3,4
	li 9,0
	blt- 0,.L1563
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1563:
	rldicl 3,9,0,62
	blr
.L1564:
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
	blt- 0,.L1570
	li 9,1
	bgt- 0,.L1569
	cmplw 0,3,4
	li 9,-1
	blt- 0,.L1569
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1569:
	extsw 3,9
	blr
.L1570:
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
	blt- 0,.L1575
	li 3,2
	bgt- 0,.L1574
	cmpld 0,4,6
	li 3,0
	blt- 0,.L1574
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
.L1574:
	rldicl 3,3,0,62
	blr
.L1575:
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
	bne- 0,.L1582
	li 3,0
.L1582:
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
	bne- 0,.L1584
	cmpdi 0,3,0
	li 4,0
	bne- 0,.L1588
	extsw 3,4
	blr
.L1584:
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 4,4,64
	extsw 3,4
	blr
.L1588:
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
	beq- 0,.L1590
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L1590:
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
	beq- 0,.L1596
	addi 5,5,-64
	srd 4,3,5
	li 3,0
	blr
.L1596:
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
	frsp 1,12
	beq- 0,.L1614
.L1616:
	fmul 1,1,0
.L1614:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L1615
	andi. 10,9,0x1
	fmul 0,0,0
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1616
.L1620:
	extsw 9,10
	fmul 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1616
	b .L1620
.L1615:
	cmpwi 0,4,0
	bgelr+ 0
	frsp 12,12
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
	beq- 0,.L1622
.L1624:
	fmuls 1,1,0
.L1622:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L1623
	andi. 10,9,0x1
	fmuls 0,0,0
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1624
.L1628:
	extsw 9,10
	fmuls 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1624
	b .L1628
.L1623:
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
	blt- 0,.L1631
	li 9,2
	bgt- 0,.L1630
	cmplw 0,3,4
	li 9,0
	blt- 0,.L1630
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1630:
	rldicl 3,9,0,62
	blr
.L1631:
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
	blt- 0,.L1637
	li 9,1
	bgt- 0,.L1636
	cmplw 0,3,4
	li 9,-1
	blt- 0,.L1636
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1636:
	extsw 3,9
	blr
.L1637:
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
	blt- 0,.L1642
	li 3,2
	bgt- 0,.L1641
	cmpld 0,4,6
	li 3,0
	blt- 0,.L1641
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
.L1641:
	rldicl 3,3,0,62
	blr
.L1642:
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
