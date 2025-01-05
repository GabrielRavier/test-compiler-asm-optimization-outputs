	.file	"mini-libc.c"
	.machine power7
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
	add 4,4,5
	add 9,3,5
	beqlr 6
	andi. 10,5,0x1
	addi 8,5,-1
	beq 0,.L69
	lbzu 6,-1(4)
	cmpdi 7,8,0
	stbu 6,-1(9)
	beqlr 7
.L69:
	srdi 10,5,1
	mtctr 10
	cmpdi 1,10,2
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
	blr
	.p2align 4,,15
.L5:
	beqlr 0
	cmpdi 1,5,0
	beqlr 1
	addi 7,5,-1
	cmpldi 5,7,29
	mr 9,7
	ble 5,.L8
	addi 6,4,1
	subf 10,6,3
	cmpldi 6,10,14
	ble 6,.L8
	neg 0,3
	andi. 9,0,0xf
	beq 0,.L30
	andi. 8,0,0xe
	lbz 8,0(4)
	addi 11,3,1
	stb 8,0(3)
	beq 0,.L9
	cmpldi 7,9,2
	lbz 12,1(4)
	addi 6,4,2
	addi 11,3,2
	addi 7,5,-2
	stb 12,1(3)
	ble 7,.L9
	andi. 8,0,0xc
	lbz 10,2(4)
	addi 6,4,3
	addi 11,3,3
	addi 7,5,-3
	stb 10,2(3)
	beq 0,.L9
	cmpldi 1,9,4
	lbz 8,3(4)
	addi 6,4,4
	addi 11,3,4
	addi 7,5,-4
	stb 8,3(3)
	ble 1,.L9
	cmpldi 5,9,5
	lbz 12,4(4)
	addi 6,4,5
	addi 11,3,5
	addi 7,5,-5
	stb 12,4(3)
	beq 5,.L9
	cmpldi 6,9,6
	lbz 10,5(4)
	addi 6,4,6
	addi 11,3,6
	addi 7,5,-6
	stb 10,5(3)
	beq 6,.L9
	andi. 10,0,0x8
	lbz 0,6(4)
	addi 6,4,7
	addi 11,3,7
	addi 7,5,-7
	stb 0,6(3)
	beq 0,.L9
	cmpldi 7,9,8
	lbz 8,7(4)
	addi 6,4,8
	addi 11,3,8
	addi 7,5,-8
	stb 8,7(3)
	ble 7,.L9
	cmpldi 1,9,9
	lbz 12,8(4)
	addi 6,4,9
	addi 11,3,9
	addi 7,5,-9
	stb 12,8(3)
	beq 1,.L9
	cmpldi 5,9,10
	lbz 10,9(4)
	addi 6,4,10
	addi 11,3,10
	addi 7,5,-10
	stb 10,9(3)
	beq 5,.L9
	cmpldi 6,9,11
	lbz 0,10(4)
	addi 6,4,11
	addi 11,3,11
	addi 7,5,-11
	stb 0,10(3)
	beq 6,.L9
	cmpldi 0,9,12
	lbz 8,11(4)
	addi 6,4,12
	addi 11,3,12
	addi 7,5,-12
	stb 8,11(3)
	beq 0,.L9
	cmpldi 7,9,13
	lbz 12,12(4)
	addi 6,4,13
	addi 11,3,13
	addi 7,5,-13
	stb 12,12(3)
	beq 7,.L9
	cmpldi 1,9,15
	lbz 10,13(4)
	addi 6,4,14
	addi 11,3,14
	addi 7,5,-14
	stb 10,13(3)
	bne 1,.L9
	lbz 0,14(4)
	addi 6,4,15
	addi 11,3,15
	addi 7,5,-15
	stb 0,14(3)
	.p2align 4,,15
.L9:
	subf 5,9,5
	add 8,4,9
	lvx 0,4,9
	srdi 10,5,4
	neg 8,8
	andi. 0,10,0x1
	addi 0,9,15
	lvsl 13,0,8
	addi 12,10,-1
	add 4,4,0
	add 9,3,9
	li 8,0
	bne 0,.L112
.L75:
	srdi 10,10,1
	mtctr 10
.L25:
	lvx 1,4,8
	addi 0,8,16
	vperm 0,1,0,13
	stvx 0,9,8
	addi 8,8,32
	lvx 0,4,0
	vperm 1,0,1,13
	stvx 1,9,0
	bdnz .L25
.L100:
	andi. 9,5,0xf
	rldicr 5,5,0,59
	subf 12,5,7
	add 4,6,5
	add 8,11,5
	beqlr 0
	cmpldi 6,12,1
	lbzx 6,6,5
	stbx 6,11,5
	beqlr 6
	cmpldi 7,12,2
	lbz 11,1(4)
	stb 11,1(8)
	beqlr 7
	cmpldi 1,12,3
	lbz 7,2(4)
	stb 7,2(8)
	beqlr 1
	cmpldi 5,12,4
	lbz 9,3(4)
	stb 9,3(8)
	beqlr 5
	cmpldi 0,12,5
	lbz 10,4(4)
	stb 10,4(8)
	beqlr 0
	cmpldi 6,12,6
	lbz 0,5(4)
	stb 0,5(8)
	beqlr 6
	cmpldi 7,12,7
	lbz 5,6(4)
	stb 5,6(8)
	beqlr 7
	cmpldi 1,12,8
	lbz 6,7(4)
	stb 6,7(8)
	beqlr 1
	cmpldi 5,12,9
	lbz 11,8(4)
	stb 11,8(8)
	beqlr 5
	cmpldi 0,12,10
	lbz 7,9(4)
	stb 7,9(8)
	beqlr 0
	cmpldi 6,12,11
	lbz 9,10(4)
	stb 9,10(8)
	beqlr 6
	cmpldi 7,12,12
	lbz 10,11(4)
	stb 10,11(8)
	beqlr 7
	cmpldi 1,12,13
	lbz 0,12(4)
	stb 0,12(8)
	beqlr 1
	cmpldi 5,12,14
	lbz 12,13(4)
	stb 12,13(8)
	beqlr 5
	lbz 4,14(4)
	stb 4,14(8)
	blr
	.p2align 4,,15
.L107:
	lbz 5,-1(4)
	mr 11,4
	mr 10,9
	addi 4,4,-2
	addi 9,9,-2
	stb 5,1(9)
	lbz 7,-2(11)
	stb 7,-2(10)
	bdz .L6
	lbz 5,-1(4)
	mr 11,4
	mr 10,9
	addi 4,4,-2
	addi 9,9,-2
	stb 5,1(9)
	lbz 7,-2(11)
	stb 7,-2(10)
	bdnz .L107
	blr
	.p2align 4,,15
.L112:
	vor 1,0,0
	lvx 0,0,4
	cmpdi 5,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,9
	bne 5,.L75
	b .L100
	.p2align 4,,15
.L8:
	andi. 10,9,0x1
	addi 5,4,-1
	addi 8,3,-1
	bne 0,.L113
.L72:
	srdi 11,9,1
	addi 7,11,1
	mtctr 7
	b .L28
	.p2align 4,,15
.L114:
	lbz 0,1(9)
	addi 8,8,2
	stb 0,1(12)
.L28:
	lbz 10,1(5)
	addi 9,5,1
	addi 12,8,1
	addi 5,5,2
	stb 10,1(8)
	bdnz .L114
	blr
.L113:
	lbz 6,0(4)
	mr 5,4
	mr 8,3
	stb 6,0(3)
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
	beq 0,.L116
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne 0,.L137
.L126:
	srdi 0,6,1
	mtctr 0
	b .L117
	.p2align 4,,15
.L119:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq 7,.L134
	addi 3,3,1
	bdz .L116
.L117:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne 6,.L119
.L134:
	addi 3,3,1
	blr
	.p2align 4,,15
.L137:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq 1,.L134
	cmpdi 5,8,0
	addi 3,3,1
	bne 5,.L126
.L116:
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
	beq 0,.L142
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L159
.L145:
	srdi 0,5,1
	mtctr 0
.L139:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr 7
	addi 3,3,1
	bdnz .L139
.L142:
	li 3,0
	blr
	.p2align 4,,15
.L159:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr 1
	cmpdi 5,9,0
	addi 3,3,1
	bne 5,.L145
	b .L142
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
	beq 0,.L165
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L182
.L168:
	srdi 0,5,1
	mtctr 0
	b .L161
	.p2align 4,,15
.L163:
	lbz 10,1(3)
	lbz 9,1(4)
	addi 3,7,1
	addi 4,5,1
	cmpw 7,10,9
	bne 7,.L177
	bdz .L165
.L161:
	lbz 10,0(3)
	lbz 9,0(4)
	addi 7,3,1
	addi 5,4,1
	cmpw 6,10,9
	beq 6,.L163
.L177:
	subf 3,9,10
	extsw 3,3
	blr
	.p2align 4,,15
.L182:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne 1,.L177
	cmpdi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne 5,.L168
.L165:
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
	beq 0,.L184
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L184:
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
	beq 0,.L194
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr 1
.L194:
	srdi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L202
	.p2align 4,,15
.L192:
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
	bdnz .L192
.L202:
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
	beq 0,.L206
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
.L206:
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
.L210:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne 1,.L210
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
.L221:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr 5
	cmpw 1,9,4
	bne 1,.L221
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
.L224:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr 0
	addi 3,3,1
	bne 7,.L224
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
	beq 0,.L229
	b .L228
	.p2align 4,,15
.L230:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne 5,.L228
.L229:
	cmpwi 1,9,0
	bne 1,.L230
.L228:
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
	beq 0,.L238
	mr 4,3
	.p2align 4,,15
.L237:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne 1,.L237
	subf 3,3,4
	blr
	.p2align 4,,15
.L238:
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
	beq 0,.L248
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	subf 6,3,0
	cmpwi 1,10,0
	addi 9,6,1
	mtctr 9
	bne 1,.L244
	b .L253
	.p2align 4,,15
.L255:
	bdz .L243
	bne 7,.L243
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq 6,.L254
	mr 4,8
.L244:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne 5,.L255
.L243:
	subf 3,7,10
	extsw 3,3
	blr
	.p2align 4,,15
.L248:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
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
	cmpdi 0,5,1
	blelr 0
	addi 9,5,-2
	cmpldi 1,9,13
	ble 1,.L258
	andi. 9,4,0xf
	bne 0,.L258
	srdi 8,5,4
	addis 10,2,.LC0@toc@ha
	lvx 13,0,3
	mtctr 8
	cmpdi 5,8,2
	neg 7,3
	addi 11,10,.LC0@toc@l
	srdi 6,5,1
	li 9,0
	lvsl 11,0,7
	lvx 12,0,11
	addi 7,3,15
	ble 5,.L276
	addi 10,8,-1
	mtctr 10
	vor 1,13,13
	lvx 13,7,9
	mr 10,9
	addi 9,9,16
	vor 0,1,1
	.p2align 4,,15
.L259:
	vperm 0,13,0,11
	vor 1,13,13
	lvx 13,7,9
	vperm 0,0,0,12
	stvx 0,4,10
	mr 10,9
	addi 9,9,16
	vor 0,1,1
	bdnz .L259
	vperm 0,13,1,11
	vperm 0,0,0,12
	stvx 0,4,10
.L277:
	sldi 0,8,3
	sldi 12,8,4
	cmpld 6,6,0
	subf 5,12,5
	add 10,4,12
	add 7,3,12
	beqlr 6
	cmpdi 7,5,3
	lhbrx 6,3,12
	sthx 6,4,12
	blelr 7
	addi 3,7,2
	cmpdi 1,5,5
	lhbrx 4,0,3
	sth 4,2(10)
	blelr 1
	addi 9,7,4
	cmpdi 0,5,7
	lhbrx 11,0,9
	sth 11,4(10)
	blelr 0
	addi 12,7,6
	cmpdi 5,5,9
	lhbrx 0,0,12
	sth 0,6(10)
	blelr 5
	addi 8,7,8
	cmpdi 6,5,11
	lhbrx 6,0,8
	sth 6,8(10)
	blelr 6
	cmpdi 7,5,13
	addi 5,7,10
	lhbrx 3,0,5
	sth 3,10(10)
	blelr 7
	addi 7,7,12
	lhbrx 4,0,7
	sth 4,12(10)
	blr
	.p2align 4,,15
.L276:
	vor 0,13,13
	lvx 13,7,9
	vperm 1,13,0,11
	vperm 0,1,1,12
	stvx 0,4,9
	addi 9,9,16
	bdz .L277
	vor 0,13,13
	lvx 13,7,9
	vperm 1,13,0,11
	vperm 0,1,1,12
	stvx 0,4,9
	addi 9,9,16
	bdnz .L276
	b .L277
	.p2align 4,,15
.L258:
	srdi 11,5,1
	andi. 9,11,0x1
	addi 10,11,-1
	beq 0,.L266
	cmpdi 1,10,0
	lbz 12,1(3)
	lbz 9,0(3)
	addi 4,4,2
	addi 3,3,2
	stb 12,-2(4)
	stb 9,-1(4)
	beqlr 1
.L266:
	srdi 9,11,1
	mtctr 9
	cmpdi 5,9,2
	ble 5,.L279
	addi 9,9,-1
	mtctr 9
	mr 10,3
	lbz 11,2(3)
	lbz 5,0(3)
	lbz 6,1(3)
	addi 3,3,4
	lbz 7,3(10)
	addi 8,4,2
.L261:
	mr 9,4
	mr 10,3
	stb 6,0(4)
	stb 5,1(4)
	addi 4,8,2
	stb 7,2(9)
	stb 11,1(8)
	lbz 11,2(3)
	lbz 5,0(3)
	lbz 6,1(3)
	addi 3,3,4
	lbz 7,3(10)
	addi 8,4,2
	bdnz .L261
	stb 6,0(4)
	stb 5,1(4)
	stb 7,2(4)
	stb 11,1(8)
.L256:
	blr
	.p2align 4,,15
.L279:
	mr 7,3
	lbz 0,1(3)
	lbz 6,0(3)
	lbz 5,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 8,3(7)
	stb 0,-4(4)
	stb 6,-3(4)
	stb 5,-1(4)
	stb 8,-2(4)
	bdz .L256
	mr 7,3
	lbz 0,1(3)
	lbz 6,0(3)
	lbz 5,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 8,3(7)
	stb 0,-4(4)
	stb 6,-3(4)
	stb 5,-1(4)
	stb 8,-2(4)
	bdnz .L279
	blr
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
	.size	isalpha,.-isalpha
	.align 2
	.p2align 4,,15
	.globl isascii
	.type	isascii, @function
isascii:
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
	.size	isascii,.-isascii
	.align 2
	.p2align 4,,15
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L286
	xori 3,3,0x9
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
	.p2align 4,,15
.L286:
	li 4,1
	rldicl 3,4,0,63
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
	ble 0,.L289
	xori 3,3,0x7f
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
	.p2align 4,,15
.L289:
	li 4,1
	rldicl 3,4,0,63
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
	.size	isdigit,.-isdigit
	.align 2
	.p2align 4,,15
	.globl isgraph
	.type	isgraph, @function
isgraph:
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
	.size	isgraph,.-isgraph
	.align 2
	.p2align 4,,15
	.globl islower
	.type	islower, @function
islower:
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
	.size	islower,.-islower
	.align 2
	.p2align 4,,15
	.globl isprint
	.type	isprint, @function
isprint:
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
	.size	isprint,.-isprint
	.align 2
	.p2align 4,,15
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L296
	addi 3,3,-9
	rldicl 0,3,0,32
	subfic 4,0,4
	srdi 5,4,63
	xori 6,5,0x1
	rldicl 3,6,0,63
	blr
	.p2align 4,,15
