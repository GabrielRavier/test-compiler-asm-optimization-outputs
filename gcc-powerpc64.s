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
	fcmpu 0,1,2
	ble- 0,.L255
	fsub 1,1,2
	blr
.L255:
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
	fcmpu 0,1,2
	ble- 0,.L261
	fsubs 1,1,2
	blr
.L261:
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
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L263
	cmpwi 0,9,0
	beqlr- 0
	fmr 1,2
	blr
.L263:
	fcmpu 0,1,2
	bgelr- 0
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
	stfs 1,-16(1)
	lwz 9,-16(1)
	stfs 2,-16(1)
	rlwinm 8,9,0,0,0
	lwz 10,-16(1)
	rlwinm 7,10,0,0,0
	cmpw 0,8,7
	beq- 0,.L272
	cmpwi 0,8,0
	stw 9,-16(1)
	beqlr- 0
	fmr 1,2
	stw 10,-16(1)
	blr
.L272:
	stw 9,-16(1)
	lfs 0,-16(1)
	stw 10,-16(1)
	lfs 12,-16(1)
	fcmpu 0,0,12
	blt- 0,.L279
	stw 9,-16(1)
	lfs 1,-16(1)
	blr
.L279:
	mr 9,10
	stw 9,-16(1)
	lfs 1,-16(1)
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
	stfd 0,-16(1)
	fmr 0,3
	ld 9,-16(1)
	stfd 0,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L281
	cmpwi 0,9,0
	beqlr- 0
	fmr 1,3
	fmr 2,4
	blr
.L281:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bgelr- 0
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
	stfd 1,-16(1)
	fmr 0,1
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L288
	cmpwi 0,9,0
	fmr 1,2
	beqlr- 0
	fmr 1,0
	blr
.L288:
	fcmpu 0,1,2
	blt- 0,.L295
	fmr 1,2
	blr
.L295:
	fmr 2,1
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
	stfs 1,-16(1)
	lwz 10,-16(1)
	stfs 2,-16(1)
	rlwinm 8,10,0,0,0
	lwz 9,-16(1)
	rlwinm 7,9,0,0,0
	cmpw 0,8,7
	beq- 0,.L297
	cmpwi 0,8,0
	fmr 1,2
	beqlr- 0
	stw 10,-16(1)
	lfs 1,-16(1)
	blr
.L297:
	stw 10,-16(1)
	lfs 0,-16(1)
	stw 9,-16(1)
	lfs 12,-16(1)
	fcmpu 0,0,12
	blt- 0,.L304
	stw 9,-16(1)
	lfs 1,-16(1)
	blr
.L304:
	mr 9,10
	stw 9,-16(1)
	lfs 1,-16(1)
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
	fmr 12,1
	fmr 13,2
	fmr 0,3
	fmr 1,4
	fmr 11,12
	stfd 11,-16(1)
	fmr 11,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq- 0,.L306
	cmpwi 0,9,0
	beq- 0,.L310
	fmr 1,12
	blr
.L306:
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bge- 0,.L310
	fmr 0,12
	fmr 1,2
.L310:
	fmr 2,1
	fmr 1,0
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
	beq- 0,.L312
	addis 7,2,.LANCHOR1@toc@ha
	addi 7,7,.LANCHOR1@toc@l
.L313:
	rldicl 8,9,0,58
	srwi 9,9,6
	lbzx 8,7,8
	cmpwi 0,9,0
	stb 8,0(10)
	addi 10,10,1
	bne+ 0,.L313
.L312:
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
	beq- 0,.L324
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr- 0
	std 3,8(9)
	blr
.L324:
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
	beq- 0,.L326
	ld 10,8(3)
	std 10,8(9)
