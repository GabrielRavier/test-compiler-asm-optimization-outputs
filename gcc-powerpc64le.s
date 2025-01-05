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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	ble 0,.L5
	cmpdi 6,5,0
	add 4,4,5
	add 9,3,5
	beq 6,.L6
	andi. 10,5,0x1
	addi 8,5,-1
	beq 0,.L69
	lbzu 6,-1(4)
	cmpdi 7,8,0
	stbu 6,-1(9)
	beq 7,.L6
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
	lwz 4,-4(1)
	mtvrsave 4
	blr
	.p2align 4,,15
.L5:
	beq 0,.L6
	cmpdi 1,5,0
	beq 1,.L6
	addi 7,5,-1
	cmpldi 5,7,29
	mr 9,7
	ble 5,.L8
	addi 6,4,1
	subf 10,6,3
	cmpldi 6,10,14
	ble 6,.L8
	neg 12,3
	andi. 9,12,0xf
	beq 0,.L30
	andi. 8,12,0xe
	lbz 8,0(4)
	addi 11,3,1
	stb 8,0(3)
	beq 0,.L9
	cmpldi 7,9,2
	lbz 0,1(4)
	addi 6,4,2
	addi 11,3,2
	addi 7,5,-2
	stb 0,1(3)
	ble 7,.L9
	andi. 8,12,0xc
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
	lbz 0,4(4)
	addi 6,4,5
	addi 11,3,5
	addi 7,5,-5
	stb 0,4(3)
	beq 5,.L9
	cmpldi 6,9,6
	lbz 10,5(4)
	addi 6,4,6
	addi 11,3,6
	addi 7,5,-6
	stb 10,5(3)
	beq 6,.L9
	andi. 10,12,0x8
	lbz 12,6(4)
	addi 6,4,7
	addi 11,3,7
	addi 7,5,-7
	stb 12,6(3)
	beq 0,.L9
	cmpldi 7,9,8
	lbz 8,7(4)
	addi 6,4,8
	addi 11,3,8
	addi 7,5,-8
	stb 8,7(3)
	ble 7,.L9
	cmpldi 1,9,9
	lbz 0,8(4)
	addi 6,4,9
	addi 11,3,9
	addi 7,5,-9
	stb 0,8(3)
	beq 1,.L9
	cmpldi 5,9,10
	lbz 10,9(4)
	addi 6,4,10
	addi 11,3,10
	addi 7,5,-10
	stb 10,9(3)
	beq 5,.L9
	cmpldi 6,9,11
	lbz 12,10(4)
	addi 6,4,11
	addi 11,3,11
	addi 7,5,-11
	stb 12,10(3)
	beq 6,.L9
	cmpldi 0,9,12
	lbz 8,11(4)
	addi 6,4,12
	addi 11,3,12
	addi 7,5,-12
	stb 8,11(3)
	beq 0,.L9
	cmpldi 7,9,13
	lbz 0,12(4)
	addi 6,4,13
	addi 11,3,13
	addi 7,5,-13
	stb 0,12(3)
	beq 7,.L9
	cmpldi 1,9,15
	lbz 10,13(4)
	addi 6,4,14
	addi 11,3,14
	addi 7,5,-14
	stb 10,13(3)
	bne 1,.L9
	lbz 12,14(4)
	addi 6,4,15
	addi 11,3,15
	addi 7,5,-15
	stb 12,14(3)
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
	beq 0,.L6
	cmpldi 6,12,1
	lbzx 6,6,5
	stbx 6,11,5
	beq 6,.L6
	cmpldi 7,12,2
	lbz 11,1(4)
	stb 11,1(8)
	beq 7,.L6
	cmpldi 1,12,3
	lbz 7,2(4)
	stb 7,2(8)
	beq 1,.L6
	cmpldi 5,12,4
	lbz 9,3(4)
	stb 9,3(8)
	beq 5,.L6
	cmpldi 0,12,5
	lbz 10,4(4)
	stb 10,4(8)
	beq 0,.L6
	cmpldi 6,12,6
	lbz 0,5(4)
	stb 0,5(8)
	beq 6,.L6
	cmpldi 7,12,7
	lbz 5,6(4)
	stb 5,6(8)
	beq 7,.L6
	cmpldi 1,12,8
	lbz 6,7(4)
	stb 6,7(8)
	beq 1,.L6
	cmpldi 5,12,9
	lbz 11,8(4)
	stb 11,8(8)
	beq 5,.L6
	cmpldi 0,12,10
	lbz 7,9(4)
	stb 7,9(8)
	beq 0,.L6
	cmpldi 6,12,11
	lbz 9,10(4)
	stb 9,10(8)
	beq 6,.L6
	cmpldi 7,12,12
	lbz 10,11(4)
	stb 10,11(8)
	beq 7,.L6
	cmpldi 1,12,13
	lbz 0,12(4)
	stb 0,12(8)
	beq 1,.L6
	cmpldi 5,12,14
	lbz 12,13(4)
	stb 12,13(8)
	beq 5,.L6
	lbz 4,14(4)
	stb 4,14(8)
	b .L6
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
	b .L6
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
	b .L6
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
	mfvrsave 11
	oris 0,11,0xc01c
	stw 11,-4(1)
	mtvrsave 0
	cmpdi 0,5,1
	ble 0,.L256
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
	addi 12,10,.LC0@toc@l
	srdi 6,5,1
	li 9,0
	lvsl 11,0,7
	lvx 12,0,12
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
	sldi 11,8,3
	sldi 0,8,4
	cmpld 6,6,11
	subf 5,0,5
	add 10,4,0
	add 7,3,0
	beq 6,.L256
	cmpdi 7,5,3
	lhbrx 6,3,0
	sthx 6,4,0
	ble 7,.L256
	addi 3,7,2
	cmpdi 1,5,5
	lhbrx 4,0,3
	sth 4,2(10)
	ble 1,.L256
	addi 9,7,4
	cmpdi 0,5,7
	lhbrx 12,0,9
	sth 12,4(10)
	ble 0,.L256
	addi 11,7,6
	cmpdi 5,5,9
	lhbrx 0,0,11
	sth 0,6(10)
	ble 5,.L256
	addi 8,7,8
	cmpdi 6,5,11
	lhbrx 6,0,8
	sth 6,8(10)
	ble 6,.L256
	cmpdi 7,5,13
	addi 5,7,10
	lhbrx 3,0,5
	sth 3,10(10)
	ble 7,.L256
	addi 7,7,12
	lhbrx 4,0,7
	sth 4,12(10)
.L256:
	lwz 3,-4(1)
	mtvrsave 3
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
	srdi 12,5,1
	andi. 9,12,0x1
	addi 10,12,-1
	beq 0,.L266
	cmpdi 1,10,0
	lbz 11,1(3)
	lbz 9,0(3)
	addi 4,4,2
	addi 3,3,2
	stb 11,-2(4)
	stb 9,-1(4)
	beq 1,.L256
.L266:
	srdi 9,12,1
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
	b .L256
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
	b .L256
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
	beq 0,.L287
	xori 3,3,0x9
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
	.p2align 4,,15
.L287:
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
	ble 0,.L290
	xori 3,3,0x7f
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
	.p2align 4,,15
.L290:
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
	beq 0,.L297
	addi 3,3,-9
	rldicl 0,3,0,32
	subfic 4,0,4
	srdi 5,4,63
	xori 6,5,0x1
	rldicl 3,6,0,63
	blr
	.p2align 4,,15
.L297:
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
	ble 0,.L300
	addi 10,3,-127
	li 7,1
	cmplwi 1,10,32
	bgt 1,.L304
.L300:
	rldicl 3,7,0,63
	blr
	.p2align 4,,15
.L304:
	addi 0,3,-8232
	cmplwi 5,0,1
	ble 5,.L300
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
	ble 0,.L313
	cmplwi 1,3,8231
	li 12,1
	ble 1,.L308
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble 5,.L308
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble 6,.L308
	lis 0,0x10
	addi 5,4,4
	ori 6,0,0x3
	li 12,0
	cmplw 7,5,6
	bgt 7,.L308
	rlwinm 9,3,0,16,30
	xori 3,9,0xfffe
	cntlzw 7,3
	srwi 11,7,5
	xori 12,11,0x1
.L308:
	rldicl 3,12,0,63
	blr
	.p2align 4,,15
.L313:
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
	ble 0,.L316
	ori 3,3,0x20
	addi 0,3,-97
	rldicl 4,0,0,32
	subfic 5,4,5
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
	blr
	.p2align 4,,15
.L316:
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
	bun 1,.L322
	fcmpu 5,1,2
	bng 5,.L325
	fsub 1,1,2
	blr
	.p2align 4,,15
.L325:
	addis 9,2,.LC2@toc@ha
	lfd 1,.LC2@toc@l(9)
	blr
	.p2align 4,,15
.L322:
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
	bun 1,.L330
	fcmpu 5,1,2
	bng 5,.L333
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L333:
	addis 9,2,.LC3@toc@ha
	lfs 1,.LC3@toc@l(9)
	blr
	.p2align 4,,15
.L330:
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
	bun 0,.L339
	fcmpu 1,2,2
	bun 1,.L340
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L336
	cmpwi 7,0,0
	fmr 1,2
	bnelr 7
.L340:
	fmr 1,0
	blr
	.p2align 4,,15
.L336:
	fcmpu 6,1,2
	bnllr 6