.L296:
	li 6,1
	rldicl 3,6,0,63
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
	.size	isupper,.-isupper
	.align 2
	.p2align 4,,15
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	cmplwi 0,3,31
	li 7,1
	ble 0,.L299
	addi 10,3,-127
	li 7,1
	cmplwi 1,10,32
	bgt 1,.L303
.L299:
	rldicl 3,7,0,63
	blr
	.p2align 4,,15
.L303:
	addi 0,3,-8232
	cmplwi 5,0,1
	ble 5,.L299
	addis 9,3,0xffff
	addi 3,9,7
	rldicl 4,3,0,32
	subfic 5,4,2
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
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
	.size	iswdigit,.-iswdigit
	.align 2
	.p2align 4,,15
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	cmplwi 0,3,254
	ble 0,.L312
	cmplwi 1,3,8231
	li 12,1
	ble 1,.L307
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble 5,.L307
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble 6,.L307
	lis 0,0x10
	addi 5,4,4
	ori 6,0,0x3
	li 12,0
	cmplw 7,5,6
	bgt 7,.L307
	rlwinm 9,3,0,16,30
	xori 3,9,0xfffe
	cntlzw 7,3
	srwi 11,7,5
	xori 12,11,0x1
.L307:
	rldicl 3,12,0,63
	blr
	.p2align 4,,15
.L312:
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
	ble 0,.L315
	ori 3,3,0x20
	addi 0,3,-97
	rldicl 4,0,0,32
	subfic 5,4,5
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
	blr
	.p2align 4,,15
.L315:
	li 7,1
	rldicl 3,7,0,63
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
.LCF31:
0:	addis 2,12,.TOC.-.LCF31@ha
	addi 2,2,.TOC.-.LCF31@l
	.localentry	fdim,.-fdim
	fcmpu 0,1,1
	bunlr 0
	fcmpu 1,2,2
	bun 1,.L321
	fcmpu 5,1,2
	bng 5,.L324
	fsub 1,1,2
	blr
	.p2align 4,,15
.L324:
	addis 9,2,.LC2@toc@ha
	lfd 1,.LC2@toc@l(9)
	blr
	.p2align 4,,15
.L321:
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
.LCF32:
0:	addis 2,12,.TOC.-.LCF32@ha
	addi 2,2,.TOC.-.LCF32@l
	.localentry	fdimf,.-fdimf
	fcmpu 0,1,1
	bunlr 0
	fcmpu 1,2,2
	bun 1,.L329
	fcmpu 5,1,2
	bng 5,.L332
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L332:
	addis 9,2,.LC3@toc@ha
	lfs 1,.LC3@toc@l(9)
	blr
	.p2align 4,,15
.L329:
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
	bun 0,.L338
	fcmpu 1,2,2
	bun 1,.L339
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L335
	cmpwi 7,0,0
	fmr 1,2
	bnelr 7
.L339:
	fmr 1,0
	blr
	.p2align 4,,15
.L335:
	fcmpu 6,1,2
	bnllr 6
