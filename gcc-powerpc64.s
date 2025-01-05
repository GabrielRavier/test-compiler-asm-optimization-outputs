	.file	"mini-libc.c"
	.machine power8
	.machine altivec
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
	cmpdi 7,5,0
	add 11,4,5
	add 6,3,5
	beqlr- 7
	addi 12,5,-1
	cmpldi 1,12,14
	ble- 1,.L7
	addi 8,5,-2
	add 9,4,8
	add 0,3,12
	subf 7,9,0
	addi 10,7,14
	cmpldi 5,10,14
	ble- 5,.L7
	srdi 7,5,4
	andi. 0,7,0x3
	addi 9,5,-16
	add 4,4,9
	add 10,3,9
	addi 12,7,-1
	mr 8,7
	li 9,0
	beq- 0,.L94
	cmpdi 6,0,1
	beq- 6,.L110
	cmpdi 7,0,2
	beq- 7,.L111
	mr 7,12
	lxvw4x 7,0,4
	stxvw4x 7,0,10
	li 9,-16
.L111:
	lxvw4x 8,4,9
	addi 7,7,-1
	stxvw4x 8,10,9
	addi 9,9,-16
.L110:
	cmpdi 1,7,1
	lxvw4x 9,4,9
	stxvw4x 9,10,9
	addi 9,9,-16
	beq- 1,.L158
.L94:
	srdi 8,8,2
	cmpdi 5,8,2
	mtctr 8
	ble 5,.L170
	addi 8,8,-1
	mtctr 8
	lxvw4x 0,4,9
	stxvw4x 0,10,9
	addi 8,9,-16
.L8:
	lxvw4x 0,4,8
	stxvw4x 0,10,8
	addi 7,8,-16
	lxvw4x 0,4,7
	stxvw4x 0,10,7
	addi 8,9,-48
	lxvw4x 0,4,8
	stxvw4x 0,10,8
	addi 9,9,-64
	lxvw4x 0,4,9
	stxvw4x 0,10,9
	addi 8,9,-16
	bdnz .L8
	lxvw4x 0,4,8
	stxvw4x 0,10,8
	addi 7,8,-16
	lxvw4x 0,4,7
	stxvw4x 0,10,7
	addi 8,9,-48
	lxvw4x 0,4,8
	stxvw4x 0,10,8
.L158:
	andi. 9,5,0xf
	rldicr 4,5,0,59
	subf 11,4,11
	subf 6,4,6
	subf 5,4,5
	beqlr- 0
	cmpldi 6,5,1
	lbz 10,-1(11)
	stb 10,-1(6)
	beqlr- 6
	cmpldi 7,5,2
	lbz 9,-2(11)
	stb 9,-2(6)
	beqlr- 7
	cmpldi 1,5,3
	lbz 7,-3(11)
	stb 7,-3(6)
	beqlr- 1
	cmpldi 5,5,4
	lbz 0,-4(11)
	stb 0,-4(6)
	beqlr- 5
	cmpldi 0,5,5
	lbz 12,-5(11)
	stb 12,-5(6)
	beqlr- 0
	cmpldi 6,5,6
	lbz 8,-6(11)
	stb 8,-6(6)
	beqlr- 6
	cmpldi 7,5,7
	lbz 4,-7(11)
	stb 4,-7(6)
	beqlr- 7
	cmpldi 1,5,8
	lbz 10,-8(11)
	stb 10,-8(6)
	beqlr- 1
	cmpldi 5,5,9
	lbz 9,-9(11)
	stb 9,-9(6)
	beqlr- 5
	cmpldi 0,5,10
	lbz 7,-10(11)
	stb 7,-10(6)
	beqlr- 0
	cmpldi 6,5,11
	lbz 0,-11(11)
	stb 0,-11(6)
	beqlr- 6
	cmpldi 7,5,12
	lbz 12,-12(11)
	stb 12,-12(6)
	beqlr- 7
	cmpldi 1,5,13
	lbz 8,-13(11)
	stb 8,-13(6)
	beqlr- 1
	cmpldi 5,5,14
	lbz 5,-14(11)
	stb 5,-14(6)
	beqlr- 5
	lbz 11,-15(11)
	stb 11,-15(6)
	blr
.L5:
	beqlr- 0
	cmpdi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmpldi 5,9,14
	ble- 5,.L12
	addi 10,4,1
	subf 0,10,3
	cmpldi 6,0,14
	ble- 6,.L12
	srdi 8,5,4
	andi. 7,8,0x3
	addi 6,8,-1
	mr 11,8
	li 9,0
	beq- 0,.L106
	cmpdi 7,7,1
	beq- 7,.L112
	cmpdi 1,7,2
	beq- 1,.L113
	mr 8,6
	lxvw4x 0,0,4
	stxvw4x 0,0,3
	li 9,16
.L113:
	lxvw4x 1,4,9
	addi 8,8,-1
	stxvw4x 1,3,9
	addi 9,9,16
.L112:
	cmpdi 5,8,1
	lxvw4x 2,4,9
	stxvw4x 2,3,9
	addi 9,9,16
	beq- 5,.L159
.L106:
	srdi 10,11,2
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L171
	addi 10,10,-1
	mtctr 10
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 10,9,16
.L13:
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 8,10,16
	lxvw4x 0,4,8
	stxvw4x 0,3,8
	addi 10,9,48
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 9,9,64
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 10,9,16
	bdnz .L13
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 8,10,16
	lxvw4x 0,4,8
	stxvw4x 0,3,8
	addi 10,9,48
	lxvw4x 0,4,10
	stxvw4x 0,3,10
.L159:
	andi. 9,5,0xf
	rldicr 6,5,0,59
	add 11,4,6
	add 9,3,6
	subf 5,6,5
	beqlr- 0
	cmpldi 7,5,1
	lbzx 4,4,6
	stbx 4,3,6
	beqlr- 7
	cmpldi 1,5,2
	lbz 7,1(11)
	stb 7,1(9)
	beqlr- 1
	cmpldi 5,5,3
	lbz 8,2(11)
	stb 8,2(9)
	beqlr- 5
	cmpldi 6,5,4
	lbz 12,3(11)
	stb 12,3(9)
	beqlr- 6
	cmpldi 0,5,5
	lbz 0,4(11)
	stb 0,4(9)
	beqlr- 0
	cmpldi 7,5,6
	lbz 10,5(11)
	stb 10,5(9)
	beqlr- 7
	cmpldi 1,5,7
	lbz 6,6(11)
	stb 6,6(9)
	beqlr- 1
	cmpldi 5,5,8
	lbz 4,7(11)
	stb 4,7(9)
	beqlr- 5
	cmpldi 6,5,9
	lbz 7,8(11)
	stb 7,8(9)
	beqlr- 6
	cmpldi 0,5,10
	lbz 8,9(11)
	stb 8,9(9)
	beqlr- 0
	cmpldi 7,5,11
	lbz 12,10(11)
	stb 12,10(9)
	beqlr- 7
	cmpldi 1,5,12
	lbz 0,11(11)
	stb 0,11(9)
	beqlr- 1
	cmpldi 5,5,13
	lbz 10,12(11)
	stb 10,12(9)
	beqlr- 5
	cmpldi 6,5,14
	lbz 5,13(11)
	stb 5,13(9)
	beqlr- 6
	lbz 11,14(11)
	stb 11,14(9)
	blr
.L170:
	addi 0,9,-16
	lxvw4x 10,4,9
	stxvw4x 10,10,9
	addi 12,9,-32
	lxvw4x 11,4,0
	stxvw4x 11,10,0
	addi 8,9,-48
	lxvw4x 12,4,12
	stxvw4x 12,10,12
	addi 9,9,-64
	lxvw4x 13,4,8
	stxvw4x 13,10,8
	bdz .L158
	addi 0,9,-16
	lxvw4x 10,4,9
	stxvw4x 10,10,9
	addi 12,9,-32
	lxvw4x 11,4,0
	stxvw4x 11,10,0
	addi 8,9,-48
	lxvw4x 12,4,12
	stxvw4x 12,10,12
	addi 9,9,-64
	lxvw4x 13,4,8
	stxvw4x 13,10,8
	bdnz .L170
	b .L158
.L171:
	addi 12,9,16
	lxvw4x 3,4,9
	stxvw4x 3,3,9
	addi 0,9,32
	lxvw4x 4,4,12
	stxvw4x 4,3,12
	addi 10,9,48
	lxvw4x 5,4,0
	stxvw4x 5,3,0
	addi 9,9,64
	lxvw4x 6,4,10
	stxvw4x 6,3,10
	bdnz .L171
	b .L159
.L7:
	andi. 10,12,0x1
	bne- 0,.L177
.L87:
	srdi 10,12,1
	addi 9,10,1
	mtctr 9
	b .L10
.L178:
	lbz 0,-1(12)
	addi 11,11,-2
	addi 6,6,-2
	stb 0,-1(5)
.L10:
	lbz 7,-1(11)
	addi 12,11,-1
	addi 5,6,-1
	stb 7,-1(6)
	bdnz .L178
	blr
.L177:
	lbzu 4,-1(11)
	stbu 4,-1(6)
	b .L87
.L12:
	andi. 10,9,0x1
	addi 12,4,-1
	addi 8,3,-1
	bne- 0,.L179
.L99:
	srdi 9,9,1
	addi 4,9,1
	mtctr 4
	b .L16
.L180:
	lbz 5,1(7)
	addi 12,12,2
	addi 8,8,2
	stb 5,1(10)
.L16:
	lbz 0,1(12)
	addi 7,12,1
	addi 10,8,1
	stb 0,1(8)
	bdnz .L180
	blr
.L179:
	lbz 6,0(4)
	mr 12,4
	mr 8,3
	stb 6,0(3)
	b .L99
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
	beq- 0,.L182
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L203
.L192:
	srdi 0,6,1
	mtctr 0
	b .L183
.L185:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L200
	addi 3,3,1
	bdz .L182
.L183:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L185
.L200:
	addi 3,3,1
	blr
.L203:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L200
	cmpdi 5,8,0
	addi 3,3,1
	bne+ 5,.L192
.L182:
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
	beq- 0,.L208
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L225
.L211:
	srdi 0,5,1
	mtctr 0
.L205:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L205
.L208:
	li 3,0
	blr
.L225:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpdi 5,9,0
	addi 3,3,1
	bne+ 5,.L211
	b .L208
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
	beq- 0,.L231
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L248
.L234:
	srdi 0,5,1
	mtctr 0
	b .L227
.L229:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L243
	bdz .L231
.L227:
	lbz 10,0(3)
	addi 7,3,1
	lbz 9,0(4)
	addi 5,4,1
	cmpw 6,10,9
	beq+ 6,.L229
.L243:
	subf 3,9,10
	extsw 3,3
	blr
.L248:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L243
	cmpdi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L234
.L231:
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
	beq- 0,.L250
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L250:
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
	add 11,3,5
	rlwinm 4,4,0,0xff
	beq- 0,.L260
	lbz 8,0(11)
	mr 3,11
	addi 11,11,-1
	cmpw 1,8,4
	beqlr- 1
.L260:
	srdi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L268
.L258:
	lbz 6,0(11)
	mr 3,11
	addi 9,11,-1
	cmpw 5,6,4
	beqlr- 5
	lbz 7,0(9)
	mr 3,9
	addi 11,9,-1
	cmpw 6,7,4
	beqlr- 6
	bdnz .L258
.L268:
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
	beq- 0,.L272
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
.L272:
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
.L276:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L276
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
	cmpw 1,9,4
	beqlr- 1
.L287:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L287
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
.L290:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L290
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
	beq+ 0,.L295
	b .L294
.L296:
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 5,9,10
	bne- 5,.L294
.L295:
	cmpwi 1,9,0
	bne+ 1,.L296
.L294:
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
	beq- 0,.L304
	mr 4,3
.L303:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L303
	subf 3,3,4
	blr
.L304:
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
	beq- 0,.L314
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L310
	b .L319
.L321:
	bdz .L309
	bne- 7,.L309
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L320
	mr 4,8
.L310:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L321
.L309:
	subf 3,7,10
	extsw 3,3
	blr
.L314:
	li 3,0
	extsw 3,3
	blr
.L320:
	lbz 7,1(4)
	b .L309
.L319:
	lbz 7,0(4)
	b .L309
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpdi 0,5,1
	ble- 0,.L322
	addi 9,5,-2
	cmpldi 1,9,13
	srdi 7,5,1
	ble- 1,.L324
	srdi 8,5,4
	andi. 9,8,0x1
	addis 6,2,.LC0@toc@ha
	addi 12,6,.LC0@toc@l
	addi 10,8,-1
	lxvw4x 45,0,12
	li 11,0
	bne- 0,.L337
.L329:
	srdi 0,8,1
	mtctr 0
.L325:
	addi 9,11,16
	lxvw4x 32,3,11
	vperm 1,0,0,13
	lxvw4x 32,3,9
	stxvw4x 33,4,11
	vperm 1,0,0,13
	addi 11,11,32
	stxvw4x 33,4,9
	bdnz .L325
.L333:
	sldi 6,8,3
	cmpld 6,7,6
	sldi 7,8,4
	add 4,4,7
	add 3,3,7
	subf 5,7,5
	beq- 6,.L322
.L324:
	cmpdi 7,5,3
	lhbrx 12,0,3
	sth 12,0(4)
	ble- 7,.L322
	addi 10,3,2
	cmpdi 1,5,5
	lhbrx 11,0,10
	sth 11,2(4)
	ble- 1,.L322
	addi 9,3,4
	cmpdi 0,5,7
	lhbrx 0,0,9
	sth 0,4(4)
	ble- 0,.L322
	addi 6,3,6
	cmpdi 5,5,9
	lhbrx 7,0,6
	sth 7,6(4)
	ble- 5,.L322
	addi 8,3,8
	cmpdi 6,5,11
	lhbrx 12,0,8
	sth 12,8(4)
	ble- 6,.L322
	cmpdi 7,5,13
	addi 5,3,10
	lhbrx 10,0,5
	sth 10,10(4)
	ble- 7,.L322
	addi 3,3,12
	lhbrx 11,0,3
	sth 11,12(4)
.L322:
	lwz 4,-4(1)
	mtvrsave 4
	blr
.L337:
	cmpdi 5,10,0
	lxvw4x 32,0,3
	vperm 1,0,0,13
	li 11,16
	stxvw4x 33,0,4
	bne+ 5,.L329
	b .L333
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
	addi 0,3,-97
	cmplwi 0,0,25
	li 4,1
	isel 3,0,4,1
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
	cmplwi 0,3,127
	li 3,1
	isel 3,0,3,1
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
	beq- 0,.L342
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 0,3,9,6
	rldicl 3,0,0,63
	blr
.L342:
	li 0,1
	rldicl 3,0,0,63
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
	ble- 0,.L345
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 0,3,9,6
	rldicl 3,0,0,63
	blr
.L345:
	li 0,1
	rldicl 3,0,0,63
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
	cmplwi 0,3,9
	li 0,1
	isel 3,0,0,1
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
	cmplwi 0,3,93
	li 0,1
	isel 3,0,0,1
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
	cmplwi 0,3,25
	li 0,1
	isel 3,0,0,1
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
	cmplwi 0,3,94
	li 0,1
	isel 3,0,0,1
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
	beq- 0,.L352
	addi 3,3,-9
	cmplwi 1,3,4
	li 0,1
	isel 4,0,0,5
	rldicl 3,4,0,63
	blr
.L352:
	li 4,1
	rldicl 3,4,0,63
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
	cmplwi 0,3,25
	li 0,1
	isel 3,0,0,1
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
	li 10,1
	ble- 0,.L355
	addi 9,3,-127
	cmplwi 1,9,32
	li 10,1
	bgt- 1,.L359
.L355:
	rldicl 3,10,0,63
	blr
.L359:
	addi 0,3,-8232
	cmplwi 5,0,1
	ble- 5,.L355
	addis 3,3,0xffff
	addi 4,3,7
	cmplwi 6,4,2
	isel 10,0,10,25
	rldicl 3,10,0,63
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
	cmplwi 0,3,9
	li 0,1
	isel 3,0,0,1
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
	ble- 0,.L368
	cmplwi 1,3,8231
	li 11,1
	ble- 1,.L363
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble- 5,.L363
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble- 6,.L363
	lis 9,0x10
	addi 0,4,4
	ori 5,9,0x3
	cmplw 7,0,5
	li 11,0
	bgt- 7,.L363
	ori 6,11,0xfffe
	rlwinm 3,3,0,16,30
	cmpw 0,3,6
	li 7,1
	isel 11,0,7,2
.L363:
	rldicl 3,11,0,63
	blr
.L368:
	addi 12,3,1
	rlwinm 10,12,0,25,31
	cmplwi 1,10,33
	li 4,1
	isel 11,0,4,4
	rldicl 3,11,0,63
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
	ble- 0,.L371
	ori 3,3,0x20
	addi 0,3,-97
	cmplwi 1,0,5
	li 4,1
	isel 5,0,4,5
	rldicl 3,5,0,63
	blr
.L371:
	li 5,1
	rldicl 3,5,0,63
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
	fcmpu 1,2,2
	bun- 1,.L377
	fcmpu 5,1,2
	bng- 5,.L380
	fsub 1,1,2
	blr
.L380:
	xxlxor 1,1,1
	blr
.L377:
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
	fcmpu 1,2,2
	bun- 1,.L385
	fcmpu 5,1,2
	bng- 5,.L388
	fsubs 1,1,2
	blr
.L388:
	xxlxor 1,1,1
	blr
