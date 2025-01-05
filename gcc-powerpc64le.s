	.file	"mini-libc.c"
	.machine power8
	.machine altivec
	.abiversion 2
	.section	".text"
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
	.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	cmpld 0,3,4
	ble 0,.L5
	cmpdi 6,5,0
	add 11,4,5
	add 0,3,5
	beqlr 6
	addi 12,5,-1
	cmpldi 7,12,14
	ble 7,.L7
	addi 6,5,-2
	add 8,3,12
	add 9,4,6
	subf 10,9,8
	addi 7,10,14
	cmpldi 1,7,14
	ble 1,.L7
	srdi 7,5,4
	addi 9,5,-16
	andi. 6,7,0x3
	add 4,4,9
	add 10,3,9
	addi 12,7,-1
	mr 8,7
	li 9,0
	beq 0,.L94
	cmpdi 5,6,1
	beq 5,.L110
	cmpdi 6,6,2
	beq 6,.L111
	lxvd2x 7,0,4
	mr 7,12
	li 9,-16
	stxvd2x 7,0,10
.L111:
	lxvd2x 8,4,9
	addi 7,7,-1
	stxvd2x 8,10,9
	addi 9,9,-16
.L110:
	lxvd2x 9,4,9
	cmpdi 7,7,1
	stxvd2x 9,10,9
	addi 9,9,-16
	beq 7,.L158
.L94:
	srdi 6,8,2
	mtctr 6
.L8:
	lxvd2x 10,4,9
	addi 12,9,-16
	addi 7,9,-32
	addi 8,9,-48
	stxvd2x 10,10,9
	addi 9,9,-64
	lxvd2x 11,4,12
	stxvd2x 11,10,12
	lxvd2x 12,4,7
	stxvd2x 12,10,7
	lxvd2x 13,4,8
	stxvd2x 13,10,8
	bdnz .L8
.L158:
	andi. 9,5,0xf
	rldicr 4,5,0,59
	subf 11,4,11
	subf 9,4,0
	subf 5,4,5
	beqlr 0
	cmpldi 1,5,1
	lbz 0,-1(11)
	stb 0,-1(9)
	beqlr 1
	cmpldi 5,5,2
	lbz 10,-2(11)
	stb 10,-2(9)
	beqlr 5
	cmpldi 6,5,3
	lbz 6,-3(11)
	stb 6,-3(9)
	beqlr 6
	cmpldi 7,5,4
	lbz 12,-4(11)
	stb 12,-4(9)
	beqlr 7
	cmpldi 0,5,5
	lbz 8,-5(11)
	stb 8,-5(9)
	beqlr 0
	cmpldi 1,5,6
	lbz 7,-6(11)
	stb 7,-6(9)
	beqlr 1
	cmpldi 5,5,7
	lbz 4,-7(11)
	stb 4,-7(9)
	beqlr 5
	cmpldi 6,5,8
	lbz 0,-8(11)
	stb 0,-8(9)
	beqlr 6
	cmpldi 7,5,9
	lbz 10,-9(11)
	stb 10,-9(9)
	beqlr 7
	cmpldi 0,5,10
	lbz 6,-10(11)
	stb 6,-10(9)
	beqlr 0
	cmpldi 1,5,11
	lbz 12,-11(11)
	stb 12,-11(9)
	beqlr 1
	cmpldi 5,5,12
	lbz 8,-12(11)
	stb 8,-12(9)
	beqlr 5
	cmpldi 6,5,13
	lbz 7,-13(11)
	stb 7,-13(9)
	beqlr 6
	cmpldi 7,5,14
	lbz 5,-14(11)
	stb 5,-14(9)
	beqlr 7
	lbz 11,-15(11)
	stb 11,-15(9)
	blr
	.p2align 4,,15
.L5:
	beqlr 0
	cmpdi 1,5,0
	beqlr 1
	addi 9,5,-1
	cmpldi 5,9,14
	ble 5,.L12
	addi 10,4,1
	subf 0,10,3
	cmpldi 6,0,14
	ble 6,.L12
	srdi 8,5,4
	li 12,0
	andi. 7,8,0x3
	addi 6,8,-1
	mr 11,8
	beq 0,.L106
	cmpdi 7,7,1
	beq 7,.L112
	cmpdi 1,7,2
	beq 1,.L113
	lxvd2x 0,0,4
	mr 8,6
	li 12,16
	stxvd2x 0,0,3
.L113:
	lxvd2x 1,4,12
	addi 8,8,-1
	stxvd2x 1,3,12
	addi 12,12,16
.L112:
	lxvd2x 2,4,12
	cmpdi 5,8,1
	stxvd2x 2,3,12
	addi 12,12,16
	beq 5,.L159
.L106:
	srdi 9,11,2
	mtctr 9
.L13:
	lxvd2x 3,4,12
	addi 0,12,16
	addi 7,12,32
	addi 10,12,48
	stxvd2x 3,3,12
	addi 12,12,64
	lxvd2x 4,4,0
	stxvd2x 4,3,0
	lxvd2x 5,4,7
	stxvd2x 5,3,7
	lxvd2x 6,4,10
	stxvd2x 6,3,10
	bdnz .L13
.L159:
	andi. 9,5,0xf
	rldicr 6,5,0,59
	add 11,4,6
	add 12,3,6
	subf 5,6,5
	beqlr 0
	cmpldi 6,5,1
	lbzx 4,4,6
	stbx 4,3,6
	beqlr 6
	cmpldi 7,5,2
	lbz 8,1(11)
	stb 8,1(12)
	beqlr 7
	cmpldi 1,5,3
	lbz 9,2(11)
	stb 9,2(12)
	beqlr 1
	cmpldi 5,5,4
	lbz 0,3(11)
	stb 0,3(12)
	beqlr 5
	cmpldi 0,5,5
	lbz 10,4(11)
	stb 10,4(12)
	beqlr 0
	cmpldi 6,5,6
	lbz 7,5(11)
	stb 7,5(12)
	beqlr 6
	cmpldi 7,5,7
	lbz 6,6(11)
	stb 6,6(12)
	beqlr 7
	cmpldi 1,5,8
	lbz 4,7(11)
	stb 4,7(12)
	beqlr 1
	cmpldi 5,5,9
	lbz 8,8(11)
	stb 8,8(12)
	beqlr 5
	cmpldi 0,5,10
	lbz 9,9(11)
	stb 9,9(12)
	beqlr 0
	cmpldi 6,5,11
	lbz 0,10(11)
	stb 0,10(12)
	beqlr 6
	cmpldi 7,5,12
	lbz 10,11(11)
	stb 10,11(12)
	beqlr 7
	cmpldi 1,5,13
	lbz 7,12(11)
	stb 7,12(12)
	beqlr 1
	cmpldi 5,5,14
	lbz 5,13(11)
	stb 5,13(12)
	beqlr 5
	lbz 11,14(11)
	stb 11,14(12)
	blr
	.p2align 4,,15
.L7:
	andi. 9,12,0x1
	mr 9,0
	bne 0,.L169
.L87:
	srdi 10,12,1
	addi 0,10,1
	mtctr 0
	b .L10
	.p2align 4,,15
.L170:
	lbz 7,-1(12)
	addi 9,9,-2
	stb 7,-1(8)
.L10:
	lbz 6,-1(11)
	addi 12,11,-1
	addi 8,9,-1
	addi 11,11,-2
	stb 6,-1(9)
	bdnz .L170
	blr
.L169:
	lbzu 4,-1(11)
	stbu 4,-1(9)
	b .L87
	.p2align 4,,15
.L12:
	andi. 10,9,0x1
	addi 12,4,-1
	addi 8,3,-1
	bne 0,.L171
.L99:
	srdi 4,9,1
	addi 9,4,1
	mtctr 9
	b .L16
	.p2align 4,,15
.L172:
	lbz 5,1(10)
	addi 8,8,2
	stb 5,1(7)
.L16:
	lbz 0,1(12)
	addi 10,12,1
	addi 7,8,1
	addi 12,12,2
	stb 0,1(8)
	bdnz .L172
	blr
.L171:
	lbz 6,0(4)
	mr 12,4
	mr 8,3
	stb 6,0(3)
	b .L99
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE2:
	.size	memmove,.-memmove
	.align 2
	.p2align 4,,15
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	cmpdi 0,6,0
	rlwinm 5,5,0,0xff
	beq 0,.L174
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne 0,.L195
.L184:
	srdi 0,6,1
	mtctr 0
	b .L175
	.p2align 4,,15
.L177:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq 7,.L192
	addi 3,3,1
	bdz .L174
.L175:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne 6,.L177
.L192:
	addi 3,3,1
	blr
	.p2align 4,,15
.L195:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq 1,.L192
	cmpdi 5,8,0
	addi 3,3,1
	bne 5,.L184
.L174:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE3:
	.size	memccpy,.-memccpy
	.align 2
	.p2align 4,,15
	.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	cmpdi 0,5,0
	rlwinm 4,4,0,0xff
	beq 0,.L200
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L217
.L203:
	srdi 0,5,1
	mtctr 0
.L197:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr 7
	addi 3,3,1
	bdnz .L197
.L200:
	li 3,0
	blr
	.p2align 4,,15
.L217:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr 1
	cmpdi 5,9,0
	addi 3,3,1
	bne 5,.L203
	b .L200
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE4:
	.size	memchr,.-memchr
	.align 2
	.p2align 4,,15
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L223
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L240
.L226:
	srdi 0,5,1
	mtctr 0
	b .L219
	.p2align 4,,15
.L221:
	lbz 10,1(3)
	lbz 9,1(4)
	addi 3,7,1
	addi 4,5,1
	cmpw 7,10,9
	bne 7,.L235
	bdz .L223
.L219:
	lbz 10,0(3)
	lbz 9,0(4)
	addi 7,3,1
	addi 5,4,1
	cmpw 6,10,9
	beq 6,.L221
.L235:
	subf 3,9,10
	extsw 3,3
	blr
	.p2align 4,,15
.L240:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne 1,.L235
	cmpdi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne 5,.L226
.L223:
	li 3,0
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE5:
	.size	memcmp,.-memcmp
	.align 2
	.p2align 4,,15
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
.LCF6:
0:	addis 2,12,.TOC.-.LCF6@ha
	addi 2,2,.TOC.-.LCF6@l
	.localentry	memcpy,.-memcpy
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L242
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L242:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE6:
	.size	memcpy,.-memcpy
	.align 2
	.p2align 4,,15
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	mr 10,5
	addi 5,5,-1
	andi. 8,10,0x1
	add 11,3,5
	rlwinm 4,4,0,0xff
	beq 0,.L252
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr 1
.L252:
	srdi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L260
	.p2align 4,,15
.L250:
	lbz 6,0(11)
	mr 3,11
	addi 9,11,-1
	cmpw 5,6,4
	beqlr 5
	lbz 7,0(9)
	mr 3,9
	addi 11,9,-1
	cmpw 6,7,4
	beqlr 6
	bdnz .L250
.L260:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE7:
	.size	memrchr,.-memrchr
	.align 2
	.p2align 4,,15
	.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