.L338:
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
	bun 0,.L347
	fcmpu 1,2,2
	bun 1,.L348
	addi 9,1,-16
	addi 10,1,-16
	stfiwx 1,0,9
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,-16(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	beq 5,.L344
	cmpwi 7,3,0
	fmr 1,2
	bnelr 7
.L348:
	fmr 1,0
	blr
	.p2align 4,,15
.L344:
	fcmpu 6,1,2
	bnllr 6
.L347:
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
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L358
	fmr 11,3
	fcmpu 1,11,11
	bunlr 1
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L353
	cmpwi 7,0,0
	beqlr 7
.L358:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L353:
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bnllr 6
	fmr 1,3
	fmr 2,4
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
	bun 0,.L365
	fcmpu 1,2,2
	bunlr 1
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne 5,.L369
	fcmpu 6,1,2
	fmr 0,2
	bnl 6,.L364
	fmr 0,1
.L364:
	fmr 1,0
	blr
	.p2align 4,,15
.L369:
	cmpwi 7,0,0
	bnelr 7
.L365:
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
	bun 0,.L375
	fcmpu 1,2,2
	bunlr 1
	addi 9,1,-16
	addi 10,1,-16
	stfiwx 1,0,9
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,-16(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	bne 5,.L379
	fcmpu 6,1,2
	fmr 0,2
	bnl 6,.L374
	fmr 0,1
.L374:
	fmr 1,0
	blr
	.p2align 4,,15
.L379:
	cmpwi 7,3,0
	bnelr 7
.L375:
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
	fcmpu 0,0,0
	bun 0,.L385
	fmr 11,3
	fcmpu 1,11,11
	bunlr 1
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L382
	cmpwi 7,0,0
	bnelr 7
.L385:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L382:
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bltlr 6
	fmr 1,3
	fmr 2,4
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
	beq 0,.L391
	addis 7,2,.LANCHOR1@toc@ha
	mr 10,3
	addi 4,7,.LANCHOR1@toc@l
	.p2align 5
.L390:
	rldicl 8,9,0,58
	srwi 9,9,6
	cmpwi 1,9,0
	addi 10,10,1
	lbzx 0,4,8
	stb 0,-1(10)
	bne 1,.L390
	li 5,0
	stb 5,0(10)
	blr
	.p2align 4,,15
.L391:
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
	beq 0,.L401
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
.L401:
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
	beq 0,.L403
	ld 10,8(3)
	std 10,8(9)
.L403:
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
	beq 0,.L412
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	mr 29,7
	li 30,0
	std 31,104(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L414
	.p2align 4,,15
.L426:
	beq 7,.L425
.L414:
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
	bne 1,.L426
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L411:
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
.L425:
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
.L412:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq 5,.L411
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
	beq 0,.L428
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
	b .L430
	.p2align 4,,15
.L438:
	beq 7,.L437
.L430:
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
	bne 1,.L438
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
.L437:
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
.L428:
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
.L447:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L441
	ble 7,.L441
	cmpwi 1,9,43
	beq 1,.L442
	cmpwi 6,9,45
	bne 6,.L462
	lbz 9,1(3)
	addi 11,3,1
	addi 0,9,-48
	cmplwi 0,0,9
	bgt 0,.L452
	li 5,1
.L445:
	li 3,0
	.p2align 5
.L449:
	addi 7,9,-48
	mulli 12,3,10
	lbzu 9,1(11)
	addi 6,9,-48
	subf 3,7,12
	cmplwi 1,6,9
	ble 1,.L449
	cmpwi 5,5,0
	bne 5,.L448
	subf 3,12,7
.L448:
	extsw 3,3
	blr
	.p2align 4,,15
.L441:
	addi 3,3,1
	b .L447
	.p2align 4,,15
.L462:
	addi 4,9,-48
	mr 11,3
	cmplwi 7,4,9
	li 5,0
	ble 7,.L445
.L452:
	li 3,0
	b .L448
	.p2align 4,,15
.L442:
	lbz 9,1(3)
	addi 11,3,1
	li 5,0
	addi 8,9,-48
	cmplwi 5,8,9
	ble 5,.L445
	li 3,0
	b .L448
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
.L470:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L464
	ble 7,.L464
	cmpwi 1,9,43
	beq 1,.L465
	cmpwi 6,9,45
	bne 6,.L485
	lbz 9,1(3)
	addi 8,3,1
	addi 3,9,-48
	cmplwi 0,3,9
	bgt 0,.L475
	li 5,1
.L468:
	li 3,0
	.p2align 5
.L472:
	addi 6,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 11,6
	addi 12,9,-48
	subf 3,11,7
	cmplwi 1,12,9
	ble 1,.L472
	cmpwi 5,5,0
	bnelr 5
	subf 3,7,11
	blr
	.p2align 4,,15
.L464:
	addi 3,3,1
	b .L470
	.p2align 4,,15
.L485:
	addi 4,9,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	ble 7,.L468
.L475:
	li 3,0
	blr
	.p2align 4,,15
.L465:
	lbz 9,1(3)
	addi 8,3,1
	li 5,0
	addi 0,9,-48
	cmplwi 5,0,9
	ble 5,.L468
	b .L475
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
.L491:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L487
	ble 7,.L487
	cmpwi 1,9,43
	beq 1,.L488
	cmpwi 6,9,45
	beq 6,.L489
	addi 4,9,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	bgt 7,.L498
.L492:
	li 3,0
	.p2align 5
.L495:
	addi 6,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 11,6
	addi 12,9,-48
	subf 3,11,7
	cmplwi 1,12,9
	ble 1,.L495
	cmpwi 5,5,0
	bnelr 5
	subf 3,7,11
	blr
	.p2align 4,,15
.L487:
	addi 3,3,1
	b .L491
	.p2align 4,,15
.L489:
	lbz 9,1(3)
	addi 8,3,1
	li 5,1
	addi 3,9,-48
	cmplwi 0,3,9
	ble 0,.L492
.L498:
	li 3,0
	blr
	.p2align 4,,15
.L488:
	lbz 9,1(3)
	addi 8,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	bgt 5,.L498
	li 5,0
	b .L492
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
	beq 0,.L509
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
	b .L512
	.p2align 4,,15
.L521:
	beq 1,.L519
	cmpdi 5,31,0
	add 27,30,26
	beq 5,.L520
.L512:
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
	bge 1,.L521
	mr 31,29
	cmpdi 5,31,0
	bne 5,.L512
.L520:
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
.L509:
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
.L519:
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
	beq 0,.L527
	mflr 0
	.cfi_register 65, 0
	std 2,24(1)
	std 28,64(1)
	.cfi_offset 28, -32
	std 0,112(1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L532:
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
	beq 1,.L536
.L538:
	cmpwi 5,28,0
	ble 1,.L525
	add 27,30,26
	bne 7,.L532
.L537:
	ld 3,112(1)
	ld 28,64(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L527:
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
.L525:
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
	beq 5,.L537
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
	bne 1,.L538
.L536:
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
	beq 0,.L550
	.p2align 5
.L547:
	cmpw 1,9,4
	beqlr 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne 5,.L547
.L550:
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
	beq 0,.L557
	b .L556
	.p2align 4,,15
.L558:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne 0,.L556
.L557:
	cmpwi 7,9,0
	bne 7,.L558
.L556:
	li 5,-1
	blt 0,.L559
	extsw 0,9
	extsw 3,10
	subf 4,0,3
	srdi 5,4,63
.L559:
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
.L562:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L562
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
	beq 0,.L568
	mr 4,3
	.p2align 4,,15
.L567:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne 1,.L567
	subf 3,3,4
	sradi 3,3,2
	blr
	.p2align 4,,15
.L568:
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
	beq 0,.L580
	mtctr 5
	b .L571
	.p2align 4,,15
.L583:
	beq 7,.L573
	addi 3,3,4
	addi 4,4,4
	bdz .L580
.L571:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	cmpwi 7,9,0
	beq 1,.L583
.L573:
	lwz 0,0(3)
	lwz 4,0(4)
	cmpw 5,0,4
	bge 5,.L575
	li 3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L575:
	extsw 5,0
	extsw 6,4
	subf 7,5,6
	srdi 3,7,63
	extsw 3,3
	blr
	.p2align 4,,15
.L580:
	li 3,0
	extsw 3,3
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
	beq 0,.L588
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L605
.L591:
	srdi 0,5,1
	mtctr 0
.L585:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr 7
	addi 3,3,4
	bdnz .L585
.L588:
	li 3,0
	blr
	.p2align 4,,15
.L605:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr 1
	cmpdi 5,9,0
	addi 3,3,4
	bne 5,.L591
	b .L588
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
	beq 0,.L612
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L629
.L615:
	srdi 0,5,1
	mtctr 0
	b .L607
	.p2align 4,,15
.L609:
	lwz 9,4(3)
	lwz 10,4(4)
	addi 3,7,4
	addi 4,5,4
	cmpw 1,9,10
	bne 1,.L624
	bdz .L612
.L607:
	lwz 9,0(3)
	lwz 10,0(4)
	addi 7,3,4
	addi 5,4,4
	cmpw 1,9,10
	beq 1,.L609
.L624:
	blt 1,.L630
	extsw 4,9
	extsw 6,10
	subf 11,4,6
	srdi 3,11,63
	extsw 3,3
	blr
	.p2align 4,,15
.L629:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne 1,.L624
	cmpdi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne 5,.L615
.L612:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L630:
	li 3,-1
	extsw 3,3
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
	beq 0,.L632
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
.L632:
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
	blt 1,.L639
	cmpdi 5,5,0
	beqlr 5
	addi 7,5,-1
	cmpldi 6,7,10
	mr 0,7
	ble 6,.L643
	addi 6,4,4
	subf 8,6,3
	cmpldi 7,8,8
	ble 7,.L643
	srdi 11,3,2
	neg 12,11
	andi. 10,12,0x3
	beq 0,.L653
	andi. 9,12,0x2
	lwz 9,0(4)
	addi 11,3,4
	addi 7,5,-2
	stw 9,0(3)
	beq 0,.L644
	cmpldi 1,10,3
	lwz 7,4(4)
	stw 7,4(3)
	bne 1,.L698
	lwz 0,8(4)
	addi 6,4,12
	addi 11,3,12
	addi 7,5,-4
	stw 0,8(3)
.L644:
	subf 5,10,5
	sldi 12,10,2
	srdi 9,5,2
	add 8,4,12
	andi. 0,9,0x1
	neg 8,8
	lvx 0,4,12
	addi 0,12,15
	add 10,3,12
	lvsl 13,0,8
	addi 12,9,-1
	add 4,4,0
	li 8,0
	bne 0,.L699
.L673:
	srdi 9,9,1
	mtctr 9
.L648:
	lvx 1,4,8
	addi 0,8,16
	vperm 0,1,0,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,4,0
	vperm 1,0,1,13
	stvx 1,10,0
	bdnz .L648
.L685:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	sldi 12,5,2
	subf 4,5,7
	add 8,6,12
	add 10,11,12
	beqlr 0
	cmpdi 6,4,0
	lwzx 6,6,12
	stwx 6,11,12
	beqlr 6
	cmpldi 7,4,1
	lwz 11,4(8)
	stw 11,4(10)
	beqlr 7
	lwz 7,8(8)
	stw 7,8(10)
	blr
	.p2align 4,,15
.L639:
	cmpdi 1,5,0
	beqlr 1
	andi. 10,5,0x1
	add 4,4,9
	addi 7,5,-1
	add 9,3,9
	bne 0,.L700
.L667:
	srdi 10,5,1
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L692
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L642:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L642
.L658:
	blr
	.p2align 4,,15
.L692:
	lwz 5,-4(4)
	mr 8,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 5,4(9)
	lwz 0,-8(8)
	stw 0,-8(10)
	bdz .L658
	lwz 5,-4(4)
	mr 8,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 5,4(9)
	lwz 0,-8(8)
	stw 0,-8(10)
	bdnz .L692
	blr
	.p2align 4,,15
.L700:
	lwzu 12,-4(4)
	cmpdi 5,7,0
	stwu 12,-4(9)
	bne 5,.L667
	blr
	.p2align 4,,15
.L699:
	vor 1,0,0
	lvx 0,0,4
	cmpdi 5,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,10
	bne 5,.L673
	b .L685
	.p2align 4,,15
.L653:
	mr 6,4
	mr 11,3
	b .L644
	.p2align 4,,15
.L643:
	andi. 10,0,0x1
	addi 5,4,-4
	addi 12,3,-4
	bne 0,.L701
.L670:
	srdi 4,0,1
	addi 0,4,1
	mtctr 0
	b .L651
	.p2align 4,,15
.L702:
	lwz 11,4(10)
	addi 12,12,8
	stw 11,4(6)
.L651:
	lwz 8,4(5)
	addi 10,5,4
	addi 6,12,4
	addi 5,5,8
	stw 8,4(12)
	bdnz .L702
	blr
.L701:
	lwz 9,0(4)
	mr 5,4
	mr 12,3
	stw 9,0(3)
	b .L670
	.p2align 4,,15
.L698:
	addi 6,4,8
	addi 11,3,8
	addi 7,5,-3
	b .L644
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
	beqlr 0
	addi 7,5,-1
	srdi 10,3,2
	cmpldi 1,7,5
	neg 0,10
	rldicl 9,0,0,62
	ble 1,.L712
	cmpdi 5,9,0
	std 31,-8(1)
	.cfi_offset 31, -8
	mr 11,3
	beq 5,.L706
	andi. 10,0,0x2
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
	beq 0,.L706
	cmpldi 6,9,3
	stw 4,4(3)
	addi 11,3,8
	addi 7,5,-3
	bne 6,.L706
	stw 4,8(3)
	addi 11,3,12
	addi 7,5,-4
.L706:
	stw 4,-32(1)
	subf 5,9,5
	li 0,32
	addi 31,1,-64
	srdi 8,5,2
	andi. 6,8,0x3
	sldi 12,9,2
	add 9,3,12
	mr 10,8
	addi 12,8,-1
	lvewx 0,31,0
	vspltw 0,0,3
	beq 0,.L734
	cmpdi 7,6,1
	beq 7,.L738
	cmpdi 1,6,2
	beq 1,.L739
	stvx 0,0,9
	mr 8,12
	addi 9,9,16
.L739:
	stvx 0,0,9
	addi 8,8,-1
	addi 9,9,16
.L738:
	stvx 0,0,9
	cmpdi 5,8,1
	addi 9,9,16
	beq 5,.L752
.L734:
	srdi 10,10,2
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L757
	addi 10,10,-1
	mtctr 10
	addi 8,9,16
	addi 6,8,16
.L710:
	stvx 0,0,9
	mr 10,9
	stvx 0,0,8
	addi 9,9,64
	addi 10,10,48
	stvx 0,0,6
	addi 8,9,16
	stvx 0,0,10
	addi 6,8,16
	bdnz .L710
	stvx 0,0,9
	stvx 0,0,8
	addi 10,9,48
	stvx 0,0,6
	stvx 0,0,10
.L752:
	andi. 9,5,0x3
	beq 0,.L704
	rldicr 5,5,0,61
	subf 7,5,7
	sldi 9,5,2
	cmpdi 7,7,0
	add 11,11,9
	stw 4,0(11)
	beq 7,.L704
	cmpldi 1,7,1
	stw 4,4(11)
	beq 1,.L704
	cmpldi 5,7,2
	stw 4,8(11)
	beq 5,.L704
	cmpldi 6,7,3
	stw 4,12(11)
	beq 6,.L704
	cmpldi 0,7,4
	stw 4,16(11)
	beq 0,.L704
	stw 4,20(11)
.L704:
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L757:
	.cfi_restore_state
	stvx 0,0,9
	addi 12,9,16
	addi 10,9,48
	addi 6,9,32
	addi 9,9,64
	stvx 0,0,12
	stvx 0,0,6
	stvx 0,0,10
	bdz .L752
	stvx 0,0,9
	addi 12,9,16
	addi 10,9,48
	addi 6,9,32
	addi 9,9,64
	stvx 0,0,12
	stvx 0,0,6
	stvx 0,0,10
	bdnz .L757
	b .L752
.L712:
	.cfi_restore 31
	cmpdi 5,7,0
	stw 4,0(3)
	beqlr 5
	cmpldi 6,7,1
	stw 4,4(3)
	beqlr 6
	cmpldi 7,7,2
	stw 4,8(3)
	beqlr 7
	cmpldi 0,7,3
	stw 4,12(3)
	beqlr 0
	cmpldi 1,7,4
	stw 4,16(3)
	beqlr 1
	stw 4,20(3)
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
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
	bge 0,.L771
	cmpdi 6,5,0
	add 3,3,5
	add 4,4,5
	beqlr 6
	andi. 9,5,0x1
	addi 0,5,-1
	beq 0,.L835
	lbzu 8,-1(3)
	cmpdi 7,0,0
	stbu 8,-1(4)
	beqlr 7
.L835:
	srdi 9,5,1
	mtctr 9
	cmpdi 1,9,2
	ble 1,.L873
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L773:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L773
.L770:
	blr
	.p2align 4,,15
.L771:
	beqlr 0
	cmpdi 1,5,0
	beqlr 1
	addi 8,5,-1
	cmpldi 5,8,29
	mr 9,8
	ble 5,.L774
	addi 7,3,1
	subf 10,7,4
	cmpldi 6,10,14
	ble 6,.L774
	neg 0,4
	andi. 12,0,0xf
	beq 0,.L796
	andi. 6,0,0xe
	lbz 6,0(3)
	addi 11,4,1
	stb 6,0(4)
	beq 0,.L775
	cmpldi 7,12,2
	lbz 9,1(3)
	stb 9,1(4)
	ble 7,.L878
	andi. 8,0,0xc
	lbz 10,2(3)
	stb 10,2(4)
	beq 0,.L879
	cmpldi 1,12,4
	lbz 11,3(3)
	stb 11,3(4)
	ble 1,.L880
	cmpldi 5,12,5
	lbz 7,4(3)
	stb 7,4(4)
	beq 5,.L881
	cmpldi 6,12,6
	lbz 8,5(3)
	stb 8,5(4)
	beq 6,.L882
	andi. 9,0,0x8
	lbz 0,6(3)
	addi 7,3,7
	addi 11,4,7
	addi 8,5,-7
	stb 0,6(4)
	beq 0,.L775
	cmpldi 7,12,8
	lbz 6,7(3)
	addi 7,3,8
	addi 11,4,8
	addi 8,5,-8
	stb 6,7(4)
	ble 7,.L775
	cmpldi 1,12,9
	lbz 9,8(3)
	addi 7,3,9
	addi 11,4,9
	addi 8,5,-9
	stb 9,8(4)
	beq 1,.L775
	cmpldi 5,12,10
	lbz 10,9(3)
	addi 7,3,10
	addi 11,4,10
	addi 8,5,-10
	stb 10,9(4)
	beq 5,.L775
	cmpldi 6,12,11
	lbz 0,10(3)
	addi 7,3,11
	addi 11,4,11
	addi 8,5,-11
	stb 0,10(4)
	beq 6,.L775
	cmpldi 0,12,12
	lbz 6,11(3)
	addi 7,3,12
	addi 11,4,12
	addi 8,5,-12
	stb 6,11(4)
	beq 0,.L775
	cmpldi 7,12,13
	lbz 9,12(3)
	addi 7,3,13
	addi 11,4,13
	addi 8,5,-13
	stb 9,12(4)
	beq 7,.L775
	cmpldi 1,12,15
	lbz 10,13(3)
	addi 7,3,14
	addi 11,4,14
	addi 8,5,-14
	stb 10,13(4)
	bne 1,.L775
	lbz 0,14(3)
	addi 7,3,15
	addi 11,4,15
	addi 8,5,-15
	stb 0,14(4)
	.p2align 4,,15
.L775:
	subf 5,12,5
	add 6,3,12
	lvx 0,3,12
	srdi 9,5,4
	neg 10,6
	andi. 0,9,0x1
	addi 0,12,15
	add 4,4,12
	lvsl 13,0,10
	addi 12,9,-1
	add 3,3,0
	li 6,0
	bne 0,.L883
.L841:
	srdi 9,9,1
	mtctr 9
.L791:
	lvx 1,3,6
	addi 10,6,16
	vperm 0,1,0,13
	stvx 0,4,6
	addi 6,6,32
	lvx 0,3,10
	vperm 1,0,1,13
	stvx 1,4,10
	bdnz .L791
.L866:
	andi. 9,5,0xf
	rldicr 5,5,0,59
	subf 0,5,8
	add 4,11,5
	add 8,7,5
	beqlr 0
	cmpldi 6,0,1
	lbzx 7,7,5
	stbx 7,11,5
	beqlr 6
	cmpldi 7,0,2
	lbz 11,1(8)
	stb 11,1(4)
	beqlr 7
	cmpldi 1,0,3
	lbz 12,2(8)
	stb 12,2(4)
	beqlr 1
	cmpldi 5,0,4
	lbz 3,3(8)
	stb 3,3(4)
	beqlr 5
	cmpldi 0,0,5
	lbz 6,4(8)
	stb 6,4(4)
	beqlr 0
	cmpldi 6,0,6
	lbz 9,5(8)
	stb 9,5(4)
	beqlr 6
	cmpldi 7,0,7
	lbz 10,6(8)
	stb 10,6(4)
	beqlr 7
	cmpldi 1,0,8
	lbz 5,7(8)
	stb 5,7(4)
	beqlr 1
	cmpldi 5,0,9
	lbz 7,8(8)
	stb 7,8(4)
	beqlr 5
	cmpldi 0,0,10
	lbz 11,9(8)
	stb 11,9(4)
	beqlr 0
	cmpldi 6,0,11
	lbz 12,10(8)
	stb 12,10(4)
	beqlr 6
	cmpldi 7,0,12
	lbz 3,11(8)
	stb 3,11(4)
	beqlr 7
	cmpldi 1,0,13
	lbz 6,12(8)
	stb 6,12(4)
	beqlr 1
	cmpldi 5,0,14
	lbz 0,13(8)
	stb 0,13(4)
	beqlr 5
	lbz 8,14(8)
	stb 8,14(4)
	blr
	.p2align 4,,15
.L873:
	lbz 5,-1(3)
	mr 10,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 5,1(4)
	lbz 7,-2(10)
	stb 7,-2(9)
	bdz .L770
	lbz 5,-1(3)
	mr 10,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 5,1(4)
	lbz 7,-2(10)
	stb 7,-2(9)
	bdnz .L873
	blr
	.p2align 4,,15
.L883:
	vor 1,0,0
	lvx 0,0,3
	cmpdi 5,12,0
	li 6,16
	vperm 1,0,1,13
	stvx 1,0,4
	bne 5,.L841
	b .L866
	.p2align 4,,15
.L774:
	andi. 10,9,0x1
	addi 5,4,-1
	addi 10,3,-1
	bne 0,.L884
.L838:
	srdi 9,9,1
	addi 7,9,1
	mtctr 7
	b .L794
	.p2align 4,,15
.L885:
	lbz 6,1(12)
	addi 5,5,2
	stb 6,1(3)
.L794:
	lbz 11,1(10)
	addi 12,10,1
	addi 3,5,1
	addi 10,10,2
	stb 11,1(5)
	bdnz .L885
	blr
.L884:
	mr 5,4
	lbz 4,0(3)
	mr 10,3
	stb 4,0(5)
	b .L838
.L878:
	addi 7,3,2
	addi 11,4,2
	addi 8,5,-2
	b .L775
.L879:
	addi 7,3,3
	addi 11,4,3
	addi 8,5,-3
	b .L775
.L880:
	addi 7,3,4
	addi 11,4,4
	addi 8,5,-4
	b .L775
.L881:
	addi 7,3,5
	addi 11,4,5
	addi 8,5,-5
	b .L775
.L796:
	mr 11,4
	mr 7,3
	mr 8,5
	b .L775
.L882:
	addi 7,3,6
	addi 11,4,6
	addi 8,5,-6
	b .L775
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
	b .L902
	.p2align 4,,15
.L911:
	addi 9,9,1
	bne 0,.L901
	bdz .L910
.L902:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq 7,.L911
.L901:
	extsw 3,9
	blr
	.p2align 4,,15
.L910:
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
	beq 0,.L915
	andi. 3,9,0x1
	bne 0,.L913
	li 3,1
	.p2align 4,,15
.L914:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L914
.L913:
	extsw 3,3
	blr
	.p2align 4,,15
.L915:
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
	addis 9,2,.LC8@toc@ha
	li 0,1
	lfs 0,.LC8@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L919
	addis 3,2,.LC9@toc@ha
	lfs 2,.LC9@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L919:
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
	addis 9,2,.LC12@toc@ha
	li 0,1
	lfd 0,.LC12@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L922
	addis 3,2,.LC13@toc@ha
	lfd 2,.LC13@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L922:
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
	addis 9,2,.LC16@toc@ha
	li 0,1
	addi 3,9,.LC16@toc@l
	lfd 12,0(3)
	lfd 13,8(3)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L925
	addis 4,2,.LC17@toc@ha
	addi 5,4,.LC17@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,1,12
	bne 1,$+8
	fcmpu 1,2,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L925:
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
.LCF88:
0:	addis 2,12,.TOC.-.LCF88@ha
	addi 2,2,.TOC.-.LCF88@l
	.localentry	_Qp_itoq,.-_Qp_itoq
	stw 4,-16(1)
	addi 9,1,-16
	addis 4,2,.LC2@toc@ha
	lfd 3,.LC2@toc@l(4)
	lfiwax 0,0,9
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
	blt 5,.L941
	addis 9,2,.LC21@toc@ha
	lfs 2,.LC21@toc@l(9)
.L930:
	andi. 9,4,0x1
	beq 0,.L931
	.p2align 4,,15
.L932:
	fmuls 1,1,2
.L931:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L932
.L942:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L932
	b .L942
	.p2align 4,,15
.L941:
	addis 3,2,.LC22@toc@ha
	lfs 2,.LC22@toc@l(3)
	b .L930
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
	blt 5,.L956
	addis 9,2,.LC25@toc@ha
	lfd 2,.LC25@toc@l(9)
.L945:
	andi. 9,4,0x1
	beq 0,.L946
	.p2align 4,,15
.L947:
	fmul 1,1,2
.L946:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L947
.L957:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L947
	b .L957
	.p2align 4,,15
.L956:
	addis 3,2,.LC26@toc@ha
	lfd 2,.LC26@toc@l(3)
	b .L945
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
	bun 0,.L959
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
	beq 1,.L974
	cmpwi 5,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 5,.L975
	addis 9,2,.LC29@toc@ha
	addi 3,9,.LC29@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L960:
	andi. 9,31,0x1
	beq 0,.L961
	.p2align 4,,15
.L962:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L961:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L973
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
	bne 0,.L962
.L976:
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
	bne 0,.L962
	b .L976
	.p2align 4,,15
.L973:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L974:
	ld 6,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L959:
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
.L975:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 4,2,.LC30@toc@ha
	addi 5,4,.LC30@toc@l
	lfd 30,0(5)
	lfd 31,8(5)
	b .L960
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
	neg 7,3
	addi 9,5,-1
	rldicl 10,7,0,60
	mr 6,9
	addi 8,10,15
	cmpldi 1,8,23
	mr 11,8
	blt 1,.L1018
.L980:
	cmpld 5,9,11
	blt 5,.L1000
	cmpdi 6,10,0
	beq 6,.L1001
	lbz 12,0(3)
	lbz 9,0(4)
	andi. 0,7,0xe
	xor 0,9,12
	stb 0,0(3)
	beq 0,.L1019
	lbz 6,1(3)
	lbz 11,1(4)
	cmpldi 7,10,2
	xor 9,11,6
	stb 9,1(3)
	ble 7,.L1020
	lbz 0,2(3)
	lbz 12,2(4)
	andi. 11,7,0xc
	xor 11,12,0
	stb 11,2(3)
	beq 0,.L1021
	lbz 6,3(3)
	lbz 9,3(4)
	cmpldi 1,10,4
	xor 12,9,6
	stb 12,3(3)
	ble 1,.L1022
	lbz 11,4(3)
	lbz 0,4(4)
	cmpldi 5,10,5
	xor 9,0,11
	stb 9,4(3)
	beq 5,.L1023
	lbz 6,5(3)
	lbz 12,5(4)
	cmpldi 6,10,6
	xor 0,12,6
	stb 0,5(3)
	beq 6,.L1024
	lbz 11,6(4)
	andi. 7,7,0x8
	lbz 7,6(3)
	addi 6,5,-7
	xor 9,11,7
	addi 11,4,7
	addi 7,3,7
	stb 9,6(3)
	beq 0,.L981
	lbz 6,7(3)
	lbz 12,7(4)
	cmpldi 7,10,8
	xor 0,12,6
	stb 0,7(3)
	ble 7,.L1025
	lbz 7,8(3)
	lbz 11,8(4)
	cmpldi 1,10,9
	xor 9,11,7
	stb 9,8(3)
	beq 1,.L1026
	lbz 6,9(3)
	lbz 12,9(4)
	cmpldi 5,10,10
	xor 0,12,6
	stb 0,9(3)
	beq 5,.L1027
	lbz 7,10(3)
	lbz 11,10(4)
	cmpldi 6,10,11
	xor 9,11,7
	stb 9,10(3)
	beq 6,.L1028
	lbz 6,11(3)
	lbz 12,11(4)
	cmpldi 0,10,12
	xor 0,12,6
	stb 0,11(3)
	beq 0,.L1029
	lbz 7,12(3)
	lbz 11,12(4)
	cmpldi 7,10,13
	xor 9,11,7
	stb 9,12(3)
	beq 7,.L1030
	lbz 6,13(3)
	lbz 12,13(4)
	cmpldi 1,10,15
	xor 0,12,6
	stb 0,13(3)
	bne 1,.L1031
	lbz 12,14(3)
	lbz 9,14(4)
	addi 11,4,15
	addi 7,3,15
	addi 6,5,-15
	xor 0,9,12
	stb 0,14(3)
	.p2align 4,,15
.L981:
	add 9,4,10
	subf 5,10,5
	lvx 13,4,10
	neg 12,9
	add 4,4,8
	srdi 8,5,4
	add 10,3,10
	mtctr 8
	lvsl 12,0,12
	li 9,0
	.p2align 5
.L997:
	vor 1,13,13
	lvx 13,4,9
	lvx 0,10,9
	vperm 1,13,1,12
	vxor 0,0,1
	stvx 0,10,9
	addi 9,9,16
	bdnz .L997
	andi. 9,5,0xf
	rldicr 0,5,0,59
	add 4,11,0
	add 12,7,0
	subf 11,0,6
	beqlr 0
	addi 9,11,-1
.L979:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 10,12,-1
	beq 0,.L1009
	lbz 6,0(12)
	lbz 5,0(4)
	mr 10,12
	mr 7,4
	xor 12,5,6
	stb 12,0(10)
.L1009:
	srdi 4,9,1
	addi 8,4,1
	mtctr 8
	b .L999
	.p2align 4,,15
.L1032:
	lbz 4,1(5)
	lbz 12,1(11)
	addi 10,10,2
	xor 8,12,4
	stb 8,1(5)
.L999:
	lbz 9,1(7)
	lbz 0,1(10)
	addi 11,7,1
	addi 5,10,1
	addi 7,7,2
	xor 6,9,0
	stb 6,1(10)
	bdnz .L1032
	blr
	.p2align 4,,15
.L1018:
	li 11,23
	b .L980
.L1022:
	addi 11,4,4
	addi 7,3,4
	addi 6,5,-4
	b .L981
.L1000:
	mr 12,3
	b .L979
.L1019:
	addi 11,4,1
	addi 7,3,1
	b .L981
.L1020:
	addi 11,4,2
	addi 7,3,2
	addi 6,5,-2
	b .L981
.L1021:
	addi 11,4,3
	addi 7,3,3
	addi 6,5,-3
	b .L981
.L1023:
	addi 11,4,5
	addi 7,3,5
	addi 6,5,-5
	b .L981
.L1001:
	mr 7,3
	mr 11,4
	mr 6,5
	b .L981
.L1029:
	addi 11,4,12
	addi 7,3,12
	addi 6,5,-12
	b .L981
.L1024:
	addi 11,4,6
	addi 7,3,6
	addi 6,5,-6
	b .L981
.L1025:
	addi 11,4,8
	addi 7,3,8
	addi 6,5,-8
	b .L981
.L1026:
	addi 11,4,9
	addi 7,3,9
	addi 6,5,-9
	b .L981
.L1027:
	addi 11,4,10
	addi 7,3,10
	addi 6,5,-10
	b .L981
.L1028:
	addi 11,4,11
	addi 7,3,11
	addi 6,5,-11
	b .L981
.L1030:
	addi 11,4,13
	addi 7,3,13
	addi 6,5,-13
	b .L981
.L1031:
	addi 11,4,14
	addi 7,3,14
	addi 6,5,-14
	b .L981
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
	beq 0,.L1034
	.p2align 4,,15
.L1035:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1035
.L1034:
	cmpdi 5,5,0
	beq 5,.L1036
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne 0,.L1059
.L1047:
	srdi 0,5,1
	mtctr 0
.L1037:
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
	bdnz .L1037
.L1036:
	li 6,0
	stb 6,0(9)
	blr
	.p2align 4,,15
.L1059:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr 6
	cmpdi 7,7,0
	addi 9,9,1
	bne 7,.L1047
	b .L1036
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
	beq 0,.L1072
	cmpdi 1,8,1
	beq 1,.L1083
	cmpdi 5,8,2
	beq 5,.L1084
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr 6
	li 3,1
.L1084:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr 7
	addi 3,3,1
.L1083:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr 1
	.p2align 4,,15
.L1072:
	srdi 10,10,2
.L1061:
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
	bne 1,.L1061
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
	beq 0,.L1098
.L1094:
	mr 10,4
	b .L1097
	.p2align 4,,15
.L1096:
	beqlr 7
.L1097:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne 1,.L1096
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne 5,.L1094
.L1098:
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
	li 8,0
	.p2align 4,,15
.L1106:
	lbz 10,0(9)
	mr 3,8
	cmpw 7,10,4
	cmpwi 0,10,0
	bne 7,.L1105
	mr 3,9
.L1105:
	addi 9,9,1
	mr 8,3
	bne 0,.L1106
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
	beq 0,.L1123
	mr 9,4
	.p2align 4,,15
.L1112:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1112
	subf. 6,4,9
	mr 3,8
	beqlr 0
	addi 3,6,-1
	b .L1131
	.p2align 4,,15
.L1134:
	cmpwi 6,12,0
	addi 8,8,1
	beq 6,.L1133
.L1131:
	lbz 12,0(8)
	cmpw 5,12,5
	bne 5,.L1134
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 10,11
	mr 7,8
	b .L1114
	.p2align 4,,15
.L1136:
	bdz .L1116
	bne 7,.L1117
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq 1,.L1135
	lbzu 10,1(6)
.L1114:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne 0,.L1136
.L1117:
	addi 8,8,1
	b .L1131
	.p2align 4,,15
.L1133:
	li 3,0
	blr
	.p2align 4,,15
.L1135:
	lbz 9,1(6)
.L1116:
	cmpw 5,12,9
	bne 5,.L1117
.L1123:
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
.LCF98:
0:	addis 2,12,.TOC.-.LCF98@ha
	addi 2,2,.TOC.-.LCF98@l
	.localentry	copysign,.-copysign
	addis 9,2,.LC2@toc@ha
	lfd 0,.LC2@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L1147
	bnglr 0
	fcmpu 1,2,0
	bnllr 1
	fneg 1,1
	blr
	.p2align 4,,15
.L1147:
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
	blt 1,.L1156
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt 5,.L1156
	lbz 12,0(5)
	cmpldi 7,6,1
	addi 11,3,-1
	b .L1153
	.p2align 4,,15
.L1150:
	cmpld 1,0,9
	blt 1,.L1156
.L1153:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne 6,.L1150
	beqlr 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
	.p2align 5
.L1151:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne 0,.L1150
	bdnz .L1151
	blr
	.p2align 4,,15
.L1156:
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
	beq 0,.L1165
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L1165:
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
	addis 9,2,.LC2@toc@ha
	lfd 0,.LC2@toc@l(9)
	fcmpu 7,1,0
	blt 7,.L1193
	addis 3,2,.LC38@toc@ha
	li 10,0
	lfd 2,.LC38@toc@l(3)
	fcmpu 0,1,2
	cror 2,1,2
	bne 0,.L1194
.L1173:
	addis 12,2,.LC26@toc@ha
	addis 9,2,.LC38@toc@ha
	li 11,0
	lfd 7,.LC26@toc@l(12)
	lfd 8,.LC38@toc@l(9)
	.p2align 5
.L1179:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq 0,.L1179
	cmpwi 1,10,0
	stw 11,0(4)
	beqlr 1
.L1196:
	fneg 1,1
	blr
	.p2align 4,,15
.L1194:
	addis 5,2,.LC26@toc@ha
	lfd 3,.LC26@toc@l(5)
	fcmpu 1,1,3
	bnl 1,.L1176
	bne 7,.L1185
.L1176:
	li 0,0
	stw 0,0(4)
	blr
	.p2align 4,,15
.L1193:
	addis 6,2,.LC34@toc@ha
	fneg 12,1
	lfd 4,.LC34@toc@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne 5,.L1195
	fmr 1,12
	li 10,1
	b .L1173
	.p2align 4,,15
.L1195:
	addis 7,2,.LC36@toc@ha
	lfd 5,.LC36@toc@l(7)
	fcmpu 6,1,5
	bng 6,.L1176
	li 10,1
.L1174:
	addis 8,2,.LC26@toc@ha
	fmr 1,12
	li 11,0
	lfd 6,.LC26@toc@l(8)
	.p2align 4,,15
.L1181:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt 7,.L1181
	cmpwi 1,10,0
	stw 11,0(4)
	bne 1,.L1196
	blr
.L1185:
	fmr 12,1
	b .L1174
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
.L1199:
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
	bne 0,.L1199
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
	li 9,16
	mtctr 9
	li 12,32
	li 10,1
	blt 0,.L1204
	b .L1233
	.p2align 4,,15
.L1208:
	rldicl 4,11,0,32
	slwi 10,10,1
	ble 7,.L1206
	cmpwi 5,4,0
	slwi 9,4,1
	cmplw 6,3,9
	blt 5,.L1209
	rldicl 4,9,0,32
	slwi 10,10,1
	ble 6,.L1206
	bdz .L1207
.L1204:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge 1,.L1208
.L1209:
	li 12,0
	.p2align 4,,15
.L1214:
	subf 0,4,3
	subf 6,4,3
	srdi 7,0,63
	srdi 4,4,1
	xori 11,7,0x1
	andi. 8,11,0xff
	neg 9,8
	and 0,10,9
	srwi 10,10,1
	cmpwi 1,10,0
	or 12,12,0
	beq 0,.L1211
	mr 3,6
.L1211:
	rldicl 3,3,0,32
	bne 1,.L1214
.L1207:
	cmpdi 7,5,0
	beq 7,.L1215
	mr 12,3
.L1215:
	rldicl 3,12,0,32
	blr
	.p2align 4,,15
.L1206:
	cmpwi 0,10,0
	bne 0,.L1209
	li 12,0
	b .L1207
	.p2align 4,,15
.L1233:
	subf 0,4,3
	subf 4,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	beq 0,.L1217
	mr 3,4
.L1217:
	rldicl 3,3,0,32
	b .L1207
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
	beq 0,.L1238
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1238:
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
	beq 0,.L1241
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1241:
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
	beq 0,.L1243
	.p2align 5
.L1244:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne 0,.L1244
.L1243:
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
	blt 0,.L1251
	add 8,4,5
	mr 10,5
	cmpld 1,3,8
	ble 1,.L1377
.L1251:
	cmpwi 1,9,0
	addi 7,4,-8
	addi 8,3,-8
	beq 1,.L1322
	andi. 10,9,0x1
	addi 0,9,-1
	mr 11,9
	bne 0,.L1378
.L1301:
	srdi 10,11,1
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L1344
	addi 10,10,-1
	mtctr 10
	addi 9,9,-2
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 10,8,8
	std 11,8(10)
.L1254:
	addi 9,9,-2
	ld 11,16(6)
	std 11,16(10)
	addi 6,6,16
	ld 11,8(6)
	addi 10,10,16
	std 11,8(10)
	bdnz .L1254
.L1325:
	cmplw 7,12,5
	bgelr 7
	subf 7,12,5
	rldicl 11,12,0,32
	addi 8,7,-1
	cmplwi 1,8,29
	ble 1,.L1256
	addi 0,11,1
	add 6,3,11
	add 10,4,0
	subf 8,10,6
	cmpldi 5,8,14
	ble 5,.L1256
	neg 8,6
	andi. 10,8,0xf
	beq 0,.L1266
	andi. 6,8,0xe
	lbzx 6,4,11
	stbx 6,3,11
	beq 0,.L1379
	std 31,-8(1)
	.cfi_offset 31, -8
	cmplwi 0,10,2
	addi 6,12,2
	lbzx 31,4,0
	stbx 31,3,0
	ble 0,.L1257
	rldicl 0,6,0,32
	addi 6,12,3
	lbzx 31,4,0
	stbx 31,3,0
	rldicr. 0,8,60,1
	beq 0,.L1257
	rldicl 0,6,0,32
	cmplwi 7,10,4
	addi 6,12,4
	lbzx 31,4,0
	stbx 31,3,0
	ble 7,.L1257
	rldicl 0,6,0,32
	cmplwi 1,10,5
	addi 6,12,5
	lbzx 31,4,0
	stbx 31,3,0
	beq 1,.L1257
	rldicl 0,6,0,32
	cmplwi 5,10,6
	addi 6,12,6
	lbzx 31,4,0
	stbx 31,3,0
	beq 5,.L1257
	rldicl 0,6,0,32
	andi. 8,8,0x8
	addi 6,12,7
	lbzx 8,4,0
	stbx 8,3,0
	beq 0,.L1257
	rldicl 31,6,0,32
	cmplwi 6,10,8
	addi 6,12,8
	lbzx 0,4,31
	stbx 0,3,31
	ble 6,.L1257
	rldicl 8,6,0,32
	cmplwi 7,10,9
	addi 6,12,9
	lbzx 31,4,8
	stbx 31,3,8
	beq 7,.L1257
	rldicl 8,6,0,32
	cmplwi 1,10,10
	addi 6,12,10
	lbzx 0,4,8
	stbx 0,3,8
	beq 1,.L1257
	rldicl 31,6,0,32
	cmplwi 5,10,11
	addi 6,12,11
	lbzx 8,4,31
	stbx 8,3,31
	beq 5,.L1257
	rldicl 31,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 0,4,31
	stbx 0,3,31
	beq 0,.L1257
	rldicl 8,6,0,32
	cmplwi 6,10,13
	addi 6,12,13
	lbzx 31,4,8
	stbx 31,3,8
	beq 6,.L1257
	rldicl 8,6,0,32
	cmplwi 7,10,15
	addi 6,12,14
	lbzx 0,4,8
	stbx 0,3,8
	bne 7,.L1257
	rldicl 31,6,0,32
	addi 6,12,15
	lbzx 12,4,31
	stbx 12,3,31
.L1257:
	subf 7,10,7
	rldicl 10,10,0,32
	rldicl 8,7,60,36
	add 31,10,11
	andi. 11,8,0x1
	add 11,4,31
	neg 12,11
	addi 0,31,15
	lvx 0,4,31
	add 10,3,31
	add 11,4,0
	lvsl 13,0,12
	addi 31,8,-1
	beq 0,.L1298
	vor 1,0,0
	lvx 0,11,9
	cmpdi 1,31,0
	vperm 1,0,1,13
	stvx 1,10,9
	addi 9,9,16
	beq 1,.L1329
.L1298:
	srdi 8,8,1
	mtctr 8
.L1260:
	lvx 1,11,9
	addi 12,9,16
	vperm 0,1,0,13
	stvx 0,10,9
	addi 9,9,32
	lvx 0,11,12
	vperm 1,0,1,13
	stvx 1,10,12
	bdnz .L1260
.L1329:
	andi. 9,7,0xf
	rlwinm 9,7,0,0,27
	add 6,9,6
	beq 0,.L1247
	rldicl 0,6,0,32
	addi 11,6,1
	cmplw 5,11,5
	lbzx 7,4,0
	stbx 7,3,0
	bge 5,.L1247
	rldicl 10,11,0,32
	addi 31,6,2
	cmplw 6,31,5
	lbzx 8,4,10
	stbx 8,3,10
	bge 6,.L1247
	rldicl 12,31,0,32
	addi 9,6,3
	cmplw 7,9,5
	lbzx 0,4,12
	stbx 0,3,12
	bge 7,.L1247
	rldicl 11,9,0,32
	addi 10,6,4
	cmplw 1,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bge 1,.L1247
	rldicl 31,10,0,32
	addi 8,6,5
	cmplw 0,8,5
	lbzx 12,4,31
	stbx 12,3,31
	bge 0,.L1247
	rldicl 9,8,0,32
	addi 0,6,6
	cmplw 5,0,5
	lbzx 11,4,9
	stbx 11,3,9
	bge 5,.L1247
	rldicl 31,0,0,32
	addi 10,6,7
	cmplw 6,10,5
	lbzx 7,4,31
	stbx 7,3,31
	bge 6,.L1247
	rldicl 12,10,0,32
	addi 8,6,8
	cmplw 7,8,5
	lbzx 9,4,12
	stbx 9,3,12
	bge 7,.L1247
	rldicl 0,8,0,32
	addi 11,6,9
	cmplw 1,11,5
	lbzx 31,4,0
	stbx 31,3,0
	bge 1,.L1247
	rldicl 10,11,0,32
	addi 12,6,10
	cmplw 0,12,5
	lbzx 7,4,10
	stbx 7,3,10
	bge 0,.L1247
	rldicl 8,12,0,32
	addi 9,6,11
	cmplw 5,9,5
	lbzx 0,4,8
	stbx 0,3,8
	bge 5,.L1247
	rldicl 11,9,0,32
	addi 31,6,12
	cmplw 6,31,5
	lbzx 10,4,11
	stbx 10,3,11
	bge 6,.L1247
	rldicl 12,31,0,32
	addi 8,6,13
	cmplw 7,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 7,.L1247
	rldicl 0,8,0,32
	addi 6,6,14
	cmplw 1,6,5
	lbzx 5,4,0
	stbx 5,3,0
	bge 1,.L1247
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
.L1247:
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1344:
	ld 0,8(7)
	mr 11,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 6,16(11)
	std 6,16(10)
	bdz .L1325
	ld 0,8(7)
	mr 11,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 6,16(11)
	std 6,16(10)
	bdnz .L1344
	b .L1325
	.p2align 4,,15
.L1378:
	mr. 9,0
	ld 6,0(4)
	mr 7,4
	mr 8,3
	std 6,0(3)
	bne 0,.L1301
	b .L1325
	.p2align 4,,15
.L1377:
	cmpdi 5,5,0
	addi 9,5,-1
	rldicl 5,9,0,32
	addi 0,5,1
	add 4,4,0
	add 3,3,0
	beqlr 5
	andi. 9,10,0x1
	addi 6,10,-1
	beq 0,.L1304
	lbzu 7,-1(4)
	cmpdi 6,6,0
	stbu 7,-1(3)
	beqlr 6
.L1304:
	srdi 9,10,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1345
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1264:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1264
	blr
	.p2align 4,,15
.L1345:
	lbz 11,-1(4)
	mr 12,4
	mr 10,3
	addi 4,4,-2
	addi 3,3,-2
	stb 11,1(3)
	lbz 8,-2(12)
	stb 8,-2(10)
	bdnz .L1345
.L1352:
	blr
.L1379:
	addi 6,12,1
.L1353:
	subf 7,10,7
	rldicl 12,10,0,32
	rldicl 8,7,60,36
	add 10,12,11
	andi. 11,8,0x1
	add 11,4,10
	neg 12,11
	addi 0,10,15
	lvx 0,4,10
	add 11,4,0
	add 10,3,10
	lvsl 13,0,12
	addi 12,8,-1
	bne 0,.L1380
.L1355:
	srdi 8,8,1
	mtctr 8
.L1357:
	lvx 1,11,9
	addi 0,9,16
	vperm 0,1,0,13
	stvx 0,10,9
	addi 9,9,32
	lvx 0,11,0
	vperm 1,0,1,13
	stvx 1,10,0
	bdnz .L1357
.L1358:
	andi. 9,7,0xf
	rlwinm 9,7,0,0,27
	add 6,9,6
	beqlr 0
	rldicl 11,6,0,32
	addi 10,6,1
	cmplw 7,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bgelr 7
	rldicl 12,10,0,32
	addi 8,6,2
	cmplw 1,8,5
	lbzx 0,4,12
	stbx 0,3,12
	bgelr 1
	rldicl 9,8,0,32
	addi 11,6,3
	cmplw 5,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bgelr 5
	rldicl 12,11,0,32
	addi 8,6,4
	cmplw 6,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bgelr 6
	rldicl 0,8,0,32
	addi 9,6,5
	cmplw 0,9,5
	lbzx 11,4,0
	stbx 11,3,0
	bgelr 0
	rldicl 10,9,0,32
	addi 12,6,6
	cmplw 7,12,5
	lbzx 8,4,10
	stbx 8,3,10
	bgelr 7
	rldicl 0,12,0,32
	addi 9,6,7
	cmplw 1,9,5
	lbzx 7,4,0
	stbx 7,3,0
	bgelr 1
	rldicl 11,9,0,32
	addi 10,6,8
	cmplw 5,10,5
	lbzx 12,4,11
	stbx 12,3,11
	bgelr 5
	rldicl 8,10,0,32
	addi 0,6,9
	cmplw 6,0,5
	lbzx 9,4,8
	stbx 9,3,8
	bgelr 6
	rldicl 11,0,0,32
	addi 10,6,10
	cmplw 0,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bgelr 0
	rldicl 12,10,0,32
	addi 8,6,11
	cmplw 7,8,5
	lbzx 0,4,12
	stbx 0,3,12
	bgelr 7
	rldicl 9,8,0,32
	addi 11,6,12
	cmplw 1,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bgelr 1
	rldicl 12,11,0,32
	addi 8,6,13
	cmplw 5,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bgelr 5
	rldicl 0,8,0,32
	addi 6,6,14
	cmplw 6,6,5
	lbzx 5,4,0
	stbx 5,3,0
	bgelr 6
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
	blr
	.p2align 4,,15
.L1322:
	cmpdi 5,5,0
	rldicl 11,12,0,32
	mr 7,5
	beqlr 5
.L1256:
	rldicl 10,7,0,32
	addi 11,11,-1
	andi. 9,10,0x1
	add 4,4,11
	add 11,3,11
	addi 3,10,-1
	beq 0,.L1295
	lbzu 12,1(4)
	cmpdi 5,3,0
	stbu 12,1(11)
	beqlr 5
.L1295:
	srdi 9,10,1
	mtctr 9
	cmpdi 6,9,2
	ble 6,.L1343
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(11)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,11,1
	stb 8,1(9)
.L1262:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1262
	blr
	.p2align 4,,15
.L1343:
	lbz 8,1(4)
	mr 7,4
	mr 6,11
	addi 4,4,2
	addi 11,11,2
	stb 8,-1(11)
	lbz 0,2(7)
	stb 0,2(6)
	bdnz .L1343
	blr
.L1380:
	vor 1,0,0
	lvx 0,11,9
	cmpdi 6,12,0
	vperm 1,0,1,13
	stvx 1,10,9
	addi 9,9,16
	bne 6,.L1355
	b .L1358
	.p2align 4,,15
.L1266:
	mr 6,12
	b .L1353
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
	srwi 7,5,1
	blt 0,.L1385
	add 10,4,5
	mr 9,5
	cmpld 1,3,10
	ble 1,.L1445
.L1385:
	cmpwi 1,7,0
	beq 1,.L1384
	addi 0,7,-1
	cmplwi 5,0,13
	ble 5,.L1388
	addi 6,4,2
	subf 8,6,3
	cmpldi 0,8,12
	ble 0,.L1388
	srdi 11,3,1
	neg 12,11
	andi. 9,12,0x7
	beq 0,.L1397
	rldicr. 8,12,61,1
	lhz 10,0(4)
	sth 10,0(3)
	beq 0,.L1398
	cmplwi 6,9,2
	lhz 6,2(4)
	sth 6,2(3)
	ble 6,.L1399
	andi. 10,12,0x4
	lhz 8,4(4)
	sth 8,4(3)
	beq 0,.L1400
	cmplwi 7,9,4
	lhz 11,6(4)
	sth 11,6(3)
	ble 7,.L1401
	cmplwi 1,9,5
	lhz 12,8(4)
	sth 12,8(3)
	beq 1,.L1402
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne 5,.L1403
	lhz 10,12(4)
	li 0,7
	sth 10,12(3)
.L1389:
	subf 6,9,7
	rldic 9,9,1,60
	rldicl 10,6,61,35
	add 8,4,9
	andi. 11,10,0x1
	neg 8,8
	lvx 0,4,9
	addi 11,9,15
	addi 12,10,-1
	lvsl 13,0,8
	add 11,4,11
	add 9,3,9
	li 8,0
	beq 0,.L1416
	vor 1,0,0
	lvx 0,0,11
	cmpdi 6,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,9
	beq 6,.L1430
.L1416:
	srdi 10,10,1
	mtctr 10
.L1391:
	lvx 1,11,8
	addi 12,8,16
	vperm 0,1,0,13
	stvx 0,9,8
	addi 8,8,32
	lvx 0,11,12
	vperm 1,0,1,13
	stvx 1,9,12
	bdnz .L1391
.L1430:
	andi. 9,6,0x7
	rlwinm 6,6,0,0,28
	add 11,6,0
	beq 0,.L1384
	rldic 0,11,1,31
	addi 9,11,1
	cmplw 7,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 7,.L1384
	rldic 10,9,1,31
	addi 12,11,2
	cmplw 1,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble 1,.L1384
	rldic 0,12,1,31
	addi 9,11,3
	cmplw 5,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 5,.L1384
	rldic 10,9,1,31
	addi 12,11,4
	cmplw 6,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble 6,.L1384
	rldic 0,12,1,31
	addi 9,11,5
	cmplw 0,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 0,.L1384
	rldic 10,9,1,31
	addi 11,11,6
	cmplw 7,7,11
	lhzx 7,4,10
	sthx 7,3,10
	ble 7,.L1384
	rldic 12,11,1,31
	lhzx 6,4,12
	sthx 6,3,12
.L1384:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 10,5,0,32
	lbzx 4,4,10
	stbx 4,3,10
	blr
	.p2align 4,,15
.L1445:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 5,0,0,32
	addi 6,5,1
	add 4,4,6
	add 3,3,6
	beqlr 5
	andi. 10,9,0x1
	addi 8,9,-1
	beq 0,.L1419
	lbzu 11,-1(4)
	cmpdi 6,8,0
	stbu 11,-1(3)
	beqlr 6
.L1419:
	srdi 9,9,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1441
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1396:
	addi 4,10,-1
	lbz 8,-1(4)
	addi 3,9,-1
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
	bdnz .L1396
.L1381:
	blr
	.p2align 4,,15
.L1441:
	lbz 12,-1(4)
	mr 7,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 12,1(3)
	lbz 10,-2(7)
	stb 10,-2(9)
	bdz .L1381
	lbz 12,-1(4)
	mr 7,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 12,1(3)
	lbz 10,-2(7)
	stb 10,-2(9)
	bdnz .L1441
	blr
.L1397:
	li 0,0
	b .L1389
	.p2align 4,,15
.L1388:
	andi. 9,7,0x1
	addi 10,4,-2
	addi 0,7,-1
	addi 9,3,-2
	beq 0,.L1413
	cmpdi 1,0,0
	lhz 8,0(4)
	mr 10,4
	mr 9,3
	sth 8,0(3)
	beq 1,.L1384
.L1413:
	srdi 8,7,1
	mtctr 8
	cmpdi 5,8,2
	ble 5,.L1440
	addi 8,8,-1
	mtctr 8
	lhz 6,2(10)
	sth 6,2(9)
	addi 7,10,2
	lhz 6,2(7)
	addi 8,9,2
	sth 6,2(8)
.L1393:
	lhz 6,4(7)
	sth 6,4(8)
	addi 7,7,4
	lhz 6,2(7)
	addi 8,8,4
	sth 6,2(8)
	bdnz .L1393
	b .L1384
	.p2align 4,,15
.L1440:
	lhz 11,2(10)
	mr 7,10
	mr 12,9
	addi 10,10,4
	addi 9,9,4
	sth 11,-2(9)
	lhz 6,4(7)
	sth 6,4(12)
	bdnz .L1440
	b .L1384
.L1398:
	li 0,1
	b .L1389
.L1399:
	li 0,2
	b .L1389
.L1403:
	li 0,6
	b .L1389
.L1400:
	li 0,3
	b .L1389
.L1401:
	li 0,4
	b .L1389
.L1402:
	li 0,5
	b .L1389
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
	rlwinm 12,5,0,0,29
	blt 0,.L1451
	add 10,4,5
	mr 9,5
	cmpld 1,3,10
	ble 1,.L1624
.L1451:
	cmpwi 1,11,0
	beq 1,.L1625
	addi 0,11,-1
	cmplwi 0,0,10
	ble 0,.L1453
	addi 6,4,4
	subf 7,6,3
	cmpldi 6,7,8
	ble 6,.L1453
	std 31,-8(1)
	.cfi_offset 31, -8
	srdi 31,3,2
	li 0,0
	neg 8,31
	andi. 10,8,0x3
	beq 0,.L1454
	andi. 9,8,0x2
	lwz 9,0(4)
	li 0,1
	stw 9,0(3)
	beq 0,.L1454
	cmplwi 7,10,3
	lwz 6,4(4)
	li 0,2
	stw 6,4(3)
	bne 7,.L1454
	lwz 7,8(4)
	li 0,3
	stw 7,8(3)
.L1454:
	subf 6,10,11
	rldic 10,10,2,60
	rldicl 9,6,62,34
	add 31,4,10
	andi. 7,9,0x1
	neg 8,31
	lvx 0,4,10
	addi 7,10,15
	addi 31,9,-1
	lvsl 13,0,8
	add 7,4,7
	add 10,3,10
	li 8,0
	bne 0,.L1626
.L1512:
	srdi 9,9,1
	mtctr 9
.L1456:
	lvx 1,7,8
	addi 31,8,16
	vperm 0,1,0,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,7,31
	vperm 1,0,1,13
	stvx 1,10,31
	bdnz .L1456
.L1543:
	andi. 9,6,0x3
	rlwinm 6,6,0,0,29
	add 7,6,0
	beq 0,.L1459
	rldic 0,7,2,30
	addi 10,7,1
	cmplw 5,11,10
	lwzx 8,4,0
	stwx 8,3,0
	ble 5,.L1459
	rldic 9,10,2,30
	addi 31,7,2
	cmplw 6,11,31
	lwzx 11,4,9
	stwx 11,3,9
	ble 6,.L1459
	rldic 6,31,2,30
	lwzx 7,4,6
	stwx 7,3,6
.L1459:
	cmplw 7,12,5
	bge 7,.L1446
	subf 9,12,5
	rldicl 31,12,0,32
	addi 0,9,-1
	cmplwi 1,0,29
	ble 1,.L1449
	addi 11,31,1
	add 8,3,31
	add 10,4,11
	subf 6,10,8
	cmpldi 0,6,14
	ble 0,.L1449
	neg 7,8
	andi. 10,7,0xf
	beq 0,.L1472
	andi. 6,7,0xe
	lbzx 0,4,31
	stbx 0,3,31
	beq 0,.L1627
	cmplwi 5,10,2
	lbzx 8,4,11
	addi 6,12,2
	stbx 8,3,11
	ble 5,.L1460
	rldicl 11,6,0,32
	addi 6,12,3
	lbzx 0,4,11
	stbx 0,3,11
	rldicr. 11,7,60,1
	beq 0,.L1460
	rldicl 8,6,0,32
	cmplwi 6,10,4
	addi 6,12,4
	lbzx 11,4,8
	stbx 11,3,8
	ble 6,.L1460
	rldicl 8,6,0,32
	cmplwi 7,10,5
	addi 6,12,5
	lbzx 0,4,8
	stbx 0,3,8
	beq 7,.L1460
	rldicl 11,6,0,32
	cmplwi 1,10,6
	addi 6,12,6
	lbzx 8,4,11
	stbx 8,3,11
	beq 1,.L1460
	rldicl 0,6,0,32
	andi. 8,7,0x8
	addi 6,12,7
	lbzx 7,4,0
	stbx 7,3,0
	beq 0,.L1460
	rldicl 8,6,0,32
	cmplwi 5,10,8
	addi 6,12,8
	lbzx 11,4,8
	stbx 11,3,8
	ble 5,.L1460
	rldicl 0,6,0,32
	cmplwi 6,10,9
	addi 6,12,9
	lbzx 7,4,0
	stbx 7,3,0
	beq 6,.L1460
	rldicl 8,6,0,32
	cmplwi 7,10,10
	addi 6,12,10
	lbzx 11,4,8
	stbx 11,3,8
	beq 7,.L1460
	rldicl 0,6,0,32
	cmplwi 1,10,11
	addi 6,12,11
	lbzx 7,4,0
	stbx 7,3,0
	beq 1,.L1460
	rldicl 8,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 11,4,8
	stbx 11,3,8
	beq 0,.L1460
	rldicl 0,6,0,32
	cmplwi 5,10,13
	addi 6,12,13
	lbzx 7,4,0
	stbx 7,3,0
	beq 5,.L1460
	rldicl 8,6,0,32
	cmplwi 6,10,15
	addi 6,12,14
	lbzx 11,4,8
	stbx 11,3,8
	bne 6,.L1460
	rldicl 0,6,0,32
	addi 6,12,15
	lbzx 12,4,0
	stbx 12,3,0
	.p2align 4,,15
.L1460:
	subf 9,10,9
	rldicl 10,10,0,32
	rldicl 8,9,60,36
	add 31,10,31
	andi. 7,8,0x1
	add 7,4,31
	neg 12,7
	addi 11,31,15
	lvx 0,4,31
	add 10,3,31
	add 11,4,11
	lvsl 13,0,12
	addi 0,8,-1
	li 31,0
	beq 0,.L1506
	vor 1,0,0
	lvx 0,0,11
	cmpdi 7,0,0
	li 31,16
	vperm 1,0,1,13
	stvx 1,0,10
	beq 7,.L1542
.L1506:
	srdi 8,8,1
	mtctr 8
.L1463:
	lvx 1,11,31
	addi 7,31,16
	vperm 0,1,0,13
	stvx 0,10,31
	addi 31,31,32
	lvx 0,11,7
	vperm 1,0,1,13
	stvx 1,10,7
	bdnz .L1463
.L1542:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 6,9,6
	beq 0,.L1446
	rldicl 12,6,0,32
	addi 11,6,1
	cmplw 1,11,5
	lbzx 10,4,12
	stbx 10,3,12
	bge 1,.L1446
	rldicl 0,11,0,32
	addi 31,6,2
	cmplw 5,31,5
	lbzx 8,4,0
	stbx 8,3,0
	bge 5,.L1446
	rldicl 9,31,0,32
	addi 12,6,3
	cmplw 6,12,5
	lbzx 7,4,9
	stbx 7,3,9
	bge 6,.L1446
	rldicl 11,12,0,32
	addi 10,6,4
	cmplw 7,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 7,.L1446
	rldicl 31,10,0,32
	addi 8,6,5
	cmplw 0,8,5
	lbzx 9,4,31
	stbx 9,3,31
	bge 0,.L1446
	rldicl 12,8,0,32
	addi 11,6,6
	cmplw 1,11,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 1,.L1446
	rldicl 0,11,0,32
	addi 10,6,7
	cmplw 5,10,5
	lbzx 31,4,0
	stbx 31,3,0
	bge 5,.L1446
	rldicl 9,10,0,32
	addi 8,6,8
	cmplw 6,8,5
	lbzx 12,4,9
	stbx 12,3,9
	bge 6,.L1446
	rldicl 11,8,0,32
	addi 0,6,9
	cmplw 7,0,5
	lbzx 7,4,11
	stbx 7,3,11
	bge 7,.L1446
	rldicl 10,0,0,32
	addi 31,6,10
	cmplw 0,31,5
	lbzx 9,4,10
	stbx 9,3,10
	bge 0,.L1446
	rldicl 8,31,0,32
	addi 12,6,11
	cmplw 1,12,5
	lbzx 11,4,8
	stbx 11,3,8
	bge 1,.L1446
	rldicl 0,12,0,32
	addi 10,6,12
	cmplw 5,10,5
	lbzx 7,4,0
	stbx 7,3,0
	bge 5,.L1446
	rldicl 31,10,0,32
	addi 9,6,13
	cmplw 6,9,5
	lbzx 8,4,31
	stbx 8,3,31
	bge 6,.L1446
	rldicl 12,9,0,32
	addi 6,6,14
	cmplw 7,6,5
	lbzx 5,4,12
	stbx 5,3,12
	bge 7,.L1446
	rldicl 11,6,0,32
	lbzx 4,4,11
	stbx 4,3,11
.L1446:
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1626:
	.cfi_restore_state
	vor 1,0,0
	lvx 0,0,7
	cmpdi 1,31,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,10
	bne 1,.L1512
	b .L1543
	.p2align 4,,15
.L1624:
	.cfi_restore 31
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 5,0,0,32
	addi 6,5,1
	add 4,4,6
	add 3,3,6
	beqlr 5
	andi. 10,9,0x1
	addi 7,9,-1
	beq 0,.L1515
	lbzu 8,-1(4)
	cmpdi 6,7,0
	stbu 8,-1(3)
	beqlr 6
.L1515:
	srdi 9,9,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1560
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1467:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1467
	blr
	.p2align 4,,15
.L1560:
	lbz 12,-1(4)
	mr 11,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 12,1(3)
	lbz 10,-2(11)
	stb 10,-2(9)
	bdnz .L1560
.L1569:
	blr
	.p2align 4,,15
.L1449:
	.cfi_offset 31, -8
	rldicl 9,9,0,32
	addi 0,31,-1
	andi. 10,9,0x1
	add 7,3,0
	add 4,4,0
	addi 3,9,-1
	beq 0,.L1503
	lbzu 10,1(4)
	cmpdi 1,3,0
	stbu 10,1(7)
	beq 1,.L1446
.L1503:
	srdi 9,9,1
	mtctr 9
	cmpdi 5,9,2
	ble 5,.L1558
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(7)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,7,1
	stb 8,1(9)
.L1465:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1465
	b .L1446
	.p2align 4,,15
.L1558:
	lbz 31,1(4)
	mr 8,4
	mr 12,7
	addi 4,4,2
	addi 7,7,2
	stb 31,-1(7)
	lbz 6,2(8)
	stb 6,2(12)
	bdnz .L1558
	b .L1446
	.p2align 4,,15
.L1453:
	.cfi_restore 31
	andi. 9,11,0x1
	addi 10,4,-4
	addi 7,11,-1
	addi 9,3,-4
	beq 0,.L1509
	cmpdi 6,7,0
	lwz 0,0(4)
	mr 10,4
	mr 9,3
	stw 0,0(3)
	beq 6,.L1570
.L1509:
	srdi 8,11,1
	mtctr 8
	cmpdi 7,8,2
	ble 7,.L1559
	addi 8,8,-1
	mtctr 8
	lwz 6,4(10)
	stw 6,4(9)
	addi 7,10,4
	lwz 6,4(7)
	addi 8,9,4
	stw 6,4(8)
.L1458:
	lwz 6,8(7)
	stw 6,8(8)
	addi 7,7,8
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L1458
.L1570:
	cmplw 1,12,5
	bgelr 1
	subf 9,12,5
	rldicl 7,12,0,32
	addi 10,9,-1
	cmplwi 5,10,29
	ble 5,.L1568
	addi 11,7,1
	add 0,3,7
	add 6,4,11
	subf 8,6,0
	cmpldi 0,8,14
	ble 0,.L1568
	neg 8,0
	andi. 10,8,0xf
	beq 0,.L1576
	andi. 6,8,0xe
	lbzx 0,4,7
	stbx 0,3,7
	beq 0,.L1628
	cmplwi 6,10,2
	lbzx 0,4,11
	addi 6,12,2
	stbx 0,3,11
	ble 6,.L1579
	rldicl 11,6,0,32
	addi 6,12,3
	lbzx 0,4,11
	stbx 0,3,11
	rldicr. 11,8,60,1
	beq 0,.L1579
	rldicl 11,6,0,32
	cmplwi 7,10,4
	addi 6,12,4
	lbzx 0,4,11
	stbx 0,3,11
	ble 7,.L1579
	rldicl 11,6,0,32
	cmplwi 1,10,5
	addi 6,12,5
	lbzx 0,4,11
	stbx 0,3,11
	beq 1,.L1579
	rldicl 11,6,0,32
	cmplwi 5,10,6
	addi 6,12,6
	lbzx 0,4,11
	stbx 0,3,11
	beq 5,.L1579
	rldicl 11,6,0,32
	andi. 8,8,0x8
	addi 6,12,7
	lbzx 8,4,11
	stbx 8,3,11
	beq 0,.L1579
	rldicl 0,6,0,32
	cmplwi 6,10,8
	addi 6,12,8
	lbzx 11,4,0
	stbx 11,3,0
	ble 6,.L1579
	rldicl 8,6,0,32
	cmplwi 7,10,9
	addi 6,12,9
	lbzx 0,4,8
	stbx 0,3,8
	beq 7,.L1579
	rldicl 8,6,0,32
	cmplwi 1,10,10
	addi 6,12,10
	lbzx 11,4,8
	stbx 11,3,8
	beq 1,.L1579
	rldicl 0,6,0,32
	cmplwi 5,10,11
	addi 6,12,11
	lbzx 8,4,0
	stbx 8,3,0
	beq 5,.L1579
	rldicl 0,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 11,4,0
	stbx 11,3,0
	beq 0,.L1579
	rldicl 8,6,0,32
	cmplwi 6,10,13
	addi 6,12,13
	lbzx 0,4,8
	stbx 0,3,8
	beq 6,.L1579
	rldicl 8,6,0,32
	cmplwi 7,10,15
	addi 6,12,14
	lbzx 11,4,8
	stbx 11,3,8
	bne 7,.L1579
	rldicl 0,6,0,32
	addi 6,12,15
	lbzx 12,4,0
	stbx 12,3,0
.L1579:
	subf 9,10,9
	rldicl 10,10,0,32
	rldicl 8,9,60,36
	add 12,10,7
	andi. 7,8,0x1
	add 7,4,12
	neg 7,7
	addi 11,12,15
	lvx 0,4,12
	add 10,3,12
	add 11,4,11
	lvsl 13,0,7
	addi 0,8,-1
	li 12,0
	beq 0,.L1594
	vor 1,0,0
	lvx 0,0,11
	cmpdi 1,0,0
	li 12,16
	vperm 1,0,1,13
	stvx 1,0,10
	beq 1,.L1597
.L1594:
	srdi 8,8,1
	mtctr 8
.L1596:
	lvx 1,11,12
	addi 7,12,16
	vperm 0,1,0,13
	stvx 0,10,12
	addi 12,12,32
	lvx 0,11,7
	vperm 1,0,1,13
	stvx 1,10,7
	bdnz .L1596
.L1597:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 6,9,6
	beqlr 0
	rldicl 11,6,0,32
	addi 10,6,1
	cmplw 5,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bgelr 5
	rldicl 12,10,0,32
	addi 8,6,2
	cmplw 6,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bgelr 6
	rldicl 9,8,0,32
	addi 11,6,3
	cmplw 7,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bgelr 7
	rldicl 0,11,0,32
	addi 12,6,4
	cmplw 1,12,5
	lbzx 8,4,0
	stbx 8,3,0
	bgelr 1
	rldicl 9,12,0,32
	addi 11,6,5
	cmplw 0,11,5
	lbzx 7,4,9
	stbx 7,3,9
	bgelr 0
	rldicl 10,11,0,32
	addi 0,6,6
	cmplw 5,0,5
	lbzx 12,4,10
	stbx 12,3,10
	bgelr 5
	rldicl 8,0,0,32
	addi 9,6,7
	cmplw 6,9,5
	lbzx 11,4,8
	stbx 11,3,8
	bgelr 6
	rldicl 10,9,0,32
	addi 0,6,8
	cmplw 7,0,5
	lbzx 7,4,10
	stbx 7,3,10
	bgelr 7
	rldicl 12,0,0,32
	addi 8,6,9
	cmplw 1,8,5
	lbzx 9,4,12
	stbx 9,3,12
	bgelr 1
	rldicl 11,8,0,32
	addi 10,6,10
	cmplw 0,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bgelr 0
	rldicl 12,10,0,32
	addi 8,6,11
	cmplw 5,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bgelr 5
	rldicl 9,8,0,32
	addi 11,6,12
	cmplw 6,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bgelr 6
	rldicl 0,11,0,32
	addi 12,6,13
	cmplw 7,12,5
	lbzx 8,4,0
	stbx 8,3,0
	bgelr 7
	rldicl 7,12,0,32
	addi 6,6,14
	cmplw 1,6,5
	lbzx 5,4,7
	stbx 5,3,7
	bgelr 1
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
	blr
	.p2align 4,,15
.L1559:
	lwz 11,4(10)
	mr 6,10
	mr 8,9
	addi 10,10,8
	addi 9,9,8
	stw 11,-4(9)
	lwz 7,8(6)
	stw 7,8(8)
	bdnz .L1559
	b .L1570
	.p2align 4,,15
.L1625:
	cmpdi 5,5,0
	rldicl 7,12,0,32
	mr 9,5
	beqlr 5
.L1568:
	rldicl 11,9,0,32
	addi 0,7,-1
	andi. 10,11,0x1
	add 7,3,0
	add 4,4,0
	addi 3,11,-1
	bne 0,.L1629
.L1614:
	srdi 9,11,1
	mtctr 9
	cmpdi 6,9,2
	ble 6,.L1618
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(7)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,7,1
	stb 8,1(9)
.L1617:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1617
	blr
.L1618:
	lbz 12,1(4)
	mr 8,4
	mr 6,7
	addi 4,4,2
	addi 7,7,2
	stb 12,-1(7)
	lbz 5,2(8)
	stb 5,2(6)
	bdnz .L1618
	blr
.L1629:
	lbzu 10,1(4)
	cmpdi 5,3,0
	stbu 10,1(7)
	bne 5,.L1614
	blr
.L1628:
	addi 6,12,1
	b .L1579
.L1627:
	.cfi_offset 31, -8
	addi 6,12,1
	b .L1460
.L1472:
	mr 6,12
	b .L1460
.L1576:
	.cfi_restore 31
	mr 6,12
	b .L1579
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
	stw 3,-16(1)
	addi 9,1,-16
	lfiwzx 1,0,9
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
	stw 3,-16(1)
	addi 9,1,-16
	lfiwzx 1,0,9
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
	std 3,-16(1)
	ori 2,2,0
	lfd 1,-16(1)
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
	std 3,-16(1)
	ori 2,2,0
	lfd 1,-16(1)
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
	bne 0,.L1639
	srawi 9,3,14
	cmpwi 1,9,0
	bne 1,.L1638
	srdi. 9,3,13
	bne 0,.L1640
	srdi. 9,3,12
	bne 0,.L1641
	srdi. 9,3,11
	bne 0,.L1642
	srdi. 9,3,10
	bne 0,.L1643
	srdi. 9,3,9
	bne 0,.L1644
	srdi. 9,3,8
	bne 0,.L1645
	srdi. 9,3,7
	bne 0,.L1646
	srdi. 9,3,6
	bne 0,.L1647
	srdi. 9,3,5
	bne 0,.L1648
	srdi. 9,3,4
	bne 0,.L1649
	srdi. 9,3,3
	bne 0,.L1650
	srdi. 9,3,2
	bne 0,.L1651
	srdi. 9,3,1
	bne 0,.L1652
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1638:
	rldicl 3,9,0,59
	blr
.L1639:
	li 9,0
	b .L1638
.L1650:
	li 9,12
	b .L1638
.L1640:
	li 9,2
	b .L1638
.L1641:
	li 9,3
	b .L1638
.L1642:
	li 9,4
	b .L1638
.L1643:
	li 9,5
	b .L1638
.L1644:
	li 9,6
	b .L1638
.L1645:
	li 9,7
	b .L1638
.L1646:
	li 9,8
	b .L1638
.L1647:
	li 9,9
	b .L1638
.L1648:
	li 9,10
	b .L1638
.L1649:
	li 9,11
	b .L1638
.L1651:
	li 9,13
	b .L1638
.L1652:
	li 9,14
	b .L1638
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
	bne 0,.L1657
	andi. 9,3,0x2
	bne 0,.L1658
	andi. 9,3,0x4
	bne 0,.L1659
	andi. 9,3,0x8
	bne 0,.L1660
	andi. 9,3,0x10
	bne 0,.L1661
	andi. 9,3,0x20
	bne 0,.L1662
	andi. 9,3,0x40
	bne 0,.L1663
	andi. 9,3,0x80
	bne 0,.L1664
	andi. 9,3,0x100
	bne 0,.L1665
	andi. 9,3,0x200
	bne 0,.L1666
	andi. 9,3,0x400
	bne 0,.L1667
	andi. 9,3,0x800
	bne 0,.L1668
	andi. 9,3,0x1000
	bne 0,.L1669
	andi. 9,3,0x2000
	bne 0,.L1670
	andi. 9,3,0x4000
	bne 0,.L1671
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1656:
	rldicl 3,5,0,59
	blr
.L1657:
	li 5,0
	b .L1656
.L1658:
	li 5,1
	b .L1656
.L1669:
	li 5,12
	b .L1656
.L1659:
	li 5,2
	b .L1656
.L1660:
	li 5,3
	b .L1656
.L1661:
	li 5,4
	b .L1656
.L1662:
	li 5,5
	b .L1656
.L1663:
	li 5,6
	b .L1656
.L1664:
	li 5,7
	b .L1656
.L1665:
	li 5,8
	b .L1656
.L1666:
	li 5,9
	b .L1656
.L1667:
	li 5,10
	b .L1656
.L1668:
	li 5,11
	b .L1656
.L1670:
	li 5,13
	b .L1656
.L1671:
	li 5,14
	b .L1656
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
	addis 9,2,.LC45@toc@ha
	lfs 0,.LC45@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1679
	fctidz 1,1
	stfd 1,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1679:
	fsubs 2,1,0
	fctidz 3,2
	stfd 3,-16(1)
	ori 2,2,0
	ld 3,-16(1)
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
	stw 3,-32(1)
	addi 12,1,-64
	li 10,32
	vxor 12,12,12
	addis 6,2,.LC47@toc@ha
	addis 9,2,.LC48@toc@ha
	addi 4,6,.LC47@toc@l
	addi 5,9,.LC48@toc@l
	addis 7,2,.LC49@toc@ha
	addis 8,2,.LC50@toc@ha
	addi 3,7,.LC49@toc@l
	lvx 13,0,4
	lvx 11,0,5
	addi 11,8,.LC50@toc@l
	lvewx 0,12,10
	vspltisw 10,1
	li 0,48
	lvx 1,0,3
	lvx 9,0,11
	vspltw 0,0,3
	vsraw 13,0,13
	vsraw 11,0,11
	vsraw 1,0,1
	vsraw 9,0,9
	vand 13,13,10
	vand 11,11,10
	vand 1,1,10
	vand 10,9,10
	vadduwm 0,13,11
	vadduwm 9,1,0
	vadduwm 13,10,9
	vsldoi 11,12,13,8
	vadduwm 1,11,13
	vsldoi 12,12,1,12
	vadduwm 10,12,1
	stvx 10,12,0
	lwz 6,-16(1)
	rldicl 3,6,0,63
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
	stw 3,-32(1)
	addi 12,1,-64
	li 10,32
	vxor 12,12,12
	addis 6,2,.LC47@toc@ha
	addis 9,2,.LC48@toc@ha
	addi 4,6,.LC47@toc@l
	addi 5,9,.LC48@toc@l
	addis 7,2,.LC49@toc@ha
	addis 8,2,.LC50@toc@ha
	addi 3,7,.LC49@toc@l
	lvx 13,0,4
	lvx 11,0,5
	addi 11,8,.LC50@toc@l
	lvewx 0,12,10
	vspltisw 10,1
	li 0,48
	lvx 1,0,3
	lvx 9,0,11
	vspltw 0,0,3
	vsraw 13,0,13
	vsraw 11,0,11
	vsraw 1,0,1
	vsraw 9,0,9
	vand 13,13,10
	vand 11,11,10
	vand 1,1,10
	vand 10,9,10
	vadduwm 0,13,11
	vadduwm 9,1,0
	vadduwm 13,10,9
	vsldoi 11,12,13,8
	vadduwm 1,11,13
	vsldoi 12,12,1,12
	vadduwm 10,12,1
	stvx 10,12,0
	lwa 3,-16(1)
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
	beq 0,.L1683
	.p2align 5
.L1684:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	bne 1,.L1684
.L1683:
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
	beq 0,.L1688
	cmpdi 1,4,0
	beq 1,.L1688
	.p2align 5
.L1689:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne 0,.L1689
.L1688:
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
	li 9,16
	mtctr 9
	li 12,32
	li 10,1
	blt 0,.L1694
	b .L1723
	.p2align 4,,15
.L1698:
	rldicl 4,11,0,32
	slwi 10,10,1
	ble 7,.L1696
	cmpwi 5,4,0
	slwi 9,4,1
	cmplw 6,3,9
	blt 5,.L1699
	rldicl 4,9,0,32
	slwi 10,10,1
	ble 6,.L1696
	bdz .L1697
.L1694:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge 1,.L1698
.L1699:
	li 12,0
	.p2align 4,,15
.L1704:
	subf 0,4,3
	subf 6,4,3
	srdi 7,0,63
	srdi 4,4,1
	xori 11,7,0x1
	andi. 8,11,0xff
	neg 9,8
	and 0,10,9
	srwi 10,10,1
	cmpwi 1,10,0
	or 12,12,0
	beq 0,.L1701
	mr 3,6
.L1701:
	rldicl 3,3,0,32
	bne 1,.L1704
.L1697:
	cmpdi 7,5,0
	beq 7,.L1705
	mr 12,3
.L1705:
	rldicl 3,12,0,32
	blr
	.p2align 4,,15
.L1696:
	cmpwi 0,10,0
	bne 0,.L1699
	li 12,0
	b .L1697
	.p2align 4,,15
.L1723:
	subf 0,4,3
	subf 4,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	beq 0,.L1707
	mr 3,4
.L1707:
	rldicl 3,3,0,32
	b .L1697
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
	blt 0,.L1727
	mfcr 3,128
	rlwinm 3,3,2,1
.L1727:
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
	blt 0,.L1730
	mfcr 3,128
	rlwinm 3,3,2,1
.L1730:
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
	blt 0,.L1748
	cmpdi 1,4,0
	beq 1,.L1740
	li 6,0
.L1736:
	li 10,32
	li 8,0
	b .L1739
	.p2align 4,,15
.L1749:
	beq 7,.L1738
.L1739:
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
	bne 0,.L1749
.L1738:
	cmpwi 5,6,0
	beq 5,.L1737
	neg 8,8
.L1737:
	extsw 3,8
	blr
	.p2align 4,,15
.L1748:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1736
.L1740:
	li 8,0
	b .L1737
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
	li 5,0
	bge 0,.L1751
	neg 3,3
	li 9,0
	li 5,1
.L1751:
	cmpdi 1,4,0
	bge 1,.L1752
	neg 4,4
	mr 5,9
.L1752:
	cmplw 5,3,4
	li 0,16
	mtctr 0
	mr 8,3
	mr 10,4
	li 12,1
	bgt 5,.L1753
	b .L1782
	.p2align 4,,15
.L1757:
	slwi 10,10,1
	slwi 12,12,1
	cmplw 0,8,10
	cmpwi 7,10,0
	ble 0,.L1755
	blt 7,.L1758
	slwi 10,10,1
	slwi 12,12,1
	cmplw 1,8,10
	ble 1,.L1755
	bdz .L1769
.L1753:
	cmpwi 6,10,0
	bge 6,.L1757
.L1758:
	li 11,0
	.p2align 4,,15
.L1763:
	rldicl 9,10,0,32
	rldicl 0,8,0,32
	subf 3,9,0
	subf 6,10,8
	srdi 4,3,63
	srwi 10,10,1
	xori 7,4,0x1
	andi. 0,7,0xff
	neg 9,0
	and 3,12,9
	srwi 12,12,1
	cmpwi 6,12,0
	or 11,11,3
	beq 0,.L1760
	mr 8,6
.L1760:
	bne 6,.L1763
.L1765:
	cmpwi 7,5,0
	rldicl 3,11,0,32
	beqlr 7
.L1785:
	neg 3,3
	blr
	.p2align 4,,15
.L1755:
	cmpwi 5,12,0
	bne 5,.L1758
	.p2align 4,,15
.L1769:
	cmpwi 7,5,0
	li 3,0
	beqlr 7
	b .L1785
.L1782:
	rldicl 6,3,0,32
	rldicl 3,4,0,32
	subf 4,3,6
	srdi 7,4,63
	xori 11,7,0x1
	b .L1765
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
	mr. 8,3
	li 6,0
	bge 0,.L1787
	neg 8,8
	li 6,1
.L1787:
	sradi 7,4,63
	li 9,16
	mtctr 9
	xor 4,7,4
	subf 0,7,4
	rldicl 3,8,0,32
	cmplw 1,8,0
	li 12,1
	mr 11,0
	bgt 1,.L1788
	b .L1820
	.p2align 4,,15
.L1792:
	slwi 11,11,1
	slwi 12,12,1
	cmplw 6,3,11
	cmpwi 7,11,0
	ble 6,.L1790
	blt 7,.L1818
	slwi 11,11,1
	slwi 12,12,1
	cmplw 1,3,11
	ble 1,.L1790
	bdz .L1791
.L1788:
	cmpwi 5,11,0
	bge 5,.L1792
	.p2align 4,,15
.L1818:
	rldicl 8,11,0,32
	rldicl 7,3,0,32
	subf. 8,8,7
	srwi 12,12,1
	subf 4,11,3
	cmpwi 5,12,0
	srwi 11,11,1
	blt 0,.L1795
	rldicl 3,4,0,32
.L1795:
	bne 5,.L1818
.L1791:
	cmpwi 6,6,0
	beqlr 6
	neg 3,3
	blr
	.p2align 4,,15
.L1790:
	cmpwi 0,12,0
	bne 0,.L1818
	b .L1791
	.p2align 4,,15
.L1820:
	rldicl 3,0,0,32
	rldicl 10,8,0,32
	subf. 9,3,10
	subf 5,0,8
	rldicl 3,8,0,32
	blt 0,.L1791
	rldicl 3,5,0,32
	b .L1791
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
	bge 0,.L2010
	andi. 9,4,0x8000
	bne 0,.L1827
	rldic 12,4,1,48
	cmplw 1,3,12
	ble 1,.L1900
	andi. 10,12,0x8000
	bne 0,.L1900
	rldic 12,4,2,48
	cmplw 5,3,12
	ble 5,.L1902
	andi. 10,12,0x8000
	bne 0,.L1902
	rldic 12,4,3,48
	cmplw 6,3,12
	ble 6,.L1904
	andi. 10,12,0x8000
	bne 0,.L1904
	rldic 12,4,4,48
	cmplw 7,3,12
	ble 7,.L1906
	andi. 10,12,0x8000
	bne 0,.L1906
	rldic 12,4,5,48
	cmplw 1,3,12
	ble 1,.L1908
	andi. 10,12,0x8000
	bne 0,.L1908
	rldic 12,4,6,48
	cmplw 5,3,12
	ble 5,.L1910
	andi. 10,12,0x8000
	bne 0,.L1910
	rldic 12,4,7,48
	cmplw 6,3,12
	ble 6,.L1912
	andi. 10,12,0x8000
	bne 0,.L1912
	rldic 12,4,8,48
	cmplw 7,3,12
	ble 7,.L1914
	andi. 10,12,0x8000
	bne 0,.L1914
	rldic 12,4,9,48
	cmplw 1,3,12
	ble 1,.L1916
	andi. 10,12,0x8000
	bne 0,.L1916
	rldic 12,4,10,48
	cmplw 5,3,12
	ble 5,.L1918
	andi. 10,12,0x8000
	bne 0,.L1918
	rldic 12,4,11,48
	cmplw 6,3,12
	ble 6,.L1920
	andi. 10,12,0x8000
	bne 0,.L1920
	rldic 12,4,12,48
	cmplw 7,3,12
	ble 7,.L1922
	andi. 10,12,0x8000
	bne 0,.L1922
	rldic 12,4,13,48
	cmplw 1,3,12
	ble 1,.L1924
	andi. 10,12,0x8000
	bne 0,.L1924
	rldic 12,4,14,48
	cmplw 5,3,12
	ble 5,.L1926
	andi. 10,12,0x8000
	bne 0,.L1926
	rldic 10,4,15,48
	cmplw 6,3,10
	ble 6,.L1927
	cmpdi 7,10,0
	li 11,0
	bne 7,.L1927
.L1830:
	cmpdi 7,5,0
	beq 7,.L1889
	mr 11,3
.L1889:
	rlwinm 3,11,0,0xffff
	blr
.L1900:
	li 8,2
	.p2align 4,,15
.L1829:
	subf. 4,12,3
	subf 0,12,3
	rlwinm 6,0,0,0xffff
	blt 0,.L1896
	mr 3,6
.L1896:
	not 7,4
	rlwinm 3,3,0,0xffff
	srdi 4,12,1
	sradi 10,7,63
	subf. 0,4,3
	subf 6,4,3
	rldicl 11,8,63,49
	and 9,8,10
	rlwinm 7,6,0,0xffff
	blt 0,.L1832
	mr 3,7
.L1832:
	srwi 4,8,2
	not 10,0
	cmpwi 1,4,0
	sradi 0,10,63
	and 11,11,0
	rlwinm 3,3,0,0xffff
	or 9,11,9
	srdi 6,12,2
	mr 11,9
	beq 1,.L1830
	subf 7,6,3
	subf 10,6,3
	srdi 0,7,63
	rlwinm 11,10,0,0xffff
	xori 6,0,0x1
	andi. 7,6,0xff
	beq 0,.L1836
	mr 3,11
.L1836:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq 5,.L1838
	mr 10,4
.L1838:
	srwi 4,8,3
	or 9,9,10
	cmpwi 6,4,0
	mr 11,9
	srwi 0,8,3
	srdi 6,12,3
	beq 6,.L1830
	subf 11,6,3
	subf 10,6,3
	srdi 7,11,63
	rlwinm 4,10,0,0xffff
	xori 6,7,0x1
	andi. 11,6,0xff
	beq 0,.L1840
	mr 3,4
.L1840:
	cmpwi 7,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1842
	mr 4,0
.L1842:
	srwi 0,8,4
	or 9,9,4
	cmpwi 1,0,0
	mr 11,9
	srwi 10,8,4
	srdi 6,12,4
	beq 1,.L1830
	subf 7,6,3
	subf 11,6,3
	srdi 4,7,63
	rlwinm 0,11,0,0xffff
	xori 6,4,0x1
	andi. 7,6,0xff
	beq 0,.L1844
	mr 3,0
.L1844:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1846
	mr 4,10
.L1846:
	srwi 11,8,5
	or 9,9,4
	cmpwi 6,11,0
	srwi 10,8,5
	mr 11,9
	srdi 0,12,5
	beq 6,.L1830
	subf 7,0,3
	subf 6,0,3
	srdi 4,7,63
	rlwinm 11,6,0,0xffff
	xori 0,4,0x1
	andi. 7,0,0xff
	beq 0,.L1848
	mr 3,11
.L1848:
	cmpwi 7,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1850
	mr 4,10
.L1850:
	srwi 6,8,6
	or 9,9,4
	cmpwi 1,6,0
	mr 11,9
	srwi 10,8,6
	srdi 0,12,6
	beq 1,.L1830
	subf 11,0,3
	subf 4,0,3
	srdi 7,11,63
	rlwinm 6,4,0,0xffff
	xori 0,7,0x1
	andi. 11,0,0xff
	beq 0,.L1852
	mr 3,6
.L1852:
	cmpwi 5,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1854
	mr 4,10
.L1854:
	srwi 7,8,7
	or 9,9,4
	cmpwi 6,7,0
	mr 11,9
	srwi 10,8,7
	srdi 6,12,7
	beq 6,.L1830
	subf 0,6,3
	subf 11,6,3
	srdi 4,0,63
	rlwinm 6,11,0,0xffff
	xori 7,4,0x1
	andi. 0,7,0xff
	beq 0,.L1856
	mr 3,6
.L1856:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1858
	mr 4,10
.L1858:
	srwi 11,8,8
	or 9,9,4
	cmpwi 1,11,0
	srwi 10,8,8
	mr 11,9
	srdi 6,12,8
	beq 1,.L1830
	subf 7,6,3
	subf 0,6,3
	srdi 4,7,63
	rlwinm 11,0,0,0xffff
	xori 6,4,0x1
	andi. 7,6,0xff
	beq 0,.L1860
	mr 3,11
.L1860:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1862
	mr 4,10
.L1862:
	srwi 0,8,9
	or 9,9,4
	cmpwi 6,0,0
	mr 11,9
	srwi 10,8,9
	srdi 6,12,9
	beq 6,.L1830
	subf 11,6,3
	subf 4,6,3
	srdi 7,11,63
	rlwinm 0,4,0,0xffff
	xori 6,7,0x1
	andi. 11,6,0xff
	beq 0,.L1864
	mr 3,0
.L1864:
	cmpwi 7,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1866
	mr 4,10
.L1866:
	srwi 7,8,10
	or 9,9,4
	cmpwi 1,7,0
	mr 11,9
	srwi 10,8,10
	srdi 0,12,10
	beq 1,.L1830
	subf 11,0,3
	subf 6,0,3
	srdi 4,11,63
	rlwinm 0,6,0,0xffff
	xori 7,4,0x1
	andi. 11,7,0xff
	beq 0,.L1868
	mr 3,0
.L1868:
	cmpwi 5,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1870
	mr 4,10
.L1870:
	srwi 6,8,11
	or 9,9,4
	cmpwi 6,6,0
	mr 11,9
	srwi 10,8,11
	srdi 0,12,11
	beq 6,.L1830
	subf 7,0,3
	subf 11,0,3
	srdi 4,7,63
	rlwinm 6,11,0,0xffff
	xori 0,4,0x1
	andi. 7,0,0xff
	beq 0,.L1872
	mr 3,6
.L1872:
	cmpwi 7,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1874
	mr 4,10
.L1874:
	srwi 11,8,12
	or 9,9,4
	cmpwi 1,11,0
	srwi 10,8,12
	mr 11,9
	srdi 6,12,12
	beq 1,.L1830
	subf 0,6,3
	subf 4,6,3
	srdi 7,0,63
	rlwinm 11,4,0,0xffff
	xori 6,7,0x1
	andi. 0,6,0xff
	beq 0,.L1876
	mr 3,11
.L1876:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1878
	mr 4,10
.L1878:
	srwi 7,8,13
	or 9,9,4
	cmpwi 6,7,0
	mr 11,9
	srwi 10,8,13
	srdi 6,12,13
	beq 6,.L1830
	subf 11,6,3
	subf 0,6,3
	srdi 4,11,63
	rlwinm 6,0,0,0xffff
	xori 7,4,0x1
	andi. 11,7,0xff
	beq 0,.L1880
	mr 3,6
.L1880:
	cmpwi 7,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1882
	mr 4,10
.L1882:
	srwi 0,8,14
	or 9,9,4
	cmpwi 1,0,0
	mr 11,9
	srwi 10,8,14
	srdi 6,12,14
	beq 1,.L1830
	subf 7,6,3
	subf 11,6,3
	srdi 4,7,63
	rlwinm 0,11,0,0xffff
	xori 6,4,0x1
	andi. 7,6,0xff
	beq 0,.L1884
	mr 3,0
.L1884:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1886
	mr 4,10
.L1886:
	cmpwi 6,8,16384
	or 8,9,4
	srdi 12,12,15
	mr 11,8
	beq 6,.L1830
	subf 10,12,3
	subf 9,12,3
	srdi 11,10,63
	rlwinm 0,9,0,0xffff
	xori 6,11,0x1
	andi. 7,6,0xff
	beq 0,.L1888
	mr 3,0
.L1888:
	rlwinm 3,3,0,0xffff
	or 11,8,7
	b .L1830
.L1902:
	li 8,4
	b .L1829
.L1904:
	li 8,8
	b .L1829
.L1906:
	li 8,16
	b .L1829
.L1916:
	li 8,512
	b .L1829
.L1908:
	li 8,32
	b .L1829
.L1910:
	li 8,64
	b .L1829
.L1912:
	li 8,128
	b .L1829
.L1914:
	li 8,256
	b .L1829
.L2010:
	xor 9,4,3
	subf 4,4,3
	cntlzw 0,9
	rlwinm 6,4,0,0xffff
	srwi 7,0,5
	andi. 11,7,0xff
	beq 0,.L1825
	mr 3,6
.L1825:
	rlwinm 3,3,0,0xffff
	b .L1830
.L1918:
	li 8,1024
	b .L1829
.L1920:
	li 8,2048
	b .L1829
.L1922:
	li 8,4096
	b .L1829
.L1924:
	li 8,8192
	b .L1829
.L1926:
	li 8,16384
	b .L1829
.L1927:
	li 9,-1
	li 8,0
	ori 8,8,0x8000
	rlwinm 12,9,0,16,16
	b .L1829
.L1827:
	subf 3,4,3
	li 11,1
	rlwinm 3,3,0,0xffff
	b .L1830
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
	li 8,32
	mtctr 8
	mr 9,3
	li 11,1
	blt 0,.L2012
	b .L2044
	.p2align 4,,15
.L2016:
	sldi 4,4,1
	sldi 11,11,1
	cmpld 5,9,4
	ble 5,.L2014
	andis. 3,4,0x8000
	bne 0,.L2017
	sldi 4,4,1
	sldi 11,11,1
	cmpld 6,9,4
	ble 6,.L2014
	bdz .L2015
.L2012:
	andis. 3,4,0x8000
	beq 0,.L2016
.L2017:
	li 3,0
	.p2align 4,,15
.L2022:
	subfc 6,4,9
	li 0,0
	subfe 7,7,7
	srdi 4,4,1
	addi 12,7,1
	andi. 8,12,0xff
	cmpwi 1,8,0
	beq 0,.L2019
	mr 9,6
.L2019:
	beq 1,.L2021
	mr 0,11
.L2021:
	srdi. 11,11,1
	or 3,3,0
	bne 0,.L2022
.L2015:
	cmpdi 5,5,0
	beqlr 5
	mr 3,9
	blr
	.p2align 4,,15
.L2014:
	cmpdi 7,11,0
	bne 7,.L2017
	b .L2015
	.p2align 4,,15
.L2044:
	subfc 4,4,3
	subfe 3,3,3
	addi 0,3,1
	rlwinm 10,0,0,0xff
	cmpwi 1,10,0
	beq 1,.L2025
	mr 9,4
.L2025:
	rlwinm 3,0,0,0xff
	b .L2015
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
	beq 0,.L2047
	addi 4,4,-32
	li 6,0
	slw 5,3,4
	rldicl 11,6,0,32
	sldi 7,5,32
	or 3,11,7
	blr
	.p2align 4,,15
.L2047:
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
	beq 0,.L2053
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L2053:
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
	beq 0,.L2058
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2058:
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
	beq 0,.L2064
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2064:
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
	rldicl 10,3,0,32
	addis 0,10,0xffff
	srdi 4,0,63
	slwi 5,4,4
	subfic 9,5,16
	srw 3,3,9
	rlwinm 6,3,0,16,23
	cntlzw 7,6
	srwi 8,7,5
	slwi 11,8,3
	subfic 12,11,8
	add 10,11,5
	srw 0,3,12
	rlwinm 4,0,0,24,27
	cntlzw 5,4
	srwi 9,5,5
	slwi 3,9,2
	subfic 6,3,4
	add 7,3,10
	srw 11,0,6
	rlwinm 8,11,0,28,29
	cntlzw 12,8
	srwi 10,12,5
	slwi 0,10,1
	subfic 4,0,2
	srw 5,11,4
	andi. 8,5,0x2
	bne 0,.L2071
	subfic 3,5,2
	add 9,0,7
	add 6,3,9
	extsw 3,6
	blr
	.p2align 4,,15
.L2071:
	li 3,0
	add 9,0,7
	add 6,3,9
	extsw 3,6
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
	cntlzd 9,4
	subfic 10,4,0
	subfe 10,10,10
	srdi 0,9,6
	and 4,10,4
	andi. 5,0,0xff
	bne 0,.L2075
	li 3,0
.L2075:
	or 3,4,3
	slwi 6,5,6
	cntlzd 7,3
	add 8,6,7
	rldicl 3,8,0,49
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
	blt 0,.L2078
	li 0,2
	bgt 0,.L2077
	cmplw 1,3,4
	li 0,0
	blt 1,.L2077
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2077:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2078:
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
	blt 0,.L2084
	li 5,1
	bgt 0,.L2083
	cmplw 1,3,4
	li 5,-1
	blt 1,.L2083
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L2083:
	extsw 3,5
	blr
	.p2align 4,,15
.L2084:
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
	blt 0,.L2088
	li 0,2
	bgt 0,.L2088
	cmpld 1,3,5
	li 0,0
	blt 1,.L2088
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2088:
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
	cntlzd 9,3
	srdi 0,9,6
	andi. 5,0,0xff
	bne 0,.L2096
	li 4,0
.L2096:
	addi 10,5,-1
	slwi 6,5,6
	extsw 7,10
	and 3,7,3
	or 4,4,3
	addi 8,4,-1
	andc 11,8,4
	popcntd 12,11
	add 9,6,12
	rldicl 3,9,0,32
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
	bne 0,.L2098
	cmpdi 1,4,0
	bne 1,.L2102
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2098:
	addi 3,9,-1
	andc 0,3,9
	popcntd 4,0
	addi 3,4,1
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2102:
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
	beq 0,.L2104
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2104:
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
	beq 0,.L2110
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2110:
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
	lis 0,0x5555
	std 25,-56(1)
	std 30,-16(1)
	sldi 12,4,63
	.cfi_offset 25, -56
	.cfi_offset 30, -16
	srdi 30,3,1
	ori 25,0,0x5555
	std 31,-8(1)
	std 28,-32(1)
	or 6,12,30
	rldimi 25,25,32,0
	std 27,-40(1)
	std 29,-24(1)
	and 7,6,25
	.cfi_offset 31, -8
	.cfi_offset 28, -32
	.cfi_offset 27, -40
	.cfi_offset 29, -24
	srdi 31,4,1
	std 26,-48(1)
	std 24,-64(1)
	.cfi_offset 26, -48
	.cfi_offset 24, -64
	subfc 10,7,3
	and 11,31,25
	subfe 28,11,4
	lis 9,0x3333
	srdi 8,10,2
	sldi 3,28,62
	ori 27,9,0x3333
	or 4,3,8
	rldimi 27,27,32,0
	srdi 29,28,2
	ld 24,-64(1)
	and 0,4,27
	and 25,10,27
	addc 6,0,25
	and 30,29,27
	and 31,28,27
	srdi 11,6,4
	adde 7,30,31
	lis 5,0xf0f
	ld 31,-8(1)
	rldimi 11,7,60,0
	srdi 28,7,4
	addc 8,11,6
	ori 29,5,0xf0f
	adde 3,28,7
	rldimi 29,29,32,0
	ld 28,-32(1)
	and 4,3,29
	and 9,8,29
	ld 29,-24(1)
	add 27,4,9
	srdi 26,27,32
	add 0,26,27
	ld 26,-48(1)
	ld 27,-40(1)
	srwi 30,0,16
	add 10,30,0
	ld 30,-16(1)
	srwi 12,10,8
	add 25,12,10
	rlwinm 3,25,0,0xff
	ld 25,-56(1)
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
	addis 9,2,.LC38@toc@ha
	fmr 0,1
	mr 3,4
	lfd 12,.LC38@toc@l(9)
	andi. 9,4,0x1
	fmr 1,12
	beq 0,.L2128
	.p2align 4,,15
.L2130:
	fmul 1,1,0
.L2128:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2129
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2130
.L2134:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2130
	b .L2134
	.p2align 4,,15
.L2129:
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
	addis 9,2,.LC39@toc@ha
	fmr 0,1
	mr 3,4
	lfs 12,.LC39@toc@l(9)
	andi. 9,4,0x1
	fmr 1,12
	beq 0,.L2136
	.p2align 4,,15
.L2138:
	fmuls 1,1,0
.L2136:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2137
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2138
.L2142:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2138
	b .L2142
	.p2align 4,,15
.L2137:
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
	blt 0,.L2145
	li 0,2
	bgt 0,.L2144
	cmplw 1,3,4
	li 0,0
	blt 1,.L2144
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2144:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2145:
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
	blt 0,.L2151
	li 5,1
	bgt 0,.L2150
	cmplw 1,3,4
	li 5,-1
	blt 1,.L2150
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L2150:
	extsw 3,5
	blr
	.p2align 4,,15
.L2151:
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
	blt 0,.L2155
	li 0,2
	bgt 0,.L2155
	cmpld 1,3,5
	li 0,0
	blt 1,.L2155
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2155:
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC0:
	.byte	30
	.byte	31
	.byte	28
	.byte	29
	.byte	26
	.byte	27
	.byte	24
	.byte	25
	.byte	22
	.byte	23
	.byte	20
	.byte	21
	.byte	18
	.byte	19
	.byte	16
	.byte	17
	.set	.LC2,.LC29+8
	.set	.LC3,.LC29
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC8:
	.long	-8388609
	.align 2
.LC9:
	.long	2139095039
	.set	.LC12,.LC16
	.set	.LC13,.LC17
	.section	.rodata.cst16
	.align 4
.LC16:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC17:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC21,.LC29+4
	.section	.rodata.cst4
	.align 2
.LC22:
	.long	1056964608
	.set	.LC25,.LC29
	.set	.LC26,.LC30
	.section	.rodata.cst16
	.align 4
.LC29:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC30:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC34:
	.long	0
	.long	-1074790400
	.align 3
.LC36:
	.long	0
	.long	-1075838976
	.align 3
.LC38:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC39:
	.long	1065353216
	.align 2
.LC45:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC47:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC48:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC49:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC50:
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