.L385:
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
	bun- 0,.L394
	fcmpu 1,2,2
	bun- 1,.L395
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L391
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L395:
	fmr 1,0
	blr
.L391:
	fcmpu 6,1,2
	bnllr- 6
.L394:
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
	fmr 0,1
	bun- 0,.L403
	fcmpu 1,2,2
	bun- 1,.L404
	xscvdpspn 12,1
	xscvdpspn 1,2
	mfvsrwz 9,12
	rlwinm 0,9,0,0,0
	mfvsrwz 10,1
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq- 5,.L400
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L404:
	fmr 1,0
	blr
.L400:
	fcmpu 6,0,2
	fmr 1,0
	bnllr- 6
.L403:
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
	fmr 9,2
	fmr 8,1
	fmr 11,4
	fmr 10,3
	fmr 0,8
	fcmpu 0,0,0
	bun- 0,.L414
	fmr 12,10
	fcmpu 1,12,12
	bun- 1,.L413
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L409
	cmpwi 7,0,0
	bne- 7,.L414
.L413:
	fmr 1,8
	fmr 2,9
	blr
.L409:
	fcmpu 6,8,10
	bne 6,$+8
	fcmpu 6,9,11
	blt- 6,.L414
	fmr 11,2
	fmr 10,1
.L414:
	fmr 1,10
	fmr 2,11
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
	bun- 0,.L420
	fcmpu 1,2,2
	bunlr- 1
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L424
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L419
	fmr 0,1
.L419:
	fmr 1,0
	blr
.L424:
	cmpwi 7,0,0
	bnelr- 7
.L420:
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
	bun- 0,.L430
	fcmpu 1,2,2
	bunlr- 1
	xscvdpspn 0,1
	xscvdpspn 3,2
	mfvsrwz 9,0
	rlwinm 0,9,0,0,0
	mfvsrwz 10,3
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	bne- 5,.L434
	fcmpu 6,1,2
	bnl- 6,.L429
	fmr 2,1
.L429:
	fmr 1,2
	blr
.L434:
	cmpwi 7,0,0
	bnelr- 7
.L430:
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
	fmr 11,4
	fmr 10,3
	fcmpu 0,0,0
	bun- 0,.L440
	fmr 12,10
	fcmpu 1,12,12
	bunlr- 1
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L437
	cmpwi 7,0,0
	bnelr- 7
.L440:
	fmr 1,10
	fmr 2,11
	blr
.L437:
	fcmpu 6,1,10
	bne 6,$+8
	fcmpu 6,2,11
	bltlr- 6
	fmr 1,10
	fmr 2,11
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
	beq- 0,.L444
	addis 7,2,.LANCHOR1@toc@ha
	addi 4,7,.LANCHOR1@toc@l
.L445:
	rldicl 8,9,0,58
	srwi 9,9,6
	lbzx 0,4,8
	cmpwi 1,9,0
	stb 0,0(10)
	addi 10,10,1
	bne+ 1,.L445
.L444:
	li 5,0
	stb 5,0(10)
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
	rldicl 0,3,0,32
	addis 9,2,.LANCHOR0+8@toc@ha
	std 0,.LANCHOR0+8@toc@l(9)
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
	subf 0,10,9
	sldi 8,0,6
	subf 3,0,8
	sldi 4,3,7
	add 5,3,4
	sldi 6,5,2
	add 11,6,10
	sldi 12,11,6
	subf 9,11,12
	sldi 0,9,7
	add 8,0,10
	sldi 3,8,2
	add 4,3,10
	sldi 5,4,3
	subf 6,4,5
	sldi 11,6,3
	subf 12,6,11
	sldi 9,12,6
	subf 0,12,9
	sldi 8,0,2
	subf 3,10,8
	sldi 4,3,7
	subf 5,10,4
	sldi 6,5,2
	add 11,6,10
	sldi 12,11,2
	subf 9,10,12
	sldi 0,9,2
	subf 8,10,0
	sldi 3,8,2
	add 10,3,10
	addi 4,10,1
	std 4,.LANCHOR0+8@toc@l(7)
	srdi 3,4,33
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
	beq- 0,.L456
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ld 4,0(3)
	cmpdi 1,4,0
	beqlr- 1
	std 3,8(4)
	blr
.L456:
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
	beq- 0,.L458
	ld 10,8(3)
	std 10,8(9)