.L326:
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
	beq- 0,.L335
	std 29,168(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,176(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,184(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L337
.L349:
	beq- 7,.L348
.L337:
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
	bne+ 0,.L349
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L334:
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
.L348:
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
.L335:
	mulld 25,28,27
	cmpdi 0,28,0
	addi 27,27,1
	std 27,0(24)
	add 25,23,25
	beq- 0,.L334
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
	beq- 0,.L351
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
	b .L353
.L361:
	beq- 7,.L360
.L353:
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
	bne+ 0,.L361
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
.L360:
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
.L351:
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
.L370:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L364
	ble- 7,.L364
	cmpwi 0,10,43
	beq- 0,.L365
	cmpwi 0,10,45
	bne- 0,.L383
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L375
	li 5,1
.L368:
	li 3,0
.L372:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	slwi 9,9,1
	subf 3,7,9
	ble+ 0,.L372
	cmpwi 0,5,0
	bne- 0,.L371
	subf 3,9,7
.L371:
	extsw 3,3
	blr
.L364:
	addi 3,3,1
	b .L370
.L383:
	addi 9,10,-48
	cmplwi 0,9,9
	mr 8,3
	li 5,0
	ble+ 0,.L368
.L375:
	li 3,0
	b .L371
.L365:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L368
	li 3,0
	b .L371
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
.L391:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L385
	ble- 7,.L385
	cmpwi 0,10,43
	beq- 0,.L386
	cmpwi 0,10,45
	bne- 0,.L404
	lbz 10,1(3)
	addi 7,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L396
	li 5,1
.L389:
	li 3,0
.L393:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	extsw 8,8
	sldi 9,9,1
	subf 3,8,9
	ble+ 0,.L393
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,8
	blr
.L385:
	addi 3,3,1
	b .L391
.L404:
	addi 9,10,-48
	cmplwi 0,9,9
	mr 7,3
	li 5,0
	ble+ 0,.L389
.L396:
	li 3,0
	blr
.L386:
	lbz 10,1(3)
	addi 7,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L389
	b .L396
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
.L410:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L406
	ble- 7,.L406
	cmpwi 0,10,43
	beq- 0,.L407
	cmpwi 0,10,45
	beq- 0,.L408
	addi 9,10,-48
	cmplwi 0,9,9
	mr 7,3
	li 5,0
	bgt- 0,.L417
.L411:
	li 3,0
.L414:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 9,3,2
	addi 6,10,-48
	cmplwi 0,6,9
	add 9,9,3
	extsw 8,8
	sldi 9,9,1
	subf 3,8,9
	ble+ 0,.L414
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,8
	blr
.L406:
	addi 3,3,1
	b .L410
.L408:
	lbz 10,1(3)
	addi 7,3,1
	li 5,1
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L411
.L417:
	li 3,0
	blr
.L407:
	lbz 10,1(3)
	addi 7,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L417
	li 5,0
	b .L411
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
	beq- 0,.L426
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
	b .L429
.L438:
	beq- 0,.L436
	cmpdi 0,31,0
	add 26,30,27
	beq- 0,.L437
.L429:
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
	bge+ 0,.L438
	mr 31,29
	cmpdi 0,31,0
	bne+ 0,.L429
.L437:
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
.L426:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 31,-8(1)
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L436:
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
	beq- 0,.L444
	mflr 0
	.cfi_register 65, 0
	std 2,40(1)
	std 0,192(1)
	.cfi_offset 65, 16
	std 28,144(1)
	.cfi_offset 28, -32
.L440:
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
	beq- 0,.L451
	cmpwi 5,28,0
	ble- 0,.L442
	add 26,30,27
	bne+ 7,.L440
.L452:
	ld 0,192(1)
	ld 28,144(1)
	.cfi_restore 28
	mtlr 0
	.cfi_restore 65
.L444:
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
.L442:
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
	bne+ 5,.L440
	b .L452
.L451:
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
	beq- 0,.L464
.L461:
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L461
.L464:
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
	beq+ 0,.L469
	b .L468
.L470:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L468
.L469:
	cmpwi 7,9,0
	bne+ 7,.L470
.L468:
	li 3,-1
	blt- 0,.L471
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L471:
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
.L474:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L474
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
	beq- 0,.L480
	mr 9,3
.L479:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L479
	subf 3,3,9
	sradi 3,3,2
	blr
.L480:
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
	beq- 0,.L492
	mtctr 5
	b .L483
.L494:
	beq- 7,.L485
	addi 3,3,4
	addi 4,4,4
	bdz .L492
.L483:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 0,9,10
	beq+ 0,.L494
.L485:
	lwz 3,0(3)
	lwz 10,0(4)
	cmpw 0,3,10
	bge- 0,.L487
	li 3,-1
	extsw 3,3
	blr
.L487:
	extsw 10,10
	extsw 3,3
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
.L492:
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
	beq- 0,.L499
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L515
.L502:
	srdi 9,5,1
	mtctr 9
.L496:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,4
	bdnz .L496
.L499:
	li 3,0
	blr
.L515:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpdi 0,9,0
	addi 3,3,4
	bne+ 0,.L502
	b .L499
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
	beq- 0,.L522
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L537
.L525:
	srdi 9,5,1
	mtctr 9
	b .L517
.L519:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,8,4
	cmpw 0,9,10
	bne- 0,.L534
	bdz .L522
.L517:
	lwz 9,0(3)
	addi 7,3,4
	lwz 10,0(4)
	addi 8,4,4
	cmpw 0,9,10
	beq+ 0,.L519
.L534:
	blt- 0,.L538
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
.L537:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L534
	cmpdi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 0,.L525
.L522:
	li 3,0
	extsw 3,3
	blr
.L538:
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
	beq- 0,.L540
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
.L540:
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
	bge- 0,.L572
	cmpdi 0,5,0
	beqlr- 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne- 0,.L573
.L559:
	srdi 10,5,1
	mtctr 10
.L550:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L550
	blr
.L572:
	cmpdi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L574
.L562:
	srdi 8,5,1
	mtctr 8
.L551:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	stw 6,4(10)
	addi 9,9,8
	addi 10,10,8
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L551
	blr
.L573:
	cmpdi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne+ 0,.L559
	blr
.L574:
	cmpdi 0,8,0
	lwz 8,0(4)
	mr 9,4
	stw 8,0(3)
	mr 10,3
	bne+ 0,.L562
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
	ble- 0,.L581
	cmpdi 0,9,0
	mr 11,3
	beq- 0,.L578
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
.L578:
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
	beq- 0,.L603
	cmpdi 0,0,1
	beq- 0,.L607
	cmpdi 0,0,2
	beq- 0,.L608
	stdu 10,8(9)
	mr 6,12
.L608:
	stdu 10,8(9)
	addi 6,6,-1
.L607:
	cmpdi 0,6,1
	stdu 10,8(9)
	beq- 0,.L621
.L603:
	srdi 8,8,2
	mtctr 8
.L579:
	std 10,8(9)
	addi 9,9,32
	std 10,-16(9)
	std 10,-8(9)
	std 10,0(9)
	bdnz .L579
.L621:
	andi. 9,5,0x1
	beqlr- 0
	rldicr 5,5,0,62
	sldi 9,5,2
	subf 7,5,7
	add 9,11,9
.L577:
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
.L581:
	mr 9,3
	b .L577
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
	bge- 0,.L624
	cmpdi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L659
	cmpdi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr- 0
.L659:
	srdi 9,5,1
	mtctr 9
.L626:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	stb 8,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L626
	blr
.L624:
	beqlr- 0
	cmpdi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmpldi 0,9,6
	ble- 0,.L627
	or 10,4,3
	andi. 10,10,0x7
	bne- 0,.L627
	addi 10,3,1
	subf 10,10,4
	subfic 10,10,6
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L627
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	addi 8,3,-8
	addi 10,4,-8
	bne- 0,.L688
.L665:
	srdi 9,9,1
	mtctr 9
.L628:
	ld 6,8(8)
	mr 7,8
	addi 9,10,8
	std 6,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L628
.L684:
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
.L688:
	cmpdi 0,7,0
	ld 10,0(3)
	mr 8,3
	std 10,0(4)
	mr 10,4
	bne+ 0,.L665
	b .L684
.L627:
	andi. 10,9,0x1
	addi 8,4,-1
	addi 10,3,-1
	bne- 0,.L689
.L662:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L631
.L690:
	lbz 7,1(7)
	addi 10,10,2
	addi 8,8,2
	stb 7,1(9)
.L631:
	lbz 6,1(10)
	addi 7,10,1
	addi 9,8,1
	stb 6,1(8)
	bdnz .L690
	blr
.L689:
	lbz 7,0(3)
	mr 10,3
	mr 8,4
	stb 7,0(4)
	b .L662
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
	b .L707
.L715:
	addi 9,9,1
	bne- 0,.L706
	bdz .L714
.L707:
	srw 10,3,9
	rldicl 10,10,0,63
	cmpdi 7,10,0
	addi 9,9,1
	srw 10,3,9
	andi. 10,10,0x1
	beq+ 7,.L715
.L706:
	extsw 3,9
	blr
.L714:
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
	beq- 0,.L719
	andi. 3,9,0x1
	bne- 0,.L717
	li 3,1
.L718:
	srawi 9,9,1
	andi. 10,9,0x1
	addi 3,3,1
	beq+ 0,.L718
.L717:
	extsw 3,3
	blr
.L719:
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
	li 3,0
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
	li 3,0
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
	li 3,0
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
	fadds 0,1,1
	fcmpu 0,0,1
	beqlr- 0
	cmpwi 0,4,0
	blt- 0,.L739
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
.L728:
	andi. 9,4,0x1
	beq- 0,.L729
.L730:
	fmuls 1,1,0
.L729:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmuls 0,0,0
	srawi 9,4,1
	addze 9,9
	bne- 0,.L730
.L740:
	extsw 4,9
	fmuls 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne- 0,.L730
	b .L740
.L739:
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	b .L728
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
	fadd 0,1,1
	fcmpu 0,0,1
	beqlr- 0
	cmpwi 0,4,0
	blt- 0,.L754
	addis 9,2,.LC5@toc@ha
	lfs 0,.LC5@toc@l(9)
.L743:
	andi. 9,4,0x1
	beq- 0,.L744
.L745:
	fmul 1,1,0
.L744:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmul 0,0,0
	srawi 9,4,1
	addze 9,9
	bne- 0,.L745
.L755:
	extsw 4,9
	fmul 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne- 0,.L745
	b .L755
.L754:
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	b .L743
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
	mflr 0
	fmr 3,1
	fmr 4,2
	stfd 28,-32(1)
	stfd 29,-24(1)
	.cfi_register 65, 0
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 28,1
	fmr 29,2
	std 31,-40(1)
	.cfi_offset 31, -40
	mr 31,5
	std 0,16(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq- 0,.L757
	cmpwi 0,31,0
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	blt- 0,.L771
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
.L758:
	andi. 9,31,0x1
	beq- 0,.L759
.L760:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L759:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L770
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
	bne- 0,.L760
.L772:
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
	bne- 0,.L760
	b .L772
.L770:
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
.L757:
	addi 1,1,160
	.cfi_def_cfa_offset 0
	fmr 1,28
	ld 0,16(1)
	fmr 2,29
	lfd 28,-32(1)
	mtlr 0
	.cfi_restore 65
	lfd 29,-24(1)
	ld 31,-40(1)
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	blr
.L771:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L758
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
	ble- 0,.L775
	or 10,3,4
	andi. 10,10,0x7
	bne- 0,.L775
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	mr 10,9
	addi 8,3,-8
	addi 9,4,-8
	bne- 0,.L819
.L802:
	srdi 10,10,1
	mtctr 10
.L776:
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
	bdnz .L776
.L816:
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
.L819:
	ld 6,0(3)
	cmpdi 0,7,0
	ld 7,0(4)
	mr 9,4
	mr 8,3
	xor 7,7,6
	std 7,0(3)
	bne+ 0,.L802
	b .L816
.L775:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 10,3,-1
	beq- 0,.L799
	lbz 6,0(3)
	mr 7,4
	lbz 8,0(4)
	mr 10,3
	xor 8,8,6
	stb 8,0(3)
.L799:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L778
.L820:
	lbz 9,1(6)
	addi 10,10,2
	lbz 6,1(8)
	xor 9,9,6
	stb 9,1(8)
.L778:
	lbz 9,1(7)
	addi 6,7,1
	lbz 5,1(10)
	addi 8,10,1
	addi 7,7,2
	xor 9,9,5
	stb 9,1(10)
	bdnz .L820
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
	beq- 0,.L822
.L823:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L823
.L822:
	cmpdi 0,5,0
	beq- 0,.L824
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L846
.L835:
	srdi 8,5,1
	mtctr 8
.L825:
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
	bdnz .L825
.L824:
	li 10,0
	stb 10,0(9)
	blr
.L846:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	cmpdi 0,7,0
	addi 9,9,1
	bne+ 0,.L835
	b .L824
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
	beq- 0,.L859
	cmpdi 0,8,1
	beq- 0,.L870
	cmpdi 0,8,2
	beq- 0,.L871
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L871:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L870:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr- 0
.L859:
	srdi 10,10,2
.L848:
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
	bne+ 0,.L848
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
	beq- 0,.L883
.L879:
	mr 10,4
	b .L882
.L881:
	beqlr- 7
.L882:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne+ 0,.L881
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L879
.L883:
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
.L888:
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	bne+ 7,.L887
	mr 3,9
.L887:
	addi 9,9,1
	bne+ 0,.L888
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
	beq- 0,.L904
	mr 9,4
.L893:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L893
	subf. 9,4,9
	mr 3,8
	beqlr- 0
	addi 3,9,-1
	b .L901
.L914:
	cmpwi 0,9,0
	addi 8,8,1
	beq- 0,.L913
.L901:
	lbz 9,0(8)
	cmpw 0,9,5
	bne+ 0,.L914
	addi 0,3,1
	mtctr 0
	mr 6,4
	mr 10,11
	mr 7,8
	b .L895
.L916:
	bdz .L897
	bne- 7,.L898
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq- 0,.L915
	lbzu 10,1(6)
.L895:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne+ 0,.L916
.L898:
	addi 8,8,1
	b .L901
.L913:
	li 3,0
	blr
.L915:
	lbz 10,1(6)
.L897:
	cmpw 0,9,10
	bne+ 0,.L898
.L904:
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
	blt- 0,.L927
	blelr- 0
	fcmpu 0,2,0
	bgelr+ 0
	fneg 1,1
	blr
.L927:
	fcmpu 0,2,0
	blelr+ 0
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
	blt- 0,.L936
	subf 4,6,4
	add 0,3,4
	cmpld 0,3,0
	bgt- 0,.L936
	cmpldi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L933
.L930:
	cmpld 0,0,9
	blt- 0,.L936
.L933:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 0,10,12
	bne+ 0,.L930
	beqlr- 7
	subf 10,11,9
	add 10,10,6
	addi 10,10,-2
	mtctr 10
	mr 8,5
	mr 10,11
.L931:
	lbzu 4,1(10)
	lbzu 7,1(8)
	cmpw 0,4,7
	bne- 0,.L930
	bdnz .L931
	blr
.L936:
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
	beq- 0,.L945
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L945:
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
	fcmpu 0,1,0
	blt- 0,.L973
	addis 9,2,.LC23@toc@ha
	lfs 0,.LC23@toc@l(9)
	li 10,0
	fcmpu 7,1,0
	blt- 7,.L974
.L953:
	addis 8,2,.LC5@toc@ha
	lfs 12,.LC5@toc@l(8)
	addis 9,2,.LC6@toc@ha
	lfs 11,.LC6@toc@l(9)
	li 9,0
.L959:
	fmr 0,1
	addi 9,9,1
	fmul 1,1,11
	fcmpu 0,0,12
	bge+ 0,.L959
	cmpwi 0,10,0
	stw 9,0(4)
	beqlr- 0
.L976:
	fneg 1,1
	blr
.L974:
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	fcmpu 7,1,0
	bge- 7,.L956
	bne- 0,.L965
.L956:
	li 9,0
	stw 9,0(4)
	blr
.L973:
	addis 9,2,.LC19@toc@ha
	fneg 12,1
	lfs 0,.LC19@toc@l(9)
	fcmpu 0,1,0
	bgt- 0,.L975
	fmr 1,12
	li 10,1
	b .L953
.L975:
	addis 9,2,.LC21@toc@ha
	lfs 0,.LC21@toc@l(9)
	fcmpu 0,1,0
	ble- 0,.L956
	li 10,1
.L954:
	addis 9,2,.LC25@toc@ha
	fmr 1,12
	lfs 12,.LC25@toc@l(9)
	li 9,0
.L961:
	fmr 0,1
	addi 9,9,-1
	fadd 1,1,1
	fcmpu 0,0,12
	blt+ 0,.L961
	cmpwi 0,10,0
	stw 9,0(4)
	bne+ 0,.L976
	blr
.L965:
	fmr 12,1
	b .L954
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
.L979:
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
	bne+ 0,.L979
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
	blt+ 0,.L984
	b .L985
.L988:
	rldicl 4,8,0,32
	slwi 8,4,1
	cmpwi 0,4,0
	cmplw 5,3,8
	slwi 9,9,1
	ble- 7,.L986
	blt- 0,.L985
	rldicl 4,8,0,32
	slwi 9,9,1
	ble- 5,.L986
	bdz .L987
.L984:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge+ 0,.L988
.L985:
	li 10,0
.L990:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt- 0,.L989
	rldicl 3,8,0,32
	or 10,10,9
.L989:
	srwi 9,9,1
	cmpwi 0,9,0
	bne+ 0,.L990
.L987:
	cmpdi 0,5,0
	beq+ 0,.L991
	mr 10,3
.L991:
	rldicl 3,10,0,32
	blr
.L986:
	cmpwi 0,9,0
	bne+ 0,.L985
	li 10,0
	b .L987
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
	beq- 0,.L1005
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	extsw 3,3
	blr
.L1005:
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
	beq- 0,.L1008
	cntlzd 3,3
	addi 3,3,-1
	extsw 3,3
	blr
.L1008:
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
	beq- 0,.L1010
.L1011:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	bne+ 0,.L1011
.L1010:
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
	blt- 0,.L1018
	add 8,4,5
	cmpld 0,3,8
	mr 10,5
	ble- 0,.L1077
.L1018:
	cmpwi 0,9,0
	addi 10,4,-8
	addi 8,3,-8
	beq- 0,.L1064
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1078
.L1050:
	srdi 9,9,1
	mtctr 9
.L1021:
	ld 6,8(10)
	mr 7,10
	addi 9,8,8
	std 6,8(8)
	addi 10,10,16
	addi 8,8,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L1021
.L1067:
	cmplw 0,11,5
	bgelr- 0
	subf 9,11,5
	addi 10,9,-1
	cmplwi 0,10,6
	rldicl 10,11,0,32
	ble- 0,.L1023
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
	beq- 0,.L1023
	or 8,12,6
	andi. 8,8,0x7
	bne- 0,.L1023
	rldicl 10,9,61,35
	andi. 8,10,0x1
	addi 0,10,-1
	addi 8,12,-8
	addi 7,6,-8
	bne- 0,.L1079
.L1047:
	srdi 10,10,1
	mtctr 10
.L1024:
	ld 0,8(8)
	mr 6,8
	addi 10,7,8
	std 0,8(7)
	addi 8,8,16
	addi 7,7,16
	ld 6,16(6)
	std 6,8(10)
	bdnz .L1024
.L1071:
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
.L1078:
	cmpdi 0,7,0
	ld 8,0(4)
	mr 10,4
	std 8,0(3)
	mr 8,3
	bne+ 0,.L1050
	b .L1067
.L1079:
	cmpdi 0,0,0
	ld 0,0(12)
	mr 8,12
	std 0,0(6)
	mr 7,6
	bne+ 0,.L1047
	b .L1071
.L1077:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L1080
.L1053:
	srdi 9,10,1
	mtctr 9
.L1028:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L1028
	blr
.L1080:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L1053
	blr
.L1064:
	cmpdi 0,5,0
	rldicl 10,11,0,32
	mr 9,5
	beqlr- 0
.L1023:
	rldicl 9,9,0,32
	andi. 8,9,0x1
	addi 10,10,-1
	add 4,4,10
	addi 8,9,-1
	add 10,3,10
	beq- 0,.L1044
	cmpdi 0,8,0
	lbzu 8,1(4)
	stbu 8,1(10)
	beqlr- 0
.L1044:
	srdi 9,9,1
	mtctr 9
.L1026:
	lbz 7,1(4)
	mr 8,4
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	addi 10,10,2
	lbz 8,2(8)
	stb 8,1(9)
	bdnz .L1026
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
	blt- 0,.L1085
	add 10,4,5
	cmpld 0,3,10
	mr 9,5
	ble- 0,.L1128
.L1085:
	cmpwi 0,6,0
	beq- 0,.L1084
	addi 9,6,-1
	cmplwi 0,9,4
	ble- 0,.L1088
	or 9,4,3
	andi. 9,9,0x7
	bne- 0,.L1088
	addi 9,4,2
	subf 9,9,3
	subfic 9,9,4
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1088
	srdi 9,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	srwi 11,5,3
	addi 10,4,-8
	addi 8,3,-8
	bne- 0,.L1129
.L1109:
	srdi 9,9,1
	mtctr 9
.L1089:
	ld 0,8(10)
	mr 7,10
	addi 9,8,8
	std 0,8(8)
	addi 10,10,16
	addi 8,8,16
	ld 7,16(7)
	std 7,8(9)
	bdnz .L1089
.L1124:
	slwi 11,11,2
	cmplw 0,6,11
	beq- 0,.L1084
	addi 10,11,1
	rlwinm 8,11,1,0,28
	cmplw 0,6,10
	lhzx 7,4,8
	sthx 7,3,8
	ble- 0,.L1084
	addi 9,11,2
	rldic 10,10,1,31
	cmplw 0,6,9
	lhzx 8,4,10
	sthx 8,3,10
	ble- 0,.L1084
	rldicl 9,9,0,32
	sldi 9,9,1
	lhzx 10,4,9
	sthx 10,3,9
.L1084:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L1129:
	cmpdi 0,7,0
	ld 8,0(4)
	mr 10,4
	std 8,0(3)
	mr 8,3
	bne+ 0,.L1109
	b .L1124
.L1128:
	cmpdi 0,5,0
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1130
.L1112:
	srdi 9,9,1
	mtctr 9
.L1094:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L1094
	blr
.L1130:
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(3)
	bne+ 0,.L1112
	blr
.L1088:
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-2
	addi 10,3,-2
	beq- 0,.L1106
	cmpdi 0,8,0
	lhz 10,0(4)
	mr 9,4
	sth 10,0(3)
	mr 10,3
	beq- 0,.L1084
.L1106:
	srdi 8,6,1
	mtctr 8
.L1091:
	lhz 6,2(9)
	mr 7,9
	addi 8,10,2
	sth 6,2(10)
	addi 9,9,4
	addi 10,10,4
	lhz 7,4(7)
	sth 7,2(8)
	bdnz .L1091
	b .L1084
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
	blt- 0,.L1135
	add 8,4,5
	cmpld 0,3,8
	mr 10,5
	ble- 0,.L1194
.L1135:
	cmpwi 0,9,0
	addi 10,4,-4
	addi 8,3,-4
	beq- 0,.L1181
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1195
.L1167:
	srdi 9,9,1
	mtctr 9
.L1138:
	lwz 6,4(10)
	mr 7,10
	addi 9,8,4
	stw 6,4(8)
	addi 10,10,8
	addi 8,8,8
	lwz 7,8(7)
	stw 7,4(9)
	bdnz .L1138
.L1184:
	cmplw 0,11,5
	bgelr- 0
	subf 9,11,5
	addi 10,9,-1
	cmplwi 0,10,6
	rldicl 10,11,0,32
	ble- 0,.L1140
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
	beq- 0,.L1140
	or 8,12,6
	andi. 8,8,0x7
	bne- 0,.L1140
	rldicl 10,9,61,35
	andi. 8,10,0x1
	addi 0,10,-1
	addi 8,12,-8
	addi 7,6,-8
	bne- 0,.L1196
.L1164:
	srdi 10,10,1
	mtctr 10
.L1141:
	ld 0,8(8)
	mr 6,8
	addi 10,7,8
	std 0,8(7)
	addi 8,8,16
	addi 7,7,16
	ld 6,16(6)
	std 6,8(10)
	bdnz .L1141
.L1188:
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
.L1195:
	cmpdi 0,7,0
	lwz 8,0(4)
	mr 10,4
	stw 8,0(3)
	mr 8,3
	bne+ 0,.L1167
	b .L1184
.L1196:
	cmpdi 0,0,0
	ld 0,0(12)
	mr 8,12
	std 0,0(6)
	mr 7,6
	bne+ 0,.L1164
	b .L1188
.L1194:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L1197
.L1170:
	srdi 9,10,1
	mtctr 9
.L1145:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L1145
	blr
.L1197:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne+ 0,.L1170
	blr
.L1181:
	cmpdi 0,5,0
	rldicl 10,11,0,32
	mr 9,5
	beqlr- 0
.L1140:
	rldicl 9,9,0,32
	andi. 8,9,0x1
	addi 10,10,-1
	add 4,4,10
	addi 8,9,-1
	add 10,3,10
	beq- 0,.L1161
	cmpdi 0,8,0
	lbzu 8,1(4)
	stbu 8,1(10)
	beqlr- 0
.L1161:
	srdi 9,9,1
	mtctr 9
.L1143:
	lbz 7,1(4)
	mr 8,4
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	addi 10,10,2
	lbz 8,2(8)
	stb 8,1(9)
	bdnz .L1143
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
	blt- 0,.L1203
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L1203:
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
	blt- 0,.L1206
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L1206:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
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
	bne- 0,.L1211
	srawi 9,3,14
	cmpwi 0,9,0
	bne- 0,.L1210
	srdi. 9,3,13
	bne- 0,.L1212
	srdi. 9,3,12
	bne- 0,.L1213
	srdi. 9,3,11
	bne- 0,.L1214
	srdi. 9,3,10
	bne- 0,.L1215
	srdi. 9,3,9
	bne- 0,.L1216
	srdi. 9,3,8
	bne- 0,.L1217
	srdi. 9,3,7
	bne- 0,.L1218
	srdi. 9,3,6
	bne- 0,.L1219
	srdi. 9,3,5
	bne- 0,.L1220
	srdi. 9,3,4
	bne- 0,.L1221
	srdi. 9,3,3
	bne- 0,.L1222
	srdi. 9,3,2
	bne- 0,.L1223
	srdi. 9,3,1
	bne- 0,.L1224
	cntlzd 3,3
	srdi 3,3,6
	addi 9,3,15
.L1210:
	rldicl 3,9,0,59
	blr
.L1211:
	li 9,0
	b .L1210
.L1222:
	li 9,12
	b .L1210
.L1212:
	li 9,2
	b .L1210
.L1213:
	li 9,3
	b .L1210
.L1214:
	li 9,4
	b .L1210
.L1215:
	li 9,5
	b .L1210
.L1216:
	li 9,6
	b .L1210
.L1217:
	li 9,7
	b .L1210
.L1218:
	li 9,8
	b .L1210
.L1219:
	li 9,9
	b .L1210
.L1220:
	li 9,10
	b .L1210
.L1221:
	li 9,11
	b .L1210
.L1223:
	li 9,13
	b .L1210
.L1224:
	li 9,14
	b .L1210
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
	bne- 0,.L1229
	andi. 9,3,0x2
	bne- 0,.L1230
	andi. 9,3,0x4
	bne- 0,.L1231
	andi. 9,3,0x8
	bne- 0,.L1232
	andi. 9,3,0x10
	bne- 0,.L1233
	andi. 9,3,0x20
	bne- 0,.L1234
	andi. 9,3,0x40
	bne- 0,.L1235
	andi. 9,3,0x80
	bne- 0,.L1236
	andi. 9,3,0x100
	bne- 0,.L1237
	andi. 9,3,0x200
	bne- 0,.L1238
	andi. 9,3,0x400
	bne- 0,.L1239
	andi. 9,3,0x800
	bne- 0,.L1240
	andi. 9,3,0x1000
	bne- 0,.L1241
	andi. 9,3,0x2000
	bne- 0,.L1242
	andi. 9,3,0x4000
	bne- 0,.L1243
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
.L1228:
	rldicl 3,3,0,59
	blr
.L1229:
	li 3,0
	b .L1228
.L1230:
	li 3,1
	b .L1228
.L1241:
	li 3,12
	b .L1228
.L1231:
	li 3,2
	b .L1228
.L1232:
	li 3,3
	b .L1228
.L1233:
	li 3,4
	b .L1228
.L1234:
	li 3,5
	b .L1228
.L1235:
	li 3,6
	b .L1228
.L1236:
	li 3,7
	b .L1228
.L1237:
	li 3,8
	b .L1228
.L1238:
	li 3,9
	b .L1228
.L1239:
	li 3,10
	b .L1228
.L1240:
	li 3,11
	b .L1228
.L1242:
	li 3,13
	b .L1228
.L1243:
	li 3,14
	b .L1228
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
	addis 9,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(9)
	fcmpu 0,1,0
	bge- 0,.L1251
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L1251:
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
	beq- 0,.L1255
.L1256:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 0,10,0
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	bne+ 0,.L1256
.L1255:
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
	beq- 0,.L1260
	cmpdi 0,4,0
	beq- 0,.L1260
.L1261:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	bne+ 0,.L1261
.L1260:
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
	blt+ 0,.L1266
	b .L1267
.L1270:
	rldicl 4,8,0,32
	slwi 8,4,1
	cmpwi 0,4,0
	cmplw 5,3,8
	slwi 9,9,1
	ble- 7,.L1268
	blt- 0,.L1267
	rldicl 4,8,0,32
	slwi 9,9,1
	ble- 5,.L1268
	bdz .L1269
.L1266:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge+ 0,.L1270
.L1267:
	li 10,0
.L1272:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt- 0,.L1271
	rldicl 3,8,0,32
	or 10,10,9
.L1271:
	srwi 9,9,1
	cmpwi 0,9,0
	bne+ 0,.L1272
.L1269:
	cmpdi 0,5,0
	beq+ 0,.L1273
	mr 10,3
.L1273:
	rldicl 3,10,0,32
	blr
.L1268:
	cmpwi 0,9,0
	bne+ 0,.L1267
	li 10,0
	b .L1269
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
	blt- 0,.L1286
	mfcr 3
	rlwinm 3,3,2,1
.L1286:
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
	blt- 0,.L1289
	mfcr 3
	rlwinm 3,3,2,1
.L1289:
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
	blt- 0,.L1307
	cmpdi 0,4,0
	beq- 0,.L1299
	li 6,0
.L1295:
	li 10,32
	li 8,0
	b .L1298
.L1308:
	beq- 7,.L1297
.L1298:
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
	bne+ 0,.L1308
.L1297:
	cmpwi 0,6,0
	beq- 0,.L1296
	neg 8,8
.L1296:
	extsw 3,8
	blr
.L1307:
	neg 4,4
	extsw 4,4
	li 6,1
	b .L1295
.L1299:
	li 8,0
	b .L1296
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
	bge+ 0,.L1310
	neg 3,3
	li 9,0
	li 8,1
.L1310:
	cmpdi 0,4,0
	bge+ 0,.L1311
	neg 4,4
	mr 8,9
.L1311:
	cmplw 0,3,4
	li 10,16
	mtctr 10
	li 9,1
	bgt+ 0,.L1312
	b .L1313
.L1316:
	slwi 4,4,1
	cmplw 0,3,4
	cmpwi 7,4,0
	slwi 9,9,1
	ble- 0,.L1314
	blt- 7,.L1332
	slwi 4,4,1
	cmplw 0,3,4
	slwi 9,9,1
	ble- 0,.L1314
	bdz .L1323
.L1312:
	cmpwi 0,4,0
	bge+ 0,.L1316
.L1332:
	cmplw 0,3,4
.L1313:
	li 10,0
.L1318:
	blt- 0,.L1317
	subf 3,4,3
	or 10,10,9
.L1317:
	srwi 9,9,1
	cmpwi 7,9,0
	srwi 4,4,1
	cmplw 0,3,4
	bne+ 7,.L1318
	cmpwi 0,8,0
	rldicl 3,10,0,32
	beqlr- 0
.L1336:
	neg 3,3
	blr
.L1314:
	cmpwi 7,9,0
	bne+ 7,.L1313
.L1323:
	cmpwi 0,8,0
	li 3,0
	beqlr- 0
	b .L1336
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
	bge+ 0,.L1338
	neg 3,3
	li 8,1
.L1338:
	sradi 9,4,63
	xor 4,9,4
	subf 9,9,4
	cmplw 0,3,9
	li 7,16
	mtctr 7
	li 10,1
	bgt+ 0,.L1339
	b .L1345
.L1343:
	slwi 9,9,1
	cmplw 0,3,9
	cmpwi 7,9,0
	slwi 10,10,1
	ble- 0,.L1341
	blt- 7,.L1362
	slwi 9,9,1
	cmplw 0,3,9
	slwi 10,10,1
	ble- 0,.L1341
	bdz .L1342
.L1339:
	cmpwi 0,9,0
	bge+ 0,.L1343
.L1362:
	cmplw 0,3,9
.L1345:
	srwi 10,10,1
	blt- 0,.L1344
	subf 3,9,3
.L1344:
	cmpwi 7,10,0
	srwi 9,9,1
	cmplw 0,3,9
	bne+ 7,.L1345
.L1342:
	cmpwi 0,8,0
	rldicl 3,3,0,32
	beqlr- 0
	neg 3,3
	blr
.L1341:
	cmpwi 7,10,0
	bne+ 7,.L1345
	b .L1342
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
	bge- 0,.L1479
	andi. 9,4,0x8000
	bne- 0,.L1367
	rldic 9,4,1,48
	cmplw 0,3,9
	ble- 0,.L1368
	andi. 10,9,0x8000
	bne- 0,.L1369
	rldic 9,4,2,48
	cmplw 0,3,9
	ble- 0,.L1370
	andi. 10,9,0x8000
	bne- 0,.L1371
	rldic 9,4,3,48
	cmplw 0,3,9
	ble- 0,.L1372
	andi. 10,9,0x8000
	bne- 0,.L1373
	rldic 9,4,4,48
	cmplw 0,3,9
	ble- 0,.L1374
	andi. 10,9,0x8000
	bne- 0,.L1375
	rldic 9,4,5,48
	cmplw 0,3,9
	ble- 0,.L1376
	andi. 10,9,0x8000
	bne- 0,.L1377
	rldic 9,4,6,48
	cmplw 0,3,9
	ble- 0,.L1378
	andi. 10,9,0x8000
	bne- 0,.L1379
	rldic 9,4,7,48
	cmplw 0,3,9
	ble- 0,.L1380
	andi. 10,9,0x8000
	bne- 0,.L1381
	rldic 9,4,8,48
	cmplw 0,3,9
	ble- 0,.L1382
	andi. 10,9,0x8000
	bne- 0,.L1383
	rldic 9,4,9,48
	cmplw 0,3,9
	ble- 0,.L1384
	andi. 10,9,0x8000
	bne- 0,.L1385
	rldic 9,4,10,48
	cmplw 0,3,9
	ble- 0,.L1386
	andi. 10,9,0x8000
	bne- 0,.L1387
	rldic 9,4,11,48
	cmplw 0,3,9
	ble- 0,.L1388
	andi. 10,9,0x8000
	bne- 0,.L1389
	rldic 9,4,12,48
	cmplw 0,3,9
	ble- 0,.L1390
	andi. 10,9,0x8000
	bne- 0,.L1391
	rldic 9,4,13,48
	cmplw 0,3,9
	ble- 0,.L1392
	andi. 10,9,0x8000
	bne- 0,.L1393
	rldic 9,4,14,48
	cmplw 0,3,9
	ble- 0,.L1394
	andi. 10,9,0x8000
	bne- 0,.L1395
	rldic 4,4,15,48
	cmplw 0,3,4
	ble- 0,.L1396
	cmpdi 0,4,0
	li 7,0
	bne- 0,.L1480
.L1397:
	cmpdi 0,5,0
	beq+ 0,.L1415
	mr 7,3
.L1415:
	rlwinm 3,7,0,0xffff
	blr
.L1384:
	blt- 0,.L1431
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,512
	li 8,512
.L1399:
	srwi 10,8,2
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,2
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1400
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1400:
	srwi 10,8,3
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,3
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1401
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1401:
	srwi 10,8,4
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,4
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1402
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1402:
	srwi 10,8,5
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,5
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1403
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1403:
	srwi 10,8,6
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,6
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1404
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1404:
	srwi 10,8,7
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,7
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1405
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1405:
	srwi 10,8,8
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,8
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1406
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1406:
	srwi 10,8,9
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,9
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1407
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1407:
	srwi 10,8,10
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,10
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1408
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1408:
	srwi 10,8,11
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,11
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1409
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1409:
	srwi 10,8,12
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,12
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1410
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1410:
	srwi 10,8,13
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,13
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1411
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1411:
	srwi 10,8,14
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,14
	beq- 0,.L1397
	cmplw 0,3,10
	blt- 0,.L1412
	subf 3,10,3
	rlwinm 3,3,0,0xffff
	or 7,6,7
.L1412:
	cmpwi 0,8,16384
	srdi 9,9,15
	beq- 0,.L1397
	cmplw 0,3,9
	blt- 0,.L1420
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	ori 7,7,0x1
	b .L1397
.L1420:
	li 3,0
	b .L1397
.L1479:
	li 7,0
	bne- 0,.L1397
	li 7,1
	li 3,0
	b .L1397
.L1367:
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	li 7,1
	b .L1397
.L1368:
	blt- 0,.L1423
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,2
	li 8,2
	b .L1399
.L1369:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	rldicl 4,4,0,49
	li 10,1
	li 7,2
	li 8,2
.L1417:
	cmplw 0,3,4
	blt- 0,.L1399
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 7,7,10
	b .L1399
.L1370:
	blt- 0,.L1424
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,4
	li 8,4
	b .L1399
.L1371:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,2
	li 7,4
	li 8,4
	b .L1417
.L1372:
	blt- 0,.L1425
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,8
	li 8,8
	b .L1399
.L1373:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,4
	li 7,8
	li 8,8
	b .L1417
.L1374:
	blt- 0,.L1426
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,16
	li 8,16
	b .L1399
.L1375:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,8
	li 7,16
	li 8,16
	b .L1417
.L1376:
	blt- 0,.L1427
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,32
	li 8,32
	b .L1399
.L1377:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,16
	li 7,32
	li 8,32
	b .L1417
.L1378:
	blt- 0,.L1428
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,64
	li 8,64
	b .L1399
.L1379:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,32
	li 7,64
	li 8,64
	b .L1417
.L1380:
	blt- 0,.L1429
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,128
	li 8,128
	b .L1399
.L1381:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,64
	li 7,128
	li 8,128
	b .L1417
.L1383:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,128
	li 7,256
	li 8,256
	b .L1417
.L1385:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,256
	li 7,512
	li 8,512
	b .L1417
.L1423:
	li 8,2
.L1416:
	rldicl 10,8,63,49
	srdi 4,9,1
	li 7,0
	b .L1417
.L1387:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,512
	li 7,1024
	li 8,1024
	b .L1417
.L1389:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1417
.L1424:
	li 8,4
	b .L1416
.L1425:
	li 8,8
	b .L1416
.L1391:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1417
.L1393:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1417
.L1426:
	li 8,16
	b .L1416
.L1395:
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	srdi 4,9,1
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1417
.L1427:
	li 8,32
	b .L1416
.L1428:
	li 8,64
	b .L1416
.L1396:
	andi. 9,3,0x8000
	li 9,-1
	rlwinm 9,9,0,16,16
	bne- 0,.L1422
	li 8,0
	ori 8,8,0x8000
	b .L1416
.L1480:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1417
.L1429:
	li 8,128
	b .L1416
.L1382:
	blt- 0,.L1430
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,256
	li 8,256
	b .L1399
.L1422:
	mr 8,9
	li 7,-32768
	li 3,0
	b .L1399
.L1430:
	li 8,256
	b .L1416
.L1386:
	blt- 0,.L1432
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,1024
	li 8,1024
	b .L1399
.L1394:
	blt- 0,.L1436
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,16384
	li 8,16384
	b .L1399
.L1432:
	li 8,1024
	b .L1416
.L1436:
	li 8,16384
	b .L1416
.L1431:
	li 8,512
	b .L1416
.L1392:
	blt- 0,.L1435
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,8192
	li 8,8192
	b .L1399
.L1390:
	blt- 0,.L1434
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,4096
	li 8,4096
	b .L1399
.L1388:
	blt- 0,.L1433
	subf 3,9,3
	rlwinm 3,3,0,0xffff
	li 7,2048
	li 8,2048
	b .L1399
.L1435:
	li 8,8192
	b .L1416
.L1434:
	li 8,4096
	b .L1416
.L1433:
	li 8,2048
	b .L1416
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
	blt+ 0,.L1482
	b .L1502
.L1486:
	sldi 4,4,1
	cmpld 7,10,4
	sldi 9,9,1
	ble- 7,.L1484
	bdz .L1485
.L1482:
	andis. 3,4,0x8000
	beq+ 0,.L1486
.L1502:
	cmpld 7,10,4
	li 3,0
.L1488:
	blt- 7,.L1487
	subf 10,4,10
	or 3,3,9
.L1487:
	srdi. 9,9,1
	srdi 4,4,1
	cmpld 7,10,4
	bne+ 0,.L1488
.L1485:
	cmpdi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1484:
	cmpdi 0,9,0
	beq- 0,.L1485
	li 3,0
	b .L1488
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
	beq- 0,.L1504
	addi 4,4,-32
	slw 10,3,4
	sldi 10,10,32
	li 3,0
	or 3,3,10
	blr
.L1504:
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
	beq- 0,.L1510
	addi 5,5,-64
	sld 3,4,5
	li 4,0
	blr
.L1510:
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
	beq- 0,.L1515
	sradi 9,3,32
	addi 4,4,-32
	sraw 10,9,4
	srawi 3,9,31
	rldicl 10,10,0,32
	sldi 3,3,32
	or 3,3,10
	blr
.L1515:
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
	beq- 0,.L1521
	addi 5,5,-64
	srad 4,3,5
	sradi 3,3,63
	blr
.L1521:
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
	bne- 0,.L1528
	subfic 3,3,2
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
.L1528:
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
	bne- 0,.L1532
	li 4,0
.L1532:
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
	blt- 0,.L1535
	li 9,2
	bgt- 0,.L1534
	cmplw 0,3,4
	li 9,0
	blt- 0,.L1534
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1534:
	rldicl 3,9,0,62
	blr
.L1535:
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
	blt- 0,.L1541
	li 9,1
	bgt- 0,.L1540
	cmplw 0,3,4
	li 9,-1
	blt- 0,.L1540
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1540:
	extsw 3,9
	blr
.L1541:
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
	blt- 0,.L1546
	li 3,2
	bgt- 0,.L1545
	cmpld 0,4,6
	li 3,0
	blt- 0,.L1545
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
.L1545:
	rldicl 3,3,0,62
	blr
.L1546:
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
	bne- 0,.L1553
	li 3,0
.L1553:
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
	bne- 0,.L1555
	cmpdi 0,3,0
	li 4,0
	bne- 0,.L1559
	extsw 3,4
	blr
.L1555:
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 4,4,64
	extsw 3,4
	blr
.L1559:
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
	beq- 0,.L1561
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L1561:
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
	beq- 0,.L1567
	addi 5,5,-64
	srd 4,3,5
	li 3,0
	blr
.L1567:
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
	addis 9,2,.LC23@toc@ha
	fmr 0,1
	lfs 12,.LC23@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq- 0,.L1585
.L1587:
	fmul 1,1,0
.L1585:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L1586
	andi. 10,9,0x1
	fmul 0,0,0
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1587
.L1591:
	extsw 9,10
	fmul 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1587
	b .L1591
.L1586:
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
	addis 9,2,.LC23@toc@ha
	fmr 0,1
	lfs 12,.LC23@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq- 0,.L1593
.L1595:
	fmuls 1,1,0
.L1593:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq- 0,.L1594
	andi. 10,9,0x1
	fmuls 0,0,0
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1595
.L1599:
	extsw 9,10
	fmuls 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne- 0,.L1595
	b .L1599
.L1594:
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
	blt- 0,.L1602
	li 9,2
	bgt- 0,.L1601
	cmplw 0,3,4
	li 9,0
	blt- 0,.L1601
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1601:
	rldicl 3,9,0,62
	blr
.L1602:
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
	blt- 0,.L1608
	li 9,1
	bgt- 0,.L1607
	cmplw 0,3,4
	li 9,-1
	blt- 0,.L1607
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1607:
	extsw 3,9
	blr
.L1608:
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
	blt- 0,.L1613
	li 3,2
	bgt- 0,.L1612
	cmpld 0,4,6
	li 3,0
	blt- 0,.L1612
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
.L1612:
	rldicl 3,3,0,62
	blr
.L1613:
	li 3,0
	rldicl 3,3,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.set	.LC0,.LC13+8
	.set	.LC1,.LC13+4
	.set	.LC5,.LC13
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.long	1056964608
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC13:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC14:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC19:
	.long	-1082130432
	.align 2
.LC21:
	.long	-1090519040
	.align 2
.LC23:
	.long	1065353216
	.align 2
.LC25:
	.long	1048576000
	.align 2
.LC33:
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
