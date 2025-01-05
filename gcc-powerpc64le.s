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
	xxlor 33,32,32
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
	neg 6,3
	lvx 13,0,3
	andi. 10,8,0x1
	addis 10,2,.LC0@toc@ha
	addi 7,10,.LC0@toc@l
	lvsl 12,0,6
	addi 12,8,-1
	srdi 11,5,1
	li 9,0
	lvx 11,0,7
	addi 6,3,15
	bne 0,.L285
.L269:
	srdi 0,8,1
	mtctr 0
.L259:
	lvx 0,6,9
	addi 10,9,16
	vperm 1,0,13,12
	lvx 13,6,10
	vperm 1,1,1,11
	stvx 1,4,9
	addi 9,9,32
	vperm 0,13,0,12
	vperm 1,0,0,11
	stvx 1,4,10
	bdnz .L259
.L275:
	sldi 7,8,3
	sldi 12,8,4
	cmpld 6,11,7
	subf 5,12,5
	add 11,4,12
	add 10,3,12
	beq 6,.L256
	cmpdi 7,5,3
	lhbrx 3,3,12
	sthx 3,4,12
	ble 7,.L256
	addi 4,10,2
	cmpdi 1,5,5
	lhbrx 6,0,4
	sth 6,2(11)
	ble 1,.L256
	addi 9,10,4
	cmpdi 0,5,7
	lhbrx 0,0,9
	sth 0,4(11)
	ble 0,.L256
	addi 7,10,6
	cmpdi 5,5,9
	lhbrx 12,0,7
	sth 12,6(11)
	ble 5,.L256
	addi 8,10,8
	cmpdi 6,5,11
	lhbrx 3,0,8
	sth 3,8(11)
	ble 6,.L256
	cmpdi 7,5,13
	addi 5,10,10
	lhbrx 4,0,5
	sth 4,10(11)
	ble 7,.L256
	addi 10,10,12
	lhbrx 6,0,10
	sth 6,12(11)
.L256:
	lwz 3,-4(1)
	mtvrsave 3
	blr
	.p2align 4,,15
.L285:
	xxlor 32,45,45
	lvx 13,0,6
	cmpdi 5,12,0
	li 9,16
	vperm 1,13,0,12
	vperm 0,1,1,11
	stvx 0,0,4
	bne 5,.L269
	b .L275
	.p2align 4,,15
.L258:
	srdi 11,5,1
	andi. 9,11,0x1
	addi 9,11,-1
	beq 0,.L266
	cmpdi 1,9,0
	lbz 0,1(3)
	lbz 7,0(3)
	addi 4,4,2
	addi 3,3,2
	stb 0,-2(4)
	stb 7,-1(4)
	beq 1,.L256
.L266:
	srdi 9,11,1
	mtctr 9
	cmpdi 5,9,2
	ble 5,.L281
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
.L281:
	mr 12,3
	lbz 10,1(3)
	lbz 5,0(3)
	lbz 6,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 8,3(12)
	stb 10,-4(4)
	stb 5,-3(4)
	stb 6,-1(4)
	stb 8,-2(4)
	bdz .L256
	mr 12,3
	lbz 10,1(3)
	lbz 5,0(3)
	lbz 6,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 8,3(12)
	stb 10,-4(4)
	stb 5,-3(4)
	stb 6,-1(4)
	stb 8,-2(4)
	bdnz .L281
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
	beq 0,.L290
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 0,3,9,6
	rldicl 3,0,0,63
	blr
	.p2align 4,,15
.L290:
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
	ble 0,.L293
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 0,3,9,6
	rldicl 3,0,0,63
	blr
	.p2align 4,,15
.L293:
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
	beq 0,.L300
	addi 3,3,-9
	li 9,1
	cmplwi 1,3,4
	isel 0,0,9,5
	rldicl 3,0,0,63
	blr
	.p2align 4,,15
.L300:
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
	ble 0,.L303
	addi 9,3,-127
	li 10,1
	cmplwi 1,9,32
	bgt 1,.L307
.L303:
	rldicl 3,10,0,63
	blr
	.p2align 4,,15
.L307:
	addi 0,3,-8232
	cmplwi 5,0,1
	ble 5,.L303
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
	ble 0,.L316
	cmplwi 1,3,8231
	li 12,1
	ble 1,.L311
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble 5,.L311
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble 6,.L311
	lis 0,0x10
	addi 5,4,4
	ori 6,0,0x3
	li 12,0
	cmplw 7,5,6
	bgt 7,.L311
	li 7,0
	rlwinm 3,3,0,16,30
	ori 11,7,0xfffe
	li 9,1
	cmpw 0,3,11
	isel 12,0,9,2
.L311:
	rldicl 3,12,0,63
	blr
	.p2align 4,,15
.L316:
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
	ble 0,.L319
	ori 3,3,0x20
	li 0,1
	addi 4,3,-97
	cmplwi 1,4,5
	isel 5,0,0,5
	rldicl 3,5,0,63
	blr
	.p2align 4,,15
.L319:
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
	bun 1,.L325
	fcmpu 5,1,2
	bng 5,.L328
	fsub 1,1,2
	blr
	.p2align 4,,15
.L328:
	xxlxor 1,1,1
	blr
	.p2align 4,,15
.L325:
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
	bun 1,.L333
	fcmpu 5,1,2
	bng 5,.L336
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L336:
	xxlxor 1,1,1
	blr
	.p2align 4,,15
.L333:
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
	mfvrsave 11
	oris 0,11,0xc000
	stw 11,-4(1)
	mtvrsave 0
	fcmpu 0,1,1
	xxlor 33,2,2
	bun 0,.L342
	fcmpu 1,2,2
	xxlor 32,1,1
	bun 1,.L343
	stfd 1,-32(1)
	addi 10,1,-32
	addi 9,1,-32
	ori 2,2,0
	ld 3,-32(1)
	stfd 2,0(10)
	srdi 4,3,63
	ld 5,-32(1)
	srdi 6,5,63
	cmpw 5,4,6
	beq 5,.L339
	cmpwi 7,4,0
	fmr 1,2
	beq 7,.L343
.L337:
	lwz 12,-4(1)
	mtvrsave 12
	blr
	.p2align 4,,15
.L339:
	fcmpu 6,1,2
	bnl 6,.L337
.L342:
	lwz 12,-4(1)
	xxlor 1,33,33
	mtvrsave 12
	blr
	.p2align 4,,15
.L343:
	lwz 12,-4(1)
	xxlor 1,32,32
	mtvrsave 12
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
	stfs 1,-16(1)
	stfs 2,-12(1)
	bun 0,.L352
	fcmpu 1,2,2
	bunlr 1
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 0,9,0,0,0
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq 5,.L349
	cmpwi 7,0,0
	fmr 1,2
	bnelr 7
	lfs 1,-16(1)
	blr
	.p2align 4,,15
.L349:
	fcmpu 6,1,2
	bnllr 6
	fmr 1,2
	blr
	.p2align 4,,15
.L352:
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
	fmr 13,4
	fmr 12,3
	fmr 0,8
	fcmpu 0,0,0
	bun 0,.L363
	fmr 11,12
	fcmpu 1,11,11
	bun 1,.L362
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L358
	cmpwi 7,0,0
	bne 7,.L363
.L362:
	fmr 1,8
	fmr 2,9
	blr
	.p2align 4,,15
.L358:
	fcmpu 6,8,12
	bne 6,$+8
	fcmpu 6,9,13
	blt 6,.L363
	fmr 13,2
	fmr 12,1
.L363:
	fmr 1,12
	fmr 2,13
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
	mfvrsave 11
	oris 0,11,0xc000
	stw 11,-4(1)
	mtvrsave 0
	fcmpu 0,1,1
	xxlor 33,2,2
	bun 0,.L369
	fcmpu 1,2,2
	xxlor 32,1,1
	bun 1,.L370
	stfd 1,-32(1)
	addi 10,1,-32
	addi 9,1,-32
	ori 2,2,0
	ld 3,-32(1)
	stfd 2,0(10)
	srdi 4,3,63
	ld 5,-32(1)
	srdi 6,5,63
	cmpw 5,4,6
	beq 5,.L366
	cmpwi 7,4,0
	beq 7,.L369
.L364:
	lwz 12,-4(1)
	mtvrsave 12
	blr
	.p2align 4,,15
.L366:
	fcmpu 6,1,2
	fmr 1,2
	bnl 6,.L364
.L370:
	lwz 12,-4(1)
	xxlor 1,32,32
	mtvrsave 12
	blr
	.p2align 4,,15
.L369:
	lwz 12,-4(1)
	xxlor 1,33,33
	mtvrsave 12
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
	fmr 0,1
	stfs 1,-16(1)
	stfs 2,-12(1)
	bun 0,.L379
	fcmpu 1,2,2
	fmr 3,2
	bunlr 1
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 0,9,0,0,0
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	bne 5,.L384
	fcmpu 6,0,2
	fmr 3,1
	fmr 1,2
	bnllr 6
	fmr 1,3
	blr
	.p2align 4,,15
.L384:
	cmpwi 7,0,0
	bnelr 7
	fmr 1,3
	blr
	.p2align 4,,15
.L379:
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
	fmr 13,2
	fmr 12,1
	fmr 9,4
	fmr 8,3
	fmr 0,12
	fcmpu 0,0,0
	bun 0,.L390
	fmr 11,8
	fcmpu 1,11,11
	bun 1,.L392
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq 5,.L387
	cmpwi 7,0,0
	bne 7,.L392
.L390:
	fmr 1,8
	fmr 2,9
	blr
	.p2align 4,,15
.L387:
	fcmpu 6,12,8
	bne 6,$+8
	fcmpu 6,13,9
	blt 6,.L392
	fmr 13,4
	fmr 12,3
.L392:
	fmr 1,12
	fmr 2,13
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
	beq 0,.L396
	addis 7,2,.LANCHOR1@toc@ha
	mr 10,3
	addi 4,7,.LANCHOR1@toc@l
	.p2align 5
.L395:
	rldicl 8,9,0,58
	srwi 9,9,6
	cmpwi 1,9,0
	addi 10,10,1
	lbzx 0,4,8
	stb 0,-1(10)
	bne 1,.L395
	li 5,0
	stb 5,0(10)
	blr
	.p2align 4,,15
.L396:
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
	beq 0,.L406
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
.L406:
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
	beq 0,.L408
	ld 10,8(3)
	std 10,8(9)