.L458:
	ld 3,8(3)
	cmpdi 1,3,0
	beqlr- 1
	std 9,0(3)
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
	beq- 0,.L467
	std 29,168(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,176(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,184(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L469
.L481:
	beq- 7,.L480
.L469:
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
	cmpwi 1,3,0
	bne+ 1,.L481
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L466:
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 5,16(1)
	mr 3,25
	ld 23,-72(1)
	mtlr 5
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
.L480:
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
.L467:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq- 5,.L466
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 5,16(1)
	mr 3,25
	ld 23,-72(1)
	mtlr 5
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
	beq- 0,.L483
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
	b .L485
.L493:
	beq- 7,.L492
.L485:
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
	cmpwi 1,3,0
	bne+ 1,.L493
	ld 3,192(1)
	ld 27,136(1)
	.cfi_remember_state
	.cfi_restore 27
	mtlr 3
	.cfi_restore 65
	mr 3,25
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
	ld 25,-56(1)
	ld 26,-48(1)
	.cfi_restore 26
	.cfi_restore 25
	blr
.L492:
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
.L483:
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
	subf 0,9,3
	extsw 3,0
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
.L502:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L496
	ble- 7,.L496
	cmpwi 1,10,43
	beq- 1,.L497
	cmpwi 6,10,45
	bne- 6,.L517
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L507
	li 11,1
.L500:
	li 0,0
.L504:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 12,0,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 8,12,0
	slwi 9,8,1
	subf 0,7,9
	ble+ 1,.L504
	cmpwi 5,11,0
	subf 10,9,7
	isel 3,10,0,22
.L503:
	extsw 3,3
	blr
.L496:
	addi 3,3,1
	b .L502
.L517:
	addi 5,10,-48
	cmplwi 7,5,9
	li 11,0
	ble+ 7,.L500
.L507:
	li 3,0
	b .L503
.L497:
	lbz 10,1(3)
	li 11,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L500
	li 3,0
	b .L503
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
.L525:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L519
	ble- 7,.L519
	cmpwi 1,10,43
	beq- 1,.L520
	cmpwi 6,10,45
	bne- 6,.L540
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L530
	li 11,1
.L523:
	li 4,0
.L527:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 12,4,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 7,12,4
	extsw 0,8
	sldi 9,7,1
	subf 4,0,9
	ble+ 1,.L527
	cmpwi 5,11,0
	subf 3,9,0
	isel 3,3,4,22
	blr
.L519:
	addi 3,3,1
	b .L525
.L540:
	addi 5,10,-48
	cmplwi 7,5,9
	li 11,0
	ble+ 7,.L523
.L530:
	li 3,0
	blr
.L520:
	lbz 10,1(3)
	li 11,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L523
	b .L530
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
.L546:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L542
	ble- 7,.L542
	cmpwi 1,10,43
	beq- 1,.L543
	cmpwi 6,10,45
	beq- 6,.L544
	addi 5,10,-48
	cmplwi 7,5,9
	li 11,0
	bgt- 7,.L553
.L547:
	li 4,0
.L550:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 12,4,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 7,12,4
	extsw 0,8
	sldi 9,7,1
	subf 4,0,9
	ble+ 1,.L550
	cmpwi 5,11,0
	subf 3,9,0
	isel 3,3,4,22
	blr
.L542:
	addi 3,3,1
	b .L546
.L544:
	lbz 10,1(3)
	li 11,1
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	ble+ 0,.L547
.L553:
	li 3,0
	blr
.L543:
	lbz 10,1(3)
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L553
	li 11,0
	b .L547
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
	beq- 0,.L564
	mflr 0
	.cfi_register 65, 0
	std 25,120(1)
	.cfi_offset 25, -56
	mr 25,3
	std 26,128(1)
	.cfi_offset 26, -48
	mr 26,6
	std 27,136(1)
	.cfi_offset 27, -40
	mr 27,4
	std 28,144(1)
	.cfi_offset 28, -32
	mr 28,7
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	std 29,152(1)
	.cfi_offset 29, -24
	b .L567
.L576:
	beq- 1,.L574
	cmpdi 5,31,0
	add 27,30,26
	beq- 5,.L575
.L567:
	srdi 29,31,1
	ld 9,0(28)
	mulld 30,29,26
	ld 11,16(28)
	mr 3,25
	mtctr 9
	addi 31,31,-1
	subf 31,29,31
	add 30,27,30
	mr 4,30
	ld 2,8(28)
	bctrl
	ld 2,40(1)
	cmpwi 1,3,0
	bge+ 1,.L576
	mr 31,29
	cmpdi 5,31,0
	bne+ 5,.L567
.L575:
	ld 3,192(1)
	ld 25,120(1)
	.cfi_restore 25
	mtlr 3
	.cfi_restore 65
	ld 26,128(1)
	.cfi_restore 26
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
.L564:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 31,-8(1)
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L574:
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
	mr 24,8
	std 26,-48(1)
	mr 25,3
	std 27,-40(1)
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr 26,6
	std 29,-24(1)
	mr 27,4
	std 31,-8(1)
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 29,7
	std 30,-16(1)
	mr 31,5
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- 0,.L582
	mflr 0
	.cfi_register 65, 0
	std 2,40(1)
	std 0,192(1)
	.cfi_offset 65, 16
	std 28,144(1)
	.cfi_offset 28, -32
.L587:
	srawi 30,31,1
	ld 9,0(29)
	mulld 0,30,26
	ld 11,16(29)
	mr 5,24
	mtctr 9
	mr 3,25
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,0
	mr 4,30
	ld 2,8(29)
	bctrl
	ld 2,40(1)
	cmpwi 7,31,0
	cmpwi 1,3,0
	beq- 1,.L591
	cmpwi 5,28,0
	ble- 1,.L580
	add 27,30,26
	bne+ 7,.L587
.L592:
	ld 3,192(1)
	ld 28,144(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L582:
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
.L580:
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
	bne+ 5,.L587
	b .L592
.L591:
	ld 4,192(1)
	mr 3,30
	ld 28,144(1)
	.cfi_restore 28
	addi 1,1,176
	.cfi_def_cfa_offset 0
	mtlr 4
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
	beq- 0,.L604
.L601:
	cmpw 1,9,4
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L601
.L604:
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
	beq+ 0,.L611
	b .L610
.L612:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne- 0,.L610
.L611:
	cmpwi 7,9,0
	bne+ 7,.L612
.L610:
	li 4,-1
	mfcr 3,128
	rlwinm 3,3,2,1
	isel 5,4,3,0
	extsw 3,5
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
.L616:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L616
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
	beq- 0,.L622
	mr 4,3
.L621:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L621
	subf 3,3,4
	sradi 3,3,2
	blr
.L622:
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
	beq- 0,.L634
	mtctr 5
	b .L625
.L637:
	beq- 7,.L627
	addi 3,3,4
	addi 4,4,4
	bdz .L634
.L625:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L637
.L627:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	bge- 5,.L629
	li 4,-1
	extsw 3,4
	blr
.L629:
	mfcr 4,4
	rlwinm 4,4,22,1
	extsw 3,4
	blr
.L634:
	li 4,0
	extsw 3,4
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
	beq- 0,.L642
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L659
.L645:
	srdi 0,5,1
	mtctr 0
.L639:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L639
.L642:
	li 3,0
	blr
.L659:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpdi 5,9,0
	addi 3,3,4
	bne+ 5,.L645
	b .L642
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
	beq- 0,.L666
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L683
.L669:
	srdi 0,5,1
	mtctr 0
	b .L661
.L663:
	lwz 12,4(3)
	addi 3,7,4
	lwz 9,4(4)
	addi 4,11,4
	cmpw 1,12,9
	bne- 1,.L678
	bdz .L666
.L661:
	lwz 5,0(3)
	addi 7,3,4
	lwz 6,0(4)
	addi 11,4,4
	cmpw 1,5,6
	beq+ 1,.L663
.L678:
	li 4,-1
	mfcr 3,64
	rlwinm 3,3,6,1
	isel 8,4,3,4
	extsw 3,8
	blr
.L683:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne- 1,.L678
	cmpdi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L669
.L666:
	li 8,0
	extsw 3,8
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
	beq- 0,.L685
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
.L685:
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
	cmpld 1,10,9
	addi 11,5,-1
	bge- 1,.L793
	cmpdi 6,5,0
	beqlr- 6
	cmpldi 7,11,4
	ble- 7,.L695
	addi 0,9,-4
	addi 6,9,-8
	add 7,3,0
	add 12,4,6
	subf 10,12,7
	addi 8,10,8
	cmpldi 1,8,8
	ble- 1,.L695
	srdi 6,5,2
	andi. 0,6,0x3
	addi 9,9,-16
	add 8,4,9
	addi 12,6,-1
	add 9,3,9
	mr 7,6
	li 10,0
	beq- 0,.L734
	cmpdi 5,0,1
	beq- 5,.L750
	cmpdi 6,0,2
	beq- 6,.L751
	mr 6,12
	lxvw4x 7,0,8
	stxvw4x 7,0,9
	li 10,-16
.L751:
	lxvw4x 8,8,10
	addi 6,6,-1
	stxvw4x 8,9,10
	addi 10,10,-16
.L750:
	cmpdi 7,6,1
	lxvw4x 9,8,10
	stxvw4x 9,9,10
	addi 10,10,-16
	beq- 7,.L773
.L734:
	srdi 7,7,2
	cmpdi 1,7,2
	mtctr 7
	ble 1,.L785
	addi 7,7,-1
	mtctr 7
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
.L696:
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 10,10,-64
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
	bdnz .L696
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
.L773:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	subf 11,5,11
	beqlr- 0
	cmpdi 5,11,0
	sldi 8,11,2
	lwzx 10,4,8
	stwx 10,3,8
	beqlr- 5
	addi 6,11,-1
	cmpdi 6,6,0
	sldi 9,6,2
	lwzx 0,4,9
	stwx 0,3,9
	beqlr- 6
	addi 12,9,-4
	lwzx 4,4,12
	stwx 4,3,12
	blr
.L793:
	cmpdi 5,5,0
	beqlr- 5
	cmpldi 6,11,3
	ble- 6,.L701
	addi 0,4,4
	subf 6,0,3
	cmpldi 7,6,8
	ble- 7,.L701
	srdi 8,5,2
	andi. 7,8,0x3
	addi 12,8,-1
	mr 10,8
	li 9,0
	beq- 0,.L746
	cmpdi 1,7,1
	beq- 1,.L752
	cmpdi 5,7,2
	beq- 5,.L753
	mr 8,12
	lxvw4x 0,0,4
	stxvw4x 0,0,3
	li 9,16
.L753:
	lxvw4x 1,4,9
	addi 8,8,-1
	stxvw4x 1,3,9
	addi 9,9,16
.L752:
	cmpdi 6,8,1
	lxvw4x 2,4,9
	stxvw4x 2,3,9
	addi 9,9,16
	beq- 6,.L774
.L746:
	srdi 10,10,2
	cmpdi 7,10,2
	mtctr 10
	ble 7,.L786
	addi 10,10,-1
	mtctr 10
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 10,9,16
.L702:
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 8,10,16
	lxvw4x 0,4,8
	stxvw4x 0,3,8
	addi 10,9,48
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 9,9,64
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 10,9,16
	bdnz .L702
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 8,10,16
	lxvw4x 0,4,8
	stxvw4x 0,3,8
	addi 10,9,48
	lxvw4x 0,4,10
	stxvw4x 0,3,10
.L774:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	sldi 9,5,2
	subf 11,5,11
	add 12,4,9
	add 10,3,9
	beqlr- 0
	cmpdi 1,11,0
	lwzx 4,4,9
	stwx 4,3,9
	beqlr- 1
	cmpldi 5,11,1
	lwz 8,4(12)
	stw 8,4(10)
	beqlr- 5
	lwz 0,8(12)
	stw 0,8(10)
	blr
.L786:
	addi 0,9,16
	lxvw4x 3,4,9
	stxvw4x 3,3,9
	addi 6,9,32
	lxvw4x 4,4,0
	stxvw4x 4,3,0
	addi 7,9,48
	lxvw4x 5,4,6
	stxvw4x 5,3,6
	addi 9,9,64
	lxvw4x 6,4,7
	stxvw4x 6,3,7
	bdz .L774
	addi 0,9,16
	lxvw4x 3,4,9
	stxvw4x 3,3,9
	addi 6,9,32
	lxvw4x 4,4,0
	stxvw4x 4,3,0
	addi 7,9,48
	lxvw4x 5,4,6
	stxvw4x 5,3,6
	addi 9,9,64
	lxvw4x 6,4,7
	stxvw4x 6,3,7
	bdnz .L786
	b .L774
.L785:
	addi 0,10,-16
	lxvw4x 10,8,10
	stxvw4x 10,9,10
	addi 12,10,-32
	lxvw4x 11,8,0
	stxvw4x 11,9,0
	addi 7,10,-48
	lxvw4x 12,8,12
	stxvw4x 12,9,12
	addi 10,10,-64
	lxvw4x 13,8,7
	stxvw4x 13,9,7
	bdz .L773
	addi 0,10,-16
	lxvw4x 10,8,10
	stxvw4x 10,9,10
	addi 12,10,-32
	lxvw4x 11,8,0
	stxvw4x 11,9,0
	addi 7,10,-48
	lxvw4x 12,8,12
	stxvw4x 12,9,12
	addi 10,10,-64
	lxvw4x 13,8,7
	stxvw4x 13,9,7
	bdnz .L785
	b .L773
.L695:
	andi. 10,11,0x1
	add 5,4,9
	add 6,3,9
	bne- 0,.L794
.L727:
	srdi 11,11,1
	addi 8,11,1
	mtctr 8
	b .L699
.L795:
	lwz 0,-4(12)
	addi 5,5,-8
	addi 6,6,-8
	stw 0,-4(10)
.L699:
	lwz 9,-4(5)
	addi 12,5,-4
	addi 10,6,-4
	stw 9,-4(6)
	bdnz .L795
	blr
.L794:
	lwzu 7,-4(5)
	stwu 7,-4(6)
	b .L727
.L701:
	andi. 9,11,0x1
	addi 5,4,-4
	addi 9,3,-4
	bne- 0,.L796
.L739:
	srdi 7,11,1
	addi 11,7,1
	mtctr 11
	b .L705
.L797:
	lwz 8,4(10)
	addi 5,5,8
	addi 9,9,8
	stw 8,4(4)
.L705:
	lwz 12,4(5)
	addi 10,5,4
	addi 4,9,4
	stw 12,4(9)
	bdnz .L797
	blr
.L796:
	lwz 6,0(4)
	mr 5,4
	mr 9,3
	stw 6,0(3)
	b .L739
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
	cmpldi 1,7,2
	ble- 1,.L803
	srdi 8,5,2
	mtvsrwz 0,4
	xxspltw 0,0,1
	andi. 6,8,0x3
	addi 11,8,-1
	mr 10,8
	mr 9,3
	beq- 0,.L818
	cmpdi 5,6,1
	beq- 5,.L822
	cmpdi 6,6,2
	beq- 6,.L823
	mr 8,11
	stxvw4x 0,0,3
	addi 9,3,16
.L823:
	stxvw4x 0,0,9
	addi 8,8,-1
	addi 9,9,16
.L822:
	cmpdi 7,8,1
	stxvw4x 0,0,9
	addi 9,9,16
	beq- 7,.L832
.L818:
	srdi 10,10,2
	cmpdi 1,10,2
	mtctr 10
	ble 1,.L837
	addi 10,10,-1
	mtctr 10
	addi 8,9,48
.L801:
	stxvw4x 0,0,9
	addi 10,9,16
	stxvw4x 0,0,10
	addi 6,9,32
	stxvw4x 0,0,6
	stxvw4x 0,0,8
	addi 9,9,64
	addi 8,9,48
	bdnz .L801
	stxvw4x 0,0,9
	addi 10,9,16
	stxvw4x 0,0,10
	addi 6,9,32
	stxvw4x 0,0,6
	stxvw4x 0,0,8
.L832:
	andi. 9,5,0x3
	beqlr- 0
	rldicr 5,5,0,61
	sldi 0,5,2
	subf 7,5,7
	add 9,3,0
.L800:
	cmpdi 5,7,0
	stw 4,0(9)
	beqlr- 5
	cmpldi 6,7,1
	stw 4,4(9)
	beqlr- 6
	stw 4,8(9)
	blr
.L837:
	addi 12,9,16
	stxvw4x 0,0,9
	addi 6,9,32
	stxvw4x 0,0,12
	addi 11,9,48
	stxvw4x 0,0,6
	addi 9,9,64
	stxvw4x 0,0,11
	bdz .L832
	addi 12,9,16
	stxvw4x 0,0,9
	addi 6,9,32
	stxvw4x 0,0,12
	addi 11,9,48
	stxvw4x 0,0,6
	addi 9,9,64
	stxvw4x 0,0,11
	bdnz .L837
	b .L832
.L803:
	mr 9,3
	b .L800
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
	bge- 0,.L840
	cmpdi 7,5,0
	add 11,3,5
	add 6,4,5
	beqlr- 7
	addi 0,5,-1
	cmpldi 1,0,14
	ble- 1,.L842
	addi 10,5,-2
	add 9,3,10
	add 8,4,0
	subf 12,9,8
	addi 7,12,14
	cmpldi 5,7,14
	ble- 5,.L842
	srdi 7,5,4
	andi. 0,7,0x3
	addi 10,5,-16
	add 3,3,10
	addi 12,7,-1
	mr 8,7
	add 10,4,10
	li 9,0
	beq- 0,.L929
	cmpdi 6,0,1
	beq- 6,.L945
	cmpdi 7,0,2
	beq- 7,.L946
	mr 7,12
	lxvw4x 7,0,3
	stxvw4x 7,0,10
	li 9,-16
.L946:
	lxvw4x 8,3,9
	addi 7,7,-1
	stxvw4x 8,10,9
	addi 9,9,-16
.L945:
	cmpdi 1,7,1
	lxvw4x 9,3,9
	stxvw4x 9,10,9
	addi 9,9,-16
	beq- 1,.L993
.L929:
	srdi 8,8,2
	cmpdi 5,8,2
	mtctr 8
	ble 5,.L1005
	addi 8,8,-1
	mtctr 8
	lxvw4x 0,3,9
	stxvw4x 0,10,9
	addi 8,9,-16
.L843:
	lxvw4x 0,3,8
	stxvw4x 0,10,8
	addi 7,8,-16
	lxvw4x 0,3,7
	stxvw4x 0,10,7
	addi 8,9,-48
	lxvw4x 0,3,8
	stxvw4x 0,10,8
	addi 9,9,-64
	lxvw4x 0,3,9
	stxvw4x 0,10,9
	addi 8,9,-16
	bdnz .L843
	lxvw4x 0,3,8
	stxvw4x 0,10,8
	addi 7,8,-16
	lxvw4x 0,3,7
	stxvw4x 0,10,7
	addi 8,9,-48
	lxvw4x 0,3,8
	stxvw4x 0,10,8
.L993:
	andi. 9,5,0xf
	rldicr 3,5,0,59
	subf 6,3,6
	subf 11,3,11
	subf 5,3,5
	beqlr- 0
	cmpldi 6,5,1
	lbz 9,-1(11)
	stb 9,-1(6)
	beqlr- 6
	cmpldi 7,5,2
	lbz 10,-2(11)
	stb 10,-2(6)
	beqlr- 7
	cmpldi 1,5,3
	lbz 8,-3(11)
	stb 8,-3(6)
	beqlr- 1
	cmpldi 5,5,4
	lbz 7,-4(11)
	stb 7,-4(6)
	beqlr- 5
	cmpldi 0,5,5
	lbz 4,-5(11)
	stb 4,-5(6)
	beqlr- 0
	cmpldi 6,5,6
	lbz 0,-6(11)
	stb 0,-6(6)
	beqlr- 6
	cmpldi 7,5,7
	lbz 12,-7(11)
	stb 12,-7(6)
	beqlr- 7
	cmpldi 1,5,8
	lbz 3,-8(11)
	stb 3,-8(6)
	beqlr- 1
	cmpldi 5,5,9
	lbz 9,-9(11)
	stb 9,-9(6)
	beqlr- 5
	cmpldi 0,5,10
	lbz 10,-10(11)
	stb 10,-10(6)
	beqlr- 0
	cmpldi 6,5,11
	lbz 8,-11(11)
	stb 8,-11(6)
	beqlr- 6
	cmpldi 7,5,12
	lbz 7,-12(11)
	stb 7,-12(6)
	beqlr- 7
	cmpldi 1,5,13
	lbz 4,-13(11)
	stb 4,-13(6)
	beqlr- 1
	cmpldi 5,5,14
	lbz 5,-14(11)
	stb 5,-14(6)
	beqlr- 5
	lbz 11,-15(11)
	stb 11,-15(6)
	blr
.L840:
	beqlr- 0
	cmpdi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmpldi 5,9,14
	ble- 5,.L847
	addi 10,3,1
	subf 0,10,4
	cmpldi 6,0,14
	ble- 6,.L847
	srdi 8,5,4
	andi. 7,8,0x3
	addi 6,8,-1
	mr 11,8
	li 9,0
	beq- 0,.L941
	cmpdi 7,7,1
	beq- 7,.L947
	cmpdi 1,7,2
	beq- 1,.L948
	mr 8,6
	lxvw4x 0,0,3
	stxvw4x 0,0,4
	li 9,16
.L948:
	lxvw4x 1,3,9
	addi 8,8,-1
	stxvw4x 1,4,9
	addi 9,9,16
.L947:
	cmpdi 5,8,1
	lxvw4x 2,3,9
	stxvw4x 2,4,9
	addi 9,9,16
	beq- 5,.L994
.L941:
	srdi 10,11,2
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L1006
	addi 10,10,-1
	mtctr 10
	lxvw4x 0,3,9
	stxvw4x 0,4,9
	addi 10,9,16
.L848:
	lxvw4x 0,3,10
	stxvw4x 0,4,10
	addi 8,10,16
	lxvw4x 0,3,8
	stxvw4x 0,4,8
	addi 10,9,48
	lxvw4x 0,3,10
	stxvw4x 0,4,10
	addi 9,9,64
	lxvw4x 0,3,9
	stxvw4x 0,4,9
	addi 10,9,16
	bdnz .L848
	lxvw4x 0,3,10
	stxvw4x 0,4,10
	addi 8,10,16
	lxvw4x 0,3,8
	stxvw4x 0,4,8
	addi 10,9,48
	lxvw4x 0,3,10
	stxvw4x 0,4,10
.L994:
	andi. 9,5,0xf
	rldicr 6,5,0,59
	add 9,4,6
	add 11,3,6
	subf 5,6,5
	beqlr- 0
	cmpldi 7,5,1
	lbzx 3,3,6
	stbx 3,4,6
	beqlr- 7
	cmpldi 1,5,2
	lbz 4,1(11)
	stb 4,1(9)
	beqlr- 1
	cmpldi 5,5,3
	lbz 7,2(11)
	stb 7,2(9)
	beqlr- 5
	cmpldi 6,5,4
	lbz 8,3(11)
	stb 8,3(9)
	beqlr- 6
	cmpldi 0,5,5
	lbz 12,4(11)
	stb 12,4(9)
	beqlr- 0
	cmpldi 7,5,6
	lbz 0,5(11)
	stb 0,5(9)
	beqlr- 7
	cmpldi 1,5,7
	lbz 10,6(11)
	stb 10,6(9)
	beqlr- 1
	cmpldi 5,5,8
	lbz 6,7(11)
	stb 6,7(9)
	beqlr- 5
	cmpldi 6,5,9
	lbz 3,8(11)
	stb 3,8(9)
	beqlr- 6
	cmpldi 0,5,10
	lbz 4,9(11)
	stb 4,9(9)
	beqlr- 0
	cmpldi 7,5,11
	lbz 7,10(11)
	stb 7,10(9)
	beqlr- 7
	cmpldi 1,5,12
	lbz 8,11(11)
	stb 8,11(9)
	beqlr- 1
	cmpldi 5,5,13
	lbz 12,12(11)
	stb 12,12(9)
	beqlr- 5
	cmpldi 6,5,14
	lbz 5,13(11)
	stb 5,13(9)
	beqlr- 6
	lbz 11,14(11)
	stb 11,14(9)
	blr
.L1005:
	addi 4,9,-16
	lxvw4x 10,3,9
	stxvw4x 10,10,9
	addi 0,9,-32
	lxvw4x 11,3,4
	stxvw4x 11,10,4
	addi 12,9,-48
	lxvw4x 12,3,0
	stxvw4x 12,10,0
	addi 9,9,-64
	lxvw4x 13,3,12
	stxvw4x 13,10,12
	bdz .L993
	addi 4,9,-16
	lxvw4x 10,3,9
	stxvw4x 10,10,9
	addi 0,9,-32
	lxvw4x 11,3,4
	stxvw4x 11,10,4
	addi 12,9,-48
	lxvw4x 12,3,0
	stxvw4x 12,10,0
	addi 9,9,-64
	lxvw4x 13,3,12
	stxvw4x 13,10,12
	bdnz .L1005
	b .L993
.L1006:
	addi 12,9,16
	lxvw4x 3,3,9
	stxvw4x 3,4,9
	addi 0,9,32
	lxvw4x 4,3,12
	stxvw4x 4,4,12
	addi 10,9,48
	lxvw4x 5,3,0
	stxvw4x 5,4,0
	addi 9,9,64
	lxvw4x 6,3,10
	stxvw4x 6,4,10
	bdnz .L1006
	b .L994
.L842:
	andi. 10,0,0x1
	bne- 0,.L1012
.L922:
	srdi 3,0,1
	addi 0,3,1
	mtctr 0
	b .L845
.L1013:
	lbz 7,-1(8)
	addi 11,11,-2
	addi 6,6,-2
	stb 7,-1(9)
.L845:
	lbz 10,-1(11)
	addi 8,11,-1
	addi 9,6,-1
	stb 10,-1(6)
	bdnz .L1013
	blr
.L1012:
	lbzu 12,-1(11)
	stbu 12,-1(6)
	b .L922
.L847:
	andi. 10,9,0x1
	addi 8,4,-1
	addi 10,3,-1
	bne- 0,.L1014
.L934:
	srdi 9,9,1
	addi 6,9,1
	mtctr 6
	b .L851
.L1015:
	lbz 7,1(4)
	addi 10,10,2
	addi 8,8,2
	stb 7,1(12)
.L851:
	lbz 3,1(10)
	addi 4,10,1
	addi 12,8,1
	stb 3,1(8)
	bdnz .L1015
	blr
.L1014:
	lbz 0,0(3)
	mr 10,3
	mr 8,4
	stb 0,0(4)
	b .L934
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
	rlwinm 0,9,0,28,31
	srw 5,3,0
	slw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xffff
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
	rlwinm 0,9,0,28,31
	slw 5,3,0
	srw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xffff
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
	rlwinm 0,9,0,29,31
	srw 5,3,0
	slw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xff
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
	rlwinm 0,9,0,29,31
	slw 5,3,0
	srw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xff
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
	rlwinm 9,3,24,24,31
	rlwinm 10,3,8,16,23
	or 0,9,10
	rlwinm 3,0,0,0xffff
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
	b .L1032
.L1041:
	addi 9,9,1
	bne- 0,.L1031
	bdz .L1040
.L1032:
	srw 0,3,9
	rldicl 4,0,0,63
	cmpdi 7,4,0
	addi 9,9,1
	srw 5,3,9
	andi. 10,5,0x1
	beq+ 7,.L1041
.L1031:
	extsw 3,9
	blr
.L1040:
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
	beq- 0,.L1045
	andi. 3,9,0x1
	bne- 0,.L1043
	li 3,1
.L1044:
	srawi 9,9,1
	andi. 10,9,0x1
	addi 3,3,1
	beq+ 0,.L1044
.L1043:
	extsw 3,3
	blr
.L1045:
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
	addis 9,2,.LC2@toc@ha
	lfs 0,.LC2@toc@l(9)
	li 0,1
	fcmpu 0,1,0
	blt- 0,.L1049
	addis 3,2,.LC3@toc@ha
	lfs 2,.LC3@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L1049:
	rldicl 3,0,0,63
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
	addis 9,2,.LC6@toc@ha
	lfd 0,.LC6@toc@l(9)
	li 0,1
	fcmpu 0,1,0
	blt- 0,.L1052
	addis 3,2,.LC7@toc@ha
	lfd 2,.LC7@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L1052:
	rldicl 3,0,0,63
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
	addis 9,2,.LC10@toc@ha
	fmr 0,1
	addi 3,9,.LC10@toc@l
	fmr 1,2
	lfd 12,0(3)
	li 0,1
	lfd 13,8(3)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	blt- 0,.L1055
	addis 4,2,.LC11@toc@ha
	addi 5,4,.LC11@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,0,12
	bne 1,$+8
	fcmpu 1,1,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L1055:
	rldicl 3,0,0,63
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
	mtvsrd 0,4
	fcfid 1,0
	xxlxor 3,3,3
	stfd 3,8(3)
	stfd 1,0(3)
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
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,4,0
	blt- 5,.L1071
	addis 9,2,.LC14@toc@ha
	lfs 2,.LC14@toc@l(9)
.L1060:
	andi. 9,4,0x1
	beq- 0,.L1061
.L1062:
	fmuls 1,1,2
.L1061:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne- 0,.L1062
.L1072:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne- 0,.L1062
	b .L1072
.L1071:
	addis 3,2,.LC15@toc@ha
	lfs 2,.LC15@toc@l(3)
	b .L1060
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
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,4,0
	blt- 5,.L1086
	addis 9,2,.LC14@toc@ha
	lfs 2,.LC14@toc@l(9)
.L1075:
	andi. 9,4,0x1
	beq- 0,.L1076
.L1077:
	fmul 1,1,2
.L1076:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne- 0,.L1077
.L1087:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne- 0,.L1077
	b .L1087
.L1086:
	addis 3,2,.LC15@toc@ha
	lfs 2,.LC15@toc@l(3)
	b .L1075
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
	bun- 0,.L1089
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
	fcmpu 1,1,28
	bne 1,$+8
	fcmpu 1,2,29
	beq- 1,.L1104
	cmpwi 5,31,0
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	blt- 5,.L1105
	addis 9,2,.LC22@toc@ha
	addi 3,9,.LC22@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L1090:
	andi. 9,31,0x1
	beq- 0,.L1091
.L1092:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L1091:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L1103
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	fmr 31,2
	srawi 0,31,1
	addze 0,0
	fmr 30,1
	bne- 0,.L1092
.L1106:
	fmr 3,30
	extsw 31,0
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	fmr 31,2
	srawi 0,31,1
	addze 0,0
	fmr 30,1
	bne- 0,.L1092
	b .L1106
.L1103:
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
.L1104:
	ld 6,176(1)
	ld 31,120(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L1089:
	fmr 1,28
	addi 1,1,160
	.cfi_def_cfa_offset 0
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L1105:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 4,2,.LC23@toc@ha
	addi 5,4,.LC23@toc@l
	lfd 30,0(5)
	lfd 31,8(5)
	b .L1090
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
	cmpldi 1,9,14
	ble- 1,.L1112
	srdi 7,5,4
	andi. 10,7,0x1
	addi 8,7,-1
	mr 10,7
	li 11,0
	bne- 0,.L1171
.L1147:
	srdi 0,10,1
	mtctr 0
.L1110:
	addi 12,11,16
	lxvw4x 2,3,11
	lxvw4x 3,4,11
	lxvw4x 6,4,12
	xxlxor 4,2,3
	stxvw4x 4,3,11
	addi 11,11,32
	lxvw4x 5,3,12
	xxlxor 7,5,6
	stxvw4x 7,3,12
	bdnz .L1110
.L1167:
	andi. 9,5,0xf
	rldicr 9,5,0,59
	add 4,4,9
	add 6,3,9
	subf 5,9,5
	beqlr- 0
.L1109:
	cmpldi 6,5,1
	lbz 7,0(6)
	lbz 8,0(4)
	xor 10,7,8
	stb 10,0(6)
	beqlr- 6
	cmpldi 7,5,2
	lbz 0,1(6)
	lbz 11,1(4)
	xor 12,11,0
	stb 12,1(6)
	beqlr- 7
	cmpldi 1,5,3
	lbz 7,2(6)
	lbz 9,2(4)
	xor 8,9,7
	stb 8,2(6)
	beqlr- 1
	cmpldi 5,5,4
	lbz 11,3(6)
	lbz 10,3(4)
	xor 0,10,11
	stb 0,3(6)
	beqlr- 5
	cmpldi 0,5,5
	lbz 9,4(6)
	lbz 12,4(4)
	xor 7,12,9
	stb 7,4(6)
	beqlr- 0
	cmpldi 6,5,6
	lbz 8,5(6)
	lbz 10,5(4)
	xor 11,10,8
	stb 11,5(6)
	beqlr- 6
	cmpldi 7,5,7
	lbz 12,6(6)
	lbz 0,6(4)
	xor 9,0,12
	stb 9,6(6)
	beqlr- 7
	cmpldi 1,5,8
	lbz 10,7(6)
	lbz 7,7(4)
	xor 8,7,10
	stb 8,7(6)
	beqlr- 1
	cmpldi 5,5,9
	lbz 0,8(6)
	lbz 11,8(4)
	xor 12,11,0
	stb 12,8(6)
	beqlr- 5
	cmpldi 0,5,10
	lbz 7,9(6)
	lbz 9,9(4)
	xor 10,9,7
	stb 10,9(6)
	beqlr- 0
	cmpldi 6,5,11
	lbz 8,10(6)
	lbz 11,10(4)
	xor 0,11,8
	stb 0,10(6)
	beqlr- 6
	cmpldi 7,5,12
	lbz 9,11(6)
	lbz 12,11(4)
	xor 7,12,9
	stb 7,11(6)
	beqlr- 7
	cmpldi 1,5,13
	lbz 11,12(6)
	lbz 10,12(4)
	xor 8,10,11
	stb 8,12(6)
	beqlr- 1
	cmpldi 5,5,14
	lbz 0,13(6)
	lbz 5,13(4)
	xor 12,5,0
	stb 12,13(6)
	beqlr- 5
	lbz 9,14(6)
	lbz 4,14(4)
	xor 7,4,9
	stb 7,14(6)
	blr
.L1171:
	cmpdi 5,8,0
	lxvw4x 0,0,3
	lxvw4x 12,0,4
	li 11,16
	xxlxor 1,0,12
	stxvw4x 1,0,3
	bne+ 5,.L1147
	b .L1167
.L1112:
	mr 6,3
	b .L1109
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
	beq- 0,.L1173
.L1174:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1174
.L1173:
	cmpdi 5,5,0
	beq- 5,.L1175
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L1198
.L1186:
	srdi 0,5,1
	mtctr 0
.L1176:
	lbz 4,1(10)
	addi 5,10,1
	addi 11,9,1
	rlwinm 12,4,0,0xff
	stb 4,0(9)
	cmpwi 1,12,0
	addi 10,5,1
	beqlr- 1
	lbz 8,1(5)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	cmpwi 5,7,0
	addi 9,11,1
	beqlr- 5
	bdnz .L1176
.L1175:
	li 6,0
	stb 6,0(9)
	blr
.L1198:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpdi 7,7,0
	addi 9,9,1
	bne+ 7,.L1186
	b .L1175
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
	beq- 0,.L1211
	cmpdi 1,8,1
	beq- 1,.L1222
	cmpdi 5,8,2
	beq- 5,.L1223
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1223:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1222:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr- 1
.L1211:
	srdi 10,10,2
.L1200:
	lbzx 4,9,3
	cmpwi 5,4,0
	beqlr+ 5
	addi 3,3,1
	lbzx 11,9,3
	mr 7,3
	cmpwi 6,11,0
	beqlr+ 6
	addi 3,3,1
	lbzx 12,9,3
	cmpwi 7,12,0
	beqlr+ 7
	addi 3,7,2
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	cmpdi 1,10,1
	addi 3,7,3
	addi 10,10,-1
	bne+ 1,.L1200
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
	beq- 0,.L1237
.L1233:
	mr 10,4
	b .L1236
.L1235:
	beqlr- 7
.L1236:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1235
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1233
.L1237:
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
.L1243:
	lbz 10,0(9)
	cmpwi 0,10,0
	cmpw 7,10,4
	isel 3,9,3,30
	addi 9,9,1
	beqlr- 0
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	isel 3,9,3,30
	addi 9,9,1
	bne+ 0,.L1243
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
	beq- 0,.L1259
	mr 9,4
.L1248:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1248
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1267
.L1270:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1269
.L1267:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1270
	addi 0,3,1
	mtctr 0
	mr 6,4
	mr 10,11
	mr 7,8
	b .L1250
.L1272:
	bdz .L1252
	bne- 7,.L1253
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1271
	lbzu 10,1(6)
.L1250:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1272
.L1253:
	addi 8,8,1
	b .L1267
.L1269:
	li 3,0
	blr
.L1271:
	lbz 9,1(6)
.L1252:
	cmpw 5,12,9
	bne+ 5,.L1253
.L1259:
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
	xxlxor 0,0,0
	fcmpu 0,1,0
	blt- 0,.L1283
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1283:
	fcmpu 5,2,0
	bnglr+ 5
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
	cmpld 1,4,6
	blt- 1,.L1292
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt- 5,.L1292
	cmpldi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1289
.L1286:
	cmpld 1,0,9
	blt- 1,.L1292
.L1289:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1286
	beqlr- 7
	subf 7,11,9
	add 8,7,6
	addi 4,8,-2
	mtctr 4
	mr 8,5
	mr 10,11
.L1287:
	lbzu 4,1(10)
	lbzu 7,1(8)
	cmpw 0,4,7
	bne- 0,.L1286
	bdnz .L1287
	blr
.L1292:
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
	beq- 0,.L1301
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L1301:
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
	xxlxor 0,0,0
	fcmpu 7,1,0
	blt- 7,.L1329
	addis 9,2,.LC31@toc@ha
	lfs 2,.LC31@toc@l(9)
	li 10,0
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1330
.L1309:
	addis 8,2,.LC15@toc@ha
	addis 12,2,.LC31@toc@ha
	lfs 7,.LC15@toc@l(8)
	lfs 8,.LC31@toc@l(12)
	li 11,0
.L1315:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1315
	cmpwi 1,10,0
	stw 11,0(4)
	beqlr- 1
.L1332:
	fneg 1,1
	blr
.L1330:
	addis 3,2,.LC15@toc@ha
	lfs 3,.LC15@toc@l(3)
	fcmpu 1,1,3
	bnl- 1,.L1312
	bne- 7,.L1321
.L1312:
	li 0,0
	stw 0,0(4)
	blr
.L1329:
	addis 5,2,.LC27@toc@ha
	fneg 12,1
	lfs 4,.LC27@toc@l(5)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1331
	fmr 1,12
	li 10,1
	b .L1309
.L1331:
	addis 6,2,.LC29@toc@ha
	lfs 5,.LC29@toc@l(6)
	fcmpu 6,1,5
	bng- 6,.L1312
	li 10,1
.L1310:
	addis 7,2,.LC15@toc@ha
	fmr 1,12
	lfs 6,.LC15@toc@l(7)
	li 11,0
.L1317:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt+ 7,.L1317
	cmpwi 1,10,0
	stw 11,0(4)
	bne+ 1,.L1332
	blr
.L1321:
	fmr 12,1
	b .L1310
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
.L1335:
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	sldi 4,4,1
	beqlr- 0
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	sldi 4,4,1
	bne+ 0,.L1335
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
	li 12,32
	li 9,1
	blt+ 0,.L1340
	b .L1361
.L1344:
	rldicl 4,0,0,32
	slwi 6,4,1
	cmpwi 6,4,0
	cmplw 5,3,6
	slwi 9,9,1
	ble- 7,.L1342
	blt- 6,.L1345
	rldicl 4,6,0,32
	slwi 9,9,1
	ble- 5,.L1342
	bdz .L1343
.L1340:
	cmpwi 1,4,0
	slwi 0,4,1
	addi 10,12,-1
	cmplw 7,3,0
	addi 12,10,-1
	bge+ 1,.L1344
.L1345:
	li 12,0
	li 11,1
	li 10,0
.L1346:
	cmplw 1,3,4
	subf 8,4,3
	srdi 4,4,1
	isel 7,0,11,4
	cmpwi 6,7,0
	isel 0,10,9,26
	srwi 9,9,1
	cmpwi 7,9,0
	isel 3,3,8,26
	or 12,12,0
	rldicl 3,3,0,32
	bne+ 7,.L1346
.L1343:
	cmpdi 5,5,0
	isel 5,12,3,22
	rldicl 3,5,0,32
	blr
.L1342:
	cmpwi 0,9,0
	bne+ 0,.L1345
	li 12,0
	b .L1343
.L1361:
	isel 9,0,9,1
	andi. 12,9,0xff
	subf 4,4,3
	isel 3,3,4,2
	rldicl 3,3,0,32
	b .L1343
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
	beq- 0,.L1366
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
.L1366:
	li 0,7
	extsw 3,0
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
	beq- 0,.L1369
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
.L1369:
	li 0,63
	extsw 3,0
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
	beq- 0,.L1371
.L1372:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne+ 0,.L1372
.L1371:
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
	rlwinm 0,5,0,0,28
	blt- 0,.L1379
	add 10,4,5
	cmpld 1,3,10
	ble- 1,.L1566
.L1379:
	cmpwi 6,9,0
	addi 7,4,-8
	addi 8,3,-8
	beq- 6,.L1492
	andi. 10,9,0x1
	addi 11,9,-1
	mr 12,9
	bne- 0,.L1567
.L1448:
	srdi 10,12,1
	cmpdi 1,10,2
	mtctr 10
	ble 1,.L1524
	addi 10,10,-1
	mtctr 10
	addi 9,9,-2
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 10,8,8
	std 11,8(10)
.L1382:
	addi 9,9,-2
	ld 11,16(6)
	std 11,16(10)
	addi 6,6,16
	ld 11,8(6)
	addi 10,10,16
	std 11,8(10)
	bdnz .L1382
.L1494:
	cmplw 5,0,5
	bgelr- 5
	subf 7,0,5
	addi 8,7,-1
	cmplwi 6,8,14
	rldicl 10,0,0,32
	ble- 6,.L1384
	addi 11,10,1
	add 6,4,11
	add 8,3,10
	subf 12,6,8
	cmpldi 7,12,14
	ble- 7,.L1384
	rldicl 11,7,60,36
	std 31,-8(1)
	.cfi_offset 31, -8
	andi. 12,11,0x3
	add 10,4,10
	addi 31,11,-1
	mr 6,11
	beq- 0,.L1443
	cmpdi 1,12,1
	beq- 1,.L1463
	cmpdi 5,12,2
	bne- 5,.L1568
.L1464:
	lxvw4x 8,10,9
	addi 11,11,-1
	stxvw4x 8,8,9
	addi 9,9,16
.L1463:
	cmpdi 6,11,1
	lxvw4x 9,10,9
	stxvw4x 9,8,9
	addi 9,9,16
	beq- 6,.L1500
.L1443:
	srdi 6,6,2
	cmpdi 7,6,2
	mtctr 6
	ble 7,.L1523
	addi 6,6,-1
	mtctr 6
	lxvw4x 0,10,9
	stxvw4x 0,8,9
	addi 6,9,16
.L1385:
	lxvw4x 0,10,6
	stxvw4x 0,8,6
	addi 11,6,16
	lxvw4x 0,10,11
	stxvw4x 0,8,11
	addi 6,9,48
	lxvw4x 0,10,6
	stxvw4x 0,8,6
	addi 9,9,64
	lxvw4x 0,10,9
	stxvw4x 0,8,9
	addi 6,9,16
	bdnz .L1385
	lxvw4x 0,10,6
	stxvw4x 0,8,6
	addi 11,6,16
	lxvw4x 0,10,11
	stxvw4x 0,8,11
	addi 6,9,48
	lxvw4x 0,10,6
	stxvw4x 0,8,6
.L1500:
	andi. 9,7,0xf
	rlwinm 9,7,0,0,27
	add 11,9,0
	beq- 0,.L1562
	addi 0,11,1
	rldicl 8,11,0,32
	cmplw 1,0,5
	lbzx 7,4,8
	stbx 7,3,8
	bge- 1,.L1562
	addi 12,11,2
	rldicl 10,0,0,32
	cmplw 5,12,5
	lbzx 31,4,10
	stbx 31,3,10
	bge- 5,.L1562
	addi 6,11,3
	rldicl 9,12,0,32
	cmplw 6,6,5
	lbzx 0,4,9
	stbx 0,3,9
	bge- 6,.L1562
	addi 8,11,4
	rldicl 12,6,0,32
	cmplw 7,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge- 7,.L1562
	addi 10,11,5
	rldicl 31,8,0,32
	cmplw 0,10,5
	lbzx 6,4,31
	stbx 6,3,31
	bge- 0,.L1562
	addi 9,11,6
	rldicl 0,10,0,32
	cmplw 1,9,5
	lbzx 8,4,0
	stbx 8,3,0
	bge- 1,.L1562
	addi 12,11,7
	rldicl 10,9,0,32
	cmplw 5,12,5
	lbzx 7,4,10
	stbx 7,3,10
	bge- 5,.L1562
	addi 31,11,8
	rldicl 6,12,0,32
	cmplw 6,31,5
	lbzx 9,4,6
	stbx 9,3,6
	bge- 6,.L1562
	addi 0,11,9
	rldicl 8,31,0,32
	cmplw 7,0,5
	lbzx 12,4,8
	stbx 12,3,8
	bge- 7,.L1562
	addi 31,11,10
	rldicl 10,0,0,32
	cmplw 0,31,5
	lbzx 7,4,10
	stbx 7,3,10
	bge- 0,.L1562
	addi 6,11,11
	rldicl 9,31,0,32
	cmplw 1,6,5
	lbzx 0,4,9
	stbx 0,3,9
	bge- 1,.L1562
	addi 8,11,12
	rldicl 12,6,0,32
	cmplw 5,8,5
	lbzx 31,4,12
	stbx 31,3,12
	bge- 5,.L1562
	addi 10,11,13
	rldicl 6,8,0,32
	cmplw 6,10,5
	lbzx 7,4,6
	stbx 7,3,6
	bge- 6,.L1562
	addi 11,11,14
	rldicl 9,10,0,32
	cmplw 7,11,5
	lbzx 5,4,9
	stbx 5,3,9
	bge- 7,.L1562
	rldicl 0,11,0,32
	lbzx 4,4,0
	stbx 4,3,0
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L1524:
	ld 11,8(7)
	mr 6,7
	mr 12,8
	std 11,8(8)
	addi 9,9,-2
	addi 7,7,16
	ld 10,16(6)
	addi 8,8,16
	std 10,16(12)
	bdz .L1494
	ld 11,8(7)
	mr 6,7
	mr 12,8
	std 11,8(8)
	addi 9,9,-2
	addi 7,7,16
	ld 10,16(6)
	addi 8,8,16
	std 10,16(12)
	bdnz .L1524
	b .L1494
.L1567:
	mr. 9,11
	ld 10,0(4)
	mr 7,4
	std 10,0(3)
	mr 8,3
	bne+ 0,.L1448
	b .L1494
.L1566:
	cmpdi 5,5,0
	addi 11,5,-1
	rldicl 9,11,0,32
	beqlr- 5
	cmplwi 6,11,14
	ble- 6,.L1389
	addi 0,9,-1
	add 6,4,0
	add 8,3,9
	subf 7,6,8
	addi 12,7,14
	cmpldi 7,12,14
	ble- 7,.L1389
	srdi 6,5,4
	std 31,-8(1)
	.cfi_offset 31, -8
	andi. 0,6,0x3
	addi 31,9,-15
	add 8,4,31
	add 9,3,31
	addi 12,6,-1
	mr 7,6
	li 10,0
	beq- 0,.L1458
	cmpdi 1,0,1
	beq- 1,.L1465
	cmpdi 5,0,2
	bne- 5,.L1569
.L1466:
	lxvw4x 1,8,10
	addi 6,6,-1
	stxvw4x 1,9,10
	addi 10,10,-16
.L1465:
	cmpdi 6,6,1
	lxvw4x 2,8,10
	stxvw4x 2,9,10
	addi 10,10,-16
	beq- 6,.L1501
.L1458:
	srdi 7,7,2
	cmpdi 7,7,2
	mtctr 7
	ble 7,.L1526
	addi 7,7,-1
	mtctr 7
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
.L1390:
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 10,10,-64
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
	bdnz .L1390
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
.L1501:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 11,5,11
	beq- 0,.L1562
	rldicl 9,11,0,32
	cmpwi 1,11,0
	lbzx 8,4,9
	addi 10,11,-1
	stbx 8,3,9
	rldicl 6,10,0,32
	beq- 1,.L1562
	cmpdi 5,6,0
	lbzx 7,4,6
	addi 0,11,-2
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 5,.L1562
	cmpdi 6,31,0
	lbzx 12,4,31
	addi 5,11,-3
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 6,.L1562
	cmpdi 7,9,0
	lbzx 10,4,9
	addi 8,11,-4
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 7,.L1562
	cmpdi 0,6,0
	lbzx 7,4,6
	addi 0,11,-5
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 0,.L1562
	cmpdi 1,31,0
	lbzx 12,4,31
	addi 5,11,-6
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 1,.L1562
	cmpdi 5,9,0
	lbzx 10,4,9
	addi 8,11,-7
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 5,.L1562
	cmpdi 6,6,0
	lbzx 7,4,6
	addi 0,11,-8
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 6,.L1562
	cmpdi 7,31,0
	lbzx 12,4,31
	addi 5,11,-9
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 7,.L1562
	cmpdi 0,9,0
	lbzx 10,4,9
	addi 8,11,-10
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 0,.L1562
	cmpdi 1,6,0
	lbzx 7,4,6
	addi 0,11,-11
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 1,.L1562
	cmpdi 5,31,0
	lbzx 12,4,31
	addi 5,11,-12
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 5,.L1562
	cmpdi 6,9,0
	lbzx 10,4,9
	addi 8,11,-13
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 6,.L1562
	cmpdi 7,6,0
	lbzx 7,4,6
	addi 11,11,-14
	stbx 7,3,6
	rldicl 0,11,0,32
	beq- 7,.L1562
	lbzx 4,4,0
	stbx 4,3,0
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
.L1523:
	.cfi_restore_state
	addi 12,9,16
	lxvw4x 10,10,9
	stxvw4x 10,8,9
	addi 31,9,32
	lxvw4x 11,10,12
	stxvw4x 11,8,12
	addi 6,9,48
	lxvw4x 12,10,31
	stxvw4x 12,8,31
	addi 9,9,64
	lxvw4x 13,10,6
	stxvw4x 13,8,6
	bdz .L1500
	addi 12,9,16
	lxvw4x 10,10,9
	stxvw4x 10,8,9
	addi 31,9,32
	lxvw4x 11,10,12
	stxvw4x 11,8,12
	addi 6,9,48
	lxvw4x 12,10,31
	stxvw4x 12,8,31
	addi 9,9,64
	lxvw4x 13,10,6
	stxvw4x 13,8,6
	bdnz .L1523
	b .L1500
.L1562:
	ld 31,-8(1)
	.cfi_restore 31
.L1375:
	blr
.L1568:
	.cfi_offset 31, -8
	lxvw4x 7,10,9
	mr 11,31
	stxvw4x 7,8,9
	addi 9,9,16
	b .L1464
.L1526:
	addi 0,10,-16
	lxvw4x 3,8,10
	stxvw4x 3,9,10
	addi 31,10,-32
	lxvw4x 4,8,0
	stxvw4x 4,9,0
	addi 12,10,-48
	lxvw4x 5,8,31
	stxvw4x 5,9,31
	addi 10,10,-64
	lxvw4x 6,8,12
	stxvw4x 6,9,12
	bdnz .L1526
	b .L1501
.L1492:
	.cfi_restore 31
	cmpdi 7,5,0
	rldicl 10,0,0,32
	mr 7,5
	beqlr- 7
.L1384:
	rldicl 8,7,0,32
	andi. 9,8,0x1
	addi 12,10,-1
	add 4,4,12
	add 3,3,12
	addi 10,8,-1
	beq- 0,.L1436
	cmpdi 1,10,0
	lbzu 6,1(4)
	stbu 6,1(3)
	beqlr- 1
.L1436:
	srdi 9,8,1
	cmpdi 5,9,2
	mtctr 9
	ble 5,.L1522
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(3)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,3,1
	stb 8,1(9)
.L1387:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1387
	blr
.L1522:
	lbz 7,1(4)
	mr 11,4
	mr 9,3
	stb 7,1(3)
	addi 4,4,2
	addi 3,3,2
	lbz 5,2(11)
	stb 5,2(9)
	bdnz .L1522
	blr
.L1569:
	.cfi_offset 31, -8
	lxvw4x 0,0,8
	mr 6,12
	stxvw4x 0,0,9
	li 10,-16
	b .L1466
.L1389:
	.cfi_restore 31
	andi. 10,5,0x1
	addi 12,9,1
	add 9,3,12
	add 4,4,12
	addi 3,5,-1
	beq- 0,.L1451
	cmpdi 1,3,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 1
.L1451:
	srdi 10,5,1
	cmpdi 5,10,2
	mtctr 10
	ble 5,.L1525
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L1393:
	addi 4,8,-1
	lbz 7,-1(4)
	stb 7,-2(10)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1393
	blr
.L1525:
	lbz 5,-1(4)
	mr 8,4
	mr 6,9
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 7,-2(8)
	stb 7,-2(6)
	bdnz .L1525
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
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
	srwi 10,5,1
	blt- 0,.L1574
	add 9,4,5
	cmpld 1,3,9
	ble- 1,.L1707
.L1574:
	cmpwi 6,10,0
	beq- 6,.L1573
	addi 6,10,-1
	cmplwi 7,6,6
	ble- 7,.L1577
	addi 11,4,2
	subf 9,11,3
	cmpldi 0,9,12
	ble- 0,.L1577
	srdi 6,5,4
	andi. 12,6,0x3
	addi 0,6,-1
	mr 7,6
	srwi 8,5,4
	li 9,0
	beq- 0,.L1632
	cmpdi 1,12,1
	beq- 1,.L1648
	cmpdi 5,12,2
	bne- 5,.L1708
.L1649:
	lxvw4x 8,4,9
	addi 6,6,-1
	stxvw4x 8,3,9
	addi 9,9,16
.L1648:
	cmpdi 6,6,1
	lxvw4x 9,4,9
	stxvw4x 9,3,9
	addi 9,9,16
	beq- 6,.L1680
.L1632:
	srdi 7,7,2
	cmpdi 7,7,2
	mtctr 7
	ble 7,.L1699
	addi 7,7,-1
	mtctr 7
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 7,9,16
.L1578:
	lxvw4x 0,4,7
	stxvw4x 0,3,7
	addi 6,7,16
	lxvw4x 0,4,6
	stxvw4x 0,3,6
	addi 7,9,48
	lxvw4x 0,4,7
	stxvw4x 0,3,7
	addi 9,9,64
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 7,9,16
	bdnz .L1578
	lxvw4x 0,4,7
	stxvw4x 0,3,7
	addi 6,7,16
	lxvw4x 0,4,6
	stxvw4x 0,3,6
	addi 7,9,48
	lxvw4x 0,4,7
	stxvw4x 0,3,7
.L1680:
	slwi 9,8,3
	cmplw 0,10,9
	beq- 0,.L1573
	addi 7,9,1
	rlwinm 8,9,1,0,27
	cmplw 1,10,7
	lhzx 6,4,8
	sthx 6,3,8
	ble- 1,.L1573
	addi 11,9,2
	rldic 12,7,1,31
	cmplw 5,10,11
	lhzx 0,4,12
	sthx 0,3,12
	ble- 5,.L1573
	rldicl 8,11,0,32
	addi 7,9,3
	sldi 11,8,1
	cmplw 6,10,7
	lhzx 6,4,11
	sthx 6,3,11
	ble- 6,.L1573
	addi 12,9,4
	rldic 0,7,1,31
	cmplw 7,10,12
	lhzx 8,4,0
	sthx 8,3,0
	ble- 7,.L1573
	rldicl 11,12,0,32
	addi 7,9,5
	sldi 12,11,1
	cmplw 0,10,7
	lhzx 6,4,12
	sthx 6,3,12
	ble- 0,.L1573
	addi 9,9,6
	rldic 0,7,1,31
	cmplw 1,10,9
	lhzx 10,4,0
	sthx 10,3,0
	ble- 1,.L1573
	rldicl 8,9,0,32
	sldi 11,8,1
	lhzx 7,4,11
	sthx 7,3,11
.L1573:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 8,5,0,32
	lbzx 4,4,8
	stbx 4,3,8
	blr
.L1707:
	cmpdi 5,5,0
	addi 11,5,-1
	rldicl 7,11,0,32
	beqlr- 5
	cmplwi 6,11,14
	ble- 6,.L1583
	addi 10,7,-1
	add 0,4,10
	add 8,3,7
	subf 6,0,8
	addi 12,6,14
	cmpldi 7,12,14
	ble- 7,.L1583
	srdi 6,5,4
	andi. 0,6,0x3
	addi 9,7,-15
	add 8,4,9
	addi 12,6,-1
	add 9,3,9
	mr 7,6
	li 10,0
	beq- 0,.L1644
	cmpdi 1,0,1
	beq- 1,.L1650
	cmpdi 5,0,2
	bne- 5,.L1709
.L1651:
	lxvw4x 1,8,10
	addi 6,6,-1
	stxvw4x 1,9,10
	addi 10,10,-16
.L1650:
	cmpdi 6,6,1
	lxvw4x 2,8,10
	stxvw4x 2,9,10
	addi 10,10,-16
	beq- 6,.L1681
.L1644:
	srdi 7,7,2
	cmpdi 7,7,2
	mtctr 7
	ble 7,.L1701
	addi 7,7,-1
	mtctr 7
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
.L1584:
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 10,10,-64
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
	bdnz .L1584
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
.L1681:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 11,5,11
	beqlr- 0
	cmpwi 1,11,0
	rldicl 10,11,0,32
	lbzx 8,4,10
	addi 9,11,-1
	rldicl 6,9,0,32
	stbx 8,3,10
	beqlr- 1
	cmpdi 5,6,0
	lbzx 0,4,6
	addi 12,11,-2
	stbx 0,3,6
	rldicl 7,12,0,32
	beqlr- 5
	cmpdi 6,7,0
	lbzx 5,4,7
	addi 10,11,-3
	stbx 5,3,7
	rldicl 9,10,0,32
	beqlr- 6
	cmpdi 7,9,0
	lbzx 8,4,9
	addi 6,11,-4
	stbx 8,3,9
	rldicl 0,6,0,32
	beqlr- 7
	cmpdi 0,0,0
	lbzx 12,4,0
	addi 7,11,-5
	stbx 12,3,0
	rldicl 5,7,0,32
	beqlr- 0
	cmpdi 1,5,0
	lbzx 9,4,5
	addi 10,11,-6
	stbx 9,3,5
	rldicl 6,10,0,32
	beqlr- 1
	cmpdi 5,6,0
	lbzx 8,4,6
	addi 0,11,-7
	stbx 8,3,6
	rldicl 12,0,0,32
	beqlr- 5
	cmpdi 6,12,0
	lbzx 7,4,12
	addi 5,11,-8
	stbx 7,3,12
	rldicl 9,5,0,32
	beqlr- 6
	cmpdi 7,9,0
	lbzx 6,4,9
	addi 10,11,-9
	stbx 6,3,9
	rldicl 0,10,0,32
	beqlr- 7
	cmpdi 0,0,0
	lbzx 8,4,0
	addi 12,11,-10
	stbx 8,3,0
	rldicl 7,12,0,32
	beqlr- 0
	cmpdi 1,7,0
	lbzx 5,4,7
	addi 9,11,-11
	stbx 5,3,7
	rldicl 6,9,0,32
	beqlr- 1
	cmpdi 5,6,0
	lbzx 0,4,6
	addi 10,11,-12
	stbx 0,3,6
	rldicl 12,10,0,32
	beqlr- 5
	cmpdi 6,12,0
	lbzx 8,4,12
	addi 7,11,-13
	stbx 8,3,12
	rldicl 5,7,0,32
	beqlr- 6
	cmpdi 7,5,0
	lbzx 6,4,5
	addi 11,11,-14
	stbx 6,3,5
	rldicl 9,11,0,32
	beqlr- 7
	lbzx 4,4,9
	stbx 4,3,9
	blr
.L1699:
	addi 11,9,16
	lxvw4x 10,4,9
	stxvw4x 10,3,9
	addi 12,9,32
	lxvw4x 11,4,11
	stxvw4x 11,3,11
	addi 0,9,48
	lxvw4x 12,4,12
	stxvw4x 12,3,12
	addi 9,9,64
	lxvw4x 13,4,0
	stxvw4x 13,3,0
	bdz .L1680
	addi 11,9,16
	lxvw4x 10,4,9
	stxvw4x 10,3,9
	addi 12,9,32
	lxvw4x 11,4,11
	stxvw4x 11,3,11
	addi 0,9,48
	lxvw4x 12,4,12
	stxvw4x 12,3,12
	addi 9,9,64
	lxvw4x 13,4,0
	stxvw4x 13,3,0
	bdnz .L1699
	b .L1680
.L1708:
	lxvw4x 7,0,4
	mr 6,0
	stxvw4x 7,0,3
	li 9,16
	b .L1649
.L1701:
	addi 0,10,-16
	lxvw4x 3,8,10
	stxvw4x 3,9,10
	addi 12,10,-32
	lxvw4x 4,8,0
	stxvw4x 4,9,0
	addi 7,10,-48
	lxvw4x 5,8,12
	stxvw4x 5,9,12
	addi 10,10,-64
	lxvw4x 6,8,7
	stxvw4x 6,9,7
	bdnz .L1701
	b .L1681
.L1577:
	andi. 9,10,0x1
	addi 12,10,-1
	addi 8,4,-2
	addi 9,3,-2
	beq- 0,.L1625
	cmpdi 5,12,0
	lhz 6,0(4)
	mr 8,4
	sth 6,0(3)
	mr 9,3
	beq- 5,.L1573
.L1625:
	srdi 10,10,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L1698
	addi 10,10,-1
	mtctr 10
	lhz 6,2(8)
	sth 6,2(9)
	addi 7,8,2
	lhz 6,2(7)
	addi 10,9,2
	sth 6,2(10)
.L1580:
	lhz 6,4(7)
	sth 6,4(10)
	addi 7,7,4
	lhz 6,2(7)
	addi 10,10,4
	sth 6,2(10)
	bdnz .L1580
	b .L1573
.L1698:
	lhz 0,2(8)
	mr 11,8
	mr 10,9
	sth 0,2(9)
	addi 8,8,4
	addi 9,9,4
	lhz 7,4(11)
	sth 7,4(10)
	bdnz .L1698
	b .L1573
.L1709:
	lxvw4x 0,0,8
	mr 6,12
	stxvw4x 0,0,9
	li 10,-16
	b .L1651
.L1583:
	andi. 10,5,0x1
	addi 0,7,1
	add 9,3,0
	add 4,4,0
	addi 3,5,-1
	beq- 0,.L1637
	cmpdi 1,3,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 1
.L1637:
	srdi 10,5,1
	cmpdi 5,10,2
	mtctr 10
	ble 5,.L1700
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L1586:
	addi 4,8,-1
	lbz 7,-1(4)
	stb 7,-2(10)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1586
.L1570:
	blr
.L1700:
	lbz 12,-1(4)
	mr 8,4
	mr 5,9
	stb 12,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 7,-2(8)
	stb 7,-2(5)
	bdnz .L1700
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
	srwi 11,5,2
	rlwinm 0,5,0,0,29
	blt- 0,.L1715
	add 9,4,5
	cmpld 1,3,9
	ble- 1,.L1922
.L1715:
	cmpwi 6,11,0
	beq- 6,.L1923
	addi 9,11,-1
	cmplwi 0,9,3
	ble- 0,.L1717
	addi 12,4,4
	subf 10,12,3
	cmpldi 1,10,8
	ble- 1,.L1717
	srdi 7,5,4
	andi. 6,7,0x3
	addi 12,7,-1
	mr 10,7
	srwi 8,5,4
	li 9,0
	beq- 0,.L1792
	cmpdi 5,6,1
	beq- 5,.L1808
	cmpdi 6,6,2
	bne- 6,.L1924
.L1809:
	lxvw4x 8,4,9
	addi 7,7,-1
	stxvw4x 8,3,9
	addi 9,9,16
.L1808:
	cmpdi 7,7,1
	lxvw4x 9,4,9
	stxvw4x 9,3,9
	addi 9,9,16
	beq- 7,.L1850
.L1792:
	srdi 10,10,2
	cmpdi 1,10,2
	mtctr 10
	ble 1,.L1879
	addi 10,10,-1
	mtctr 10
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 10,9,16
.L1718:
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 7,10,16
	lxvw4x 0,4,7
	stxvw4x 0,3,7
	addi 10,9,48
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 9,9,64
	lxvw4x 0,4,9
	stxvw4x 0,3,9
	addi 10,9,16
	bdnz .L1718
	lxvw4x 0,4,10
	stxvw4x 0,3,10
	addi 7,10,16
	lxvw4x 0,4,7
	stxvw4x 0,3,7
	addi 10,9,48
	lxvw4x 0,4,10
	stxvw4x 0,3,10
.L1850:
	slwi 9,8,2
	cmplw 0,11,9
	beq- 0,.L1721
	addi 6,9,1
	rlwinm 8,9,2,0,27
	cmplw 5,11,6
	lwzx 7,4,8
	stwx 7,3,8
	ble- 5,.L1721
	addi 12,9,2
	rldic 10,6,2,31
	cmplw 6,11,12
	lwzx 11,4,10
	stwx 11,3,10
	ble- 6,.L1721
	rldicl 9,12,0,32
	sldi 6,9,2
	lwzx 8,4,6
	stwx 8,3,6
.L1721:
	cmplw 5,0,5
	bgelr- 5
	subf 9,0,5
	addi 8,9,-1
	cmplwi 6,8,14
	rldicl 10,0,0,32
	ble- 6,.L1713
	addi 7,10,1
	add 11,4,7
	add 7,3,10
	subf 6,11,7
	cmpldi 0,6,14
	ble- 0,.L1713
	rldicl 11,9,60,36
	std 31,-8(1)
	.cfi_offset 31, -8
	andi. 12,11,0x3
	add 10,4,10
	addi 31,11,-1
	mr 6,11
	li 8,0
	beq- 0,.L1780
	cmpdi 7,12,1
	beq- 7,.L1810
	cmpdi 1,12,2
	bne- 1,.L1925
.L1811:
	lxvw4x 1,10,8
	addi 11,11,-1
	stxvw4x 1,7,8
	addi 8,8,16
.L1810:
	cmpdi 5,11,1
	lxvw4x 2,10,8
	stxvw4x 2,7,8
	addi 8,8,16
	beq- 5,.L1849
.L1780:
	srdi 6,6,2
	cmpdi 6,6,2
	mtctr 6
	ble 6,.L1877
	addi 6,6,-1
	mtctr 6
	lxvw4x 0,10,8
	stxvw4x 0,7,8
	addi 6,8,16
.L1722:
	lxvw4x 0,10,6
	stxvw4x 0,7,6
	addi 11,6,16
	lxvw4x 0,10,11
	stxvw4x 0,7,11
	addi 6,8,48
	lxvw4x 0,10,6
	stxvw4x 0,7,6
	addi 8,8,64
	lxvw4x 0,10,8
	stxvw4x 0,7,8
	addi 6,8,16
	bdnz .L1722
	lxvw4x 0,10,6
	stxvw4x 0,7,6
	addi 11,6,16
	lxvw4x 0,10,11
	stxvw4x 0,7,11
	addi 6,8,48
	lxvw4x 0,10,6
	stxvw4x 0,7,6
.L1849:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 11,9,0
	beq- 0,.L1918
	addi 0,11,1
	rldicl 8,11,0,32
	cmplw 7,0,5
	lbzx 10,4,8
	stbx 10,3,8
	bge- 7,.L1918
	addi 12,11,2
	rldicl 31,0,0,32
	cmplw 1,12,5
	lbzx 7,4,31
	stbx 7,3,31
	bge- 1,.L1918
	addi 6,11,3
	rldicl 9,12,0,32
	cmplw 5,6,5
	lbzx 0,4,9
	stbx 0,3,9
	bge- 5,.L1918
	addi 8,11,4
	rldicl 10,6,0,32
	cmplw 6,8,5
	lbzx 12,4,10
	stbx 12,3,10
	bge- 6,.L1918
	addi 31,11,5
	rldicl 6,8,0,32
	cmplw 0,31,5
	lbzx 7,4,6
	stbx 7,3,6
	bge- 0,.L1918
	addi 9,11,6
	rldicl 0,31,0,32
	cmplw 7,9,5
	lbzx 8,4,0
	stbx 8,3,0
	bge- 7,.L1918
	addi 10,11,7
	rldicl 12,9,0,32
	cmplw 1,10,5
	lbzx 31,4,12
	stbx 31,3,12
	bge- 1,.L1918
	addi 6,11,8
	rldicl 9,10,0,32
	cmplw 5,6,5
	lbzx 7,4,9
	stbx 7,3,9
	bge- 5,.L1918
	addi 0,11,9
	rldicl 8,6,0,32
	cmplw 6,0,5
	lbzx 10,4,8
	stbx 10,3,8
	bge- 6,.L1918
	addi 12,11,10
	rldicl 31,0,0,32
	cmplw 0,12,5
	lbzx 6,4,31
	stbx 6,3,31
	bge- 0,.L1918
	addi 9,11,11
	rldicl 0,12,0,32
	cmplw 7,9,5
	lbzx 7,4,0
	stbx 7,3,0
	bge- 7,.L1918
	addi 8,11,12
	rldicl 10,9,0,32
	cmplw 1,8,5
	lbzx 12,4,10
	stbx 12,3,10
	bge- 1,.L1918
	addi 31,11,13
	rldicl 6,8,0,32
	cmplw 5,31,5
	lbzx 9,4,6
	stbx 9,3,6
	bge- 5,.L1918
	addi 11,11,14
	rldicl 0,31,0,32
	cmplw 6,11,5
	lbzx 5,4,0
	stbx 5,3,0
	bge- 6,.L1918
	rldicl 7,11,0,32
	lbzx 4,4,7
	stbx 4,3,7
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L1922:
	cmpdi 5,5,0
	addi 11,5,-1
	rldicl 7,11,0,32
	beqlr- 5
	cmplwi 6,11,14
	ble- 6,.L1726
	addi 10,7,-1
	add 0,4,10
	add 8,3,7
	subf 6,0,8
	addi 12,6,14
	cmpldi 7,12,14
	ble- 7,.L1726
	srdi 6,5,4
	std 31,-8(1)
	.cfi_offset 31, -8
	andi. 0,6,0x3
	addi 31,7,-15
	add 8,4,31
	add 9,3,31
	addi 12,6,-1
	mr 7,6
	li 10,0
	beq- 0,.L1804
	cmpdi 1,0,1
	beq- 1,.L1812
	cmpdi 5,0,2
	bne- 5,.L1926
.L1813:
	lxvw4x 1,8,10
	addi 6,6,-1
	stxvw4x 1,9,10
	addi 10,10,-16
.L1812:
	cmpdi 6,6,1
	lxvw4x 2,8,10
	stxvw4x 2,9,10
	addi 10,10,-16
	beq- 6,.L1851
.L1804:
	srdi 7,7,2
	cmpdi 7,7,2
	mtctr 7
	ble 7,.L1881
	addi 7,7,-1
	mtctr 7
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
.L1727:
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 10,10,-64
	lxvw4x 0,8,10
	stxvw4x 0,9,10
	addi 7,10,-16
	bdnz .L1727
	lxvw4x 0,8,7
	stxvw4x 0,9,7
	addi 6,7,-16
	lxvw4x 0,8,6
	stxvw4x 0,9,6
	addi 7,10,-48
	lxvw4x 0,8,7
	stxvw4x 0,9,7
.L1851:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 11,5,11
	beq- 0,.L1918
	rldicl 9,11,0,32
	cmpwi 1,11,0
	lbzx 8,4,9
	addi 10,11,-1
	stbx 8,3,9
	rldicl 6,10,0,32
	beq- 1,.L1918
	cmpdi 5,6,0
	lbzx 7,4,6
	addi 0,11,-2
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 5,.L1918
	cmpdi 6,31,0
	lbzx 12,4,31
	addi 5,11,-3
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 6,.L1918
	cmpdi 7,9,0
	lbzx 10,4,9
	addi 8,11,-4
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 7,.L1918
	cmpdi 0,6,0
	lbzx 7,4,6
	addi 0,11,-5
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 0,.L1918
	cmpdi 1,31,0
	lbzx 12,4,31
	addi 5,11,-6
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 1,.L1918
	cmpdi 5,9,0
	lbzx 10,4,9
	addi 8,11,-7
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 5,.L1918
	cmpdi 6,6,0
	lbzx 7,4,6
	addi 0,11,-8
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 6,.L1918
	cmpdi 7,31,0
	lbzx 12,4,31
	addi 5,11,-9
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 7,.L1918
	cmpdi 0,9,0
	lbzx 10,4,9
	addi 8,11,-10
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 0,.L1918
	cmpdi 1,6,0
	lbzx 7,4,6
	addi 0,11,-11
	stbx 7,3,6
	rldicl 31,0,0,32
	beq- 1,.L1918
	cmpdi 5,31,0
	lbzx 12,4,31
	addi 5,11,-12
	stbx 12,3,31
	rldicl 9,5,0,32
	beq- 5,.L1918
	cmpdi 6,9,0
	lbzx 10,4,9
	addi 8,11,-13
	stbx 10,3,9
	rldicl 6,8,0,32
	beq- 6,.L1918
	cmpdi 7,6,0
	lbzx 7,4,6
	addi 11,11,-14
	stbx 7,3,6
	rldicl 0,11,0,32
	beq- 7,.L1918
	lbzx 4,4,0
	stbx 4,3,0
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L1879:
	addi 6,9,16
	lxvw4x 10,4,9
	stxvw4x 10,3,9
	addi 12,9,32
	lxvw4x 11,4,6
	stxvw4x 11,3,6
	addi 10,9,48
	lxvw4x 12,4,12
	stxvw4x 12,3,12
	addi 9,9,64
	lxvw4x 13,4,10
	stxvw4x 13,3,10
	bdz .L1850
	addi 6,9,16
	lxvw4x 10,4,9
	stxvw4x 10,3,9
	addi 12,9,32
	lxvw4x 11,4,6
	stxvw4x 11,3,6
	addi 10,9,48
	lxvw4x 12,4,12
	stxvw4x 12,3,12
	addi 9,9,64
	lxvw4x 13,4,10
	stxvw4x 13,3,10
	bdnz .L1879
	b .L1850
.L1877:
	.cfi_offset 31, -8
	addi 12,8,16
	lxvw4x 3,10,8
	stxvw4x 3,7,8
	addi 31,8,32
	lxvw4x 4,10,12
	stxvw4x 4,7,12
	addi 6,8,48
	lxvw4x 5,10,31
	stxvw4x 5,7,31
	addi 8,8,64
	lxvw4x 6,10,6
	stxvw4x 6,7,6
	bdz .L1849
	addi 12,8,16
	lxvw4x 3,10,8
	stxvw4x 3,7,8
	addi 31,8,32
	lxvw4x 4,10,12
	stxvw4x 4,7,12
	addi 6,8,48
	lxvw4x 5,10,31
	stxvw4x 5,7,31
	addi 8,8,64
	lxvw4x 6,10,6
	stxvw4x 6,7,6
	bdnz .L1877
	b .L1849
.L1918:
	ld 31,-8(1)
	.cfi_restore 31
.L1710:
	blr
.L1924:
	lxvw4x 7,0,4
	mr 7,12
	stxvw4x 7,0,3
	li 9,16
	b .L1809
.L1925:
	.cfi_offset 31, -8
	lxvw4x 0,0,10
	mr 11,31
	stxvw4x 0,0,7
	li 8,16
	b .L1811
.L1881:
	addi 0,10,-16
	lxvw4x 3,8,10
	stxvw4x 3,9,10
	addi 31,10,-32
	lxvw4x 4,8,0
	stxvw4x 4,9,0
	addi 12,10,-48
	lxvw4x 5,8,31
	stxvw4x 5,9,31
	addi 10,10,-64
	lxvw4x 6,8,12
	stxvw4x 6,9,12
	bdnz .L1881
	b .L1851
.L1717:
	.cfi_restore 31
	rldicl 12,11,0,32
	andi. 10,12,0x1
	addi 7,12,-1
	addi 8,4,-4
	addi 10,3,-4
	beq- 0,.L1785
	cmpdi 7,7,0
	lwz 10,0(4)
	mr 8,4
	stw 10,0(3)
	mr 10,3
	beq- 7,.L1721
.L1785:
	srdi 9,12,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L1878
	addi 9,9,-1
	mtctr 9
	lwz 6,4(8)
	stw 6,4(10)
	addi 7,8,4
	lwz 6,4(7)
	addi 9,10,4
	stw 6,4(9)
.L1720:
	lwz 6,8(7)
	stw 6,8(9)
	addi 7,7,8
	lwz 6,4(7)
	addi 9,9,8
	stw 6,4(9)
	bdnz .L1720
	b .L1721
.L1878:
	lwz 11,4(8)
	mr 6,8
	mr 9,10
	stw 11,4(10)
	addi 8,8,8
	addi 10,10,8
	lwz 12,8(6)
	stw 12,8(9)
	bdnz .L1878
	b .L1721
.L1923:
	cmpdi 7,5,0
	rldicl 10,0,0,32
	mr 9,5
	beqlr- 7
.L1713:
	rldicl 12,9,0,32
	andi. 8,12,0x1
	addi 8,10,-1
	add 10,3,8
	add 4,4,8
	addi 3,12,-1
	beq- 0,.L1773
	cmpdi 7,3,0
	lbzu 6,1(4)
	stbu 6,1(10)
	beqlr- 7
.L1773:
	srdi 9,12,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L1876
	addi 9,9,-1
	mtctr 9
	lbz 7,1(4)
	stb 7,1(10)
	addi 8,4,1
	lbz 7,1(8)
	addi 9,10,1
	stb 7,1(9)
.L1724:
	lbz 7,2(8)
	stb 7,2(9)
	addi 8,8,2
	lbz 7,1(8)
	addi 9,9,2
	stb 7,1(9)
	bdnz .L1724
	blr
.L1876:
	lbz 11,1(4)
	mr 5,4
	mr 9,10
	stb 11,1(10)
	addi 4,4,2
	addi 10,10,2
	lbz 0,2(5)
	stb 0,2(9)
	bdnz .L1876
	blr
.L1926:
	.cfi_offset 31, -8
	lxvw4x 0,0,8
	mr 6,12
	stxvw4x 0,0,9
	li 10,-16
	b .L1813
.L1726:
	.cfi_restore 31
	andi. 10,5,0x1
	addi 12,7,1
	add 9,3,12
	add 4,4,12
	addi 3,5,-1
	beq- 0,.L1797
	cmpdi 1,3,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 1
.L1797:
	srdi 10,5,1
	cmpdi 5,10,2
	mtctr 10
	ble 5,.L1880
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L1730:
	addi 4,8,-1
	lbz 7,-1(4)
	stb 7,-2(10)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1730
	blr
.L1880:
	lbz 5,-1(4)
	mr 8,4
	mr 6,9
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 7,-2(8)
	stb 7,-2(6)
	bdnz .L1880
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
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
	mullw 0,9,4
	subf 3,0,3
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
	mtvsrd 1,3
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
	mtvsrd 1,3
	fcfids 1,1
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
	mtvsrd 1,3
	fcfidu 1,1
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
	mtvsrd 1,3
	fcfidus 1,1
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
	mullw 0,9,4
	subf 3,0,3
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
	bne- 0,.L1936
	srawi 9,3,14
	cmpwi 1,9,0
	bne- 1,.L1935
	srdi. 9,3,13
	bne- 0,.L1937
	srdi. 9,3,12
	bne- 0,.L1938
	srdi. 9,3,11
	bne- 0,.L1939
	srdi. 9,3,10
	bne- 0,.L1940
	srdi. 9,3,9
	bne- 0,.L1941
	srdi. 9,3,8
	bne- 0,.L1942
	srdi. 9,3,7
	bne- 0,.L1943
	srdi. 9,3,6
	bne- 0,.L1944
	srdi. 9,3,5
	bne- 0,.L1945
	srdi. 9,3,4
	bne- 0,.L1946
	srdi. 9,3,3
	bne- 0,.L1947
	srdi. 9,3,2
	bne- 0,.L1948
	srdi. 9,3,1
	bne- 0,.L1949
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1935:
	rldicl 3,9,0,59
	blr
.L1936:
	li 9,0
	b .L1935
.L1947:
	li 9,12
	b .L1935
.L1937:
	li 9,2
	b .L1935
.L1938:
	li 9,3
	b .L1935
.L1939:
	li 9,4
	b .L1935
.L1940:
	li 9,5
	b .L1935
.L1941:
	li 9,6
	b .L1935
.L1942:
	li 9,7
	b .L1935
.L1943:
	li 9,8
	b .L1935
.L1944:
	li 9,9
	b .L1935
.L1945:
	li 9,10
	b .L1935
.L1946:
	li 9,11
	b .L1935
.L1948:
	li 9,13
	b .L1935
.L1949:
	li 9,14
	b .L1935
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
	bne- 0,.L1954
	andi. 9,3,0x2
	bne- 0,.L1955
	andi. 9,3,0x4
	bne- 0,.L1956
	andi. 9,3,0x8
	bne- 0,.L1957
	andi. 9,3,0x10
	bne- 0,.L1958
	andi. 9,3,0x20
	bne- 0,.L1959
	andi. 9,3,0x40
	bne- 0,.L1960
	andi. 9,3,0x80
	bne- 0,.L1961
	andi. 9,3,0x100
	bne- 0,.L1962
	andi. 9,3,0x200
	bne- 0,.L1963
	andi. 9,3,0x400
	bne- 0,.L1964
	andi. 9,3,0x800
	bne- 0,.L1965
	andi. 9,3,0x1000
	bne- 0,.L1966
	andi. 9,3,0x2000
	bne- 0,.L1967
	andi. 9,3,0x4000
	bne- 0,.L1968
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1953:
	rldicl 3,5,0,59
	blr
.L1954:
	li 5,0
	b .L1953
.L1955:
	li 5,1
	b .L1953
.L1966:
	li 5,12
	b .L1953
.L1956:
	li 5,2
	b .L1953
.L1957:
	li 5,3
	b .L1953
.L1958:
	li 5,4
	b .L1953
.L1959:
	li 5,5
	b .L1953
.L1960:
	li 5,6
	b .L1953
.L1961:
	li 5,7
	b .L1953
.L1962:
	li 5,8
	b .L1953
.L1963:
	li 5,9
	b .L1953
.L1964:
	li 5,10
	b .L1953
.L1965:
	li 5,11
	b .L1953
.L1967:
	li 5,13
	b .L1953
.L1968:
	li 5,14
	b .L1953
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
	addis 9,2,.LC36@toc@ha
	lfs 0,.LC36@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1976
	fctidz 1,1
	mfvsrd 3,1
	blr
.L1976:
	fsubs 2,1,0
	fctidz 3,2
	mfvsrd 3,3
	addis 4,3,0x1
	addi 3,4,-32768
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
	mfvrsave 11
	oris 0,11,0xc03c
	stw 11,-4(1)
	mtvrsave 0
	vspltisw 1,0
	addis 9,2,.LC38@toc@ha
	mtvsrd 32,3
	lwz 11,-4(1)
	addis 4,2,.LC39@toc@ha
	xxspltw 32,32,1
	addis 10,2,.LC40@toc@ha
	addis 7,2,.LC41@toc@ha
	vspltisw 10,1
	addi 3,9,.LC38@toc@l
	addi 5,4,.LC39@toc@l
	lxvw4x 44,0,3
	vsraw 11,0,12
	addi 6,10,.LC40@toc@l
	xxland 44,43,42
	lxvw4x 45,0,5
	addi 8,7,.LC41@toc@l
	vsraw 11,0,13
	lxvw4x 45,0,6
	xxland 43,43,42
	vsraw 13,0,13
	vadduwm 12,12,11
	xxland 45,45,42
	lxvw4x 43,0,8
	vadduwm 12,13,12
	vsraw 0,0,11
	xxland 42,32,42
	vadduwm 11,10,12
	xxsldwi 45,43,33,2
	vadduwm 12,13,11
	xxsldwi 33,44,33,1
	vadduwm 0,1,12
	vspltw 10,0,0
	mfvsrwz 12,42
	rldicl 3,12,0,63
	mtvrsave 11
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
	mfvrsave 11
	oris 0,11,0xc03c
	stw 11,-4(1)
	mtvrsave 0
	vspltisw 1,0
	addis 9,2,.LC38@toc@ha
	mtvsrd 32,3
	lwz 11,-4(1)
	addis 4,2,.LC39@toc@ha
	xxspltw 32,32,1
	addis 10,2,.LC40@toc@ha
	addis 7,2,.LC41@toc@ha
	vspltisw 10,1
	addi 3,9,.LC38@toc@l
	addi 5,4,.LC39@toc@l
	lxvw4x 44,0,3
	vsraw 11,0,12
	addi 6,10,.LC40@toc@l
	xxland 44,43,42
	lxvw4x 45,0,5
	addi 8,7,.LC41@toc@l
	vsraw 11,0,13
	lxvw4x 45,0,6
	xxland 43,43,42
	vsraw 13,0,13
	vadduwm 12,12,11
	xxland 45,45,42
	lxvw4x 43,0,8
	vadduwm 12,13,12
	vsraw 0,0,11
	xxland 42,32,42
	vadduwm 11,10,12
	xxsldwi 45,43,33,2
	vadduwm 12,13,11
	xxsldwi 33,44,33,1
	vadduwm 0,1,12
	vspltw 10,0,0
	mfvsrwz 12,42
	extsw 3,12
	mtvrsave 11
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
	beq- 0,.L1982
.L1983:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	add 3,3,5
	slwi 4,4,1
	bne+ 1,.L1983
.L1982:
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
	beq- 0,.L1987
	cmpdi 1,4,0
	beq- 1,.L1987
.L1988:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne+ 0,.L1988
.L1987:
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
	li 12,32
	li 9,1
	blt+ 0,.L1993
	b .L2014
.L1997:
	rldicl 4,0,0,32
	slwi 6,4,1
	cmpwi 6,4,0
	cmplw 5,3,6
	slwi 9,9,1
	ble- 7,.L1995
	blt- 6,.L1998
	rldicl 4,6,0,32
	slwi 9,9,1
	ble- 5,.L1995
	bdz .L1996
.L1993:
	cmpwi 1,4,0
	slwi 0,4,1
	addi 10,12,-1
	cmplw 7,3,0
	addi 12,10,-1
	bge+ 1,.L1997
.L1998:
	li 12,0
	li 11,1
	li 10,0
.L1999:
	cmplw 1,3,4
	subf 8,4,3
	srdi 4,4,1
	isel 7,0,11,4
	cmpwi 6,7,0
	isel 0,10,9,26
	srwi 9,9,1
	cmpwi 7,9,0
	isel 3,3,8,26
	or 12,12,0
	rldicl 3,3,0,32
	bne+ 7,.L1999
.L1996:
	cmpdi 5,5,0
	isel 5,12,3,22
	rldicl 3,5,0,32
	blr
.L1995:
	cmpwi 0,9,0
	bne+ 0,.L1998
	li 12,0
	b .L1996
.L2014:
	isel 9,0,9,1
	andi. 12,9,0xff
	subf 4,4,3
	isel 3,3,4,2
	rldicl 3,3,0,32
	b .L1996
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
	blt- 0,.L2018
	mfcr 3,128
	rlwinm 3,3,2,1
.L2018:
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
	blt- 0,.L2021
	mfcr 3,128
	rlwinm 3,3,2,1
.L2021:
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
	blt- 0,.L2038
	cmpdi 1,4,0
	beq- 1,.L2031
	li 6,0
.L2027:
	li 10,32
	li 8,0
	b .L2030
.L2039:
	beq- 7,.L2029
.L2030:
	rlwinm 9,4,0,31,31
	sradi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	slwi 11,3,1
	cmpwi 7,7,0
	add 8,8,5
	extsw 3,11
	bne+ 0,.L2039
.L2029:
	cmpwi 5,6,0
	neg 12,8
	isel 3,8,12,22
.L2028:
	extsw 3,3
	blr
.L2038:
	neg 4,4
	extsw 4,4
	li 6,1
	b .L2027
.L2031:
	li 3,0
	b .L2028
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
	li 11,0
	bge+ 0,.L2041
	neg 3,3
	li 9,0
	li 11,1
.L2041:
	cmpdi 1,4,0
	bge+ 1,.L2042
	neg 4,4
	mr 11,9
.L2042:
	cmplw 5,3,4
	li 10,16
	mtctr 10
	li 12,1
	bgt+ 5,.L2043
	b .L2068
.L2047:
	slwi 4,4,1
	cmplw 0,3,4
	cmpwi 7,4,0
	slwi 12,12,1
	ble- 0,.L2045
	blt- 7,.L2064
	slwi 4,4,1
	cmplw 0,3,4
	slwi 12,12,1
	ble- 0,.L2045
	bdz .L2055
.L2043:
	cmpwi 6,4,0
	bge+ 6,.L2047
.L2064:
	cmplw 0,3,4
	b .L2048
.L2045:
	cmpwi 1,12,0
	beq- 1,.L2055
.L2048:
	li 0,0
	li 5,1
	li 6,0
	b .L2049
.L2072:
	cmplw 0,3,4
.L2049:
	isel 8,0,5,0
	cmpwi 5,8,0
	subf 9,4,3
	srwi 4,4,1
	isel 7,6,12,22
	srwi 12,12,1
	cmpwi 6,12,0
	or 0,0,7
	isel 3,3,9,22
	bne+ 6,.L2072
.L2051:
	cmpwi 7,11,0
	rldicl 3,0,0,32
	neg 4,3
	isel 3,3,4,30
	blr
.L2055:
	cmpwi 7,11,0
	li 3,0
	neg 4,3
	isel 3,3,4,30
	blr
.L2068:
	isel 0,0,12,20
	b .L2051
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
	li 5,0
	bge+ 0,.L2074
	neg 3,3
	li 5,1
.L2074:
	sradi 7,4,63
	xor 4,7,4
	subf 0,7,4
	cmplw 1,3,0
	li 6,16
	mtctr 6
	mr 9,0
	mr 11,3
	li 10,1
	bgt+ 1,.L2075
	b .L2101
.L2079:
	slwi 9,9,1
	cmplw 6,11,9
	cmpwi 7,9,0
	slwi 10,10,1
	ble- 6,.L2077
	blt- 7,.L2098
	slwi 9,9,1
	cmplw 6,11,9
	slwi 10,10,1
	ble- 6,.L2077
	bdz .L2078
.L2075:
	cmpwi 5,9,0
	bge+ 5,.L2079
.L2098:
	cmplw 6,11,9
.L2080:
	li 3,1
	b .L2081
.L2104:
	cmplw 6,11,9
.L2081:
	isel 12,0,3,24
	srwi 10,10,1
	cmpwi 1,12,0
	cmpwi 5,10,0
	subf 7,9,11
	isel 11,11,7,6
	srwi 9,9,1
	bne+ 5,.L2104
.L2078:
	cmpwi 7,5,0
	rldicl 5,11,0,32
	neg 4,5
	isel 3,5,4,30
	blr
.L2077:
	cmpwi 0,10,0
	bne+ 0,.L2080
	b .L2078
.L2101:
	subf 8,0,3
	isel 11,3,8,4
	b .L2078
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
	bge- 0,.L2275
	andi. 9,4,0x8000
	bne- 0,.L2110
	rldic 12,4,1,48
	cmplw 7,3,12
	ble- 7,.L2183
	andi. 10,12,0x8000
	bne- 0,.L2183
	rldic 12,4,2,48
	cmplw 7,3,12
	ble- 7,.L2185
	andi. 10,12,0x8000
	bne- 0,.L2185
	rldic 12,4,3,48
	cmplw 7,3,12
	ble- 7,.L2187
	andi. 10,12,0x8000
	bne- 0,.L2187
	rldic 12,4,4,48
	cmplw 7,3,12
	ble- 7,.L2189
	andi. 10,12,0x8000
	bne- 0,.L2189
	rldic 12,4,5,48
	cmplw 7,3,12
	ble- 7,.L2191
	andi. 10,12,0x8000
	bne- 0,.L2191
	rldic 12,4,6,48
	cmplw 7,3,12
	ble- 7,.L2193
	andi. 10,12,0x8000
	bne- 0,.L2193
	rldic 12,4,7,48
	cmplw 7,3,12
	ble- 7,.L2195
	andi. 10,12,0x8000
	bne- 0,.L2195
	rldic 12,4,8,48
	cmplw 7,3,12
	ble- 7,.L2197
	andi. 10,12,0x8000
	bne- 0,.L2197
	rldic 12,4,9,48
	cmplw 7,3,12
	ble- 7,.L2199
	andi. 10,12,0x8000
	bne- 0,.L2199
	rldic 12,4,10,48
	cmplw 7,3,12
	ble- 7,.L2201
	andi. 10,12,0x8000
	bne- 0,.L2201
	rldic 12,4,11,48
	cmplw 7,3,12
	ble- 7,.L2203
	andi. 10,12,0x8000
	bne- 0,.L2203
	rldic 12,4,12,48
	cmplw 7,3,12
	ble- 7,.L2205
	andi. 10,12,0x8000
	bne- 0,.L2205
	rldic 12,4,13,48
	cmplw 7,3,12
	ble- 7,.L2207
	andi. 10,12,0x8000
	bne- 0,.L2207
	rldic 12,4,14,48
	cmplw 7,3,12
	ble- 7,.L2209
	andi. 10,12,0x8000
	bne- 0,.L2209
	rldic 7,4,15,48
	cmplw 6,3,7
	ble- 6,.L2210
	cmpdi 1,7,0
	li 11,0
	bne- 1,.L2276
.L2113:
	cmpdi 6,5,0
	beq+ 6,.L2172
	mr 11,3
.L2172:
	rlwinm 3,11,0,0xffff
	blr
.L2183:
	li 8,2
.L2112:
	subf 6,12,3
	rlwinm 0,6,0,0xffff
	isel 4,3,0,28
	li 11,0
	blt- 7,.L2181
	mr 11,8
.L2181:
	srdi 3,12,1
	cmplw 5,4,3
	subf 10,3,4
	rlwinm 9,10,0,0xffff
	rldicl 7,8,63,49
	isel 3,4,9,20
	li 0,0
	blt- 5,.L2117
	mr 0,7
.L2117:
	srwi 6,8,2
	cmpwi 7,6,0
	or 10,0,11
	mr 11,10
	srwi 4,8,2
	srdi 7,12,2
	beq- 7,.L2113
	cmplw 0,3,7
	li 11,1
	subf 9,7,3
	isel 0,0,11,0
	cmpwi 6,0,0
	rlwinm 7,9,0,0xffff
	li 6,0
	isel 3,3,7,26
	beq- 6,.L2121
	mr 6,4
.L2121:
	srwi 4,8,3
	cmpwi 1,4,0
	or 10,10,6
	mr 11,10
	srdi 9,12,3
	beq- 1,.L2113
	cmplw 5,3,9
	li 11,1
	subf 0,9,3
	isel 7,0,11,20
	cmpwi 7,7,0
	rlwinm 9,0,0,0xffff
	li 6,0
	isel 3,3,9,30
	beq- 7,.L2125
	mr 6,4
.L2125:
	srwi 4,8,4
	cmpwi 0,4,0
	or 10,10,6
	mr 11,10
	srdi 0,12,4
	beq- 0,.L2113
	cmplw 6,3,0
	li 11,1
	subf 7,0,3
	isel 9,0,11,24
	cmpwi 1,9,0
	rlwinm 0,7,0,0xffff
	li 6,0
	isel 3,3,0,6
	beq- 1,.L2129
	mr 6,4
.L2129:
	srwi 4,8,5
	cmpwi 5,4,0
	or 10,10,6
	mr 11,10
	srdi 7,12,5
	beq- 5,.L2113
	cmplw 7,3,7
	li 11,1
	subf 9,7,3
	isel 0,0,11,28
	cmpwi 0,0,0
	rlwinm 7,9,0,0xffff
	li 6,0
	isel 3,3,7,2
	beq- 0,.L2133
	mr 6,4
.L2133:
	srwi 4,8,6
	cmpwi 6,4,0
	or 10,10,6
	mr 11,10
	srdi 9,12,6
	beq- 6,.L2113
	cmplw 1,3,9
	li 11,1
	subf 0,9,3
	isel 7,0,11,4
	cmpwi 5,7,0
	rlwinm 9,0,0,0xffff
	li 6,0
	isel 3,3,9,22
	beq- 5,.L2137
	mr 6,4
.L2137:
	srwi 4,8,7
	cmpwi 7,4,0
	or 10,10,6
	mr 11,10
	srdi 0,12,7
	beq- 7,.L2113
	cmplw 0,3,0
	li 11,1
	subf 7,0,3
	isel 9,0,11,0
	cmpwi 6,9,0
	rlwinm 0,7,0,0xffff
	li 6,0
	isel 3,3,0,26
	beq- 6,.L2141
	mr 6,4
.L2141:
	srwi 4,8,8
	cmpwi 1,4,0
	or 10,10,6
	mr 11,10
	srdi 7,12,8
	beq- 1,.L2113
	cmplw 5,3,7
	li 11,1
	subf 9,7,3
	isel 0,0,11,20
	cmpwi 7,0,0
	rlwinm 7,9,0,0xffff
	li 6,0
	isel 3,3,7,30
	beq- 7,.L2145
	mr 6,4
.L2145:
	srwi 4,8,9
	cmpwi 0,4,0
	or 10,10,6
	mr 11,10
	srdi 9,12,9
	beq- 0,.L2113
	cmplw 6,3,9
	li 11,1
	subf 0,9,3
	isel 7,0,11,24
	cmpwi 1,7,0
	rlwinm 9,0,0,0xffff
	li 6,0
	isel 3,3,9,6
	beq- 1,.L2149
	mr 6,4
.L2149:
	srwi 4,8,10
	cmpwi 5,4,0
	or 10,10,6
	mr 11,10
	srdi 0,12,10
	beq- 5,.L2113
	cmplw 7,3,0
	li 11,1
	subf 7,0,3
	isel 9,0,11,28
	cmpwi 0,9,0
	rlwinm 0,7,0,0xffff
	li 6,0
	isel 3,3,0,2
	beq- 0,.L2153
	mr 6,4
.L2153:
	srwi 4,8,11
	cmpwi 6,4,0
	or 10,10,6
	mr 11,10
	srdi 7,12,11
	beq- 6,.L2113
	cmplw 1,3,7
	li 11,1
	subf 9,7,3
	isel 0,0,11,4
	cmpwi 5,0,0
	rlwinm 7,9,0,0xffff
	li 6,0
	isel 3,3,7,22
	beq- 5,.L2157
	mr 6,4
.L2157:
	srwi 4,8,12
	cmpwi 7,4,0
	or 10,10,6
	mr 11,10
	srdi 9,12,12
	beq- 7,.L2113
	cmplw 0,3,9
	li 11,1
	subf 0,9,3
	isel 7,0,11,0
	cmpwi 6,7,0
	rlwinm 9,0,0,0xffff
	li 6,0
	isel 3,3,9,26
	beq- 6,.L2161
	mr 6,4
.L2161:
	srwi 4,8,13
	cmpwi 1,4,0
	or 10,10,6
	mr 11,10
	srdi 0,12,13
	beq- 1,.L2113
	cmplw 5,3,0
	li 11,1
	subf 7,0,3
	isel 9,0,11,20
	cmpwi 7,9,0
	rlwinm 0,7,0,0xffff
	li 6,0
	isel 3,3,0,30
	beq- 7,.L2165
	mr 6,4
.L2165:
	srwi 4,8,14
	cmpwi 0,4,0
	or 10,10,6
	mr 11,10
	srdi 7,12,14
	beq- 0,.L2113
	cmplw 6,3,7
	li 11,1
	subf 9,7,3
	isel 0,0,11,24
	cmpwi 1,0,0
	rlwinm 7,9,0,0xffff
	li 6,0
	isel 3,3,7,6
	beq- 1,.L2169
	mr 6,4
.L2169:
	cmpwi 5,8,16384
	or 8,10,6
	srdi 12,12,15
	mr 11,8
	beq- 5,.L2113
	cmplw 7,3,12
	li 10,1
	subf 4,12,3
	isel 11,0,10,28
	cmpwi 0,11,0
	rlwinm 9,4,0,0xffff
	or 11,8,11
	isel 3,3,9,2
	b .L2113
.L2185:
	li 8,4
	b .L2112
.L2187:
	li 8,8
	b .L2112
.L2189:
	li 8,16
	b .L2112
.L2199:
	li 8,512
	b .L2112
.L2191:
	li 8,32
	b .L2112
.L2193:
	li 8,64
	b .L2112
.L2195:
	li 8,128
	b .L2112
.L2197:
	li 8,256
	b .L2112
.L2275:
	cmpd 1,4,3
	li 9,0
	li 6,1
	isel 11,6,9,6
	cmpwi 5,11,0
	subf 0,4,3
	rlwinm 4,0,0,0xffff
	isel 3,3,4,22
	b .L2113
.L2201:
	li 8,1024
	b .L2112
.L2203:
	li 8,2048
	b .L2112
.L2205:
	li 8,4096
	b .L2112
.L2207:
	li 8,8192
	b .L2112
.L2209:
	li 8,16384
	b .L2112
.L2276:
	li 9,-1
	li 8,0
	cmplwi 7,3,32768
	rlwinm 12,9,0,16,16
	ori 8,8,0x8000
	b .L2112
.L2210:
	li 10,-1
	li 8,0
	cmplwi 7,3,32768
	rlwinm 12,10,0,16,16
	ori 8,8,0x8000
	b .L2112
.L2110:
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	li 11,1
	b .L2113
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
	li 10,64
	mtctr 10
	li 9,1
	blt+ 0,.L2278
	b .L2300
.L2282:
	sldi 4,4,1
	cmpld 6,3,4
	sldi 9,9,1
	ble- 6,.L2280
	bdz .L2281
.L2278:
	andis. 12,4,0x8000
	beq+ 0,.L2282
	cmpld 6,3,4
.L2283:
	li 12,0
	li 11,1
	li 6,0
	b .L2284
.L2303:
	cmpld 6,3,4
.L2284:
	isel 8,0,11,24
	cmpwi 5,8,0
	subf 10,4,3
	srdi 4,4,1
	isel 7,6,9,22
	srdi. 9,9,1
	or 12,12,7
	isel 3,3,10,22
	bne+ 0,.L2303
.L2281:
	cmpdi 1,5,0
	isel 3,12,3,6
	blr
.L2280:
	cmpdi 7,9,0
	bne+ 7,.L2283
	b .L2281
.L2300:
	isel 9,0,9,1
	rlwinm 0,9,0,0xff
	cmpwi 1,0,0
	subf 4,4,3
	rlwinm 12,9,0,0xff
	isel 3,3,4,6
	b .L2281
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
	mr 9,3
	beq- 0,.L2305
	addi 6,4,-32
	slw 5,3,6
	li 4,0
	sldi 7,5,32
	or 3,4,7
	blr
.L2305:
	cmpdi 1,4,0
	beqlr- 1
	subfic 10,4,32
	sradi 8,3,32
	srw 0,3,10
	slw 3,8,4
	or 5,0,3
	slw 4,9,4
	sldi 7,5,32
	or 3,4,7
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
	beq- 0,.L2311
	addi 5,5,-64
	sld 3,4,5
	li 4,0
	blr
.L2311:
	cmpdi 1,5,0
	beqlr- 1
	subfic 9,5,64
	srd 0,4,9
	sld 3,3,5
	or 3,0,3
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
	beq- 0,.L2316
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
.L2316:
	cmpdi 1,4,0
	beqlr- 1
	sradi 3,3,32
	subfic 10,4,32
	srw 0,9,4
	slw 5,3,10
	sraw 4,3,4
	or 6,5,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
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
	beq- 0,.L2322
	addi 5,5,-64
	srad 4,3,5
	sradi 3,3,63
	blr
.L2322:
	cmpdi 1,5,0
	beqlr- 1
	subfic 9,5,64
	sld 0,3,9
	srd 4,4,5
	or 4,0,4
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
	cmplwi 0,3,65535
	li 6,1
	li 5,0
	isel 0,0,6,1
	slwi 11,0,4
	subfic 9,11,16
	srw 3,3,9
	rlwinm 7,3,0,16,23
	cntlzw 4,7
	srwi 8,4,5
	slwi 12,8,3
	subfic 10,12,8
	srw 6,3,10
	rlwinm 0,6,0,24,27
	cntlzw 9,0
	srwi 3,9,5
	slwi 8,3,2
	subfic 7,8,4
	srw 6,6,7
	rlwinm 4,6,0,28,29
	cntlzw 10,4
	srwi 0,10,5
	slwi 3,0,1
	subfic 9,3,2
	srw 6,6,9
	andi. 4,6,0x2
	add 11,12,11
	add 12,8,11
	subfic 8,6,2
	add 7,3,12
	isel 5,8,5,2
	add 4,5,7
	extsw 3,4
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
	cmpdi 0,3,0
	subfic 9,3,0
	li 10,0
	subfe 9,9,9
	and 0,9,3
	isel 4,4,10,2
	cntlzd 3,3
	srdi 6,3,6
	or 5,0,4
	cntlzd 7,5
	sldi 8,6,6
	add 3,8,7
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
	blt- 0,.L2332
	li 0,2
	bgt- 0,.L2331
	cmplw 1,3,4
	li 0,0
	blt- 1,.L2331
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2331:
	rldicl 3,0,0,62
	blr
.L2332:
	li 0,0
	rldicl 3,0,0,62
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
	blt- 0,.L2338
	li 5,1
	bgt- 0,.L2337
	cmplw 7,3,4
	cmplw 1,3,4
	li 0,0
	isel 3,5,0,29
	li 4,-1
	isel 5,4,3,4
.L2337:
	extsw 3,5
	blr
.L2338:
	li 5,-1
	extsw 3,5
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
	blt- 0,.L2343
	li 0,2
	bgt- 0,.L2342
	cmpld 1,4,6
	li 0,0
	blt- 1,.L2342
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2342:
	rldicl 3,0,0,62
	blr
.L2343:
	li 0,0
	rldicl 3,0,0,62
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
	cntlzw 0,6
	srwi 4,0,5
	slwi 5,4,4
	srw 9,3,5
	rlwinm 7,9,0,24,31
	cntlzw 3,7
	srwi 8,3,5
	slwi 11,8,3
	srw 10,9,11
	rlwinm 12,10,0,28,31
	cntlzw 6,12
	srwi 0,6,5
	slwi 4,0,2
	srw 9,10,4
	rlwinm 7,9,0,30,31
	cntlzw 3,7
	srwi 8,3,5
	slwi 10,8,1
	srw 12,9,10
	rlwinm 6,12,0,30,31
	not 0,6
	add 5,11,5
	srwi 9,6,1
	rlwinm 11,0,0,31,31
	subfic 3,9,2
	add 4,4,5
	neg 7,11
	add 8,10,4
	and 10,7,3
	add 12,10,8
	extsw 3,12
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
	cmpdi 0,4,0
	subfic 9,4,0
	subfe 10,10,10
	li 9,0
	isel 0,3,9,2
	and 3,10,4
	or 5,0,3
	cntlzd 4,4
	srdi 6,4,6
	addi 7,5,-1
	sldi 8,6,6
	andc 11,7,5
	popcntd 12,11
	add 3,8,12
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
	bne- 0,.L2350
	cmpdi 1,3,0
	li 4,0
	bne- 1,.L2354
	rldicl 3,4,0,32
	blr
.L2350:
	addi 9,4,-1
	andc 0,9,4
	popcntd 3,0
	addi 4,3,1
	rldicl 3,4,0,32
	blr
.L2354:
	addi 5,3,-1
	andc 6,5,3
	popcntd 7,6
	addi 4,7,65
	rldicl 3,4,0,32
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
	beq- 0,.L2356
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
.L2356:
	cmpdi 1,4,0
	beqlr- 1
	srdi 3,3,32
	subfic 10,4,32
	srw 0,9,4
	slw 5,3,10
	srw 4,3,4
	or 6,5,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
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
	beq- 0,.L2362
	addi 5,5,-64
	srd 4,3,5
	li 3,0
	blr
.L2362:
	cmpdi 1,5,0
	beqlr- 1
	subfic 9,5,64
	sld 0,3,9
	srd 4,4,5
	or 4,0,4
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
	rlwinm 8,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 7,8,9
	srwi 3,3,16
	srwi 4,4,16
	mullw 0,9,3
	srwi 10,7,16
	mullw 5,8,4
	add 11,0,10
	rlwinm 6,11,0,0xffff
	srwi 12,11,16
	mullw 9,3,4
	add 8,5,6
	rlwimi 7,8,16,0,31-16
	srwi 4,8,16
	rldicl 3,7,0,32
	add 7,12,9
	add 0,7,4
	sldi 10,0,32
	or 3,3,10
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
	rlwinm 9,4,0,16,31
	rlwinm 8,3,0,16,31
	mullw 10,8,9
	srwi 7,3,16
	srwi 6,4,16
	sradi 11,4,32
	sradi 5,3,32
	mullw 12,9,7
	srwi 0,10,16
	mullw 8,8,6
	add 9,12,0
	rlwinm 12,9,0,0xffff
	srwi 0,9,16
	mullw 7,7,6
	add 8,8,12
	rlwimi 10,8,16,0,31-16
	rldicl 12,10,0,32
	srwi 6,8,16
	mullw 10,3,11
	add 3,0,7
	add 11,3,6
	sldi 9,11,32
	or 3,12,9
	sradi 0,3,32
	mullw 4,4,5
	add 5,10,0
	add 7,5,4
	rldimi 3,7,32,0
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
	srdi 0,8,32
	mulld 5,9,3
	srdi 7,4,32
	mulld 6,10,0
	add 11,5,7
	rldicl 12,11,0,32
	srdi 9,11,32
	mulld 3,3,0
	add 10,6,12
	srdi 8,10,32
	rldimi 4,10,32,0
	add 0,9,3
	add 3,0,8
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
	mr 10,4
	srdi 7,4,32
	srdi 11,6,32
	mulld 4,8,9
	mulld 12,9,7
	srdi 0,4,32
	mulld 8,8,11
	add 9,12,0
	rldicl 12,9,0,32
	srdi 0,9,32
	mulld 7,7,11
	add 8,8,12
	srdi 11,8,32
	rldimi 4,8,32,0
	mulld 5,10,5
	add 10,0,7
	add 9,10,11
	add 6,5,9
	add 3,6,3
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
	srwi 0,3,16
	xor 4,0,3
	srwi 5,4,8
	xor 6,5,4
	srwi 7,6,4
	xor 8,7,6
	rlwinm 10,8,0,28,31
	li 11,27030
	sraw 12,11,10
	rldicl 3,12,0,63
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
	xor 0,10,4
	srwi 9,0,16
	xor 3,9,0
	srwi 5,3,8
	xor 6,5,3
	srwi 7,6,4
	xor 8,7,6
	rlwinm 11,8,0,28,31
	li 12,27030
	sraw 4,12,11
	rldicl 3,4,0,63
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
	xor 0,9,3
	srwi 3,0,8
	xor 4,3,0
	srwi 5,4,4
	xor 6,5,4
	rlwinm 7,6,0,28,31
	li 8,27030
	sraw 10,8,7
	rldicl 3,10,0,63
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
	ori 0,10,0x5555
	srdi 9,3,1
	rldimi 0,0,32,0
	and 4,9,0
	lis 5,0x3333
	subf 3,4,3
	ori 6,5,0x3333
	srdi 8,3,2
	rldimi 6,6,32,0
	and 7,8,6
	and 11,3,6
	add 12,7,11
	lis 10,0xf0f
	srdi 0,12,4
	ori 4,10,0xf0f
	add 9,0,12
	rldimi 4,4,32,0
	and 5,9,4
	srdi 3,5,32
	add 6,3,5
	srwi 8,6,16
	add 7,8,6
	srwi 11,7,8
	add 12,11,7
	rldicl 3,12,0,57
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
	ori 0,10,0x5555
	and 4,9,0
	subf 3,4,3
	lis 5,0x3333
	ori 7,5,0x3333
	srwi 6,3,2
	and 8,6,7
	and 11,3,7
	add 12,8,11
	srwi 10,12,4
	lis 0,0xf0f
	add 9,10,12
	ori 4,0,0xf0f
	and 3,9,4
	srwi 5,3,16
	add 6,5,3
	srwi 7,6,8
	add 8,7,6
	rldicl 3,8,0,58
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
	std 31,-8(1)
	.cfi_offset 31, -8
	lis 31,0x5555
	std 30,-16(1)
	.cfi_offset 30, -16
	sldi 5,3,63
	srdi 7,4,1
	lis 30,0x5555
	ori 9,31,0x5555
	or 0,5,7
	ori 8,30,0x5555
	rldimi 9,9,32,0
	and 11,9,0
	srdi 6,3,1
	rldimi 8,8,32,0
	subfc 12,11,4
	and 10,8,6
	subfe 3,10,3
	lis 8,0x3333
	sldi 4,3,62
	srdi 5,12,2
	lis 6,0x3333
	ori 31,8,0x3333
	or 7,4,5
	rldimi 31,31,32,0
	ori 30,6,0x3333
	and 11,7,31
	srdi 0,3,2
	rldimi 30,30,32,0
	and 9,12,31
	addc 12,11,9
	and 10,0,30
	and 3,3,30
	adde 4,10,3
	srdi 5,12,4
	rldimi 5,4,60,0
	lis 30,0xf0f
	lis 31,0xf0f
	addc 7,5,12
	srdi 0,4,4
	ori 8,30,0xf0f
	ld 30,-16(1)
	ori 10,31,0xf0f
	ld 31,-8(1)
	adde 6,0,4
	rldimi 8,8,32,0
	rldimi 10,10,32,0
	and 3,7,10
	and 11,6,8
	add 9,11,3
	srdi 12,9,32
	add 4,12,9
	srwi 5,4,16
	add 7,5,4
	srwi 0,7,8
	add 6,0,7
	rlwinm 3,6,0,0xff
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,0,0,2,0,0
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
	addis 9,2,.LC31@toc@ha
	fmr 0,1
	lfs 12,.LC31@toc@l(9)
	andi. 9,4,0x1
	mr 3,4
	fmr 1,12
	beq- 0,.L2380
.L2382:
	fmul 1,1,0
.L2380:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq- 0,.L2381
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2382
.L2386:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2382
	b .L2386
.L2381:
	cmpwi 1,4,0
	bgelr+ 1
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
	addis 9,2,.LC31@toc@ha
	fmr 0,1
	lfs 12,.LC31@toc@l(9)
	andi. 9,4,0x1
	mr 3,4
	fmr 1,12
	beq- 0,.L2388
.L2390:
	fmuls 1,1,0
.L2388:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq- 0,.L2389
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2390
.L2394:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2390
	b .L2394
.L2389:
	cmpwi 1,4,0
	bgelr+ 1
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
	blt- 0,.L2397
	li 0,2
	bgt- 0,.L2396
	cmplw 1,3,4
	li 0,0
	blt- 1,.L2396
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2396:
	rldicl 3,0,0,62
	blr
.L2397:
	li 0,0
	rldicl 3,0,0,62
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
	blt- 0,.L2403
	li 5,1
	bgt- 0,.L2402
	cmplw 7,3,4
	cmplw 1,3,4
	li 0,0
	isel 3,5,0,29
	li 4,-1
	isel 5,4,3,4
.L2402:
	extsw 3,5
	blr
.L2403:
	li 5,-1
	extsw 3,5
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
	blt- 0,.L2408
	li 0,2
	bgt- 0,.L2407
	cmpld 1,4,6
	li 0,0
	blt- 1,.L2407
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2407:
	rldicl 3,0,0,62
	blr
.L2408:
	li 0,0
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC0:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.long	-8388609
	.align 2
.LC3:
	.long	2139095039
	.set	.LC6,.LC10
	.set	.LC7,.LC11
	.section	.rodata.cst16
	.align 4
.LC10:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC11:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.set	.LC14,.LC22
	.section	.rodata.cst4
	.align 2
.LC15:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC22:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC23:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC27:
	.long	-1082130432
	.align 2
.LC29:
	.long	-1090519040
	.align 2
.LC31:
	.long	1065353216
	.align 2
.LC36:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC38:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC39:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC40:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC41:
	.long	12
	.long	13
	.long	14
	.long	15
	.section	.rodata
	.align 4
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