.LCF8:
0:	addis 2,12,.TOC.-.LCF8@ha
	addi 2,2,.TOC.-.LCF8@l
	.localentry	memset,.-memset
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L264
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	std 0,64(1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L264:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE8:
	.size	memset,.-memset
	.align 2
	.p2align 4,,15
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	lbz 9,0(4)
	rlwinm 10,9,0,0xff
	stb 9,0(3)
	cmpwi 0,10,0
	beqlr 0
	.p2align 4,,15
.L268:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne 1,.L268
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-stpcpy
	.align 2
	.p2align 4,,15
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	lbz 9,0(3)
	rlwinm 4,4,0,0xff
	cmpwi 0,9,0
	beqlr 0
	cmpw 1,9,4
	beqlr 1
	.p2align 5
.L279:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr 5
	cmpw 1,9,4
	bne 1,.L279
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-strchrnul
	.align 2
	.p2align 4,,15
	.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	.p2align 5
.L282:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr 0
	addi 3,3,1
	bne 7,.L282
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE11:
	.size	strchr,.-strchr
	.align 2
	.p2align 4,,15
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	lbz 9,0(3)
	lbz 10,0(4)
	mr 8,4
	cmpw 0,9,10
	beq 0,.L287
	b .L286
	.p2align 4,,15
.L288:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne 5,.L286
.L287:
	cmpwi 1,9,0
	bne 1,.L288
.L286:
	subf 3,10,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE12:
	.size	strcmp,.-strcmp
	.align 2
	.p2align 4,,15
	.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L296
	mr 4,3
	.p2align 4,,15
.L295:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne 1,.L295
	subf 3,3,4
	blr
	.p2align 4,,15
.L296:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE13:
	.size	strlen,.-strlen
	.align 2
	.p2align 4,,15
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L306
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	subf 6,3,0
	cmpwi 1,10,0
	addi 9,6,1
	mtctr 9
	bne 1,.L302
	b .L311
	.p2align 4,,15
.L313:
	bdz .L301
	bne 7,.L301
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq 6,.L312
	mr 4,8
.L302:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne 5,.L313
.L301:
	subf 3,7,10
	extsw 3,3
	blr
	.p2align 4,,15
.L306:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L312:
	lbz 7,1(4)
	b .L301
.L311:
	lbz 7,0(4)
	b .L301
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE14:
	.size	strncmp,.-strncmp
	.align 2
	.p2align 4,,15
	.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
.LCF15:
0:	addis 2,12,.TOC.-.LCF15@ha
	addi 2,2,.TOC.-.LCF15@l
	.localentry	swab,.-swab
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpdi 0,5,1
	ble 0,.L314
	addi 9,5,-2
	srdi 7,5,1
	cmpldi 1,9,13
	ble 1,.L316
	srdi 8,5,4
	addis 6,2,.LC1@toc@ha
	andi. 10,8,0x1
	addi 12,6,.LC1@toc@l
	addi 10,8,-1
	li 11,0
	lxvd2x 45,0,12
	bne 0,.L329
.L321:
	srdi 0,8,1
	mtctr 0
.L317:
	addi 9,11,16
	lxvd2x 33,3,11
	lxvd2x 32,3,9
	vperm 1,1,1,13
	stxvd2x 33,4,11
	vperm 0,0,0,13
	addi 11,11,32
	stxvd2x 32,4,9
	bdnz .L317
.L325:
	sldi 6,8,3
	sldi 12,8,4
	cmpld 6,7,6
	add 4,4,12
	add 3,3,12
	subf 5,12,5
	beq 6,.L314
.L316:
	cmpdi 7,5,3
	lhbrx 8,0,3
	sth 8,0(4)
	ble 7,.L314
	addi 10,3,2
	cmpdi 1,5,5
	lhbrx 11,0,10
	sth 11,2(4)
	ble 1,.L314
	addi 9,3,4
	cmpdi 0,5,7
	lhbrx 0,0,9
	sth 0,4(4)
	ble 0,.L314
	addi 6,3,6
	cmpdi 5,5,9
	lhbrx 12,0,6
	sth 12,6(4)
	ble 5,.L314
	addi 7,3,8
	cmpdi 6,5,11
	lhbrx 8,0,7
	sth 8,8(4)
	ble 6,.L314
	cmpdi 7,5,13
	addi 5,3,10
	lhbrx 10,0,5
	sth 10,10(4)
	ble 7,.L314
	addi 3,3,12
	lhbrx 11,0,3
	sth 11,12(4)
.L314:
	lwz 4,-4(1)
	mtvrsave 4
	blr
	.p2align 4,,15
.L329:
	lxvd2x 32,0,3
	cmpdi 5,10,0
	li 11,16
	vperm 1,0,0,13
	stxvd2x 33,0,4
	bne 5,.L321
	b .L325
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE15:
	.size	swab,.-swab
	.align 2
	.p2align 4,,15
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	ori 9,3,0x20
	li 10,1
	addi 0,9,-97
	cmplwi 0,0,25
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE16:
	.size	isalpha,.-isalpha
	.align 2
	.p2align 4,,15
	.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	cmplwi 0,3,127
	li 9,1
	isel 3,0,9,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE17:
	.size	isascii,.-isascii
	.align 2
	.p2align 4,,15
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L334
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 0,3,9,6
	rldicl 3,0,0,63
	blr
	.p2align 4,,15
.L334:
	li 0,1
	rldicl 3,0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE18:
	.size	isblank,.-isblank
	.align 2
	.p2align 4,,15
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	cmplwi 0,3,31
	ble 0,.L337
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 0,3,9,6
	rldicl 3,0,0,63
	blr
	.p2align 4,,15
.L337:
	li 0,1
	rldicl 3,0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-iscntrl
	.align 2
	.p2align 4,,15
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	addi 9,3,-48
	li 10,1
	cmplwi 0,9,9
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE20:
	.size	isdigit,.-isdigit
	.align 2
	.p2align 4,,15
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	addi 9,3,-33
	li 10,1
	cmplwi 0,9,93
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE21:
	.size	isgraph,.-isgraph
	.align 2
	.p2align 4,,15
	.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	addi 9,3,-97
	li 10,1
	cmplwi 0,9,25
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE22:
	.size	islower,.-islower
	.align 2
	.p2align 4,,15
	.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	addi 9,3,-32
	li 10,1
	cmplwi 0,9,94
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE23:
	.size	isprint,.-isprint
	.align 2
	.p2align 4,,15
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L344
	addi 3,3,-9
	li 9,1
	cmplwi 1,3,4
	isel 0,0,9,5
	rldicl 3,0,0,63
	blr
	.p2align 4,,15
.L344:
	li 0,1
	rldicl 3,0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE24:
	.size	isspace,.-isspace
	.align 2
	.p2align 4,,15
	.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	addi 9,3,-65
	li 10,1
	cmplwi 0,9,25
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE25:
	.size	isupper,.-isupper
	.align 2
	.p2align 4,,15
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	cmplwi 0,3,31
	li 10,1
	ble 0,.L347
	addi 9,3,-127
	li 10,1
	cmplwi 1,9,32
	bgt 1,.L351
.L347:
	rldicl 3,10,0,63
	blr
	.p2align 4,,15
.L351:
	addi 0,3,-8232
	cmplwi 5,0,1
	ble 5,.L347
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
	.size	iswcntrl,.-iswcntrl
	.align 2
	.p2align 4,,15
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	addi 9,3,-48
	li 10,1
	cmplwi 0,9,9
	isel 3,0,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE27:
	.size	iswdigit,.-iswdigit
	.align 2
	.p2align 4,,15
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	cmplwi 0,3,254
	ble 0,.L360
	cmplwi 1,3,8231
	li 12,1
	ble 1,.L355
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble 5,.L355
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble 6,.L355
	lis 0,0x10
	addi 5,4,4
	ori 6,0,0x3
	li 12,0
	cmplw 7,5,6
	bgt 7,.L355
	li 7,0
	rlwinm 3,3,0,16,30
	ori 11,7,0xfffe
	li 9,1
	cmpw 0,3,11
	isel 12,0,9,2
.L355:
	rldicl 3,12,0,63
	blr
	.p2align 4,,15
.L360:
	addi 10,3,1
	li 4,1
	rlwinm 8,10,0,25,31
	cmplwi 1,8,33
	isel 12,0,4,4
	rldicl 3,12,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE28:
	.size	iswprint,.-iswprint
	.align 2
	.p2align 4,,15
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L363
	ori 3,3,0x20
	li 0,1
	addi 4,3,-97
	cmplwi 1,4,5
	isel 5,0,0,5
	rldicl 3,5,0,63
	blr
	.p2align 4,,15
.L363:
	li 5,1
	rldicl 3,5,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-iswxdigit
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
	.globl fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr 0
	fcmpu 1,2,2
	bun 1,.L369
	fcmpu 5,1,2
	bng 5,.L372
	fsub 1,1,2
	blr
	.p2align 4,,15
.L372:
	xxlxor 1,1,1
	blr
	.p2align 4,,15
.L369:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE31:
	.size	fdim,.-fdim
	.align 2
	.p2align 4,,15
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr 0
	fcmpu 1,2,2
	bun 1,.L377
	fcmpu 5,1,2
	bng 5,.L380
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L380:
	xxlxor 1,1,1
	blr
	.p2align 4,,15
.L377:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE32:
	.size	fdimf,.-fdimf
	.align 2
	.p2align 4,,15
	.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	fcmpu 0,1,1
	fmr 0,1
	bun 0,.L386
	fcmpu 1,2,2
	bun 1,.L387
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L383
	cmpwi 7,0,0
	fmr 1,2
	bnelr 7
.L387:
	fmr 1,0
	blr
	.p2align 4,,15
.L383:
	fcmpu 6,1,2
	bnllr 6
.L386:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE33:
	.size	fmax,.-fmax
	.align 2
	.p2align 4,,15
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	fcmpu 0,1,1
	fmr 0,1
	bun 0,.L395
	fcmpu 1,2,2
	bun 1,.L396
	xscvdpspn 12,1
	xscvdpspn 1,2
	mfvsrwz 9,12
	mfvsrwz 10,1
	rlwinm 0,9,0,0,0
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq 5,.L392
	cmpwi 7,0,0
	fmr 1,2
	bnelr 7
.L396:
	fmr 1,0
	blr
	.p2align 4,,15
.L392:
	fcmpu 6,0,2
	fmr 1,0
	bnllr 6
.L395:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-fmaxf
	.align 2
	.p2align 4,,15
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	fmr 9,2
	fmr 8,1
	fmr 11,4
	fmr 10,3
	fmr 0,8
	fcmpu 0,0,0
	bun 0,.L406
	fmr 12,10
	fcmpu 1,12,12
	bun 1,.L405
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L401
	cmpwi 7,0,0
	bne 7,.L406
.L405:
	fmr 1,8
	fmr 2,9
	blr
	.p2align 4,,15
.L401:
	fcmpu 6,8,10
	bne 6,$+8
	fcmpu 6,9,11
	blt 6,.L406
	fmr 11,2
	fmr 10,1
.L406:
	fmr 1,10
	fmr 2,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-fmaxl
	.align 2
	.p2align 4,,15
	.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	fcmpu 0,1,1
	bun 0,.L412
	fcmpu 1,2,2
	bunlr 1
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	bne 5,.L416
	fcmpu 6,1,2
	fmr 0,2
	bnl 6,.L411
	fmr 0,1
.L411:
	fmr 1,0
	blr
	.p2align 4,,15
.L416:
	cmpwi 7,0,0
	bnelr 7
.L412:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE36:
	.size	fmin,.-fmin
	.align 2
	.p2align 4,,15
	.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	fcmpu 0,1,1
	bun 0,.L422
	fcmpu 1,2,2
	bunlr 1
	xscvdpspn 0,1
	xscvdpspn 3,2
	mfvsrwz 9,0
	mfvsrwz 10,3
	rlwinm 0,9,0,0,0
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	bne 5,.L426
	fcmpu 6,1,2
	bnl 6,.L421
	fmr 2,1
.L421:
	fmr 1,2
	blr
	.p2align 4,,15
.L426:
	cmpwi 7,0,0
	bnelr 7
.L422:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE37:
	.size	fminf,.-fminf
	.align 2
	.p2align 4,,15
	.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	fmr 0,1
	fmr 11,4
	fmr 10,3
	fcmpu 0,0,0
	bun 0,.L432
	fmr 12,10
	fcmpu 1,12,12
	bunlr 1
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L429
	cmpwi 7,0,0
	bnelr 7
.L432:
	fmr 1,10
	fmr 2,11
	blr
	.p2align 4,,15
.L429:
	fcmpu 6,1,10
	bne 6,$+8
	fcmpu 6,2,11
	bltlr 6
	fmr 1,10
	fmr 2,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-fminl
	.align 2
	.p2align 4,,15
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
	addis 3,2,.LANCHOR0@toc@ha
	cmpwi 0,9,0
	addi 3,3,.LANCHOR0@toc@l
	beq 0,.L438
	addis 7,2,.LANCHOR1@toc@ha
	mr 10,3
	addi 4,7,.LANCHOR1@toc@l
	.p2align 5
.L437:
	rldicl 8,9,0,58
	srwi 9,9,6
	cmpwi 1,9,0
	addi 10,10,1
	lbzx 0,4,8
	stb 0,-1(10)
	bne 1,.L437
	li 5,0
	stb 5,0(10)
	blr
	.p2align 4,,15
.L438:
	mr 10,3
	li 5,0
	stb 5,0(10)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-l64a
	.align 2
	.p2align 4,,15
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
	addis 9,2,.LANCHOR0+8@toc@ha
	rldicl 0,3,0,32
	std 0,.LANCHOR0+8@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE40:
	.size	srand,.-srand
	.align 2
	.p2align 4,,15
	.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
.LCF41:
0:	addis 2,12,.TOC.-.LCF41@ha
	addi 2,2,.TOC.-.LCF41@l
	.localentry	rand,.-rand
	addis 7,2,.LANCHOR0+8@toc@ha
	lis 10,0x4c95
	lis 8,0x5851
	ori 0,10,0x7f2d
	ld 9,.LANCHOR0+8@toc@l(7)
	ori 3,8,0xf42d
	rldimi 0,3,32,0
	mulld 4,9,0
	addi 5,4,1
	srdi 3,5,33
	std 5,.LANCHOR0+8@toc@l(7)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE41:
	.size	rand,.-rand
	.align 2
	.p2align 4,,15
	.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	cmpdi 0,4,0
	beq 0,.L448
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ori 2,2,0
	ld 4,0(3)
	cmpdi 1,4,0
	beqlr 1
	std 3,8(4)
	blr
	.p2align 4,,15
.L448:
	std 4,8(3)
	std 4,0(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE42:
	.size	insque,.-insque
	.align 2
	.p2align 4,,15
	.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L450
	ld 10,8(3)
	std 10,8(9)
.L450:
	ld 3,8(3)
	cmpdi 1,3,0
	beqlr 1
	std 9,0(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE43:
	.size	remque,.-remque
	.align 2
	.p2align 4,,15
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
	std 27,-40(1)
	.cfi_register 65, 0
	.cfi_offset 27, -40
	ld 27,0(5)
	std 23,-72(1)
	std 24,-64(1)
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr 23,4
	mr 24,5
	std 26,-48(1)
	std 28,-32(1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr 26,3
	mr 28,6
	std 25,-56(1)
	cmpdi 0,27,0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 25, -56
	.cfi_offset 65, 16
	std 2,24(1)
	beq 0,.L459
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	mr 29,7
	li 30,0
	std 31,104(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L461
	.p2align 4,,15
.L473:
	beq 7,.L472
.L461:
	mtctr 29
	mr 4,31
	mr 3,26
	mr 12,29
	addi 30,30,1
	mr 25,31
	add 31,31,28
	bctrl
	ld 2,24(1)
	cmpld 7,27,30
	cmpwi 1,3,0
	bne 1,.L473
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L458:
	addi 1,1,112
	.cfi_def_cfa_offset 0
	mr 3,25
	ld 5,16(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	mtlr 5
	.cfi_restore 65
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.p2align 4,,15
.L472:
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
.L459:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq 5,.L458
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	addi 1,1,112
	.cfi_def_cfa_offset 0
	mr 3,25
	ld 5,16(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	mtlr 5
	.cfi_restore 65
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
	.size	lsearch,.-lsearch
	.align 2
	.p2align 4,,15
	.globl lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
.LCF45:
0:	addis 2,12,.TOC.-.LCF45@ha
	addi 2,2,.TOC.-.LCF45@l
	.localentry	lfind,.-lfind
	std 26,-48(1)
	.cfi_offset 26, -48
	ld 26,0(5)
	std 25,-56(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	cmpdi 0,26,0
	beq 0,.L475
	mflr 0
	.cfi_register 65, 0
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 27,6
	std 29,72(1)
	.cfi_offset 29, -24
	std 30,80(1)
	.cfi_offset 30, -16
	mr 28,3
	mr 29,7
	std 31,88(1)
	.cfi_offset 31, -8
	std 2,24(1)
	mr 31,4
	li 30,0
	std 0,112(1)
	.cfi_offset 65, 16
	b .L477
	.p2align 4,,15
.L485:
	beq 7,.L484
.L477:
	mtctr 29
	mr 4,31
	mr 3,28
	mr 12,29
	addi 30,30,1
	mr 25,31
	add 31,31,27
	bctrl
	ld 2,24(1)
	cmpld 7,26,30
	cmpwi 1,3,0
	bne 1,.L485
	ld 3,112(1)
	ld 27,56(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	ld 30,80(1)
	.cfi_restore 30
	ld 31,88(1)
	.cfi_restore 31
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mtlr 3
	.cfi_restore 65
	ld 26,-48(1)
	mr 3,25
	ld 25,-56(1)
	.cfi_restore 26
	.cfi_restore 25
	blr
	.p2align 4,,15
.L484:
	.cfi_restore_state
	ld 0,112(1)
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
	mtlr 0
	.cfi_restore 65
.L475:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 25,0
	mr 3,25
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
	.p2align 4,,15
	.globl abs
	.type	abs, @function
abs:
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
	.size	abs,.-abs
	.align 2
	.p2align 4,,15
	.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
.L494:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L488
	ble 7,.L488
	cmpwi 1,9,43
	beq 1,.L489
	cmpwi 6,9,45
	bne 6,.L509
	lbz 9,1(3)
	addi 3,3,1
	addi 4,9,-48
	cmplwi 0,4,9
	bgt 0,.L499
	li 11,1
.L492:
	li 8,0
	.p2align 5
.L496:
	addi 7,9,-48
	mulli 12,8,10
	lbzu 9,1(3)
	addi 6,9,-48
	subf 8,7,12
	cmplwi 1,6,9
	ble 1,.L496
	cmpwi 5,11,0
	subf 9,12,7
	isel 3,9,8,22
.L495:
	extsw 3,3
	blr
	.p2align 4,,15
.L488:
	addi 3,3,1
	b .L494
	.p2align 4,,15
.L509:
	addi 5,9,-48
	li 11,0
	cmplwi 7,5,9
	ble 7,.L492
.L499:
	li 3,0
	b .L495
	.p2align 4,,15
.L489:
	lbz 9,1(3)
	li 11,0
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	ble 5,.L492
	li 3,0
	b .L495
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE47:
	.size	atoi,.-atoi
	.align 2
	.p2align 4,,15
	.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
.L517:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L511
	ble 7,.L511
	cmpwi 1,9,43
	beq 1,.L512
	cmpwi 6,9,45
	bne 6,.L532
	lbz 9,1(3)
	addi 3,3,1
	addi 4,9,-48
	cmplwi 0,4,9
	bgt 0,.L522
	li 8,1
.L515:
	li 6,0
	.p2align 5
.L519:
	addi 11,9,-48
	mulli 7,6,10
	lbzu 9,1(3)
	extsw 12,11
	addi 10,9,-48
	subf 6,12,7
	cmplwi 1,10,9
	ble 1,.L519
	cmpwi 5,8,0
	subf 3,7,12
	isel 3,3,6,22
	blr
	.p2align 4,,15
.L511:
	addi 3,3,1
	b .L517
	.p2align 4,,15
.L532:
	addi 5,9,-48
	li 8,0
	cmplwi 7,5,9
	ble 7,.L515
.L522:
	li 3,0
	blr
	.p2align 4,,15
.L512:
	lbz 9,1(3)
	li 8,0
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	ble 5,.L515
	b .L522
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE48:
	.size	atol,.-atol
	.align 2
	.p2align 4,,15
	.globl atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
.L538:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L534
	ble 7,.L534
	cmpwi 1,9,43
	beq 1,.L535
	cmpwi 6,9,45
	beq 6,.L536
	addi 4,9,-48
	li 8,0
	cmplwi 7,4,9
	bgt 7,.L545
.L539:
	li 6,0
	.p2align 5
.L542:
	addi 11,9,-48
	mulli 7,6,10
	lbzu 9,1(3)
	extsw 12,11
	addi 10,9,-48
	subf 6,12,7
	cmplwi 1,10,9
	ble 1,.L542
	cmpwi 5,8,0
	subf 3,7,12
	isel 3,3,6,22
	blr
	.p2align 4,,15
.L534:
	addi 3,3,1
	b .L538
	.p2align 4,,15
.L536:
	lbz 9,1(3)
	li 8,1
	addi 3,3,1
	addi 5,9,-48
	cmplwi 0,5,9
	ble 0,.L539
.L545:
	li 3,0
	blr
	.p2align 4,,15
.L535:
	lbz 9,1(3)
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	bgt 5,.L545
	li 8,0
	b .L539
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE171:
	.size	atoll,.-atoll
	.align 2
	.p2align 4,,15
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
.LCF50:
0:	addis 2,12,.TOC.-.LCF50@ha
	addi 2,2,.TOC.-.LCF50@l
	.localentry	bsearch,.-bsearch
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq 0,.L556
	mflr 0
	.cfi_register 65, 0
	std 25,40(1)
	.cfi_offset 25, -56
	std 26,48(1)
	.cfi_offset 26, -48
	mr 25,3
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 27,4
	mr 26,6
	std 2,24(1)
	std 29,72(1)
	.cfi_offset 29, -24
	mr 28,7
	std 0,112(1)
	.cfi_offset 65, 16
	b .L559
	.p2align 4,,15
.L568:
	beq 1,.L566
	cmpdi 5,31,0
	add 27,30,26
	beq 5,.L567
.L559:
	mtctr 28
	srdi 29,31,1
	mulld 30,29,26
	mr 3,25
	mr 12,28
	addi 31,31,-1
	subf 31,29,31
	add 30,27,30
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 1,3,0
	bge 1,.L568
	mr 31,29
	cmpdi 5,31,0
	bne 5,.L559
.L567:
	ld 3,112(1)
	ld 25,40(1)
	.cfi_restore 25
	ld 26,48(1)
	.cfi_restore 26
	ld 27,56(1)
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	mtlr 3
	.cfi_restore 65
.L556:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.p2align 4,,15
.L566:
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 0,112(1)
	ld 25,40(1)
	.cfi_restore 25
	ld 26,48(1)
	.cfi_restore 26
	ld 27,56(1)
	.cfi_restore 27
	mr 3,30
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	addi 1,1,96
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
	.size	bsearch,.-bsearch
	.align 2
	.p2align 4,,15
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
.LCF51:
0:	addis 2,12,.TOC.-.LCF51@ha
	addi 2,2,.TOC.-.LCF51@l
	.localentry	bsearch_r,.-bsearch_r
	cmpwi 0,5,0
	std 24,-64(1)
	std 25,-56(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	mr 24,8
	std 26,-48(1)
	std 27,-40(1)
	mr 25,3
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr 27,4
	std 29,-24(1)
	std 31,-8(1)
	mr 26,6
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,5
	std 30,-16(1)
	mr 29,7
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq 0,.L574
	mflr 0
	.cfi_register 65, 0
	std 2,24(1)
	std 28,64(1)
	.cfi_offset 28, -32
	std 0,112(1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L579:
	mtctr 29
	srawi 30,31,1
	mulld 0,30,26
	mr 5,24
	mr 3,25
	mr 12,29
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,0
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 7,31,0
	cmpwi 1,3,0
	beq 1,.L583
.L585:
	cmpwi 5,28,0
	ble 1,.L572
	add 27,30,26
	bne 7,.L579
.L584:
	ld 3,112(1)
	ld 28,64(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L574:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
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
	.p2align 4,,15
.L572:
	.cfi_def_cfa_offset 96
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
	beq 5,.L584
	mtctr 29
	srawi 30,31,1
	mulld 0,30,26
	mr 5,24
	mr 3,25
	mr 12,29
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,0
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 7,31,0
	cmpwi 1,3,0
	bne 1,.L585
.L583:
	ld 4,112(1)
	ld 28,64(1)
	.cfi_restore 28
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mr 3,30
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	mtlr 4
	.cfi_restore 65
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
	.size	bsearch_r,.-bsearch_r
	.align 2
	.p2align 4,,15
	.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	divw 9,3,4
	mullw 4,9,4
	rldicl 0,9,0,32
	subf 3,4,3
	sldi 5,3,32
	or 3,0,5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE52:
	.size	div,.-div
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
	.globl labs
	.type	labs, @function
labs:
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
	.size	labs,.-labs
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
	.globl llabs
	.type	llabs, @function
llabs:
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
	.size	llabs,.-llabs
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L597
	.p2align 5
.L594:
	cmpw 1,9,4
	beqlr 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne 5,.L594
.L597:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE59:
	.size	wcschr,.-wcschr
	.align 2
	.p2align 4,,15
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	beq 0,.L604
	b .L603
	.p2align 4,,15
.L605:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne 0,.L603
.L604:
	cmpwi 7,9,0
	bne 7,.L605
.L603:
	mfcr 3,128
	rlwinm 3,3,2,1
	li 4,-1
	isel 5,4,3,0
	extsw 3,5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-wcscmp
	.align 2
	.p2align 4,,15
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	addi 4,4,-4
	addi 10,3,-4
	.p2align 4,,15
.L609:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L609
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-wcscpy
	.align 2
	.p2align 4,,15
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L615
	mr 4,3
	.p2align 4,,15
.L614:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne 1,.L614
	subf 3,3,4
	sradi 3,3,2
	blr
	.p2align 4,,15
.L615:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE62:
	.size	wcslen,.-wcslen
	.align 2
	.p2align 4,,15
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L627
	mtctr 5
	b .L618
	.p2align 4,,15
.L630:
	beq 7,.L620
	addi 3,3,4
	addi 4,4,4
	bdz .L627
.L618:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	cmpwi 7,9,0
	beq 1,.L630
.L620:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	bge 5,.L622
	li 4,-1
	extsw 3,4
	blr
	.p2align 4,,15
.L622:
	mfcr 4,4
	rlwinm 4,4,22,1
	extsw 3,4
	blr
	.p2align 4,,15
.L627:
	li 4,0
	extsw 3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.p2align 4,,15
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L635
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L652
.L638:
	srdi 0,5,1
	mtctr 0
.L632:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr 7
	addi 3,3,4
	bdnz .L632
.L635:
	li 3,0
	blr
	.p2align 4,,15
.L652:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr 1
	cmpdi 5,9,0
	addi 3,3,4
	bne 5,.L638
	b .L635
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-wmemchr
	.align 2
	.p2align 4,,15
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L659
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L676
.L662:
	srdi 0,5,1
	mtctr 0
	b .L654
	.p2align 4,,15
.L656:
	lwz 12,4(3)
	lwz 9,4(4)
	addi 3,7,4
	addi 4,11,4
	cmpw 1,12,9
	bne 1,.L671
	bdz .L659
.L654:
	lwz 5,0(3)
	lwz 6,0(4)
	addi 7,3,4
	addi 11,4,4
	cmpw 1,5,6
	beq 1,.L656
.L671:
	mfcr 3,64
	rlwinm 3,3,6,1
	li 4,-1
	isel 8,4,3,4
	extsw 3,8
	blr
	.p2align 4,,15
.L676:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne 1,.L671
	cmpdi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne 5,.L662
.L659:
	li 8,0
	extsw 3,8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.p2align 4,,15
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
.LCF66:
0:	addis 2,12,.TOC.-.LCF66@ha
	addi 2,2,.TOC.-.LCF66@l
	.localentry	wmemcpy,.-wmemcpy
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L678
	mflr 0
	.cfi_register 65, 0
	sldi 5,5,2
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L678:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.p2align 4,,15
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	cmpld 0,3,4
	beqlr 0
	sldi 9,5,2
	subf 10,4,3
	cmpld 1,10,9
	addi 11,5,-1
	bge 1,.L778
	cmpdi 5,5,0
	beqlr 5
	cmpldi 6,11,4
	ble 6,.L688
	addi 6,9,-4
	addi 12,9,-8
	add 7,3,6
	add 10,4,12
	subf 8,10,7
	addi 0,8,8
	cmpldi 7,0,8
	ble 7,.L688
	srdi 6,5,2
	addi 9,9,-16
	andi. 0,6,0x3
	add 8,4,9
	addi 12,6,-1
	add 9,3,9
	mr 7,6
	li 10,0
	beq 0,.L727
	cmpdi 1,0,1
	beq 1,.L743
	cmpdi 5,0,2
	beq 5,.L744
	lxvd2x 7,0,8
	mr 6,12
	li 10,-16
	stxvd2x 7,0,9
.L744:
	lxvd2x 8,8,10
	addi 6,6,-1
	stxvd2x 8,9,10
	addi 10,10,-16
.L743:
	lxvd2x 9,8,10
	cmpdi 6,6,1
	stxvd2x 9,9,10
	addi 10,10,-16
	beq 6,.L766
.L727:
	srdi 0,7,2
	mtctr 0
.L689:
	lxvd2x 10,8,10
	addi 12,10,-16
	addi 6,10,-32
	addi 7,10,-48
	stxvd2x 10,9,10
	addi 10,10,-64
	lxvd2x 11,8,12
	stxvd2x 11,9,12
	lxvd2x 12,8,6
	stxvd2x 12,9,6
	lxvd2x 13,8,7
	stxvd2x 13,9,7
	bdnz .L689
.L766:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	subf 11,5,11
	beqlr 0
	sldi 8,11,2
	cmpdi 7,11,0
	lwzx 9,4,8
	stwx 9,3,8
	beqlr 7
	addi 10,11,-1
	sldi 12,10,2
	cmpdi 1,10,0
	lwzx 0,4,12
	stwx 0,3,12
	beqlr 1
	addi 7,12,-4
	lwzx 4,4,7
	stwx 4,3,7
	blr
	.p2align 4,,15
.L778:
	cmpdi 5,5,0
	beqlr 5
	cmpldi 6,11,3
	ble 6,.L694
	addi 0,4,4
	subf 6,0,3
	cmpldi 7,6,8
	ble 7,.L694
	srdi 8,5,2
	li 9,0
	andi. 7,8,0x3
	addi 12,8,-1
	mr 10,8
	beq 0,.L739
	cmpdi 1,7,1
	beq 1,.L745
	cmpdi 5,7,2
	beq 5,.L746
	lxvd2x 0,0,4
	mr 8,12
	li 9,16
	stxvd2x 0,0,3
.L746:
	lxvd2x 1,4,9
	addi 8,8,-1
	stxvd2x 1,3,9
	addi 9,9,16
.L745:
	lxvd2x 2,4,9
	cmpdi 6,8,1
	stxvd2x 2,3,9
	addi 9,9,16
	beq 6,.L767
.L739:
	srdi 0,10,2
	mtctr 0
.L695:
	lxvd2x 3,4,9
	addi 6,9,16
	addi 7,9,32
	addi 12,9,48
	stxvd2x 3,3,9
	addi 9,9,64
	lxvd2x 4,4,6
	stxvd2x 4,3,6
	lxvd2x 5,4,7
	stxvd2x 5,3,7
	lxvd2x 6,4,12
	stxvd2x 6,3,12
	bdnz .L695
.L767:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	sldi 9,5,2
	subf 11,5,11
	add 8,4,9
	add 10,3,9
	beqlr 0
	cmpdi 7,11,0
	lwzx 4,4,9
	stwx 4,3,9
	beqlr 7
	cmpldi 1,11,1
	lwz 0,4(8)
	stw 0,4(10)
	beqlr 1
	lwz 6,8(8)
	stw 6,8(10)
	blr
	.p2align 4,,15
.L688:
	andi. 10,11,0x1
	add 6,4,9
	add 5,3,9
	bne 0,.L779
.L720:
	srdi 11,11,1
	addi 9,11,1
	mtctr 9
	b .L692
	.p2align 4,,15
.L780:
	lwz 0,-4(10)
	addi 5,5,-8
	stw 0,-4(7)
.L692:
	lwz 12,-4(6)
	addi 10,6,-4
	addi 7,5,-4
	addi 6,6,-8
	stw 12,-4(5)
	bdnz .L780
	blr
.L779:
	lwzu 8,-4(6)
	stwu 8,-4(5)
	b .L720
	.p2align 4,,15
.L694:
	andi. 9,11,0x1
	addi 12,4,-4
	addi 5,3,-4
	bne 0,.L781
.L732:
	srdi 9,11,1
	addi 11,9,1
	mtctr 11
	b .L698
	.p2align 4,,15
.L782:
	lwz 0,4(8)
	addi 5,5,8
	stw 0,4(4)
.L698:
	lwz 10,4(12)
	addi 8,12,4
	addi 4,5,4
	addi 12,12,8
	stw 10,4(5)
	bdnz .L782
	blr
.L781:
	lwz 7,0(4)
	mr 12,4
	mr 5,3
	stw 7,0(3)
	b .L732
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-wmemmove
	.align 2
	.p2align 4,,15
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	cmpdi 0,5,0
	addi 7,5,-1
	beqlr 0
	cmpldi 1,7,2
	ble 1,.L788
	srdi 8,5,2
	mtvsrwz 0,4
	mr 9,3
	andi. 6,8,0x3
	addi 11,8,-1
	mr 10,8
	xxspltw 0,0,1
	beq 0,.L803
	cmpdi 5,6,1
	beq 5,.L807
	cmpdi 6,6,2
	beq 6,.L808
	stxvd2x 0,0,3
	mr 8,11
	addi 9,3,16
.L808:
	stxvd2x 0,0,9
	addi 8,8,-1
	addi 9,9,16
.L807:
	stxvd2x 0,0,9
	cmpdi 7,8,1
	addi 9,9,16
	beq 7,.L817
.L803:
	srdi 10,10,2
	mtctr 10
	cmpdi 1,10,2
	ble 1,.L822
	addi 10,10,-1
	mtctr 10
	addi 8,9,16
	addi 6,8,16
.L786:
	stxvd2x 0,0,9
	mr 10,9
	stxvd2x 0,0,8
	addi 9,9,64
	addi 10,10,48
	stxvd2x 0,0,6
	addi 8,9,16
	stxvd2x 0,0,10
	addi 6,8,16
	bdnz .L786
	stxvd2x 0,0,9
	stxvd2x 0,0,8
	addi 10,9,48
	stxvd2x 0,0,6
	stxvd2x 0,0,10
.L817:
	andi. 9,5,0x3
	beqlr 0
	rldicr 5,5,0,61
	sldi 0,5,2
	subf 7,5,7
	add 9,3,0
.L785:
	cmpdi 5,7,0
	stw 4,0(9)
	beqlr 5
	cmpldi 6,7,1
	stw 4,4(9)
	beqlr 6
	stw 4,8(9)
	blr
	.p2align 4,,15
.L822:
	stxvd2x 0,0,9
	addi 12,9,16
	addi 11,9,48
	addi 6,9,32
	addi 9,9,64
	stxvd2x 0,0,12
	stxvd2x 0,0,6
	stxvd2x 0,0,11
	bdz .L817
	stxvd2x 0,0,9
	addi 12,9,16
	addi 11,9,48
	addi 6,9,32
	addi 9,9,64
	stxvd2x 0,0,12
	stxvd2x 0,0,6
	stxvd2x 0,0,11
	bdnz .L822
	b .L817
.L788:
	mr 9,3
	b .L785
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE68:
	.size	wmemset,.-wmemset
	.align 2
	.p2align 4,,15
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	cmpld 0,3,4
	bge 0,.L825
	cmpdi 6,5,0
	add 12,3,5
	add 11,4,5
	beqlr 6
	addi 0,5,-1
	cmpldi 7,0,14
	ble 7,.L827
	addi 10,5,-2
	add 7,4,0
	add 6,3,10
	subf 8,6,7
	addi 9,8,14
	cmpldi 1,9,14
	ble 1,.L827
	srdi 8,5,4
	addi 6,5,-16
	andi. 7,8,0x3
	addi 0,8,-1
	mr 10,8
	add 3,3,6
	add 4,4,6
	li 9,0
	beq 0,.L914
	cmpdi 5,7,1
	beq 5,.L930
	cmpdi 6,7,2
	beq 6,.L931
	lxvd2x 7,0,3
	mr 8,0
	li 9,-16
	stxvd2x 7,0,4
.L931:
	lxvd2x 8,3,9
	addi 8,8,-1
	stxvd2x 8,4,9
	addi 9,9,-16
.L930:
	lxvd2x 9,3,9
	cmpdi 7,8,1
	stxvd2x 9,4,9
	addi 9,9,-16
	beq 7,.L978
.L914:
	srdi 6,10,2
	mtctr 6
.L828:
	lxvd2x 10,3,9
	addi 0,9,-16
	addi 7,9,-32
	addi 10,9,-48
	stxvd2x 10,4,9
	addi 9,9,-64
	lxvd2x 11,3,0
	stxvd2x 11,4,0
	lxvd2x 12,3,7
	stxvd2x 12,4,7
	lxvd2x 13,3,10
	stxvd2x 13,4,10
	bdnz .L828
.L978:
	andi. 9,5,0xf
	rldicr 3,5,0,59
	subf 11,3,11
	subf 12,3,12
	subf 5,3,5
	beqlr 0
	cmpldi 1,5,1
	lbz 4,-1(12)
	stb 4,-1(11)
	beqlr 1
	cmpldi 5,5,2
	lbz 8,-2(12)
	stb 8,-2(11)
	beqlr 5
	cmpldi 6,5,3
	lbz 9,-3(12)
	stb 9,-3(11)
	beqlr 6
	cmpldi 7,5,4
	lbz 6,-4(12)
	stb 6,-4(11)
	beqlr 7
	cmpldi 0,5,5
	lbz 0,-5(12)
	stb 0,-5(11)
	beqlr 0
	cmpldi 1,5,6
	lbz 10,-6(12)
	stb 10,-6(11)
	beqlr 1
	cmpldi 5,5,7
	lbz 7,-7(12)
	stb 7,-7(11)
	beqlr 5
	cmpldi 6,5,8
	lbz 3,-8(12)
	stb 3,-8(11)
	beqlr 6
	cmpldi 7,5,9
	lbz 4,-9(12)
	stb 4,-9(11)
	beqlr 7
	cmpldi 0,5,10
	lbz 8,-10(12)
	stb 8,-10(11)
	beqlr 0
	cmpldi 1,5,11
	lbz 9,-11(12)
	stb 9,-11(11)
	beqlr 1
	cmpldi 5,5,12
	lbz 6,-12(12)
	stb 6,-12(11)
	beqlr 5
	cmpldi 6,5,13
	lbz 0,-13(12)
	stb 0,-13(11)
	beqlr 6
	cmpldi 7,5,14
	lbz 5,-14(12)
	stb 5,-14(11)
	beqlr 7
	lbz 12,-15(12)
	stb 12,-15(11)
	blr
	.p2align 4,,15
.L825:
	beqlr 0
	cmpdi 1,5,0
	beqlr 1
	addi 9,5,-1
	cmpldi 5,9,14
	ble 5,.L832
	addi 10,3,1
	subf 0,10,4
	cmpldi 6,0,14
	ble 6,.L832
	srdi 8,5,4
	li 12,0
	andi. 7,8,0x3
	addi 6,8,-1
	mr 11,8
	beq 0,.L926
	cmpdi 7,7,1
	beq 7,.L932
	cmpdi 1,7,2
	beq 1,.L933
	lxvd2x 0,0,3
	mr 8,6
	li 12,16
	stxvd2x 0,0,4
.L933:
	lxvd2x 1,3,12
	addi 8,8,-1
	stxvd2x 1,4,12
	addi 12,12,16
.L932:
	lxvd2x 2,3,12
	cmpdi 5,8,1
	stxvd2x 2,4,12
	addi 12,12,16
	beq 5,.L979
.L926:
	srdi 9,11,2
	mtctr 9
.L833:
	lxvd2x 3,3,12
	addi 0,12,16
	addi 7,12,32
	addi 10,12,48
	stxvd2x 3,4,12
	addi 12,12,64
	lxvd2x 4,3,0
	stxvd2x 4,4,0
	lxvd2x 5,3,7
	stxvd2x 5,4,7
	lxvd2x 6,3,10
	stxvd2x 6,4,10
	bdnz .L833
.L979:
	andi. 9,5,0xf
	rldicr 6,5,0,59
	add 11,4,6
	add 12,3,6
	subf 5,6,5
	beqlr 0
	cmpldi 6,5,1
	lbzx 3,3,6
	stbx 3,4,6
	beqlr 6
	cmpldi 7,5,2
	lbz 4,1(12)
	stb 4,1(11)
	beqlr 7
	cmpldi 1,5,3
	lbz 8,2(12)
	stb 8,2(11)
	beqlr 1
	cmpldi 5,5,4
	lbz 9,3(12)
	stb 9,3(11)
	beqlr 5
	cmpldi 0,5,5
	lbz 0,4(12)
	stb 0,4(11)
	beqlr 0
	cmpldi 6,5,6
	lbz 10,5(12)
	stb 10,5(11)
	beqlr 6
	cmpldi 7,5,7
	lbz 7,6(12)
	stb 7,6(11)
	beqlr 7
	cmpldi 1,5,8
	lbz 6,7(12)
	stb 6,7(11)
	beqlr 1
	cmpldi 5,5,9
	lbz 3,8(12)
	stb 3,8(11)
	beqlr 5
	cmpldi 0,5,10
	lbz 4,9(12)
	stb 4,9(11)
	beqlr 0
	cmpldi 6,5,11
	lbz 8,10(12)
	stb 8,10(11)
	beqlr 6
	cmpldi 7,5,12
	lbz 9,11(12)
	stb 9,11(11)
	beqlr 7
	cmpldi 1,5,13
	lbz 0,12(12)
	stb 0,12(11)
	beqlr 1
	cmpldi 5,5,14
	lbz 5,13(12)
	stb 5,13(11)
	beqlr 5
	lbz 12,14(12)
	stb 12,14(11)
	blr
	.p2align 4,,15
.L827:
	andi. 9,0,0x1
	bne 0,.L989
.L907:
	srdi 7,0,1
	addi 3,7,1
	mtctr 3
	b .L830
	.p2align 4,,15
.L990:
	lbz 6,-1(9)
	addi 11,11,-2
	stb 6,-1(8)
.L830:
	lbz 4,-1(12)
	addi 9,12,-1
	addi 8,11,-1
	addi 12,12,-2
	stb 4,-1(11)
	bdnz .L990
	blr
.L989:
	lbzu 10,-1(12)
	stbu 10,-1(11)
	b .L907
	.p2align 4,,15
.L832:
	andi. 10,9,0x1
	addi 11,3,-1
	addi 10,4,-1
	bne 0,.L991
.L919:
	srdi 6,9,1
	addi 3,6,1
	mtctr 3
	b .L836
	.p2align 4,,15
.L992:
	lbz 9,1(8)
	addi 10,10,2
	stb 9,1(5)
.L836:
	lbz 4,1(11)
	addi 8,11,1
	addi 5,10,1
	addi 11,11,2
	stb 4,1(10)
	bdnz .L992
	blr
.L991:
	lbz 7,0(3)
	mr 11,3
	mr 10,4
	stb 7,0(4)
	b .L919
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE69:
	.size	bcopy,.-bcopy
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB173:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE173:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.p2align 4,,15
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB175:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE175:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.p2align 4,,15
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	rlwinm 4,4,0,28,31
	neg 9,4
	slw 0,3,4
	rlwinm 5,9,0,28,31
	srw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE76:
	.size	rotl16,.-rotl16
	.align 2
	.p2align 4,,15
	.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	rlwinm 4,4,0,28,31
	neg 9,4
	srw 0,3,4
	rlwinm 5,9,0,28,31
	slw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE77:
	.size	rotr16,.-rotr16
	.align 2
	.p2align 4,,15
	.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	rlwinm 4,4,0,29,31
	neg 9,4
	slw 0,3,4
	rlwinm 5,9,0,29,31
	srw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE78:
	.size	rotl8,.-rotl8
	.align 2
	.p2align 4,,15
	.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	rlwinm 4,4,0,29,31
	neg 9,4
	srw 0,3,4
	rlwinm 5,9,0,29,31
	slw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE79:
	.size	rotr8,.-rotr8
	.align 2
	.p2align 4,,15
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
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
	.size	bswap_16,.-bswap_16
	.align 2
	.p2align 4,,15
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
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
	.size	bswap_32,.-bswap_32
	.align 2
	.p2align 4,,15
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
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
	.size	bswap_64,.-bswap_64
	.align 2
	.p2align 4,,15
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	li 10,16
	li 9,0
	mtctr 10
	b .L1009
	.p2align 4,,15
.L1018:
	addi 9,9,1
	bne 0,.L1008
	bdz .L1017
.L1009:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq 7,.L1018
.L1008:
	extsw 3,9
	blr
	.p2align 4,,15
.L1017:
	li 9,0
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE83:
	.size	ffs,.-ffs
	.align 2
	.p2align 4,,15
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mr. 9,3
	beq 0,.L1022
	andi. 3,9,0x1
	bne 0,.L1020
	li 3,1
	.p2align 4,,15
.L1021:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L1021
.L1020:
	extsw 3,3
	blr
	.p2align 4,,15
.L1022:
	li 3,0
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-libiberty_ffs
	.align 2
	.p2align 4,,15
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
.LCF85:
0:	addis 2,12,.TOC.-.LCF85@ha
	addi 2,2,.TOC.-.LCF85@l
	.localentry	gl_isinff,.-gl_isinff
	addis 9,2,.LC6@toc@ha
	li 0,1
	lfs 0,.LC6@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L1026
	addis 3,2,.LC7@toc@ha
	lfs 2,.LC7@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L1026:
	rldicl 3,0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE85:
	.size	gl_isinff,.-gl_isinff
	.align 2
	.p2align 4,,15
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
.LCF86:
0:	addis 2,12,.TOC.-.LCF86@ha
	addi 2,2,.TOC.-.LCF86@l
	.localentry	gl_isinfd,.-gl_isinfd
	addis 9,2,.LC10@toc@ha
	li 0,1
	lfd 0,.LC10@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L1029
	addis 3,2,.LC11@toc@ha
	lfd 2,.LC11@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L1029:
	rldicl 3,0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE86:
	.size	gl_isinfd,.-gl_isinfd
	.align 2
	.p2align 4,,15
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
.LCF87:
0:	addis 2,12,.TOC.-.LCF87@ha
	addi 2,2,.TOC.-.LCF87@l
	.localentry	gl_isinfl,.-gl_isinfl
	addis 9,2,.LC14@toc@ha
	fmr 0,1
	fmr 1,2
	li 0,1
	addi 3,9,.LC14@toc@l
	lfd 12,0(3)
	lfd 13,8(3)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	blt 0,.L1032
	addis 4,2,.LC15@toc@ha
	addi 5,4,.LC15@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,0,12
	bne 1,$+8
	fcmpu 1,1,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L1032:
	rldicl 3,0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-gl_isinfl
	.align 2
	.p2align 4,,15
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	mtvsrd 0,4
	xxlxor 3,3,3
	stfd 3,8(3)
	fcfid 1,0
	stfd 1,0(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq,.-_Qp_itoq
	.align 2
	.p2align 4,,15
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
	fcmpu 1,0,1
	beqlr 1
	cmpwi 5,4,0
	blt 5,.L1048
	addis 9,2,.LC18@toc@ha
	lfs 2,.LC18@toc@l(9)
.L1037:
	andi. 9,4,0x1
	beq 0,.L1038
	.p2align 4,,15
.L1039:
	fmuls 1,1,2
.L1038:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L1039
.L1049:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L1039
	b .L1049
	.p2align 4,,15
.L1048:
	addis 3,2,.LC19@toc@ha
	lfs 2,.LC19@toc@l(3)
	b .L1037
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-ldexpf
	.align 2
	.p2align 4,,15
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
	fcmpu 1,0,1
	beqlr 1
	cmpwi 5,4,0
	blt 5,.L1063
	addis 9,2,.LC22@toc@ha
	lfd 2,.LC22@toc@l(9)
.L1052:
	andi. 9,4,0x1
	beq 0,.L1053
	.p2align 4,,15
.L1054:
	fmul 1,1,2
.L1053:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L1054
.L1064:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L1054
	b .L1064
	.p2align 4,,15
.L1063:
	addis 3,2,.LC23@toc@ha
	lfd 2,.LC23@toc@l(3)
	b .L1052
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE90:
	.size	ldexp,.-ldexp
	.align 2
	.p2align 4,,15
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
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 28,1
	fmr 29,2
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	fmr 0,28
	fcmpu 0,0,0
	bun 0,.L1066
	mflr 0
	.cfi_register 65, 0
	fmr 3,1
	fmr 4,2
	std 31,40(1)
	.cfi_offset 31, -40
	mr 31,5
	std 0,96(1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu 1,1,28
	bne 1,$+8
	fcmpu 1,2,29
	beq 1,.L1081
	cmpwi 5,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 5,.L1082
	addis 9,2,.LC26@toc@ha
	addi 3,9,.LC26@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L1067:
	andi. 9,31,0x1
	beq 0,.L1068
	.p2align 4,,15
.L1069:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L1068:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L1080
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	srawi 0,31,1
	addze 0,0
	fmr 31,2
	fmr 30,1
	bne 0,.L1069
.L1083:
	fmr 3,30
	fmr 4,31
	extsw 31,0
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	srawi 0,31,1
	addze 0,0
	fmr 31,2
	fmr 30,1
	bne 0,.L1069
	b .L1083
	.p2align 4,,15
.L1080:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L1081:
	ld 6,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L1066:
	addi 1,1,80
	.cfi_def_cfa_offset 0
	fmr 1,28
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
	.p2align 4,,15
.L1082:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 4,2,.LC27@toc@ha
	addi 5,4,.LC27@toc@l
	lfd 30,0(5)
	lfd 31,8(5)
	b .L1067
	.long 0
	.byte 0,0,2,1,132,1,0,0
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-ldexpl
	.align 2
	.p2align 4,,15
	.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	cmpdi 0,5,0
	beqlr 0
	addi 9,5,-1
	cmpldi 1,9,14
	ble 1,.L1089
	srdi 10,5,4
	li 7,0
	andi. 8,10,0x1
	addi 8,10,-1
	bne 0,.L1148
.L1124:
	srdi 0,10,1
	mtctr 0
.L1087:
	lxvd2x 2,3,7
	lxvd2x 11,4,7
	addi 11,7,16
	lxvd2x 3,4,11
	xxlxor 4,2,11
	stxvd2x 4,3,7
	addi 7,7,32
	lxvd2x 5,3,11
	xxlxor 6,5,3
	stxvd2x 6,3,11
	bdnz .L1087
.L1144:
	andi. 9,5,0xf
	rldicr 12,5,0,59
	add 4,4,12
	add 6,3,12
	subf 5,12,5
	beqlr 0
.L1086:
	lbz 9,0(6)
	lbz 10,0(4)
	cmpldi 6,5,1
	xor 8,9,10
	stb 8,0(6)
	beqlr 6
	lbz 0,1(6)
	lbz 7,1(4)
	cmpldi 7,5,2
	xor 11,7,0
	stb 11,1(6)
	beqlr 7
	lbz 9,2(6)
	lbz 12,2(4)
	cmpldi 1,5,3
	xor 10,12,9
	stb 10,2(6)
	beqlr 1
	lbz 8,3(6)
	lbz 7,3(4)
	cmpldi 5,5,4
	xor 0,7,8
	stb 0,3(6)
	beqlr 5
	lbz 12,4(6)
	lbz 11,4(4)
	cmpldi 0,5,5
	xor 9,11,12
	stb 9,4(6)
	beqlr 0
	lbz 7,5(6)
	lbz 10,5(4)
	cmpldi 6,5,6
	xor 8,10,7
	stb 8,5(6)
	beqlr 6
	lbz 11,6(6)
	lbz 0,6(4)
	cmpldi 7,5,7
	xor 12,0,11
	stb 12,6(6)
	beqlr 7
	lbz 10,7(6)
	lbz 9,7(4)
	cmpldi 1,5,8
	xor 7,9,10
	stb 7,7(6)
	beqlr 1
	lbz 8,8(6)
	lbz 0,8(4)
	cmpldi 5,5,9
	xor 11,0,8
	stb 11,8(6)
	beqlr 5
	lbz 9,9(6)
	lbz 12,9(4)
	cmpldi 0,5,10
	xor 10,12,9
	stb 10,9(6)
	beqlr 0
	lbz 0,10(6)
	lbz 7,10(4)
	cmpldi 6,5,11
	xor 8,7,0
	stb 8,10(6)
	beqlr 6
	lbz 12,11(6)
	lbz 11,11(4)
	cmpldi 7,5,12
	xor 9,11,12
	stb 9,11(6)
	beqlr 7
	lbz 7,12(6)
	lbz 10,12(4)
	cmpldi 1,5,13
	xor 0,10,7
	stb 0,12(6)
	beqlr 1
	lbz 8,13(6)
	lbz 11,13(4)
	cmpldi 5,5,14
	xor 5,11,8
	stb 5,13(6)
	beqlr 5
	lbz 12,14(6)
	lbz 4,14(4)
	xor 9,4,12
	stb 9,14(6)
	blr
	.p2align 4,,15
.L1148:
	lxvd2x 0,0,3
	lxvd2x 12,0,4
	cmpdi 5,8,0
	li 7,16
	xxlxor 1,0,12
	stxvd2x 1,0,3
	bne 5,.L1124
	b .L1144
.L1089:
	mr 6,3
	b .L1086
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE92:
	.size	memxor,.-memxor
	.align 2
	.p2align 4,,15
	.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	lbz 9,0(3)
	cmpwi 0,9,0
	mr 9,3
	beq 0,.L1150
	.p2align 4,,15
.L1151:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1151
.L1150:
	cmpdi 5,5,0
	beq 5,.L1152
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne 0,.L1175
.L1163:
	srdi 0,5,1
	mtctr 0
.L1153:
	lbz 4,1(12)
	addi 11,12,1
	addi 5,9,1
	addi 12,11,1
	rlwinm 10,4,0,0xff
	stb 4,0(9)
	cmpwi 1,10,0
	beqlr 1
	lbz 8,1(11)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	addi 9,5,1
	cmpwi 5,7,0
	beqlr 5
	bdnz .L1153
.L1152:
	li 6,0
	stb 6,0(9)
	blr
	.p2align 4,,15
.L1175:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr 6
	cmpdi 7,7,0
	addi 9,9,1
	bne 7,.L1163
	b .L1152
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE93:
	.size	strncat,.-strncat
	.align 2
	.p2align 4,,15
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	cmpdi 0,4,0
	mr 9,3
	li 3,0
	beqlr 0
	andi. 8,4,0x3
	mr 10,4
	beq 0,.L1188
	cmpdi 1,8,1
	beq 1,.L1199
	cmpdi 5,8,2
	beq 5,.L1200
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr 6
	li 3,1
.L1200:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr 7
	addi 3,3,1
.L1199:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr 1
	.p2align 4,,15
.L1188:
	srdi 10,10,2
.L1177:
	lbzx 4,9,3
	cmpwi 5,4,0
	beqlr 5
	addi 3,3,1
	mr 7,3
	lbzx 11,9,3
	cmpwi 6,11,0
	beqlr 6
	addi 3,3,1
	lbzx 12,9,3
	cmpwi 7,12,0
	beqlr 7
	addi 3,7,2
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	cmpdi 1,10,1
	addi 3,7,3
	addi 10,10,-1
	bne 1,.L1177
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE94:
	.size	strnlen,.-strnlen
	.align 2
	.p2align 4,,15
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	lbz 8,0(3)
	addi 4,4,-1
	cmpwi 0,8,0
	beq 0,.L1214
.L1210:
	mr 10,4
	b .L1213
	.p2align 4,,15
.L1212:
	beqlr 7
.L1213:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne 1,.L1212
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne 5,.L1210
.L1214:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-strpbrk
	.align 2
	.p2align 4,,15
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mr 9,3
	li 3,0
	.p2align 4,,15
.L1220:
	lbz 10,0(9)
	cmpwi 0,10,0
	cmpw 7,10,4
	isel 3,9,3,30
	addi 9,9,1
	beqlr 0
	lbz 10,0(9)
	cmpwi 0,10,0
	cmpw 7,10,4
	isel 3,9,3,30
	addi 9,9,1
	bne 0,.L1220
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE96:
	.size	strrchr,.-strrchr
	.align 2
	.p2align 4,,15
	.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	lbz 11,0(4)
	mr 8,3
	andi. 5,11,0xff
	beq 0,.L1236
	mr 9,4
	.p2align 4,,15
.L1225:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1225
	subf. 6,4,9
	mr 3,8
	beqlr 0
	addi 3,6,-1
	b .L1244
	.p2align 4,,15
.L1247:
	cmpwi 6,12,0
	addi 8,8,1
	beq 6,.L1246
.L1244:
	lbz 12,0(8)
	cmpw 5,12,5
	bne 5,.L1247
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 10,11
	mr 7,8
	b .L1227
	.p2align 4,,15
.L1249:
	bdz .L1229
	bne 7,.L1230
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq 1,.L1248
	lbzu 10,1(6)
.L1227:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne 0,.L1249
.L1230:
	addi 8,8,1
	b .L1244
	.p2align 4,,15
.L1246:
	li 3,0
	blr
	.p2align 4,,15
.L1248:
	lbz 9,1(6)
.L1229:
	cmpw 5,12,9
	bne 5,.L1230
.L1236:
	mr 3,8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE97:
	.size	strstr,.-strstr
	.align 2
	.p2align 4,,15
	.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	xxlxor 0,0,0
	fcmpu 0,1,0
	blt 0,.L1260
	bnglr 0
	fcmpu 1,2,0
	bnllr 1
	fneg 1,1
	blr
	.p2align 4,,15
.L1260:
	fcmpu 5,2,0
	bnglr 5
	fneg 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE98:
	.size	copysign,.-copysign
	.align 2
	.p2align 4,,15
	.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	cmpdi 0,6,0
	mr 9,3
	beqlr 0
	cmpld 1,4,6
	blt 1,.L1269
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt 5,.L1269
	lbz 12,0(5)
	cmpldi 7,6,1
	addi 11,3,-1
	b .L1266
	.p2align 4,,15
.L1263:
	cmpld 1,0,9
	blt 1,.L1269
.L1266:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne 6,.L1263
	beqlr 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
	.p2align 5
.L1264:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne 0,.L1263
	bdnz .L1264
	blr
	.p2align 4,,15
.L1269:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE99:
	.size	memmem,.-memmem
	.align 2
	.p2align 4,,15
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
.LCF100:
0:	addis 2,12,.TOC.-.LCF100@ha
	addi 2,2,.TOC.-.LCF100@l
	.localentry	mempcpy,.-mempcpy
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 30,3
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	beq 0,.L1278
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L1278:
	addi 1,1,48
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
	.size	mempcpy,.-mempcpy
	.align 2
	.p2align 4,,15
	.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
.LCF101:
0:	addis 2,12,.TOC.-.LCF101@ha
	addi 2,2,.TOC.-.LCF101@l
	.localentry	frexp,.-frexp
	xxlxor 0,0,0
	fcmpu 7,1,0
	blt 7,.L1306
	addis 9,2,.LC34@toc@ha
	li 10,0
	lfd 2,.LC34@toc@l(9)
	fcmpu 0,1,2
	cror 2,1,2
	bne 0,.L1307
.L1286:
	addis 11,2,.LC23@toc@ha
	addis 12,2,.LC34@toc@ha
	li 8,0
	lfd 7,.LC23@toc@l(11)
	lfd 8,.LC34@toc@l(12)
	.p2align 5
.L1292:
	fmul 1,1,7
	addi 8,8,1
	fcmpu 0,1,8
	cror 2,1,2
	beq 0,.L1292
	cmpwi 1,10,0
	stw 8,0(4)
	beqlr 1
.L1309:
	fneg 1,1
	blr
	.p2align 4,,15
.L1307:
	addis 3,2,.LC23@toc@ha
	lfd 3,.LC23@toc@l(3)
	fcmpu 1,1,3
	bnl 1,.L1289
	bne 7,.L1298
.L1289:
	li 0,0
	stw 0,0(4)
	blr
	.p2align 4,,15
.L1306:
	addis 5,2,.LC30@toc@ha
	fneg 12,1
	lfd 4,.LC30@toc@l(5)
	fcmpu 5,1,4
	cror 22,20,22
	bne 5,.L1308
	fmr 1,12
	li 10,1
	b .L1286
	.p2align 4,,15
.L1308:
	addis 6,2,.LC32@toc@ha
	lfd 5,.LC32@toc@l(6)
	fcmpu 6,1,5
	bng 6,.L1289
	li 10,1
.L1287:
	addis 7,2,.LC23@toc@ha
	fmr 1,12
	li 8,0
	lfd 6,.LC23@toc@l(7)
	.p2align 4,,15
.L1294:
	fadd 1,1,1
	addi 8,8,-1
	fcmpu 7,1,6
	blt 7,.L1294
	cmpwi 1,10,0
	stw 8,0(4)
	bne 1,.L1309
	blr
.L1298:
	fmr 12,1
	b .L1287
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE101:
	.size	frexp,.-frexp
	.align 2
	.p2align 4,,15
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beqlr 0
	.p2align 4,,15
.L1312:
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	sldi 4,4,1
	beqlr 0
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	sldi 4,4,1
	bne 0,.L1312
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-__muldi3
	.align 2
	.p2align 4,,15
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 12,32
	li 9,1
	blt 0,.L1317
	b .L1338
	.p2align 4,,15
.L1321:
	rldicl 4,0,0,32
	slwi 9,9,1
	ble 7,.L1319
	cmpwi 5,4,0
	slwi 6,4,1
	cmplw 6,3,6
	blt 5,.L1322
	rldicl 4,6,0,32
	slwi 9,9,1
	ble 6,.L1319
	bdz .L1320
.L1317:
	cmpwi 1,4,0
	slwi 0,4,1
	addi 10,12,-1
	cmplw 7,3,0
	addi 12,10,-1
	bge 1,.L1321
.L1322:
	li 12,0
	li 11,1
	li 10,0
	.p2align 4,,15
.L1323:
	cmplw 1,3,4
	subf 8,4,3
	srdi 4,4,1
	isel 7,0,11,4
	cmpwi 5,7,0
	isel 0,10,9,22
	srwi 9,9,1
	cmpwi 7,9,0
	isel 3,3,8,22
	or 12,12,0
	rldicl 3,3,0,32
	bne 7,.L1323
.L1320:
	cmpdi 6,5,0
	isel 5,12,3,26
	rldicl 3,5,0,32
	blr
	.p2align 4,,15
.L1319:
	cmpwi 0,9,0
	bne 0,.L1322
	li 12,0
	b .L1320
	.p2align 4,,15
.L1338:
	isel 9,0,9,1
	subf 4,4,3
	andi. 12,9,0xff
	isel 3,3,4,2
	rldicl 3,3,0,32
	b .L1320
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.p2align 4,,15
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	cmpdi 0,3,0
	beq 0,.L1343
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1343:
	li 0,7
	extsw 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.p2align 4,,15
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	sradi 9,3,63
	cmpd 0,3,9
	xor 3,3,9
	beq 0,.L1346
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1346:
	li 0,63
	extsw 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.p2align 4,,15
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq 0,.L1348
	.p2align 5
.L1349:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne 0,.L1349
.L1348:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.p2align 4,,15
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	cmpld 0,3,4
	srwi 9,5,3
	rlwinm 12,5,0,0,28
	blt 0,.L1356
	add 10,4,5
	cmpld 1,3,10
	ble 1,.L1535
.L1356:
	cmpwi 5,9,0
	addi 7,4,-8
	addi 8,3,-8
	beq 5,.L1469
	andi. 10,9,0x1
	addi 6,9,-1
	mr 10,9
	bne 0,.L1536
.L1425:
	srdi 10,10,1
	mtctr 10
	cmpdi 7,10,2
	ble 7,.L1494
	addi 10,10,-1
	mtctr 10
	addi 9,9,-2
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 10,8,8
	std 11,8(10)
.L1359:
	addi 9,9,-2
	ld 11,16(6)
	std 11,16(10)
	addi 6,6,16
	ld 11,8(6)
	addi 10,10,16
	std 11,8(10)
	bdnz .L1359
.L1471:
	cmplw 1,12,5
	bgelr 1
	subf 8,12,5
	rldicl 10,12,0,32
	addi 7,8,-1
	cmplwi 5,7,14
	ble 5,.L1361
	addi 0,10,1
	add 7,3,10
	add 6,4,0
	subf 11,6,7
	cmpldi 6,11,14
	ble 6,.L1361
	rldicl 11,8,60,36
	std 31,-8(1)
	.cfi_offset 31, -8
	add 10,4,10
	andi. 0,11,0x3
	addi 31,11,-1
	mr 6,11
	beq 0,.L1420
	cmpdi 7,0,1
	beq 7,.L1440
	cmpdi 1,0,2
	bne 1,.L1537
.L1441:
	lxvd2x 8,10,9
	addi 11,11,-1
	stxvd2x 8,7,9
	addi 9,9,16
.L1440:
	lxvd2x 9,10,9
	cmpdi 5,11,1
	stxvd2x 9,7,9
	addi 9,9,16
	beq 5,.L1477
.L1420:
	srdi 0,6,2
	mtctr 0
.L1362:
	lxvd2x 10,10,9
	addi 31,9,16
	addi 11,9,32
	addi 6,9,48
	stxvd2x 10,7,9
	addi 9,9,64
	lxvd2x 11,10,31
	stxvd2x 11,7,31
	lxvd2x 12,10,11
	stxvd2x 12,7,11
	lxvd2x 13,10,6
	stxvd2x 13,7,6
	bdnz .L1362
.L1477:
	andi. 9,8,0xf
	rlwinm 9,8,0,0,27
	add 12,9,12
	beq 0,.L1531
	rldicl 8,12,0,32
	addi 10,12,1
	cmplw 6,10,5
	lbzx 7,4,8
	stbx 7,3,8
	bge 6,.L1531
	rldicl 0,10,0,32
	addi 31,12,2
	cmplw 7,31,5
	lbzx 6,4,0
	stbx 6,3,0
	bge 7,.L1531
	rldicl 11,31,0,32
	addi 9,12,3
	cmplw 1,9,5
	lbzx 8,4,11
	stbx 8,3,11
	bge 1,.L1531
	rldicl 10,9,0,32
	addi 0,12,4
	cmplw 5,0,5
	lbzx 7,4,10
	stbx 7,3,10
	bge 5,.L1531
	rldicl 31,0,0,32
	addi 6,12,5
	cmplw 0,6,5
	lbzx 11,4,31
	stbx 11,3,31
	bge 0,.L1531
	rldicl 9,6,0,32
	addi 8,12,6
	cmplw 6,8,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 6,.L1531
	rldicl 0,8,0,32
	addi 31,12,7
	cmplw 7,31,5
	lbzx 7,4,0
	stbx 7,3,0
	bge 7,.L1531
	rldicl 6,31,0,32
	addi 11,12,8
	cmplw 1,11,5
	lbzx 9,4,6
	stbx 9,3,6
	bge 1,.L1531
	rldicl 8,11,0,32
	addi 10,12,9
	cmplw 5,10,5
	lbzx 0,4,8
	stbx 0,3,8
	bge 5,.L1531
	rldicl 31,10,0,32
	addi 6,12,10
	cmplw 0,6,5
	lbzx 7,4,31
	stbx 7,3,31
	bge 0,.L1531
	rldicl 11,6,0,32
	addi 9,12,11
	cmplw 6,9,5
	lbzx 8,4,11
	stbx 8,3,11
	bge 6,.L1531
	rldicl 10,9,0,32
	addi 0,12,12
	cmplw 7,0,5
	lbzx 31,4,10
	stbx 31,3,10
	bge 7,.L1531
	rldicl 6,0,0,32
	addi 11,12,13
	cmplw 1,11,5
	lbzx 7,4,6
	stbx 7,3,6
	bge 1,.L1531
	rldicl 10,11,0,32
	addi 12,12,14
	cmplw 5,12,5
	lbzx 5,4,10
	stbx 5,3,10
	bge 5,.L1531
	rldicl 9,12,0,32
	lbzx 4,4,9
	stbx 4,3,9
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1494:
	ld 0,8(7)
	mr 6,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 11,16(6)
	std 11,16(10)
	bdz .L1471
	ld 0,8(7)
	mr 6,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 11,16(6)
	std 11,16(10)
	bdnz .L1494
	b .L1471
	.p2align 4,,15
.L1536:
	mr. 9,6
	ld 11,0(4)
	mr 7,4
	mr 8,3
	std 11,0(3)
	bne 0,.L1425
	b .L1471
	.p2align 4,,15
.L1535:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 9,0,0,32
	beqlr 5
	cmplwi 6,0,14
	ble 6,.L1366
	addi 6,9,-1
	add 8,3,9
	add 7,4,6
	subf 11,7,8
	addi 12,11,14
	cmpldi 7,12,14
	ble 7,.L1366
	srdi 6,5,4
	std 31,-8(1)
	.cfi_offset 31, -8
	addi 31,9,-15
	andi. 11,6,0x3
	add 8,4,31
	add 9,3,31
	addi 12,6,-1
	mr 7,6
	li 10,0
	beq 0,.L1435
	cmpdi 1,11,1
	beq 1,.L1442
	cmpdi 5,11,2
	bne 5,.L1538
.L1443:
	lxvd2x 1,8,10
	addi 6,6,-1
	stxvd2x 1,9,10
	addi 10,10,-16
.L1442:
	lxvd2x 2,8,10
	cmpdi 6,6,1
	stxvd2x 2,9,10
	addi 10,10,-16
	beq 6,.L1478
.L1435:
	srdi 31,7,2
	mtctr 31
.L1367:
	lxvd2x 3,8,10
	addi 12,10,-16
	addi 11,10,-32
	addi 7,10,-48
	stxvd2x 3,9,10
	addi 10,10,-64
	lxvd2x 4,8,12
	stxvd2x 4,9,12
	lxvd2x 5,8,11
	stxvd2x 5,9,11
	lxvd2x 6,8,7
	stxvd2x 6,9,7
	bdnz .L1367
.L1478:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 6,5,0
	beq 0,.L1531
	rldicl 0,6,0,32
	cmpwi 7,6,0
	addi 9,6,-1
	lbzx 8,4,0
	rldicl 31,9,0,32
	stbx 8,3,0
	beq 7,.L1531
	cmpdi 1,31,0
	lbzx 12,4,31
	addi 10,6,-2
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 1,.L1531
	cmpdi 5,7,0
	lbzx 11,4,7
	addi 5,6,-3
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 5,.L1531
	cmpdi 6,0,0
	lbzx 9,4,0
	addi 8,6,-4
	rldicl 31,8,0,32
	stbx 9,3,0
	beq 6,.L1531
	cmpdi 0,31,0
	lbzx 12,4,31
	addi 10,6,-5
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 0,.L1531
	cmpdi 7,7,0
	lbzx 11,4,7
	addi 5,6,-6
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 7,.L1531
	cmpdi 1,0,0
	lbzx 8,4,0
	addi 9,6,-7
	rldicl 31,9,0,32
	stbx 8,3,0
	beq 1,.L1531
	cmpdi 5,31,0
	lbzx 12,4,31
	addi 10,6,-8
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 5,.L1531
	cmpdi 6,7,0
	lbzx 11,4,7
	addi 5,6,-9
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 6,.L1531
	cmpdi 0,0,0
	lbzx 8,4,0
	addi 9,6,-10
	rldicl 31,9,0,32
	stbx 8,3,0
	beq 0,.L1531
	cmpdi 7,31,0
	lbzx 12,4,31
	addi 10,6,-11
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 7,.L1531
	cmpdi 1,7,0
	lbzx 11,4,7
	addi 5,6,-12
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 1,.L1531
	cmpdi 5,0,0
	lbzx 9,4,0
	addi 8,6,-13
	rldicl 31,8,0,32
	stbx 9,3,0
	beq 5,.L1531
	cmpdi 6,31,0
	lbzx 12,4,31
	addi 6,6,-14
	rldicl 7,6,0,32
	stbx 12,3,31
	beq 6,.L1531
	lbzx 4,4,7
	stbx 4,3,7
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1531:
	.cfi_restore_state
	ld 31,-8(1)
	.cfi_restore 31
.L1352:
	blr
	.p2align 4,,15
.L1537:
	.cfi_offset 31, -8
	lxvd2x 7,10,9
	mr 11,31
	stxvd2x 7,7,9
	addi 9,9,16
	b .L1441
	.p2align 4,,15
.L1469:
	.cfi_restore 31
	cmpdi 6,5,0
	rldicl 10,12,0,32
	mr 8,5
	beqlr 6
.L1361:
	rldicl 8,8,0,32
	addi 0,10,-1
	andi. 9,8,0x1
	add 4,4,0
	add 3,3,0
	addi 6,8,-1
	beq 0,.L1413
	lbzu 11,1(4)
	cmpdi 6,6,0
	stbu 11,1(3)
	beqlr 6
.L1413:
	srdi 9,8,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1493
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(3)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,3,1
	stb 8,1(9)
.L1364:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1364
	blr
	.p2align 4,,15
.L1493:
	lbz 7,1(4)
	mr 10,4
	mr 12,3
	addi 4,4,2
	addi 3,3,2
	stb 7,-1(3)
	lbz 5,2(10)
	stb 5,2(12)
	bdnz .L1493
	blr
.L1538:
	.cfi_offset 31, -8
	lxvd2x 0,0,8
	mr 6,12
	li 10,-16
	stxvd2x 0,0,9
	b .L1443
.L1366:
	.cfi_restore 31
	andi. 10,5,0x1
	addi 10,9,1
	add 9,3,10
	add 4,4,10
	addi 3,5,-1
	beq 0,.L1428
	lbzu 11,-1(4)
	cmpdi 7,3,0
	stbu 11,-1(9)
	beqlr 7
.L1428:
	srdi 10,5,1
	mtctr 10
	cmpdi 1,10,2
	ble 1,.L1495
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L1370:
	addi 4,8,-1
	lbz 7,-1(4)
	stb 7,-2(10)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1370
	blr
.L1495:
	lbz 5,-1(4)
	mr 8,4
	mr 12,9
	addi 4,4,-2
	addi 9,9,-2
	stb 5,1(9)
	lbz 0,-2(8)
	stb 0,-2(12)
	bdnz .L1495
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-__cmovd
	.align 2
	.p2align 4,,15
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	cmpld 0,3,4
	srwi 10,5,1
	blt 0,.L1543
	add 9,4,5
	cmpld 1,3,9
	ble 1,.L1668
.L1543:
	cmpwi 5,10,0
	beq 5,.L1542
	addi 11,10,-1
	cmplwi 6,11,6
	ble 6,.L1546
	addi 12,4,2
	subf 9,12,3
	cmpldi 0,9,12
	ble 0,.L1546
	srdi 6,5,4
	srwi 8,5,4
	andi. 11,6,0x3
	addi 0,6,-1
	mr 7,6
	li 12,0
	beq 0,.L1601
	cmpdi 7,11,1
	beq 7,.L1617
	cmpdi 1,11,2
	bne 1,.L1669
.L1618:
	lxvd2x 8,4,12
	addi 6,6,-1
	stxvd2x 8,3,12
	addi 12,12,16
.L1617:
	lxvd2x 9,4,12
	cmpdi 5,6,1
	stxvd2x 9,3,12
	addi 12,12,16
	beq 5,.L1649
.L1601:
	srdi 9,7,2
	mtctr 9
.L1547:
	lxvd2x 10,4,12
	addi 0,12,16
	addi 11,12,32
	addi 7,12,48
	stxvd2x 10,3,12
	addi 12,12,64
	lxvd2x 11,4,0
	stxvd2x 11,3,0
	lxvd2x 12,4,11
	stxvd2x 12,3,11
	lxvd2x 13,4,7
	stxvd2x 13,3,7
	bdnz .L1547
.L1649:
	slwi 12,8,3
	cmplw 6,10,12
	beq 6,.L1542
	rlwinm 9,12,1,0,27
	addi 8,12,1
	cmplw 0,10,8
	lhzx 6,4,9
	sthx 6,3,9
	ble 0,.L1542
	rldic 0,8,1,31
	addi 7,12,2
	cmplw 7,10,7
	lhzx 11,4,0
	sthx 11,3,0
	ble 7,.L1542
	rldicl 9,7,0,32
	addi 0,12,3
	sldi 8,9,1
	cmplw 1,10,0
	lhzx 6,4,8
	sthx 6,3,8
	ble 1,.L1542
	rldic 7,0,1,31
	addi 11,12,4
	cmplw 5,10,11
	lhzx 9,4,7
	sthx 9,3,7
	ble 5,.L1542
	rldicl 0,11,0,32
	addi 7,12,5
	sldi 8,0,1
	cmplw 6,10,7
	lhzx 6,4,8
	sthx 6,3,8
	ble 6,.L1542
	rldic 11,7,1,31
	addi 12,12,6
	cmplw 0,10,12
	lhzx 10,4,11
	sthx 10,3,11
	ble 0,.L1542
	rldicl 9,12,0,32
	sldi 0,9,1
	lhzx 7,4,0
	sthx 7,3,0
.L1542:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 8,5,0,32
	lbzx 4,4,8
	stbx 4,3,8
	blr
	.p2align 4,,15
.L1668:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 7,0,0,32
	beqlr 5
	cmplwi 6,0,14
	ble 6,.L1552
	addi 6,7,-1
	add 8,3,7
	add 11,4,6
	subf 12,11,8
	addi 10,12,14
	cmpldi 7,10,14
	ble 7,.L1552
	srdi 6,5,4
	addi 9,7,-15
	andi. 11,6,0x3
	add 8,4,9
	addi 12,6,-1
	add 9,3,9
	mr 7,6
	li 10,0
	beq 0,.L1613
	cmpdi 1,11,1
	beq 1,.L1619
	cmpdi 5,11,2
	bne 5,.L1670
.L1620:
	lxvd2x 1,8,10
	addi 6,6,-1
	stxvd2x 1,9,10
	addi 10,10,-16
.L1619:
	lxvd2x 2,8,10
	cmpdi 6,6,1
	stxvd2x 2,9,10
	addi 10,10,-16
	beq 6,.L1650
.L1613:
	srdi 11,7,2
	mtctr 11
.L1553:
	lxvd2x 3,8,10
	addi 12,10,-16
	addi 6,10,-32
	addi 7,10,-48
	stxvd2x 3,9,10
	addi 10,10,-64
	lxvd2x 4,8,12
	stxvd2x 4,9,12
	lxvd2x 5,8,6
	stxvd2x 5,9,6
	lxvd2x 6,8,7
	stxvd2x 6,9,7
	bdnz .L1553
.L1650:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 11,5,0
	beqlr 0
	rldicl 0,11,0,32
	cmpwi 7,11,0
	addi 9,11,-1
	lbzx 8,4,0
	rldicl 12,9,0,32
	stbx 8,3,0
	beqlr 7
	cmpdi 1,12,0
	lbzx 7,4,12
	addi 10,11,-2
	rldicl 6,10,0,32
	stbx 7,3,12
	beqlr 1
	cmpdi 5,6,0
	lbzx 5,4,6
	addi 0,11,-3
	rldicl 9,0,0,32
	stbx 5,3,6
	beqlr 5
	cmpdi 6,9,0
	lbzx 8,4,9
	addi 12,11,-4
	rldicl 7,12,0,32
	stbx 8,3,9
	beqlr 6
	cmpdi 0,7,0
	lbzx 10,4,7
	addi 6,11,-5
	rldicl 5,6,0,32
	stbx 10,3,7
	beqlr 0
	cmpdi 7,5,0
	lbzx 0,4,5
	addi 9,11,-6
	rldicl 12,9,0,32
	stbx 0,3,5
	beqlr 7
	cmpdi 1,12,0
	lbzx 8,4,12
	addi 7,11,-7
	rldicl 6,7,0,32
	stbx 8,3,12
	beqlr 1
	cmpdi 5,6,0
	lbzx 5,4,6
	addi 10,11,-8
	rldicl 0,10,0,32
	stbx 5,3,6
	beqlr 5
	cmpdi 6,0,0
	lbzx 12,4,0
	addi 9,11,-9
	rldicl 7,9,0,32
	stbx 12,3,0
	beqlr 6
	cmpdi 0,7,0
	lbzx 8,4,7
	addi 6,11,-10
	rldicl 5,6,0,32
	stbx 8,3,7
	beqlr 0
	cmpdi 7,5,0
	lbzx 10,4,5
	addi 0,11,-11
	rldicl 12,0,0,32
	stbx 10,3,5
	beqlr 7
	cmpdi 1,12,0
	lbzx 9,4,12
	addi 7,11,-12
	rldicl 6,7,0,32
	stbx 9,3,12
	beqlr 1
	cmpdi 5,6,0
	lbzx 5,4,6
	addi 8,11,-13
	rldicl 0,8,0,32
	stbx 5,3,6
	beqlr 5
	cmpdi 6,0,0
	lbzx 10,4,0
	addi 11,11,-14
	rldicl 12,11,0,32
	stbx 10,3,0
	beqlr 6
	lbzx 4,4,12
	stbx 4,3,12
	blr
	.p2align 4,,15
.L1669:
	lxvd2x 7,0,4
	mr 6,0
	li 12,16
	stxvd2x 7,0,3
	b .L1618
	.p2align 4,,15
.L1546:
	andi. 9,10,0x1
	addi 8,4,-2
	addi 6,10,-1
	addi 9,3,-2
	beq 0,.L1594
	cmpdi 7,6,0
	lhz 11,0(4)
	mr 8,4
	mr 9,3
	sth 11,0(3)
	beq 7,.L1542
.L1594:
	srdi 10,10,1
	mtctr 10
	cmpdi 1,10,2
	ble 1,.L1661
	addi 10,10,-1
	mtctr 10
	lhz 6,2(8)
	sth 6,2(9)
	addi 7,8,2
	lhz 6,2(7)
	addi 10,9,2
	sth 6,2(10)
.L1549:
	lhz 6,4(7)
	sth 6,4(10)
	addi 7,7,4
	lhz 6,2(7)
	addi 10,10,4
	sth 6,2(10)
	bdnz .L1549
	b .L1542
	.p2align 4,,15
.L1661:
	lhz 12,2(8)
	mr 7,8
	mr 10,9
	addi 8,8,4
	addi 9,9,4
	sth 12,-2(9)
	lhz 0,4(7)
	sth 0,4(10)
	bdnz .L1661
	b .L1542
.L1670:
	lxvd2x 0,0,8
	mr 6,12
	li 10,-16
	stxvd2x 0,0,9
	b .L1620
.L1552:
	andi. 10,5,0x1
	addi 9,7,1
	add 4,4,9
	add 9,3,9
	addi 3,5,-1
	beq 0,.L1606
	lbzu 7,-1(4)
	cmpdi 7,3,0
	stbu 7,-1(9)
	beqlr 7
.L1606:
	srdi 10,5,1
	mtctr 10
	cmpdi 1,10,2
	ble 1,.L1662
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L1555:
	addi 4,8,-1
	lbz 7,-1(4)
	stb 7,-2(10)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1555
.L1539:
	blr
.L1662:
	lbz 6,-1(4)
	mr 5,4
	mr 8,9
	addi 4,4,-2
	addi 9,9,-2
	stb 6,1(9)
	lbz 0,-2(5)
	stb 0,-2(8)
	bdnz .L1662
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-__cmovh
	.align 2
	.p2align 4,,15
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	cmpld 0,3,4
	srwi 11,5,2
	rlwinm 0,5,0,0,29
	blt 0,.L1676
	add 9,4,5
	cmpld 1,3,9
	ble 1,.L1871
.L1676:
	cmpwi 5,11,0
	beq 5,.L1872
	addi 9,11,-1
	cmplwi 0,9,3
	ble 0,.L1678
	addi 6,4,4
	subf 7,6,3
	cmpldi 7,7,8
	ble 7,.L1678
	srdi 7,5,4
	srwi 8,5,4
	andi. 6,7,0x3
	addi 12,7,-1
	mr 10,7
	li 9,0
	beq 0,.L1753
	cmpdi 1,6,1
	beq 1,.L1769
	cmpdi 5,6,2
	bne 5,.L1873
.L1770:
	lxvd2x 8,4,9
	addi 7,7,-1
	stxvd2x 8,3,9
	addi 9,9,16
.L1769:
	lxvd2x 9,4,9
	cmpdi 6,7,1
	stxvd2x 9,3,9
	addi 9,9,16
	beq 6,.L1811
.L1753:
	srdi 6,10,2
	mtctr 6
.L1679:
	lxvd2x 10,4,9
	addi 12,9,16
	addi 7,9,32
	addi 10,9,48
	stxvd2x 10,3,9
	addi 9,9,64
	lxvd2x 11,4,12
	stxvd2x 11,3,12
	lxvd2x 12,4,7
	stxvd2x 12,3,7
	lxvd2x 13,4,10
	stxvd2x 13,3,10
	bdnz .L1679
.L1811:
	slwi 9,8,2
	cmplw 7,11,9
	beq 7,.L1682
	rlwinm 8,9,2,0,27
	addi 6,9,1
	cmplw 0,11,6
	lwzx 12,4,8
	stwx 12,3,8
	ble 0,.L1682
	rldic 10,6,2,31
	addi 7,9,2
	cmplw 1,11,7
	lwzx 11,4,10
	stwx 11,3,10
	ble 1,.L1682
	rldicl 9,7,0,32
	sldi 8,9,2
	lwzx 6,4,8
	stwx 6,3,8
.L1682:
	cmplw 7,0,5
	bgelr 7
	subf 9,0,5
	rldicl 6,0,0,32
	addi 10,9,-1
	cmplwi 1,10,14
	ble 1,.L1674
	addi 8,6,1
	add 7,3,6
	add 11,4,8
	subf 12,11,7
	cmpldi 0,12,14
	ble 0,.L1674
	rldicl 11,9,60,36
	std 31,-8(1)
	.cfi_offset 31, -8
	add 10,4,6
	andi. 12,11,0x3
	addi 31,11,-1
	mr 6,11
	li 8,0
	beq 0,.L1741
	cmpdi 5,12,1
	beq 5,.L1771
	cmpdi 6,12,2
	bne 6,.L1874
.L1772:
	lxvd2x 1,10,8
	addi 11,11,-1
	stxvd2x 1,7,8
	addi 8,8,16
.L1771:
	lxvd2x 2,10,8
	cmpdi 7,11,1
	stxvd2x 2,7,8
	addi 8,8,16
	beq 7,.L1810
.L1741:
	srdi 12,6,2
	mtctr 12
.L1683:
	lxvd2x 3,10,8
	addi 31,8,16
	addi 11,8,32
	addi 6,8,48
	stxvd2x 3,7,8
	addi 8,8,64
	lxvd2x 4,10,31
	stxvd2x 4,7,31
	lxvd2x 5,10,11
	stxvd2x 5,7,11
	lxvd2x 6,10,6
	stxvd2x 6,7,6
	bdnz .L1683
.L1810:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 12,9,0
	beq 0,.L1867
	rldicl 0,12,0,32
	addi 10,12,1
	cmplw 1,10,5
	lbzx 7,4,0
	stbx 7,3,0
	bge 1,.L1867
	rldicl 31,10,0,32
	addi 8,12,2
	cmplw 5,8,5
	lbzx 6,4,31
	stbx 6,3,31
	bge 5,.L1867
	rldicl 11,8,0,32
	addi 9,12,3
	cmplw 6,9,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 6,.L1867
	rldicl 10,9,0,32
	addi 31,12,4
	cmplw 7,31,5
	lbzx 7,4,10
	stbx 7,3,10
	bge 7,.L1867
	rldicl 8,31,0,32
	addi 6,12,5
	cmplw 0,6,5
	lbzx 11,4,8
	stbx 11,3,8
	bge 0,.L1867
	rldicl 9,6,0,32
	addi 0,12,6
	cmplw 1,0,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 1,.L1867
	rldicl 31,0,0,32
	addi 8,12,7
	cmplw 5,8,5
	lbzx 7,4,31
	stbx 7,3,31
	bge 5,.L1867
	rldicl 6,8,0,32
	addi 11,12,8
	cmplw 6,11,5
	lbzx 9,4,6
	stbx 9,3,6
	bge 6,.L1867
	rldicl 0,11,0,32
	addi 10,12,9
	cmplw 7,10,5
	lbzx 31,4,0
	stbx 31,3,0
	bge 7,.L1867
	rldicl 6,10,0,32
	addi 8,12,10
	cmplw 0,8,5
	lbzx 7,4,6
	stbx 7,3,6
	bge 0,.L1867
	rldicl 11,8,0,32
	addi 9,12,11
	cmplw 1,9,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 1,.L1867
	rldicl 10,9,0,32
	addi 31,12,12
	cmplw 5,31,5
	lbzx 6,4,10
	stbx 6,3,10
	bge 5,.L1867
	rldicl 8,31,0,32
	addi 11,12,13
	cmplw 6,11,5
	lbzx 7,4,8
	stbx 7,3,8
	bge 6,.L1867
	rldicl 0,11,0,32
	addi 12,12,14
	cmplw 7,12,5
	lbzx 5,4,0
	stbx 5,3,0
	bge 7,.L1867
	rldicl 9,12,0,32
	lbzx 4,4,9
	stbx 4,3,9
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1871:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 7,0,0,32
	beqlr 5
	cmplwi 6,0,14
	ble 6,.L1687
	addi 10,7,-1
	add 8,3,7
	add 6,4,10
	subf 12,6,8
	addi 11,12,14
	cmpldi 7,11,14
	ble 7,.L1687
	srdi 6,5,4
	std 31,-8(1)
	.cfi_offset 31, -8
	addi 31,7,-15
	andi. 12,6,0x3
	add 8,4,31
	add 9,3,31
	addi 11,6,-1
	mr 7,6
	li 10,0
	beq 0,.L1765
	cmpdi 1,12,1
	beq 1,.L1773
	cmpdi 5,12,2
	bne 5,.L1875
.L1774:
	lxvd2x 1,8,10
	addi 6,6,-1
	stxvd2x 1,9,10
	addi 10,10,-16
.L1773:
	lxvd2x 2,8,10
	cmpdi 6,6,1
	stxvd2x 2,9,10
	addi 10,10,-16
	beq 6,.L1812
.L1765:
	srdi 31,7,2
	mtctr 31
.L1688:
	lxvd2x 3,8,10
	addi 12,10,-16
	addi 11,10,-32
	addi 7,10,-48
	stxvd2x 3,9,10
	addi 10,10,-64
	lxvd2x 4,8,12
	stxvd2x 4,9,12
	lxvd2x 5,8,11
	stxvd2x 5,9,11
	lxvd2x 6,8,7
	stxvd2x 6,9,7
	bdnz .L1688
.L1812:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 6,5,0
	beq 0,.L1867
	rldicl 0,6,0,32
	cmpwi 7,6,0
	addi 9,6,-1
	lbzx 8,4,0
	rldicl 31,9,0,32
	stbx 8,3,0
	beq 7,.L1867
	cmpdi 1,31,0
	lbzx 12,4,31
	addi 10,6,-2
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 1,.L1867
	cmpdi 5,7,0
	lbzx 11,4,7
	addi 5,6,-3
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 5,.L1867
	cmpdi 6,0,0
	lbzx 9,4,0
	addi 8,6,-4
	rldicl 31,8,0,32
	stbx 9,3,0
	beq 6,.L1867
	cmpdi 0,31,0
	lbzx 12,4,31
	addi 10,6,-5
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 0,.L1867
	cmpdi 7,7,0
	lbzx 11,4,7
	addi 5,6,-6
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 7,.L1867
	cmpdi 1,0,0
	lbzx 8,4,0
	addi 9,6,-7
	rldicl 31,9,0,32
	stbx 8,3,0
	beq 1,.L1867
	cmpdi 5,31,0
	lbzx 12,4,31
	addi 10,6,-8
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 5,.L1867
	cmpdi 6,7,0
	lbzx 11,4,7
	addi 5,6,-9
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 6,.L1867
	cmpdi 0,0,0
	lbzx 8,4,0
	addi 9,6,-10
	rldicl 31,9,0,32
	stbx 8,3,0
	beq 0,.L1867
	cmpdi 7,31,0
	lbzx 12,4,31
	addi 10,6,-11
	rldicl 7,10,0,32
	stbx 12,3,31
	beq 7,.L1867
	cmpdi 1,7,0
	lbzx 11,4,7
	addi 5,6,-12
	rldicl 0,5,0,32
	stbx 11,3,7
	beq 1,.L1867
	cmpdi 5,0,0
	lbzx 9,4,0
	addi 8,6,-13
	rldicl 31,8,0,32
	stbx 9,3,0
	beq 5,.L1867
	cmpdi 6,31,0
	lbzx 12,4,31
	addi 6,6,-14
	rldicl 7,6,0,32
	stbx 12,3,31
	beq 6,.L1867
	lbzx 4,4,7
	stbx 4,3,7
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1867:
	.cfi_restore_state
	ld 31,-8(1)
	.cfi_restore 31
.L1671:
	blr
	.p2align 4,,15
.L1873:
	lxvd2x 7,0,4
	mr 7,12
	li 9,16
	stxvd2x 7,0,3
	b .L1770
	.p2align 4,,15
.L1874:
	.cfi_offset 31, -8
	lxvd2x 0,0,10
	mr 11,31
	li 8,16
	stxvd2x 0,0,7
	b .L1772
	.p2align 4,,15
.L1872:
	.cfi_restore 31
	cmpdi 6,5,0
	rldicl 6,0,0,32
	mr 9,5
	beqlr 6
.L1674:
	rldicl 11,9,0,32
	addi 10,6,-1
	andi. 8,11,0x1
	add 4,4,10
	add 10,3,10
	addi 3,11,-1
	beq 0,.L1734
	lbzu 6,1(4)
	cmpdi 1,3,0
	stbu 6,1(10)
	beqlr 1
.L1734:
	srdi 9,11,1
	mtctr 9
	cmpdi 5,9,2
	ble 5,.L1828
	addi 9,9,-1
	mtctr 9
	lbz 7,1(4)
	stb 7,1(10)
	addi 8,4,1
	lbz 7,1(8)
	addi 9,10,1
	stb 7,1(9)
.L1685:
	lbz 7,2(8)
	stb 7,2(9)
	addi 8,8,2
	lbz 7,1(8)
	addi 9,9,2
	stb 7,1(9)
	bdnz .L1685
	blr
	.p2align 4,,15
.L1828:
	lbz 7,1(4)
	mr 8,4
	mr 12,10
	addi 4,4,2
	addi 10,10,2
	stb 7,-1(10)
	lbz 0,2(8)
	stb 0,2(12)
	bdnz .L1828
	blr
	.p2align 4,,15
.L1678:
	rldicl 12,11,0,32
	addi 8,4,-4
	andi. 10,12,0x1
	addi 7,12,-1
	addi 10,3,-4
	beq 0,.L1746
	cmpdi 5,7,0
	lwz 11,0(4)
	mr 8,4
	mr 10,3
	stw 11,0(3)
	beq 5,.L1682
.L1746:
	srdi 9,12,1
	mtctr 9
	cmpdi 6,9,2
	ble 6,.L1829
	addi 9,9,-1
	mtctr 9
	lwz 6,4(8)
	stw 6,4(10)
	addi 7,8,4
	lwz 6,4(7)
	addi 9,10,4
	stw 6,4(9)
.L1681:
	lwz 6,8(7)
	stw 6,8(9)
	addi 7,7,8
	lwz 6,4(7)
	addi 9,9,8
	stw 6,4(9)
	bdnz .L1681
	b .L1682
	.p2align 4,,15
.L1829:
	lwz 6,4(8)
	mr 12,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 7,8(12)
	stw 7,8(9)
	bdnz .L1829
	b .L1682
.L1875:
	.cfi_offset 31, -8
	lxvd2x 0,0,8
	mr 6,11
	li 10,-16
	stxvd2x 0,0,9
	b .L1774
.L1687:
	.cfi_restore 31
	andi. 10,5,0x1
	addi 10,7,1
	add 9,3,10
	add 4,4,10
	addi 3,5,-1
	beq 0,.L1758
	lbzu 11,-1(4)
	cmpdi 7,3,0
	stbu 11,-1(9)
	beqlr 7
.L1758:
	srdi 10,5,1
	mtctr 10
	cmpdi 1,10,2
	ble 1,.L1830
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L1691:
	addi 4,8,-1
	lbz 7,-1(4)
	stb 7,-2(10)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1691
	blr
.L1830:
	lbz 5,-1(4)
	mr 8,4
	mr 12,9
	addi 4,4,-2
	addi 9,9,-2
	stb 5,1(9)
	lbz 0,-2(8)
	stb 0,-2(12)
	bdnz .L1830
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-__cmovw
	.align 2
	.p2align 4,,15
	.globl __modi
	.type	__modi, @function
__modi:
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
	.size	__modi,.-__modi
	.align 2
	.p2align 4,,15
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	mtvsrd 1,3
	fcfid 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE111:
	.size	__uitod,.-__uitod
	.align 2
	.p2align 4,,15
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	mtvsrd 1,3
	fcfids 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE112:
	.size	__uitof,.-__uitof
	.align 2
	.p2align 4,,15
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	mtvsrd 1,3
	fcfidu 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-__ulltod
	.align 2
	.p2align 4,,15
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	mtvsrd 1,3
	fcfidus 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-__ulltof
	.align 2
	.p2align 4,,15
	.globl __umodi
	.type	__umodi, @function
__umodi:
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
	.size	__umodi,.-__umodi
	.align 2
	.p2align 4,,15
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	srdi. 9,3,15
	bne 0,.L1885
	srawi 9,3,14
	cmpwi 1,9,0
	bne 1,.L1884
	srdi. 9,3,13
	bne 0,.L1886
	srdi. 9,3,12
	bne 0,.L1887
	srdi. 9,3,11
	bne 0,.L1888
	srdi. 9,3,10
	bne 0,.L1889
	srdi. 9,3,9
	bne 0,.L1890
	srdi. 9,3,8
	bne 0,.L1891
	srdi. 9,3,7
	bne 0,.L1892
	srdi. 9,3,6
	bne 0,.L1893
	srdi. 9,3,5
	bne 0,.L1894
	srdi. 9,3,4
	bne 0,.L1895
	srdi. 9,3,3
	bne 0,.L1896
	srdi. 9,3,2
	bne 0,.L1897
	srdi. 9,3,1
	bne 0,.L1898
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1884:
	rldicl 3,9,0,59
	blr
.L1885:
	li 9,0
	b .L1884
.L1896:
	li 9,12
	b .L1884
.L1886:
	li 9,2
	b .L1884
.L1887:
	li 9,3
	b .L1884
.L1888:
	li 9,4
	b .L1884
.L1889:
	li 9,5
	b .L1884
.L1890:
	li 9,6
	b .L1884
.L1891:
	li 9,7
	b .L1884
.L1892:
	li 9,8
	b .L1884
.L1893:
	li 9,9
	b .L1884
.L1894:
	li 9,10
	b .L1884
.L1895:
	li 9,11
	b .L1884
.L1897:
	li 9,13
	b .L1884
.L1898:
	li 9,14
	b .L1884
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.p2align 4,,15
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	andi. 9,3,0x1
	bne 0,.L1903
	andi. 9,3,0x2
	bne 0,.L1904
	andi. 9,3,0x4
	bne 0,.L1905
	andi. 9,3,0x8
	bne 0,.L1906
	andi. 9,3,0x10
	bne 0,.L1907
	andi. 9,3,0x20
	bne 0,.L1908
	andi. 9,3,0x40
	bne 0,.L1909
	andi. 9,3,0x80
	bne 0,.L1910
	andi. 9,3,0x100
	bne 0,.L1911
	andi. 9,3,0x200
	bne 0,.L1912
	andi. 9,3,0x400
	bne 0,.L1913
	andi. 9,3,0x800
	bne 0,.L1914
	andi. 9,3,0x1000
	bne 0,.L1915
	andi. 9,3,0x2000
	bne 0,.L1916
	andi. 9,3,0x4000
	bne 0,.L1917
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1902:
	rldicl 3,5,0,59
	blr
.L1903:
	li 5,0
	b .L1902
.L1904:
	li 5,1
	b .L1902
.L1915:
	li 5,12
	b .L1902
.L1905:
	li 5,2
	b .L1902
.L1906:
	li 5,3
	b .L1902
.L1907:
	li 5,4
	b .L1902
.L1908:
	li 5,5
	b .L1902
.L1909:
	li 5,6
	b .L1902
.L1910:
	li 5,7
	b .L1902
.L1911:
	li 5,8
	b .L1902
.L1912:
	li 5,9
	b .L1902
.L1913:
	li 5,10
	b .L1902
.L1914:
	li 5,11
	b .L1902
.L1916:
	li 5,13
	b .L1902
.L1917:
	li 5,14
	b .L1902
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE117:
	.size	__ctzhi2,.-__ctzhi2
	.align 2
	.p2align 4,,15
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
.LCF118:
0:	addis 2,12,.TOC.-.LCF118@ha
	addi 2,2,.TOC.-.LCF118@l
	.localentry	__fixunssfsi,.-__fixunssfsi
	addis 9,2,.LC40@toc@ha
	lfs 0,.LC40@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1925
	fctidz 1,1
	mfvsrd 3,1
	blr
	.p2align 4,,15
.L1925:
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
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.p2align 4,,15
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
.LCF119:
0:	addis 2,12,.TOC.-.LCF119@ha
	addi 2,2,.TOC.-.LCF119@l
	.localentry	__parityhi2,.-__parityhi2
	mfvrsave 11
	oris 0,11,0xc07c
	stw 11,-4(1)
	mtvrsave 0
	vspltisw 10,1
	vspltisw 1,0
	addis 8,2,.LC42@toc@ha
	addis 9,2,.LC43@toc@ha
	mtvsrd 32,3
	addi 4,8,.LC42@toc@l
	addi 5,9,.LC43@toc@l
	lwz 11,-4(1)
	addis 10,2,.LC44@toc@ha
	addis 3,2,.LC45@toc@ha
	lvx 12,0,4
	lvx 11,0,5
	addi 6,10,.LC44@toc@l
	addi 7,3,.LC45@toc@l
	lvx 13,0,6
	xxspltw 32,32,1
	lvx 9,0,7
	vsraw 12,0,12
	vsraw 11,0,11
	xxland 44,44,42
	xxland 43,43,42
	vsraw 13,0,13
	vsraw 0,0,9
	vadduwm 9,12,11
	xxland 45,45,42
	xxland 42,32,42
	vadduwm 12,13,9
	vadduwm 11,10,12
	xxsldwi 45,33,43,2
	vadduwm 9,13,11
	xxsldwi 33,33,41,3
	vadduwm 0,1,9
	vspltw 10,0,3
	mfvsrwz 12,42
	rldicl 3,12,0,63
	mtvrsave 11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-__parityhi2
	.align 2
	.p2align 4,,15
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
.LCF120:
0:	addis 2,12,.TOC.-.LCF120@ha
	addi 2,2,.TOC.-.LCF120@l
	.localentry	__popcounthi2,.-__popcounthi2
	mfvrsave 11
	oris 0,11,0xc07c
	stw 11,-4(1)
	mtvrsave 0
	vspltisw 10,1
	vspltisw 1,0
	addis 8,2,.LC42@toc@ha
	addis 9,2,.LC43@toc@ha
	mtvsrd 32,3
	addi 4,8,.LC42@toc@l
	addi 5,9,.LC43@toc@l
	lwz 11,-4(1)
	addis 10,2,.LC44@toc@ha
	addis 3,2,.LC45@toc@ha
	lvx 12,0,4
	lvx 11,0,5
	addi 6,10,.LC44@toc@l
	addi 7,3,.LC45@toc@l
	lvx 13,0,6
	xxspltw 32,32,1
	lvx 9,0,7
	vsraw 12,0,12
	vsraw 11,0,11
	xxland 44,44,42
	xxland 43,43,42
	vsraw 13,0,13
	vsraw 0,0,9
	vadduwm 9,12,11
	xxland 45,45,42
	xxland 42,32,42
	vadduwm 12,13,9
	vadduwm 11,10,12
	xxsldwi 45,33,43,2
	vadduwm 9,13,11
	xxsldwi 33,33,41,3
	vadduwm 0,1,9
	vspltw 10,0,3
	mfvsrwz 12,42
	extsw 3,12
	mtvrsave 11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.p2align 4,,15
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq 0,.L1931
	.p2align 5
.L1932:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	bne 1,.L1932
.L1931:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.p2align 4,,15
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq 0,.L1936
	cmpdi 1,4,0
	beq 1,.L1936
	.p2align 5
.L1937:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne 0,.L1937
.L1936:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.p2align 4,,15
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 12,32
	li 9,1
	blt 0,.L1942
	b .L1963
	.p2align 4,,15
.L1946:
	rldicl 4,0,0,32
	slwi 9,9,1
	ble 7,.L1944
	cmpwi 5,4,0
	slwi 6,4,1
	cmplw 6,3,6
	blt 5,.L1947
	rldicl 4,6,0,32
	slwi 9,9,1
	ble 6,.L1944
	bdz .L1945
.L1942:
	cmpwi 1,4,0
	slwi 0,4,1
	addi 10,12,-1
	cmplw 7,3,0
	addi 12,10,-1
	bge 1,.L1946
.L1947:
	li 12,0
	li 11,1
	li 10,0
	.p2align 4,,15
.L1948:
	cmplw 1,3,4
	subf 8,4,3
	srdi 4,4,1
	isel 7,0,11,4
	cmpwi 5,7,0
	isel 0,10,9,22
	srwi 9,9,1
	cmpwi 7,9,0
	isel 3,3,8,22
	or 12,12,0
	rldicl 3,3,0,32
	bne 7,.L1948
.L1945:
	cmpdi 6,5,0
	isel 5,12,3,26
	rldicl 3,5,0,32
	blr
	.p2align 4,,15
.L1944:
	cmpwi 0,9,0
	bne 0,.L1947
	li 12,0
	b .L1945
	.p2align 4,,15
.L1963:
	isel 9,0,9,1
	subf 4,4,3
	andi. 12,9,0xff
	isel 3,3,4,2
	rldicl 3,3,0,32
	b .L1945
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.p2align 4,,15
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	fcmpu 0,1,2
	li 3,-1
	blt 0,.L1967
	mfcr 3,128
	rlwinm 3,3,2,1
.L1967:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.p2align 4,,15
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	fcmpu 0,1,2
	li 3,-1
	blt 0,.L1970
	mfcr 3,128
	rlwinm 3,3,2,1
.L1970:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	cmpwi 0,4,0
	blt 0,.L1987
	cmpdi 1,4,0
	beq 1,.L1980
	li 6,0
.L1976:
	li 10,32
	li 8,0
	b .L1979
	.p2align 4,,15
.L1988:
	beq 7,.L1978
.L1979:
	rlwinm 9,4,0,31,31
	addi 10,10,-1
	sradi. 4,4,1
	neg 0,9
	and 11,0,3
	rlwinm 7,10,0,0xff
	slwi 5,3,1
	cmpwi 7,7,0
	extsw 3,5
	add 8,8,11
	bne 0,.L1988
.L1978:
	cmpwi 5,6,0
	neg 12,8
	isel 3,8,12,22
.L1977:
	extsw 3,3
	blr
	.p2align 4,,15
.L1987:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1976
.L1980:
	li 3,0
	b .L1977
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE128:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.p2align 4,,15
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	cmpdi 0,3,0
	li 9,1
	li 11,0
	bge 0,.L1990
	neg 3,3
	li 9,0
	li 11,1
.L1990:
	cmpdi 1,4,0
	bge 1,.L1991
	neg 4,4
	mr 11,9
.L1991:
	cmplw 5,3,4
	li 10,16
	mtctr 10
	li 12,1
	bgt 5,.L1992
	b .L2017
	.p2align 4,,15
.L1996:
	slwi 4,4,1
	slwi 12,12,1
	cmplw 0,3,4
	cmpwi 7,4,0
	ble 0,.L1994
	blt 7,.L2013
	slwi 4,4,1
	slwi 12,12,1
	cmplw 0,3,4
	ble 0,.L1994
	bdz .L2004
.L1992:
	cmpwi 6,4,0
	bge 6,.L1996
.L2013:
	cmplw 0,3,4
	b .L1997
	.p2align 4,,15
.L1994:
	cmpwi 1,12,0
	beq 1,.L2004
.L1997:
	li 0,0
	li 5,1
	li 6,0
	.p2align 4,,15
.L1998:
	isel 7,0,5,0
	subf 8,4,3
	cmpwi 5,7,0
	srwi 4,4,1
	isel 9,6,12,22
	srwi 12,12,1
	cmpwi 6,12,0
	isel 3,3,8,22
	cmplw 0,3,4
	or 0,0,9
	bne 6,.L1998
.L2000:
	rldicl 3,0,0,32
	cmpwi 7,11,0
	neg 4,3
	isel 3,3,4,30
	blr
	.p2align 4,,15
.L2004:
	cmpwi 7,11,0
	li 3,0
	neg 4,3
	isel 3,3,4,30
	blr
.L2017:
	isel 0,0,12,20
	b .L2000
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-__divsi3
	.align 2
	.p2align 4,,15
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	cmpdi 0,3,0
	li 5,0
	bge 0,.L2022
	neg 3,3
	li 5,1
.L2022:
	sradi 7,4,63
	li 9,16
	mtctr 9
	xor 4,7,4
	subf 0,7,4
	mr 8,3
	cmplw 1,3,0
	li 10,1
	mr 11,0
	bgt 1,.L2023
	b .L2049
	.p2align 4,,15
.L2027:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,8,11
	cmpwi 7,11,0
	ble 6,.L2025
	blt 7,.L2046
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,8,11
	ble 6,.L2025
	bdz .L2026
.L2023:
	cmpwi 5,11,0
	bge 5,.L2027
.L2046:
	cmplw 6,8,11
.L2028:
	li 3,1
	.p2align 4,,15
.L2029:
	srwi 10,10,1
	isel 12,0,3,24
	cmpwi 1,10,0
	cmpwi 5,12,0
	subf 7,11,8
	srwi 11,11,1
	isel 8,8,7,22
	cmplw 6,8,11
	bne 1,.L2029
.L2026:
	cmpwi 7,5,0
	rldicl 4,8,0,32
	neg 5,4
	isel 3,4,5,30
	blr
	.p2align 4,,15
.L2025:
	cmpwi 0,10,0
	bne 0,.L2028
	b .L2026
	.p2align 4,,15
.L2049:
	subf 6,0,3
	isel 8,3,6,4
	b .L2026
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-__modsi3
	.align 2
	.p2align 4,,15
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	cmplw 0,4,3
	bge 0,.L2222
	andi. 9,4,0x8000
	bne 0,.L2057
	rldic 9,4,1,48
	cmplw 7,3,9
	ble 7,.L2130
	andi. 10,9,0x8000
	bne 0,.L2130
	rldic 9,4,2,48
	cmplw 7,3,9
	ble 7,.L2132
	andi. 10,9,0x8000
	bne 0,.L2132
	rldic 9,4,3,48
	cmplw 7,3,9
	ble 7,.L2134
	andi. 10,9,0x8000
	bne 0,.L2134
	rldic 9,4,4,48
	cmplw 7,3,9
	ble 7,.L2136
	andi. 10,9,0x8000
	bne 0,.L2136
	rldic 9,4,5,48
	cmplw 7,3,9
	ble 7,.L2138
	andi. 10,9,0x8000
	bne 0,.L2138
	rldic 9,4,6,48
	cmplw 7,3,9
	ble 7,.L2140
	andi. 10,9,0x8000
	bne 0,.L2140
	rldic 9,4,7,48
	cmplw 7,3,9
	ble 7,.L2142
	andi. 10,9,0x8000
	bne 0,.L2142
	rldic 9,4,8,48
	cmplw 7,3,9
	ble 7,.L2144
	andi. 10,9,0x8000
	bne 0,.L2144
	rldic 9,4,9,48
	cmplw 7,3,9
	ble 7,.L2146
	andi. 10,9,0x8000
	bne 0,.L2146
	rldic 9,4,10,48
	cmplw 7,3,9
	ble 7,.L2148
	andi. 10,9,0x8000
	bne 0,.L2148
	rldic 9,4,11,48
	cmplw 7,3,9
	ble 7,.L2150
	andi. 10,9,0x8000
	bne 0,.L2150
	rldic 9,4,12,48
	cmplw 7,3,9
	ble 7,.L2152
	andi. 10,9,0x8000
	bne 0,.L2152
	rldic 9,4,13,48
	cmplw 7,3,9
	ble 7,.L2154
	andi. 10,9,0x8000
	bne 0,.L2154
	rldic 9,4,14,48
	cmplw 7,3,9
	ble 7,.L2156
	andi. 10,9,0x8000
	bne 0,.L2156
	rldic 7,4,15,48
	cmplw 6,3,7
	ble 6,.L2157
	cmpdi 1,7,0
	li 12,0
	bne 1,.L2223
.L2060:
	cmpdi 6,5,0
	beq 6,.L2119
	mr 12,3
.L2119:
	rlwinm 3,12,0,0xffff
	blr
.L2130:
	li 8,2
	.p2align 4,,15
.L2059:
	subf 0,9,3
	li 6,0
	rlwinm 4,0,0,0xffff
	isel 3,3,4,28
	blt 7,.L2128
	mr 6,8
.L2128:
	srdi 7,9,1
	rldicl 12,8,63,49
	cmplw 5,3,7
	subf 11,7,3
	rlwinm 0,11,0,0xffff
	li 4,0
	isel 3,3,0,20
	blt 5,.L2064
	mr 4,12
.L2064:
	srwi 11,8,2
	or 10,4,6
	cmpwi 7,11,0
	mr 12,10
	srdi 7,9,2
	beq 7,.L2060
	cmplw 0,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	isel 0,0,6,0
	rlwinm 7,12,0,0xffff
	cmpwi 6,0,0
	isel 3,3,7,26
	beq 6,.L2068
	mr 4,11
.L2068:
	srwi 11,8,3
	or 10,10,4
	cmpwi 1,11,0
	mr 12,10
	srdi 0,9,3
	beq 1,.L2060
	cmplw 5,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,20
	rlwinm 7,12,0,0xffff
	cmpwi 7,0,0
	isel 3,3,7,30
	beq 7,.L2072
	mr 4,11
.L2072:
	srwi 11,8,4
	or 10,10,4
	cmpwi 0,11,0
	mr 12,10
	srdi 0,9,4
	beq 0,.L2060
	cmplw 6,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,24
	rlwinm 7,12,0,0xffff
	cmpwi 1,0,0
	isel 3,3,7,6
	beq 1,.L2076
	mr 4,11
.L2076:
	srwi 11,8,5
	or 10,10,4
	cmpwi 5,11,0
	mr 12,10
	srdi 0,9,5
	beq 5,.L2060
	cmplw 7,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,28
	rlwinm 7,12,0,0xffff
	cmpwi 0,0,0
	isel 3,3,7,2
	beq 0,.L2080
	mr 4,11
.L2080:
	srwi 11,8,6
	or 10,10,4
	cmpwi 6,11,0
	mr 12,10
	srdi 0,9,6
	beq 6,.L2060
	cmplw 1,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,4
	rlwinm 7,12,0,0xffff
	cmpwi 5,0,0
	isel 3,3,7,22
	beq 5,.L2084
	mr 4,11
.L2084:
	srwi 11,8,7
	or 10,10,4
	cmpwi 7,11,0
	mr 12,10
	srdi 0,9,7
	beq 7,.L2060
	cmplw 0,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,0
	rlwinm 7,12,0,0xffff
	cmpwi 6,0,0
	isel 3,3,7,26
	beq 6,.L2088
	mr 4,11
.L2088:
	srwi 11,8,8
	or 10,10,4
	cmpwi 1,11,0
	mr 12,10
	srdi 0,9,8
	beq 1,.L2060
	cmplw 5,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,20
	rlwinm 7,12,0,0xffff
	cmpwi 7,0,0
	isel 3,3,7,30
	beq 7,.L2092
	mr 4,11
.L2092:
	srwi 11,8,9
	or 10,10,4
	cmpwi 0,11,0
	mr 12,10
	srdi 0,9,9
	beq 0,.L2060
	cmplw 6,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,24
	rlwinm 7,12,0,0xffff
	cmpwi 1,0,0
	isel 3,3,7,6
	beq 1,.L2096
	mr 4,11
.L2096:
	srwi 11,8,10
	or 10,10,4
	cmpwi 5,11,0
	mr 12,10
	srdi 0,9,10
	beq 5,.L2060
	cmplw 7,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,28
	rlwinm 7,12,0,0xffff
	cmpwi 0,0,0
	isel 3,3,7,2
	beq 0,.L2100
	mr 4,11
.L2100:
	srwi 11,8,11
	or 10,10,4
	cmpwi 6,11,0
	mr 12,10
	srdi 0,9,11
	beq 6,.L2060
	cmplw 1,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,4
	rlwinm 7,12,0,0xffff
	cmpwi 5,0,0
	isel 3,3,7,22
	beq 5,.L2104
	mr 4,11
.L2104:
	srwi 11,8,12
	or 10,10,4
	cmpwi 7,11,0
	mr 12,10
	srdi 0,9,12
	beq 7,.L2060
	cmplw 0,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,0
	rlwinm 7,12,0,0xffff
	cmpwi 6,0,0
	isel 3,3,7,26
	beq 6,.L2108
	mr 4,11
.L2108:
	srwi 11,8,13
	or 10,10,4
	cmpwi 1,11,0
	mr 12,10
	srdi 0,9,13
	beq 1,.L2060
	cmplw 5,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,20
	rlwinm 7,12,0,0xffff
	cmpwi 7,0,0
	isel 3,3,7,30
	beq 7,.L2112
	mr 4,11
.L2112:
	srwi 11,8,14
	or 10,10,4
	cmpwi 0,11,0
	mr 12,10
	srdi 0,9,14
	beq 0,.L2060
	cmplw 6,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,24
	rlwinm 7,12,0,0xffff
	cmpwi 1,0,0
	isel 3,3,7,6
	beq 1,.L2116
	mr 4,11
.L2116:
	cmpwi 5,8,16384
	or 8,10,4
	srdi 9,9,15
	mr 12,8
	beq 5,.L2060
	cmplw 7,3,9
	li 10,1
	subf 11,9,3
	isel 6,0,10,28
	rlwinm 0,11,0,0xffff
	cmpwi 0,6,0
	or 12,8,6
	isel 3,3,0,2
	b .L2060
.L2132:
	li 8,4
	b .L2059
.L2134:
	li 8,8
	b .L2059
.L2136:
	li 8,16
	b .L2059
.L2146:
	li 8,512
	b .L2059
.L2138:
	li 8,32
	b .L2059
.L2140:
	li 8,64
	b .L2059
.L2142:
	li 8,128
	b .L2059
.L2144:
	li 8,256
	b .L2059
.L2222:
	cmpd 1,4,3
	li 10,0
	li 6,1
	subf 9,4,3
	isel 12,6,10,6
	rlwinm 0,9,0,0xffff
	cmpwi 5,12,0
	isel 3,3,0,22
	b .L2060
.L2148:
	li 8,1024
	b .L2059
.L2150:
	li 8,2048
	b .L2059
.L2152:
	li 8,4096
	b .L2059
.L2154:
	li 8,8192
	b .L2059
.L2156:
	li 8,16384
	b .L2059
.L2223:
	li 10,-1
	li 8,0
	cmplwi 7,3,32768
	ori 8,8,0x8000
	rlwinm 9,10,0,16,16
	b .L2059
.L2157:
	li 11,-1
	li 8,0
	cmplwi 7,3,32768
	rlwinm 9,11,0,16,16
	ori 8,8,0x8000
	b .L2059
.L2057:
	subf 4,4,3
	li 12,1
	rlwinm 3,4,0,0xffff
	b .L2060
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.p2align 4,,15
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	cmpld 0,4,3
	li 10,64
	mtctr 10
	li 9,1
	blt 0,.L2225
	b .L2247
	.p2align 4,,15
.L2229:
	sldi 4,4,1
	sldi 9,9,1
	cmpld 7,3,4
	ble 7,.L2227
	bdz .L2228
.L2225:
	andis. 12,4,0x8000
	beq 0,.L2229
	cmpld 7,3,4
.L2230:
	li 12,0
	li 11,1
	li 6,0
	.p2align 4,,15
.L2231:
	isel 0,0,11,28
	subf 7,4,3
	cmpwi 6,0,0
	srdi 4,4,1
	isel 10,6,9,26
	isel 3,3,7,26
	srdi. 9,9,1
	cmpld 7,3,4
	or 12,12,10
	bne 0,.L2231
.L2228:
	cmpdi 1,5,0
	isel 3,12,3,6
	blr
	.p2align 4,,15
.L2227:
	cmpdi 5,9,0
	bne 5,.L2230
	b .L2228
	.p2align 4,,15
.L2247:
	isel 9,0,9,1
	subf 4,4,3
	rlwinm 8,9,0,0xff
	rlwinm 12,9,0,0xff
	cmpwi 1,8,0
	isel 3,3,4,6
	b .L2228
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.p2align 4,,15
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	andi. 9,4,0x20
	mr 10,3
	beq 0,.L2251
	addi 4,4,-32
	li 6,0
	slw 5,3,4
	rldicl 11,6,0,32
	sldi 7,5,32
	or 3,11,7
	blr
	.p2align 4,,15
.L2251:
	cmpdi 1,4,0
	beqlr 1
	subfic 8,4,32
	sradi 9,3,32
	srw 0,3,8
	slw 3,9,4
	or 5,0,3
	slw 6,10,4
	sldi 7,5,32
	rldicl 11,6,0,32
	or 3,11,7
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.p2align 4,,15
	.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L2257
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L2257:
	cmpdi 1,5,0
	beqlr 1
	subfic 10,5,64
	sld 4,4,5
	srd 0,3,10
	sld 9,3,5
	or 4,0,4
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-__ashlti3
	.align 2
	.p2align 4,,15
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	andi. 10,4,0x20
	mr 9,3
	beq 0,.L2262
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2262:
	cmpdi 1,4,0
	beqlr 1
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
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.p2align 4,,15
	.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L2268
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2268:
	cmpdi 1,5,0
	beqlr 1
	subfic 10,5,64
	srd 3,3,5
	sld 0,4,10
	srad 9,4,5
	or 3,0,3
	mr 4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-__ashrti3
	.align 2
	.p2align 4,,15
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
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
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.p2align 4,,15
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
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
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.p2align 4,,15
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	cmplwi 0,3,65535
	li 8,1
	li 7,0
	isel 0,0,8,1
	slwi 4,0,4
	subfic 9,4,16
	srw 3,3,9
	rlwinm 10,3,0,16,23
	cntlzw 5,10
	srwi 6,5,5
	slwi 11,6,3
	subfic 12,11,8
	add 8,11,4
	srw 0,3,12
	rlwinm 4,0,0,24,27
	cntlzw 9,4
	srwi 3,9,5
	slwi 10,3,2
	subfic 5,10,4
	add 11,10,8
	srw 12,0,5
	rlwinm 6,12,0,28,29
	cntlzw 8,6
	srwi 0,8,5
	slwi 4,0,1
	subfic 9,4,2
	add 3,4,11
	srw 10,12,9
	andi. 8,10,0x2
	subfic 5,10,2
	isel 7,5,7,2
	add 11,7,3
	extsw 3,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.p2align 4,,15
	.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	cmpdi 0,4,0
	subfic 9,4,0
	li 10,0
	subfe 9,9,9
	isel 0,3,10,2
	and 3,9,4
	cntlzd 4,4
	or 5,3,0
	cntlzd 6,5
	srdi 7,4,6
	sldi 8,7,6
	add 3,8,6
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-__clzti2
	.align 2
	.p2align 4,,15
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt 0,.L2278
	li 0,2
	bgt 0,.L2277
	cmplw 1,3,4
	li 0,0
	blt 1,.L2277
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2277:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2278:
	li 0,0
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE141:
	.size	__cmpdi2,.-__cmpdi2
	.align 2
	.p2align 4,,15
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt 0,.L2284
	li 5,1
	bgt 0,.L2283
	cmplw 7,3,4
	cmplw 1,3,4
	li 0,0
	li 4,-1
	isel 3,5,0,29
	isel 5,4,3,4
.L2283:
	extsw 3,5
	blr
	.p2align 4,,15
.L2284:
	li 5,-1
	extsw 3,5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.p2align 4,,15
	.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	cmpd 0,4,6
	li 0,0
	blt 0,.L2288
	li 0,2
	bgt 0,.L2288
	cmpld 1,3,5
	li 0,0
	blt 1,.L2288
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2288:
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-__cmpti2
	.align 2
	.p2align 4,,15
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	rlwinm 8,3,0,16,31
	cntlzw 0,8
	srwi 4,0,5
	slwi 5,4,4
	srw 9,3,5
	rlwinm 10,9,0,24,31
	cntlzw 3,10
	srwi 6,3,5
	slwi 7,6,3
	srw 11,9,7
	add 12,7,5
	rlwinm 8,11,0,28,31
	cntlzw 0,8
	srwi 4,0,5
	slwi 5,4,2
	srw 9,11,5
	add 3,5,12
	rlwinm 10,9,0,30,31
	cntlzw 6,10
	srwi 7,6,5
	slwi 11,7,1
	srw 12,9,11
	add 8,11,3
	rlwinm 0,12,0,30,31
	not 4,0
	srwi 5,0,1
	rlwinm 3,4,0,31,31
	subfic 9,5,2
	neg 10,3
	and 6,10,9
	add 7,6,8
	extsw 3,7
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE144:
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.p2align 4,,15
	.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	cmpdi 0,3,0
	subfic 9,3,0
	li 10,0
	subfe 9,9,9
	and 0,9,3
	isel 4,4,10,2
	or 5,4,0
	cntlzd 3,3
	addi 6,5,-1
	andc 7,6,5
	srdi 8,3,6
	popcntd 11,7
	sldi 12,8,6
	add 3,12,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-__ctzti2
	.align 2
	.p2align 4,,15
	.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	mr. 9,3
	bne 0,.L2296
	cmpdi 1,4,0
	bne 1,.L2300
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2296:
	addi 3,9,-1
	andc 0,3,9
	popcntd 4,0
	addi 3,4,1
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2300:
	addi 5,4,-1
	andc 6,5,4
	popcntd 7,6
	addi 3,7,65
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-__ffsti2
	.align 2
	.p2align 4,,15
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	andi. 10,4,0x20
	mr 9,3
	beq 0,.L2302
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2302:
	cmpdi 1,4,0
	beqlr 1
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
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.p2align 4,,15
	.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L2308
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2308:
	cmpdi 1,5,0
	beqlr 1
	subfic 10,5,64
	srd 3,3,5
	sld 0,4,10
	srd 9,4,5
	or 3,0,3
	mr 4,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-__lshrti3
	.align 2
	.p2align 4,,15
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,10,9
	srwi 3,3,16
	mullw 0,9,3
	srwi 4,4,16
	mullw 5,10,4
	mullw 6,3,4
	srwi 7,8,16
	add 11,0,7
	rlwinm 12,11,0,0xffff
	srwi 9,11,16
	add 10,5,12
	add 3,9,6
	srwi 0,10,16
	rlwimi 8,10,16,0,31-16
	add 4,3,0
	rldicl 8,8,0,32
	sldi 5,4,32
	or 3,8,5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE149:
	.size	__muldsi3,.-__muldsi3
	.align 2
	.p2align 4,,15
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	rlwinm 7,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,7,9
	srwi 10,3,16
	mullw 0,9,10
	srwi 6,4,16
	mullw 12,7,6
	sradi 7,4,32
	mullw 6,10,6
	sradi 5,3,32
	srwi 11,8,16
	mullw 10,3,7
	add 3,0,11
	mullw 4,4,5
	rlwinm 0,3,0,0xffff
	srwi 9,3,16
	add 12,12,0
	add 7,9,6
	srwi 6,12,16
	rlwimi 8,12,16,0,31-16
	add 5,7,6
	rldicl 8,8,0,32
	sldi 11,5,32
	or 3,8,11
	sradi 0,3,32
	add 10,10,0
	add 4,10,4
	rldimi 3,4,32,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.p2align 4,,15
	.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	rldicl 9,4,0,32
	rldicl 8,3,0,32
	srdi 10,3,32
	mulld 3,8,9
	mulld 0,9,10
	srdi 4,4,32
	mulld 5,8,4
	mulld 6,10,4
	srdi 7,3,32
	add 11,0,7
	rldicl 12,11,0,32
	srdi 8,11,32
	add 9,5,12
	add 0,8,6
	srdi 10,9,32
	rldimi 3,9,32,0
	add 4,0,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE151:
	.size	__mulddi3,.-__mulddi3
	.align 2
	.p2align 4,,15
	.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	rldicl 9,5,0,32
	rldicl 8,3,0,32
	srdi 7,3,32
	mr 10,3
	mulld 3,8,9
	mulld 0,9,7
	srdi 11,5,32
	mulld 10,10,6
	mulld 12,8,11
	mulld 7,7,11
	mulld 4,5,4
	srdi 8,3,32
	add 9,0,8
	rldicl 6,9,0,32
	srdi 5,9,32
	add 0,12,6
	add 11,5,7
	srdi 12,0,32
	rldimi 3,0,32,0
	add 7,11,12
	add 8,10,7
	add 4,8,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE152:
	.size	__multi3,.-__multi3
	.align 2
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	srdi 10,3,32
	li 8,27030
	xor 0,10,3
	srwi 9,0,16
	xor 3,9,0
	srwi 4,3,8
	xor 5,4,3
	srwi 6,5,4
	xor 7,6,5
	rlwinm 11,7,0,28,31
	sraw 12,8,11
	rldicl 3,12,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE155:
	.size	__paritydi2,.-__paritydi2
	.align 2
	.p2align 4,,15
	.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	xor 4,3,4
	li 3,27030
	sradi 10,4,32
	xor 0,10,4
	srwi 9,0,16
	xor 5,9,0
	srwi 6,5,8
	xor 7,6,5
	srwi 8,7,4
	xor 11,8,7
	rlwinm 12,11,0,28,31
	sraw 4,3,12
	rldicl 3,4,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-__parityti2
	.align 2
	.p2align 4,,15
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	srwi 9,3,16
	li 8,27030
	xor 0,9,3
	srwi 10,0,8
	xor 3,10,0
	srwi 4,3,4
	xor 5,4,3
	rlwinm 6,5,0,28,31
	sraw 7,8,6
	rldicl 3,7,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE157:
	.size	__paritysi2,.-__paritysi2
	.align 2
	.p2align 4,,15
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	lis 10,0x5555
	srdi 9,3,1
	ori 0,10,0x5555
	lis 5,0x3333
	rldimi 0,0,32,0
	ori 6,5,0x3333
	and 4,9,0
	rldimi 6,6,32,0
	subf 3,4,3
	lis 10,0xf0f
	srdi 8,3,2
	and 11,3,6
	and 7,8,6
	ori 4,10,0xf0f
	add 12,7,11
	rldimi 4,4,32,0
	srdi 0,12,4
	add 9,0,12
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
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.p2align 4,,15
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	lis 9,0x5555
	srwi 0,3,1
	ori 10,9,0x5555
	lis 8,0x3333
	and 4,0,10
	ori 5,8,0x3333
	subf 3,4,3
	lis 6,0xf0f
	srwi 7,3,2
	and 11,3,5
	and 12,7,5
	ori 0,6,0xf0f
	add 10,12,11
	srwi 9,10,4
	add 8,9,10
	and 4,8,0
	srwi 5,4,16
	add 6,5,4
	srwi 3,6,8
	add 7,3,6
	rldicl 3,7,0,58
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE159:
	.size	__popcountsi2,.-__popcountsi2
	.align 2
	.p2align 4,,15
	.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	std 30,-16(1)
	.cfi_offset 30, -16
	lis 30,0x5555
	std 31,-8(1)
	sldi 5,4,63
	srdi 6,3,1
	ori 8,30,0x5555
	std 28,-32(1)
	std 29,-24(1)
	.cfi_offset 31, -8
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	lis 31,0x5555
	or 0,5,6
	rldimi 8,8,32,0
	ori 9,31,0x5555
	and 10,8,0
	srdi 7,4,1
	rldimi 9,9,32,0
	subfc 6,10,3
	and 11,9,7
	lis 28,0x3333
	subfe 30,11,4
	srdi 8,6,2
	sldi 31,30,62
	ori 12,28,0x3333
	lis 29,0x3333
	or 7,31,8
	rldimi 12,12,32,0
	ori 0,29,0x3333
	and 10,6,12
	rldimi 0,0,32,0
	srdi 9,30,2
	and 12,7,12
	and 29,9,0
	and 11,30,0
	addc 0,12,10
	lis 4,0xf0f
	adde 30,29,11
	srdi 6,0,4
	rldimi 6,30,60,0
	lis 3,0xf0f
	ori 28,4,0xf0f
	ori 5,3,0xf0f
	srdi 4,30,4
	addc 3,6,0
	adde 31,4,30
	rldimi 28,28,32,0
	ld 30,-16(1)
	rldimi 5,5,32,0
	and 28,3,28
	and 5,31,5
	ld 31,-8(1)
	add 8,5,28
	ld 28,-32(1)
	srdi 7,8,32
	add 10,7,8
	srwi 9,10,16
	add 11,9,10
	srwi 12,11,8
	add 29,12,11
	rlwinm 3,29,0,0xff
	ld 29,-24(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.long 0
	.byte 0,0,0,0,0,4,0,0
	.cfi_endproc
.LFE160:
	.size	__popcountti2,.-__popcountti2
	.align 2
	.p2align 4,,15
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
.LCF161:
0:	addis 2,12,.TOC.-.LCF161@ha
	addi 2,2,.TOC.-.LCF161@l
	.localentry	__powidf2,.-__powidf2
	addis 9,2,.LC34@toc@ha
	fmr 0,1
	mr 3,4
	lfd 12,.LC34@toc@l(9)
	andi. 9,4,0x1
	fmr 1,12
	beq 0,.L2326
	.p2align 4,,15
.L2328:
	fmul 1,1,0
.L2326:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2327
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2328
.L2332:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2328
	b .L2332
	.p2align 4,,15
.L2327:
	cmpwi 1,4,0
	bgelr 1
	fdiv 1,12,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-__powidf2
	.align 2
	.p2align 4,,15
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
.LCF162:
0:	addis 2,12,.TOC.-.LCF162@ha
	addi 2,2,.TOC.-.LCF162@l
	.localentry	__powisf2,.-__powisf2
	addis 9,2,.LC35@toc@ha
	fmr 0,1
	mr 3,4
	lfs 12,.LC35@toc@l(9)
	andi. 9,4,0x1
	fmr 1,12
	beq 0,.L2334
	.p2align 4,,15
.L2336:
	fmuls 1,1,0
.L2334:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2335
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2336
.L2340:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2336
	b .L2340
	.p2align 4,,15
.L2335:
	cmpwi 1,4,0
	bgelr 1
	fdivs 1,12,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-__powisf2
	.align 2
	.p2align 4,,15
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L2343
	li 0,2
	bgt 0,.L2342
	cmplw 1,3,4
	li 0,0
	blt 1,.L2342
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2342:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2343:
	li 0,0
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2,.-__ucmpdi2
	.align 2
	.p2align 4,,15
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L2349
	li 5,1
	bgt 0,.L2348
	cmplw 7,3,4
	cmplw 1,3,4
	li 0,0
	li 4,-1
	isel 3,5,0,29
	isel 5,4,3,4
.L2348:
	extsw 3,5
	blr
	.p2align 4,,15
.L2349:
	li 5,-1
	extsw 3,5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.align 2
	.p2align 4,,15
	.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	cmpld 0,4,6
	li 0,0
	blt 0,.L2353
	li 0,2
	bgt 0,.L2353
	cmpld 1,3,5
	li 0,0
	blt 1,.L2353
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2353:
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC1:
	.byte	22
	.byte	23
	.byte	20
	.byte	21
	.byte	18
	.byte	19
	.byte	16
	.byte	17
	.byte	30
	.byte	31
	.byte	28
	.byte	29
	.byte	26
	.byte	27
	.byte	24
	.byte	25
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
	.set	.LC18,.LC26+4
	.section	.rodata.cst4
	.align 2
.LC19:
	.long	1056964608
	.set	.LC22,.LC26
	.set	.LC23,.LC27
	.section	.rodata.cst16
	.align 4
.LC26:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC27:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC30:
	.long	0
	.long	-1074790400
	.align 3
.LC32:
	.long	0
	.long	-1075838976
	.align 3
.LC34:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC35:
	.long	1065353216
	.align 2
.LC40:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC42:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC43:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC44:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC45:
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