.L408:
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
	beq 0,.L417
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	mr 29,7
	li 30,0
	std 31,104(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L419
	.p2align 4,,15
.L431:
	beq 7,.L430
.L419:
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
	bne 1,.L431
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L416:
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
.L430:
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
.L417:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq 5,.L416
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
	beq 0,.L433
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
	b .L435
	.p2align 4,,15
.L443:
	beq 7,.L442
.L435:
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
	bne 1,.L443
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
.L442:
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
.L433:
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
.L452:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L446
	ble 7,.L446
	cmpwi 1,9,43
	beq 1,.L447
	cmpwi 6,9,45
	bne 6,.L467
	lbz 9,1(3)
	addi 3,3,1
	addi 4,9,-48
	cmplwi 0,4,9
	bgt 0,.L457
	li 11,1
.L450:
	li 8,0
	.p2align 5
.L454:
	addi 7,9,-48
	mulli 12,8,10
	lbzu 9,1(3)
	addi 6,9,-48
	subf 8,7,12
	cmplwi 1,6,9
	ble 1,.L454
	cmpwi 5,11,0
	subf 9,12,7
	isel 3,9,8,22
.L453:
	extsw 3,3
	blr
	.p2align 4,,15
.L446:
	addi 3,3,1
	b .L452
	.p2align 4,,15
.L467:
	addi 5,9,-48
	li 11,0
	cmplwi 7,5,9
	ble 7,.L450
.L457:
	li 3,0
	b .L453
	.p2align 4,,15
.L447:
	lbz 9,1(3)
	li 11,0
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	ble 5,.L450
	li 3,0
	b .L453
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
.L475:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L469
	ble 7,.L469
	cmpwi 1,9,43
	beq 1,.L470
	cmpwi 6,9,45
	bne 6,.L490
	lbz 9,1(3)
	addi 3,3,1
	addi 4,9,-48
	cmplwi 0,4,9
	bgt 0,.L480
	li 8,1
.L473:
	li 6,0
	.p2align 5
.L477:
	addi 11,9,-48
	mulli 7,6,10
	lbzu 9,1(3)
	extsw 12,11
	addi 10,9,-48
	subf 6,12,7
	cmplwi 1,10,9
	ble 1,.L477
	cmpwi 5,8,0
	subf 3,7,12
	isel 3,3,6,22
	blr
	.p2align 4,,15
.L469:
	addi 3,3,1
	b .L475
	.p2align 4,,15
.L490:
	addi 5,9,-48
	li 8,0
	cmplwi 7,5,9
	ble 7,.L473
.L480:
	li 3,0
	blr
	.p2align 4,,15
.L470:
	lbz 9,1(3)
	li 8,0
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	ble 5,.L473
	b .L480
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
.L496:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L492
	ble 7,.L492
	cmpwi 1,9,43
	beq 1,.L493
	cmpwi 6,9,45
	beq 6,.L494
	addi 4,9,-48
	li 8,0
	cmplwi 7,4,9
	bgt 7,.L503
.L497:
	li 6,0
	.p2align 5
.L500:
	addi 11,9,-48
	mulli 7,6,10
	lbzu 9,1(3)
	extsw 12,11
	addi 10,9,-48
	subf 6,12,7
	cmplwi 1,10,9
	ble 1,.L500
	cmpwi 5,8,0
	subf 3,7,12
	isel 3,3,6,22
	blr
	.p2align 4,,15
.L492:
	addi 3,3,1
	b .L496
	.p2align 4,,15
.L494:
	lbz 9,1(3)
	li 8,1
	addi 3,3,1
	addi 5,9,-48
	cmplwi 0,5,9
	ble 0,.L497
.L503:
	li 3,0
	blr
	.p2align 4,,15
.L493:
	lbz 9,1(3)
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	bgt 5,.L503
	li 8,0
	b .L497
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
	beq 0,.L514
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
	b .L517
	.p2align 4,,15
.L526:
	beq 1,.L524
	cmpdi 5,31,0
	add 27,30,26
	beq 5,.L525
.L517:
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
	bge 1,.L526
	mr 31,29
	cmpdi 5,31,0
	bne 5,.L517
.L525:
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
.L514:
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
.L524:
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
	beq 0,.L532
	mflr 0
	.cfi_register 65, 0
	std 2,24(1)
	std 28,64(1)
	.cfi_offset 28, -32
	std 0,112(1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L537:
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
	beq 1,.L541
.L543:
	cmpwi 5,28,0
	ble 1,.L530
	add 27,30,26
	bne 7,.L537
.L542:
	ld 3,112(1)
	ld 28,64(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L532:
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
.L530:
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
	beq 5,.L542
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
	bne 1,.L543
.L541:
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
	beq 0,.L555
	.p2align 5
.L552:
	cmpw 1,9,4
	beqlr 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne 5,.L552
.L555:
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
	beq 0,.L562
	b .L561
	.p2align 4,,15
.L563:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne 0,.L561
.L562:
	cmpwi 7,9,0
	bne 7,.L563
.L561:
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
.L567:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L567
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
	beq 0,.L573
	mr 4,3
	.p2align 4,,15
.L572:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne 1,.L572
	subf 3,3,4
	sradi 3,3,2
	blr
	.p2align 4,,15
.L573:
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
	beq 0,.L585
	mtctr 5
	b .L576
	.p2align 4,,15
.L588:
	beq 7,.L578
	addi 3,3,4
	addi 4,4,4
	bdz .L585
.L576:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	cmpwi 7,9,0
	beq 1,.L588
.L578:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	bge 5,.L580
	li 4,-1
	extsw 3,4
	blr
	.p2align 4,,15
.L580:
	mfcr 4,4
	rlwinm 4,4,22,1
	extsw 3,4
	blr
	.p2align 4,,15
.L585:
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
	beq 0,.L593
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L610
.L596:
	srdi 0,5,1
	mtctr 0
.L590:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr 7
	addi 3,3,4
	bdnz .L590
.L593:
	li 3,0
	blr
	.p2align 4,,15
.L610:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr 1
	cmpdi 5,9,0
	addi 3,3,4
	bne 5,.L596
	b .L593
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
	beq 0,.L617
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L634
.L620:
	srdi 0,5,1
	mtctr 0
	b .L612
	.p2align 4,,15
.L614:
	lwz 12,4(3)
	lwz 9,4(4)
	addi 3,7,4
	addi 4,11,4
	cmpw 1,12,9
	bne 1,.L629
	bdz .L617
.L612:
	lwz 5,0(3)
	lwz 6,0(4)
	addi 7,3,4
	addi 11,4,4
	cmpw 1,5,6
	beq 1,.L614
.L629:
	mfcr 3,64
	rlwinm 3,3,6,1
	li 4,-1
	isel 8,4,3,4
	extsw 3,8
	blr
	.p2align 4,,15
.L634:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne 1,.L629
	cmpdi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne 5,.L620
.L617:
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
	beq 0,.L636
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
.L636:
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
	beq 0,.L662
	sldi 9,5,2
	subf 10,4,3
	cmpld 1,10,9
	blt 1,.L643
	cmpdi 5,5,0
	beq 5,.L662
	addi 7,5,-1
	cmpldi 6,7,10
	mr 12,7
	ble 6,.L647
	addi 6,4,4
	subf 8,6,3
	cmpldi 7,8,8
	ble 7,.L647
	srdi 11,3,2
	neg 0,11
	andi. 10,0,0x3
	beq 0,.L657
	andi. 9,0,0x2
	lwz 9,0(4)
	addi 11,3,4
	addi 7,5,-2
	stw 9,0(3)
	beq 0,.L648
	cmpldi 1,10,3
	lwz 7,4(4)
	stw 7,4(3)
	bne 1,.L702
	lwz 12,8(4)
	addi 6,4,12
	addi 11,3,12
	addi 7,5,-4
	stw 12,8(3)
.L648:
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
	bne 0,.L703
.L677:
	srdi 9,9,1
	mtctr 9
.L652:
	lvx 1,4,8
	addi 0,8,16
	vperm 0,1,0,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,4,0
	vperm 1,0,1,13
	stvx 1,10,0
	bdnz .L652
.L689:
	andi. 9,5,0x3
	rldicr 5,5,0,61
	sldi 12,5,2
	subf 4,5,7
	add 8,6,12
	add 10,11,12
	beq 0,.L662
	cmpdi 6,4,0
	lwzx 6,6,12
	stwx 6,11,12
	beq 6,.L662
	cmpldi 7,4,1
	lwz 11,4(8)
	stw 11,4(10)
	beq 7,.L662
	lwz 7,8(8)
	stw 7,8(10)
.L662:
	lwz 9,-4(1)
	mtvrsave 9
	blr
	.p2align 4,,15
.L643:
	cmpdi 1,5,0
	beq 1,.L662
	andi. 10,5,0x1
	add 4,4,9
	addi 7,5,-1
	add 9,3,9
	bne 0,.L704
.L671:
	srdi 10,5,1
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L696
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L646:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L646
	lwz 9,-4(1)
	mtvrsave 9
	blr
	.p2align 4,,15
.L696:
	lwz 5,-4(4)
	mr 12,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 5,4(9)
	lwz 0,-8(12)
	stw 0,-8(10)
	bdz .L662
	lwz 5,-4(4)
	mr 12,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 5,4(9)
	lwz 0,-8(12)
	stw 0,-8(10)
	bdnz .L696
	b .L662
	.p2align 4,,15
.L704:
	lwzu 8,-4(4)
	cmpdi 5,7,0
	stwu 8,-4(9)
	bne 5,.L671
	b .L662
	.p2align 4,,15
.L703:
	xxlor 33,32,32
	lvx 0,0,4
	cmpdi 5,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,10
	bne 5,.L677
	b .L689
	.p2align 4,,15
.L657:
	mr 6,4
	mr 11,3
	b .L648
	.p2align 4,,15
.L647:
	andi. 10,12,0x1
	addi 5,4,-4
	addi 8,3,-4
	bne 0,.L705
.L674:
	srdi 12,12,1
	addi 0,12,1
	mtctr 0
	b .L655
	.p2align 4,,15
.L706:
	lwz 11,4(10)
	addi 8,8,8
	stw 11,4(6)
.L655:
	lwz 4,4(5)
	addi 10,5,4
	addi 6,8,4
	addi 5,5,8
	stw 4,4(8)
	bdnz .L706
	b .L662
.L705:
	lwz 9,0(4)
	mr 5,4
	mr 8,3
	stw 9,0(3)
	b .L674
	.p2align 4,,15
.L702:
	addi 6,4,8
	addi 11,3,8
	addi 7,5,-3
	b .L648
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
	ble 1,.L716
	mfvrsave 11
	std 31,-8(1)
	oris 6,11,0x8000
	stw 11,-12(1)
	mtvrsave 6
	.cfi_offset 31, -8
	cmpdi 5,9,0
	mr 11,3
	beq 5,.L710
	andi. 10,0,0x2
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
	beq 0,.L710
	cmpldi 6,9,3
	stw 4,4(3)
	addi 11,3,8
	addi 7,5,-3
	bne 6,.L710
	stw 4,8(3)
	addi 11,3,12
	addi 7,5,-4
.L710:
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
	xxspltw 0,32,3
	beq 0,.L738
	cmpdi 7,6,1
	beq 7,.L742
	cmpdi 1,6,2
	beq 1,.L743
	xxpermdi 0,0,0,2
	rldicr 6,9,0,59
	mr 8,12
	addi 9,9,16
	stxvd2x 0,0,6
	xxpermdi 0,0,0,2
.L743:
	xxpermdi 1,0,0,2
	rldicr 12,9,0,59
	addi 8,8,-1
	addi 9,9,16
	stxvd2x 1,0,12
	xxpermdi 0,1,1,2
.L742:
	cmpdi 5,8,1
	xxpermdi 2,0,0,2
	rldicr 6,9,0,59
	addi 9,9,16
	stxvd2x 2,0,6
	xxpermdi 0,2,2,2
	beq 5,.L756
.L738:
	srdi 10,10,2
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L761
	addi 10,10,-1
	mtctr 10
	addi 8,9,16
	addi 6,8,16
.L714:
	rldicr 10,9,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,10
	xxpermdi 0,0,0,2
	mr 10,9
	rldicr 8,8,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,8
	xxpermdi 0,0,0,2
	addi 9,9,64
	addi 10,10,48
	rldicr 6,6,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,6
	xxpermdi 0,0,0,2
	addi 8,9,16
	rldicr 10,10,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,10
	xxpermdi 0,0,0,2
	addi 6,8,16
	bdnz .L714
	rldicr 10,9,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,10
	xxpermdi 0,0,0,2
	rldicr 8,8,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,8
	xxpermdi 0,0,0,2
	addi 10,9,48
	rldicr 6,6,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,6
	xxpermdi 0,0,0,2
	rldicr 10,10,0,59
	xxpermdi 0,0,0,2
	stxvd2x 0,0,10
.L756:
	andi. 9,5,0x3
	beq 0,.L708
	rldicr 5,5,0,61
	subf 7,5,7
	sldi 9,5,2
	cmpdi 7,7,0
	add 11,11,9
	stw 4,0(11)
	beq 7,.L708
	cmpldi 1,7,1
	stw 4,4(11)
	beq 1,.L708
	cmpldi 5,7,2
	stw 4,8(11)
	beq 5,.L708
	cmpldi 6,7,3
	stw 4,12(11)
	beq 6,.L708
	cmpldi 0,7,4
	stw 4,16(11)
	beq 0,.L708
	stw 4,20(11)
.L708:
	lwz 4,-12(1)
	mtvrsave 4
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L761:
	.cfi_restore_state
	xxpermdi 3,0,0,2
	addi 0,9,16
	addi 10,9,48
	addi 12,9,32
	rldicr 31,9,0,59
	xxpermdi 4,3,3,2
	rldicr 6,0,0,59
	rldicr 12,12,0,59
	stxvd2x 3,0,31
	rldicr 10,10,0,59
	addi 9,9,64
	xxpermdi 5,4,4,2
	stxvd2x 5,0,6
	xxpermdi 6,5,5,2
	xxpermdi 7,6,6,2
	stxvd2x 7,0,12
	xxpermdi 8,7,7,2
	xxpermdi 9,8,8,2
	stxvd2x 9,0,10
	xxpermdi 0,9,9,2
	bdnz .L761
	b .L756
.L716:
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
	bge 0,.L775
	cmpdi 6,5,0
	add 3,3,5
	add 4,4,5
	beq 6,.L774
	andi. 9,5,0x1
	addi 0,5,-1
	beq 0,.L839
	lbzu 8,-1(3)
	cmpdi 7,0,0
	stbu 8,-1(4)
	beq 7,.L774
.L839:
	srdi 9,5,1
	mtctr 9
	cmpdi 1,9,2
	ble 1,.L877
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L777:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L777
.L774:
	lwz 4,-4(1)
	mtvrsave 4
	blr
	.p2align 4,,15
.L775:
	beq 0,.L774
	cmpdi 1,5,0
	beq 1,.L774
	addi 8,5,-1
	cmpldi 5,8,29
	mr 9,8
	ble 5,.L778
	addi 7,3,1
	subf 10,7,4
	cmpldi 6,10,14
	ble 6,.L778
	neg 12,4
	andi. 10,12,0xf
	beq 0,.L800
	andi. 6,12,0xe
	lbz 6,0(3)
	addi 11,4,1
	stb 6,0(4)
	beq 0,.L779
	cmpldi 7,10,2
	lbz 0,1(3)
	stb 0,1(4)
	ble 7,.L882
	andi. 8,12,0xc
	lbz 9,2(3)
	stb 9,2(4)
	beq 0,.L883
	cmpldi 1,10,4
	lbz 11,3(3)
	stb 11,3(4)
	ble 1,.L884
	cmpldi 5,10,5
	lbz 7,4(3)
	stb 7,4(4)
	beq 5,.L885
	cmpldi 6,10,6
	lbz 8,5(3)
	stb 8,5(4)
	beq 6,.L886
	andi. 9,12,0x8
	lbz 12,6(3)
	addi 7,3,7
	addi 11,4,7
	addi 8,5,-7
	stb 12,6(4)
	beq 0,.L779
	cmpldi 7,10,8
	lbz 6,7(3)
	addi 7,3,8
	addi 11,4,8
	addi 8,5,-8
	stb 6,7(4)
	ble 7,.L779
	cmpldi 1,10,9
	lbz 0,8(3)
	addi 7,3,9
	addi 11,4,9
	addi 8,5,-9
	stb 0,8(4)
	beq 1,.L779
	cmpldi 5,10,10
	lbz 9,9(3)
	addi 7,3,10
	addi 11,4,10
	addi 8,5,-10
	stb 9,9(4)
	beq 5,.L779
	cmpldi 6,10,11
	lbz 12,10(3)
	addi 7,3,11
	addi 11,4,11
	addi 8,5,-11
	stb 12,10(4)
	beq 6,.L779
	cmpldi 0,10,12
	lbz 6,11(3)
	addi 7,3,12
	addi 11,4,12
	addi 8,5,-12
	stb 6,11(4)
	beq 0,.L779
	cmpldi 7,10,13
	lbz 0,12(3)
	addi 7,3,13
	addi 11,4,13
	addi 8,5,-13
	stb 0,12(4)
	beq 7,.L779
	cmpldi 1,10,15
	lbz 9,13(3)
	addi 7,3,14
	addi 11,4,14
	addi 8,5,-14
	stb 9,13(4)
	bne 1,.L779
	lbz 12,14(3)
	addi 7,3,15
	addi 11,4,15
	addi 8,5,-15
	stb 12,14(4)
	.p2align 4,,15
.L779:
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
	bne 0,.L887
.L845:
	srdi 9,9,1
	mtctr 9
.L795:
	lvx 1,3,10
	addi 6,10,16
	vperm 0,1,0,13
	stvx 0,4,10
	addi 10,10,32
	lvx 0,3,6
	vperm 1,0,1,13
	stvx 1,4,6
	bdnz .L795
.L870:
	andi. 9,5,0xf
	rldicr 5,5,0,59
	subf 0,5,8
	add 4,11,5
	add 8,7,5
	beq 0,.L774
	cmpldi 6,0,1
	lbzx 7,7,5
	stbx 7,11,5
	beq 6,.L774
	cmpldi 7,0,2
	lbz 11,1(8)
	stb 11,1(4)
	beq 7,.L774
	cmpldi 1,0,3
	lbz 12,2(8)
	stb 12,2(4)
	beq 1,.L774
	cmpldi 5,0,4
	lbz 3,3(8)
	stb 3,3(4)
	beq 5,.L774
	cmpldi 0,0,5
	lbz 10,4(8)
	stb 10,4(4)
	beq 0,.L774
	cmpldi 6,0,6
	lbz 9,5(8)
	stb 9,5(4)
	beq 6,.L774
	cmpldi 7,0,7
	lbz 6,6(8)
	stb 6,6(4)
	beq 7,.L774
	cmpldi 1,0,8
	lbz 5,7(8)
	stb 5,7(4)
	beq 1,.L774
	cmpldi 5,0,9
	lbz 7,8(8)
	stb 7,8(4)
	beq 5,.L774
	cmpldi 0,0,10
	lbz 11,9(8)
	stb 11,9(4)
	beq 0,.L774
	cmpldi 6,0,11
	lbz 12,10(8)
	stb 12,10(4)
	beq 6,.L774
	cmpldi 7,0,12
	lbz 3,11(8)
	stb 3,11(4)
	beq 7,.L774
	cmpldi 1,0,13
	lbz 10,12(8)
	stb 10,12(4)
	beq 1,.L774
	cmpldi 5,0,14
	lbz 0,13(8)
	stb 0,13(4)
	beq 5,.L774
	lbz 8,14(8)
	stb 8,14(4)
	b .L774
	.p2align 4,,15
.L877:
	lbz 5,-1(3)
	mr 11,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 5,1(4)
	lbz 6,-2(11)
	stb 6,-2(9)
	bdz .L774
	lbz 5,-1(3)
	mr 11,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 5,1(4)
	lbz 6,-2(11)
	stb 6,-2(9)
	bdnz .L877
	b .L774
	.p2align 4,,15
.L887:
	xxlor 33,32,32
	lvx 0,0,3
	cmpdi 5,12,0
	li 10,16
	vperm 1,0,1,13
	stvx 1,0,4
	bne 5,.L845
	b .L870
	.p2align 4,,15
.L778:
	andi. 10,9,0x1
	addi 5,3,-1
	addi 11,4,-1
	bne 0,.L888
.L842:
	srdi 9,9,1
	addi 6,9,1
	mtctr 6
	b .L798
	.p2align 4,,15
.L889:
	lbz 10,1(3)
	addi 11,11,2
	stb 10,1(7)
.L798:
	lbz 12,1(5)
	addi 3,5,1
	addi 7,11,1
	addi 5,5,2
	stb 12,1(11)
	bdnz .L889
	b .L774
.L888:
	mr 11,4
	lbz 4,0(3)
	mr 5,3
	stb 4,0(11)
	b .L842
.L882:
	addi 7,3,2
	addi 11,4,2
	addi 8,5,-2
	b .L779
.L883:
	addi 7,3,3
	addi 11,4,3
	addi 8,5,-3
	b .L779
.L884:
	addi 7,3,4
	addi 11,4,4
	addi 8,5,-4
	b .L779
.L885:
	addi 7,3,5
	addi 11,4,5
	addi 8,5,-5
	b .L779
.L800:
	mr 11,4
	mr 7,3
	mr 8,5
	b .L779
.L886:
	addi 7,3,6
	addi 11,4,6
	addi 8,5,-6
	b .L779
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
	b .L906
	.p2align 4,,15
.L915:
	addi 9,9,1
	bne 0,.L905
	bdz .L914
.L906:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq 7,.L915
.L905:
	extsw 3,9
	blr
	.p2align 4,,15
.L914:
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
	beq 0,.L919
	andi. 3,9,0x1
	bne 0,.L917
	li 3,1
	.p2align 4,,15
.L918:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L918
.L917:
	extsw 3,3
	blr
	.p2align 4,,15
.L919:
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
	addis 9,2,.LC4@toc@ha
	li 0,1
	lfs 0,.LC4@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L923
	addis 3,2,.LC5@toc@ha
	lfs 2,.LC5@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L923:
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
	addis 9,2,.LC8@toc@ha
	li 0,1
	lfd 0,.LC8@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L926
	addis 3,2,.LC9@toc@ha
	lfd 2,.LC9@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L926:
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
	addis 9,2,.LC12@toc@ha
	fmr 0,1
	fmr 1,2
	li 0,1
	addi 3,9,.LC12@toc@l
	lfd 12,0(3)
	lfd 13,8(3)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	blt 0,.L929
	addis 4,2,.LC13@toc@ha
	addi 5,4,.LC13@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,0,12
	bne 1,$+8
	fcmpu 1,1,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L929:
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
	stw 4,-16(1)
	addi 9,1,-16
	xxlxor 3,3,3
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
	blt 5,.L945
	addis 9,2,.LC16@toc@ha
	lfs 2,.LC16@toc@l(9)
.L934:
	andi. 9,4,0x1
	beq 0,.L935
	.p2align 4,,15
.L936:
	fmuls 1,1,2
.L935:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L936
.L946:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L936
	b .L946
	.p2align 4,,15
.L945:
	addis 3,2,.LC17@toc@ha
	lfs 2,.LC17@toc@l(3)
	b .L934
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
	blt 5,.L960
	addis 9,2,.LC20@toc@ha
	lfd 2,.LC20@toc@l(9)
.L949:
	andi. 9,4,0x1
	beq 0,.L950
	.p2align 4,,15
.L951:
	fmul 1,1,2
.L950:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne 0,.L951
.L961:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne 0,.L951
	b .L961
	.p2align 4,,15
.L960:
	addis 3,2,.LC21@toc@ha
	lfd 2,.LC21@toc@l(3)
	b .L949
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
	bun 0,.L963
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
	beq 1,.L978
	cmpwi 5,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 5,.L979
	addis 9,2,.LC24@toc@ha
	addi 3,9,.LC24@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L964:
	andi. 9,31,0x1
	beq 0,.L965
	.p2align 4,,15
.L966:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L965:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L977
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
	bne 0,.L966
.L980:
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
	bne 0,.L966
	b .L980
	.p2align 4,,15
.L977:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L978:
	ld 6,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L963:
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
.L979:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 4,2,.LC25@toc@ha
	addi 5,4,.LC25@toc@l
	lfd 30,0(5)
	lfd 31,8(5)
	b .L964
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
	neg 6,3
	li 11,23
	rldicl 10,6,0,60
	addi 7,5,-1
	addi 8,10,15
	mr 9,7
	cmpldi 1,8,23
	isel 0,11,8,4
	cmpld 5,7,0
	blt 5,.L1003
	mfvrsave 12
	oris 9,12,0xc00c
	stw 12,-4(1)
	mtvrsave 9
	cmpdi 6,10,0
	beq 6,.L1004
	lbz 9,0(3)
	lbz 12,0(4)
	andi. 0,6,0xe
	xor 0,12,9
	stb 0,0(3)
	beq 0,.L1032
	lbz 7,1(3)
	lbz 11,1(4)
	cmpldi 7,10,2
	xor 12,11,7
	stb 12,1(3)
	ble 7,.L1033
	lbz 0,2(3)
	lbz 9,2(4)
	andi. 11,6,0xc
	xor 11,9,0
	stb 11,2(3)
	beq 0,.L1034
	lbz 7,3(3)
	lbz 12,3(4)
	cmpldi 1,10,4
	xor 9,12,7
	stb 9,3(3)
	ble 1,.L1035
	lbz 11,4(3)
	lbz 0,4(4)
	cmpldi 5,10,5
	xor 12,0,11
	stb 12,4(3)
	beq 5,.L1036
	lbz 7,5(3)
	lbz 9,5(4)
	cmpldi 6,10,6
	xor 0,9,7
	stb 0,5(3)
	beq 6,.L1037
	lbz 11,6(3)
	andi. 6,6,0x8
	lbz 6,6(4)
	addi 7,5,-7
	xor 12,6,11
	addi 11,4,7
	addi 6,3,7
	stb 12,6(3)
	beq 0,.L984
	lbz 7,7(3)
	lbz 9,7(4)
	cmpldi 7,10,8
	xor 0,9,7
	stb 0,7(3)
	ble 7,.L1038
	lbz 11,8(3)
	lbz 6,8(4)
	cmpldi 1,10,9
	xor 12,6,11
	stb 12,8(3)
	beq 1,.L1039
	lbz 7,9(3)
	lbz 9,9(4)
	cmpldi 5,10,10
	xor 0,9,7
	stb 0,9(3)
	beq 5,.L1040
	lbz 11,10(3)
	lbz 6,10(4)
	cmpldi 6,10,11
	xor 12,6,11
	stb 12,10(3)
	beq 6,.L1041
	lbz 7,11(3)
	lbz 9,11(4)
	cmpldi 0,10,12
	xor 0,9,7
	stb 0,11(3)
	beq 0,.L1042
	lbz 11,12(3)
	lbz 6,12(4)
	cmpldi 7,10,13
	xor 12,6,11
	stb 12,12(3)
	beq 7,.L1043
	lbz 7,13(3)
	lbz 9,13(4)
	cmpldi 1,10,15
	xor 0,9,7
	stb 0,13(3)
	bne 1,.L1044
	lbz 9,14(3)
	lbz 12,14(4)
	addi 11,4,15
	addi 6,3,15
	addi 7,5,-15
	xor 0,12,9
	stb 0,14(3)
	.p2align 4,,15
.L984:
	subf 5,10,5
	add 12,4,10
	lvx 1,4,10
	add 4,4,8
	srdi 8,5,4
	mtctr 8
	neg 9,12
	add 10,3,10
	lvsl 13,0,9
	li 9,0
	.p2align 4,,15
.L1000:
	lvx 12,10,9
	xxlor 32,33,33
	lvx 1,4,9
	addi 12,1,-32
	add 0,10,9
	rldicr 8,0,0,59
	addi 9,9,16
	xxpermdi 0,44,44,2
	vperm 0,1,0,13
	stxvd2x 0,0,12
	xxpermdi 0,0,0,2
	xxlxor 1,0,32
	xxpermdi 2,1,1,2
	stxvd2x 2,0,8
	bdnz .L1000
	andi. 9,5,0xf
	rldicr 5,5,0,59
	add 6,6,5
	add 11,11,5
	subf 7,5,7
	beq 0,.L982
	addi 4,7,-1
	addi 12,11,-1
	andi. 10,4,0x1
	addi 10,6,-1
	beq 0,.L1012
	lbz 8,0(6)
	lbz 0,0(11)
	mr 12,11
	mr 10,6
	xor 9,0,8
	stb 9,0(6)
.L1012:
	srdi 5,4,1
	addi 6,5,1
	mtctr 6
	b .L1002
	.p2align 4,,15
.L1045:
	lbz 5,1(8)
	lbz 9,1(4)
	addi 10,10,2
	xor 6,9,5
	stb 6,1(8)
.L1002:
	lbz 11,1(12)
	lbz 7,1(10)
	addi 4,12,1
	addi 8,10,1
	addi 12,12,2
	xor 0,11,7
	stb 0,1(10)
	bdnz .L1045
.L982:
	lwz 12,-4(1)
	mtvrsave 12
	blr
.L1035:
	addi 11,4,4
	addi 6,3,4
	addi 7,5,-4
	b .L984
.L1003:
	andi. 10,7,0x1
	addi 12,3,-1
	addi 7,4,-1
	bne 0,.L1046
.L1025:
	srdi 10,9,1
	addi 8,10,1
	mtctr 8
	b .L1028
	.p2align 4,,15
.L1047:
	lbz 10,1(4)
	lbz 11,1(5)
	addi 12,12,2
	xor 8,11,10
	stb 8,1(4)
.L1028:
	lbz 9,1(7)
	lbz 0,1(12)
	addi 5,7,1
	addi 4,12,1
	addi 7,7,2
	xor 6,9,0
	stb 6,1(12)
	bdnz .L1047
	blr
.L1046:
	lbz 6,0(3)
	mr 7,4
	lbz 4,0(4)
	mr 12,3
	xor 11,4,6
	stb 11,0(3)
	b .L1025
.L1032:
	addi 11,4,1
	addi 6,3,1
	b .L984
.L1033:
	addi 11,4,2
	addi 6,3,2
	addi 7,5,-2
	b .L984
.L1034:
	addi 11,4,3
	addi 6,3,3
	addi 7,5,-3
	b .L984
.L1036:
	addi 11,4,5
	addi 6,3,5
	addi 7,5,-5
	b .L984
.L1004:
	mr 6,3
	mr 11,4
	mr 7,5
	b .L984
.L1042:
	addi 11,4,12
	addi 6,3,12
	addi 7,5,-12
	b .L984
.L1037:
	addi 11,4,6
	addi 6,3,6
	addi 7,5,-6
	b .L984
.L1038:
	addi 11,4,8
	addi 6,3,8
	addi 7,5,-8
	b .L984
.L1039:
	addi 11,4,9
	addi 6,3,9
	addi 7,5,-9
	b .L984
.L1040:
	addi 11,4,10
	addi 6,3,10
	addi 7,5,-10
	b .L984
.L1041:
	addi 11,4,11
	addi 6,3,11
	addi 7,5,-11
	b .L984
.L1043:
	addi 11,4,13
	addi 6,3,13
	addi 7,5,-13
	b .L984
.L1044:
	addi 11,4,14
	addi 6,3,14
	addi 7,5,-14
	b .L984
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
	beq 0,.L1049
	.p2align 4,,15
.L1050:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1050
.L1049:
	cmpdi 5,5,0
	beq 5,.L1051
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne 0,.L1074
.L1062:
	srdi 0,5,1
	mtctr 0
.L1052:
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
	bdnz .L1052
.L1051:
	li 6,0
	stb 6,0(9)
	blr
	.p2align 4,,15
.L1074:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr 6
	cmpdi 7,7,0
	addi 9,9,1
	bne 7,.L1062
	b .L1051
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
	beq 0,.L1087
	cmpdi 1,8,1
	beq 1,.L1098
	cmpdi 5,8,2
	beq 5,.L1099
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr 6
	li 3,1
.L1099:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr 7
	addi 3,3,1
.L1098:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr 1
	.p2align 4,,15
.L1087:
	srdi 10,10,2
.L1076:
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
	bne 1,.L1076
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
	beq 0,.L1113
.L1109:
	mr 10,4
	b .L1112
	.p2align 4,,15
.L1111:
	beqlr 7
.L1112:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne 1,.L1111
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne 5,.L1109
.L1113:
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
.L1119:
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
	bne 0,.L1119
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
	beq 0,.L1135
	mr 9,4
	.p2align 4,,15
.L1124:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne 1,.L1124
	subf. 6,4,9
	mr 3,8
	beqlr 0
	addi 3,6,-1
	b .L1143
	.p2align 4,,15
.L1146:
	cmpwi 6,12,0
	addi 8,8,1
	beq 6,.L1145
.L1143:
	lbz 12,0(8)
	cmpw 5,12,5
	bne 5,.L1146
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 10,11
	mr 7,8
	b .L1126
	.p2align 4,,15
.L1148:
	bdz .L1128
	bne 7,.L1129
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq 1,.L1147
	lbzu 10,1(6)
.L1126:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne 0,.L1148
.L1129:
	addi 8,8,1
	b .L1143
	.p2align 4,,15
.L1145:
	li 3,0
	blr
	.p2align 4,,15
.L1147:
	lbz 9,1(6)
.L1128:
	cmpw 5,12,9
	bne 5,.L1129
.L1135:
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
	blt 0,.L1159
	bnglr 0
	fcmpu 1,2,0
	bnllr 1
	fneg 1,1
	blr
	.p2align 4,,15
.L1159:
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
	blt 1,.L1168
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt 5,.L1168
	lbz 12,0(5)
	cmpldi 7,6,1
	addi 11,3,-1
	b .L1165
	.p2align 4,,15
.L1162:
	cmpld 1,0,9
	blt 1,.L1168
.L1165:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne 6,.L1162
	beqlr 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
	.p2align 5
.L1163:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne 0,.L1162
	bdnz .L1163
	blr
	.p2align 4,,15
.L1168:
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
	beq 0,.L1177
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L1177:
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
	blt 7,.L1205
	addis 9,2,.LC32@toc@ha
	li 10,0
	lfd 2,.LC32@toc@l(9)
	fcmpu 0,1,2
	cror 2,1,2
	bne 0,.L1206
.L1185:
	addis 11,2,.LC21@toc@ha
	addis 12,2,.LC32@toc@ha
	li 8,0
	lfd 7,.LC21@toc@l(11)
	lfd 8,.LC32@toc@l(12)
	.p2align 5
.L1191:
	fmul 1,1,7
	addi 8,8,1
	fcmpu 0,1,8
	cror 2,1,2
	beq 0,.L1191
	cmpwi 1,10,0
	stw 8,0(4)
	beqlr 1
.L1208:
	fneg 1,1
	blr
	.p2align 4,,15
.L1206:
	addis 3,2,.LC21@toc@ha
	lfd 3,.LC21@toc@l(3)
	fcmpu 1,1,3
	bnl 1,.L1188
	bne 7,.L1197
.L1188:
	li 0,0
	stw 0,0(4)
	blr
	.p2align 4,,15
.L1205:
	addis 5,2,.LC28@toc@ha
	fneg 12,1
	lfd 4,.LC28@toc@l(5)
	fcmpu 5,1,4
	cror 22,20,22
	bne 5,.L1207
	fmr 1,12
	li 10,1
	b .L1185
	.p2align 4,,15
.L1207:
	addis 6,2,.LC30@toc@ha
	lfd 5,.LC30@toc@l(6)
	fcmpu 6,1,5
	bng 6,.L1188
	li 10,1
.L1186:
	addis 7,2,.LC21@toc@ha
	fmr 1,12
	li 8,0
	lfd 6,.LC21@toc@l(7)
	.p2align 4,,15
.L1193:
	fadd 1,1,1
	addi 8,8,-1
	fcmpu 7,1,6
	blt 7,.L1193
	cmpwi 1,10,0
	stw 8,0(4)
	bne 1,.L1208
	blr
.L1197:
	fmr 12,1
	b .L1186
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
.L1211:
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
	bne 0,.L1211
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
	blt 0,.L1216
	b .L1237
	.p2align 4,,15
.L1220:
	rldicl 4,0,0,32
	slwi 9,9,1
	ble 7,.L1218
	cmpwi 5,4,0
	slwi 6,4,1
	cmplw 6,3,6
	blt 5,.L1221
	rldicl 4,6,0,32
	slwi 9,9,1
	ble 6,.L1218
	bdz .L1219
.L1216:
	cmpwi 1,4,0
	slwi 0,4,1
	addi 10,12,-1
	cmplw 7,3,0
	addi 12,10,-1
	bge 1,.L1220
.L1221:
	li 12,0
	li 11,1
	li 10,0
	.p2align 4,,15
.L1222:
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
	bne 7,.L1222
.L1219:
	cmpdi 6,5,0
	isel 5,12,3,26
	rldicl 3,5,0,32
	blr
	.p2align 4,,15
.L1218:
	cmpwi 0,9,0
	bne 0,.L1221
	li 12,0
	b .L1219
	.p2align 4,,15
.L1237:
	isel 9,0,9,1
	subf 4,4,3
	andi. 12,9,0xff
	isel 3,3,4,2
	rldicl 3,3,0,32
	b .L1219
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
	beq 0,.L1242
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1242:
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
	beq 0,.L1245
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
	.p2align 4,,15
.L1245:
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
	beq 0,.L1247
	.p2align 5
.L1248:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne 0,.L1248
.L1247:
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
	blt 0,.L1255
	add 8,4,5
	mr 10,5
	cmpld 1,3,8
	ble 1,.L1381
.L1255:
	cmpwi 1,9,0
	addi 7,4,-8
	addi 8,3,-8
	beq 1,.L1326
	andi. 10,9,0x1
	addi 0,9,-1
	mr 11,9
	bne 0,.L1382
.L1305:
	srdi 10,11,1
	mtctr 10
	cmpdi 6,10,2
	ble 6,.L1348
	addi 10,10,-1
	mtctr 10
	addi 9,9,-2
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 10,8,8
	std 11,8(10)
.L1258:
	addi 9,9,-2
	ld 11,16(6)
	std 11,16(10)
	addi 6,6,16
	ld 11,8(6)
	addi 10,10,16
	std 11,8(10)
	bdnz .L1258
.L1329:
	cmplw 7,12,5
	bgelr 7
	subf 7,12,5
	rldicl 11,12,0,32
	addi 8,7,-1
	cmplwi 1,8,29
	ble 1,.L1357
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
	ble 5,.L1260
	neg 8,6
	andi. 10,8,0xf
	beq 0,.L1270
	andi. 6,8,0xe
	lbzx 6,4,11
	stbx 6,3,11
	beq 0,.L1383
	std 31,-8(1)
	.cfi_offset 31, -8
	cmplwi 6,10,2
	addi 6,12,2
	lbzx 31,4,0
	stbx 31,3,0
	ble 6,.L1379
	rldicl 0,6,0,32
	addi 6,12,3
	lbzx 31,4,0
	stbx 31,3,0
	rldicr. 0,8,60,1
	beq 0,.L1379
	rldicl 0,6,0,32
	cmplwi 7,10,4
	addi 6,12,4
	lbzx 31,4,0
	stbx 31,3,0
	ble 7,.L1379
	rldicl 0,6,0,32
	cmplwi 1,10,5
	addi 6,12,5
	lbzx 31,4,0
	stbx 31,3,0
	beq 1,.L1379
	rldicl 0,6,0,32
	cmplwi 5,10,6
	addi 6,12,6
	lbzx 31,4,0
	stbx 31,3,0
	beq 5,.L1379
	rldicl 0,6,0,32
	andi. 8,8,0x8
	addi 6,12,7
	lbzx 8,4,0
	stbx 8,3,0
	beq 0,.L1379
	rldicl 31,6,0,32
	cmplwi 6,10,8
	addi 6,12,8
	lbzx 0,4,31
	stbx 0,3,31
	ble 6,.L1379
	rldicl 8,6,0,32
	cmplwi 7,10,9
	addi 6,12,9
	lbzx 31,4,8
	stbx 31,3,8
	beq 7,.L1379
	rldicl 8,6,0,32
	cmplwi 1,10,10
	addi 6,12,10
	lbzx 0,4,8
	stbx 0,3,8
	beq 1,.L1379
	rldicl 31,6,0,32
	cmplwi 5,10,11
	addi 6,12,11
	lbzx 8,4,31
	stbx 8,3,31
	beq 5,.L1379
	rldicl 31,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 0,4,31
	stbx 0,3,31
	beq 0,.L1379
	rldicl 8,6,0,32
	cmplwi 6,10,13
	addi 6,12,13
	lbzx 31,4,8
	stbx 31,3,8
	beq 6,.L1379
	rldicl 8,6,0,32
	cmplwi 7,10,15
	addi 6,12,14
	lbzx 0,4,8
	stbx 0,3,8
	bne 7,.L1379
	rldicl 31,6,0,32
	addi 6,12,15
	lbzx 12,4,31
	stbx 12,3,31
	ld 31,-8(1)
	.cfi_restore 31
	b .L1261
	.p2align 4,,15
.L1348:
	ld 0,8(7)
	mr 11,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 6,16(11)
	std 6,16(10)
	bdz .L1329
	ld 0,8(7)
	mr 11,7
	mr 10,8
	addi 9,9,-2
	addi 7,7,16
	addi 8,8,16
	std 0,-8(8)
	ld 6,16(11)
	std 6,16(10)
	bdnz .L1348
	b .L1329
	.p2align 4,,15
.L1382:
	mr. 9,0
	ld 6,0(4)
	mr 7,4
	mr 8,3
	std 6,0(3)
	bne 0,.L1305
	b .L1329
	.p2align 4,,15
.L1381:
	cmpdi 5,5,0
	addi 9,5,-1
	rldicl 5,9,0,32
	addi 0,5,1
	add 4,4,0
	add 3,3,0
	beqlr 5
	andi. 9,10,0x1
	addi 6,10,-1
	beq 0,.L1308
	lbzu 7,-1(4)
	cmpdi 6,6,0
	stbu 7,-1(3)
	beqlr 6
.L1308:
	srdi 9,10,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1349
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1268:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1268
	blr
	.p2align 4,,15
.L1379:
	.cfi_offset 31, -8
	ld 31,-8(1)
	.cfi_restore 31
.L1261:
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
	beq 0,.L1302
	xxlor 33,32,32
	lvx 0,11,9
	cmpdi 1,12,0
	vperm 1,0,1,13
	stvx 1,10,9
	addi 9,9,16
	beq 1,.L1333
.L1302:
	srdi 8,8,1
	mtctr 8
.L1264:
	lvx 1,11,9
	addi 0,9,16
	vperm 0,1,0,13
	stvx 0,10,9
	addi 9,9,32
	lvx 0,11,0
	vperm 1,0,1,13
	stvx 1,10,0
	bdnz .L1264
.L1333:
	andi. 9,7,0xf
	rlwinm 9,7,0,0,27
	add 6,9,6
	beq 0,.L1251
	rldicl 11,6,0,32
	addi 10,6,1
	cmplw 5,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bge 5,.L1251
	rldicl 12,10,0,32
	addi 8,6,2
	cmplw 6,8,5
	lbzx 0,4,12
	stbx 0,3,12
	bge 6,.L1251
	rldicl 9,8,0,32
	addi 11,6,3
	cmplw 7,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 7,.L1251
	rldicl 12,11,0,32
	addi 8,6,4
	cmplw 1,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 1,.L1251
	rldicl 0,8,0,32
	addi 9,6,5
	cmplw 0,9,5
	lbzx 11,4,0
	stbx 11,3,0
	bge 0,.L1251
	rldicl 10,9,0,32
	addi 12,6,6
	cmplw 5,12,5
	lbzx 8,4,10
	stbx 8,3,10
	bge 5,.L1251
	rldicl 0,12,0,32
	addi 9,6,7
	cmplw 6,9,5
	lbzx 7,4,0
	stbx 7,3,0
	bge 6,.L1251
	rldicl 11,9,0,32
	addi 10,6,8
	cmplw 7,10,5
	lbzx 12,4,11
	stbx 12,3,11
	bge 7,.L1251
	rldicl 8,10,0,32
	addi 0,6,9
	cmplw 1,0,5
	lbzx 9,4,8
	stbx 9,3,8
	bge 1,.L1251
	rldicl 11,0,0,32
	addi 10,6,10
	cmplw 0,10,5
	lbzx 7,4,11
	stbx 7,3,11
	bge 0,.L1251
	rldicl 12,10,0,32
	addi 8,6,11
	cmplw 5,8,5
	lbzx 0,4,12
	stbx 0,3,12
	bge 5,.L1251
	rldicl 9,8,0,32
	addi 11,6,12
	cmplw 6,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 6,.L1251
	rldicl 12,11,0,32
	addi 8,6,13
	cmplw 7,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 7,.L1251
	rldicl 0,8,0,32
	addi 6,6,14
	cmplw 1,6,5
	lbzx 5,4,0
	stbx 5,3,0
	bge 1,.L1251
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
.L1251:
	lwz 5,-12(1)
	mtvrsave 5
	blr
	.p2align 4,,15
.L1349:
	lbz 11,-1(4)
	mr 12,4
	mr 10,3
	addi 4,4,-2
	addi 3,3,-2
	stb 11,1(3)
	lbz 8,-2(12)
	stb 8,-2(10)
	bdnz .L1349
.L1356:
	blr
.L1383:
	addi 6,12,1
	b .L1261
.L1260:
	rldicl 10,7,0,32
	addi 11,11,-1
	andi. 9,10,0x1
	add 4,4,11
	add 11,3,11
	addi 3,10,-1
	beq 0,.L1299
	lbzu 12,1(4)
	cmpdi 5,3,0
	stbu 12,1(11)
	beq 5,.L1251
.L1299:
	srdi 9,10,1
	mtctr 9
	cmpdi 6,9,2
	ble 6,.L1347
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(11)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,11,1
	stb 8,1(9)
.L1266:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1266
	b .L1251
	.p2align 4,,15
.L1347:
	lbz 8,1(4)
	mr 7,4
	mr 6,11
	addi 4,4,2
	addi 11,11,2
	stb 8,-1(11)
	lbz 0,2(7)
	stb 0,2(6)
	bdnz .L1347
	b .L1251
	.p2align 4,,15
.L1326:
	cmpdi 5,5,0
	rldicl 11,12,0,32
	mr 7,5
	beqlr 5
.L1357:
	rldicl 10,7,0,32
	addi 11,11,-1
	andi. 9,10,0x1
	add 4,4,11
	addi 9,10,-1
	add 11,3,11
	bne 0,.L1384
.L1359:
	srdi 9,10,1
	mtctr 9
	cmpdi 1,9,2
	ble 1,.L1363
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(11)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,11,1
	stb 8,1(9)
.L1362:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1362
	blr
.L1363:
	lbz 12,1(4)
	mr 8,4
	mr 7,11
	addi 4,4,2
	addi 11,11,2
	stb 12,-1(11)
	lbz 6,2(8)
	stb 6,2(7)
	bdnz .L1363
	blr
.L1384:
	lbzu 3,1(4)
	cmpdi 7,9,0
	stbu 3,1(11)
	bne 7,.L1359
	blr
	.p2align 4,,15
.L1270:
	mr 6,12
	b .L1261
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
	blt 0,.L1389
	add 10,4,5
	mr 9,5
	cmpld 1,3,10
	ble 1,.L1450
.L1389:
	cmpwi 1,7,0
	beq 1,.L1388
	addi 6,7,-1
	cmplwi 5,6,13
	ble 5,.L1392
	addi 8,4,2
	subf 12,8,3
	cmpldi 0,12,12
	ble 0,.L1392
	srdi 11,3,1
	neg 0,11
	andi. 9,0,0x7
	beq 0,.L1401
	rldicr. 8,0,61,1
	lhz 10,0(4)
	sth 10,0(3)
	beq 0,.L1402
	cmplwi 6,9,2
	lhz 6,2(4)
	sth 6,2(3)
	ble 6,.L1403
	andi. 10,0,0x4
	lhz 8,4(4)
	sth 8,4(3)
	beq 0,.L1404
	cmplwi 7,9,4
	lhz 12,6(4)
	sth 12,6(3)
	ble 7,.L1405
	cmplwi 1,9,5
	lhz 11,8(4)
	sth 11,8(3)
	beq 1,.L1406
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne 5,.L1407
	lhz 10,12(4)
	li 0,7
	sth 10,12(3)
.L1393:
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
	beq 0,.L1420
	xxlor 33,32,32
	lvx 0,0,11
	cmpdi 6,12,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,9
	beq 6,.L1434
.L1420:
	srdi 10,10,1
	mtctr 10
.L1395:
	lvx 1,11,8
	addi 12,8,16
	vperm 0,1,0,13
	stvx 0,9,8
	addi 8,8,32
	lvx 0,11,12
	vperm 1,0,1,13
	stvx 1,9,12
	bdnz .L1395
.L1434:
	andi. 9,6,0x7
	rlwinm 6,6,0,0,28
	add 11,6,0
	beq 0,.L1388
	rldic 0,11,1,31
	addi 9,11,1
	cmplw 7,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 7,.L1388
	rldic 10,9,1,31
	addi 12,11,2
	cmplw 1,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble 1,.L1388
	rldic 0,12,1,31
	addi 9,11,3
	cmplw 5,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 5,.L1388
	rldic 10,9,1,31
	addi 12,11,4
	cmplw 6,7,12
	lhzx 6,4,10
	sthx 6,3,10
	ble 6,.L1388
	rldic 0,12,1,31
	addi 9,11,5
	cmplw 0,7,9
	lhzx 8,4,0
	sthx 8,3,0
	ble 0,.L1388
	rldic 10,9,1,31
	addi 11,11,6
	cmplw 7,7,11
	lhzx 7,4,10
	sthx 7,3,10
	ble 7,.L1388
	rldic 12,11,1,31
	lhzx 6,4,12
	sthx 6,3,12
.L1388:
	andi. 9,5,0x1
	beq 0,.L1385
	addi 5,5,-1
	rldicl 10,5,0,32
	lbzx 4,4,10
	stbx 4,3,10
.L1385:
	lwz 3,-4(1)
	mtvrsave 3
	blr
	.p2align 4,,15
.L1450:
	cmpdi 5,5,0
	addi 5,5,-1
	rldicl 6,5,0,32
	addi 8,6,1
	add 4,4,8
	add 3,3,8
	beq 5,.L1385
	andi. 10,9,0x1
	addi 12,9,-1
	beq 0,.L1423
	lbzu 11,-1(4)
	cmpdi 6,12,0
	stbu 11,-1(3)
	beq 6,.L1385
.L1423:
	srdi 9,9,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1445
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1400:
	addi 4,10,-1
	lbz 8,-1(4)
	addi 3,9,-1
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
	bdnz .L1400
	b .L1385
	.p2align 4,,15
.L1445:
	lbz 0,-1(4)
	mr 7,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(7)
	stb 10,-2(9)
	bdz .L1385
	lbz 0,-1(4)
	mr 7,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(7)
	stb 10,-2(9)
	bdnz .L1445
	b .L1385
.L1401:
	li 0,0
	b .L1393
	.p2align 4,,15
.L1392:
	andi. 9,7,0x1
	addi 10,4,-2
	addi 0,7,-1
	addi 9,3,-2
	beq 0,.L1417
	cmpdi 1,0,0
	lhz 8,0(4)
	mr 10,4
	mr 9,3
	sth 8,0(3)
	beq 1,.L1388
.L1417:
	srdi 8,7,1
	mtctr 8
	cmpdi 5,8,2
	ble 5,.L1444
	addi 8,8,-1
	mtctr 8
	lhz 6,2(10)
	sth 6,2(9)
	addi 7,10,2
	lhz 6,2(7)
	addi 8,9,2
	sth 6,2(8)
.L1397:
	lhz 6,4(7)
	sth 6,4(8)
	addi 7,7,4
	lhz 6,2(7)
	addi 8,8,4
	sth 6,2(8)
	bdnz .L1397
	b .L1388
	.p2align 4,,15
.L1444:
	lhz 11,2(10)
	mr 7,10
	mr 12,9
	addi 10,10,4
	addi 9,9,4
	sth 11,-2(9)
	lhz 6,4(7)
	sth 6,4(12)
	bdnz .L1444
	b .L1388
.L1402:
	li 0,1
	b .L1393
.L1403:
	li 0,2
	b .L1393
.L1407:
	li 0,6
	b .L1393
.L1404:
	li 0,3
	b .L1393
.L1405:
	li 0,4
	b .L1393
.L1406:
	li 0,5
	b .L1393
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
	blt 0,.L1456
	add 10,4,5
	mr 9,5
	cmpld 1,3,10
	ble 1,.L1576
.L1456:
	cmpwi 1,11,0
	beq 1,.L1577
	addi 6,11,-1
	cmplwi 0,6,10
	ble 0,.L1458
	addi 7,4,4
	subf 8,7,3
	cmpldi 6,8,8
	ble 6,.L1458
	std 31,-8(1)
	.cfi_offset 31, -8
	srdi 31,3,2
	li 0,0
	neg 9,31
	andi. 10,9,0x3
	beq 0,.L1459
	andi. 9,9,0x2
	lwz 6,0(4)
	li 0,1
	stw 6,0(3)
	beq 0,.L1459
	cmplwi 7,10,3
	lwz 7,4(4)
	li 0,2
	stw 7,4(3)
	bne 7,.L1459
	lwz 8,8(4)
	li 0,3
	stw 8,8(3)
.L1459:
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
	bne 0,.L1578
.L1517:
	srdi 9,9,1
	mtctr 9
.L1461:
	lvx 1,7,8
	addi 31,8,16
	vperm 0,1,0,13
	stvx 0,10,8
	addi 8,8,32
	lvx 0,7,31
	vperm 1,0,1,13
	stvx 1,10,31
	bdnz .L1461
.L1548:
	andi. 9,6,0x3
	rlwinm 6,6,0,0,29
	add 7,6,0
	beq 0,.L1575
	rldic 0,7,2,30
	addi 10,7,1
	cmplw 5,11,10
	lwzx 8,4,0
	stwx 8,3,0
	ble 5,.L1575
	rldic 9,10,2,30
	addi 31,7,2
	cmplw 6,11,31
	lwzx 11,4,9
	stwx 11,3,9
	ble 6,.L1575
	rldic 6,31,2,30
	ld 31,-8(1)
	.cfi_remember_state
	.cfi_restore 31
	lwzx 7,4,6
	stwx 7,3,6
	b .L1464
	.p2align 4,,15
.L1578:
	.cfi_restore_state
	xxlor 33,32,32
	lvx 0,0,7
	cmpdi 1,31,0
	li 8,16
	vperm 1,0,1,13
	stvx 1,0,10
	bne 1,.L1517
	b .L1548
	.p2align 4,,15
.L1576:
	.cfi_restore 31
	cmpdi 5,5,0
	addi 5,5,-1
	rldicl 6,5,0,32
	addi 7,6,1
	add 4,4,7
	add 3,3,7
	beq 5,.L1451
	andi. 10,9,0x1
	addi 8,9,-1
	beq 0,.L1520
	lbzu 12,-1(4)
	cmpdi 6,8,0
	stbu 12,-1(3)
	beq 6,.L1451
.L1520:
	srdi 9,9,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1565
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1472:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1472
.L1451:
	lwz 7,-12(1)
	mtvrsave 7
	blr
	.p2align 4,,15
.L1575:
	.cfi_offset 31, -8
	ld 31,-8(1)
	.cfi_restore 31
.L1464:
	cmplw 5,12,5
	bge 5,.L1451
	subf 9,12,5
	rldicl 7,12,0,32
	addi 10,9,-1
	cmplwi 6,10,29
	ble 6,.L1454
	addi 11,7,1
	add 8,3,7
	add 6,4,11
	subf 0,6,8
	cmpldi 0,0,14
	ble 0,.L1454
	neg 8,8
	andi. 10,8,0xf
	beq 0,.L1477
	andi. 6,8,0xe
	lbzx 0,4,7
	stbx 0,3,7
	beq 0,.L1579
	cmplwi 7,10,2
	lbzx 0,4,11
	addi 6,12,2
	stbx 0,3,11
	ble 7,.L1465
	rldicl 11,6,0,32
	addi 6,12,3
	lbzx 0,4,11
	stbx 0,3,11
	rldicr. 11,8,60,1
	beq 0,.L1465
	rldicl 11,6,0,32
	cmplwi 1,10,4
	addi 6,12,4
	lbzx 0,4,11
	stbx 0,3,11
	ble 1,.L1465
	rldicl 11,6,0,32
	cmplwi 5,10,5
	addi 6,12,5
	lbzx 0,4,11
	stbx 0,3,11
	beq 5,.L1465
	rldicl 11,6,0,32
	cmplwi 6,10,6
	addi 6,12,6
	lbzx 0,4,11
	stbx 0,3,11
	beq 6,.L1465
	rldicl 11,6,0,32
	andi. 8,8,0x8
	addi 6,12,7
	lbzx 8,4,11
	stbx 8,3,11
	beq 0,.L1465
	rldicl 0,6,0,32
	cmplwi 7,10,8
	addi 6,12,8
	lbzx 11,4,0
	stbx 11,3,0
	ble 7,.L1465
	rldicl 8,6,0,32
	cmplwi 1,10,9
	addi 6,12,9
	lbzx 0,4,8
	stbx 0,3,8
	beq 1,.L1465
	rldicl 8,6,0,32
	cmplwi 5,10,10
	addi 6,12,10
	lbzx 11,4,8
	stbx 11,3,8
	beq 5,.L1465
	rldicl 0,6,0,32
	cmplwi 6,10,11
	addi 6,12,11
	lbzx 8,4,0
	stbx 8,3,0
	beq 6,.L1465
	rldicl 0,6,0,32
	cmplwi 0,10,12
	addi 6,12,12
	lbzx 11,4,0
	stbx 11,3,0
	beq 0,.L1465
	rldicl 8,6,0,32
	cmplwi 7,10,13
	addi 6,12,13
	lbzx 0,4,8
	stbx 0,3,8
	beq 7,.L1465
	rldicl 8,6,0,32
	cmplwi 1,10,15
	addi 6,12,14
	lbzx 11,4,8
	stbx 11,3,8
	bne 1,.L1465
	rldicl 0,6,0,32
	addi 6,12,15
	lbzx 12,4,0
	stbx 12,3,0
	.p2align 4,,15
.L1465:
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
	beq 0,.L1511
	xxlor 33,32,32
	lvx 0,0,11
	cmpdi 5,0,0
	li 12,16
	vperm 1,0,1,13
	stvx 1,0,10
	beq 5,.L1547
.L1511:
	srdi 8,8,1
	mtctr 8
.L1468:
	lvx 1,11,12
	addi 7,12,16
	vperm 0,1,0,13
	stvx 0,10,12
	addi 12,12,32
	lvx 0,11,7
	vperm 1,0,1,13
	stvx 1,10,7
	bdnz .L1468
.L1547:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 6,9,6
	beq 0,.L1451
	rldicl 11,6,0,32
	addi 10,6,1
	cmplw 6,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 6,.L1451
	rldicl 12,10,0,32
	addi 8,6,2
	cmplw 7,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 7,.L1451
	rldicl 9,8,0,32
	addi 11,6,3
	cmplw 1,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 1,.L1451
	rldicl 0,11,0,32
	addi 12,6,4
	cmplw 5,12,5
	lbzx 8,4,0
	stbx 8,3,0
	bge 5,.L1451
	rldicl 9,12,0,32
	addi 11,6,5
	cmplw 0,11,5
	lbzx 7,4,9
	stbx 7,3,9
	bge 0,.L1451
	rldicl 10,11,0,32
	addi 0,6,6
	cmplw 6,0,5
	lbzx 12,4,10
	stbx 12,3,10
	bge 6,.L1451
	rldicl 8,0,0,32
	addi 9,6,7
	cmplw 7,9,5
	lbzx 11,4,8
	stbx 11,3,8
	bge 7,.L1451
	rldicl 10,9,0,32
	addi 0,6,8
	cmplw 1,0,5
	lbzx 7,4,10
	stbx 7,3,10
	bge 1,.L1451
	rldicl 12,0,0,32
	addi 8,6,9
	cmplw 5,8,5
	lbzx 9,4,12
	stbx 9,3,12
	bge 5,.L1451
	rldicl 11,8,0,32
	addi 10,6,10
	cmplw 0,10,5
	lbzx 0,4,11
	stbx 0,3,11
	bge 0,.L1451
	rldicl 12,10,0,32
	addi 8,6,11
	cmplw 6,8,5
	lbzx 7,4,12
	stbx 7,3,12
	bge 6,.L1451
	rldicl 9,8,0,32
	addi 11,6,12
	cmplw 7,11,5
	lbzx 10,4,9
	stbx 10,3,9
	bge 7,.L1451
	rldicl 0,11,0,32
	addi 12,6,13
	cmplw 1,12,5
	lbzx 8,4,0
	stbx 8,3,0
	bge 1,.L1451
	rldicl 7,12,0,32
	addi 6,6,14
	cmplw 5,6,5
	lbzx 5,4,7
	stbx 5,3,7
	bge 5,.L1451
	rldicl 9,6,0,32
	lbzx 4,4,9
	stbx 4,3,9
	b .L1451
	.p2align 4,,15
.L1565:
	lbz 0,-1(4)
	mr 11,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(11)
	stb 10,-2(9)
	bdz .L1451
	lbz 0,-1(4)
	mr 11,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 0,1(3)
	lbz 10,-2(11)
	stb 10,-2(9)
	bdnz .L1565
	b .L1451
	.p2align 4,,15
.L1577:
	cmpdi 5,5,0
	rldicl 7,12,0,32
	mr 9,5
	beq 5,.L1451
.L1454:
	rldicl 11,9,0,32
	addi 0,7,-1
	andi. 10,11,0x1
	add 7,3,0
	add 4,4,0
	addi 3,11,-1
	beq 0,.L1508
	lbzu 10,1(4)
	cmpdi 6,3,0
	stbu 10,1(7)
	beq 6,.L1451
.L1508:
	srdi 9,11,1
	mtctr 9
	cmpdi 7,9,2
	ble 7,.L1563
	addi 9,9,-1
	mtctr 9
	lbz 8,1(4)
	stb 8,1(7)
	addi 10,4,1
	lbz 8,1(10)
	addi 9,7,1
	stb 8,1(9)
.L1470:
	lbz 8,2(10)
	stb 8,2(9)
	addi 10,10,2
	lbz 8,1(10)
	addi 9,9,2
	stb 8,1(9)
	bdnz .L1470
	b .L1451
	.p2align 4,,15
.L1563:
	lbz 12,1(4)
	mr 8,4
	mr 6,7
	addi 4,4,2
	addi 7,7,2
	stb 12,-1(7)
	lbz 5,2(8)
	stb 5,2(6)
	bdnz .L1563
	b .L1451
	.p2align 4,,15
.L1458:
	andi. 9,11,0x1
	addi 10,4,-4
	addi 0,11,-1
	addi 9,3,-4
	beq 0,.L1514
	cmpdi 7,0,0
	lwz 8,0(4)
	mr 10,4
	mr 9,3
	stw 8,0(3)
	beq 7,.L1464
.L1514:
	srdi 8,11,1
	mtctr 8
	cmpdi 1,8,2
	ble 1,.L1564
	addi 8,8,-1
	mtctr 8
	lwz 6,4(10)
	stw 6,4(9)
	addi 7,10,4
	lwz 6,4(7)
	addi 8,9,4
	stw 6,4(8)
.L1463:
	lwz 6,8(7)
	stw 6,8(8)
	addi 7,7,8
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L1463
	b .L1464
	.p2align 4,,15
.L1564:
	lwz 11,4(10)
	mr 6,10
	mr 7,9
	addi 10,10,8
	addi 9,9,8
	stw 11,-4(9)
	lwz 0,8(6)
	stw 0,8(7)
	bdnz .L1564
	b .L1464
.L1579:
	addi 6,12,1
	b .L1465
.L1477:
	mr 6,12
	b .L1465
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
	bne 0,.L1589
	srawi 9,3,14
	cmpwi 1,9,0
	bne 1,.L1588
	srdi. 9,3,13
	bne 0,.L1590
	srdi. 9,3,12
	bne 0,.L1591
	srdi. 9,3,11
	bne 0,.L1592
	srdi. 9,3,10
	bne 0,.L1593
	srdi. 9,3,9
	bne 0,.L1594
	srdi. 9,3,8
	bne 0,.L1595
	srdi. 9,3,7
	bne 0,.L1596
	srdi. 9,3,6
	bne 0,.L1597
	srdi. 9,3,5
	bne 0,.L1598
	srdi. 9,3,4
	bne 0,.L1599
	srdi. 9,3,3
	bne 0,.L1600
	srdi. 9,3,2
	bne 0,.L1601
	srdi. 9,3,1
	bne 0,.L1602
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1588:
	rldicl 3,9,0,59
	blr
.L1589:
	li 9,0
	b .L1588
.L1600:
	li 9,12
	b .L1588
.L1590:
	li 9,2
	b .L1588
.L1591:
	li 9,3
	b .L1588
.L1592:
	li 9,4
	b .L1588
.L1593:
	li 9,5
	b .L1588
.L1594:
	li 9,6
	b .L1588
.L1595:
	li 9,7
	b .L1588
.L1596:
	li 9,8
	b .L1588
.L1597:
	li 9,9
	b .L1588
.L1598:
	li 9,10
	b .L1588
.L1599:
	li 9,11
	b .L1588
.L1601:
	li 9,13
	b .L1588
.L1602:
	li 9,14
	b .L1588
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
	bne 0,.L1607
	andi. 9,3,0x2
	bne 0,.L1608
	andi. 9,3,0x4
	bne 0,.L1609
	andi. 9,3,0x8
	bne 0,.L1610
	andi. 9,3,0x10
	bne 0,.L1611
	andi. 9,3,0x20
	bne 0,.L1612
	andi. 9,3,0x40
	bne 0,.L1613
	andi. 9,3,0x80
	bne 0,.L1614
	andi. 9,3,0x100
	bne 0,.L1615
	andi. 9,3,0x200
	bne 0,.L1616
	andi. 9,3,0x400
	bne 0,.L1617
	andi. 9,3,0x800
	bne 0,.L1618
	andi. 9,3,0x1000
	bne 0,.L1619
	andi. 9,3,0x2000
	bne 0,.L1620
	andi. 9,3,0x4000
	bne 0,.L1621
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1606:
	rldicl 3,5,0,59
	blr
.L1607:
	li 5,0
	b .L1606
.L1608:
	li 5,1
	b .L1606
.L1619:
	li 5,12
	b .L1606
.L1609:
	li 5,2
	b .L1606
.L1610:
	li 5,3
	b .L1606
.L1611:
	li 5,4
	b .L1606
.L1612:
	li 5,5
	b .L1606
.L1613:
	li 5,6
	b .L1606
.L1614:
	li 5,7
	b .L1606
.L1615:
	li 5,8
	b .L1606
.L1616:
	li 5,9
	b .L1606
.L1617:
	li 5,10
	b .L1606
.L1618:
	li 5,11
	b .L1606
.L1620:
	li 5,13
	b .L1606
.L1621:
	li 5,14
	b .L1606
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
	addis 9,2,.LC38@toc@ha
	lfs 0,.LC38@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1629
	fctidz 1,1
	stfd 1,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1629:
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
	vspltisw 12,0
	addis 6,2,.LC40@toc@ha
	addis 9,2,.LC41@toc@ha
	stw 3,-48(1)
	addi 4,6,.LC40@toc@l
	addi 6,1,-80
	addi 5,9,.LC41@toc@l
	addis 7,2,.LC42@toc@ha
	addi 3,7,.LC42@toc@l
	addis 8,2,.LC43@toc@ha
	addi 12,8,.LC43@toc@l
	vspltisw 10,1
	li 11,48
	lvewx 0,6,10
	lvx 9,0,12
	xxspltw 32,32,3
	vsraw 9,0,9
	lvx 13,0,4
	lvx 11,0,5
	lvx 1,0,3
	vsraw 13,0,13
	vsraw 11,0,11
	vsraw 1,0,1
	xxland 45,45,42
	xxland 43,43,42
	xxland 33,33,42
	xxland 42,41,42
	vadduwm 0,13,11
	vadduwm 9,1,0
	vadduwm 13,10,9
	xxsldwi 43,44,45,2
	vadduwm 1,11,13
	xxsldwi 44,44,33,3
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
	vspltisw 12,0
	addis 6,2,.LC40@toc@ha
	addis 9,2,.LC41@toc@ha
	stw 3,-48(1)
	addi 4,6,.LC40@toc@l
	addi 6,1,-80
	addi 5,9,.LC41@toc@l
	addis 7,2,.LC42@toc@ha
	addi 3,7,.LC42@toc@l
	addis 8,2,.LC43@toc@ha
	addi 12,8,.LC43@toc@l
	vspltisw 10,1
	li 11,48
	lvewx 0,6,10
	lvx 9,0,12
	xxspltw 32,32,3
	vsraw 9,0,9
	lvx 13,0,4
	lvx 11,0,5
	lvx 1,0,3
	vsraw 13,0,13
	vsraw 11,0,11
	vsraw 1,0,1
	xxland 45,45,42
	xxland 43,43,42
	xxland 33,33,42
	xxland 42,41,42
	vadduwm 0,13,11
	vadduwm 9,1,0
	vadduwm 13,10,9
	xxsldwi 43,44,45,2
	vadduwm 1,11,13
	xxsldwi 44,44,33,3
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
	beq 0,.L1635
	.p2align 5
.L1636:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	bne 1,.L1636
.L1635:
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
	beq 0,.L1640
	cmpdi 1,4,0
	beq 1,.L1640
	.p2align 5
.L1641:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne 0,.L1641
.L1640:
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
	blt 0,.L1646
	b .L1667
	.p2align 4,,15
.L1650:
	rldicl 4,0,0,32
	slwi 9,9,1
	ble 7,.L1648
	cmpwi 5,4,0
	slwi 6,4,1
	cmplw 6,3,6
	blt 5,.L1651
	rldicl 4,6,0,32
	slwi 9,9,1
	ble 6,.L1648
	bdz .L1649
.L1646:
	cmpwi 1,4,0
	slwi 0,4,1
	addi 10,12,-1
	cmplw 7,3,0
	addi 12,10,-1
	bge 1,.L1650
.L1651:
	li 12,0
	li 11,1
	li 10,0
	.p2align 4,,15
.L1652:
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
	bne 7,.L1652
.L1649:
	cmpdi 6,5,0
	isel 5,12,3,26
	rldicl 3,5,0,32
	blr
	.p2align 4,,15
.L1648:
	cmpwi 0,9,0
	bne 0,.L1651
	li 12,0
	b .L1649
	.p2align 4,,15
.L1667:
	isel 9,0,9,1
	subf 4,4,3
	andi. 12,9,0xff
	isel 3,3,4,2
	rldicl 3,3,0,32
	b .L1649
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
	blt 0,.L1671
	mfcr 3,128
	rlwinm 3,3,2,1
.L1671:
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
	blt 0,.L1674
	mfcr 3,128
	rlwinm 3,3,2,1
.L1674:
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
	blt 0,.L1691
	cmpdi 1,4,0
	beq 1,.L1684
	li 6,0
.L1680:
	li 10,32
	li 8,0
	b .L1683
	.p2align 4,,15
.L1692:
	beq 7,.L1682
.L1683:
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
	bne 0,.L1692
.L1682:
	cmpwi 5,6,0
	neg 12,8
	isel 3,8,12,22
.L1681:
	extsw 3,3
	blr
	.p2align 4,,15
.L1691:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1680
.L1684:
	li 3,0
	b .L1681
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
	bge 0,.L1694
	neg 3,3
	li 9,0
	li 11,1
.L1694:
	cmpdi 1,4,0
	bge 1,.L1695
	neg 4,4
	mr 11,9
.L1695:
	cmplw 5,3,4
	li 10,16
	mtctr 10
	li 12,1
	bgt 5,.L1696
	b .L1721
	.p2align 4,,15
.L1700:
	slwi 4,4,1
	slwi 12,12,1
	cmplw 0,3,4
	cmpwi 7,4,0
	ble 0,.L1698
	blt 7,.L1717
	slwi 4,4,1
	slwi 12,12,1
	cmplw 0,3,4
	ble 0,.L1698
	bdz .L1708
.L1696:
	cmpwi 6,4,0
	bge 6,.L1700
.L1717:
	cmplw 0,3,4
	b .L1701
	.p2align 4,,15
.L1698:
	cmpwi 1,12,0
	beq 1,.L1708
.L1701:
	li 0,0
	li 5,1
	li 6,0
	.p2align 4,,15
.L1702:
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
	bne 6,.L1702
.L1704:
	rldicl 3,0,0,32
	cmpwi 7,11,0
	neg 4,3
	isel 3,3,4,30
	blr
	.p2align 4,,15
.L1708:
	cmpwi 7,11,0
	li 3,0
	neg 4,3
	isel 3,3,4,30
	blr
.L1721:
	isel 0,0,12,20
	b .L1704
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
	bge 0,.L1726
	neg 3,3
	li 5,1
.L1726:
	sradi 7,4,63
	li 9,16
	mtctr 9
	xor 4,7,4
	subf 0,7,4
	mr 8,3
	cmplw 1,3,0
	li 10,1
	mr 11,0
	bgt 1,.L1727
	b .L1753
	.p2align 4,,15
.L1731:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,8,11
	cmpwi 7,11,0
	ble 6,.L1729
	blt 7,.L1750
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,8,11
	ble 6,.L1729
	bdz .L1730
.L1727:
	cmpwi 5,11,0
	bge 5,.L1731
.L1750:
	cmplw 6,8,11
.L1732:
	li 3,1
	.p2align 4,,15
.L1733:
	srwi 10,10,1
	isel 12,0,3,24
	cmpwi 1,10,0
	cmpwi 5,12,0
	subf 7,11,8
	srwi 11,11,1
	isel 8,8,7,22
	cmplw 6,8,11
	bne 1,.L1733
.L1730:
	cmpwi 7,5,0
	rldicl 4,8,0,32
	neg 5,4
	isel 3,4,5,30
	blr
	.p2align 4,,15
.L1729:
	cmpwi 0,10,0
	bne 0,.L1732
	b .L1730
	.p2align 4,,15
.L1753:
	subf 6,0,3
	isel 8,3,6,4
	b .L1730
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
	bge 0,.L1926
	andi. 9,4,0x8000
	bne 0,.L1761
	rldic 9,4,1,48
	cmplw 7,3,9
	ble 7,.L1834
	andi. 10,9,0x8000
	bne 0,.L1834
	rldic 9,4,2,48
	cmplw 7,3,9
	ble 7,.L1836
	andi. 10,9,0x8000
	bne 0,.L1836
	rldic 9,4,3,48
	cmplw 7,3,9
	ble 7,.L1838
	andi. 10,9,0x8000
	bne 0,.L1838
	rldic 9,4,4,48
	cmplw 7,3,9
	ble 7,.L1840
	andi. 10,9,0x8000
	bne 0,.L1840
	rldic 9,4,5,48
	cmplw 7,3,9
	ble 7,.L1842
	andi. 10,9,0x8000
	bne 0,.L1842
	rldic 9,4,6,48
	cmplw 7,3,9
	ble 7,.L1844
	andi. 10,9,0x8000
	bne 0,.L1844
	rldic 9,4,7,48
	cmplw 7,3,9
	ble 7,.L1846
	andi. 10,9,0x8000
	bne 0,.L1846
	rldic 9,4,8,48
	cmplw 7,3,9
	ble 7,.L1848
	andi. 10,9,0x8000
	bne 0,.L1848
	rldic 9,4,9,48
	cmplw 7,3,9
	ble 7,.L1850
	andi. 10,9,0x8000
	bne 0,.L1850
	rldic 9,4,10,48
	cmplw 7,3,9
	ble 7,.L1852
	andi. 10,9,0x8000
	bne 0,.L1852
	rldic 9,4,11,48
	cmplw 7,3,9
	ble 7,.L1854
	andi. 10,9,0x8000
	bne 0,.L1854
	rldic 9,4,12,48
	cmplw 7,3,9
	ble 7,.L1856
	andi. 10,9,0x8000
	bne 0,.L1856
	rldic 9,4,13,48
	cmplw 7,3,9
	ble 7,.L1858
	andi. 10,9,0x8000
	bne 0,.L1858
	rldic 9,4,14,48
	cmplw 7,3,9
	ble 7,.L1860
	andi. 10,9,0x8000
	bne 0,.L1860
	rldic 7,4,15,48
	cmplw 6,3,7
	ble 6,.L1861
	cmpdi 1,7,0
	li 12,0
	bne 1,.L1927
.L1764:
	cmpdi 6,5,0
	beq 6,.L1823
	mr 12,3
.L1823:
	rlwinm 3,12,0,0xffff
	blr
.L1834:
	li 8,2
	.p2align 4,,15
.L1763:
	subf 0,9,3
	li 6,0
	rlwinm 4,0,0,0xffff
	isel 3,3,4,28
	blt 7,.L1832
	mr 6,8
.L1832:
	srdi 7,9,1
	rldicl 12,8,63,49
	cmplw 5,3,7
	subf 11,7,3
	rlwinm 0,11,0,0xffff
	li 4,0
	isel 3,3,0,20
	blt 5,.L1768
	mr 4,12
.L1768:
	srwi 11,8,2
	or 10,4,6
	cmpwi 7,11,0
	mr 12,10
	srdi 7,9,2
	beq 7,.L1764
	cmplw 0,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	isel 0,0,6,0
	rlwinm 7,12,0,0xffff
	cmpwi 6,0,0
	isel 3,3,7,26
	beq 6,.L1772
	mr 4,11
.L1772:
	srwi 11,8,3
	or 10,10,4
	cmpwi 1,11,0
	mr 12,10
	srdi 0,9,3
	beq 1,.L1764
	cmplw 5,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,20
	rlwinm 7,12,0,0xffff
	cmpwi 7,0,0
	isel 3,3,7,30
	beq 7,.L1776
	mr 4,11
.L1776:
	srwi 11,8,4
	or 10,10,4
	cmpwi 0,11,0
	mr 12,10
	srdi 0,9,4
	beq 0,.L1764
	cmplw 6,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,24
	rlwinm 7,12,0,0xffff
	cmpwi 1,0,0
	isel 3,3,7,6
	beq 1,.L1780
	mr 4,11
.L1780:
	srwi 11,8,5
	or 10,10,4
	cmpwi 5,11,0
	mr 12,10
	srdi 0,9,5
	beq 5,.L1764
	cmplw 7,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,28
	rlwinm 7,12,0,0xffff
	cmpwi 0,0,0
	isel 3,3,7,2
	beq 0,.L1784
	mr 4,11
.L1784:
	srwi 11,8,6
	or 10,10,4
	cmpwi 6,11,0
	mr 12,10
	srdi 0,9,6
	beq 6,.L1764
	cmplw 1,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,4
	rlwinm 7,12,0,0xffff
	cmpwi 5,0,0
	isel 3,3,7,22
	beq 5,.L1788
	mr 4,11
.L1788:
	srwi 11,8,7
	or 10,10,4
	cmpwi 7,11,0
	mr 12,10
	srdi 0,9,7
	beq 7,.L1764
	cmplw 0,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,0
	rlwinm 7,12,0,0xffff
	cmpwi 6,0,0
	isel 3,3,7,26
	beq 6,.L1792
	mr 4,11
.L1792:
	srwi 11,8,8
	or 10,10,4
	cmpwi 1,11,0
	mr 12,10
	srdi 0,9,8
	beq 1,.L1764
	cmplw 5,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,20
	rlwinm 7,12,0,0xffff
	cmpwi 7,0,0
	isel 3,3,7,30
	beq 7,.L1796
	mr 4,11
.L1796:
	srwi 11,8,9
	or 10,10,4
	cmpwi 0,11,0
	mr 12,10
	srdi 0,9,9
	beq 0,.L1764
	cmplw 6,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,24
	rlwinm 7,12,0,0xffff
	cmpwi 1,0,0
	isel 3,3,7,6
	beq 1,.L1800
	mr 4,11
.L1800:
	srwi 11,8,10
	or 10,10,4
	cmpwi 5,11,0
	mr 12,10
	srdi 0,9,10
	beq 5,.L1764
	cmplw 7,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,28
	rlwinm 7,12,0,0xffff
	cmpwi 0,0,0
	isel 3,3,7,2
	beq 0,.L1804
	mr 4,11
.L1804:
	srwi 11,8,11
	or 10,10,4
	cmpwi 6,11,0
	mr 12,10
	srdi 0,9,11
	beq 6,.L1764
	cmplw 1,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,4
	rlwinm 7,12,0,0xffff
	cmpwi 5,0,0
	isel 3,3,7,22
	beq 5,.L1808
	mr 4,11
.L1808:
	srwi 11,8,12
	or 10,10,4
	cmpwi 7,11,0
	mr 12,10
	srdi 0,9,12
	beq 7,.L1764
	cmplw 0,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,0
	rlwinm 7,12,0,0xffff
	cmpwi 6,0,0
	isel 3,3,7,26
	beq 6,.L1812
	mr 4,11
.L1812:
	srwi 11,8,13
	or 10,10,4
	cmpwi 1,11,0
	mr 12,10
	srdi 0,9,13
	beq 1,.L1764
	cmplw 5,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,20
	rlwinm 7,12,0,0xffff
	cmpwi 7,0,0
	isel 3,3,7,30
	beq 7,.L1816
	mr 4,11
.L1816:
	srwi 11,8,14
	or 10,10,4
	cmpwi 0,11,0
	mr 12,10
	srdi 0,9,14
	beq 0,.L1764
	cmplw 6,3,0
	li 6,1
	subf 12,0,3
	li 4,0
	isel 0,0,6,24
	rlwinm 7,12,0,0xffff
	cmpwi 1,0,0
	isel 3,3,7,6
	beq 1,.L1820
	mr 4,11
.L1820:
	cmpwi 5,8,16384
	or 8,10,4
	srdi 9,9,15
	mr 12,8
	beq 5,.L1764
	cmplw 7,3,9
	li 10,1
	subf 11,9,3
	isel 6,0,10,28
	rlwinm 0,11,0,0xffff
	cmpwi 0,6,0
	or 12,8,6
	isel 3,3,0,2
	b .L1764
.L1836:
	li 8,4
	b .L1763
.L1838:
	li 8,8
	b .L1763
.L1840:
	li 8,16
	b .L1763
.L1850:
	li 8,512
	b .L1763
.L1842:
	li 8,32
	b .L1763
.L1844:
	li 8,64
	b .L1763
.L1846:
	li 8,128
	b .L1763
.L1848:
	li 8,256
	b .L1763
.L1926:
	cmpd 1,4,3
	li 10,0
	li 6,1
	subf 9,4,3
	isel 12,6,10,6
	rlwinm 0,9,0,0xffff
	cmpwi 5,12,0
	isel 3,3,0,22
	b .L1764
.L1852:
	li 8,1024
	b .L1763
.L1854:
	li 8,2048
	b .L1763
.L1856:
	li 8,4096
	b .L1763
.L1858:
	li 8,8192
	b .L1763
.L1860:
	li 8,16384
	b .L1763
.L1927:
	li 10,-1
	li 8,0
	cmplwi 7,3,32768
	ori 8,8,0x8000
	rlwinm 9,10,0,16,16
	b .L1763
.L1861:
	li 11,-1
	li 8,0
	cmplwi 7,3,32768
	rlwinm 9,11,0,16,16
	ori 8,8,0x8000
	b .L1763
.L1761:
	subf 4,4,3
	li 12,1
	rlwinm 3,4,0,0xffff
	b .L1764
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
	blt 0,.L1929
	b .L1951
	.p2align 4,,15
.L1933:
	sldi 4,4,1
	sldi 9,9,1
	cmpld 7,3,4
	ble 7,.L1931
	bdz .L1932
.L1929:
	andis. 12,4,0x8000
	beq 0,.L1933
	cmpld 7,3,4
.L1934:
	li 12,0
	li 11,1
	li 6,0
	.p2align 4,,15
.L1935:
	isel 0,0,11,28
	subf 7,4,3
	cmpwi 6,0,0
	srdi 4,4,1
	isel 10,6,9,26
	isel 3,3,7,26
	srdi. 9,9,1
	cmpld 7,3,4
	or 12,12,10
	bne 0,.L1935
.L1932:
	cmpdi 1,5,0
	isel 3,12,3,6
	blr
	.p2align 4,,15
.L1931:
	cmpdi 5,9,0
	bne 5,.L1934
	b .L1932
	.p2align 4,,15
.L1951:
	isel 9,0,9,1
	subf 4,4,3
	rlwinm 8,9,0,0xff
	rlwinm 12,9,0,0xff
	cmpwi 1,8,0
	isel 3,3,4,6
	b .L1932
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
	beq 0,.L1955
	addi 4,4,-32
	li 6,0
	slw 5,3,4
	rldicl 11,6,0,32
	sldi 7,5,32
	or 3,11,7
	blr
	.p2align 4,,15
.L1955:
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
	beq 0,.L1961
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L1961:
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
	beq 0,.L1966
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L1966:
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
	beq 0,.L1972
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1972:
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
	blt 0,.L1982
	li 0,2
	bgt 0,.L1981
	cmplw 1,3,4
	li 0,0
	blt 1,.L1981
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L1981:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L1982:
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
	blt 0,.L1988
	li 5,1
	bgt 0,.L1987
	cmplw 7,3,4
	cmplw 1,3,4
	li 0,0
	li 4,-1
	isel 3,5,0,29
	isel 5,4,3,4
.L1987:
	extsw 3,5
	blr
	.p2align 4,,15
.L1988:
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
	blt 0,.L1992
	li 0,2
	bgt 0,.L1992
	cmpld 1,3,5
	li 0,0
	blt 1,.L1992
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L1992:
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
	bne 0,.L2000
	cmpdi 1,4,0
	bne 1,.L2004
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2000:
	addi 3,9,-1
	andc 0,3,9
	popcntd 4,0
	addi 3,4,1
	rldicl 3,3,0,32
	blr
	.p2align 4,,15
.L2004:
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
	beq 0,.L2006
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
	.p2align 4,,15
.L2006:
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
	beq 0,.L2012
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L2012:
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
	addis 9,2,.LC32@toc@ha
	fmr 0,1
	mr 3,4
	lfd 12,.LC32@toc@l(9)
	andi. 9,4,0x1
	fmr 1,12
	beq 0,.L2030
	.p2align 4,,15
.L2032:
	fmul 1,1,0
.L2030:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2031
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2032
.L2036:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2032
	b .L2036
	.p2align 4,,15
.L2031:
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
	addis 9,2,.LC33@toc@ha
	fmr 0,1
	mr 3,4
	lfs 12,.LC33@toc@l(9)
	andi. 9,4,0x1
	fmr 1,12
	beq 0,.L2038
	.p2align 4,,15
.L2040:
	fmuls 1,1,0
.L2038:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq 0,.L2039
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne 0,.L2040
.L2044:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne 0,.L2040
	b .L2044
	.p2align 4,,15
.L2039:
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
	blt 0,.L2047
	li 0,2
	bgt 0,.L2046
	cmplw 1,3,4
	li 0,0
	blt 1,.L2046
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L2046:
	rldicl 3,0,0,62
	blr
	.p2align 4,,15
.L2047:
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
	blt 0,.L2053
	li 5,1
	bgt 0,.L2052
	cmplw 7,3,4
	cmplw 1,3,4
	li 0,0
	li 4,-1
	isel 3,5,0,29
	isel 5,4,3,4
.L2052:
	extsw 3,5
	blr
	.p2align 4,,15
.L2053:
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
	blt 0,.L2057
	li 0,2
	bgt 0,.L2057
	cmpld 1,3,5
	li 0,0
	blt 1,.L2057
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 0,9,1
.L2057:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC4:
	.long	-8388609
	.align 2
.LC5:
	.long	2139095039
	.set	.LC8,.LC12
	.set	.LC9,.LC13
	.section	.rodata.cst16
	.align 4
.LC12:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC13:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC16,.LC24+4
	.section	.rodata.cst4
	.align 2
.LC17:
	.long	1056964608
	.set	.LC20,.LC24
	.set	.LC21,.LC25
	.section	.rodata.cst16
	.align 4
.LC24:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC25:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC28:
	.long	0
	.long	-1074790400
	.align 3
.LC30:
	.long	0
	.long	-1075838976
	.align 3
.LC32:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC33:
	.long	1065353216
	.align 2
.LC38:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC40:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC41:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC42:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC43:
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
