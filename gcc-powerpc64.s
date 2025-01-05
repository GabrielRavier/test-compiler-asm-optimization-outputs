	.file	"mini-libc.c"
	.machine power7
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	ble- 0,.L5
	cmpdi 6,5,0
	add 4,4,5
	add 9,3,5
	beq- 6,.L6
	andi. 10,5,0x1
	addi 7,5,-1
	beq- 0,.L69
	cmpdi 7,7,0
	lbzu 11,-1(4)
	stbu 11,-1(9)
	beq- 7,.L6
.L69:
	srdi 10,5,1
	cmpdi 1,10,2
	mtctr 10
	ble 1,.L107
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L7:
	lbz 7,-2(8)
	stb 7,-2(10)
	addi 8,8,-2
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L7
.L6:
	lwz 4,-4(1)
	mtvrsave 4
	blr
.L5:
	beq- 0,.L6
	cmpdi 1,5,0
	beq- 1,.L6
	addi 7,5,-1
	cmpldi 5,7,29
	mr 9,7
	ble- 5,.L8
	addi 6,4,1
	subf 10,6,3
	cmpldi 6,10,14
	ble- 6,.L8
	neg 12,3
	andi. 9,12,0xf
	beq- 0,.L30
	andi. 8,12,0xe
	lbz 8,0(4)
	addi 11,3,1
	stb 8,0(3)
	beq- 0,.L9
	cmpldi 7,9,2
	lbz 0,1(4)
	addi 6,4,2
	stb 0,1(3)
	addi 11,3,2
	addi 7,5,-2
	ble- 7,.L9
	andi. 8,12,0xc
	lbz 10,2(4)
	addi 6,4,3
	stb 10,2(3)
	addi 11,3,3
	addi 7,5,-3
	beq- 0,.L9
	cmpldi 1,9,4
	lbz 8,3(4)
	addi 6,4,4
	stb 8,3(3)
	addi 11,3,4
	addi 7,5,-4
	ble- 1,.L9
	cmpldi 5,9,5
	lbz 0,4(4)
	addi 6,4,5
	stb 0,4(3)
	addi 11,3,5
	addi 7,5,-5
	beq- 5,.L9
	cmpldi 6,9,6
	lbz 10,5(4)
	addi 6,4,6
	stb 10,5(3)
	addi 11,3,6
	addi 7,5,-6
	beq- 6,.L9
	andi. 10,12,0x8
	lbz 12,6(4)
	addi 6,4,7
	stb 12,6(3)
	addi 11,3,7
	addi 7,5,-7
	beq- 0,.L9
	cmpldi 7,9,8
	lbz 8,7(4)
	addi 6,4,8
	stb 8,7(3)
	addi 11,3,8
	addi 7,5,-8
	ble- 7,.L9
	cmpldi 1,9,9
	lbz 0,8(4)
	addi 6,4,9
	stb 0,8(3)
	addi 11,3,9
	addi 7,5,-9
	beq- 1,.L9
	cmpldi 5,9,10
	lbz 10,9(4)
	addi 6,4,10
	stb 10,9(3)
	addi 11,3,10
	addi 7,5,-10
	beq- 5,.L9
	cmpldi 6,9,11
	lbz 12,10(4)
	addi 6,4,11
	stb 12,10(3)
	addi 11,3,11
	addi 7,5,-11
	beq- 6,.L9
	cmpldi 0,9,12
	lbz 8,11(4)
	addi 6,4,12
	stb 8,11(3)
	addi 11,3,12
	addi 7,5,-12
	beq- 0,.L9
	cmpldi 7,9,13
	lbz 0,12(4)
	addi 6,4,13
	stb 0,12(3)
	addi 11,3,13
	addi 7,5,-13
	beq- 7,.L9
	cmpldi 1,9,15
	lbz 10,13(4)
	addi 6,4,14
	stb 10,13(3)
	addi 11,3,14
	addi 7,5,-14
	bne- 1,.L9
	lbz 7,14(4)
	addi 6,4,15
	addi 11,3,15
	stb 7,14(3)
	addi 7,5,-15
.L9:
	subf 5,9,5
	lvx 0,4,9
	srdi 10,5,4
	andi. 8,10,0x1
	add 12,4,9
	neg 8,12
	addi 0,9,15
	lvsr 13,0,8
	addi 12,10,-1
	add 4,4,0
	add 9,3,9
	li 8,0
	bne- 0,.L112
.L75:
	srdi 10,10,1
	mtctr 10
.L25:
	addi 0,8,16
	lvx 1,4,8
	vperm 0,0,1,13
	stvx 0,9,8
	addi 8,8,32
	lvx 0,4,0
	vperm 1,1,0,13
	stvx 1,9,0
	bdnz .L25
.L100:
	andi. 9,5,0xf
	rldicr 5,5,0,59
	subf 7,5,7
	add 12,6,5
	add 4,11,5
	beq- 0,.L6
	cmpldi 6,7,1
	lbzx 6,6,5
	stbx 6,11,5
	beq- 6,.L6
	cmpldi 7,7,2
	lbz 11,1(12)
	stb 11,1(4)
	beq- 7,.L6
	cmpldi 1,7,3
	lbz 9,2(12)
	stb 9,2(4)
	beq- 1,.L6
	cmpldi 5,7,4
	lbz 8,3(12)
	stb 8,3(4)
	beq- 5,.L6
	cmpldi 0,7,5
	lbz 10,4(12)
	stb 10,4(4)
	beq- 0,.L6
	cmpldi 6,7,6
	lbz 0,5(12)
	stb 0,5(4)
	beq- 6,.L6
	cmpldi 7,7,7
	lbz 5,6(12)
	stb 5,6(4)
	beq- 7,.L6
	cmpldi 1,7,8
	lbz 6,7(12)
	stb 6,7(4)
	beq- 1,.L6
	cmpldi 5,7,9
	lbz 11,8(12)
	stb 11,8(4)
	beq- 5,.L6
	cmpldi 0,7,10
	lbz 9,9(12)
	stb 9,9(4)
	beq- 0,.L6
	cmpldi 6,7,11
	lbz 8,10(12)
	stb 8,10(4)
	beq- 6,.L6
	cmpldi 7,7,12
	lbz 10,11(12)
	stb 10,11(4)
	beq- 7,.L6
	cmpldi 1,7,13
	lbz 0,12(12)
	stb 0,12(4)
	beq- 1,.L6
	cmpldi 5,7,14
	lbz 7,13(12)
	stb 7,13(4)
	beq- 5,.L6
	lbz 12,14(12)
	stb 12,14(4)
	b .L6
.L107:
	lbz 5,-1(4)
	mr 6,4
	mr 8,9
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 10,-2(6)
	stb 10,-2(8)
	bdz .L6
	lbz 5,-1(4)
	mr 6,4
	mr 8,9
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 10,-2(6)
	stb 10,-2(8)
	bdnz .L107
	b .L6
.L112:
	cmpdi 5,12,0
	vor 1,0,0
	lvx 0,0,4
	li 8,16
	vperm 1,1,0,13
	stvx 1,0,9
	bne+ 5,.L75
	b .L100
.L8:
	andi. 10,9,0x1
	addi 5,4,-1
	addi 11,3,-1
	bne- 0,.L113
.L72:
	srdi 6,9,1
	addi 9,6,1
	mtctr 9
	b .L28
.L114:
	lbz 0,1(10)
	addi 5,5,2
	addi 11,11,2
	stb 0,1(12)
.L28:
	lbz 8,1(5)
	addi 10,5,1
	addi 12,11,1
	stb 8,1(11)
	bdnz .L114
	b .L6
.L113:
	mr 5,4
	lbz 4,0(4)
	mr 11,3
	stb 4,0(3)
	b .L72
.L30:
	mr 6,4
	mr 11,3
	mr 7,5
	b .L9
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
	beq- 0,.L116
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L137
.L126:
	srdi 0,6,1
	mtctr 0
	b .L117
.L119:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L134
	addi 3,3,1
	bdz .L116
.L117:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L119
.L134:
	addi 3,3,1
	blr
.L137:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L134
	cmpdi 5,8,0
	addi 3,3,1
	bne+ 5,.L126
.L116:
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
	beq- 0,.L142
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L159
.L145:
	srdi 0,5,1
	mtctr 0
.L139:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L139
.L142:
	li 3,0
	blr
.L159:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpdi 5,9,0
	addi 3,3,1
	bne+ 5,.L145
	b .L142
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
	beq- 0,.L165
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L182
.L168:
	srdi 0,5,1
	mtctr 0
	b .L161
.L163:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L177
	bdz .L165
.L161:
	lbz 10,0(3)
	addi 7,3,1
	lbz 9,0(4)
	addi 5,4,1
	cmpw 6,10,9
	beq+ 6,.L163
.L177:
	subf 3,9,10
	extsw 3,3
	blr
.L182:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L177
	cmpdi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L168
.L165:
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
	beq- 0,.L184
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L184:
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
	beq- 0,.L194
	lbz 8,0(11)
	mr 3,11
	addi 11,11,-1
	cmpw 1,8,4
	beqlr- 1
.L194:
	srdi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L202
.L192:
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
	bdnz .L192
.L202:
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
	beq- 0,.L206
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
.L206:
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
.L210:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L210
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
.L221:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L221
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
.L224:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L224
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
	beq+ 0,.L229
	b .L228
.L230:
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 5,9,10
	bne- 5,.L228
.L229:
	cmpwi 1,9,0
	bne+ 1,.L230
.L228:
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
	beq- 0,.L238
	mr 4,3
.L237:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L237
	subf 3,3,4
	blr
.L238:
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
	beq- 0,.L248
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L244
	b .L253
.L255:
	bdz .L243
	bne- 7,.L243
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L254
	mr 4,8
.L244:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L255
.L243:
	subf 3,7,10
	extsw 3,3
	blr
.L248:
	li 3,0
	extsw 3,3
	blr
.L254:
	lbz 7,1(4)
	b .L243
.L253:
	lbz 7,0(4)
	b .L243
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
	oris 0,11,0xc01c
	stw 11,-4(1)
	mtvrsave 0
	cmpdi 0,5,1
	ble- 0,.L256
	addi 9,5,-2
	cmpldi 1,9,13
	ble- 1,.L258
	andi. 9,4,0xf
	bne- 0,.L258
	srdi 10,5,4
	lvx 1,0,3
	cmpdi 5,10,2
	mtctr 10
	addis 8,2,.LC0@toc@ha
	addi 12,8,.LC0@toc@l
	neg 6,3
	lvx 12,0,12
	srdi 7,5,1
	lvsr 11,0,6
	li 9,0
	addi 8,3,15
	ble 5,.L273
	addi 6,10,-1
	mtctr 6
	vor 13,1,1
.L259:
	lvx 1,8,9
	vperm 0,13,1,11
	vor 13,1,1
	vperm 0,0,0,12
	stvx 0,4,9
	addi 9,9,16
	bdnz .L259
	lvx 1,8,9
	vperm 0,13,1,11
	vperm 0,0,0,12
	stvx 0,4,9
.L274:
	sldi 11,10,3
	cmpld 6,7,11
	sldi 0,10,4
	subf 5,0,5
	add 8,4,0
	add 7,3,0
	beq- 6,.L256
	cmpdi 7,5,3
	lhbrx 3,3,0
	sthx 3,4,0
	ble- 7,.L256
	addi 4,7,2
	cmpdi 1,5,5
	lhbrx 9,0,4
	sth 9,2(8)
	ble- 1,.L256
	addi 6,7,4
	cmpdi 0,5,7
	lhbrx 12,0,6
	sth 12,4(8)
	ble- 0,.L256
	addi 11,7,6
	cmpdi 5,5,9
	lhbrx 0,0,11
	sth 0,6(8)
	ble- 5,.L256
	addi 10,7,8
	cmpdi 6,5,11
	lhbrx 3,0,10
	sth 3,8(8)
	ble- 6,.L256
	cmpdi 7,5,13
	addi 5,7,10
	lhbrx 4,0,5
	sth 4,10(8)
	ble- 7,.L256
	addi 7,7,12
	lhbrx 9,0,7
	sth 9,12(8)
.L256:
	lwz 3,-4(1)
	mtvrsave 3
	blr
.L273:
	vor 13,1,1
	lvx 1,8,9
	vperm 0,13,1,11
	vperm 13,0,0,12
	stvx 13,4,9
	addi 9,9,16
	bdz .L274
	vor 13,1,1
	lvx 1,8,9
	vperm 0,13,1,11
	vperm 13,0,0,12
	stvx 13,4,9
	addi 9,9,16
	bdnz .L273
	b .L274
.L258:
	srdi 8,5,1
	andi. 9,8,0x1
	addi 6,8,-1
	beq- 0,.L266
	cmpdi 1,6,0
	lbz 12,1(3)
	lbz 11,0(3)
	addi 4,4,2
	stb 12,-2(4)
	addi 3,3,2
	stb 11,-1(4)
	beq- 1,.L256
.L266:
	srdi 0,8,1
	mtctr 0
.L261:
	lbz 10,1(3)
	mr 9,4
	lbz 5,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 5,-2(4)
	stb 10,-4(4)
	stb 7,-3(4)
	stb 8,3(9)
	bdnz .L261
	b .L256
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
	rldicl 4,0,0,32
	subfic 5,4,25
	srdi 6,5,63
	xori 3,6,0x1
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
	subfic 0,3,127
	srdi 4,0,63
	xori 3,4,0x1
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
	beq- 0,.L283
	xori 3,3,0x9
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
.L283:
	li 4,1
	rldicl 3,4,0,63
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
	ble- 0,.L286
	xori 3,3,0x7f
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
.L286:
	li 4,1
	rldicl 3,4,0,63
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
	rldicl 0,3,0,32
	subfic 4,0,9
	srdi 5,4,63
	xori 3,5,0x1
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
	rldicl 0,3,0,32
	subfic 4,0,93
	srdi 5,4,63
	xori 3,5,0x1
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
	rldicl 0,3,0,32
	subfic 4,0,25
	srdi 5,4,63
	xori 3,5,0x1
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
	rldicl 0,3,0,32
	subfic 4,0,94
	srdi 5,4,63
	xori 3,5,0x1
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
	beq- 0,.L293
	addi 3,3,-9
	rldicl 0,3,0,32
	subfic 4,0,4
	srdi 5,4,63
	xori 6,5,0x1
	rldicl 3,6,0,63
	blr
.L293:
	li 6,1
	rldicl 3,6,0,63
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
	rldicl 0,3,0,32
	subfic 4,0,25
	srdi 5,4,63
	xori 3,5,0x1
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
	li 7,1
	ble- 0,.L296
	addi 9,3,-127
	cmplwi 1,9,32
	li 7,1
	bgt- 1,.L300