.L339:
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
	bun 0,.L348
	fcmpu 1,2,2
	bun 1,.L349
	addi 9,1,-16
	addi 10,1,-16
	stfiwx 1,0,9
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,-16(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	beq 5,.L345
	cmpwi 7,3,0
	fmr 1,2
	bnelr 7
.L349:
	fmr 1,0
	blr
	.p2align 4,,15
.L345:
	fcmpu 6,1,2
	bnllr 6
.L348:
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
	bun 0,.L359
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
	beq 5,.L354
	cmpwi 7,0,0
	beqlr 7
.L359:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L354:
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
	bun 0,.L366
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
	bne 5,.L370
	fcmpu 6,1,2
	fmr 0,2
	bnl 6,.L365
	fmr 0,1
.L365:
	fmr 1,0
	blr
	.p2align 4,,15
.L370:
	cmpwi 7,0,0
	bnelr 7
.L366:
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
	bun 0,.L376
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
	bne 5,.L380
	fcmpu 6,1,2
	fmr 0,2
	bnl 6,.L375
	fmr 0,1
.L375:
	fmr 1,0
	blr
	.p2align 4,,15
.L380:
	cmpwi 7,3,0
	bnelr 7
.L376:
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
	bun 0,.L386
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
	beq 5,.L383
	cmpwi 7,0,0
	bnelr 7
.L386:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L383:
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
	beq 0,.L392
	addis 7,2,.LANCHOR1@toc@ha
	mr 10,3
	addi 4,7,.LANCHOR1@toc@l
	.p2align 5
.L391:
	rldicl 8,9,0,58
	srwi 9,9,6
	cmpwi 1,9,0
	addi 10,10,1
	lbzx 0,4,8
	stb 0,-1(10)
	bne 1,.L391
	li 5,0
	stb 5,0(10)
	blr
	.p2align 4,,15
.L392:
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
	beq 0,.L402
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
.L402:
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
	beq 0,.L404
	ld 10,8(3)
	std 10,8(9)
.L404:
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
	beq 0,.L413
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	mr 29,7
	li 30,0
	std 31,104(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L415
	.p2align 4,,15
.L427:
	beq 7,.L426
.L415:
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
	bne 1,.L427
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L412:
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
.L426:
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
.L413:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq 5,.L412
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
	beq 0,.L429
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
	b .L431
	.p2align 4,,15
.L439:
	beq 7,.L438
.L431:
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
	bne 1,.L439
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
.L438:
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
.L429:
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
.L448:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L442
	ble 7,.L442
	cmpwi 1,9,43
	beq 1,.L443
	cmpwi 6,9,45
	bne 6,.L463
	lbz 9,1(3)
	addi 11,3,1
	addi 0,9,-48
	cmplwi 0,0,9
	bgt 0,.L453
	li 5,1
.L446:
	li 3,0
	.p2align 5
.L450:
	addi 7,9,-48
	mulli 12,3,10
	lbzu 9,1(11)
	addi 6,9,-48
	subf 3,7,12
	cmplwi 1,6,9
	ble 1,.L450
	cmpwi 5,5,0
	bne 5,.L449
	subf 3,12,7
.L449:
	extsw 3,3
	blr
	.p2align 4,,15
.L442:
	addi 3,3,1
	b .L448
	.p2align 4,,15
.L463:
	addi 4,9,-48
	mr 11,3
	cmplwi 7,4,9
	li 5,0
	ble 7,.L446
.L453:
	li 3,0
	b .L449
	.p2align 4,,15
.L443:
	lbz 9,1(3)
	addi 11,3,1
	li 5,0
	addi 8,9,-48
	cmplwi 5,8,9
	ble 5,.L446
	li 3,0
	b .L449
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
.L471:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L465
	ble 7,.L465
	cmpwi 1,9,43
	beq 1,.L466
	cmpwi 6,9,45
	bne 6,.L486
	lbz 9,1(3)
	addi 8,3,1
	addi 3,9,-48
	cmplwi 0,3,9
	bgt 0,.L476
	li 5,1
.L469:
	li 3,0
	.p2align 5
.L473:
	addi 6,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 11,6
	addi 12,9,-48
	subf 3,11,7
	cmplwi 1,12,9
	ble 1,.L473
	cmpwi 5,5,0
	bnelr 5
	subf 3,7,11
	blr
	.p2align 4,,15
.L465:
	addi 3,3,1
	b .L471
	.p2align 4,,15
.L486:
	addi 4,9,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	ble 7,.L469
.L476:
	li 3,0
	blr
	.p2align 4,,15
.L466:
	lbz 9,1(3)
	addi 8,3,1
	li 5,0
	addi 0,9,-48
	cmplwi 5,0,9
	ble 5,.L469
	b .L476
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
.L492:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L488
	ble 7,.L488
	cmpwi 1,9,43
	beq 1,.L489
	cmpwi 6,9,45
	beq 6,.L490
	addi 4,9,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	bgt 7,.L499
.L493:
	li 3,0
	.p2align 5
.L496:
	addi 6,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 11,6
	addi 12,9,-48
	subf 3,11,7
	cmplwi 1,12,9
	ble 1,.L496
	cmpwi 5,5,0
	bnelr 5
	subf 3,7,11
	blr
	.p2align 4,,15
.L488:
	addi 3,3,1
	b .L492
	.p2align 4,,15
.L490:
	lbz 9,1(3)
	addi 8,3,1
	li 5,1
	addi 3,9,-48
	cmplwi 0,3,9
	ble 0,.L493
.L499:
	li 3,0
	blr
	.p2align 4,,15
.L489:
	lbz 9,1(3)
	addi 8,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	bgt 5,.L499
	li 5,0
	b .L493
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
	beq 0,.L510
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
	b .L513
	.p2align 4,,15
.L522:
	beq 1,.L520
	cmpdi 5,31,0
	add 27,30,26
	beq 5,.L521
.L513:
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
	bge 1,.L522
	mr 31,29
	cmpdi 5,31,0
	bne 5,.L513
.L521:
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
.L510:
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
.L520:
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
	beq 0,.L528
	mflr 0
	.cfi_register 65, 0
	std 2,24(1)
	std 28,64(1)
	.cfi_offset 28, -32
	std 0,112(1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L533:
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
	beq 1,.L537
.L539:
	cmpwi 5,28,0
	ble 1,.L526
	add 27,30,26
	bne 7,.L533
.L538:
	ld 3,112(1)
	ld 28,64(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L528:
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
.L526:
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
	beq 5,.L538
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
	bne 1,.L539
.L537:
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
	beq 0,.L551
	.p2align 5
.L548:
	cmpw 1,9,4
	beqlr 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne 5,.L548
.L551:
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
	beq 0,.L558
	b .L557
	.p2align 4,,15
.L559:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne 0,.L557
.L558:
	cmpwi 7,9,0
	bne 7,.L559
.L557:
	li 5,-1
	blt 0,.L560
	extsw 0,9
	extsw 3,10
	subf 4,0,3
	srdi 5,4,63
.L560:
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
.L563:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L563
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
	beq 0,.L569
	mr 4,3
	.p2align 4,,15
.L568:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne 1,.L568
	subf 3,3,4
	sradi 3,3,2
	blr
	.p2align 4,,15
.L569:
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
	beq 0,.L581
	mtctr 5
	b .L572
	.p2align 4,,15
.L584:
	beq 7,.L574
	addi 3,3,4
	addi 4,4,4
	bdz .L581
.L572:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	cmpwi 7,9,0
	beq 1,.L584
.L574:
	lwz 0,0(3)
	lwz 4,0(4)
	cmpw 5,0,4
	bge 5,.L576
	li 3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L576:
	extsw 5,0
	extsw 6,4
	subf 7,5,6
	srdi 3,7,63
	extsw 3,3
	blr
	.p2align 4,,15
.L581:
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
	beq 0,.L589
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L606
.L592:
	srdi 0,5,1
	mtctr 0
.L586:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr 7
	addi 3,3,4
	bdnz .L586
.L589:
	li 3,0
	blr
	.p2align 4,,15
.L606:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr 1
	cmpdi 5,9,0
	addi 3,3,4
	bne 5,.L592
	b .L589
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
	beq 0,.L613
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L630
.L616:
	srdi 0,5,1
	mtctr 0
	b .L608
	.p2align 4,,15
.L610:
	lwz 9,4(3)
	lwz 10,4(4)
	addi 3,7,4
	addi 4,5,4
	cmpw 1,9,10
	bne 1,.L625
	bdz .L613
.L608:
	lwz 9,0(3)
	lwz 10,0(4)
	addi 7,3,4
	addi 5,4,4
	cmpw 1,9,10
	beq 1,.L610
.L625:
	blt 1,.L631
	extsw 4,9
	extsw 6,10
	subf 11,4,6
	srdi 3,11,63
	extsw 3,3
	blr
	.p2align 4,,15
.L630:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne 1,.L625
	cmpdi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne 5,.L616
.L613:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L631:
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
	beq 0,.L633
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
.L633:
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	beq 0,.L659
	sldi 9,5,2
	subf 10,4,3
	cmpld 1,10,9
	blt 1,.L640
	cmpdi 5,5,0
	beq 5,.L659
	addi 7,5,-1
	cmpldi 6,7,10
	mr 12,7
	ble 6,.L644
	addi 6,4,4
	subf 8,6,3
	cmpldi 7,8,8
	ble 7,.L644
	srdi 11,3,2
	neg 0,11
	andi. 10,0,0x3
	beq 0,.L654
	andi. 9,0,0x2
	lwz 9,0(4)
	addi 11,3,4
	addi 7,5,-2
	stw 9,0(3)
	beq 0,.L645
	cmpldi 1,10,3
	lwz 7,4(4)
	stw 7,4(3)
	bne 1,.L699
	lwz 12,8(4)
	addi 6,4,12
	addi 11,3,12
	addi 7,5,-4
	stw 12,8(3)
.L645:
	subf 5,10,5
	sldi 10,10,2
	srdi 9,5,2
	add 8,4,10
	andi. 0,9,0x1
	neg 12,8
	lvx 0,4,10
	addi 0,10,15
	li 8,0
	lvsl 13,0,12
	add 10,3,10
	addi 12,9,-1
	add 4,4,0
	bne 0,.L700
.L674:
	srdi 9,9,1
	mtctr 9
.L649:
	lvx 1,4,8
	addi 0,8,16
	vperm 0,1,0,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,4,0
	vperm 1,0,1,13
	stvx 1,10,0
	bdnz .L649
.L686:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	sldi 12,5,2
	subf 4,5,7
	add 8,6,12
	add 10,11,12
	beq 0,.L659
	cmpdi 6,4,0
	lwzx 6,6,12
	stwx 6,11,12
	beq 6,.L659
	cmpldi 7,4,1
	lwz 11,4(8)
	stw 11,4(10)
	beq 7,.L659
	lwz 7,8(8)
	stw 7,8(10)
.L659:
	lwz 9,-4(1)
	mtvrsave 9
	blr
	.p2align 4,,15
.L640:
	cmpdi 1,5,0
	beq 1,.L659
	andi. 10,5,0x1
	add 4,4,9
	addi 7,5,-1
	add 9,3,9
	bne 0,.L701
.L668:
	srdi 10,5,1
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L693
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L643:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L643
	lwz 9,-4(1)
	mtvrsave 9
	blr
	.p2align 4,,15
.L693:
	lwz 5,-4(4)
	mr 12,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 5,4(9)
	lwz 0,-8(12)
	stw 0,-8(10)
	bdz .L659
	lwz 5,-4(4)
	mr 12,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 5,4(9)
	lwz 0,-8(12)
	stw 0,-8(10)
	bdnz .L693
	b .L659
	.p2align 4,,15
.L701:
	lwzu 8,-4(4)
	cmpdi 5,7,0
	stwu 8,-4(9)
	bne 5,.L668
	b .L659
	.p2align 4,,15
.L700:
	vor 1,0,0
	lvx 0,0,4
	cmpdi 5,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,10
	bne 5,.L674
	b .L686
	.p2align 4,,15
.L654:
	mr 6,4
	mr 11,3
	b .L645
	.p2align 4,,15
.L644:
	andi. 10,12,0x1
	addi 5,4,-4
	addi 8,3,-4
	bne 0,.L702
.L671:
	srdi 12,12,1
	addi 0,12,1
	mtctr 0
	b .L652
	.p2align 4,,15
.L703:
	lwz 11,4(10)
	addi 8,8,8
	stw 11,4(6)
.L652:
	lwz 4,4(5)
	addi 10,5,4
	addi 6,8,4
	addi 5,5,8
	stw 4,4(8)
	bdnz .L703
	b .L659
.L702:
	lwz 9,0(4)
	mr 5,4
	mr 8,3
	stw 9,0(3)
	b .L671
	.p2align 4,,15
.L699:
	addi 6,4,8
	addi 11,3,8
	addi 7,5,-3
	b .L645
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
	ble 1,.L713
	mfvrsave 11
	std 31,-8(1)
	oris 6,11,0x8000
	stw 11,-12(1)
	mtvrsave 6
	.cfi_offset 31, -8
	cmpdi 5,9,0
	mr 11,3
	beq 5,.L707
	andi. 10,0,0x2
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
	beq 0,.L707
	cmpldi 6,9,3
	stw 4,4(3)
	addi 11,3,8
	addi 7,5,-3
	bne 6,.L707
	stw 4,8(3)
	addi 11,3,12
	addi 7,5,-4
.L707:
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
	beq 0,.L735
	cmpdi 7,6,1
	beq 7,.L739
	cmpdi 1,6,2
	beq 1,.L740
	stvx 0,0,9
	mr 8,12
	addi 9,9,16
.L740:
	stvx 0,0,9
	addi 8,8,-1
	addi 9,9,16
.L739:
	stvx 0,0,9
	cmpdi 5,8,1
	addi 9,9,16
	beq 5,.L753
.L735:
	srdi 10,10,2
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L758
	addi 10,10,-1
	mtctr 10
	addi 8,9,16
	addi 6,8,16
.L711:
	stvx 0,0,9
	mr 10,9
	stvx 0,0,8
	addi 9,9,64
	addi 10,10,48
	stvx 0,0,6
	addi 8,9,16
	stvx 0,0,10
	addi 6,8,16
	bdnz .L711
	stvx 0,0,9
	stvx 0,0,8
	addi 10,9,48
	stvx 0,0,6
	stvx 0,0,10
.L753:
	andi. 9,5,0x3
	beq 0,.L705
	rldicr 5,5,0,61
	subf 7,5,7
	sldi 9,5,2
	cmpdi 7,7,0
	add 11,11,9
	stw 4,0(11)
	beq 7,.L705
	cmpldi 1,7,1
	stw 4,4(11)
	beq 1,.L705
	cmpldi 5,7,2
	stw 4,8(11)
	beq 5,.L705
	cmpldi 6,7,3
	stw 4,12(11)
	beq 6,.L705
	cmpldi 0,7,4
	stw 4,16(11)
	beq 0,.L705
	stw 4,20(11)
.L705:
	lwz 4,-12(1)
	mtvrsave 4
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L758:
	.cfi_restore_state
	stvx 0,0,9
	addi 12,9,16
	addi 10,9,48
	addi 6,9,32
	addi 9,9,64
	stvx 0,0,12
	stvx 0,0,6
	stvx 0,0,10
	bdz .L753
	stvx 0,0,9
	addi 12,9,16
	addi 10,9,48
	addi 6,9,32
	addi 9,9,64
	stvx 0,0,12
	stvx 0,0,6
	stvx 0,0,10
	bdnz .L758
	b .L753
.L713:
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	bge 0,.L772
	cmpdi 6,5,0
	add 3,3,5
	add 4,4,5
	beq 6,.L771
	andi. 9,5,0x1
	addi 0,5,-1
	beq 0,.L836
	lbzu 8,-1(3)
	cmpdi 7,0,0
	stbu 8,-1(4)
	beq 7,.L771
.L836:
	srdi 9,5,1
	mtctr 9
	cmpdi 1,9,2
	ble 1,.L874
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L774:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L774
.L771:
	lwz 4,-4(1)
	mtvrsave 4
	blr
	.p2align 4,,15
.L772:
	beq 0,.L771
	cmpdi 1,5,0
	beq 1,.L771
	addi 8,5,-1
	cmpldi 5,8,29
	mr 9,8
	ble 5,.L775
	addi 7,3,1
	subf 10,7,4
	cmpldi 6,10,14
	ble 6,.L775
	neg 12,4
	andi. 10,12,0xf
	beq 0,.L797
	andi. 6,12,0xe
	lbz 6,0(3)
	addi 11,4,1
	stb 6,0(4)
	beq 0,.L776
	cmpldi 7,10,2
	lbz 0,1(3)
	stb 0,1(4)
	ble 7,.L879
	andi. 8,12,0xc
	lbz 9,2(3)
	stb 9,2(4)
	beq 0,.L880
	cmpldi 1,10,4
	lbz 11,3(3)
	stb 11,3(4)
	ble 1,.L881
	cmpldi 5,10,5
	lbz 7,4(3)
	stb 7,4(4)
	beq 5,.L882
	cmpldi 6,10,6
	lbz 8,5(3)
	stb 8,5(4)
	beq 6,.L883
	andi. 9,12,0x8
	lbz 12,6(3)
	addi 7,3,7
	addi 11,4,7
	addi 8,5,-7
	stb 12,6(4)
	beq 0,.L776
	cmpldi 7,10,8
	lbz 6,7(3)
	addi 7,3,8
	addi 11,4,8
	addi 8,5,-8
	stb 6,7(4)
	ble 7,.L776
	cmpldi 1,10,9
	lbz 0,8(3)
	addi 7,3,9
	addi 11,4,9
	addi 8,5,-9
	stb 0,8(4)
	beq 1,.L776
	cmpldi 5,10,10
	lbz 9,9(3)
	addi 7,3,10
	addi 11,4,10
	addi 8,5,-10
	stb 9,9(4)
	beq 5,.L776
	cmpldi 6,10,11
	lbz 12,10(3)
	addi 7,3,11
	addi 11,4,11
	addi 8,5,-11
	stb 12,10(4)
	beq 6,.L776
	cmpldi 0,10,12
	lbz 6,11(3)
	addi 7,3,12
	addi 11,4,12
	addi 8,5,-12
	stb 6,11(4)
	beq 0,.L776
	cmpldi 7,10,13
	lbz 0,12(3)
	addi 7,3,13
	addi 11,4,13
	addi 8,5,-13
	stb 0,12(4)
	beq 7,.L776
	cmpldi 1,10,15
	lbz 9,13(3)
	addi 7,3,14
	addi 11,4,14
	addi 8,5,-14
	stb 9,13(4)
	bne 1,.L776
	lbz 12,14(3)
	addi 7,3,15
	addi 11,4,15
	addi 8,5,-15
	stb 12,14(4)
	.p2align 4,,15
.L776:
	subf 5,10,5
	add 6,3,10
	lvx 0,3,10
	srdi 9,5,4
	neg 6,6
	andi. 0,9,0x1
	addi 0,10,15
	add 4,4,10
	lvsl 13,0,6
	addi 12,9,-1
	add 3,3,0
	li 10,0
	bne 0,.L884
.L842:
	srdi 9,9,1
	mtctr 9
.L792:
	lvx 1,3,10
	addi 6,10,16
	vperm 0,1,0,13
	stvx 0,4,10
	addi 10,10,32
	lvx 0,3,6
	vperm 1,0,1,13
	stvx 1,4,6
	bdnz .L792
.L867:
	andi. 9,5,0xf
	rldicr 5,5,0,59
	subf 0,5,8
	add 4,11,5
	add 8,7,5
	beq 0,.L771
	cmpldi 6,0,1
	lbzx 7,7,5
	stbx 7,11,5
	beq 6,.L771
	cmpldi 7,0,2
	lbz 11,1(8)
	stb 11,1(4)
	beq 7,.L771
	cmpldi 1,0,3
	lbz 12,2(8)
	stb 12,2(4)
	beq 1,.L771
	cmpldi 5,0,4
	lbz 3,3(8)
	stb 3,3(4)
	beq 5,.L771
	cmpldi 0,0,5
	lbz 10,4(8)
	stb 10,4(4)
	beq 0,.L771
	cmpldi 6,0,6
	lbz 9,5(8)
	stb 9,5(4)
	beq 6,.L771
	cmpldi 7,0,7
	lbz 6,6(8)
	stb 6,6(4)
	beq 7,.L771
	cmpldi 1,0,8
	lbz 5,7(8)
	stb 5,7(4)
	beq 1,.L771
	cmpldi 5,0,9
	lbz 7,8(8)
	stb 7,8(4)
	beq 5,.L771
	cmpldi 0,0,10
	lbz 11,9(8)
	stb 11,9(4)
	beq 0,.L771
	cmpldi 6,0,11
	lbz 12,10(8)
	stb 12,10(4)
	beq 6,.L771
	cmpldi 7,0,12
	lbz 3,11(8)
	stb 3,11(4)
	beq 7,.L771
	cmpldi 1,0,13
	lbz 10,12(8)
	stb 10,12(4)
	beq 1,.L771
	cmpldi 5,0,14
	lbz 0,13(8)
	stb 0,13(4)
	beq 5,.L771
	lbz 8,14(8)
	stb 8,14(4)
	b .L771
	.p2align 4,,15
.L874:
	lbz 5,-1(3)
	mr 11,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 5,1(4)
	lbz 6,-2(11)
	stb 6,-2(9)
	bdz .L771
	lbz 5,-1(3)
	mr 11,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 5,1(4)
	lbz 6,-2(11)
	stb 6,-2(9)
	bdnz .L874
	b .L771
	.p2align 4,,15
.L884:
	vor 1,0,0
	lvx 0,0,3
	cmpdi 5,12,0
	li 10,16
	vperm 1,0,1,13
	stvx 1,0,4
	bne 5,.L842
	b .L867
	.p2align 4,,15
.L775:
	andi. 10,9,0x1
	addi 5,3,-1
	addi 11,4,-1
	bne 0,.L885
.L839:
	srdi 9,9,1
	addi 6,9,1
	mtctr 6
	b .L795
	.p2align 4,,15
.L886:
	lbz 10,1(3)
	addi 11,11,2
	stb 10,1(7)
.L795:
	lbz 12,1(5)
	addi 3,5,1
	addi 7,11,1
	addi 5,5,2
	stb 12,1(11)
	bdnz .L886
	b .L771
.L885:
	mr 11,4
	lbz 4,0(3)
	mr 5,3
	stb 4,0(11)
	b .L839
.L879:
	addi 7,3,2
	addi 11,4,2
	addi 8,5,-2
	b .L776
.L880:
	addi 7,3,3
	addi 11,4,3
	addi 8,5,-3
	b .L776
.L881:
	addi 7,3,4
	addi 11,4,4
	addi 8,5,-4
	b .L776
.L882:
	addi 7,3,5
	addi 11,4,5
	addi 8,5,-5
	b .L776
.L797:
	mr 11,4
	mr 7,3
	mr 8,5
	b .L776
.L883:
	addi 7,3,6
	addi 11,4,6
	addi 8,5,-6
	b .L776
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
	b .L903
	.p2align 4,,15
.L912:
	addi 9,9,1
	bne 0,.L902
	bdz .L911
.L903:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq 7,.L912
.L902:
	extsw 3,9
	blr
	.p2align 4,,15
.L911:
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
	beq 0,.L916
	andi. 3,9,0x1
	bne 0,.L914
	li 3,1
	.p2align 4,,15
.L915:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L915
.L914:
	extsw 3,3
	blr
	.p2align 4,,15
.L916:
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
	blt 0,.L920
	addis 3,2,.LC9@toc@ha
	lfs 2,.LC9@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L920:
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
	blt 0,.L923
	addis 3,2,.LC13@toc@ha
	lfd 2,.LC13@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L923:
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
	blt 0,.L926
	addis 4,2,.LC17@toc@ha
	addi 5,4,.LC17@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,1,12
	bne 1,$+8
	fcmpu 1,2,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L926:
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
	blt 5,.L942
	addis 9,2,.LC21@toc@ha
	lfs 2,.LC21@toc@l(9)
.L931:
	andi. 9,4,0x1
	beq 0,.L932
	.p2align 4,,15
.L933:
	fmuls 1,1,2
.L932:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L933
.L943:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L933
	b .L943
	.p2align 4,,15
.L942:
	addis 3,2,.LC22@toc@ha
	lfs 2,.LC22@toc@l(3)
	b .L931
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
	blt 5,.L957
	addis 9,2,.LC25@toc@ha
	lfd 2,.LC25@toc@l(9)
.L946:
	andi. 9,4,0x1
	beq 0,.L947
	.p2align 4,,15
.L948:
	fmul 1,1,2
.L947:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L948
.L958:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L948
	b .L958
	.p2align 4,,15
.L957:
	addis 3,2,.LC26@toc@ha
	lfd 2,.LC26@toc@l(3)
	b .L946
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
	bun 0,.L960
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
	beq 1,.L975
	cmpwi 5,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 5,.L976
	addis 9,2,.LC29@toc@ha
	addi 3,9,.LC29@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L961:
	andi. 9,31,0x1
	beq 0,.L962
	.p2align 4,,15
.L963:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L962:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L974
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
	bne 0,.L963
.L977:
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
	bne 0,.L963
	b .L977
	.p2align 4,,15
.L974:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L975:
	ld 6,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L960:
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
.L976:
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
	b .L961
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
	mfvrsave 11
	oris 0,11,0xc00c
	stw 11,-4(1)
	mtvrsave 0
	cmpdi 0,5,0
	beq 0,.L979
	neg 7,3
	addi 9,5,-1
	rldicl 10,7,0,60
	mr 6,9
	addi 8,10,15
	cmpldi 1,8,23
	mr 12,8
	blt 1,.L1020
.L981:
	cmpld 5,9,12
	blt 5,.L1001
	cmpdi 6,10,0
	beq 6,.L1002
	lbz 12,0(3)
	lbz 9,0(4)
	andi. 0,7,0xe
	xor 0,9,12
	stb 0,0(3)
	beq 0,.L1021
	lbz 6,1(3)
	lbz 11,1(4)
	cmpldi 7,10,2
	xor 9,11,6
	stb 9,1(3)
	ble 7,.L1022
	lbz 0,2(3)
	lbz 12,2(4)
	andi. 11,7,0xc
	xor 11,12,0
	stb 11,2(3)
	beq 0,.L1023
	lbz 6,3(3)
	lbz 9,3(4)
	cmpldi 1,10,4
	xor 12,9,6
	stb 12,3(3)
	ble 1,.L1024
	lbz 11,4(3)
	lbz 0,4(4)
	cmpldi 5,10,5
	xor 9,0,11
	stb 9,4(3)
	beq 5,.L1025
	lbz 6,5(3)
	lbz 12,5(4)
	cmpldi 6,10,6
	xor 0,12,6
	stb 0,5(3)
	beq 6,.L1026
	lbz 11,6(4)
	andi. 7,7,0x8
	lbz 7,6(3)
	addi 6,5,-7
	xor 9,11,7
	addi 11,4,7
	addi 7,3,7
	stb 9,6(3)
	beq 0,.L982
	lbz 6,7(3)
	lbz 12,7(4)
	cmpldi 7,10,8
	xor 0,12,6
	stb 0,7(3)
	ble 7,.L1027
	lbz 7,8(3)
	lbz 11,8(4)
	cmpldi 1,10,9
	xor 9,11,7
	stb 9,8(3)
	beq 1,.L1028
	lbz 6,9(3)
	lbz 12,9(4)
	cmpldi 5,10,10
	xor 0,12,6
	stb 0,9(3)
	beq 5,.L1029
	lbz 7,10(3)
	lbz 11,10(4)
	cmpldi 6,10,11
	xor 9,11,7
	stb 9,10(3)
	beq 6,.L1030
	lbz 6,11(3)
	lbz 12,11(4)
	cmpldi 0,10,12
	xor 0,12,6
	stb 0,11(3)
	beq 0,.L1031
	lbz 7,12(3)
	lbz 11,12(4)
	cmpldi 7,10,13
	xor 9,11,7
	stb 9,12(3)
	beq 7,.L1032
	lbz 6,13(3)
	lbz 12,13(4)
	cmpldi 1,10,15
	xor 0,12,6
	stb 0,13(3)
	bne 1,.L1033
	lbz 12,14(3)
	lbz 9,14(4)
	addi 11,4,15
	addi 7,3,15
	addi 6,5,-15
	xor 0,9,12
	stb 0,14(3)
	.p2align 4,,15
.L982:
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
.L998:
	vor 1,13,13
	lvx 13,4,9
	lvx 0,10,9
	vperm 1,13,1,12
	vxor 0,0,1
	stvx 0,10,9
	addi 9,9,16
	bdnz .L998
	andi. 9,5,0xf
	rldicr 0,5,0,59
	add 4,11,0
	add 8,7,0
	subf 11,0,6
	beq 0,.L979
	addi 9,11,-1
.L980:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 12,8,-1
	beq 0,.L1010
	lbz 6,0(8)
	lbz 5,0(4)
	mr 7,4
	mr 12,8
	xor 4,5,6
	stb 4,0(8)
.L1010:
	srdi 8,9,1
	addi 10,8,1
	mtctr 10
	b .L1000
	.p2align 4,,15
.L1034:
	lbz 8,1(5)
	lbz 4,1(11)
	addi 12,12,2
	xor 10,4,8
	stb 10,1(5)
.L1000:
	lbz 9,1(7)
	lbz 0,1(12)
	addi 11,7,1
	addi 5,12,1
	addi 7,7,2
	xor 6,9,0
	stb 6,1(12)
	bdnz .L1034
.L979:
	lwz 7,-4(1)
	mtvrsave 7
	blr
	.p2align 4,,15
.L1020:
	li 12,23
	b .L981
.L1024:
	addi 11,4,4
	addi 7,3,4
	addi 6,5,-4
	b .L982
.L1001:
	mr 8,3
	b .L980
.L1021:
	addi 11,4,1
	addi 7,3,1
	b .L982
.L1022:
	addi 11,4,2
	addi 7,3,2
	addi 6,5,-2
	b .L982
.L1023:
	addi 11,4,3
	addi 7,3,3
	addi 6,5,-3
	b .L982
.L1025:
	addi 11,4,5
	addi 7,3,5
	addi 6,5,-5
	b .L982
.L1002:
	mr 7,3
	mr 11,4
	mr 6,5
	b .L982
.L1031:
	addi 11,4,12
	addi 7,3,12
	addi 6,5,-12
	b .L982
.L1026:
	addi 11,4,6
	addi 7,3,6
	addi 6,5,-6
	b .L982
.L1027:
	addi 11,4,8
	addi 7,3,8
	addi 6,5,-8
	b .L982
.L1028:
	addi 11,4,9
	addi 7,3,9
	addi 6,5,-9
	b .L982
.L1029:
	addi 11,4,10
	addi 7,3,10
	addi 6,5,-10
	b .L982
.L1030:
	addi 11,4,11
	addi 7,3,11
	addi 6,5,-11
	b .L982
.L1032:
	addi 11,4,13
	addi 7,3,13
	addi 6,5,-13
	b .L982
.L1033:
	addi 11,4,14
	addi 7,3,14
	addi 6,5,-14
	b .L982
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
	beq 0,.L1036
	.p2align 4,,15
.L1037:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1037
.L1036:
	cmpdi 5,5,0
	beq 5,.L1038
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne 0,.L1061
.L1049:
	srdi 0,5,1
	mtctr 0
.L1039:
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
	bdnz .L1039
.L1038:
	li 6,0
	stb 6,0(9)
	blr
	.p2align 4,,15
.L1061:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr 6
	cmpdi 7,7,0
	addi 9,9,1
	bne 7,.L1049
	b .L1038
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
	beq 0,.L1074
	cmpdi 1,8,1
	beq 1,.L1085
	cmpdi 5,8,2
	beq 5,.L1086
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr 6
	li 3,1
.L1086:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr 7
	addi 3,3,1
.L1085:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr 1
	.p2align 4,,15
.L1074:
	srdi 10,10,2
.L1063:
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
	bne 1,.L1063
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
	beq 0,.L1100
.L1096:
	mr 10,4
	b .L1099
	.p2align 4,,15
.L1098:
	beqlr 7
.L1099:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne 1,.L1098
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne 5,.L1096
.L1100:
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
.L1108:
	lbz 10,0(9)
	mr 3,8
	cmpw 7,10,4
	cmpwi 0,10,0
	bne 7,.L1107
	mr 3,9
.L1107:
	addi 9,9,1
	mr 8,3
	bne 0,.L1108
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
	beq 0,.L1125
	mr 9,4
	.p2align 4,,15
.L1114:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1114
	subf. 6,4,9
	mr 3,8
	beqlr 0
	addi 3,6,-1
	b .L1133
	.p2align 4,,15
.L1136:
	cmpwi 6,12,0
	addi 8,8,1
	beq 6,.L1135
.L1133:
	lbz 12,0(8)
	cmpw 5,12,5
	bne 5,.L1136
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 10,11
	mr 7,8
	b .L1116
	.p2align 4,,15
.L1138:
	bdz .L1118
	bne 7,.L1119
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq 1,.L1137
	lbzu 10,1(6)
.L1116:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne 0,.L1138
.L1119:
	addi 8,8,1
	b .L1133
	.p2align 4,,15
.L1135:
	li 3,0
	blr
	.p2align 4,,15
.L1137:
	lbz 9,1(6)
.L1118:
	cmpw 5,12,9
	bne 5,.L1119
.L1125:
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
	blt 0,.L1149
	bnglr 0
	fcmpu 1,2,0
	bnllr 1
	fneg 1,1
	blr
	.p2align 4,,15
.L1149:
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
	blt 1,.L1158
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt 5,.L1158
	lbz 12,0(5)
	cmpldi 7,6,1
	addi 11,3,-1
	b .L1155
	.p2align 4,,15
.L1152:
	cmpld 1,0,9
	blt 1,.L1158
.L1155:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne 6,.L1152
	beqlr 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
	.p2align 5
.L1153:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne 0,.L1152
	bdnz .L1153
	blr
	.p2align 4,,15
.L1158:
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
	beq 0,.L1167
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L1167:
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
	blt 7,.L1195
	addis 3,2,.LC38@toc@ha
	li 10,0
	lfd 2,.LC38@toc@l(3)
	fcmpu 0,1,2
	cror 2,1,2
	bne 0,.L1196
.L1175:
	addis 12,2,.LC26@toc@ha
	addis 9,2,.LC38@toc@ha
	li 11,0
	lfd 7,.LC26@toc@l(12)
	lfd 8,.LC38@toc@l(9)
	.p2align 5
.L1181:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq 0,.L1181
	cmpwi 1,10,0
	stw 11,0(4)
	beqlr 1
.L1198:
	fneg 1,1
	blr
	.p2align 4,,15
.L1196:
	addis 5,2,.LC26@toc@ha
	lfd 3,.LC26@toc@l(5)
	fcmpu 1,1,3
	bnl 1,.L1178
	bne 7,.L1187
.L1178:
	li 0,0
	stw 0,0(4)
	blr
	.p2align 4,,15
.L1195:
	addis 6,2,.LC34@toc@ha
	fneg 12,1
	lfd 4,.LC34@toc@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne 5,.L1197
	fmr 1,12
	li 10,1
	b .L1175
	.p2align 4,,15
.L1197:
	addis 7,2,.LC36@toc@ha
	lfd 5,.LC36@toc@l(7)
	fcmpu 6,1,5
	bng 6,.L1178
	li 10,1
.L1176:
	addis 8,2,.LC26@toc@ha
	fmr 1,12
	li 11,0
	lfd 6,.LC26@toc@l(8)
	.p2align 4,,15
.L1183:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt 7,.L1183
	cmpwi 1,10,0
	stw 11,0(4)
	bne 1,.L1198
	blr
.L1187:
	fmr 12,1
	b .L1176
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
.L1201:
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
	bne 0,.L1201
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
	blt 0,.L1206
	b .L1235
	.p2align 4,,15
.L1210:
	rldicl 4,11,0,32
	slwi 10,10,1
	ble 7,.L1208
	cmpwi 5,4,0
	slwi 9,4,1
	cmplw 6,3,9
	blt 5,.L1211
	rldicl 4,9,0,32
	slwi 10,10,1
	ble 6,.L1208
	bdz .L1209
.L1206:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge 1,.L1210
.L1211:
	li 12,0
	.p2align 4,,15
.L1216:
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
	beq 0,.L1213
	mr 3,6
.L1213:
	rldicl 3,3,0,32
	bne 1,.L1216
.L1209:
	cmpdi 7,5,0
	beq 7,.L1217
	mr 12,3
.L1217:
	rldicl 3,12,0,32
	blr
	.p2align 4,,15
.L1208:
	cmpwi 0,10,0
	bne 0,.L1211
	li 12,0
	b .L1209
	.p2align 4,,15
.L1235:
	subf 0,4,3
	subf 4,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	beq 0,.L1219
	mr 3,4
.L1219:
	rldicl 3,3,0,32
	b .L1209
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
	beq 0,.L1240
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1240:
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
	beq 0,.L1243
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1243:
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
	beq 0,.L1245
	.p2align 5
.L1246:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne 0,.L1246
.L1245:
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
	blt 0,.L1253
	add 8,4,5
	mr 10,5
	cmpld 1,3,8
	ble 1,.L1379
.L1253:
	cmpwi 1,9,0
	addi 7,4,-8
	addi 8,3,-8
	beq 1,.L1324
	andi. 10,9,0x1
	addi 0,9,-1
	mr 11,9
	bne 0,.L1380
.L1303:
	srdi 10,11,1
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L1346
	addi 10,10,-1
	mtctr 10
	addi 9,9,-2
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 10,8,8
	std 11,8(10)
.L1256:
	addi 9,9,-2
	ld 11,16(6)
	std 11,16(10)
	addi 6,6,16
	ld 11,8(6)
	addi 10,10,16
	std 11,8(10)
	bdnz .L1256
.L1327:
	cmplw 7,12,5
	bgelr 7
	subf 7,12,5
	rldicl 11,12,0,32
	addi 8,7,-1
	cmplwi 1,8,29
	ble 1,.L1355
	mfvrsave 0
	oris 10,0,0xc004
	stw 0,-12(1)
	mtvrsave 10
	rldicl 11,12,0,32
	addi 0,11,1
	add 6,3,11
	add 8,4,0
	subf 10,8,6
	cmpldi 5,10,14
	ble 5,.L1258
	neg 8,6
	andi. 10,8,0xf
	beq 0,.L1268
	andi. 6,8,0xe
	lbzx 6,4,11
	stbx 6,3,11
	beq 0,.L1381
	std 31,-8(1)
	.cfi_offset 31, -8
	cmplwi 6,10,2
	addi 6,12,2
	lbzx 31,4,0
	stbx 31,3,0
	ble 6,.L1377
	rldicl 0,6,0,32
	addi 6,12,3
	lbzx 31,4,0
	stbx 31,3,0
	rldicr. 0,8,60,1
	beq 0,.L1377
	rldicl 0,6,0,32
	cmplwi 7,10,4
	addi 6,12,4
	lbzx 31,4,0
	stbx 31,3,0
	ble 7,.L1377
	rldicl 0,6,0,32
	cmplwi 1,10,5
	addi 6,12,5
	lbzx 31,4,0
	stbx 31,3,0
	beq 1,.L1377
	rldicl 0,6,0,32
	cmplwi 5,10,6
	addi 6,12,6
	lbzx 31,4,0
	stbx 31,3,0
	beq 5,.L1377
	rldicl 0,6,0,32
	andi. 8,8,0x8
	addi 6,12,7
	lbzx 8,4,0
	stbx 8,3,0
	beq 0,.L1377
	rldicl 31,6,0,32
	cmplwi 6,10,8
	addi 6,12,8
	lbzx 0,4,31
	stbx 0,3,31
	ble 6,.L1377
	rldicl 8,6,0,32
	cmplwi 7,10,9
	addi 6,12,9
	lbzx 31,4,8
	stbx 31,3,8
	beq 7,.L1377
	rldicl 8,6,0,32
	cmplwi 1,10,10
	addi 6,12,10
	lbzx 0,4,8
	stbx 0,3,8
	beq 1,.L1377
	rldicl 31,6,0,32
	cmplwi 5,10,11
	addi 6,12,11
	lbzx 8,4,31
	stbx 8,3,31
	beq 5,.L1377
	rldicl 31,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 0,4,31
	stbx 0,3,31
	beq 0,.L1377
	rldicl 8,6,0,32
	cmplwi 6,10,13
	addi 6,12,13
	lbzx 31,4,8
	stbx 31,3,8
	beq 6,.L1377
	rldicl 8,6,0,32
	cmplwi 7,10,15
	addi 6,12,14
	lbzx 0,4,8
	stbx 0,3,8
	bne 7,.L1377
	rldicl 31,6,0,32
	addi 6,12,15
	lbzx 12,4,31
	stbx 12,3,31
	ld 31,-8(1)
	.cfi_restore 31
	b .L1259
	.p2align 4,,15
.L1346:
	ld 0,8(7)
	mr 11,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 6,16(11)
	std 6,16(10)
	bdz .L1327
	ld 0,8(7)
	mr 11,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 6,16(11)
	std 6,16(10)
	bdnz .L1346
	b .L1327
	.p2align 4,,15
.L1380:
	mr. 9,0
	ld 6,0(4)
	mr 7,4
	mr 8,3
	std 6,0(3)
	bne 0,.L1303
	b .L1327
	.p2align 4,,15
.L1379:
	cmpdi 5,5,0
	addi 9,5,-1
	rldicl 5,9,0,32
	addi 0,5,1
	add 4,4,0
	add 3,3,0
	beqlr 5
	andi. 9,10,0x1
	addi 6,10,-1
	beq 0,.L1306
	lbzu 7,-1(4)
	cmpdi 6,6,0
	stbu 7,-1(3)
	beqlr 6
.L1306:
	srdi 9,10,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1347
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1266:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1266
	blr
	.p2align 4,,15
.L1377:
	.cfi_offset 31, -8
	ld 31,-8(1)
	.cfi_restore 31
.L1259:
	subf 7,10,7
	rldicl 10,10,0,32
	rldicl 8,7,60,36
	add 10,10,11
	andi. 11,8,0x1
	add 11,4,10
	neg 12,11
	addi 0,10,15
	lvx 0,4,10
	add 11,4,0
	add 10,3,10
	lvsl 13,0,12
	addi 12,8,-1
	beq 0,.L1300
	vor 1,0,0
	lvx 0,11,9
	cmpdi 1,12,0
	vperm 1,0,1,13
	stvx 1,10,9
	addi 9,9,16
	beq 1,.L1331
.L1300:
	srdi 8,8,1
	mtctr 8
.L1262:
	lvx 1,11,9
	addi 0,9,16
	vperm 0,1,0,13
	stvx 0,10,9
	addi 9,9,32
	lvx 0,11,0
	vperm 1,0,1,13
	stvx 1,10,0
	bdnz .L1262
.L1331:
	andi. 9,7,0xf
	rlwinm 9,7,0,0,27
	add 6,9,6
	beq 0,.L1249
	rldicl 11,6,0,32
	addi 10,6,1
	cmplw 5,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bge 5,.L1249
	rldicl 12,10,0,32
	addi 8,6,2
	cmplw 6,8,5
	lbzx 0,4,12
	stbx 0,3,12
	bge 6,.L1249
	rldicl 9,8,0,32
	addi 11,6,3
	cmplw 7,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 7,.L1249
	rldicl 12,11,0,32
	addi 8,6,4
	cmplw 1,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 1,.L1249
	rldicl 0,8,0,32
	addi 9,6,5
	cmplw 0,9,5
	lbzx 11,4,0
	stbx 11,3,0
	bge 0,.L1249
	rldicl 10,9,0,32
	addi 12,6,6
	cmplw 5,12,5
	lbzx 8,4,10
	stbx 8,3,10
	bge 5,.L1249
	rldicl 0,12,0,32
	addi 9,6,7
	cmplw 6,9,5
	lbzx 7,4,0
	stbx 7,3,0
	bge 6,.L1249
	rldicl 11,9,0,32
	addi 10,6,8
	cmplw 7,10,5
	lbzx 12,4,11
	stbx 12,3,11
	bge 7,.L1249
	rldicl 8,10,0,32
	addi 0,6,9
	cmplw 1,0,5
	lbzx 9,4,8
	stbx 9,3,8
	bge 1,.L1249
	rldicl 11,0,0,32
	addi 10,6,10
	cmplw 0,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bge 0,.L1249
	rldicl 12,10,0,32
	addi 8,6,11
	cmplw 5,8,5
	lbzx 0,4,12
	stbx 0,3,12
	bge 5,.L1249
	rldicl 9,8,0,32
	addi 11,6,12
	cmplw 6,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 6,.L1249
	rldicl 12,11,0,32
	addi 8,6,13
	cmplw 7,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 7,.L1249
	rldicl 0,8,0,32
	addi 6,6,14
	cmplw 1,6,5
	lbzx 5,4,0
	stbx 5,3,0
	bge 1,.L1249
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
.L1249:
	lwz 5,-12(1)
	mtvrsave 5
	blr
	.p2align 4,,15
.L1347:
	lbz 11,-1(4)
	mr 12,4
	mr 10,3
	addi 4,4,-2
	addi 3,3,-2
	stb 11,1(3)
	lbz 8,-2(12)
	stb 8,-2(10)
	bdnz .L1347
.L1354:
	blr
.L1381:
	addi 6,12,1
	b .L1259
.L1258:
	rldicl 10,7,0,32
	addi 11,11,-1
	andi. 9,10,0x1
	add 4,4,11
	add 11,3,11
	addi 3,10,-1
	beq 0,.L1297
	lbzu 12,1(4)
	cmpdi 5,3,0
	stbu 12,1(11)
	beq 5,.L1249
.L1297:
	srdi 9,10,1
	mtctr 9
	cmpdi 6,9,2
	ble 6,.L1345
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(11)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,11,1
	stb 8,1(9)
.L1264:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1264
	b .L1249
	.p2align 4,,15
.L1345:
	lbz 8,1(4)
	mr 7,4
	mr 6,11
	addi 4,4,2
	addi 11,11,2
	stb 8,-1(11)
	lbz 0,2(7)
	stb 0,2(6)
	bdnz .L1345
	b .L1249
	.p2align 4,,15
.L1324:
	cmpdi 5,5,0
	rldicl 11,12,0,32
	mr 7,5
	beqlr 5
.L1355:
	rldicl 10,7,0,32
	addi 11,11,-1
	andi. 9,10,0x1
	add 4,4,11
	addi 9,10,-1
	add 11,3,11
	bne 0,.L1382
.L1357:
	srdi 9,10,1
	mtctr 9
	cmpdi 1,9,2
	ble 1,.L1361
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(11)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,11,1
	stb 8,1(9)
.L1360:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1360
	blr
.L1361:
	lbz 12,1(4)
	mr 8,4
	mr 7,11
	addi 4,4,2
	addi 11,11,2
	stb 12,-1(11)
	lbz 6,2(8)
	stb 6,2(7)
	bdnz .L1361
	blr
.L1382:
	lbzu 3,1(4)
	cmpdi 7,9,0
	stbu 3,1(11)
	bne 7,.L1357
	blr
	.p2align 4,,15
.L1268:
	mr 6,12
	b .L1259
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-4(1)
	mtvrsave 0
	cmpld 0,3,4
	srwi 7,5,1
	blt 0,.L1387
	add 10,4,5
	mr 9,5
	cmpld 1,3,10
	ble 1,.L1448
.L1387:
	cmpwi 1,7,0
	beq 1,.L1386
	addi 6,7,-1
	cmplwi 5,6,13
	ble 5,.L1390
	addi 8,4,2
	subf 12,8,3
	cmpldi 0,12,12
	ble 0,.L1390
	srdi 11,3,1
	neg 0,11
	andi. 9,0,0x7
	beq 0,.L1399
	rldicr. 8,0,61,1
	lhz 10,0(4)
	sth 10,0(3)
	beq 0,.L1400
	cmplwi 6,9,2
	lhz 6,2(4)
	sth 6,2(3)
	ble 6,.L1401
	andi. 10,0,0x4
	lhz 8,4(4)
	sth 8,4(3)
	beq 0,.L1402
	cmplwi 7,9,4
	lhz 12,6(4)
	sth 12,6(3)
	ble 7,.L1403
	cmplwi 1,9,5
	lhz 11,8(4)
	sth 11,8(3)
	beq 1,.L1404
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne 5,.L1405
	lhz 10,12(4)
	li 0,7
	sth 10,12(3)
.L1391:
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
	beq 0,.L1418
	vor 1,0,0
	lvx 0,0,11
	cmpdi 6,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,9
	beq 6,.L1432
.L1418:
	srdi 10,10,1
	mtctr 10
.L1393:
	lvx 1,11,8
	addi 12,8,16
	vperm 0,1,0,13
	stvx 0,9,8
	addi 8,8,32
	lvx 0,11,12
	vperm 1,0,1,13
	stvx 1,9,12
	bdnz .L1393
.L1432:
	andi. 9,6,0x7
	rlwinm 6,6,0,0,28
	add 11,6,0
	beq 0,.L1386
	rldic 0,11,1,31
	addi 9,11,1
	cmplw 7,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 7,.L1386
	rldic 10,9,1,31
	addi 12,11,2
	cmplw 1,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble 1,.L1386
	rldic 0,12,1,31
	addi 9,11,3
	cmplw 5,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 5,.L1386
	rldic 10,9,1,31
	addi 12,11,4
	cmplw 6,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble 6,.L1386
	rldic 0,12,1,31
	addi 9,11,5
	cmplw 0,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 0,.L1386
	rldic 10,9,1,31
	addi 11,11,6
	cmplw 7,7,11
	lhzx 7,4,10
	sthx 7,3,10
	ble 7,.L1386
	rldic 12,11,1,31
	lhzx 6,4,12
	sthx 6,3,12
.L1386:
	andi. 9,5,0x1
	beq 0,.L1383
	addi 5,5,-1
	rldicl 10,5,0,32
	lbzx 4,4,10
	stbx 4,3,10
.L1383:
	lwz 3,-4(1)
	mtvrsave 3
	blr
	.p2align 4,,15
.L1448:
	cmpdi 5,5,0
	addi 5,5,-1
	rldicl 6,5,0,32
	addi 8,6,1
	add 4,4,8
	add 3,3,8
	beq 5,.L1383
	andi. 10,9,0x1
	addi 12,9,-1
	beq 0,.L1421
	lbzu 11,-1(4)
	cmpdi 6,12,0
	stbu 11,-1(3)
	beq 6,.L1383
.L1421:
	srdi 9,9,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1443
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1398:
	addi 4,10,-1
	lbz 8,-1(4)
	addi 3,9,-1
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
	bdnz .L1398
	b .L1383
	.p2align 4,,15
.L1443:
	lbz 0,-1(4)
	mr 7,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(7)
	stb 10,-2(9)
	bdz .L1383
	lbz 0,-1(4)
	mr 7,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(7)
	stb 10,-2(9)
	bdnz .L1443
	b .L1383
.L1399:
	li 0,0
	b .L1391
	.p2align 4,,15
.L1390:
	andi. 9,7,0x1
	addi 10,4,-2
	addi 0,7,-1
	addi 9,3,-2
	beq 0,.L1415
	cmpdi 1,0,0
	lhz 8,0(4)
	mr 10,4
	mr 9,3
	sth 8,0(3)
	beq 1,.L1386
.L1415:
	srdi 8,7,1
	mtctr 8
	cmpdi 5,8,2
	ble 5,.L1442
	addi 8,8,-1
	mtctr 8
	lhz 6,2(10)
	sth 6,2(9)
	addi 7,10,2
	lhz 6,2(7)
	addi 8,9,2
	sth 6,2(8)
.L1395:
	lhz 6,4(7)
	sth 6,4(8)
	addi 7,7,4
	lhz 6,2(7)
	addi 8,8,4
	sth 6,2(8)
	bdnz .L1395
	b .L1386
	.p2align 4,,15
.L1442:
	lhz 11,2(10)
	mr 7,10
	mr 12,9
	addi 10,10,4
	addi 9,9,4
	sth 11,-2(9)
	lhz 6,4(7)
	sth 6,4(12)
	bdnz .L1442
	b .L1386
.L1400:
	li 0,1
	b .L1391
.L1401:
	li 0,2
	b .L1391
.L1405:
	li 0,6
	b .L1391
.L1402:
	li 0,3
	b .L1391
.L1403:
	li 0,4
	b .L1391
.L1404:
	li 0,5
	b .L1391
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
	mfvrsave 11
	oris 0,11,0xc004
	stw 11,-12(1)
	mtvrsave 0
	cmpld 0,3,4
	srwi 11,5,2
	rlwinm 12,5,0,0,29
	blt 0,.L1454
	add 10,4,5
	mr 9,5
	cmpld 1,3,10
	ble 1,.L1574
.L1454:
	cmpwi 1,11,0
	beq 1,.L1575
	addi 6,11,-1
	cmplwi 0,6,10
	ble 0,.L1456
	addi 7,4,4
	subf 8,7,3
	cmpldi 6,8,8
	ble 6,.L1456
	std 31,-8(1)
	.cfi_offset 31, -8
	srdi 31,3,2
	li 0,0
	neg 9,31
	andi. 10,9,0x3
	beq 0,.L1457
	andi. 9,9,0x2
	lwz 6,0(4)
	li 0,1
	stw 6,0(3)
	beq 0,.L1457
	cmplwi 7,10,3
	lwz 7,4(4)
	li 0,2
	stw 7,4(3)
	bne 7,.L1457
	lwz 8,8(4)
	li 0,3
	stw 8,8(3)
.L1457:
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
	bne 0,.L1576
.L1515:
	srdi 9,9,1
	mtctr 9
.L1459:
	lvx 1,7,8
	addi 31,8,16
	vperm 0,1,0,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,7,31
	vperm 1,0,1,13
	stvx 1,10,31
	bdnz .L1459
.L1546:
	andi. 9,6,0x3
	rlwinm 6,6,0,0,29
	add 7,6,0
	beq 0,.L1573
	rldic 0,7,2,30
	addi 10,7,1
	cmplw 5,11,10
	lwzx 8,4,0
	stwx 8,3,0
	ble 5,.L1573
	rldic 9,10,2,30
	addi 31,7,2
	cmplw 6,11,31
	lwzx 11,4,9
	stwx 11,3,9
	ble 6,.L1573
	rldic 6,31,2,30
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	lwzx 7,4,6
	stwx 7,3,6
	b .L1462
	.p2align 4,,15
.L1576:
	.cfi_restore_state
	vor 1,0,0
	lvx 0,0,7
	cmpdi 1,31,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,10
	bne 1,.L1515
	b .L1546
	.p2align 4,,15
.L1574:
	.cfi_restore 31
	cmpdi 5,5,0
	addi 5,5,-1
	rldicl 6,5,0,32
	addi 7,6,1
	add 4,4,7
	add 3,3,7
	beq 5,.L1449
	andi. 10,9,0x1
	addi 8,9,-1
	beq 0,.L1518
	lbzu 12,-1(4)
	cmpdi 6,8,0
	stbu 12,-1(3)
	beq 6,.L1449
.L1518:
	srdi 9,9,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1563
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1470:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1470
.L1449:
	lwz 7,-12(1)
	mtvrsave 7
	blr
	.p2align 4,,15
.L1573:
	.cfi_offset 31, -8
	ld 31,-8(1)
	.cfi_restore 31
.L1462:
	cmplw 5,12,5
	bge 5,.L1449
	subf 9,12,5
	rldicl 7,12,0,32
	addi 10,9,-1
	cmplwi 6,10,29
	ble 6,.L1452
	addi 11,7,1
	add 8,3,7
	add 6,4,11
	subf 0,6,8
	cmpldi 0,0,14
	ble 0,.L1452
	neg 8,8
	andi. 10,8,0xf
	beq 0,.L1475
	andi. 6,8,0xe
	lbzx 0,4,7
	stbx 0,3,7
	beq 0,.L1577
	cmplwi 7,10,2
	lbzx 0,4,11
	addi 6,12,2
	stbx 0,3,11
	ble 7,.L1463
	rldicl 11,6,0,32
	addi 6,12,3
	lbzx 0,4,11
	stbx 0,3,11
	rldicr. 11,8,60,1
	beq 0,.L1463
	rldicl 11,6,0,32
	cmplwi 1,10,4
	addi 6,12,4
	lbzx 0,4,11
	stbx 0,3,11
	ble 1,.L1463
	rldicl 11,6,0,32
	cmplwi 5,10,5
	addi 6,12,5
	lbzx 0,4,11
	stbx 0,3,11
	beq 5,.L1463
	rldicl 11,6,0,32
	cmplwi 6,10,6
	addi 6,12,6
	lbzx 0,4,11
	stbx 0,3,11
	beq 6,.L1463
	rldicl 11,6,0,32
	andi. 8,8,0x8
	addi 6,12,7
	lbzx 8,4,11
	stbx 8,3,11
	beq 0,.L1463
	rldicl 0,6,0,32
	cmplwi 7,10,8
	addi 6,12,8
	lbzx 11,4,0
	stbx 11,3,0
	ble 7,.L1463
	rldicl 8,6,0,32
	cmplwi 1,10,9
	addi 6,12,9
	lbzx 0,4,8
	stbx 0,3,8
	beq 1,.L1463
	rldicl 8,6,0,32
	cmplwi 5,10,10
	addi 6,12,10
	lbzx 11,4,8
	stbx 11,3,8
	beq 5,.L1463
	rldicl 0,6,0,32
	cmplwi 6,10,11
	addi 6,12,11
	lbzx 8,4,0
	stbx 8,3,0
	beq 6,.L1463
	rldicl 0,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 11,4,0
	stbx 11,3,0
	beq 0,.L1463
	rldicl 8,6,0,32
	cmplwi 7,10,13
	addi 6,12,13
	lbzx 0,4,8
	stbx 0,3,8
	beq 7,.L1463
	rldicl 8,6,0,32
	cmplwi 1,10,15
	addi 6,12,14
	lbzx 11,4,8
	stbx 11,3,8
	bne 1,.L1463
	rldicl 0,6,0,32
	addi 6,12,15
	lbzx 12,4,0
	stbx 12,3,0
	.p2align 4,,15
.L1463:
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
	beq 0,.L1509
	vor 1,0,0
	lvx 0,0,11
	cmpdi 5,0,0
	li 12,16
	vperm 1,0,1,13
	stvx 1,0,10
	beq 5,.L1545
.L1509:
	srdi 8,8,1
	mtctr 8
.L1466:
	lvx 1,11,12
	addi 7,12,16
	vperm 0,1,0,13
	stvx 0,10,12
	addi 12,12,32
	lvx 0,11,7
	vperm 1,0,1,13
	stvx 1,10,7
	bdnz .L1466
.L1545:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 6,9,6
	beq 0,.L1449
	rldicl 11,6,0,32
	addi 10,6,1
	cmplw 6,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 6,.L1449
	rldicl 12,10,0,32
	addi 8,6,2
	cmplw 7,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 7,.L1449
	rldicl 9,8,0,32
	addi 11,6,3
	cmplw 1,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 1,.L1449
	rldicl 0,11,0,32
	addi 12,6,4
	cmplw 5,12,5
	lbzx 8,4,0
	stbx 8,3,0
	bge 5,.L1449
	rldicl 9,12,0,32
	addi 11,6,5
	cmplw 0,11,5
	lbzx 7,4,9
	stbx 7,3,9
	bge 0,.L1449
	rldicl 10,11,0,32
	addi 0,6,6
	cmplw 6,0,5
	lbzx 12,4,10
	stbx 12,3,10
	bge 6,.L1449
	rldicl 8,0,0,32
	addi 9,6,7
	cmplw 7,9,5
	lbzx 11,4,8
	stbx 11,3,8
	bge 7,.L1449
	rldicl 10,9,0,32
	addi 0,6,8
	cmplw 1,0,5
	lbzx 7,4,10
	stbx 7,3,10
	bge 1,.L1449
	rldicl 12,0,0,32
	addi 8,6,9
	cmplw 5,8,5
	lbzx 9,4,12
	stbx 9,3,12
	bge 5,.L1449
	rldicl 11,8,0,32
	addi 10,6,10
	cmplw 0,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 0,.L1449
	rldicl 12,10,0,32
	addi 8,6,11
	cmplw 6,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 6,.L1449
	rldicl 9,8,0,32
	addi 11,6,12
	cmplw 7,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 7,.L1449
	rldicl 0,11,0,32
	addi 12,6,13
	cmplw 1,12,5
	lbzx 8,4,0
	stbx 8,3,0
	bge 1,.L1449
	rldicl 7,12,0,32
	addi 6,6,14
	cmplw 5,6,5
	lbzx 5,4,7
	stbx 5,3,7
	bge 5,.L1449
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
	b .L1449
	.p2align 4,,15
.L1563:
	lbz 0,-1(4)
	mr 11,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(11)
	stb 10,-2(9)
	bdz .L1449
	lbz 0,-1(4)
	mr 11,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(11)
	stb 10,-2(9)
	bdnz .L1563
	b .L1449
	.p2align 4,,15
.L1575:
	cmpdi 5,5,0
	rldicl 7,12,0,32
	mr 9,5
	beq 5,.L1449
.L1452:
	rldicl 11,9,0,32
	addi 0,7,-1
	andi. 10,11,0x1
	add 7,3,0
	add 4,4,0
	addi 3,11,-1
	beq 0,.L1506
	lbzu 10,1(4)
	cmpdi 6,3,0
	stbu 10,1(7)
	beq 6,.L1449
.L1506:
	srdi 9,11,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1561
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(7)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,7,1
	stb 8,1(9)
.L1468:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1468
	b .L1449
	.p2align 4,,15
.L1561:
	lbz 12,1(4)
	mr 8,4
	mr 6,7
	addi 4,4,2
	addi 7,7,2
	stb 12,-1(7)
	lbz 5,2(8)
	stb 5,2(6)
	bdnz .L1561
	b .L1449
	.p2align 4,,15
.L1456:
	andi. 9,11,0x1
	addi 10,4,-4
	addi 0,11,-1
	addi 9,3,-4
	beq 0,.L1512
	cmpdi 7,0,0
	lwz 8,0(4)
	mr 10,4
	mr 9,3
	stw 8,0(3)
	beq 7,.L1462
.L1512:
	srdi 8,11,1
	mtctr 8
	cmpdi 1,8,2
	ble 1,.L1562
	addi 8,8,-1
	mtctr 8
	lwz 6,4(10)
	stw 6,4(9)
	addi 7,10,4
	lwz 6,4(7)
	addi 8,9,4
	stw 6,4(8)
.L1461:
	lwz 6,8(7)
	stw 6,8(8)
	addi 7,7,8
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L1461
	b .L1462
	.p2align 4,,15
.L1562:
	lwz 11,4(10)
	mr 6,10
	mr 7,9
	addi 10,10,8
	addi 9,9,8
	stw 11,-4(9)
	lwz 0,8(6)
	stw 0,8(7)
	bdnz .L1562
	b .L1462
.L1577:
	addi 6,12,1
	b .L1463
.L1475:
	mr 6,12
	b .L1463
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
	bne 0,.L1587
	srawi 9,3,14
	cmpwi 1,9,0
	bne 1,.L1586
	srdi. 9,3,13
	bne 0,.L1588
	srdi. 9,3,12
	bne 0,.L1589
	srdi. 9,3,11
	bne 0,.L1590
	srdi. 9,3,10
	bne 0,.L1591
	srdi. 9,3,9
	bne 0,.L1592
	srdi. 9,3,8
	bne 0,.L1593
	srdi. 9,3,7
	bne 0,.L1594
	srdi. 9,3,6
	bne 0,.L1595
	srdi. 9,3,5
	bne 0,.L1596
	srdi. 9,3,4
	bne 0,.L1597
	srdi. 9,3,3
	bne 0,.L1598
	srdi. 9,3,2
	bne 0,.L1599
	srdi. 9,3,1
	bne 0,.L1600
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1586:
	rldicl 3,9,0,59
	blr
.L1587:
	li 9,0
	b .L1586
.L1598:
	li 9,12
	b .L1586
.L1588:
	li 9,2
	b .L1586
.L1589:
	li 9,3
	b .L1586
.L1590:
	li 9,4
	b .L1586
.L1591:
	li 9,5
	b .L1586
.L1592:
	li 9,6
	b .L1586
.L1593:
	li 9,7
	b .L1586
.L1594:
	li 9,8
	b .L1586
.L1595:
	li 9,9
	b .L1586
.L1596:
	li 9,10
	b .L1586
.L1597:
	li 9,11
	b .L1586
.L1599:
	li 9,13
	b .L1586
.L1600:
	li 9,14
	b .L1586
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
	bne 0,.L1605
	andi. 9,3,0x2
	bne 0,.L1606
	andi. 9,3,0x4
	bne 0,.L1607
	andi. 9,3,0x8
	bne 0,.L1608
	andi. 9,3,0x10
	bne 0,.L1609
	andi. 9,3,0x20
	bne 0,.L1610
	andi. 9,3,0x40
	bne 0,.L1611
	andi. 9,3,0x80
	bne 0,.L1612
	andi. 9,3,0x100
	bne 0,.L1613
	andi. 9,3,0x200
	bne 0,.L1614
	andi. 9,3,0x400
	bne 0,.L1615
	andi. 9,3,0x800
	bne 0,.L1616
	andi. 9,3,0x1000
	bne 0,.L1617
	andi. 9,3,0x2000
	bne 0,.L1618
	andi. 9,3,0x4000
	bne 0,.L1619
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1604:
	rldicl 3,5,0,59
	blr
.L1605:
	li 5,0
	b .L1604
.L1606:
	li 5,1
	b .L1604
.L1617:
	li 5,12
	b .L1604
.L1607:
	li 5,2
	b .L1604
.L1608:
	li 5,3
	b .L1604
.L1609:
	li 5,4
	b .L1604
.L1610:
	li 5,5
	b .L1604
.L1611:
	li 5,6
	b .L1604
.L1612:
	li 5,7
	b .L1604
.L1613:
	li 5,8
	b .L1604
.L1614:
	li 5,9
	b .L1604
.L1615:
	li 5,10
	b .L1604
.L1616:
	li 5,11
	b .L1604
.L1618:
	li 5,13
	b .L1604
.L1619:
	li 5,14
	b .L1604
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
	bne 0,.L1627
	fctidz 1,1
	stfd 1,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1627:
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
	mfvrsave 11
	oris 0,11,0xc07c
	stw 11,-4(1)
	mtvrsave 0
	li 10,32
	vxor 12,12,12
	addis 6,2,.LC47@toc@ha
	addis 9,2,.LC48@toc@ha
	stw 3,-48(1)
	addi 4,6,.LC47@toc@l
	addi 6,1,-80
	addi 5,9,.LC48@toc@l
	addis 7,2,.LC49@toc@ha
	lvx 13,0,4
	addi 3,7,.LC49@toc@l
	addis 8,2,.LC50@toc@ha
	lvx 11,0,5
	addi 12,8,.LC50@toc@l
	vspltisw 10,1
	lvx 1,0,3
	li 11,48
	lvewx 0,6,10
	lvx 9,0,12
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
	stvx 10,6,11
	lwz 0,-32(1)
	lwz 4,-4(1)
	rldicl 3,0,0,63
	mtvrsave 4
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
	li 10,32
	vxor 12,12,12
	addis 6,2,.LC47@toc@ha
	addis 9,2,.LC48@toc@ha
	stw 3,-48(1)
	addi 4,6,.LC47@toc@l
	addi 6,1,-80
	addi 5,9,.LC48@toc@l
	addis 7,2,.LC49@toc@ha
	addi 3,7,.LC49@toc@l
	lvx 13,0,4
	addis 8,2,.LC50@toc@ha
	lvx 11,0,5
	addi 12,8,.LC50@toc@l
	vspltisw 10,1
	lvx 1,0,3
	li 11,48
	lvewx 0,6,10
	lvx 9,0,12
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
	stvx 10,6,11
	lwa 3,-32(1)
	lwz 0,-4(1)
	mtvrsave 0
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
	beq 0,.L1633
	.p2align 5
.L1634:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	bne 1,.L1634
.L1633:
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
	beq 0,.L1638
	cmpdi 1,4,0
	beq 1,.L1638
	.p2align 5
.L1639:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne 0,.L1639
.L1638:
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
	blt 0,.L1644
	b .L1673
	.p2align 4,,15
.L1648:
	rldicl 4,11,0,32
	slwi 10,10,1
	ble 7,.L1646
	cmpwi 5,4,0
	slwi 9,4,1
	cmplw 6,3,9
	blt 5,.L1649
	rldicl 4,9,0,32
	slwi 10,10,1
	ble 6,.L1646
	bdz .L1647
.L1644:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge 1,.L1648
.L1649:
	li 12,0
	.p2align 4,,15
.L1654:
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
	beq 0,.L1651
	mr 3,6
.L1651:
	rldicl 3,3,0,32
	bne 1,.L1654
.L1647:
	cmpdi 7,5,0
	beq 7,.L1655
	mr 12,3
.L1655:
	rldicl 3,12,0,32
	blr
	.p2align 4,,15
.L1646:
	cmpwi 0,10,0
	bne 0,.L1649
	li 12,0
	b .L1647
	.p2align 4,,15
.L1673:
	subf 0,4,3
	subf 4,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	beq 0,.L1657
	mr 3,4
.L1657:
	rldicl 3,3,0,32
	b .L1647
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
	blt 0,.L1677
	mfcr 3,128
	rlwinm 3,3,2,1
.L1677:
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
	blt 0,.L1680
	mfcr 3,128
	rlwinm 3,3,2,1
.L1680:
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
	blt 0,.L1698
	cmpdi 1,4,0
	beq 1,.L1690
	li 6,0
.L1686:
	li 10,32
	li 8,0
	b .L1689
	.p2align 4,,15
.L1699:
	beq 7,.L1688
.L1689:
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
	bne 0,.L1699
.L1688:
	cmpwi 5,6,0
	beq 5,.L1687
	neg 8,8
.L1687:
	extsw 3,8
	blr
	.p2align 4,,15
.L1698:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1686
.L1690:
	li 8,0
	b .L1687
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
	bge 0,.L1701
	neg 3,3
	li 9,0
	li 5,1
.L1701:
	cmpdi 1,4,0
	bge 1,.L1702
	neg 4,4
	mr 5,9
.L1702:
	cmplw 5,3,4
	li 0,16
	mtctr 0
	mr 8,3
	mr 10,4
	li 12,1
	bgt 5,.L1703
	b .L1732
	.p2align 4,,15
.L1707:
	slwi 10,10,1
	slwi 12,12,1
	cmplw 0,8,10
	cmpwi 7,10,0
	ble 0,.L1705
	blt 7,.L1708
	slwi 10,10,1
	slwi 12,12,1
	cmplw 1,8,10
	ble 1,.L1705
	bdz .L1719
.L1703:
	cmpwi 6,10,0
	bge 6,.L1707
.L1708:
	li 11,0
	.p2align 4,,15
.L1713:
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
	beq 0,.L1710
	mr 8,6
.L1710:
	bne 6,.L1713
.L1715:
	cmpwi 7,5,0
	rldicl 3,11,0,32
	beqlr 7
.L1735:
	neg 3,3
	blr
	.p2align 4,,15
.L1705:
	cmpwi 5,12,0
	bne 5,.L1708
	.p2align 4,,15
.L1719:
	cmpwi 7,5,0
	li 3,0
	beqlr 7
	b .L1735
.L1732:
	rldicl 6,3,0,32
	rldicl 3,4,0,32
	subf 4,3,6
	srdi 7,4,63
	xori 11,7,0x1
	b .L1715
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
	bge 0,.L1737
	neg 8,8
	li 6,1
.L1737:
	sradi 7,4,63
	li 9,16
	mtctr 9
	xor 4,7,4
	subf 0,7,4
	rldicl 3,8,0,32
	cmplw 1,8,0
	li 12,1
	mr 11,0
	bgt 1,.L1738
	b .L1770
	.p2align 4,,15
.L1742:
	slwi 11,11,1
	slwi 12,12,1
	cmplw 6,3,11
	cmpwi 7,11,0
	ble 6,.L1740
	blt 7,.L1768
	slwi 11,11,1
	slwi 12,12,1
	cmplw 1,3,11
	ble 1,.L1740
	bdz .L1741
.L1738:
	cmpwi 5,11,0
	bge 5,.L1742
	.p2align 4,,15
.L1768:
	rldicl 8,11,0,32
	rldicl 7,3,0,32
	subf. 8,8,7
	srwi 12,12,1
	subf 4,11,3
	cmpwi 5,12,0
	srwi 11,11,1
	blt 0,.L1745
	rldicl 3,4,0,32
.L1745:
	bne 5,.L1768
.L1741:
	cmpwi 6,6,0
	beqlr 6
	neg 3,3
	blr
	.p2align 4,,15
.L1740:
	cmpwi 0,12,0
	bne 0,.L1768
	b .L1741
	.p2align 4,,15
.L1770:
	rldicl 3,0,0,32
	rldicl 10,8,0,32
	subf. 9,3,10
	subf 5,0,8
	rldicl 3,8,0,32
	blt 0,.L1741
	rldicl 3,5,0,32
	b .L1741
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
	bge 0,.L1960
	andi. 9,4,0x8000
	bne 0,.L1777
	rldic 12,4,1,48
	cmplw 1,3,12
	ble 1,.L1850
	andi. 10,12,0x8000
	bne 0,.L1850
	rldic 12,4,2,48
	cmplw 5,3,12
	ble 5,.L1852
	andi. 10,12,0x8000
	bne 0,.L1852
	rldic 12,4,3,48
	cmplw 6,3,12
	ble 6,.L1854
	andi. 10,12,0x8000
	bne 0,.L1854
	rldic 12,4,4,48
	cmplw 7,3,12
	ble 7,.L1856
	andi. 10,12,0x8000
	bne 0,.L1856
	rldic 12,4,5,48
	cmplw 1,3,12
	ble 1,.L1858
	andi. 10,12,0x8000
	bne 0,.L1858
	rldic 12,4,6,48
	cmplw 5,3,12
	ble 5,.L1860
	andi. 10,12,0x8000
	bne 0,.L1860
	rldic 12,4,7,48
	cmplw 6,3,12
	ble 6,.L1862
	andi. 10,12,0x8000
	bne 0,.L1862
	rldic 12,4,8,48
	cmplw 7,3,12
	ble 7,.L1864
	andi. 10,12,0x8000
	bne 0,.L1864
	rldic 12,4,9,48
	cmplw 1,3,12
	ble 1,.L1866
	andi. 10,12,0x8000
	bne 0,.L1866
	rldic 12,4,10,48
	cmplw 5,3,12
	ble 5,.L1868
	andi. 10,12,0x8000
	bne 0,.L1868
	rldic 12,4,11,48
	cmplw 6,3,12
	ble 6,.L1870
	andi. 10,12,0x8000
	bne 0,.L1870
	rldic 12,4,12,48
	cmplw 7,3,12
	ble 7,.L1872
	andi. 10,12,0x8000
	bne 0,.L1872
	rldic 12,4,13,48
	cmplw 1,3,12
	ble 1,.L1874
	andi. 10,12,0x8000
	bne 0,.L1874
	rldic 12,4,14,48
	cmplw 5,3,12
	ble 5,.L1876
	andi. 10,12,0x8000
	bne 0,.L1876
	rldic 10,4,15,48
	cmplw 6,3,10
	ble 6,.L1877
	cmpdi 7,10,0
	li 11,0
	bne 7,.L1877
.L1780:
	cmpdi 7,5,0
	beq 7,.L1839
	mr 11,3
.L1839:
	rlwinm 3,11,0,0xffff
	blr
.L1850:
	li 8,2
	.p2align 4,,15
.L1779:
	subf. 4,12,3
	subf 0,12,3
	rlwinm 6,0,0,0xffff
	blt 0,.L1846
	mr 3,6
.L1846:
	not 7,4
	rlwinm 3,3,0,0xffff
	srdi 4,12,1
	sradi 10,7,63
	subf. 0,4,3
	subf 6,4,3
	rldicl 11,8,63,49
	and 9,8,10
	rlwinm 7,6,0,0xffff
	blt 0,.L1782
	mr 3,7
.L1782:
	srwi 4,8,2
	not 10,0
	cmpwi 1,4,0
	sradi 0,10,63
	and 11,11,0
	rlwinm 3,3,0,0xffff
	or 9,11,9
	srdi 6,12,2
	mr 11,9
	beq 1,.L1780
	subf 7,6,3
	subf 10,6,3
	srdi 0,7,63
	rlwinm 11,10,0,0xffff
	xori 6,0,0x1
	andi. 7,6,0xff
	beq 0,.L1786
	mr 3,11
.L1786:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq 5,.L1788
	mr 10,4
.L1788:
	srwi 4,8,3
	or 9,9,10
	cmpwi 6,4,0
	mr 11,9
	srwi 0,8,3
	srdi 6,12,3
	beq 6,.L1780
	subf 11,6,3
	subf 10,6,3
	srdi 7,11,63
	rlwinm 4,10,0,0xffff
	xori 6,7,0x1
	andi. 11,6,0xff
	beq 0,.L1790
	mr 3,4
.L1790:
	cmpwi 7,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1792
	mr 4,0
.L1792:
	srwi 0,8,4
	or 9,9,4
	cmpwi 1,0,0
	mr 11,9
	srwi 10,8,4
	srdi 6,12,4
	beq 1,.L1780
	subf 7,6,3
	subf 11,6,3
	srdi 4,7,63
	rlwinm 0,11,0,0xffff
	xori 6,4,0x1
	andi. 7,6,0xff
	beq 0,.L1794
	mr 3,0
.L1794:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1796
	mr 4,10
.L1796:
	srwi 11,8,5
	or 9,9,4
	cmpwi 6,11,0
	srwi 10,8,5
	mr 11,9
	srdi 0,12,5
	beq 6,.L1780
	subf 7,0,3
	subf 6,0,3
	srdi 4,7,63
	rlwinm 11,6,0,0xffff
	xori 0,4,0x1
	andi. 7,0,0xff
	beq 0,.L1798
	mr 3,11
.L1798:
	cmpwi 7,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1800
	mr 4,10
.L1800:
	srwi 6,8,6
	or 9,9,4
	cmpwi 1,6,0
	mr 11,9
	srwi 10,8,6
	srdi 0,12,6
	beq 1,.L1780
	subf 11,0,3
	subf 4,0,3
	srdi 7,11,63
	rlwinm 6,4,0,0xffff
	xori 0,7,0x1
	andi. 11,0,0xff
	beq 0,.L1802
	mr 3,6
.L1802:
	cmpwi 5,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1804
	mr 4,10
.L1804:
	srwi 7,8,7
	or 9,9,4
	cmpwi 6,7,0
	mr 11,9
	srwi 10,8,7
	srdi 6,12,7
	beq 6,.L1780
	subf 0,6,3
	subf 11,6,3
	srdi 4,0,63
	rlwinm 6,11,0,0xffff
	xori 7,4,0x1
	andi. 0,7,0xff
	beq 0,.L1806
	mr 3,6
.L1806:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1808
	mr 4,10
.L1808:
	srwi 11,8,8
	or 9,9,4
	cmpwi 1,11,0
	srwi 10,8,8
	mr 11,9
	srdi 6,12,8
	beq 1,.L1780
	subf 7,6,3
	subf 0,6,3
	srdi 4,7,63
	rlwinm 11,0,0,0xffff
	xori 6,4,0x1
	andi. 7,6,0xff
	beq 0,.L1810
	mr 3,11
.L1810:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1812
	mr 4,10
.L1812:
	srwi 0,8,9
	or 9,9,4
	cmpwi 6,0,0
	mr 11,9
	srwi 10,8,9
	srdi 6,12,9
	beq 6,.L1780
	subf 11,6,3
	subf 4,6,3
	srdi 7,11,63
	rlwinm 0,4,0,0xffff
	xori 6,7,0x1
	andi. 11,6,0xff
	beq 0,.L1814
	mr 3,0
.L1814:
	cmpwi 7,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1816
	mr 4,10
.L1816:
	srwi 7,8,10
	or 9,9,4
	cmpwi 1,7,0
	mr 11,9
	srwi 10,8,10
	srdi 0,12,10
	beq 1,.L1780
	subf 11,0,3
	subf 6,0,3
	srdi 4,11,63
	rlwinm 0,6,0,0xffff
	xori 7,4,0x1
	andi. 11,7,0xff
	beq 0,.L1818
	mr 3,0
.L1818:
	cmpwi 5,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1820
	mr 4,10
.L1820:
	srwi 6,8,11
	or 9,9,4
	cmpwi 6,6,0
	mr 11,9
	srwi 10,8,11
	srdi 0,12,11
	beq 6,.L1780
	subf 7,0,3
	subf 11,0,3
	srdi 4,7,63
	rlwinm 6,11,0,0xffff
	xori 0,4,0x1
	andi. 7,0,0xff
	beq 0,.L1822
	mr 3,6
.L1822:
	cmpwi 7,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1824
	mr 4,10
.L1824:
	srwi 11,8,12
	or 9,9,4
	cmpwi 1,11,0
	srwi 10,8,12
	mr 11,9
	srdi 6,12,12
	beq 1,.L1780
	subf 0,6,3
	subf 4,6,3
	srdi 7,0,63
	rlwinm 11,4,0,0xffff
	xori 6,7,0x1
	andi. 0,6,0xff
	beq 0,.L1826
	mr 3,11
.L1826:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1828
	mr 4,10
.L1828:
	srwi 7,8,13
	or 9,9,4
	cmpwi 6,7,0
	mr 11,9
	srwi 10,8,13
	srdi 6,12,13
	beq 6,.L1780
	subf 11,6,3
	subf 0,6,3
	srdi 4,11,63
	rlwinm 6,0,0,0xffff
	xori 7,4,0x1
	andi. 11,7,0xff
	beq 0,.L1830
	mr 3,6
.L1830:
	cmpwi 7,11,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 7,.L1832
	mr 4,10
.L1832:
	srwi 0,8,14
	or 9,9,4
	cmpwi 1,0,0
	mr 11,9
	srwi 10,8,14
	srdi 6,12,14
	beq 1,.L1780
	subf 7,6,3
	subf 11,6,3
	srdi 4,7,63
	rlwinm 0,11,0,0xffff
	xori 6,4,0x1
	andi. 7,6,0xff
	beq 0,.L1834
	mr 3,0
.L1834:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 4,0
	beq 5,.L1836
	mr 4,10
.L1836:
	cmpwi 6,8,16384
	or 8,9,4
	srdi 12,12,15
	mr 11,8
	beq 6,.L1780
	subf 10,12,3
	subf 9,12,3
	srdi 11,10,63
	rlwinm 0,9,0,0xffff
	xori 6,11,0x1
	andi. 7,6,0xff
	beq 0,.L1838
	mr 3,0
.L1838:
	rlwinm 3,3,0,0xffff
	or 11,8,7
	b .L1780
.L1852:
	li 8,4
	b .L1779
.L1854:
	li 8,8
	b .L1779
.L1856:
	li 8,16
	b .L1779
.L1866:
	li 8,512
	b .L1779
.L1858:
	li 8,32
	b .L1779
.L1860:
	li 8,64
	b .L1779
.L1862:
	li 8,128
	b .L1779
.L1864:
	li 8,256
	b .L1779
.L1960:
	xor 9,4,3
	subf 4,4,3
	cntlzw 0,9
	rlwinm 6,4,0,0xffff
	srwi 7,0,5
	andi. 11,7,0xff
	beq 0,.L1775
	mr 3,6
.L1775:
	rlwinm 3,3,0,0xffff
	b .L1780
.L1868:
	li 8,1024
	b .L1779
.L1870:
	li 8,2048
	b .L1779
.L1872:
	li 8,4096
	b .L1779
.L1874:
	li 8,8192
	b .L1779
.L1876:
	li 8,16384
	b .L1779
.L1877:
	li 9,-1
	li 8,0
	ori 8,8,0x8000
	rlwinm 12,9,0,16,16
	b .L1779
.L1777:
	subf 3,4,3
	li 11,1
	rlwinm 3,3,0,0xffff
	b .L1780
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
	blt 0,.L1962
	b .L1994
	.p2align 4,,15
.L1966:
	sldi 4,4,1
	sldi 11,11,1
	cmpld 5,9,4
	ble 5,.L1964
	andis. 3,4,0x8000
	bne 0,.L1967
	sldi 4,4,1
	sldi 11,11,1
	cmpld 6,9,4
	ble 6,.L1964
	bdz .L1965
.L1962:
	andis. 3,4,0x8000
	beq 0,.L1966
.L1967:
	li 3,0
	.p2align 4,,15
.L1972:
	subfc 6,4,9
	li 0,0
	subfe 7,7,7
	srdi 4,4,1
	addi 12,7,1
	andi. 8,12,0xff
	cmpwi 1,8,0
	beq 0,.L1969
	mr 9,6
.L1969:
	beq 1,.L1971
	mr 0,11
.L1971:
	srdi. 11,11,1
	or 3,3,0
	bne 0,.L1972
.L1965:
	cmpdi 5,5,0
	beqlr 5
	mr 3,9
	blr
	.p2align 4,,15
.L1964:
	cmpdi 7,11,0
	bne 7,.L1967
	b .L1965
	.p2align 4,,15
.L1994:
	subfc 4,4,3
	subfe 3,3,3
	addi 0,3,1
	rlwinm 10,0,0,0xff
	cmpwi 1,10,0
	beq 1,.L1975
	mr 9,4
.L1975:
	rlwinm 3,0,0,0xff
	b .L1965
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
	beq 0,.L1997
	addi 4,4,-32
	li 6,0
	slw 5,3,4
	rldicl 11,6,0,32
	sldi 7,5,32
	or 3,11,7
	blr
	.p2align 4,,15
.L1997:
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
	beq 0,.L2003
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L2003:
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
	beq 0,.L2008
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2008:
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
	beq 0,.L2014
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2014:
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
	bne 0,.L2021
	subfic 3,5,2
	add 9,0,7
	add 6,3,9
	extsw 3,6
	blr
	.p2align 4,,15
.L2021:
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
	bne 0,.L2025
	li 3,0
.L2025:
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
	blt 0,.L2028
	li 0,2
	bgt 0,.L2027
	cmplw 1,3,4
	li 0,0
	blt 1,.L2027
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2027:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2028:
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
	blt 0,.L2034
	li 5,1
	bgt 0,.L2033
	cmplw 1,3,4
	li 5,-1
	blt 1,.L2033
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L2033:
	extsw 3,5
	blr
	.p2align 4,,15
.L2034:
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
	blt 0,.L2038
	li 0,2
	bgt 0,.L2038
	cmpld 1,3,5
	li 0,0
	blt 1,.L2038
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2038:
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
	bne 0,.L2046
	li 4,0
.L2046:
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
	bne 0,.L2048
	cmpdi 1,4,0
	bne 1,.L2052
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2048:
	addi 3,9,-1
	andc 0,3,9
	popcntd 4,0
	addi 3,4,1
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2052:
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
	beq 0,.L2054
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2054:
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
	beq 0,.L2060
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2060:
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
	beq 0,.L2078
	.p2align 4,,15
.L2080:
	fmul 1,1,0
.L2078:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2079
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2080
.L2084:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2080
	b .L2084
	.p2align 4,,15
.L2079:
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
	beq 0,.L2086
	.p2align 4,,15
.L2088:
	fmuls 1,1,0
.L2086:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2087
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2088
.L2092:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2088
	b .L2092
	.p2align 4,,15
.L2087:
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
	blt 0,.L2095
	li 0,2
	bgt 0,.L2094
	cmplw 1,3,4
	li 0,0
	blt 1,.L2094
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2094:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2095:
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
	blt 0,.L2101
	li 5,1
	bgt 0,.L2100
	cmplw 1,3,4
	li 5,-1
	blt 1,.L2100
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L2100:
	extsw 3,5
	blr
	.p2align 4,,15
.L2101:
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
	blt 0,.L2105
	li 0,2
	bgt 0,.L2105
	cmpld 1,3,5
	li 0,0
	blt 1,.L2105
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2105:
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