.L296:
	rldicl 3,7,0,63
	blr
.L300:
	addi 10,3,-8232
	cmplwi 5,10,1
	ble- 5,.L296
	addis 3,3,0xffff
	addi 0,3,7
	rldicl 4,0,0,32
	subfic 5,4,2
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
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
	rldicl 0,3,0,32
	subfic 4,0,9
	srdi 5,4,63
	xori 3,5,0x1
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
	ble- 0,.L309
	cmplwi 1,3,8231
	li 12,1
	ble- 1,.L304
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble- 5,.L304
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble- 6,.L304
	lis 9,0x10
	addi 0,4,4
	ori 5,9,0x3
	cmplw 7,0,5
	li 12,0
	bgt- 7,.L304
	rlwinm 3,3,0,16,30
	xori 6,3,0xfffe
	cntlzw 7,6
	srwi 11,7,5
	xori 12,11,0x1
.L304:
	rldicl 3,12,0,63
	blr
.L309:
	addi 10,3,1
	rldicl 4,10,0,57
	subfic 8,4,32
	srdi 12,8,63
	rldicl 3,12,0,63
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
	ble- 0,.L312
	ori 3,3,0x20
	addi 0,3,-97
	rldicl 4,0,0,32
	subfic 5,4,5
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
	blr
.L312:
	li 7,1
	rldicl 3,7,0,63
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
	bun- 1,.L318
	fcmpu 5,1,2
	bng- 5,.L321
	fsub 1,1,2
	blr
.L321:
	addis 9,2,.LC3@toc@ha
	lfs 1,.LC3@toc@l(9)
	blr
.L318:
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
	bun- 1,.L326
	fcmpu 5,1,2
	bng- 5,.L329
	fsubs 1,1,2
	blr
.L329:
	addis 9,2,.LC3@toc@ha
	lfs 1,.LC3@toc@l(9)
	blr
.L326:
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
	bun- 0,.L335
	fcmpu 1,2,2
	bun- 1,.L336
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L332
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L336:
	fmr 1,0
	blr
.L332:
	fcmpu 6,1,2
	bnllr- 6
.L335:
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
	bun- 0,.L344
	fcmpu 1,2,2
	bun- 1,.L345
	addi 9,1,-16
	stfiwx 1,0,9
	addi 10,1,-16
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 4,0,0,0,0
	lwz 3,-16(1)
	rlwinm 5,3,0,0,0
	cmpw 5,4,5
	beq- 5,.L341
	cmpwi 7,4,0
	fmr 1,2
	bnelr- 7
.L345:
	fmr 1,0
	blr
.L341:
	fcmpu 6,1,2
	bnllr- 6
.L344:
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
	bun- 0,.L355
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stfd 0,-16(1)
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L350
	cmpwi 7,0,0
	beqlr- 7
.L355:
	fmr 1,3
	fmr 2,4
	blr
.L350:
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bnllr- 6
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
	bun- 0,.L362
	fcmpu 1,2,2
	bunlr- 1
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L366
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L361
	fmr 0,1
.L361:
	fmr 1,0
	blr
.L366:
	cmpwi 7,0,0
	bnelr- 7
.L362:
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
	bun- 0,.L372
	fcmpu 1,2,2
	bunlr- 1
	addi 9,1,-16
	stfiwx 1,0,9
	addi 10,1,-16
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 4,0,0,0,0
	lwz 3,-16(1)
	rlwinm 5,3,0,0,0
	cmpw 5,4,5
	bne- 5,.L376
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L371
	fmr 0,1
.L371:
	fmr 1,0
	blr
.L376:
	cmpwi 7,4,0
	bnelr- 7
.L372:
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
	bun- 0,.L382
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stfd 0,-16(1)
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L379
	cmpwi 7,0,0
	bnelr- 7
.L382:
	fmr 1,3
	fmr 2,4
	blr
.L379:
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bltlr- 6
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
	beq- 0,.L386
	addis 7,2,.LANCHOR1@toc@ha
	addi 4,7,.LANCHOR1@toc@l
.L387:
	rldicl 8,9,0,58
	srwi 9,9,6
	lbzx 0,4,8
	cmpwi 1,9,0
	stb 0,0(10)
	addi 10,10,1
	bne+ 1,.L387
.L386:
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
	beq- 0,.L398
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ld 4,0(3)
	cmpdi 1,4,0
	beqlr- 1
	std 3,8(4)
	blr
.L398:
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
	beq- 0,.L400
	ld 10,8(3)
	std 10,8(9)
.L400:
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
	beq- 0,.L409
	std 29,168(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,176(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,184(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L411
.L423:
	beq- 7,.L422
.L411:
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
	bne+ 1,.L423
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L408:
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
.L422:
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
.L409:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq- 5,.L408
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
	beq- 0,.L425
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
	b .L427
.L435:
	beq- 7,.L434
.L427:
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
	bne+ 1,.L435
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
.L434:
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
.L425:
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
.L444:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L438
	ble- 7,.L438
	cmpwi 1,10,43
	beq- 1,.L439
	cmpwi 6,10,45
	bne- 6,.L459
	lbz 10,1(3)
	addi 8,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L449
	li 5,1
.L442:
	li 11,0
.L446:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 12,11,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 9,12,11
	slwi 0,9,1
	subf 11,7,0
	ble+ 1,.L446
	cmpwi 5,5,0
	bne- 5,.L445
	subf 11,0,7
.L445:
	extsw 3,11
	blr
.L438:
	addi 3,3,1
	b .L444
.L459:
	addi 4,10,-48
	cmplwi 7,4,9
	mr 8,3
	li 5,0
	ble+ 7,.L442
.L449:
	li 11,0
	b .L445
.L439:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L442
	li 11,0
	b .L445
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
.L467:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L461
	ble- 7,.L461
	cmpwi 1,10,43
	beq- 1,.L462
	cmpwi 6,10,45
	bne- 6,.L482
	lbz 10,1(3)
	addi 7,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L472
	li 5,1
.L465:
	li 3,0
.L469:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 11,3,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 12,11,3
	extsw 0,8
	sldi 9,12,1
	subf 3,0,9
	ble+ 1,.L469
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,0
	blr
.L461:
	addi 3,3,1
	b .L467
.L482:
	addi 4,10,-48
	cmplwi 7,4,9
	mr 7,3
	li 5,0
	ble+ 7,.L465
.L472:
	li 3,0
	blr
.L462:
	lbz 10,1(3)
	addi 7,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L465
	b .L472
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
.L488:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L484
	ble- 7,.L484
	cmpwi 1,10,43
	beq- 1,.L485
	cmpwi 6,10,45
	beq- 6,.L486
	addi 4,10,-48
	cmplwi 7,4,9
	mr 7,3
	li 5,0
	bgt- 7,.L495
.L489:
	li 3,0
.L492:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 11,3,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 12,11,3
	extsw 0,8
	sldi 9,12,1
	subf 3,0,9
	ble+ 1,.L492
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,0
	blr
.L484:
	addi 3,3,1
	b .L488
.L486:
	lbz 10,1(3)
	addi 7,3,1
	li 5,1
	addi 3,10,-48
	cmplwi 0,3,9
	ble+ 0,.L489
.L495:
	li 3,0
	blr
.L485:
	lbz 10,1(3)
	addi 7,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L495
	li 5,0
	b .L489
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
	beq- 0,.L506
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
	b .L509
.L518:
	beq- 1,.L516
	cmpdi 5,31,0
	add 27,30,26
	beq- 5,.L517
.L509:
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
	bge+ 1,.L518
	mr 31,29
	cmpdi 5,31,0
	bne+ 5,.L509
.L517:
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
.L506:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 31,-8(1)
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L516:
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
	beq- 0,.L524
	mflr 0
	.cfi_register 65, 0
	std 2,40(1)
	std 0,192(1)
	.cfi_offset 65, 16
	std 28,144(1)
	.cfi_offset 28, -32
.L529:
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
	beq- 1,.L533
	cmpwi 5,28,0
	ble- 1,.L522
	add 27,30,26
	bne+ 7,.L529
.L534:
	ld 3,192(1)
	ld 28,144(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L524:
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
.L522:
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
	bne+ 5,.L529
	b .L534
.L533:
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
	beq- 0,.L546
.L543:
	cmpw 1,9,4
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L543
.L546:
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
	beq+ 0,.L553
	b .L552
.L554:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L552
.L553:
	cmpwi 7,9,0
	bne+ 7,.L554
.L552:
	li 5,-1
	blt- 0,.L555
	extsw 0,9
	extsw 3,10
	subf 4,0,3
	srdi 5,4,63
.L555:
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
.L558:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L558
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
	beq- 0,.L564
	mr 4,3
.L563:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L563
	subf 3,3,4
	sradi 3,3,2
	blr
.L564:
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
	beq- 0,.L576
	mtctr 5
	b .L567
.L579:
	beq- 7,.L569
	addi 3,3,4
	addi 4,4,4
	bdz .L576
.L567:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L579
.L569:
	lwz 3,0(3)
	lwz 0,0(4)
	cmpw 5,3,0
	bge- 5,.L571
	li 4,-1
	extsw 3,4
	blr
.L571:
	extsw 5,3
	extsw 6,0
	subf 7,5,6
	srdi 4,7,63
	extsw 3,4
	blr
.L576:
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
	beq- 0,.L584
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L601
.L587:
	srdi 0,5,1
	mtctr 0
.L581:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L581
.L584:
	li 3,0
	blr
.L601:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpdi 5,9,0
	addi 3,3,4
	bne+ 5,.L587
	b .L584
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
	beq- 0,.L608
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L625
.L611:
	srdi 0,5,1
	mtctr 0
	b .L603
.L605:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,5,4
	cmpw 1,9,10
	bne- 1,.L620
	bdz .L608
.L603:
	lwz 9,0(3)
	addi 7,3,4
	lwz 10,0(4)
	addi 5,4,4
	cmpw 1,9,10
	beq+ 1,.L605
.L620:
	blt- 1,.L626
	extsw 4,9
	extsw 6,10
	subf 11,4,6
	srdi 3,11,63
	extsw 3,3
	blr
.L625:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne- 1,.L620
	cmpdi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L611
.L608:
	li 3,0
	extsw 3,3
	blr
.L626:
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
	beq- 0,.L628
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
.L628:
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	beq- 0,.L654
	sldi 9,5,2
	subf 10,4,3
	cmpld 1,10,9
	blt- 1,.L635
	cmpdi 5,5,0
	beq- 5,.L654
	addi 7,5,-1
	cmpldi 6,7,10
	mr 12,7
	ble- 6,.L639
	addi 6,4,4
	subf 8,6,3
	cmpldi 7,8,8
	ble- 7,.L639
	srdi 11,3,2
	neg 0,11
	andi. 10,0,0x3
	beq- 0,.L649
	andi. 9,0,0x2
	lwz 9,0(4)
	addi 11,3,4
	stw 9,0(3)
	addi 7,5,-2
	beq- 0,.L640
	cmpldi 1,10,3
	lwz 7,4(4)
	stw 7,4(3)
	bne- 1,.L694
	lwz 12,8(4)
	addi 6,4,12
	addi 11,3,12
	stw 12,8(3)
	addi 7,5,-4
.L640:
	subf 5,10,5
	srdi 9,5,2
	sldi 10,10,2
	andi. 8,9,0x1
	lvx 0,4,10
	add 8,4,10
	neg 12,8
	addi 0,10,15
	lvsr 13,0,12
	add 4,4,0
	addi 12,9,-1
	add 10,3,10
	li 8,0
	bne- 0,.L695
.L669:
	srdi 9,9,1
	mtctr 9
.L644:
	addi 0,8,16
	lvx 1,4,8
	vperm 0,0,1,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,4,0
	vperm 1,1,0,13
	stvx 1,10,0
	bdnz .L644
.L681:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	sldi 12,5,2
	subf 4,5,7
	add 8,6,12
	add 10,11,12
	beq- 0,.L654
	cmpdi 6,4,0
	lwzx 6,6,12
	stwx 6,11,12
	beq- 6,.L654
	cmpldi 7,4,1
	lwz 11,4(8)
	stw 11,4(10)
	beq- 7,.L654
	lwz 7,8(8)
	stw 7,8(10)
.L654:
	lwz 9,-4(1)
	mtvrsave 9
	blr
.L635:
	cmpdi 1,5,0
	beq- 1,.L654
	andi. 10,5,0x1
	add 4,4,9
	addi 7,5,-1
	add 9,3,9
	bne- 0,.L696
.L663:
	srdi 10,5,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L688
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L638:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L638
	lwz 9,-4(1)
	mtvrsave 9
	blr
.L688:
	lwz 5,-4(4)
	mr 12,4
	mr 10,9
	stw 5,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 0,-8(12)
	stw 0,-8(10)
	bdz .L654
	lwz 5,-4(4)
	mr 12,4
	mr 10,9
	stw 5,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 0,-8(12)
	stw 0,-8(10)
	bdnz .L688
	b .L654
.L696:
	cmpdi 5,7,0
	lwzu 8,-4(4)
	stwu 8,-4(9)
	bne+ 5,.L663
	b .L654
.L695:
	cmpdi 5,12,0
	vor 1,0,0
	lvx 0,0,4
	li 8,16
	vperm 1,1,0,13
	stvx 1,0,10
	bne+ 5,.L669
	b .L681
.L649:
	mr 6,4
	mr 11,3
	b .L640
.L639:
	andi. 10,12,0x1
	addi 5,4,-4
	addi 8,3,-4
	bne- 0,.L697
.L666:
	srdi 12,12,1
	addi 0,12,1
	mtctr 0
	b .L647
.L698:
	lwz 11,4(10)
	addi 5,5,8
	addi 8,8,8
	stw 11,4(6)
.L647:
	lwz 4,4(5)
	addi 10,5,4
	addi 6,8,4
	stw 4,4(8)
	bdnz .L698
	b .L654
.L697:
	lwz 9,0(4)
	mr 5,4
	mr 8,3
	stw 9,0(3)
	b .L666
.L694:
	addi 6,4,8
	addi 11,3,8
	addi 7,5,-3
	b .L640
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
	addi 8,5,-1
	cmpldi 1,8,5
	srdi 10,3,2
	neg 0,10
	rldicl 9,0,0,62
	ble- 1,.L708
	mfvrsave 11
	oris 6,11,0x8000
	stw 11,-4(1)
	mtvrsave 6
	cmpdi 5,9,0
	mr 6,3
	beq- 5,.L702
	andi. 10,0,0x2
	stw 4,0(3)
	addi 6,3,4
	addi 8,5,-2
	beq- 0,.L702
	cmpldi 6,9,3
	stw 4,4(3)
	addi 6,3,8
	addi 8,5,-3
	bne- 6,.L702
	stw 4,8(3)
	addi 6,3,12
	addi 8,5,-4
.L702:
	subf 5,9,5
	stw 4,-32(1)
	srdi 7,5,2
	andi. 11,7,0x3
	sldi 12,9,2
	li 10,48
	add 9,3,12
	addi 12,1,-80
	lvewx 0,12,10
	addi 0,7,-1
	vspltw 0,0,0
	mr 10,7
	beq- 0,.L730
	cmpdi 7,11,1
	beq- 7,.L734
	cmpdi 1,11,2
	beq- 1,.L735
	stvx 0,0,9
	mr 7,0
	addi 9,9,16
.L735:
	stvx 0,0,9
	addi 7,7,-1
	addi 9,9,16
.L734:
	cmpdi 5,7,1
	stvx 0,0,9
	addi 9,9,16
	beq- 5,.L748
.L730:
	srdi 10,10,2
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L753
	addi 10,10,-1
	mtctr 10
	addi 7,9,48
.L706:
	stvx 0,0,9
	addi 10,9,16
	stvx 0,0,10
	addi 11,9,32
	stvx 0,0,11
	stvx 0,0,7
	addi 9,9,64
	addi 7,9,48
	bdnz .L706
	stvx 0,0,9
	addi 10,9,16
	stvx 0,0,10
	addi 11,9,32
	stvx 0,0,11
	stvx 0,0,7
.L748:
	andi. 9,5,0x3
	beq- 0,.L700
	rldicr 5,5,0,61
	subf 8,5,8
	cmpdi 7,8,0
	sldi 9,5,2
	add 6,6,9
	stw 4,0(6)
	beq- 7,.L700
	cmpldi 1,8,1
	stw 4,4(6)
	beq- 1,.L700
	cmpldi 5,8,2
	stw 4,8(6)
	beq- 5,.L700
	cmpldi 6,8,3
	stw 4,12(6)
	beq- 6,.L700
	cmpldi 0,8,4
	stw 4,16(6)
	beq- 0,.L700
	stw 4,20(6)
.L700:
	lwz 4,-4(1)
	mtvrsave 4
	blr
.L753:
	addi 12,9,16
	stvx 0,0,9
	addi 11,9,32
	stvx 0,0,12
	addi 10,9,48
	stvx 0,0,11
	addi 9,9,64
	stvx 0,0,10
	bdz .L748
	addi 12,9,16
	stvx 0,0,9
	addi 11,9,32
	stvx 0,0,12
	addi 10,9,48
	stvx 0,0,11
	addi 9,9,64
	stvx 0,0,10
	bdnz .L753
	b .L748
.L708:
	cmpdi 5,8,0
	stw 4,0(3)
	beqlr- 5
	cmpldi 6,8,1
	stw 4,4(3)
	beqlr- 6
	cmpldi 7,8,2
	stw 4,8(3)
	beqlr- 7
	cmpldi 0,8,3
	stw 4,12(3)
	beqlr- 0
	cmpldi 1,8,4
	stw 4,16(3)
	beqlr- 1
	stw 4,20(3)
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	bge- 0,.L767
	cmpdi 6,5,0
	add 3,3,5
	add 4,4,5
	beq- 6,.L766
	andi. 9,5,0x1
	addi 0,5,-1
	beq- 0,.L831
	cmpdi 7,0,0
	lbzu 8,-1(3)
	stbu 8,-1(4)
	beq- 7,.L766
.L831:
	srdi 9,5,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L869
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L769:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L769
.L766:
	lwz 4,-4(1)
	mtvrsave 4
	blr
.L767:
	beq- 0,.L766
	cmpdi 1,5,0
	beq- 1,.L766
	addi 8,5,-1
	cmpldi 5,8,29
	mr 9,8
	ble- 5,.L770
	addi 7,3,1
	subf 10,7,4
	cmpldi 6,10,14
	ble- 6,.L770
	neg 12,4
	andi. 10,12,0xf
	beq- 0,.L792
	andi. 6,12,0xe
	lbz 6,0(3)
	addi 11,4,1
	stb 6,0(4)
	beq- 0,.L771
	cmpldi 7,10,2
	lbz 0,1(3)
	stb 0,1(4)
	ble- 7,.L874
	andi. 8,12,0xc
	lbz 9,2(3)
	stb 9,2(4)
	beq- 0,.L875
	cmpldi 1,10,4
	lbz 11,3(3)
	stb 11,3(4)
	ble- 1,.L876
	cmpldi 5,10,5
	lbz 7,4(3)
	stb 7,4(4)
	beq- 5,.L877
	cmpldi 6,10,6
	lbz 8,5(3)
	stb 8,5(4)
	beq- 6,.L878
	andi. 9,12,0x8
	lbz 12,6(3)
	addi 7,3,7
	stb 12,6(4)
	addi 11,4,7
	addi 8,5,-7
	beq- 0,.L771
	cmpldi 7,10,8
	lbz 6,7(3)
	addi 7,3,8
	stb 6,7(4)
	addi 11,4,8
	addi 8,5,-8
	ble- 7,.L771
	cmpldi 1,10,9
	lbz 0,8(3)
	addi 7,3,9
	stb 0,8(4)
	addi 11,4,9
	addi 8,5,-9
	beq- 1,.L771
	cmpldi 5,10,10
	lbz 9,9(3)
	addi 7,3,10
	stb 9,9(4)
	addi 11,4,10
	addi 8,5,-10
	beq- 5,.L771
	cmpldi 6,10,11
	lbz 12,10(3)
	addi 7,3,11
	stb 12,10(4)
	addi 11,4,11
	addi 8,5,-11
	beq- 6,.L771
	cmpldi 0,10,12
	lbz 6,11(3)
	addi 7,3,12
	stb 6,11(4)
	addi 11,4,12
	addi 8,5,-12
	beq- 0,.L771
	cmpldi 7,10,13
	lbz 0,12(3)
	addi 7,3,13
	stb 0,12(4)
	addi 11,4,13
	addi 8,5,-13
	beq- 7,.L771
	cmpldi 1,10,15
	lbz 9,13(3)
	addi 7,3,14
	stb 9,13(4)
	addi 11,4,14
	addi 8,5,-14
	bne- 1,.L771
	lbz 8,14(3)
	addi 7,3,15
	addi 11,4,15
	stb 8,14(4)
	addi 8,5,-15
.L771:
	subf 5,10,5
	lvx 0,3,10
	srdi 12,5,4
	andi. 6,12,0x1
	add 6,3,10
	neg 9,6
	addi 0,10,15
	lvsr 13,0,9
	add 4,4,10
	addi 6,12,-1
	add 3,3,0
	li 10,0
	bne- 0,.L879
.L837:
	srdi 12,12,1
	mtctr 12
.L787:
	addi 9,10,16
	lvx 1,3,10
	vperm 0,0,1,13
	stvx 0,4,10
	addi 10,10,32
	lvx 0,3,9
	vperm 1,1,0,13
	stvx 1,4,9
	bdnz .L787
.L862:
	andi. 9,5,0xf
	rldicr 5,5,0,59
	subf 0,5,8
	add 4,11,5
	add 8,7,5
	beq- 0,.L766
	cmpldi 6,0,1
	lbzx 7,7,5
	stbx 7,11,5
	beq- 6,.L766
	cmpldi 7,0,2
	lbz 11,1(8)
	stb 11,1(4)
	beq- 7,.L766
	cmpldi 1,0,3
	lbz 6,2(8)
	stb 6,2(4)
	beq- 1,.L766
	cmpldi 5,0,4
	lbz 3,3(8)
	stb 3,3(4)
	beq- 5,.L766
	cmpldi 0,0,5
	lbz 10,4(8)
	stb 10,4(4)
	beq- 0,.L766
	cmpldi 6,0,6
	lbz 12,5(8)
	stb 12,5(4)
	beq- 6,.L766
	cmpldi 7,0,7
	lbz 9,6(8)
	stb 9,6(4)
	beq- 7,.L766
	cmpldi 1,0,8
	lbz 5,7(8)
	stb 5,7(4)
	beq- 1,.L766
	cmpldi 5,0,9
	lbz 7,8(8)
	stb 7,8(4)
	beq- 5,.L766
	cmpldi 0,0,10
	lbz 11,9(8)
	stb 11,9(4)
	beq- 0,.L766
	cmpldi 6,0,11
	lbz 6,10(8)
	stb 6,10(4)
	beq- 6,.L766
	cmpldi 7,0,12
	lbz 3,11(8)
	stb 3,11(4)
	beq- 7,.L766
	cmpldi 1,0,13
	lbz 10,12(8)
	stb 10,12(4)
	beq- 1,.L766
	cmpldi 5,0,14
	lbz 0,13(8)
	stb 0,13(4)
	beq- 5,.L766
	lbz 8,14(8)
	stb 8,14(4)
	b .L766
.L869:
	lbz 12,-1(3)
	mr 5,3
	mr 11,4
	stb 12,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 9,-2(5)
	stb 9,-2(11)
	bdz .L766
	lbz 12,-1(3)
	mr 5,3
	mr 11,4
	stb 12,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 9,-2(5)
	stb 9,-2(11)
	bdnz .L869
	b .L766
.L879:
	cmpdi 5,6,0
	vor 1,0,0
	lvx 0,0,3
	li 10,16
	vperm 1,1,0,13
	stvx 1,0,4
	bne+ 5,.L837
	b .L862
.L770:
	andi. 10,9,0x1
	addi 12,3,-1
	addi 11,4,-1
	bne- 0,.L880
.L834:
	srdi 4,9,1
	addi 9,4,1
	mtctr 9
	b .L790
.L881:
	lbz 10,1(7)
	addi 12,12,2
	addi 11,11,2
	stb 10,1(3)
.L790:
	lbz 6,1(12)
	addi 7,12,1
	addi 3,11,1
	stb 6,1(11)
	bdnz .L881
	b .L766
.L880:
	lbz 5,0(3)
	mr 12,3
	mr 11,4
	stb 5,0(4)
	b .L834
.L874:
	addi 7,3,2
	addi 11,4,2
	addi 8,5,-2
	b .L771
.L875:
	addi 7,3,3
	addi 11,4,3
	addi 8,5,-3
	b .L771
.L876:
	addi 7,3,4
	addi 11,4,4
	addi 8,5,-4
	b .L771
.L877:
	addi 7,3,5
	addi 11,4,5
	addi 8,5,-5
	b .L771
.L792:
	mr 11,4
	mr 7,3
	mr 8,5
	b .L771
.L878:
	addi 7,3,6
	addi 11,4,6
	addi 8,5,-6
	b .L771
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
	b .L898
.L907:
	addi 9,9,1
	bne- 0,.L897
	bdz .L906
.L898:
	srw 0,3,9
	rldicl 4,0,0,63
	cmpdi 7,4,0
	addi 9,9,1
	srw 5,3,9
	andi. 10,5,0x1
	beq+ 7,.L907
.L897:
	extsw 3,9
	blr
.L906:
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
	beq- 0,.L911
	andi. 3,9,0x1
	bne- 0,.L909
	li 3,1
.L910:
	srawi 9,9,1
	andi. 10,9,0x1
	addi 3,3,1
	beq+ 0,.L910
.L909:
	extsw 3,3
	blr
.L911:
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
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	li 0,1
	fcmpu 0,1,0
	blt- 0,.L915
	addis 3,2,.LC7@toc@ha
	lfs 2,.LC7@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L915:
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
	addis 9,2,.LC10@toc@ha
	lfd 0,.LC10@toc@l(9)
	li 0,1
	fcmpu 0,1,0
	blt- 0,.L918
	addis 3,2,.LC11@toc@ha
	lfd 2,.LC11@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L918:
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
	addis 9,2,.LC14@toc@ha
	addi 3,9,.LC14@toc@l
	lfd 12,0(3)
	li 0,1
	lfd 13,8(3)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt- 0,.L921
	addis 4,2,.LC15@toc@ha
	addi 5,4,.LC15@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,1,12
	bne 1,$+8
	fcmpu 1,2,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L921:
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
	stw 4,-16(1)
	addi 9,1,-16
	addis 4,2,.LC2@toc@ha
	lfiwax 0,0,9
	lfd 3,.LC2@toc@l(4)
	fcfid 1,0
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
	blt- 5,.L937
	addis 9,2,.LC19@toc@ha
	lfs 2,.LC19@toc@l(9)
.L926:
	andi. 9,4,0x1
	beq- 0,.L927
.L928:
	fmuls 1,1,2
.L927:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne- 0,.L928
.L938:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne- 0,.L928
	b .L938
.L937:
	addis 3,2,.LC20@toc@ha
	lfs 2,.LC20@toc@l(3)
	b .L926
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
	blt- 5,.L952
	addis 9,2,.LC19@toc@ha
	lfs 2,.LC19@toc@l(9)
.L941:
	andi. 9,4,0x1
	beq- 0,.L942
.L943:
	fmul 1,1,2
.L942:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne- 0,.L943
.L953:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne- 0,.L943
	b .L953
.L952:
	addis 3,2,.LC20@toc@ha
	lfs 2,.LC20@toc@l(3)
	b .L941
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
	bun- 0,.L955
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
	beq- 1,.L970
	cmpwi 5,31,0
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	blt- 5,.L971
	addis 9,2,.LC27@toc@ha
	addi 3,9,.LC27@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L956:
	andi. 9,31,0x1
	beq- 0,.L957
.L958:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L957:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L969
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
	bne- 0,.L958
.L972:
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
	bne- 0,.L958
	b .L972
.L969:
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
.L970:
	ld 6,176(1)
	ld 31,120(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L955:
	fmr 1,28
	addi 1,1,160
	.cfi_def_cfa_offset 0
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L971:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 4,2,.LC28@toc@ha
	addi 5,4,.LC28@toc@l
	lfd 30,0(5)
	lfd 31,8(5)
	b .L956
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
	mfvrsave 11
	oris 0,11,0xc00c
	stw 11,-4(1)
	mtvrsave 0
	cmpdi 0,5,0
	beq- 0,.L974
	neg 7,3
	rldicl 10,7,0,60
	addi 8,10,15
	cmpldi 1,8,23
	addi 9,5,-1
	mr 12,8
	mr 6,9
	blt- 1,.L1015
.L976:
	cmpld 5,9,12
	blt- 5,.L996
	cmpdi 6,10,0
	beq- 6,.L997
	lbz 9,0(3)
	andi. 11,7,0xe
	lbz 0,0(4)
	xor 12,0,9
	stb 12,0(3)
	beq- 0,.L1016
	lbz 6,1(3)
	cmpldi 7,10,2
	lbz 11,1(4)
	xor 0,11,6
	stb 0,1(3)
	ble- 7,.L1017
	lbz 12,2(3)
	andi. 6,7,0xc
	lbz 9,2(4)
	xor 11,9,12
	stb 11,2(3)
	beq- 0,.L1018
	lbz 6,3(3)
	cmpldi 1,10,4
	lbz 0,3(4)
	xor 9,0,6
	stb 9,3(3)
	ble- 1,.L1019
	lbz 11,4(3)
	cmpldi 5,10,5
	lbz 12,4(4)
	xor 0,12,11
	stb 0,4(3)
	beq- 5,.L1020
	lbz 6,5(3)
	cmpldi 6,10,6
	lbz 9,5(4)
	xor 12,9,6
	stb 12,5(3)
	beq- 6,.L1021
	lbz 11,6(4)
	andi. 7,7,0x8
	lbz 7,6(3)
	addi 6,5,-7
	xor 0,11,7
	stb 0,6(3)
	addi 11,4,7
	addi 7,3,7
	beq- 0,.L977
	lbz 6,7(3)
	cmpldi 7,10,8
	lbz 9,7(4)
	xor 12,9,6
	stb 12,7(3)
	ble- 7,.L1022
	lbz 7,8(3)
	cmpldi 1,10,9
	lbz 11,8(4)
	xor 0,11,7
	stb 0,8(3)
	beq- 1,.L1023
	lbz 6,9(3)
	cmpldi 5,10,10
	lbz 9,9(4)
	xor 12,9,6
	stb 12,9(3)
	beq- 5,.L1024
	lbz 7,10(3)
	cmpldi 6,10,11
	lbz 11,10(4)
	xor 0,11,7
	stb 0,10(3)
	beq- 6,.L1025
	lbz 6,11(3)
	cmpldi 0,10,12
	lbz 9,11(4)
	xor 12,9,6
	stb 12,11(3)
	beq- 0,.L1026
	lbz 7,12(3)
	cmpldi 7,10,13
	lbz 11,12(4)
	xor 0,11,7
	stb 0,12(3)
	beq- 7,.L1027
	lbz 6,13(3)
	cmpldi 1,10,15
	lbz 9,13(4)
	xor 12,9,6
	stb 12,13(3)
	bne- 1,.L1028
	lbz 0,14(3)
	addi 11,4,15
	lbz 9,14(4)
	addi 7,3,15
	addi 6,5,-15
	xor 12,9,0
	stb 12,14(3)
.L977:
	subf 5,10,5
	lvx 13,4,10
	add 9,4,10
	add 4,4,8
	srdi 8,5,4
	mtctr 8
	neg 12,9
	add 10,3,10
	lvsr 12,0,12
	li 9,0
.L993:
	lvx 0,10,9
	vor 1,13,13
	lvx 13,4,9
	vperm 1,1,13,12
	vxor 0,0,1
	stvx 0,10,9
	addi 9,9,16
	bdnz .L993
	andi. 9,5,0xf
	rldicr 0,5,0,59
	add 4,11,0
	add 8,7,0
	subf 11,0,6
	beq- 0,.L974
	addi 9,11,-1
.L975:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 12,8,-1
	beq- 0,.L1005
	lbz 6,0(8)
	mr 7,4
	lbz 5,0(4)
	mr 12,8
	xor 4,5,6
	stb 4,0(8)
.L1005:
	srdi 8,9,1
	addi 10,8,1
	mtctr 10
	b .L995
.L1029:
	lbz 8,1(5)
	addi 12,12,2
	lbz 4,1(11)
	xor 10,4,8
	stb 10,1(5)
.L995:
	lbz 9,1(7)
	addi 11,7,1
	lbz 0,1(12)
	addi 5,12,1
	addi 7,7,2
	xor 6,9,0
	stb 6,1(12)
	bdnz .L1029
.L974:
	lwz 7,-4(1)
	mtvrsave 7
	blr
.L1015:
	li 12,23
	b .L976
.L1019:
	addi 11,4,4
	addi 7,3,4
	addi 6,5,-4
	b .L977
.L996:
	mr 8,3
	b .L975
.L1016:
	addi 11,4,1
	addi 7,3,1
	b .L977
.L1017:
	addi 11,4,2
	addi 7,3,2
	addi 6,5,-2
	b .L977
.L1018:
	addi 11,4,3
	addi 7,3,3
	addi 6,5,-3
	b .L977
.L1020:
	addi 11,4,5
	addi 7,3,5
	addi 6,5,-5
	b .L977
.L997:
	mr 7,3
	mr 11,4
	mr 6,5
	b .L977
.L1026:
	addi 11,4,12
	addi 7,3,12
	addi 6,5,-12
	b .L977
.L1021:
	addi 11,4,6
	addi 7,3,6
	addi 6,5,-6
	b .L977
.L1022:
	addi 11,4,8
	addi 7,3,8
	addi 6,5,-8
	b .L977
.L1023:
	addi 11,4,9
	addi 7,3,9
	addi 6,5,-9
	b .L977
.L1024:
	addi 11,4,10
	addi 7,3,10
	addi 6,5,-10
	b .L977
.L1025:
	addi 11,4,11
	addi 7,3,11
	addi 6,5,-11
	b .L977
.L1027:
	addi 11,4,13
	addi 7,3,13
	addi 6,5,-13
	b .L977
.L1028:
	addi 11,4,14
	addi 7,3,14
	addi 6,5,-14
	b .L977
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
	beq- 0,.L1031
.L1032:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1032
.L1031:
	cmpdi 5,5,0
	beq- 5,.L1033
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L1056
.L1044:
	srdi 0,5,1
	mtctr 0
.L1034:
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
	bdnz .L1034
.L1033:
	li 6,0
	stb 6,0(9)
	blr
.L1056:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpdi 7,7,0
	addi 9,9,1
	bne+ 7,.L1044
	b .L1033
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
	beq- 0,.L1069
	cmpdi 1,8,1
	beq- 1,.L1080
	cmpdi 5,8,2
	beq- 5,.L1081
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1081:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1080:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr- 1
.L1069:
	srdi 10,10,2
.L1058:
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
	bne+ 1,.L1058
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
	beq- 0,.L1095
.L1091:
	mr 10,4
	b .L1094
.L1093:
	beqlr- 7
.L1094:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1093
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1091
.L1095:
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
	li 8,0
.L1103:
	lbz 10,0(9)
	mr 3,8
	cmpw 7,10,4
	cmpwi 0,10,0
	bne- 7,.L1102
	mr 3,9
.L1102:
	addi 9,9,1
	mr 8,3
	bne+ 0,.L1103
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
	beq- 0,.L1120
	mr 9,4
.L1109:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1109
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1128
.L1131:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1130
.L1128:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1131
	addi 0,3,1
	mtctr 0
	mr 6,4
	mr 10,11
	mr 7,8
	b .L1111
.L1133:
	bdz .L1113
	bne- 7,.L1114
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1132
	lbzu 10,1(6)
.L1111:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1133
.L1114:
	addi 8,8,1
	b .L1128
.L1130:
	li 3,0
	blr
.L1132:
	lbz 9,1(6)
.L1113:
	cmpw 5,12,9
	bne+ 5,.L1114
.L1120:
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
	addis 9,2,.LC3@toc@ha
	lfs 0,.LC3@toc@l(9)
	fcmpu 0,1,0
	blt- 0,.L1144
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1144:
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
	blt- 1,.L1153
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt- 5,.L1153
	cmpldi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1150
.L1147:
	cmpld 1,0,9
	blt- 1,.L1153
.L1150:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1147
	beqlr- 7
	subf 7,11,9
	add 8,7,6
	addi 4,8,-2
	mtctr 4
	mr 8,5
	mr 10,11
.L1148:
	lbzu 4,1(10)
	lbzu 7,1(8)
	cmpw 0,4,7
	bne- 0,.L1147
	bdnz .L1148
	blr
.L1153:
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
	beq- 0,.L1162
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L1162:
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
	addis 9,2,.LC3@toc@ha
	lfs 0,.LC3@toc@l(9)
	fcmpu 7,1,0
	blt- 7,.L1190
	addis 3,2,.LC37@toc@ha
	lfs 2,.LC37@toc@l(3)
	li 10,0
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1191
.L1170:
	addis 12,2,.LC20@toc@ha
	addis 9,2,.LC37@toc@ha
	lfs 7,.LC20@toc@l(12)
	lfs 8,.LC37@toc@l(9)
	li 11,0
.L1176:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1176
	cmpwi 1,10,0
	stw 11,0(4)
	beqlr- 1
.L1193:
	fneg 1,1
	blr
.L1191:
	addis 5,2,.LC20@toc@ha
	lfs 3,.LC20@toc@l(5)
	fcmpu 1,1,3
	bnl- 1,.L1173
	bne- 7,.L1182
.L1173:
	li 0,0
	stw 0,0(4)
	blr
.L1190:
	addis 6,2,.LC33@toc@ha
	fneg 12,1
	lfs 4,.LC33@toc@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1192
	fmr 1,12
	li 10,1
	b .L1170
.L1192:
	addis 7,2,.LC35@toc@ha
	lfs 5,.LC35@toc@l(7)
	fcmpu 6,1,5
	bng- 6,.L1173
	li 10,1
.L1171:
	addis 8,2,.LC20@toc@ha
	fmr 1,12
	lfs 6,.LC20@toc@l(8)
	li 11,0
.L1178:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt+ 7,.L1178
	cmpwi 1,10,0
	stw 11,0(4)
	bne+ 1,.L1193
	blr
.L1182:
	fmr 12,1
	b .L1171
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
.L1196:
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
	bne+ 0,.L1196
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
	li 9,16
	mtctr 9
	li 12,32
	li 10,1
	blt+ 0,.L1201
	b .L1230
.L1205:
	rldicl 4,11,0,32
	slwi 9,4,1
	cmpwi 6,4,0
	cmplw 5,3,9
	slwi 10,10,1
	ble- 7,.L1203
	blt- 6,.L1206
	rldicl 4,9,0,32
	slwi 10,10,1
	ble- 5,.L1203
	bdz .L1204
.L1201:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge+ 1,.L1205
.L1206:
	li 12,0
.L1211:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 11,7,0xff
	subf 8,4,3
	neg 9,11
	beq- 0,.L1208
	mr 3,8
.L1208:
	and 0,10,9
	srwi 10,10,1
	cmpwi 1,10,0
	or 12,12,0
	rldicl 3,3,0,32
	srdi 4,4,1
	bne+ 1,.L1211
.L1204:
	cmpdi 7,5,0
	beq+ 7,.L1212
	mr 12,3
.L1212:
	rldicl 3,12,0,32
	blr
.L1203:
	cmpwi 0,10,0
	bne+ 0,.L1206
	li 12,0
	b .L1204
.L1230:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	subf 4,4,3
	beq- 0,.L1214
	mr 3,4
.L1214:
	rldicl 3,3,0,32
	b .L1204
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
	beq- 0,.L1235
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
.L1235:
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
	beq- 0,.L1238
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
.L1238:
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
	beq- 0,.L1240
.L1241:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne+ 0,.L1241
.L1240:
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
	rlwinm 12,5,0,0,28
	blt- 0,.L1248
	add 8,4,5
	cmpld 1,3,8
	mr 10,5
	ble- 1,.L1351
.L1248:
	std 31,-8(1)
	.cfi_offset 31, -8
	mfvrsave 31
	oris 0,31,0xc004
	stw 31,-12(1)
	mtvrsave 0
	cmpwi 1,9,0
	addi 7,4,-8
	addi 8,3,-8
	beq- 1,.L1319
	andi. 10,9,0x1
	addi 6,9,-1
	mr 11,9
	bne- 0,.L1352
.L1298:
	srdi 10,11,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L1341
	addi 10,10,-1
	mtctr 10
	addi 9,9,-2
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 10,8,8
	std 11,8(10)
.L1251:
	addi 9,9,-2
	ld 11,16(6)
	std 11,16(10)
	addi 6,6,16
	ld 11,8(6)
	addi 10,10,16
	std 11,8(10)
	bdnz .L1251
.L1322:
	cmplw 7,12,5
	bge- 7,.L1244
	subf 6,12,5
	addi 7,6,-1
	cmplwi 1,7,29
	rldicl 31,12,0,32
	ble- 1,.L1253
	addi 8,31,1
	add 11,4,8
	add 0,3,31
	subf 10,11,0
	cmpldi 5,10,14
	ble- 5,.L1253
	neg 7,0
	andi. 10,7,0xf
	beq- 0,.L1263
	andi. 11,7,0xe
	lbzx 11,4,31
	stbx 11,3,31
	beq- 0,.L1353
	cmplwi 6,10,2
	lbzx 0,4,8
	stbx 0,3,8
	addi 8,12,2
	ble- 6,.L1254
	rldicl 11,8,0,32
	lbzx 0,4,11
	addi 8,12,3
	stbx 0,3,11
	rldicr. 11,7,60,1
	beq- 0,.L1254
	rldicl 8,8,0,32
	cmplwi 7,10,4
	lbzx 11,4,8
	stbx 11,3,8
	addi 8,12,4
	ble- 7,.L1254
	rldicl 0,8,0,32
	cmplwi 1,10,5
	lbzx 8,4,0
	stbx 8,3,0
	addi 8,12,5
	beq- 1,.L1254
	rldicl 0,8,0,32
	cmplwi 5,10,6
	lbzx 11,4,0
	addi 8,12,6
	stbx 11,3,0
	beq- 5,.L1254
	rldicl 0,8,0,32
	andi. 7,7,0x8
	lbzx 7,4,0
	addi 8,12,7
	stbx 7,3,0
	beq- 0,.L1254
	rldicl 8,8,0,32
	cmplwi 6,10,8
	lbzx 11,4,8
	stbx 11,3,8
	addi 8,12,8
	ble- 6,.L1254
	rldicl 0,8,0,32
	cmplwi 7,10,9
	lbzx 7,4,0
	addi 8,12,9
	stbx 7,3,0
	beq- 7,.L1254
	rldicl 8,8,0,32
	cmplwi 1,10,10
	lbzx 11,4,8
	stbx 11,3,8
	addi 8,12,10
	beq- 1,.L1254
	rldicl 0,8,0,32
	cmplwi 5,10,11
	lbzx 7,4,0
	addi 8,12,11
	stbx 7,3,0
	beq- 5,.L1254
	rldicl 8,8,0,32
	cmplwi 0,10,12
	lbzx 11,4,8
	stbx 11,3,8
	addi 8,12,12
	beq- 0,.L1254
	rldicl 0,8,0,32
	cmplwi 6,10,13
	lbzx 7,4,0
	addi 8,12,13
	stbx 7,3,0
	beq- 6,.L1254
	rldicl 8,8,0,32
	cmplwi 7,10,15
	lbzx 11,4,8
	stbx 11,3,8
	addi 8,12,14
	bne- 7,.L1254
	rldicl 0,8,0,32
	lbzx 7,4,0
	addi 8,12,15
	stbx 7,3,0
.L1254:
	subf 6,10,6
	rldicl 12,10,0,32
	rldicl 7,6,60,36
	add 31,12,31
	andi. 11,7,0x1
	lvx 0,4,31
	add 10,4,31
	neg 12,10
	addi 11,31,15
	lvsr 13,0,12
	add 31,3,31
	add 12,4,11
	addi 0,7,-1
	beq- 0,.L1295
	cmpdi 1,0,0
	vor 1,0,0
	lvx 0,12,9
	vperm 1,1,0,13
	stvx 1,31,9
	addi 9,9,16
	beq- 1,.L1326
.L1295:
	srdi 7,7,1
	mtctr 7
.L1257:
	addi 10,9,16
	lvx 1,12,9
	vperm 0,0,1,13
	stvx 0,31,9
	addi 9,9,32
	lvx 0,12,10
	vperm 1,1,0,13
	stvx 1,31,10
	bdnz .L1257
.L1326:
	andi. 9,6,0xf
	rlwinm 9,6,0,0,27
	add 6,9,8
	beq- 0,.L1244
	addi 11,6,1
	rldicl 8,6,0,32
	cmplw 5,11,5
	lbzx 12,4,8
	stbx 12,3,8
	bge- 5,.L1244
	addi 31,6,2
	rldicl 0,11,0,32
	cmplw 6,31,5
	lbzx 7,4,0
	stbx 7,3,0
	bge- 6,.L1244
	addi 10,6,3
	rldicl 9,31,0,32
	cmplw 7,10,5
	lbzx 11,4,9
	stbx 11,3,9
	bge- 7,.L1244
	addi 8,6,4
	rldicl 12,10,0,32
	cmplw 1,8,5
	lbzx 31,4,12
	stbx 31,3,12
	bge- 1,.L1244
	addi 0,6,5
	rldicl 10,8,0,32
	cmplw 0,0,5
	lbzx 7,4,10
	stbx 7,3,10
	bge- 0,.L1244
	addi 9,6,6
	rldicl 11,0,0,32
	cmplw 5,9,5
	lbzx 8,4,11
	stbx 8,3,11
	bge- 5,.L1244
	addi 12,6,7
	rldicl 31,9,0,32
	cmplw 6,12,5
	lbzx 0,4,31
	stbx 0,3,31
	bge- 6,.L1244
	addi 9,6,8
	rldicl 10,12,0,32
	cmplw 7,9,5
	lbzx 7,4,10
	stbx 7,3,10
	bge- 7,.L1244
	addi 11,6,9
	rldicl 8,9,0,32
	cmplw 1,11,5
	lbzx 12,4,8
	stbx 12,3,8
	bge- 1,.L1244
	addi 31,6,10
	rldicl 0,11,0,32
	cmplw 0,31,5
	lbzx 9,4,0
	stbx 9,3,0
	bge- 0,.L1244
	addi 10,6,11
	rldicl 11,31,0,32
	cmplw 5,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bge- 5,.L1244
	addi 8,6,12
	rldicl 12,10,0,32
	cmplw 6,8,5
	lbzx 31,4,12
	stbx 31,3,12
	bge- 6,.L1244
	addi 0,6,13
	rldicl 9,8,0,32
	cmplw 7,0,5
	lbzx 10,4,9
	stbx 10,3,9
	bge- 7,.L1244
	addi 6,6,14
	rldicl 11,0,0,32
	cmplw 1,6,5
	lbzx 5,4,11
	stbx 5,3,11
	bge- 1,.L1244
	rldicl 7,6,0,32
	lbzx 4,4,7
	stbx 4,3,7
.L1244:
	lwz 9,-12(1)
	mtvrsave 9
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
.L1341:
	.cfi_restore_state
	ld 31,8(7)
	mr 6,7
	mr 10,8
	std 31,8(8)
	addi 9,9,-2
	addi 7,7,16
	ld 0,16(6)
	addi 8,8,16
	std 0,16(10)
	bdz .L1322
	ld 31,8(7)
	mr 6,7
	mr 10,8
	std 31,8(8)
	addi 9,9,-2
	addi 7,7,16
	ld 0,16(6)
	addi 8,8,16
	std 0,16(10)
	bdnz .L1341
	b .L1322
.L1352:
	mr. 9,6
	ld 10,0(4)
	mr 7,4
	std 10,0(3)
	mr 8,3
	bne+ 0,.L1298
	b .L1322
.L1351:
	.cfi_restore 31
	cmpdi 5,5,0
	addi 9,5,-1
	rldicl 5,9,0,32
	addi 0,5,1
	add 4,4,0
	add 3,3,0
	beqlr- 5
	andi. 9,10,0x1
	addi 6,10,-1
	beq- 0,.L1301
	cmpdi 6,6,0
	lbzu 7,-1(4)
	stbu 7,-1(3)
	beqlr- 6
.L1301:
	srdi 9,10,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1342
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1261:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1261
	blr
.L1342:
	lbz 11,-1(4)
	mr 12,4
	mr 10,3
	stb 11,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 8,-2(12)
	stb 8,-2(10)
	bdnz .L1342
	blr
.L1353:
	.cfi_offset 31, -8
	addi 8,12,1
	b .L1254
.L1319:
	cmpdi 5,5,0
	rldicl 31,12,0,32
	mr 6,5
	beq- 5,.L1244
.L1253:
	rldicl 8,6,0,32
	andi. 9,8,0x1
	addi 12,31,-1
	add 9,3,12
	add 4,4,12
	addi 3,8,-1
	beq- 0,.L1292
	cmpdi 5,3,0
	lbzu 31,1(4)
	stbu 31,1(9)
	beq- 5,.L1244
.L1292:
	srdi 10,8,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L1340
	addi 10,10,-1
	mtctr 10
	lbz 7,1(4)
	stb 7,1(9)
	addi 8,4,1
	lbz 7,1(8)
	addi 10,9,1
	stb 7,1(10)
.L1259:
	lbz 7,2(8)
	stb 7,2(10)
	addi 8,8,2
	lbz 7,1(8)
	addi 10,10,2
	stb 7,1(10)
	bdnz .L1259
	b .L1244
.L1340:
	lbz 0,1(4)
	mr 6,4
	mr 10,9
	stb 0,1(9)
	addi 4,4,2
	addi 9,9,2
	lbz 11,2(6)
	stb 11,2(10)
	bdnz .L1340
	b .L1244
.L1263:
	mr 8,12
	b .L1254
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	srwi 7,5,1
	blt- 0,.L1358
	add 10,4,5
	cmpld 1,3,10
	mr 9,5
	ble- 1,.L1419
.L1358:
	cmpwi 1,7,0
	beq- 1,.L1357
	addi 6,7,-1
	cmplwi 5,6,13
	ble- 5,.L1361
	addi 8,4,2
	subf 12,8,3
	cmpldi 0,12,12
	ble- 0,.L1361
	srdi 11,3,1
	neg 0,11
	andi. 9,0,0x7
	beq- 0,.L1370
	rldicr. 8,0,61,1
	lhz 10,0(4)
	sth 10,0(3)
	beq- 0,.L1371
	cmplwi 6,9,2
	lhz 6,2(4)
	sth 6,2(3)
	ble- 6,.L1372
	andi. 10,0,0x4
	lhz 8,4(4)
	sth 8,4(3)
	beq- 0,.L1373
	cmplwi 7,9,4
	lhz 12,6(4)
	sth 12,6(3)
	ble- 7,.L1374
	cmplwi 1,9,5
	lhz 11,8(4)
	sth 11,8(3)
	beq- 1,.L1375
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne- 5,.L1376
	lhz 10,12(4)
	li 0,7
	sth 10,12(3)
.L1362:
	subf 6,9,7
	rldicl 10,6,61,35
	rldic 9,9,1,60
	andi. 8,10,0x1
	lvx 0,4,9
	add 8,4,9
	neg 12,8
	addi 11,9,15
	lvsr 13,0,12
	add 11,4,11
	addi 12,10,-1
	add 9,3,9
	li 8,0
	beq- 0,.L1389
	cmpdi 6,12,0
	vor 1,0,0
	lvx 0,0,11
	li 8,16
	vperm 1,1,0,13
	stvx 1,0,9
	beq- 6,.L1403
.L1389:
	srdi 10,10,1
	mtctr 10
.L1364:
	addi 12,8,16
	lvx 1,11,8
	vperm 0,0,1,13
	stvx 0,9,8
	addi 8,8,32
	lvx 0,11,12
	vperm 1,1,0,13
	stvx 1,9,12
	bdnz .L1364
.L1403:
	andi. 9,6,0x7
	rlwinm 6,6,0,0,28
	add 11,6,0
	beq- 0,.L1357
	addi 0,11,1
	rldic 9,11,1,31
	cmplw 7,7,0
	lhzx 8,4,9
	sthx 8,3,9
	ble- 7,.L1357
	addi 12,11,2
	rldic 10,0,1,31
	cmplw 1,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble- 1,.L1357
	addi 0,11,3
	rldic 9,12,1,31
	cmplw 5,7,0
	lhzx 8,4,9
	sthx 8,3,9
	ble- 5,.L1357
	addi 12,11,4
	rldic 10,0,1,31
	cmplw 6,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble- 6,.L1357
	addi 0,11,5
	rldic 9,12,1,31
	cmplw 0,7,0
	lhzx 8,4,9
	sthx 8,3,9
	ble- 0,.L1357
	addi 11,11,6
	rldic 12,0,1,31
	cmplw 7,7,11
	lhzx 7,4,12
	sthx 7,3,12
	ble- 7,.L1357
	rldic 6,11,1,31
	lhzx 10,4,6
	sthx 10,3,6
.L1357:
	andi. 9,5,0x1
	beq- 0,.L1354
	addi 5,5,-1
	rldicl 6,5,0,32
	lbzx 4,4,6
	stbx 4,3,6
.L1354:
	lwz 3,-4(1)
	mtvrsave 3
	blr
.L1419:
	addi 5,5,-1
	cmpdi 5,9,0
	rldicl 6,5,0,32
	addi 8,6,1
	add 4,4,8
	add 3,3,8
	beq- 5,.L1354
	andi. 10,9,0x1
	addi 12,9,-1
	beq- 0,.L1392
	cmpdi 6,12,0
	lbzu 11,-1(4)
	stbu 11,-1(3)
	beq- 6,.L1354
.L1392:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1414
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1369:
	addi 4,10,-1
	lbz 8,-1(4)
	addi 3,9,-1
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
	bdnz .L1369
	b .L1354
.L1414:
	lbz 0,-1(4)
	mr 7,4
	mr 9,3
	stb 0,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(7)
	stb 10,-2(9)
	bdz .L1354
	lbz 0,-1(4)
	mr 7,4
	mr 9,3
	stb 0,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(7)
	stb 10,-2(9)
	bdnz .L1414
	b .L1354
.L1370:
	li 0,0
	b .L1362
.L1361:
	andi. 9,7,0x1
	addi 0,7,-1
	addi 10,4,-2
	addi 9,3,-2
	beq- 0,.L1386
	cmpdi 1,0,0
	lhz 9,0(4)
	mr 10,4
	sth 9,0(3)
	mr 9,3
	beq- 1,.L1357
.L1386:
	srdi 8,7,1
	cmpdi 5,8,2
	mtctr 8
	ble 5,.L1413
	addi 8,8,-1
	mtctr 8
	lhz 6,2(10)
	sth 6,2(9)
	addi 7,10,2
	lhz 6,2(7)
	addi 8,9,2
	sth 6,2(8)
.L1366:
	lhz 6,4(7)
	sth 6,4(8)
	addi 7,7,4
	lhz 6,2(7)
	addi 8,8,4
	sth 6,2(8)
	bdnz .L1366
	b .L1357
.L1413:
	lhz 11,2(10)
	mr 12,10
	mr 8,9
	sth 11,2(9)
	addi 10,10,4
	addi 9,9,4
	lhz 7,4(12)
	sth 7,4(8)
	bdnz .L1413
	b .L1357
.L1371:
	li 0,1
	b .L1362
.L1372:
	li 0,2
	b .L1362
.L1376:
	li 0,6
	b .L1362
.L1373:
	li 0,3
	b .L1362
.L1374:
	li 0,4
	b .L1362
.L1375:
	li 0,5
	b .L1362
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-12(1)
	mtvrsave 0
	cmpld 0,3,4
	srwi 11,5,2
	rlwinm 12,5,0,0,29
	blt- 0,.L1425
	add 10,4,5
	cmpld 1,3,10
	mr 9,5
	ble- 1,.L1545
.L1425:
	cmpwi 1,11,0
	beq- 1,.L1546
	addi 6,11,-1
	cmplwi 0,6,10
	ble- 0,.L1427
	addi 7,4,4
	subf 8,7,3
	cmpldi 6,8,8
	ble- 6,.L1427
	std 31,-8(1)
	.cfi_offset 31, -8
	srdi 31,3,2
	neg 9,31
	andi. 10,9,0x3
	li 0,0
	beq- 0,.L1428
	andi. 9,9,0x2
	lwz 6,0(4)
	li 0,1
	stw 6,0(3)
	beq- 0,.L1428
	cmplwi 7,10,3
	lwz 7,4(4)
	li 0,2
	stw 7,4(3)
	bne- 7,.L1428
	lwz 8,8(4)
	li 0,3
	stw 8,8(3)
.L1428:
	subf 6,10,11
	rldicl 9,6,62,34
	rldic 10,10,2,60
	andi. 8,9,0x1
	lvx 0,4,10
	add 31,4,10
	neg 8,31
	addi 7,10,15
	lvsr 13,0,8
	addi 31,9,-1
	add 7,4,7
	add 10,3,10
	li 8,0
	bne- 0,.L1547
.L1486:
	srdi 9,9,1
	mtctr 9
.L1430:
	addi 31,8,16
	lvx 1,7,8
	vperm 0,0,1,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,7,31
	vperm 1,1,0,13
	stvx 1,10,31
	bdnz .L1430
.L1517:
	andi. 9,6,0x3
	rlwinm 6,6,0,0,29
	add 7,6,0
	beq- 0,.L1544
	addi 0,7,1
	rldic 10,7,2,30
	cmplw 5,11,0
	lwzx 8,4,10
	stwx 8,3,10
	ble- 5,.L1544
	addi 31,7,2
	rldic 9,0,2,30
	cmplw 6,11,31
	lwzx 11,4,9
	stwx 11,3,9
	ble- 6,.L1544
	rldic 6,31,2,30
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	lwzx 7,4,6
	stwx 7,3,6
	b .L1433
.L1547:
	.cfi_restore_state
	cmpdi 1,31,0
	vor 1,0,0
	lvx 0,0,7
	li 8,16
	vperm 1,1,0,13
	stvx 1,0,10
	bne+ 1,.L1486
	b .L1517
.L1545:
	.cfi_restore 31
	addi 5,5,-1
	cmpdi 5,9,0
	rldicl 6,5,0,32
	addi 7,6,1
	add 4,4,7
	add 3,3,7
	beq- 5,.L1420
	andi. 10,9,0x1
	addi 8,9,-1
	beq- 0,.L1489
	cmpdi 6,8,0
	lbzu 12,-1(4)
	stbu 12,-1(3)
	beq- 6,.L1420
.L1489:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1534
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1441:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1441
.L1420:
	lwz 6,-12(1)
	mtvrsave 6
	blr
.L1544:
	.cfi_offset 31, -8
	ld 31,-8(1)
	.cfi_restore 31
.L1433:
	cmplw 5,12,5
	bge- 5,.L1420
	subf 9,12,5
	addi 10,9,-1
	cmplwi 6,10,29
	rldicl 6,12,0,32
	ble- 6,.L1423
	addi 7,6,1
	add 11,4,7
	add 8,3,6
	subf 0,11,8
	cmpldi 0,0,14
	ble- 0,.L1423
	neg 8,8
	andi. 10,8,0xf
	beq- 0,.L1446
	andi. 11,8,0xe
	lbzx 11,4,6
	stbx 11,3,6
	beq- 0,.L1548
	cmplwi 7,10,2
	lbzx 0,4,7
	stbx 0,3,7
	addi 7,12,2
	ble- 7,.L1434
	rldicl 11,7,0,32
	lbzx 0,4,11
	addi 7,12,3
	stbx 0,3,11
	rldicr. 11,8,60,1
	beq- 0,.L1434
	rldicl 7,7,0,32
	cmplwi 1,10,4
	lbzx 11,4,7
	stbx 11,3,7
	addi 7,12,4
	ble- 1,.L1434
	rldicl 0,7,0,32
	cmplwi 5,10,5
	lbzx 7,4,0
	stbx 7,3,0
	addi 7,12,5
	beq- 5,.L1434
	rldicl 0,7,0,32
	cmplwi 6,10,6
	lbzx 11,4,0
	addi 7,12,6
	stbx 11,3,0
	beq- 6,.L1434
	rldicl 0,7,0,32
	andi. 8,8,0x8
	lbzx 8,4,0
	addi 7,12,7
	stbx 8,3,0
	beq- 0,.L1434
	rldicl 0,7,0,32
	cmplwi 7,10,8
	lbzx 11,4,0
	addi 7,12,8
	stbx 11,3,0
	ble- 7,.L1434
	rldicl 8,7,0,32
	cmplwi 1,10,9
	lbzx 0,4,8
	addi 7,12,9
	stbx 0,3,8
	beq- 1,.L1434
	rldicl 8,7,0,32
	cmplwi 5,10,10
	lbzx 11,4,8
	addi 7,12,10
	stbx 11,3,8
	beq- 5,.L1434
	rldicl 0,7,0,32
	cmplwi 6,10,11
	lbzx 8,4,0
	addi 7,12,11
	stbx 8,3,0
	beq- 6,.L1434
	rldicl 0,7,0,32
	cmplwi 0,10,12
	lbzx 11,4,0
	addi 7,12,12
	stbx 11,3,0
	beq- 0,.L1434
	rldicl 8,7,0,32
	cmplwi 7,10,13
	lbzx 0,4,8
	addi 7,12,13
	stbx 0,3,8
	beq- 7,.L1434
	rldicl 8,7,0,32
	cmplwi 1,10,15
	lbzx 11,4,8
	addi 7,12,14
	stbx 11,3,8
	bne- 1,.L1434
	rldicl 0,7,0,32
	lbzx 8,4,0
	addi 7,12,15
	stbx 8,3,0
.L1434:
	subf 12,10,9
	rldicl 8,12,60,36
	rldicl 9,10,0,32
	add 10,9,6
	andi. 6,8,0x1
	lvx 0,4,10
	add 6,4,10
	neg 9,6
	addi 11,10,15
	lvsr 13,0,9
	add 10,3,10
	add 9,4,11
	addi 0,8,-1
	li 6,0
	beq- 0,.L1480
	cmpdi 5,0,0
	vor 1,0,0
	lvx 0,0,9
	li 6,16
	vperm 1,1,0,13
	stvx 1,0,10
	beq- 5,.L1516
.L1480:
	srdi 8,8,1
	mtctr 8
.L1437:
	addi 11,6,16
	lvx 1,9,6
	vperm 0,0,1,13
	stvx 0,10,6
	addi 6,6,32
	lvx 0,9,11
	vperm 1,1,0,13
	stvx 1,10,11
	bdnz .L1437
.L1516:
	andi. 10,12,0xf
	rlwinm 12,12,0,0,27
	add 9,12,7
	beq- 0,.L1420
	addi 10,9,1
	rldicl 0,9,0,32
	cmplw 6,10,5
	lbzx 7,4,0
	stbx 7,3,0
	bge- 6,.L1420
	addi 6,9,2
	rldicl 8,10,0,32
	cmplw 7,6,5
	lbzx 11,4,8
	stbx 11,3,8
	bge- 7,.L1420
	addi 12,9,3
	rldicl 10,6,0,32
	cmplw 1,12,5
	lbzx 0,4,10
	stbx 0,3,10
	bge- 1,.L1420
	addi 6,9,4
	rldicl 8,12,0,32
	cmplw 5,6,5
	lbzx 7,4,8
	stbx 7,3,8
	bge- 5,.L1420
	addi 11,9,5
	rldicl 12,6,0,32
	cmplw 0,11,5
	lbzx 10,4,12
	stbx 10,3,12
	bge- 0,.L1420
	addi 0,9,6
	rldicl 6,11,0,32
	cmplw 6,0,5
	lbzx 8,4,6
	stbx 8,3,6
	bge- 6,.L1420
	addi 11,9,7
	rldicl 12,0,0,32
	cmplw 7,11,5
	lbzx 7,4,12
	stbx 7,3,12
	bge- 7,.L1420
	addi 0,9,8
	rldicl 10,11,0,32
	cmplw 1,0,5
	lbzx 6,4,10
	stbx 6,3,10
	bge- 1,.L1420
	addi 11,9,9
	rldicl 8,0,0,32
	cmplw 5,11,5
	lbzx 12,4,8
	stbx 12,3,8
	bge- 5,.L1420
	addi 0,9,10
	rldicl 10,11,0,32
	cmplw 0,0,5
	lbzx 7,4,10
	stbx 7,3,10
	bge- 0,.L1420
	addi 6,9,11
	rldicl 11,0,0,32
	cmplw 6,6,5
	lbzx 8,4,11
	stbx 8,3,11
	bge- 6,.L1420
	addi 12,9,12
	rldicl 0,6,0,32
	cmplw 7,12,5
	lbzx 10,4,0
	stbx 10,3,0
	bge- 7,.L1420
	addi 6,9,13
	rldicl 11,12,0,32
	cmplw 1,6,5
	lbzx 7,4,11
	stbx 7,3,11
	bge- 1,.L1420
	addi 9,9,14
	rldicl 12,6,0,32
	cmplw 5,9,5
	lbzx 5,4,12
	stbx 5,3,12
	bge- 5,.L1420
	rldicl 8,9,0,32
	lbzx 4,4,8
	stbx 4,3,8
	b .L1420
.L1534:
	lbz 0,-1(4)
	mr 11,4
	mr 9,3
	stb 0,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(11)
	stb 10,-2(9)
	bdz .L1420
	lbz 0,-1(4)
	mr 11,4
	mr 9,3
	stb 0,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(11)
	stb 10,-2(9)
	bdnz .L1534
	b .L1420
.L1546:
	cmpdi 5,5,0
	rldicl 6,12,0,32
	mr 9,5
	beq- 5,.L1420
.L1423:
	rldicl 11,9,0,32
	andi. 10,11,0x1
	addi 0,6,-1
	add 6,3,0
	add 4,4,0
	addi 3,11,-1
	beq- 0,.L1477
	cmpdi 6,3,0
	lbzu 10,1(4)
	stbu 10,1(6)
	beq- 6,.L1420
.L1477:
	srdi 9,11,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1532
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(6)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,6,1
	stb 8,1(9)
.L1439:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1439
	b .L1420
.L1532:
	lbz 7,1(4)
	mr 12,4
	mr 9,6
	stb 7,1(6)
	addi 4,4,2
	addi 6,6,2
	lbz 5,2(12)
	stb 5,2(9)
	bdnz .L1532
	b .L1420
.L1427:
	andi. 9,11,0x1
	addi 0,11,-1
	addi 10,4,-4
	addi 9,3,-4
	beq- 0,.L1483
	cmpdi 7,0,0
	lwz 8,0(4)
	mr 10,4
	stw 8,0(3)
	mr 9,3
	beq- 7,.L1433
.L1483:
	srdi 8,11,1
	cmpdi 1,8,2
	mtctr 8
	ble 1,.L1533
	addi 8,8,-1
	mtctr 8
	lwz 6,4(10)
	stw 6,4(9)
	addi 7,10,4
	lwz 6,4(7)
	addi 8,9,4
	stw 6,4(8)
.L1432:
	lwz 6,8(7)
	stw 6,8(8)
	addi 7,7,8
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L1432
	b .L1433
.L1533:
	lwz 11,4(10)
	mr 6,10
	mr 7,9
	stw 11,4(9)
	addi 10,10,8
	addi 9,9,8
	lwz 0,8(6)
	stw 0,8(7)
	bdnz .L1533
	b .L1433
.L1548:
	addi 7,12,1
	b .L1434
.L1446:
	mr 7,12
	b .L1434
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
	stw 3,-16(1)
	addi 9,1,-16
	lfiwzx 1,0,9
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
	stw 3,-16(1)
	addi 9,1,-16
	lfiwzx 1,0,9
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
	std 3,-16(1)
	lfd 1,-16(1)
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
	std 3,-16(1)
	lfd 1,-16(1)
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
	bne- 0,.L1558
	srawi 9,3,14
	cmpwi 1,9,0
	bne- 1,.L1557
	srdi. 9,3,13
	bne- 0,.L1559
	srdi. 9,3,12
	bne- 0,.L1560
	srdi. 9,3,11
	bne- 0,.L1561
	srdi. 9,3,10
	bne- 0,.L1562
	srdi. 9,3,9
	bne- 0,.L1563
	srdi. 9,3,8
	bne- 0,.L1564
	srdi. 9,3,7
	bne- 0,.L1565
	srdi. 9,3,6
	bne- 0,.L1566
	srdi. 9,3,5
	bne- 0,.L1567
	srdi. 9,3,4
	bne- 0,.L1568
	srdi. 9,3,3
	bne- 0,.L1569
	srdi. 9,3,2
	bne- 0,.L1570
	srdi. 9,3,1
	bne- 0,.L1571
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1557:
	rldicl 3,9,0,59
	blr
.L1558:
	li 9,0
	b .L1557
.L1569:
	li 9,12
	b .L1557
.L1559:
	li 9,2
	b .L1557
.L1560:
	li 9,3
	b .L1557
.L1561:
	li 9,4
	b .L1557
.L1562:
	li 9,5
	b .L1557
.L1563:
	li 9,6
	b .L1557
.L1564:
	li 9,7
	b .L1557
.L1565:
	li 9,8
	b .L1557
.L1566:
	li 9,9
	b .L1557
.L1567:
	li 9,10
	b .L1557
.L1568:
	li 9,11
	b .L1557
.L1570:
	li 9,13
	b .L1557
.L1571:
	li 9,14
	b .L1557
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
	bne- 0,.L1576
	andi. 9,3,0x2
	bne- 0,.L1577
	andi. 9,3,0x4
	bne- 0,.L1578
	andi. 9,3,0x8
	bne- 0,.L1579
	andi. 9,3,0x10
	bne- 0,.L1580
	andi. 9,3,0x20
	bne- 0,.L1581
	andi. 9,3,0x40
	bne- 0,.L1582
	andi. 9,3,0x80
	bne- 0,.L1583
	andi. 9,3,0x100
	bne- 0,.L1584
	andi. 9,3,0x200
	bne- 0,.L1585
	andi. 9,3,0x400
	bne- 0,.L1586
	andi. 9,3,0x800
	bne- 0,.L1587
	andi. 9,3,0x1000
	bne- 0,.L1588
	andi. 9,3,0x2000
	bne- 0,.L1589
	andi. 9,3,0x4000
	bne- 0,.L1590
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1575:
	rldicl 3,5,0,59
	blr
.L1576:
	li 5,0
	b .L1575
.L1577:
	li 5,1
	b .L1575
.L1588:
	li 5,12
	b .L1575
.L1578:
	li 5,2
	b .L1575
.L1579:
	li 5,3
	b .L1575
.L1580:
	li 5,4
	b .L1575
.L1581:
	li 5,5
	b .L1575
.L1582:
	li 5,6
	b .L1575
.L1583:
	li 5,7
	b .L1575
.L1584:
	li 5,8
	b .L1575
.L1585:
	li 5,9
	b .L1575
.L1586:
	li 5,10
	b .L1575
.L1587:
	li 5,11
	b .L1575
.L1589:
	li 5,13
	b .L1575
.L1590:
	li 5,14
	b .L1575
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
	addis 9,2,.LC43@toc@ha
	lfs 0,.LC43@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1598
	fctidz 1,1
	stfd 1,-16(1)
	ld 3,-16(1)
	blr
.L1598:
	fsubs 2,1,0
	fctidz 3,2
	stfd 3,-16(1)
	ld 3,-16(1)
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
	vxor 12,12,12
	stw 3,-48(1)
	addis 9,2,.LC45@toc@ha
	addis 4,2,.LC46@toc@ha
	addis 6,2,.LC47@toc@ha
	addis 12,2,.LC48@toc@ha
	addi 3,9,.LC45@toc@l
	vspltisw 10,1
	lvx 13,0,3
	addi 8,1,-96
	li 10,48
	addi 5,4,.LC46@toc@l
	lvewx 0,8,10
	vspltw 0,0,0
	addi 7,6,.LC47@toc@l
	vsraw 1,0,13
	lvx 11,0,5
	addi 11,12,.LC48@toc@l
	vand 13,1,10
	vsraw 11,0,11
	li 0,64
	vand 11,11,10
	lvx 1,0,7
	vadduwm 13,13,11
	vsraw 1,0,1
	lvx 11,0,11
	vand 1,1,10
	vsraw 0,0,11
	vadduwm 13,1,13
	vand 10,0,10
	vadduwm 11,10,13
	vsldoi 1,11,12,8
	vadduwm 13,1,11
	vsldoi 12,13,12,4
	vadduwm 0,12,13
	stvx 0,8,0
	lwz 10,-32(1)
	lwz 9,-4(1)
	rldicl 3,10,0,63
	mtvrsave 9
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
	vxor 12,12,12
	stw 3,-48(1)
	addis 9,2,.LC45@toc@ha
	addis 4,2,.LC46@toc@ha
	addis 6,2,.LC47@toc@ha
	addis 12,2,.LC48@toc@ha
	vspltisw 10,1
	addi 3,9,.LC45@toc@l
	addi 8,1,-96
	lvx 13,0,3
	li 10,48
	addi 5,4,.LC46@toc@l
	lvewx 0,8,10
	vspltw 0,0,0
	addi 7,6,.LC47@toc@l
	vsraw 1,0,13
	lvx 11,0,5
	addi 11,12,.LC48@toc@l
	vand 13,1,10
	vsraw 11,0,11
	li 0,64
	vand 11,11,10
	lvx 1,0,7
	vadduwm 13,13,11
	vsraw 1,0,1
	lvx 11,0,11
	vand 1,1,10
	vsraw 0,0,11
	vadduwm 13,1,13
	vand 10,0,10
	vadduwm 11,10,13
	vsldoi 1,11,12,8
	vadduwm 13,1,11
	vsldoi 12,13,12,4
	vadduwm 0,12,13
	stvx 0,8,0
	lwa 3,-32(1)
	lwz 10,-4(1)
	mtvrsave 10
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
	beq- 0,.L1604
.L1605:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	add 3,3,5
	slwi 4,4,1
	bne+ 1,.L1605
.L1604:
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
	beq- 0,.L1609
	cmpdi 1,4,0
	beq- 1,.L1609
.L1610:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne+ 0,.L1610
.L1609:
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
	li 9,16
	mtctr 9
	li 12,32
	li 10,1
	blt+ 0,.L1615
	b .L1644
.L1619:
	rldicl 4,11,0,32
	slwi 9,4,1
	cmpwi 6,4,0
	cmplw 5,3,9
	slwi 10,10,1
	ble- 7,.L1617
	blt- 6,.L1620
	rldicl 4,9,0,32
	slwi 10,10,1
	ble- 5,.L1617
	bdz .L1618
.L1615:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge+ 1,.L1619
.L1620:
	li 12,0
.L1625:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 11,7,0xff
	subf 8,4,3
	neg 9,11
	beq- 0,.L1622
	mr 3,8
.L1622:
	and 0,10,9
	srwi 10,10,1
	cmpwi 1,10,0
	or 12,12,0
	rldicl 3,3,0,32
	srdi 4,4,1
	bne+ 1,.L1625
.L1618:
	cmpdi 7,5,0
	beq+ 7,.L1626
	mr 12,3
.L1626:
	rldicl 3,12,0,32
	blr
.L1617:
	cmpwi 0,10,0
	bne+ 0,.L1620
	li 12,0
	b .L1618
.L1644:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	subf 4,4,3
	beq- 0,.L1628
	mr 3,4
.L1628:
	rldicl 3,3,0,32
	b .L1618
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
	blt- 0,.L1648
	mfcr 3,128
	rlwinm 3,3,2,1
.L1648:
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
	blt- 0,.L1651
	mfcr 3,128
	rlwinm 3,3,2,1
.L1651:
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
	blt- 0,.L1669
	cmpdi 1,4,0
	beq- 1,.L1661
	li 6,0
.L1657:
	li 10,32
	li 8,0
	b .L1660
.L1670:
	beq- 7,.L1659
.L1660:
	rlwinm 9,4,0,31,31
	sradi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	slwi 3,3,1
	cmpwi 7,7,0
	add 8,8,5
	extsw 3,3
	bne+ 0,.L1670
.L1659:
	cmpwi 5,6,0
	beq- 5,.L1658
	neg 8,8
.L1658:
	extsw 3,8
	blr
.L1669:
	neg 4,4
	extsw 4,4
	li 6,1
	b .L1657
.L1661:
	li 8,0
	b .L1658
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
	li 5,0
	bge+ 0,.L1672
	neg 3,3
	li 9,0
	li 5,1
.L1672:
	cmpdi 1,4,0
	bge+ 1,.L1673
	neg 4,4
	mr 5,9
.L1673:
	cmplw 5,3,4
	li 0,16
	mtctr 0
	mr 8,3
	mr 10,4
	li 12,1
	bgt+ 5,.L1674
	b .L1703
.L1678:
	slwi 10,10,1
	cmplw 0,8,10
	cmpwi 7,10,0
	slwi 12,12,1
	ble- 0,.L1676
	blt- 7,.L1679
	slwi 10,10,1
	cmplw 1,8,10
	slwi 12,12,1
	ble- 1,.L1676
	bdz .L1690
.L1674:
	cmpwi 6,10,0
	bge+ 6,.L1678
.L1679:
	li 11,0
.L1684:
	rldicl 0,8,0,32
	rldicl 9,10,0,32
	subf 6,9,0
	srdi 3,6,63
	xori 4,3,0x1
	andi. 7,4,0xff
	subf 0,10,8
	neg 9,7
	beq- 0,.L1681
	mr 8,0
.L1681:
	and 6,12,9
	srwi 12,12,1
	cmpwi 6,12,0
	or 11,11,6
	srwi 10,10,1
	bne+ 6,.L1684
.L1686:
	cmpwi 7,5,0
	rldicl 3,11,0,32
	beqlr- 7
.L1706:
	neg 3,3
	blr
.L1676:
	cmpwi 5,12,0
	bne+ 5,.L1679
.L1690:
	cmpwi 7,5,0
	li 3,0
	beqlr- 7
	b .L1706
.L1703:
	rldicl 6,3,0,32
	rldicl 3,4,0,32
	subf 4,3,6
	srdi 7,4,63
	xori 11,7,0x1
	b .L1686
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
	mr. 8,3
	li 6,0
	bge+ 0,.L1708
	neg 8,8
	li 6,1
.L1708:
	sradi 7,4,63
	xor 4,7,4
	subf 0,7,4
	cmplw 1,8,0
	li 5,16
	mtctr 5
	mr 12,0
	rldicl 3,8,0,32
	li 4,1
	bgt+ 1,.L1709
	b .L1741
.L1713:
	slwi 12,12,1
	cmplw 6,3,12
	cmpwi 7,12,0
	slwi 4,4,1
	ble- 6,.L1711
	blt- 7,.L1739
	slwi 12,12,1
	cmplw 1,3,12
	slwi 4,4,1
	ble- 1,.L1711
	bdz .L1712
.L1709:
	cmpwi 5,12,0
	bge+ 5,.L1713
.L1739:
	rldicl 7,3,0,32
	rldicl 8,12,0,32
	subf. 8,8,7
	srwi 4,4,1
	cmpwi 5,4,0
	subf 0,12,3
	blt- 0,.L1716
	rldicl 3,0,0,32
.L1716:
	srwi 12,12,1
	bne+ 5,.L1739
.L1712:
	cmpwi 6,6,0
	beqlr- 6
	neg 3,3
	blr
.L1711:
	cmpwi 0,4,0
	bne+ 0,.L1739
	b .L1712
.L1741:
	rldicl 10,8,0,32
	rldicl 9,0,0,32
	subf. 9,9,10
	subf 11,0,8
	rldicl 3,8,0,32
	blt- 0,.L1712
	rldicl 3,11,0,32
	b .L1712
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
	bge- 0,.L1931
	andi. 9,4,0x8000
	bne- 0,.L1748
	rldic 11,4,1,48
	cmplw 1,3,11
	ble- 1,.L1821
	andi. 10,11,0x8000
	bne- 0,.L1821
	rldic 11,4,2,48
	cmplw 5,3,11
	ble- 5,.L1823
	andi. 10,11,0x8000
	bne- 0,.L1823
	rldic 11,4,3,48
	cmplw 6,3,11
	ble- 6,.L1825
	andi. 10,11,0x8000
	bne- 0,.L1825
	rldic 11,4,4,48
	cmplw 7,3,11
	ble- 7,.L1827
	andi. 10,11,0x8000
	bne- 0,.L1827
	rldic 11,4,5,48
	cmplw 1,3,11
	ble- 1,.L1829
	andi. 10,11,0x8000
	bne- 0,.L1829
	rldic 11,4,6,48
	cmplw 5,3,11
	ble- 5,.L1831
	andi. 10,11,0x8000
	bne- 0,.L1831
	rldic 11,4,7,48
	cmplw 6,3,11
	ble- 6,.L1833
	andi. 10,11,0x8000
	bne- 0,.L1833
	rldic 11,4,8,48
	cmplw 7,3,11
	ble- 7,.L1835
	andi. 10,11,0x8000
	bne- 0,.L1835
	rldic 11,4,9,48
	cmplw 1,3,11
	ble- 1,.L1837
	andi. 10,11,0x8000
	bne- 0,.L1837
	rldic 11,4,10,48
	cmplw 5,3,11
	ble- 5,.L1839
	andi. 10,11,0x8000
	bne- 0,.L1839
	rldic 11,4,11,48
	cmplw 6,3,11
	ble- 6,.L1841
	andi. 10,11,0x8000
	bne- 0,.L1841
	rldic 11,4,12,48
	cmplw 7,3,11
	ble- 7,.L1843
	andi. 10,11,0x8000
	bne- 0,.L1843
	rldic 11,4,13,48
	cmplw 1,3,11
	ble- 1,.L1845
	andi. 10,11,0x8000
	bne- 0,.L1845
	rldic 11,4,14,48
	cmplw 5,3,11
	ble- 5,.L1847
	andi. 10,11,0x8000
	bne- 0,.L1847
	rldic 10,4,15,48
	cmplw 6,3,10
	ble- 6,.L1848
	cmpdi 7,10,0
	li 7,0
	bne- 7,.L1848
.L1751:
	cmpdi 7,5,0
	beq+ 7,.L1810
	mr 7,3
.L1810:
	rlwinm 3,7,0,0xffff
	blr
.L1821:
	li 12,2
.L1750:
	subf. 0,11,3
	subf 6,11,3
	rlwinm 4,6,0,0xffff
	blt- 0,.L1817
	mr 3,4
.L1817:
	not 8,0
	rlwinm 3,3,0,0xffff
	srdi 0,11,1
	subf. 6,0,3
	sradi 7,8,63
	subf 4,0,3
	and 9,12,7
	rldicl 10,12,63,49
	rlwinm 8,4,0,0xffff
	blt- 0,.L1753
	mr 3,8
.L1753:
	not 7,6
	srwi 4,12,2
	sradi 0,7,63
	cmpwi 1,4,0
	and 10,10,0
	or 9,10,9
	rlwinm 3,3,0,0xffff
	mr 7,9
	srdi 6,11,2
	beq- 1,.L1751
	subf 8,6,3
	srdi 7,8,63
	xori 0,7,0x1
	andi. 10,0,0xff
	subf 6,6,3
	rlwinm 8,6,0,0xffff
	beq- 0,.L1757
	mr 3,8
.L1757:
	cmpwi 5,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1759
	mr 7,4
.L1759:
	srwi 4,12,3
	cmpwi 6,4,0
	or 9,9,7
	mr 7,9
	srdi 0,11,3
	beq- 6,.L1751
	subf 10,0,3
	srdi 6,10,63
	xori 8,6,0x1
	andi. 7,8,0xff
	subf 0,0,3
	rlwinm 10,0,0,0xffff
	beq- 0,.L1761
	mr 3,10
.L1761:
	cmpwi 7,7,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 7,.L1763
	mr 8,4
.L1763:
	srwi 4,12,4
	cmpwi 1,4,0
	or 9,9,8
	mr 7,9
	srdi 6,11,4
	beq- 1,.L1751
	subf 7,6,3
	srdi 0,7,63
	xori 10,0,0x1
	andi. 8,10,0xff
	subf 6,6,3
	rlwinm 7,6,0,0xffff
	beq- 0,.L1765
	mr 3,7
.L1765:
	cmpwi 5,8,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 5,.L1767
	mr 0,4
.L1767:
	srwi 4,12,5
	cmpwi 6,4,0
	or 9,9,0
	mr 7,9
	srdi 10,11,5
	beq- 6,.L1751
	subf 8,10,3
	srdi 6,8,63
	xori 7,6,0x1
	andi. 0,7,0xff
	subf 10,10,3
	rlwinm 8,10,0,0xffff
	beq- 0,.L1769
	mr 3,8
.L1769:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1771
	mr 7,4
.L1771:
	srwi 4,12,6
	cmpwi 1,4,0
	or 9,9,7
	mr 7,9
	srdi 6,11,6
	beq- 1,.L1751
	subf 0,6,3
	srdi 10,0,63
	xori 8,10,0x1
	andi. 7,8,0xff
	subf 6,6,3
	rlwinm 0,6,0,0xffff
	beq- 0,.L1773
	mr 3,0
.L1773:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq- 5,.L1775
	mr 10,4
.L1775:
	srwi 4,12,7
	cmpwi 6,4,0
	or 9,9,10
	mr 7,9
	srdi 8,11,7
	beq- 6,.L1751
	subf 7,8,3
	srdi 6,7,63
	xori 0,6,0x1
	andi. 10,0,0xff
	subf 8,8,3
	rlwinm 7,8,0,0xffff
	beq- 0,.L1777
	mr 3,7
.L1777:
	cmpwi 7,10,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 7,.L1779
	mr 0,4
.L1779:
	srwi 4,12,8
	cmpwi 1,4,0
	or 9,9,0
	mr 7,9
	srdi 6,11,8
	beq- 1,.L1751
	subf 10,6,3
	srdi 8,10,63
	xori 7,8,0x1
	andi. 0,7,0xff
	subf 6,6,3
	rlwinm 10,6,0,0xffff
	beq- 0,.L1781
	mr 3,10
.L1781:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 5,.L1783
	mr 8,4
.L1783:
	srwi 4,12,9
	cmpwi 6,4,0
	or 9,9,8
	mr 7,9
	srdi 0,11,9
	beq- 6,.L1751
	subf 7,0,3
	srdi 6,7,63
	xori 10,6,0x1
	andi. 8,10,0xff
	subf 0,0,3
	rlwinm 7,0,0,0xffff
	beq- 0,.L1785
	mr 3,7
.L1785:
	cmpwi 7,8,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq- 7,.L1787
	mr 10,4
.L1787:
	srwi 4,12,10
	cmpwi 1,4,0
	or 9,9,10
	mr 7,9
	srdi 6,11,10
	beq- 1,.L1751
	subf 8,6,3
	srdi 0,8,63
	xori 7,0,0x1
	andi. 10,7,0xff
	subf 6,6,3
	rlwinm 8,6,0,0xffff
	beq- 0,.L1789
	mr 3,8
.L1789:
	cmpwi 5,10,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 5,.L1791
	mr 0,4
.L1791:
	srwi 4,12,11
	cmpwi 6,4,0
	or 9,9,0
	mr 7,9
	srdi 10,11,11
	beq- 6,.L1751
	subf 7,10,3
	srdi 6,7,63
	xori 8,6,0x1
	andi. 0,8,0xff
	subf 10,10,3
	rlwinm 7,10,0,0xffff
	beq- 0,.L1793
	mr 3,7
.L1793:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 7,.L1795
	mr 8,4
.L1795:
	srwi 4,12,12
	cmpwi 1,4,0
	or 9,9,8
	mr 7,9
	srdi 6,11,12
	beq- 1,.L1751
	subf 0,6,3
	srdi 10,0,63
	xori 7,10,0x1
	andi. 8,7,0xff
	subf 6,6,3
	rlwinm 0,6,0,0xffff
	beq- 0,.L1797
	mr 3,0
.L1797:
	cmpwi 5,8,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq- 5,.L1799
	mr 10,4
.L1799:
	srwi 4,12,13
	cmpwi 6,4,0
	or 9,9,10
	mr 7,9
	srdi 8,11,13
	beq- 6,.L1751
	subf 7,8,3
	srdi 6,7,63
	xori 0,6,0x1
	andi. 10,0,0xff
	subf 8,8,3
	rlwinm 7,8,0,0xffff
	beq- 0,.L1801
	mr 3,7
.L1801:
	cmpwi 7,10,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 7,.L1803
	mr 0,4
.L1803:
	srwi 4,12,14
	cmpwi 1,4,0
	or 9,9,0
	mr 7,9
	srdi 6,11,14
	beq- 1,.L1751
	subf 10,6,3
	srdi 8,10,63
	xori 7,8,0x1
	andi. 0,7,0xff
	subf 6,6,3
	rlwinm 10,6,0,0xffff
	beq- 0,.L1805
	mr 3,10
.L1805:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 5,.L1807
	mr 8,4
.L1807:
	cmpwi 6,12,16384
	or 12,9,8
	srdi 11,11,15
	mr 7,12
	beq- 6,.L1751
	subf 9,11,3
	srdi 4,9,63
	xori 7,4,0x1
	andi. 0,7,0xff
	subf 6,11,3
	rlwinm 10,6,0,0xffff
	beq- 0,.L1809
	mr 3,10
.L1809:
	rlwinm 3,3,0,0xffff
	or 7,12,0
	b .L1751
.L1823:
	li 12,4
	b .L1750
.L1825:
	li 12,8
	b .L1750
.L1827:
	li 12,16
	b .L1750
.L1837:
	li 12,512
	b .L1750
.L1829:
	li 12,32
	b .L1750
.L1831:
	li 12,64
	b .L1750
.L1833:
	li 12,128
	b .L1750
.L1835:
	li 12,256
	b .L1750
.L1931:
	xor 9,4,3
	cntlzw 0,9
	srwi 6,0,5
	andi. 7,6,0xff
	subf 4,4,3
	rlwinm 8,4,0,0xffff
	beq- 0,.L1746
	mr 3,8
.L1746:
	rlwinm 3,3,0,0xffff
	b .L1751
.L1839:
	li 12,1024
	b .L1750
.L1841:
	li 12,2048
	b .L1750
.L1843:
	li 12,4096
	b .L1750
.L1845:
	li 12,8192
	b .L1750
.L1847:
	li 12,16384
	b .L1750
.L1848:
	li 9,-1
	li 12,0
	rlwinm 11,9,0,16,16
	ori 12,12,0x8000
	b .L1750
.L1748:
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	li 7,1
	b .L1751
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
	li 8,32
	mtctr 8
	mr 9,3
	li 6,1
	blt+ 0,.L1933
	b .L1965
.L1937:
	sldi 4,4,1
	cmpld 5,9,4
	sldi 6,6,1
	ble- 5,.L1935
	andis. 3,4,0x8000
	bne- 0,.L1938
	sldi 4,4,1
	cmpld 6,9,4
	sldi 6,6,1
	ble- 6,.L1935
	bdz .L1936
.L1933:
	andis. 3,4,0x8000
	beq+ 0,.L1937
.L1938:
	li 3,0
.L1943:
	subfc 8,4,9
	subfe 7,7,7
	addi 11,7,1
	andi. 12,11,0xff
	subf 8,4,9
	cmpwi 1,12,0
	beq- 0,.L1940
	mr 9,8
.L1940:
	li 0,0
	beq- 1,.L1942
	mr 0,6
.L1942:
	srdi. 6,6,1
	or 3,3,0
	srdi 4,4,1
	bne+ 0,.L1943
.L1936:
	cmpdi 5,5,0
	beqlr+ 5
	mr 3,9
	blr
.L1935:
	cmpdi 7,6,0
	bne+ 7,.L1938
	b .L1936
.L1965:
	subfc 10,4,3
	subfe 3,3,3
	addi 0,3,1
	rlwinm 10,0,0,0xff
	cmpwi 1,10,0
	subf 4,4,9
	beq- 1,.L1946
	mr 9,4
.L1946:
	rlwinm 3,0,0,0xff
	b .L1936
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
	beq- 0,.L1968
	addi 6,4,-32
	slw 5,3,6
	li 4,0
	sldi 7,5,32
	or 3,4,7
	blr
.L1968:
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
	beq- 0,.L1974
	addi 5,5,-64
	sld 3,4,5
	li 4,0
	blr
.L1974:
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
	beq- 0,.L1979
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
.L1979:
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
	beq- 0,.L1985
	addi 5,5,-64
	srad 4,3,5
	sradi 3,3,63
	blr
.L1985:
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
	rldicl 7,3,0,32
	addis 0,7,0xffff
	srdi 4,0,63
	slwi 5,4,4
	subfic 9,5,16
	srw 3,3,9
	rlwinm 8,3,0,16,23
	cntlzw 6,8
	srwi 10,6,5
	slwi 11,10,3
	subfic 12,11,8
	srw 7,3,12
	rlwinm 0,7,0,24,27
	cntlzw 4,0
	srwi 9,4,5
	slwi 10,9,2
	subfic 3,10,4
	srw 8,7,3
	rlwinm 6,8,0,28,29
	cntlzw 12,6
	srwi 7,12,5
	slwi 0,7,1
	subfic 4,0,2
	srw 9,8,4
	andi. 6,9,0x2
	add 5,11,5
	add 11,10,5
	bne- 0,.L1992
	add 3,0,11
	subfic 10,9,2
	add 8,10,3
	extsw 3,8
	blr
.L1992:
	add 3,0,11
	li 10,0
	add 8,10,3
	extsw 3,8
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
	srdi 0,9,6
	andi. 5,0,0xff
	subfic 10,3,0
	subfe 10,10,10
	and 3,10,3
	bne- 0,.L1996
	li 4,0
.L1996:
	or 4,3,4
	cntlzd 6,4
	slwi 7,5,6
	add 8,7,6
	rldicl 3,8,0,49
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
	blt- 0,.L1999
	li 0,2
	bgt- 0,.L1998
	cmplw 1,3,4
	li 0,0
	blt- 1,.L1998
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L1998:
	rldicl 3,0,0,62
	blr
.L1999:
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
	blt- 0,.L2005
	li 5,1
	bgt- 0,.L2004
	cmplw 1,3,4
	li 5,-1
	blt- 1,.L2004
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L2004:
	extsw 3,5
	blr
.L2005:
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
	blt- 0,.L2010
	li 0,2
	bgt- 0,.L2009
	cmpld 1,4,6
	li 0,0
	blt- 1,.L2009
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2009:
	rldicl 3,0,0,62
	blr
.L2010:
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
	cntlzd 9,4
	srdi 0,9,6
	andi. 5,0,0xff
	bne- 0,.L2017
	li 3,0
.L2017:
	addi 10,5,-1
	extsw 6,10
	and 4,6,4
	or 7,3,4
	addi 8,7,-1
	slwi 3,5,6
	andc 11,8,7
	popcntd 12,11
	add 9,3,12
	rldicl 3,9,0,32
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
	bne- 0,.L2019
	cmpdi 1,3,0
	li 4,0
	bne- 1,.L2023
	rldicl 3,4,0,32
	blr
.L2019:
	addi 9,4,-1
	andc 0,9,4
	popcntd 3,0
	addi 4,3,1
	rldicl 3,4,0,32
	blr
.L2023:
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
	beq- 0,.L2025
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
.L2025:
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
	beq- 0,.L2031
	addi 5,5,-64
	srd 4,3,5
	li 3,0
	blr
.L2031:
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
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,10,9
	srwi 3,3,16
	srwi 4,4,16
	mullw 0,9,3
	srwi 7,8,16
	mullw 5,10,4
	add 6,0,7
	rlwinm 11,6,0,0xffff
	srwi 12,6,16
	mullw 9,3,4
	add 10,5,11
	srwi 3,10,16
	rlwimi 8,10,16,0,31-16
	rldicl 8,8,0,32
	add 4,12,9
	add 0,4,3
	sldi 7,0,32
	or 3,8,7
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
	srwi 6,8,16
	rlwimi 10,8,16,0,31-16
	rldicl 10,10,0,32
	mullw 11,3,11
	add 3,0,7
	add 9,3,6
	sldi 12,9,32
	or 3,10,12
	sradi 0,3,32
	mullw 4,4,5
	add 5,11,0
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
	lis 0,0x5555
	std 24,-64(1)
	std 31,-8(1)
	sldi 12,3,63
	.cfi_offset 24, -64
	.cfi_offset 31, -8
	srdi 31,4,1
	std 30,-16(1)
	ori 24,0,0x5555
	std 28,-32(1)
	or 6,12,31
	std 26,-48(1)
	rldimi 24,24,32,0
	std 29,-24(1)
	and 8,6,24
	std 25,-56(1)
	.cfi_offset 30, -16
	.cfi_offset 28, -32
	.cfi_offset 26, -48
	.cfi_offset 29, -24
	.cfi_offset 25, -56
	srdi 30,3,1
	std 27,-40(1)
	.cfi_offset 27, -40
	subfc 9,8,4
	and 7,30,24
	subfe 28,7,3
	lis 4,0x3333
	srdi 11,9,2
	sldi 3,28,62
	ori 26,4,0x3333
	rldimi 26,26,32,0
	or 29,3,11
	and 12,29,26
	ld 29,-24(1)
	and 6,9,26
	srdi 0,28,2
	addc 24,12,6
	and 31,0,26
	and 5,28,26
	adde 30,31,5
	srdi 25,24,4
	rldimi 25,30,60,0
	lis 8,0xf0f
	addc 7,25,24
	ld 24,-64(1)
	srdi 4,30,4
	ld 25,-56(1)
	ori 28,8,0xf0f
	rldimi 28,28,32,0
	adde 11,4,30
	ld 30,-16(1)
	and 3,11,28
	and 10,7,28
	ld 28,-32(1)
	add 26,3,10
	srdi 0,26,32
	add 27,0,26
	ld 26,-48(1)
	srwi 31,27,16
	add 12,31,27
	ld 27,-40(1)
	srwi 5,12,8
	ld 31,-8(1)
	add 6,5,12
	rlwinm 3,6,0,0xff
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
	addis 9,2,.LC37@toc@ha
	fmr 0,1
	lfs 12,.LC37@toc@l(9)
	andi. 9,4,0x1
	mr 3,4
	fmr 1,12
	beq- 0,.L2049
.L2051:
	fmul 1,1,0
.L2049:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq- 0,.L2050
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2051
.L2055:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2051
	b .L2055
.L2050:
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
	addis 9,2,.LC37@toc@ha
	fmr 0,1
	lfs 12,.LC37@toc@l(9)
	andi. 9,4,0x1
	mr 3,4
	fmr 1,12
	beq- 0,.L2057
.L2059:
	fmuls 1,1,0
.L2057:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq- 0,.L2058
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2059
.L2063:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne- 0,.L2059
	b .L2063
.L2058:
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
	blt- 0,.L2066
	li 0,2
	bgt- 0,.L2065
	cmplw 1,3,4
	li 0,0
	blt- 1,.L2065
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2065:
	rldicl 3,0,0,62
	blr
.L2066:
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
	blt- 0,.L2072
	li 5,1
	bgt- 0,.L2071
	cmplw 1,3,4
	li 5,-1
	blt- 1,.L2071
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L2071:
	extsw 3,5
	blr
.L2072:
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
	blt- 0,.L2077
	li 0,2
	bgt- 0,.L2076
	cmpld 1,4,6
	li 0,0
	blt- 1,.L2076
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2076:
	rldicl 3,0,0,62
	blr
.L2077:
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
	.set	.LC2,.LC27+8
	.set	.LC3,.LC27+8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.long	-8388609
	.align 2
.LC7:
	.long	2139095039
	.set	.LC10,.LC14
	.set	.LC11,.LC15
	.section	.rodata.cst16
	.align 4
.LC14:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC15:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.set	.LC19,.LC27
	.section	.rodata.cst4
	.align 2
.LC20:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC27:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC28:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC33:
	.long	-1082130432
	.align 2
.LC35:
	.long	-1090519040
	.align 2
.LC37:
	.long	1065353216
	.align 2
.LC43:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC45:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC46:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC47:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC48:
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
