	.file	"mini-libc.c"
	.machine "403"
	.machine altivec
	.section	".text"
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	cmplw 0,3,4
	ble- 0,.L2
	cmpwi 1,5,0
	add 12,4,5
	add 11,3,5
	beqlr- 1
	addi 10,5,-1
	cmplwi 5,10,14
	ble- 5,.L4
	addi 9,5,-2
	add 6,3,10
	add 7,4,9
	subf 8,7,6
	addi 0,8,14
	cmplwi 6,0,14
	ble- 6,.L4
	rldicl 8,5,60,36
	addi 10,5,-16
	andi. 7,8,0x3
	add 4,4,10
	addi 6,8,-1
	add 10,3,10
	li 9,0
	beq- 0,.L158
	cmpdi 7,7,1
	beq- 7,.L107
	cmpdi 1,7,2
	beq- 1,.L108
	mr 8,6
	li 9,-16
	lxvw4x 7,0,4
	stxvw4x 7,0,10
.L108:
	lxvw4x 8,4,9
	addi 8,8,-1
	stxvw4x 8,10,9
	addi 9,9,-16
.L107:
	addi 8,8,-1
	lxvw4x 9,4,9
	stxvw4x 9,10,9
	addi 9,9,-16
	cmpdi 5,8,0
	beq- 5,.L155
.L158:
	addi 8,8,-4
	addi 0,9,-16
	lxvw4x 10,4,9
	stxvw4x 10,10,9
	cmpdi 6,8,0
	addi 6,9,-32
	lxvw4x 11,4,0
	stxvw4x 11,10,0
	addi 7,9,-48
	lxvw4x 12,4,6
	addi 9,9,-64
	stxvw4x 12,10,6
	lxvw4x 13,4,7
	stxvw4x 13,10,7
	bne+ 6,.L158
.L155:
	andi. 9,5,0xf
	rlwinm 4,5,0,0,27
	subf 12,4,12
	subf 11,4,11
	subf 5,4,5
	beqlr- 0
	cmplwi 7,5,1
	lbz 10,-1(12)
	stb 10,-1(11)
	beqlr- 7
	cmplwi 1,5,2
	lbz 8,-2(12)
	stb 8,-2(11)
	beqlr- 1
	cmplwi 5,5,3
	lbz 9,-3(12)
	stb 9,-3(11)
	beqlr- 5
	cmplwi 6,5,4
	lbz 0,-4(12)
	stb 0,-4(11)
	beqlr- 6
	cmplwi 0,5,5
	lbz 6,-5(12)
	stb 6,-5(11)
	beqlr- 0
	cmplwi 7,5,6
	lbz 7,-6(12)
	stb 7,-6(11)
	beqlr- 7
	cmplwi 1,5,7
	lbz 4,-7(12)
	stb 4,-7(11)
	beqlr- 1
	cmplwi 5,5,8
	lbz 10,-8(12)
	stb 10,-8(11)
	beqlr- 5
	cmplwi 6,5,9
	lbz 8,-9(12)
	stb 8,-9(11)
	beqlr- 6
	cmplwi 0,5,10
	lbz 9,-10(12)
	stb 9,-10(11)
	beqlr- 0
	cmplwi 7,5,11
	lbz 0,-11(12)
	stb 0,-11(11)
	beqlr- 7
	cmplwi 1,5,12
	lbz 6,-12(12)
	stb 6,-12(11)
	beqlr- 1
	cmplwi 5,5,13
	lbz 7,-13(12)
	stb 7,-13(11)
	beqlr- 5
	cmplwi 6,5,14
	lbz 5,-14(12)
	stb 5,-14(11)
	beqlr- 6
	lbz 12,-15(12)
	stb 12,-15(11)
	blr
.L2:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmplwi 5,9,14
	ble- 5,.L9
	addi 0,4,1
	subf 6,0,3
	cmplwi 6,6,14
	ble- 6,.L9
	rldicl 10,5,60,36
	li 11,0
	andi. 8,10,0x3
	addi 7,10,-1
	beq- 0,.L160
	cmpdi 7,8,1
	beq- 7,.L109
	cmpdi 1,8,2
	beq- 1,.L110
	mr 10,7
	li 11,16
	lxvw4x 0,0,4
	stxvw4x 0,0,3
.L110:
	lxvw4x 1,4,11
	addi 10,10,-1
	stxvw4x 1,3,11
	addi 11,11,16
.L109:
	addi 10,10,-1
	lxvw4x 2,4,11
	stxvw4x 2,3,11
	addi 11,11,16
	cmpdi 5,10,0
	beq- 5,.L156
.L160:
	addi 10,10,-4
	addi 12,11,16
	lxvw4x 3,4,11
	stxvw4x 3,3,11
	cmpdi 6,10,0
	addi 9,11,32
	lxvw4x 4,4,12
	stxvw4x 4,3,12
	addi 0,11,48
	lxvw4x 5,4,9
	addi 11,11,64
	stxvw4x 5,3,9
	lxvw4x 6,4,0
	stxvw4x 6,3,0
	bne+ 6,.L160
.L156:
	andi. 9,5,0xf
	rlwinm 6,5,0,0,27
	add 10,4,6
	add 11,3,6
	subf 5,6,5
	beqlr- 0
	cmplwi 7,5,1
	lbzx 4,4,6
	stbx 4,3,6
	beqlr- 7
	cmplwi 1,5,2
	lbz 8,1(10)
	stb 8,1(11)
	beqlr- 1
	cmplwi 5,5,3
	lbz 7,2(10)
	stb 7,2(11)
	beqlr- 5
	cmplwi 6,5,4
	lbz 12,3(10)
	stb 12,3(11)
	beqlr- 6
	cmplwi 0,5,5
	lbz 9,4(10)
	stb 9,4(11)
	beqlr- 0
	cmplwi 7,5,6
	lbz 0,5(10)
	stb 0,5(11)
	beqlr- 7
	cmplwi 1,5,7
	lbz 6,6(10)
	stb 6,6(11)
	beqlr- 1
	cmplwi 5,5,8
	lbz 4,7(10)
	stb 4,7(11)
	beqlr- 5
	cmplwi 6,5,9
	lbz 8,8(10)
	stb 8,8(11)
	beqlr- 6
	cmplwi 0,5,10
	lbz 7,9(10)
	stb 7,9(11)
	beqlr- 0
	cmplwi 7,5,11
	lbz 12,10(10)
	stb 12,10(11)
	beqlr- 7
	cmplwi 1,5,12
	lbz 9,11(10)
	stb 9,11(11)
	beqlr- 1
	cmplwi 5,5,13
	lbz 0,12(10)
	stb 0,12(11)
	beqlr- 5
	cmplwi 6,5,14
	lbz 5,13(10)
	stb 5,13(11)
	beqlr- 6
	lbz 10,14(10)
	stb 10,14(11)
	blr
.L4:
	rldicl 10,5,0,32
	andi. 9,10,0x1
	addi 4,10,-1
	beq- 0,.L157
	mr. 10,4
	lbzu 8,-1(12)
	stbu 8,-1(11)
	beqlr- 0
.L157:
	lbz 0,-1(12)
	addi 10,10,-2
	mr 6,12
	cmpdi 7,10,0
	addi 9,11,-1
	stb 0,-1(11)
	addi 12,12,-2
	addi 11,11,-2
	lbz 7,-2(6)
	stb 7,-1(9)
	beqlr- 7
	lbz 0,-1(12)
	addi 10,10,-2
	mr 6,12
	cmpdi 7,10,0
	addi 9,11,-1
	stb 0,-1(11)
	addi 12,12,-2
	addi 11,11,-2
	lbz 7,-2(6)
	stb 7,-1(9)
	bne+ 7,.L157
	blr
.L9:
	rldicl 9,5,0,32
	addi 12,4,-1
	andi. 10,9,0x1
	addi 11,9,-1
	addi 5,3,-1
	beq- 0,.L159
	mr. 9,11
	lbz 6,0(4)
	mr 12,4
	mr 5,3
	stb 6,0(3)
	beqlr- 0
.L159:
	lbz 4,1(12)
	addi 9,9,-2
	mr 7,12
	cmpdi 7,9,0
	addi 8,5,1
	stb 4,1(5)
	addi 12,12,2
	addi 5,5,2
	lbz 0,2(7)
	stb 0,1(8)
	beqlr- 7
	lbz 4,1(12)
	addi 9,9,-2
	mr 7,12
	cmpdi 7,9,0
	addi 8,5,1
	stb 4,1(5)
	addi 12,12,2
	addi 5,5,2
	lbz 0,2(7)
	stb 0,1(8)
	bne+ 7,.L159
	blr
	.cfi_endproc
.LFE0:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	cmpwi 0,6,0
	rlwinm 5,5,0,0xff
	beq- 0,.L168
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L189
.L178:
	srwi 0,6,1
	mtctr 0
	b .L169
.L171:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L186
	addi 3,3,1
	bdz .L168
.L169:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L171
.L186:
	addi 3,3,1
	blr
.L189:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L186
	cmpwi 5,8,0
	addi 3,3,1
	bne+ 5,.L178
.L168:
	li 3,0
	blr
	.cfi_endproc
.LFE1:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	cmpwi 0,5,0
	rlwinm 4,4,0,0xff
	beq- 0,.L194
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L211
.L197:
	srwi 0,5,1
	mtctr 0
.L191:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L191
.L194:
	li 3,0
	blr
.L211:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,1
	bne+ 5,.L197
	b .L194
	.cfi_endproc
.LFE2:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	cmpwi 0,5,0
	beq- 0,.L217
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L232
.L220:
	srwi 0,5,1
	mtctr 0
	b .L213
.L215:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L229
	bdz .L217
.L213:
	lbz 10,0(3)
	addi 7,3,1
	addi 5,4,1
	lbz 9,0(4)
	cmpw 6,10,9
	beq+ 6,.L215
.L229:
	subf 3,9,10
	blr
.L232:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L229
	cmpwi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L220
.L217:
	li 3,0
	blr
	.cfi_endproc
.LFE3:
	.size	memcmp,.-memcmp
	.align 2
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,3
	beq- 0,.L234
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L234:
	mr 3,31
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE4:
	.size	memcpy,.-memcpy
	.align 2
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	mr 10,5
	addi 5,5,-1
	andi. 8,10,0x1
	add 11,3,5
	rlwinm 4,4,0,0xff
	beq- 0,.L244
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr- 1
.L244:
	srwi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L252
.L242:
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
	bdnz .L242
.L252:
	li 3,0
	blr
	.cfi_endproc
.LFE5:
	.size	memrchr,.-memrchr
	.align 2
	.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,3
	beq- 0,.L256
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L256:
	mr 3,31
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE6:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	lbz 9,0(4)
	rlwinm 10,9,0,0xff
	stb 9,0(3)
	cmpwi 0,10,0
	beqlr- 0
.L260:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L260
	blr
	.cfi_endproc
.LFE7:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	lbz 9,0(3)
	rlwinm 4,4,0,0xff
	cmpwi 0,9,0
	beqlr- 0
	cmpw 1,9,4
	beqlr- 1
.L271:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L271
	blr
	.cfi_endproc
.LFE8:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
.L274:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L274
	li 3,0
	blr
	.cfi_endproc
.LFE9:
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	lbz 9,0(3)
	mr 8,4
	lbz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L279
	b .L278
.L280:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne- 5,.L278
.L279:
	cmpwi 1,9,0
	bne+ 1,.L280
.L278:
	subf 3,10,9
	blr
	.cfi_endproc
.LFE10:
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L288
	mr 4,3
.L287:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L287
	subf 3,3,4
	blr
.L288:
	li 3,0
	blr
	.cfi_endproc
.LFE11:
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	cmpwi 0,5,0
	beq- 0,.L298
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L294
	b .L303
.L305:
	bdz .L293
	bne- 7,.L293
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L304
	mr 4,8
.L294:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L305
.L293:
	subf 3,7,10
	blr
.L298:
	li 3,0
	blr
.L304:
	lbz 7,1(4)
	subf 3,7,10
	blr
.L303:
	lbz 7,0(4)
	b .L293
	.cfi_endproc
.LFE12:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,28(1)
	mtvrsave 0
	cmpwi 0,5,1
	ble- 0,.L306
	addi 9,5,-2
	srwi 6,5,1
	cmplwi 1,9,13
	ble- 1,.L308
	rldicl 8,5,60,36
	lis 7,.LC0@ha
	andi. 10,8,0x1
	la 10,.LC0@l(7)
	addi 11,8,-1
	srwi 12,5,4
	lxvw4x 45,0,10
	li 9,0
	beq- 0,.L318
	mr. 8,11
	lxvw4x 32,0,3
	li 9,16
	vperm 1,0,0,13
	stxvw4x 33,0,4
	beq- 0,.L317
.L318:
	addi 8,8,-2
	addi 0,9,16
	lxvw4x 32,3,9
	vperm 1,0,0,13
	cmpdi 5,8,0
	stxvw4x 33,4,9
	lxvw4x 32,3,0
	addi 9,9,32
	vperm 1,0,0,13
	stxvw4x 33,4,0
	bne+ 5,.L318
.L317:
	slwi 7,12,3
	slwi 10,12,4
	cmplw 6,6,7
	add 4,4,10
	add 3,3,10
	subf 5,10,5
	beq- 6,.L306
.L308:
	cmpwi 7,5,3
	lhbrx 11,0,3
	sth 11,0(4)
	ble- 7,.L306
	cmpwi 1,5,5
	addi 12,3,2
	lhbrx 8,0,12
	sth 8,2(4)
	ble- 1,.L306
	cmpwi 0,5,7
	addi 9,3,4
	lhbrx 0,0,9
	sth 0,4(4)
	ble- 0,.L306
	cmpwi 5,5,9
	addi 7,3,6
	lhbrx 10,0,7
	sth 10,6(4)
	ble- 5,.L306
	cmpwi 6,5,11
	addi 6,3,8
	lhbrx 11,0,6
	sth 11,8(4)
	ble- 6,.L306
	cmpwi 7,5,13
	addi 5,3,10
	lhbrx 12,0,5
	sth 12,10(4)
	ble- 7,.L306
	addi 3,3,12
	lhbrx 8,0,3
	sth 8,12(4)
.L306:
	lwz 4,28(1)
	mtvrsave 4
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE13:
	.size	swab,.-swab
	.align 2
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	ori 9,3,0x20
	li 10,1
	addi 0,9,-97
	cmplwi 0,0,25
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE14:
	.size	isalpha,.-isalpha
	.align 2
	.globl isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	cmplwi 0,3,127
	li 9,1
	isel 3,0,9,1
	blr
	.cfi_endproc
.LFE15:
	.size	isascii,.-isascii
	.align 2
	.globl isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	cmpwi 0,3,32
	beq- 0,.L324
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L324:
	li 3,1
	blr
	.cfi_endproc
.LFE16:
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	cmplwi 0,3,31
	ble- 0,.L327
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L327:
	li 3,1
	blr
	.cfi_endproc
.LFE17:
	.size	iscntrl,.-iscntrl
	.align 2
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	addi 9,3,-48
	li 10,1
	cmplwi 0,9,9
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE18:
	.size	isdigit,.-isdigit
	.align 2
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	addi 9,3,-33
	li 10,1
	cmplwi 0,9,93
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE19:
	.size	isgraph,.-isgraph
	.align 2
	.globl islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	addi 9,3,-97
	li 10,1
	cmplwi 0,9,25
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE20:
	.size	islower,.-islower
	.align 2
	.globl isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	addi 9,3,-32
	li 10,1
	cmplwi 0,9,94
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE21:
	.size	isprint,.-isprint
	.align 2
	.globl isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	cmpwi 0,3,32
	beq- 0,.L334
	addi 3,3,-9
	li 9,1
	cmplwi 1,3,4
	isel 3,0,9,5
	blr
.L334:
	li 3,1
	blr
	.cfi_endproc
.LFE22:
	.size	isspace,.-isspace
	.align 2
	.globl isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	addi 9,3,-65
	li 10,1
	cmplwi 0,9,25
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE23:
	.size	isupper,.-isupper
	.align 2
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	cmplwi 0,3,31
	mr 9,3
	ble- 0,.L338
	addi 10,3,-127
	li 3,1
	cmplwi 1,10,32
	blelr- 1
	addi 0,9,-8232
	cmplwi 5,0,1
	blelr- 5
	addis 4,9,0xffff
	addi 5,4,7
	cmplwi 6,5,2
	isel 3,0,3,25
	blr
.L338:
	li 3,1
	blr
	.cfi_endproc
.LFE24:
	.size	iswcntrl,.-iswcntrl
	.align 2
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	addi 9,3,-48
	li 10,1
	cmplwi 0,9,9
	isel 3,0,10,1
	blr
	.cfi_endproc
.LFE25:
	.size	iswdigit,.-iswdigit
	.align 2
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	cmplwi 0,3,254
	mr 9,3
	ble- 0,.L349
	cmplwi 1,3,8231
	li 3,1
	blelr- 1
	addi 10,9,-8234
	cmplwi 5,10,47061
	blelr- 5
	addis 4,9,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	blelr- 6
	lis 0,0x10
	addi 5,4,4
	ori 6,0,0x3
	li 3,0
	cmplw 7,5,6
	bgtlr- 7
	li 3,0
	rlwinm 7,9,0,16,30
	ori 11,3,0xfffe
	li 12,1
	cmpw 0,7,11
	isel 3,0,12,2
	blr
.L349:
	addi 9,3,1
	li 10,1
	rlwinm 4,9,0,25,31
	cmplwi 1,4,33
	isel 3,0,10,4
	blr
	.cfi_endproc
.LFE26:
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	addi 9,3,-48
	cmplwi 0,9,9
	ble- 0,.L352
	ori 3,3,0x20
	li 10,1
	addi 0,3,-97
	cmplwi 1,0,5
	isel 3,0,10,5
	blr
.L352:
	li 3,1
	blr
	.cfi_endproc
.LFE27:
	.size	iswxdigit,.-iswxdigit
	.align 2
	.globl toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	rlwinm 3,3,0,25,31
	blr
	.cfi_endproc
.LFE28:
	.size	toascii,.-toascii
	.align 2
	.globl fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 1,2,2
	bun- 1,.L358
	fcmpu 5,1,2
	bng- 5,.L361
	fsub 1,1,2
	blr
.L361:
	xxlxor 1,1,1
	blr
.L358:
	fmr 1,2
	blr
	.cfi_endproc
.LFE29:
	.size	fdim,.-fdim
	.align 2
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 1,2,2
	bun- 1,.L366
	fcmpu 5,1,2
	bng- 5,.L369
	fsubs 1,1,2
	blr
.L369:
	xxlxor 1,1,1
	blr
.L366:
	fmr 1,2
	blr
	.cfi_endproc
.LFE30:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	fcmpu 0,1,1
	fmr 0,1
	bun- 0,.L375
	fcmpu 1,2,2
	bun- 1,.L376
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L372
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L376:
	fmr 1,0
	blr
.L372:
	fcmpu 6,1,2
	bnllr- 6
.L375:
	fmr 1,2
	blr
	.cfi_endproc
.LFE31:
	.size	fmax,.-fmax
	.align 2
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	fcmpu 0,1,1
	fmr 0,1
	bun- 0,.L384
	fcmpu 1,2,2
	bun- 1,.L385
	xscvdpspn 12,1
	xscvdpspn 1,2
	mfvsrwz 9,12
	rlwinm 0,9,0,0,0
	mfvsrwz 10,1
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq- 5,.L381
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L385:
	fmr 1,0
	blr
.L381:
	fcmpu 6,0,2
	fmr 1,0
	bnllr- 6
.L384:
	fmr 1,2
	blr
	.cfi_endproc
.LFE32:
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	fmr 9,2
	fmr 8,1
	fmr 11,4
	fmr 10,3
	fmr 0,8
	fcmpu 0,0,0
	bun- 0,.L395
	fmr 12,10
	fcmpu 1,12,12
	bun- 1,.L394
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L390
	cmpwi 7,0,0
	bne- 7,.L395
.L394:
	fmr 1,8
	fmr 2,9
	blr
.L390:
	fcmpu 6,8,10
	bne 6,$+8
	fcmpu 6,9,11
	blt- 6,.L395
	fmr 11,2
	fmr 10,1
.L395:
	fmr 1,10
	fmr 2,11
	blr
	.cfi_endproc
.LFE33:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	fcmpu 0,1,1
	bun- 0,.L401
	fcmpu 1,2,2
	bunlr- 1
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L405
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L400
	fmr 0,1
.L400:
	fmr 1,0
	blr
.L405:
	cmpwi 7,0,0
	bnelr- 7
.L401:
	fmr 1,2
	blr
	.cfi_endproc
.LFE34:
	.size	fmin,.-fmin
	.align 2
	.globl fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	fcmpu 0,1,1
	bun- 0,.L411
	fcmpu 1,2,2
	bunlr- 1
	xscvdpspn 0,1
	xscvdpspn 3,2
	mfvsrwz 9,0
	rlwinm 0,9,0,0,0
	mfvsrwz 10,3
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	bne- 5,.L415
	fcmpu 6,1,2
	bnl- 6,.L410
	fmr 2,1
.L410:
	fmr 1,2
	blr
.L415:
	cmpwi 7,0,0
	bnelr- 7
.L411:
	fmr 1,2
	blr
	.cfi_endproc
.LFE35:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	fmr 0,1
	fmr 11,4
	fmr 10,3
	fcmpu 0,0,0
	bun- 0,.L421
	fmr 12,10
	fcmpu 1,12,12
	bunlr- 1
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L418
	cmpwi 7,0,0
	bnelr- 7
.L421:
	fmr 1,10
	fmr 2,11
	blr
.L418:
	fcmpu 6,1,10
	bne 6,$+8
	fcmpu 6,2,11
	bltlr- 6
	fmr 1,10
	fmr 2,11
	blr
	.cfi_endproc
.LFE36:
	.size	fminl,.-fminl
	.align 2
	.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	mr 9,3
	lis 3,.LANCHOR0@ha
	cmpwi 0,9,0
	beq- 0,.L427
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L426:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L426
	li 5,0
	stb 5,0(10)
	blr
.L427:
	la 3,.LANCHOR0@l(3)
	li 5,0
	mr 10,3
	stb 5,0(10)
	blr
	.cfi_endproc
.LFE37:
	.size	l64a,.-l64a
	.align 2
	.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	lis 9,.LANCHOR0+8@ha
	addi 3,3,-1
	rldicl 0,3,0,32
	la 4,.LANCHOR0+8@l(9)
	std 0,0(4)
	blr
	.cfi_endproc
.LFE38:
	.size	srand,.-srand
	.align 2
	.globl rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	lis 10,.LANCHOR0@ha
	lis 9,0x4c95
	la 4,.LANCHOR0@l(10)
	lis 8,0x5851
	ld 3,8(4)
	ori 0,9,0x7f2d
	ori 5,8,0xf42d
	rldimi 0,5,32,0
	mulld 6,3,0
	addi 7,6,1
	std 7,8(4)
	srdi 3,7,33
	blr
	.cfi_endproc
.LFE39:
	.size	rand,.-rand
	.align 2
	.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	cmpwi 0,4,0
	beq- 0,.L437
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L437:
	li 0,0
	std 0,0(3)
	blr
	.cfi_endproc
.LFE40:
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L439
	lwz 10,4(3)
	stw 10,4(9)
.L439:
	lwz 3,4(3)
	cmpwi 1,3,0
	beqlr- 1
	stw 9,0(3)
	blr
	.cfi_endproc
.LFE41:
	.size	remque,.-remque
	.align 2
	.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 28,48(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	lwz 28,0(5)
	stw 23,28(1)
	.cfi_offset 23, -36
	mr 23,4
	cmpwi 0,28,0
	stw 24,32(1)
	.cfi_offset 24, -32
	mr 24,5
	stw 27,44(1)
	.cfi_offset 27, -20
	mr 27,3
	stw 29,52(1)
	.cfi_offset 29, -12
	mr 29,6
	stw 0,68(1)
	stw 26,40(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	beq- 0,.L448
	stw 25,36(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,56(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L450
.L465:
	beq- 7,.L464
.L450:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L465
	lwz 25,36(1)
	.cfi_restore 25
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L447:
	lwz 5,68(1)
	mr 3,26
	lwz 23,28(1)
	lwz 24,32(1)
	mtlr 5
	.cfi_restore 65
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	addi 1,1,64
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L464:
	.cfi_def_cfa_offset 64
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 25,36(1)
	.cfi_restore 25
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L448:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L447
	mr 5,29
	mr 4,27
	mr 3,26
	bl memmove
	lwz 5,68(1)
	mr 3,26
	lwz 23,28(1)
	lwz 24,32(1)
	mtlr 5
	.cfi_restore 65
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	addi 1,1,64
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE42:
	.size	lsearch,.-lsearch
	.align 2
	.globl lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 26,24(1)
	.cfi_offset 26, -24
	lwz 26,0(5)
	stw 25,20(1)
	cmpwi 0,26,0
	.cfi_offset 25, -28
	beq- 0,.L467
	mflr 0
	.cfi_register 65, 0
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,7
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,6
	stw 29,36(1)
	.cfi_offset 29, -12
	mr 29,3
	stw 30,40(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,52(1)
	.cfi_offset 65, 4
	b .L469
.L480:
	beq- 7,.L479
.L469:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L480
	lwz 3,52(1)
	lwz 27,28(1)
	.cfi_remember_state
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
	mr 3,25
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	lwz 25,20(1)
	lwz 26,24(1)
	addi 1,1,48
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L479:
	.cfi_restore_state
	lwz 0,52(1)
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	mtlr 0
	.cfi_restore 65
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L467:
	li 25,0
	lwz 26,24(1)
	mr 3,25
	lwz 25,20(1)
	addi 1,1,48
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE43:
	.size	lfind,.-lfind
	.align 2
	.globl abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	blr
	.cfi_endproc
.LFE44:
	.size	abs,.-abs
	.align 2
	.globl atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
.L489:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L483
	ble- 7,.L483
	cmpwi 1,10,43
	beq- 1,.L484
	cmpwi 6,10,45
	bne- 6,.L504
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L494
	li 6,1
.L487:
	li 0,0
.L491:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L491
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L483:
	addi 3,3,1
	b .L489
.L504:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L487
.L494:
	li 3,0
	blr
.L484:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L487
	b .L494
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L510:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L506
	ble- 7,.L506
	cmpwi 1,10,43
	beq- 1,.L507
	cmpwi 6,10,45
	beq- 6,.L508
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	bgt- 7,.L517
.L511:
	li 0,0
.L514:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L514
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L506:
	addi 3,3,1
	b .L510
.L508:
	lbz 10,1(3)
	li 6,1
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	ble+ 0,.L511
.L517:
	li 3,0
	blr
.L507:
	lbz 10,1(3)
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L517
	li 6,0
	b .L511
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L534:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L528
	ble- 7,.L528
	cmpwi 1,10,43
	beq- 1,.L529
	cmpwi 6,10,45
	bne- 6,.L549
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L539
	li 6,1
.L532:
	li 5,0
.L536:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 11,5,2
	add 12,11,5
	extsw 0,8
	addi 7,10,-48
	sldi 9,12,1
	cmplwi 1,7,9
	subf 5,0,9
	ble+ 1,.L536
	cmpwi 5,6,0
	subf 3,9,0
	isel 4,3,5,22
.L527:
	srdi 3,4,32
	blr
.L528:
	addi 3,3,1
	b .L534
.L549:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L532
.L539:
	li 4,0
	b .L527
.L529:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L532
	li 4,0
	b .L527
	.cfi_endproc
.LFE47:
	.size	atoll,.-atoll
	.align 2
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 30,40(1)
	.cfi_offset 30, -8
	beq- 0,.L551
	mflr 0
	.cfi_register 65, 0
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 26,24(1)
	.cfi_offset 26, -24
	mr 26,3
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,6
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,4
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,5
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 29,36(1)
	.cfi_offset 29, -12
	b .L554
.L563:
	beq- 1,.L561
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L562
.L554:
	srwi 29,31,1
	mr 3,26
	mullw 30,29,27
	mtctr 25
	add 30,28,30
	mr 4,30
	bctrl
	cmpwi 1,3,0
	addi 31,31,-1
	subf 31,29,31
	bge+ 1,.L563
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L554
.L562:
	lwz 3,52(1)
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	mtlr 3
	.cfi_restore 65
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 31,44(1)
	.cfi_restore 31
.L551:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L561:
	.cfi_def_cfa_offset 48
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 0,52(1)
	mr 3,30
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	mtlr 0
	.cfi_restore 65
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 31,44(1)
	.cfi_restore 31
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE48:
	.size	bsearch,.-bsearch
	.align 2
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 24,16(1)
	.cfi_offset 24, -32
	mr 24,8
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 26,24(1)
	.cfi_offset 26, -24
	mr 26,3
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,6
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,4
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,5
	stw 30,40(1)
	.cfi_offset 30, -8
	beq- 0,.L569
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L577:
	srawi 29,31,1
	mr 5,24
	mullw 30,29,27
	mr 3,26
	mtctr 25
	add 30,28,30
	mr 4,30
	bctrl
	cmpwi 7,3,0
	addi 31,31,-1
	srawi. 31,31,1
	beq- 7,.L581
.L583:
	cmpwi 5,29,0
	ble- 7,.L567
	add 28,30,27
	bne+ 0,.L577
.L582:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L569:
	li 30,0
	lwz 24,16(1)
	mr 3,30
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	blr
.L567:
	.cfi_def_cfa_offset 48
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	mr 31,29
	beq- 5,.L582
	srawi 29,31,1
	mr 5,24
	mullw 30,29,27
	mr 3,26
	mtctr 25
	add 30,28,30
	mr 4,30
	bctrl
	cmpwi 7,3,0
	addi 31,31,-1
	srawi. 31,31,1
	bne+ 7,.L583
.L581:
	lwz 3,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	lwz 24,16(1)
	mtlr 3
	.cfi_restore 65
	mr 3,30
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE49:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	divw 10,4,5
	mullw 5,10,5
	stw 10,0(3)
	subf 4,5,4
	stw 4,4(3)
	blr
	.cfi_endproc
.LFE50:
	.size	div,.-div
	.align 2
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
	sradi 0,9,63
	xor 5,0,9
	subf 4,0,5
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE51:
	.size	imaxabs,.-imaxabs
	.align 2
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	sldi 5,5,32
	rldicl 6,6,0,32
	sldi 7,7,32
	rldicl 8,8,0,32
	or 0,6,5
	or 4,8,7
	divd 10,0,4
	mulld 11,10,4
	std 10,0(3)
	subf 12,11,0
	std 12,8(3)
	blr
	.cfi_endproc
.LFE52:
	.size	imaxdiv,.-imaxdiv
	.align 2
	.globl labs
	.type	labs, @function
labs:
.LFB152:
	.cfi_startproc
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	blr
	.cfi_endproc
.LFE152:
	.size	labs,.-labs
	.align 2
	.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	divw 10,4,5
	mullw 5,10,5
	stw 10,0(3)
	subf 4,5,4
	stw 4,4(3)
	blr
	.cfi_endproc
.LFE54:
	.size	ldiv,.-ldiv
	.align 2
	.globl llabs
	.type	llabs, @function
llabs:
.LFB154:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
	sradi 0,9,63
	xor 5,0,9
	subf 4,0,5
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE154:
	.size	llabs,.-llabs
	.align 2
	.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	sldi 5,5,32
	rldicl 6,6,0,32
	sldi 7,7,32
	rldicl 8,8,0,32
	or 0,6,5
	or 4,8,7
	divd 10,0,4
	mulld 11,10,4
	std 10,0(3)
	subf 12,11,0
	std 12,8(3)
	blr
	.cfi_endproc
.LFE56:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L595
.L592:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L592
.L595:
	li 3,0
	blr
	.cfi_endproc
.LFE57:
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L602
	b .L601
.L603:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne- 0,.L601
.L602:
	cmpwi 7,9,0
	bne+ 7,.L603
.L601:
	li 4,-1
	mfcr 3,128
	rlwinm 3,3,2,1
	isel 3,4,3,0
	blr
	.cfi_endproc
.LFE58:
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	addi 4,4,-4
	addi 10,3,-4
.L607:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L607
	blr
	.cfi_endproc
.LFE59:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L613
	mr 4,3
.L612:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L612
	subf 3,3,4
	srawi 3,3,2
	blr
.L613:
	li 3,0
	blr
	.cfi_endproc
.LFE60:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	cmpwi 0,5,0
	mtctr 5
	bne+ 0,.L616
	b .L624
.L627:
	beq- 7,.L618
	addi 3,3,4
	addi 4,4,4
	bdz .L624
.L616:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L627
.L618:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	blt- 5,.L628
	mfcr 3,4
	rlwinm 3,3,22,1
	blr
.L628:
	li 3,-1
	blr
.L624:
	li 3,0
	blr
	.cfi_endproc
.LFE61:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	cmpwi 0,5,0
	beq- 0,.L633
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L650
.L636:
	srwi 0,5,1
	mtctr 0
.L630:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L630
.L633:
	li 3,0
	blr
.L650:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L636
	b .L633
	.cfi_endproc
.LFE62:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	cmpwi 0,5,0
	beq- 0,.L657
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L672
.L660:
	srwi 0,5,1
	mtctr 0
	b .L652
.L654:
	lwz 12,4(3)
	addi 3,7,4
	lwz 9,4(4)
	addi 4,6,4
	cmpw 1,12,9
	bne- 1,.L669
	bdz .L657
.L652:
	lwz 5,0(3)
	addi 7,3,4
	addi 6,4,4
	lwz 11,0(4)
	cmpw 1,5,11
	beq+ 1,.L654
.L669:
	li 4,-1
	mfcr 3,64
	rlwinm 3,3,6,1
	isel 3,4,3,4
	blr
.L672:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne- 1,.L669
	cmpwi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L660
.L657:
	li 3,0
	blr
	.cfi_endproc
.LFE63:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,3
	beq- 0,.L674
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L674:
	mr 3,31
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE64:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	cmplw 0,3,4
	beqlr- 0
	slwi 9,5,2
	subf 10,4,3
	cmplw 1,10,9
	addi 0,5,-1
	bge- 1,.L774
	cmpwi 7,5,0
	beqlr- 7
	cmplwi 1,0,4
	ble- 1,.L684
	addi 6,9,-4
	addi 10,9,-8
	add 11,3,6
	add 7,4,10
	subf 12,7,11
	addi 8,12,8
	cmplwi 5,8,8
	ble- 5,.L684
	rldicl 8,5,62,34
	addi 9,9,-16
	andi. 6,8,0x3
	add 7,4,9
	add 12,3,9
	addi 11,8,-1
	li 10,0
	beq- 0,.L765
	cmpdi 6,6,1
	beq- 6,.L739
	cmpdi 7,6,2
	beq- 7,.L740
	mr 8,11
	li 10,-16
	lxvw4x 7,0,7
	stxvw4x 7,0,12
.L740:
	lxvw4x 8,7,10
	addi 8,8,-1
	stxvw4x 8,12,10
	addi 10,10,-16
.L739:
	addi 8,8,-1
	lxvw4x 9,7,10
	stxvw4x 9,12,10
	addi 10,10,-16
	cmpdi 1,8,0
	beq- 1,.L762
.L765:
	addi 8,8,-4
	addi 9,10,-16
	lxvw4x 10,7,10
	stxvw4x 10,12,10
	cmpdi 5,8,0
	addi 11,10,-32
	lxvw4x 11,7,9
	stxvw4x 11,12,9
	addi 6,10,-48
	lxvw4x 12,7,11
	addi 10,10,-64
	stxvw4x 12,12,11
	lxvw4x 13,7,6
	stxvw4x 13,12,6
	bne+ 5,.L765
.L762:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	subf 7,5,0
	beqlr- 0
	cmpwi 6,7,0
	slwi 0,7,2
	lwzx 12,4,0
	stwx 12,3,0
	beqlr- 6
	addi 8,7,-1
	cmpwi 7,8,0
	slwi 10,8,2
	lwzx 9,4,10
	stwx 9,3,10
	beqlr- 7
	addi 11,10,-4
	lwzx 4,4,11
	stwx 4,3,11
	blr
.L774:
	cmpwi 5,5,0
	beqlr- 5
	cmplwi 6,0,3
	ble- 6,.L690
	addi 6,4,4
	subf 7,6,3
	cmplwi 7,7,8
	ble- 7,.L690
	rldicl 12,5,62,34
	li 9,0
	andi. 8,12,0x3
	addi 11,12,-1
	beq- 0,.L767
	cmpdi 1,8,1
	beq- 1,.L741
	cmpdi 5,8,2
	beq- 5,.L742
	mr 12,11
	li 9,16
	lxvw4x 0,0,4
	stxvw4x 0,0,3
.L742:
	lxvw4x 1,4,9
	addi 12,12,-1
	stxvw4x 1,3,9
	addi 9,9,16
.L741:
	addi 12,12,-1
	lxvw4x 2,4,9
	stxvw4x 2,3,9
	addi 9,9,16
	cmpdi 6,12,0
	beq- 6,.L763
.L767:
	addi 12,12,-4
	addi 10,9,16
	lxvw4x 3,4,9
	stxvw4x 3,3,9
	cmpdi 7,12,0
	addi 6,9,32
	lxvw4x 4,4,10
	stxvw4x 4,3,10
	addi 7,9,48
	lxvw4x 5,4,6
	addi 9,9,64
	stxvw4x 5,3,6
	lxvw4x 6,4,7
	stxvw4x 6,3,7
	bne+ 7,.L767
.L763:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	slwi 11,5,2
	subf 0,5,0
	add 8,4,11
	add 12,3,11
	beqlr- 0
	cmpwi 1,0,0
	lwzx 4,4,11
	stwx 4,3,11
	beqlr- 1
	cmplwi 5,0,1
	lwz 9,4(8)
	stw 9,4(12)
	beqlr- 5
	lwz 10,8(8)
	stw 10,8(12)
	blr
.L684:
	rldicl 5,5,0,32
	add 11,4,9
	andi. 10,5,0x1
	add 9,3,9
	addi 6,5,-1
	beq- 0,.L764
	mr. 5,6
	lwzu 7,-4(11)
	stwu 7,-4(9)
	beqlr- 0
.L764:
	lwz 0,-4(11)
	addi 5,5,-2
	mr 12,11
	cmpdi 1,5,0
	addi 10,9,-4
	stw 0,-4(9)
	addi 11,11,-8
	addi 9,9,-8
	lwz 8,-8(12)
	stw 8,-4(10)
	beqlr- 1
	lwz 0,-4(11)
	addi 5,5,-2
	mr 12,11
	cmpdi 1,5,0
	addi 10,9,-4
	stw 0,-4(9)
	addi 11,11,-8
	addi 9,9,-8
	lwz 8,-8(12)
	stw 8,-4(10)
	bne+ 1,.L764
	blr
.L690:
	rldicl 5,5,0,32
	addi 11,4,-4
	andi. 10,5,0x1
	addi 6,5,-1
	addi 12,3,-4
	beq- 0,.L766
	mr. 5,6
	lwz 7,0(4)
	mr 11,4
	mr 12,3
	stw 7,0(3)
	beqlr- 0
.L766:
	lwz 0,4(11)
	addi 5,5,-2
	mr 4,11
	cmpdi 6,5,0
	addi 8,12,4
	stw 0,4(12)
	addi 11,11,8
	addi 12,12,8
	lwz 9,8(4)
	stw 9,4(8)
	beqlr- 6
	lwz 0,4(11)
	addi 5,5,-2
	mr 4,11
	cmpdi 6,5,0
	addi 8,12,4
	stw 0,4(12)
	addi 11,11,8
	addi 12,12,8
	lwz 9,8(4)
	stw 9,4(8)
	bne+ 6,.L766
	blr
	.cfi_endproc
.LFE65:
	.size	wmemmove,.-wmemmove
	.align 2
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	cmpwi 0,5,0
	addi 7,5,-1
	beqlr- 0
	cmplwi 1,7,2
	ble- 1,.L780
	rldicl 10,5,62,34
	mtvsrwz 0,4
	mr 11,3
	xxspltw 1,0,1
	andi. 8,10,0x3
	addi 6,10,-1
	beq- 0,.L810
	cmpdi 5,8,1
	beq- 5,.L799
	cmpdi 6,8,2
	beq- 6,.L800
	mr 10,6
	addi 11,3,16
	stxvw4x 1,0,3
.L800:
	stxvw4x 1,0,11
	addi 10,10,-1
	addi 11,11,16
.L799:
	addi 10,10,-1
	stxvw4x 1,0,11
	addi 11,11,16
	cmpdi 7,10,0
	beq- 7,.L809
.L810:
	addi 10,10,-4
	addi 12,11,16
	stxvw4x 1,0,11
	cmpdi 1,10,0
	addi 9,11,32
	stxvw4x 1,0,12
	addi 8,11,48
	stxvw4x 1,0,9
	addi 11,11,64
	stxvw4x 1,0,8
	bne+ 1,.L810
.L809:
	andi. 9,5,0x3
	beqlr- 0
	rlwinm 5,5,0,0,29
	slwi 0,5,2
	subf 7,5,7
	add 9,3,0
.L777:
	cmpwi 5,7,0
	stw 4,0(9)
	beqlr- 5
	cmplwi 6,7,1
	stw 4,4(9)
	beqlr- 6
	stw 4,8(9)
	blr
.L780:
	mr 9,3
	b .L777
	.cfi_endproc
.LFE66:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	cmplw 0,3,4
	bge- 0,.L813
	cmpwi 1,5,0
	add 12,3,5
	add 11,4,5
	beqlr- 1
	addi 7,5,-1
	cmplwi 5,7,14
	ble- 5,.L815
	addi 0,5,-2
	add 10,4,7
	add 9,3,0
	subf 6,9,10
	addi 8,6,14
	cmplwi 6,8,14
	ble- 6,.L815
	rldicl 10,5,60,36
	addi 0,5,-16
	andi. 7,10,0x3
	addi 6,10,-1
	add 3,3,0
	add 4,4,0
	li 9,0
	beq- 0,.L969
	cmpdi 7,7,1
	beq- 7,.L918
	cmpdi 1,7,2
	beq- 1,.L919
	mr 10,6
	li 9,-16
	lxvw4x 7,0,3
	stxvw4x 7,0,4
.L919:
	lxvw4x 8,3,9
	addi 10,10,-1
	stxvw4x 8,4,9
	addi 9,9,-16
.L918:
	addi 10,10,-1
	lxvw4x 9,3,9
	stxvw4x 9,4,9
	addi 9,9,-16
	cmpdi 5,10,0
	beq- 5,.L966
.L969:
	addi 10,10,-4
	addi 8,9,-16
	lxvw4x 10,3,9
	stxvw4x 10,4,9
	cmpdi 6,10,0
	addi 0,9,-32
	lxvw4x 11,3,8
	stxvw4x 11,4,8
	addi 7,9,-48
	lxvw4x 12,3,0
	addi 9,9,-64
	stxvw4x 12,4,0
	lxvw4x 13,3,7
	stxvw4x 13,4,7
	bne+ 6,.L969
.L966:
	andi. 9,5,0xf
	rlwinm 6,5,0,0,27
	subf 11,6,11
	subf 12,6,12
	subf 5,6,5
	beqlr- 0
	cmplwi 7,5,1
	lbz 3,-1(12)
	stb 3,-1(11)
	beqlr- 7
	cmplwi 1,5,2
	lbz 4,-2(12)
	stb 4,-2(11)
	beqlr- 1
	cmplwi 5,5,3
	lbz 10,-3(12)
	stb 10,-3(11)
	beqlr- 5
	cmplwi 6,5,4
	lbz 9,-4(12)
	stb 9,-4(11)
	beqlr- 6
	cmplwi 0,5,5
	lbz 8,-5(12)
	stb 8,-5(11)
	beqlr- 0
	cmplwi 7,5,6
	lbz 0,-6(12)
	stb 0,-6(11)
	beqlr- 7
	cmplwi 1,5,7
	lbz 7,-7(12)
	stb 7,-7(11)
	beqlr- 1
	cmplwi 5,5,8
	lbz 6,-8(12)
	stb 6,-8(11)
	beqlr- 5
	cmplwi 6,5,9
	lbz 3,-9(12)
	stb 3,-9(11)
	beqlr- 6
	cmplwi 0,5,10
	lbz 4,-10(12)
	stb 4,-10(11)
	beqlr- 0
	cmplwi 7,5,11
	lbz 10,-11(12)
	stb 10,-11(11)
	beqlr- 7
	cmplwi 1,5,12
	lbz 9,-12(12)
	stb 9,-12(11)
	beqlr- 1
	cmplwi 5,5,13
	lbz 8,-13(12)
	stb 8,-13(11)
	beqlr- 5
	cmplwi 6,5,14
	lbz 5,-14(12)
	stb 5,-14(11)
	beqlr- 6
	lbz 12,-15(12)
	stb 12,-15(11)
	blr
.L813:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmplwi 5,9,14
	ble- 5,.L820
	addi 0,3,1
	subf 6,0,4
	cmplwi 6,6,14
	ble- 6,.L820
	rldicl 10,5,60,36
	li 11,0
	andi. 8,10,0x3
	addi 7,10,-1
	beq- 0,.L971
	cmpdi 7,8,1
	beq- 7,.L920
	cmpdi 1,8,2
	beq- 1,.L921
	mr 10,7
	li 11,16
	lxvw4x 0,0,3
	stxvw4x 0,0,4
.L921:
	lxvw4x 1,3,11
	addi 10,10,-1
	stxvw4x 1,4,11
	addi 11,11,16
.L920:
	addi 10,10,-1
	lxvw4x 2,3,11
	stxvw4x 2,4,11
	addi 11,11,16
	cmpdi 5,10,0
	beq- 5,.L967
.L971:
	addi 10,10,-4
	addi 12,11,16
	lxvw4x 3,3,11
	stxvw4x 3,4,11
	cmpdi 6,10,0
	addi 9,11,32
	lxvw4x 4,3,12
	stxvw4x 4,4,12
	addi 0,11,48
	lxvw4x 5,3,9
	addi 11,11,64
	stxvw4x 5,4,9
	lxvw4x 6,3,0
	stxvw4x 6,4,0
	bne+ 6,.L971
.L967:
	andi. 9,5,0xf
	rlwinm 6,5,0,0,27
	add 11,4,6
	add 10,3,6
	subf 5,6,5
	beqlr- 0
	cmplwi 7,5,1
	lbzx 3,3,6
	stbx 3,4,6
	beqlr- 7
	cmplwi 1,5,2
	lbz 4,1(10)
	stb 4,1(11)
	beqlr- 1
	cmplwi 5,5,3
	lbz 8,2(10)
	stb 8,2(11)
	beqlr- 5
	cmplwi 6,5,4
	lbz 7,3(10)
	stb 7,3(11)
	beqlr- 6
	cmplwi 0,5,5
	lbz 12,4(10)
	stb 12,4(11)
	beqlr- 0
	cmplwi 7,5,6
	lbz 9,5(10)
	stb 9,5(11)
	beqlr- 7
	cmplwi 1,5,7
	lbz 0,6(10)
	stb 0,6(11)
	beqlr- 1
	cmplwi 5,5,8
	lbz 6,7(10)
	stb 6,7(11)
	beqlr- 5
	cmplwi 6,5,9
	lbz 3,8(10)
	stb 3,8(11)
	beqlr- 6
	cmplwi 0,5,10
	lbz 4,9(10)
	stb 4,9(11)
	beqlr- 0
	cmplwi 7,5,11
	lbz 8,10(10)
	stb 8,10(11)
	beqlr- 7
	cmplwi 1,5,12
	lbz 7,11(10)
	stb 7,11(11)
	beqlr- 1
	cmplwi 5,5,13
	lbz 12,12(10)
	stb 12,12(11)
	beqlr- 5
	cmplwi 6,5,14
	lbz 5,13(10)
	stb 5,13(11)
	beqlr- 6
	lbz 10,14(10)
	stb 10,14(11)
	blr
.L815:
	rldicl 6,5,0,32
	andi. 9,6,0x1
	addi 0,6,-1
	beq- 0,.L968
	mr. 6,0
	lbzu 7,-1(12)
	stbu 7,-1(11)
	beqlr- 0
.L968:
	lbz 3,-1(12)
	addi 6,6,-2
	mr 4,12
	cmpdi 7,6,0
	mr 10,11
	stb 3,-1(11)
	addi 12,12,-2
	addi 11,11,-2
	lbz 9,-2(4)
	stb 9,-2(10)
	beqlr- 7
	lbz 3,-1(12)
	addi 6,6,-2
	mr 4,12
	cmpdi 7,6,0
	mr 10,11
	stb 3,-1(11)
	addi 12,12,-2
	addi 11,11,-2
	lbz 9,-2(4)
	stb 9,-2(10)
	bne+ 7,.L968
	blr
.L820:
	rldicl 5,5,0,32
	addi 12,3,-1
	andi. 9,5,0x1
	addi 11,5,-1
	addi 9,4,-1
	beq- 0,.L970
	mr. 5,11
	lbz 0,0(3)
	mr 12,3
	mr 9,4
	stb 0,0(4)
	beqlr- 0
.L970:
	lbz 6,1(12)
	addi 5,5,-2
	mr 3,12
	cmpdi 7,5,0
	mr 4,9
	stb 6,1(9)
	addi 12,12,2
	addi 9,9,2
	lbz 8,2(3)
	stb 8,2(4)
	beqlr- 7
	lbz 6,1(12)
	addi 5,5,-2
	mr 3,12
	cmpdi 7,5,0
	mr 4,9
	stb 6,1(9)
	addi 12,12,2
	addi 9,9,2
	lbz 8,2(3)
	stb 8,2(4)
	bne+ 7,.L970
	blr
	.cfi_endproc
.LFE67:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	rotld 4,0,5
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE68:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	subfic 5,5,64
	rotld 4,0,5
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE69:
	.size	rotr64,.-rotr64
	.align 2
	.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	rotlw 3,3,4
	blr
	.cfi_endproc
.LFE70:
	.size	rotl32,.-rotl32
	.align 2
	.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	subfic 4,4,32
	rotlw 3,3,4
	blr
	.cfi_endproc
.LFE71:
	.size	rotr32,.-rotr32
	.align 2
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB158:
	.cfi_startproc
	rotlw 3,3,4
	blr
	.cfi_endproc
.LFE158:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB160:
	.cfi_startproc
	subfic 4,4,32
	rotlw 3,3,4
	blr
	.cfi_endproc
.LFE160:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	rlwinm 4,4,0,28,31
	neg 9,4
	slw 0,3,4
	rlwinm 5,9,0,28,31
	srw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xffff
	blr
	.cfi_endproc
.LFE74:
	.size	rotl16,.-rotl16
	.align 2
	.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	rlwinm 4,4,0,28,31
	neg 9,4
	srw 0,3,4
	rlwinm 5,9,0,28,31
	slw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xffff
	blr
	.cfi_endproc
.LFE75:
	.size	rotr16,.-rotr16
	.align 2
	.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	rlwinm 4,4,0,29,31
	neg 9,4
	slw 0,3,4
	rlwinm 5,9,0,29,31
	srw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xff
	blr
	.cfi_endproc
.LFE76:
	.size	rotl8,.-rotl8
	.align 2
	.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	rlwinm 4,4,0,29,31
	neg 9,4
	srw 0,3,4
	rlwinm 5,9,0,29,31
	slw 3,3,5
	or 6,0,3
	rlwinm 3,6,0,0xff
	blr
	.cfi_endproc
.LFE77:
	.size	rotr8,.-rotr8
	.align 2
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	rlwinm 9,3,24,24,31
	rlwinm 10,3,8,16,23
	or 0,9,10
	rlwinm 3,0,0,0xffff
	blr
	.cfi_endproc
.LFE78:
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	mr 9,3
	rotlwi 3,3,24
	rlwimi 3,9,8,8,15
	rlwimi 3,9,8,24,31
	blr
	.cfi_endproc
.LFE79:
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
	srdi 10,9,32
	rotlwi 8,9,24
	rotlwi 4,10,24
	rlwimi 8,9,8,8,15
	rlwimi 4,10,8,8,15
	rlwimi 8,9,8,24,31
	rlwimi 4,10,8,24,31
	rldimi 4,8,32,0
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE80:
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	li 10,16
	li 9,0
	mtctr 10
	b .L993
.L991:
	addi 9,9,1
	bne- 0,.L997
	bdz .L1001
.L993:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L991
.L997:
	mr 3,9
	blr
.L1001:
	li 3,0
	blr
	.cfi_endproc
.LFE81:
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	cmpwi 0,3,0
	mr 9,3
	beq- 0,.L1005
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L1004:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L1004
	blr
.L1005:
	li 3,0
	blr
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs,.-libiberty_ffs
	.align 2
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	lis 9,.LC2@ha
	li 3,1
	lfs 0,.LC2@l(9)
	fcmpu 0,1,0
	bltlr- 0
	lis 3,.LC3@ha
	lfs 2,.LC3@l(3)
	fcmpu 1,1,2
	mfcr 3,64
	rlwinm 3,3,6,1
	blr
	.cfi_endproc
.LFE83:
	.size	gl_isinff,.-gl_isinff
	.align 2
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	lis 9,.LC6@ha
	li 3,1
	lfd 0,.LC6@l(9)
	fcmpu 0,1,0
	bltlr- 0
	lis 3,.LC7@ha
	lfd 2,.LC7@l(3)
	fcmpu 1,1,2
	mfcr 3,64
	rlwinm 3,3,6,1
	blr
	.cfi_endproc
.LFE84:
	.size	gl_isinfd,.-gl_isinfd
	.align 2
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	lis 9,.LC10@ha
	fmr 0,1
	la 3,.LC10@l(9)
	fmr 1,2
	lfd 12,0(3)
	lfd 13,8(3)
	li 3,1
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	bltlr- 0
	lis 4,.LC11@ha
	la 5,.LC11@l(4)
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,0,12
	bne 1,$+8
	fcmpu 1,1,13
	mfcr 3,64
	rlwinm 3,3,6,1
	blr
	.cfi_endproc
.LFE85:
	.size	gl_isinfl,.-gl_isinfl
	.align 2
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	mtvsrwa 0,4
	fcfid 1,0
	xxlxor 3,3,3
	stfd 3,8(3)
	stfd 1,0(3)
	blr
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq,.-_Qp_itoq
	.align 2
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fadds 0,1,1
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,3,0
	blt- 5,.L1032
	lis 9,.LC14@ha
	lfs 2,.LC14@l(9)
.L1021:
	andi. 9,3,0x1
	beq- 0,.L1022
.L1023:
	fmuls 1,1,2
.L1022:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmuls 2,2,2
	bne- 0,.L1023
.L1033:
	srawi 3,3,1
	addze 3,3
	fmuls 2,2,2
	andi. 9,3,0x1
	bne- 0,.L1023
	b .L1033
.L1032:
	lis 4,.LC15@ha
	lfs 2,.LC15@l(4)
	b .L1021
	.cfi_endproc
.LFE87:
	.size	ldexpf,.-ldexpf
	.align 2
	.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fadd 0,1,1
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,3,0
	blt- 5,.L1047
	lis 9,.LC14@ha
	lfs 2,.LC14@l(9)
.L1036:
	andi. 9,3,0x1
	beq- 0,.L1037
.L1038:
	fmul 1,1,2
.L1037:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmul 2,2,2
	bne- 0,.L1038
.L1048:
	srawi 3,3,1
	addze 3,3
	fmul 2,2,2
	andi. 9,3,0x1
	bne- 0,.L1038
	b .L1048
.L1047:
	lis 4,.LC15@ha
	lfs 2,.LC15@l(4)
	b .L1036
	.cfi_endproc
.LFE88:
	.size	ldexp,.-ldexp
	.align 2
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stfd 28,32(1)
	.cfi_offset 60, -32
	fmr 28,1
	stfd 29,40(1)
	.cfi_offset 61, -24
	fmr 29,2
	fmr 0,28
	fcmpu 0,0,0
	bun- 0,.L1050
	fmr 3,1
	mflr 0
	.cfi_register 65, 0
	stw 31,28(1)
	.cfi_offset 31, -36
	mr 31,3
	fmr 4,2
	stw 0,68(1)
	.cfi_offset 65, 4
	bl __gcc_qadd
	fcmpu 1,1,28
	bne 1,$+8
	fcmpu 1,2,29
	beq- 1,.L1065
	cmpwi 5,31,0
	stfd 30,48(1)
	.cfi_offset 62, -16
	stfd 31,56(1)
	.cfi_offset 63, -8
	blt- 5,.L1066
	lis 9,.LC20@ha
	la 3,.LC20@l(9)
	lfd 30,0(3)
	lfd 31,8(3)
.L1051:
	andi. 9,31,0x1
	beq- 0,.L1052
.L1053:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	fmr 29,2
	fmr 28,1
.L1052:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L1064
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L1053
.L1067:
	fmr 3,30
	srawi 31,31,1
	addze 31,31
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L1053
	b .L1067
.L1064:
	lfd 30,48(1)
	.cfi_restore 62
	lfd 31,56(1)
	.cfi_restore 63
.L1065:
	lwz 0,68(1)
	lwz 31,28(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L1050:
	fmr 1,28
	lfd 28,32(1)
	fmr 2,29
	lfd 29,40(1)
	addi 1,1,64
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L1066:
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -36
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	lis 4,.LC21@ha
	la 5,.LC21@l(4)
	lfd 30,0(5)
	lfd 31,8(5)
	b .L1051
	.cfi_endproc
.LFE89:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	cmpwi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmplwi 1,9,14
	ble- 1,.L1073
	rldicl 8,5,60,36
	li 7,0
	andi. 10,8,0x1
	addi 10,8,-1
	beq- 0,.L1129
	mr. 8,10
	lxvw4x 0,0,3
	lxvw4x 12,0,4
	li 7,16
	xxlxor 1,0,12
	stxvw4x 1,0,3
	beq- 0,.L1128
.L1129:
	addi 8,8,-2
	addi 0,7,16
	lxvw4x 2,3,7
	lxvw4x 3,4,7
	cmpdi 5,8,0
	xxlxor 4,2,3
	lxvw4x 6,4,0
	stxvw4x 4,3,7
	addi 7,7,32
	lxvw4x 5,3,0
	xxlxor 7,5,6
	stxvw4x 7,3,0
	bne+ 5,.L1129
.L1128:
	andi. 9,5,0xf
	rlwinm 11,5,0,0,27
	add 4,4,11
	add 6,3,11
	subf 5,11,5
	beqlr- 0
.L1070:
	cmplwi 6,5,1
	lbz 12,0(6)
	lbz 9,0(4)
	xor 10,12,9
	stb 10,0(6)
	beqlr- 6
	cmplwi 7,5,2
	lbz 8,1(6)
	lbz 7,1(4)
	xor 0,7,8
	stb 0,1(6)
	beqlr- 7
	cmplwi 1,5,3
	lbz 12,2(6)
	lbz 11,2(4)
	xor 9,11,12
	stb 9,2(6)
	beqlr- 1
	cmplwi 5,5,4
	lbz 7,3(6)
	lbz 10,3(4)
	xor 8,10,7
	stb 8,3(6)
	beqlr- 5
	cmplwi 0,5,5
	lbz 11,4(6)
	lbz 0,4(4)
	xor 12,0,11
	stb 12,4(6)
	beqlr- 0
	cmplwi 6,5,6
	lbz 10,5(6)
	lbz 9,5(4)
	xor 7,9,10
	stb 7,5(6)
	beqlr- 6
	cmplwi 7,5,7
	lbz 8,6(6)
	lbz 0,6(4)
	xor 11,0,8
	stb 11,6(6)
	beqlr- 7
	cmplwi 1,5,8
	lbz 9,7(6)
	lbz 12,7(4)
	xor 10,12,9
	stb 10,7(6)
	beqlr- 1
	cmplwi 5,5,9
	lbz 0,8(6)
	lbz 7,8(4)
	xor 8,7,0
	stb 8,8(6)
	beqlr- 5
	cmplwi 0,5,10
	lbz 12,9(6)
	lbz 11,9(4)
	xor 9,11,12
	stb 9,9(6)
	beqlr- 0
	cmplwi 6,5,11
	lbz 7,10(6)
	lbz 10,10(4)
	xor 0,10,7
	stb 0,10(6)
	beqlr- 6
	cmplwi 7,5,12
	lbz 8,11(6)
	lbz 11,11(4)
	xor 12,11,8
	stb 12,11(6)
	beqlr- 7
	cmplwi 1,5,13
	lbz 10,12(6)
	lbz 9,12(4)
	xor 7,9,10
	stb 7,12(6)
	beqlr- 1
	cmplwi 5,5,14
	lbz 0,13(6)
	lbz 5,13(4)
	xor 11,5,0
	stb 11,13(6)
	beqlr- 5
	lbz 8,14(6)
	lbz 4,14(4)
	xor 12,4,8
	stb 12,14(6)
	blr
.L1073:
	mr 6,3
	b .L1070
	.cfi_endproc
.LFE90:
	.size	memxor,.-memxor
	.align 2
	.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	lbz 9,0(3)
	cmpwi 0,9,0
	mr 9,3
	beq- 0,.L1132
.L1133:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1133
.L1132:
	cmpwi 5,5,0
	beq- 5,.L1134
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne- 0,.L1157
.L1145:
	srwi 0,5,1
	mtctr 0
.L1135:
	lbz 4,1(12)
	addi 11,12,1
	addi 5,9,1
	addi 12,11,1
	rlwinm 10,4,0,0xff
	stb 4,0(9)
	cmpwi 1,10,0
	beqlr- 1
	lbz 8,1(11)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	addi 9,5,1
	cmpwi 5,7,0
	beqlr- 5
	bdnz .L1135
.L1134:
	li 6,0
	stb 6,0(9)
	blr
.L1157:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpwi 7,7,0
	addi 9,9,1
	bne+ 7,.L1145
	b .L1134
	.cfi_endproc
.LFE91:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	cmpwi 0,4,0
	mr 9,3
	li 3,0
	beqlr- 0
	andi. 8,4,0x3
	mr 10,4
	beq- 0,.L1170
	cmpwi 1,8,1
	beq- 1,.L1181
	cmpwi 5,8,2
	beq- 5,.L1182
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1182:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1181:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmplw 1,4,3
	beqlr- 1
.L1170:
	srwi 10,10,2
.L1159:
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
	cmpwi 1,10,1
	addi 3,7,3
	addi 10,10,-1
	bne+ 1,.L1159
	blr
	.cfi_endproc
.LFE92:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	lbz 8,0(3)
	addi 4,4,-1
	cmpwi 0,8,0
	beq- 0,.L1196
.L1192:
	mr 10,4
	b .L1195
.L1194:
	beqlr- 7
.L1195:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1194
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1192
.L1196:
	li 3,0
	blr
	.cfi_endproc
.LFE93:
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	mr 9,3
	li 3,0
.L1202:
	lbz 10,0(9)
	cmpwi 0,10,0
	cmpw 7,10,4
	isel 3,9,3,30
	addi 9,9,1
	beqlr- 0
	lbz 10,0(9)
	cmpwi 0,10,0
	cmpw 7,10,4
	isel 3,9,3,30
	addi 9,9,1
	bne+ 0,.L1202
	blr
	.cfi_endproc
.LFE94:
	.size	strrchr,.-strrchr
	.align 2
	.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	lbz 11,0(4)
	mr 8,3
	andi. 5,11,0xff
	beq- 0,.L1218
	mr 9,4
.L1207:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1207
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1226
.L1229:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1228
.L1226:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1229
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L1209
.L1231:
	bdz .L1211
	bne- 7,.L1212
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1230
	lbzu 10,1(6)
.L1209:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1231
.L1212:
	addi 8,8,1
	b .L1226
.L1228:
	li 3,0
	blr
.L1230:
	lbz 9,1(6)
.L1211:
	cmpw 5,12,9
	bne+ 5,.L1212
.L1218:
	mr 3,8
	blr
	.cfi_endproc
.LFE95:
	.size	strstr,.-strstr
	.align 2
	.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	xxlxor 0,0,0
	fcmpu 0,1,0
	blt- 0,.L1242
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1242:
	fcmpu 5,2,0
	bnglr+ 5
	fneg 1,1
	blr
	.cfi_endproc
.LFE96:
	.size	copysign,.-copysign
	.align 2
	.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	cmpwi 0,6,0
	mr 9,3
	beqlr- 0
	cmplw 1,4,6
	blt- 1,.L1251
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1251
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1248
.L1245:
	cmplw 1,0,9
	blt- 1,.L1251
.L1248:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1245
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1246:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1245
	bdnz .L1246
	blr
.L1251:
	li 3,0
	blr
	.cfi_endproc
.LFE97:
	.size	memmem,.-memmem
	.align 2
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,5
	beq- 0,.L1260
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L1260:
	add 3,30,31
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE98:
	.size	mempcpy,.-mempcpy
	.align 2
	.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	xxlxor 0,0,0
	fcmpu 7,1,0
	blt- 7,.L1288
	lis 9,.LC29@ha
	li 10,0
	lfs 2,.LC29@l(9)
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1289
.L1268:
	lis 11,.LC15@ha
	lis 12,.LC29@ha
	lfs 7,.LC15@l(11)
	li 7,0
	lfs 8,.LC29@l(12)
.L1274:
	fmul 1,1,7
	addi 7,7,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1274
	cmpwi 1,10,0
	stw 7,0(3)
	beqlr- 1
.L1291:
	fneg 1,1
	blr
.L1289:
	lis 4,.LC15@ha
	lfs 3,.LC15@l(4)
	fcmpu 1,1,3
	bnl- 1,.L1271
	bne- 7,.L1280
.L1271:
	li 0,0
	stw 0,0(3)
	blr
.L1288:
	lis 5,.LC25@ha
	fneg 12,1
	lfs 4,.LC25@l(5)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1290
	fmr 1,12
	li 10,1
	b .L1268
.L1290:
	lis 6,.LC27@ha
	lfs 5,.LC27@l(6)
	fcmpu 6,1,5
	bng- 6,.L1271
	li 10,1
.L1269:
	lis 8,.LC15@ha
	fmr 1,12
	li 7,0
	lfs 6,.LC15@l(8)
.L1276:
	fadd 1,1,1
	addi 7,7,-1
	fcmpu 7,1,6
	blt+ 7,.L1276
	cmpwi 1,10,0
	stw 7,0(3)
	bne+ 1,.L1291
	blr
.L1280:
	fmr 12,1
	b .L1269
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	rldicl 4,4,0,32
	sldi 3,3,32
	or 10,4,3
	sldi 5,5,32
	cmpdi 0,10,0
	rldicl 6,6,0,32
	li 4,0
	or 8,6,5
	beq- 0,.L1292
.L1294:
	rldicl 9,10,0,63
	srdi 10,10,1
	cmpdi 1,10,0
	neg 0,9
	and 7,0,8
	sldi 8,8,1
	add 4,4,7
	bne+ 1,.L1294
.L1292:
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE100:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	cmplw 0,4,3
	sldi 5,5,32
	rldicl 6,6,0,32
	li 8,16
	li 10,32
	or 0,6,5
	li 12,1
	mtctr 8
	blt+ 0,.L1298
	b .L1320
.L1302:
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1300
	blt- 5,.L1317
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	ble- 7,.L1300
	bdz .L1301
.L1298:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1302
.L1317:
	cmplw 7,3,4
	b .L1303
.L1300:
	cmpwi 6,12,0
	beq- 6,.L1307
.L1303:
	li 10,0
	li 11,1
	li 5,0
.L1304:
	isel 7,0,11,28
	subf 6,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,5,12,6
	srwi. 12,12,1
	isel 3,3,6,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1304
.L1301:
	cmpdi 5,0,0
	isel 3,10,3,22
	blr
.L1320:
	isel 9,0,12,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1301
.L1307:
	li 10,0
	b .L1301
	.cfi_endproc
.LFE101:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L1325
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1325:
	li 3,7
	blr
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	sradi 9,0,63
	cmpd 0,0,9
	xor 5,0,9
	beq- 0,.L1328
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1328:
	li 3,63
	blr
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	mr 10,3
	li 3,0
	cmpwi 0,10,0
	beqlr- 0
.L1331:
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	beqlr- 0
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	bne+ 0,.L1331
	blr
	.cfi_endproc
.LFE104:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	cmplw 0,3,4
	srwi 9,5,3
	rlwinm 11,5,0,0,28
	blt- 0,.L1339
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1478
.L1339:
	cmpwi 5,9,0
	addi 12,4,-8
	addi 8,3,-8
	beq- 5,.L1451
	andi. 7,9,0x1
	addi 7,9,-1
	beq- 0,.L1462
	mr. 9,7
	ld 6,0(4)
	mr 12,4
	mr 8,3
	std 6,0(3)
	beq- 0,.L1453
.L1462:
	ld 10,8(12)
	addi 9,9,-2
	mr 6,12
	cmpdi 7,9,0
	addi 7,8,8
	std 10,8(8)
	addi 12,12,16
	addi 8,8,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 7,.L1462
.L1453:
	cmplw 1,5,11
	blelr- 1
	subf 9,11,5
	addi 12,9,-1
	cmplwi 5,12,14
	ble- 5,.L1344
	addi 8,11,1
	add 7,3,11
	add 10,4,8
	subf 6,10,7
	cmplwi 6,6,14
	ble- 6,.L1344
	rldicl 8,9,60,36
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	add 6,4,11
	andi. 0,8,0x3
	li 10,0
	stw 31,28(1)
	.cfi_offset 31, -4
	addi 31,8,-1
	beq- 0,.L1461
	cmpdi 7,0,1
	beq- 7,.L1422
	cmpdi 1,0,2
	bne- 1,.L1479
.L1423:
	lxvw4x 8,6,10
	addi 8,8,-1
	stxvw4x 8,7,10
	addi 10,10,16
.L1422:
	addi 8,8,-1
	lxvw4x 9,6,10
	stxvw4x 9,7,10
	addi 10,10,16
	cmpdi 5,8,0
	beq- 5,.L1458
.L1461:
	addi 8,8,-4
	addi 12,10,16
	lxvw4x 10,6,10
	stxvw4x 10,7,10
	cmpdi 6,8,0
	addi 31,10,32
	lxvw4x 11,6,12
	stxvw4x 11,7,12
	addi 0,10,48
	lxvw4x 12,6,31
	addi 10,10,64
	stxvw4x 12,7,31
	lxvw4x 13,6,0
	stxvw4x 13,7,0
	bne+ 6,.L1461
.L1458:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 11,9,11
	beq- 0,.L1335
	addi 6,11,1
	lbzx 7,4,11
	cmplw 7,6,5
	stbx 7,3,11
	bge- 7,.L1335
	addi 8,11,2
	lbzx 10,4,6
	cmplw 1,5,8
	stbx 10,3,6
	ble- 1,.L1335
	addi 12,11,3
	lbzx 31,4,8
	cmplw 5,5,12
	stbx 31,3,8
	ble- 5,.L1335
	addi 0,11,4
	lbzx 9,4,12
	cmplw 6,5,0
	stbx 9,3,12
	ble- 6,.L1335
	addi 6,11,5
	lbzx 7,4,0
	cmplw 0,5,6
	stbx 7,3,0
	ble- 0,.L1335
	addi 8,11,6
	lbzx 10,4,6
	cmplw 7,5,8
	stbx 10,3,6
	ble- 7,.L1335
	addi 12,11,7
	lbzx 31,4,8
	cmplw 1,5,12
	stbx 31,3,8
	ble- 1,.L1335
	addi 0,11,8
	lbzx 9,4,12
	cmplw 5,5,0
	stbx 9,3,12
	ble- 5,.L1335
	addi 6,11,9
	lbzx 7,4,0
	cmplw 6,5,6
	stbx 7,3,0
	ble- 6,.L1335
	addi 8,11,10
	lbzx 10,4,6
	cmplw 0,5,8
	stbx 10,3,6
	ble- 0,.L1335
	addi 12,11,11
	lbzx 31,4,8
	cmplw 7,5,12
	stbx 31,3,8
	ble- 7,.L1335
	addi 0,11,12
	lbzx 9,4,12
	cmplw 1,5,0
	stbx 9,3,12
	ble- 1,.L1335
	addi 6,11,13
	lbzx 7,4,0
	cmplw 5,5,6
	stbx 7,3,0
	ble- 5,.L1335
	addi 11,11,14
	lbzx 8,4,6
	cmplw 6,5,11
	stbx 8,3,6
	ble- 6,.L1335
	lbzx 4,4,11
	stbx 4,3,11
.L1335:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1478:
	cmpwi 5,5,0
	addi 0,5,-1
	beqlr- 5
	cmplwi 6,0,14
	ble- 6,.L1349
	addi 9,5,-2
	add 8,3,0
	add 6,4,9
	subf 7,6,8
	addi 12,7,14
	cmplwi 7,12,14
	ble- 7,.L1349
	rldicl 8,5,60,36
	addi 10,5,-16
	andi. 6,8,0x3
	addi 11,8,-1
	add 7,4,10
	add 12,3,10
	li 9,0
	beq- 0,.L1464
	cmpdi 1,6,1
	beq- 1,.L1424
	cmpdi 5,6,2
	bne- 5,.L1480
.L1425:
	lxvw4x 1,7,9
	addi 8,8,-1
	stxvw4x 1,12,9
	addi 9,9,-16
.L1424:
	addi 8,8,-1
	lxvw4x 2,7,9
	stxvw4x 2,12,9
	addi 9,9,-16
	cmpdi 6,8,0
	beq- 6,.L1459
.L1464:
	addi 8,8,-4
	addi 10,9,-16
	lxvw4x 3,7,9
	stxvw4x 3,12,9
	cmpdi 7,8,0
	addi 11,9,-32
	lxvw4x 4,7,10
	stxvw4x 4,12,10
	addi 6,9,-48
	lxvw4x 5,7,11
	addi 9,9,-64
	stxvw4x 5,12,11
	lxvw4x 6,7,6
	stxvw4x 6,12,6
	bne+ 7,.L1464
.L1459:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 7,5,0
	beqlr- 0
	cmpwi 1,7,0
	lbzx 0,4,7
	addi 12,7,-1
	stbx 0,3,7
	beqlr- 1
	cmpwi 5,12,0
	lbzx 8,4,12
	addi 10,7,-2
	stbx 8,3,12
	beqlr- 5
	cmpwi 6,10,0
	lbzx 11,4,10
	addi 9,7,-3
	stbx 11,3,10
	beqlr- 6
	cmpwi 7,9,0
	lbzx 6,4,9
	addi 5,7,-4
	stbx 6,3,9
	beqlr- 7
	cmpwi 0,5,0
	lbzx 0,4,5
	addi 12,7,-5
	stbx 0,3,5
	beqlr- 0
	cmpwi 1,12,0
	lbzx 8,4,12
	addi 10,7,-6
	stbx 8,3,12
	beqlr- 1
	cmpwi 5,10,0
	lbzx 11,4,10
	addi 9,7,-7
	stbx 11,3,10
	beqlr- 5
	cmpwi 6,9,0
	lbzx 6,4,9
	addi 5,7,-8
	stbx 6,3,9
	beqlr- 6
	cmpwi 7,5,0
	lbzx 0,4,5
	addi 12,7,-9
	stbx 0,3,5
	beqlr- 7
	cmpwi 0,12,0
	lbzx 8,4,12
	addi 10,7,-10
	stbx 8,3,12
	beqlr- 0
	cmpwi 1,10,0
	lbzx 11,4,10
	addi 9,7,-11
	stbx 11,3,10
	beqlr- 1
	cmpwi 5,9,0
	lbzx 6,4,9
	addi 5,7,-12
	stbx 6,3,9
	beqlr- 5
	cmpwi 6,5,0
	lbzx 0,4,5
	addi 12,7,-13
	stbx 0,3,5
	beqlr- 6
	cmpwi 7,12,0
	lbzx 8,4,12
	addi 7,7,-14
	stbx 8,3,12
	beqlr- 7
	lbzx 4,4,7
	stbx 4,3,7
	blr
.L1479:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	lxvw4x 7,0,6
	mr 8,31
	li 10,16
	stxvw4x 7,0,7
	b .L1423
.L1451:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	cmpwi 6,5,0
	mr 9,5
	beqlr- 6
.L1344:
	rldicl 12,9,0,32
	addi 5,11,-1
	andi. 10,12,0x1
	add 11,3,5
	add 7,4,5
	addi 3,12,-1
	beq- 0,.L1460
	mr. 12,3
	lbzu 10,1(7)
	stbu 10,1(11)
	beqlr- 0
.L1460:
	lbz 0,1(7)
	addi 12,12,-2
	mr 9,7
	cmpdi 7,12,0
	mr 6,11
	stb 0,1(11)
	addi 7,7,2
	addi 11,11,2
	lbz 8,2(9)
	stb 8,2(6)
	beqlr- 7
	lbz 0,1(7)
	addi 12,12,-2
	mr 9,7
	cmpdi 7,12,0
	mr 6,11
	stb 0,1(11)
	addi 7,7,2
	addi 11,11,2
	lbz 8,2(9)
	stb 8,2(6)
	bne+ 7,.L1460
	blr
.L1480:
	lxvw4x 0,0,7
	mr 8,11
	li 9,-16
	stxvw4x 0,0,12
	b .L1425
.L1349:
	rldicl 11,5,0,32
	add 5,3,5
	andi. 8,11,0x1
	addi 3,11,-1
	beq- 0,.L1463
	mr. 11,3
	lbzu 9,-1(10)
	stbu 9,-1(5)
	beqlr- 0
.L1463:
	lbz 6,-1(10)
	addi 11,11,-2
	mr 12,10
	cmpdi 1,11,0
	addi 8,5,-1
	stb 6,-1(5)
	addi 10,10,-2
	addi 5,5,-2
	lbz 0,-2(12)
	stb 0,-1(8)
	beqlr- 1
	lbz 6,-1(10)
	addi 11,11,-2
	mr 12,10
	cmpdi 1,11,0
	addi 8,5,-1
	stb 6,-1(5)
	addi 10,10,-2
	addi 5,5,-2
	lbz 0,-2(12)
	stb 0,-1(8)
	bne+ 1,.L1463
	blr
	.cfi_endproc
.LFE105:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	cmplw 0,3,4
	srwi 8,5,1
	blt- 0,.L1485
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1601
.L1485:
	cmpwi 5,8,0
	beq- 5,.L1484
	addi 7,8,-1
	cmplwi 6,7,6
	ble- 6,.L1488
	addi 12,4,2
	subf 11,12,3
	cmplwi 7,11,12
	ble- 7,.L1488
	rldicl 10,5,60,36
	srwi 0,5,4
	andi. 6,10,0x3
	addi 7,10,-1
	li 9,0
	beq- 0,.L1594
	cmpdi 1,6,1
	beq- 1,.L1559
	cmpdi 5,6,2
	bne- 5,.L1602
.L1560:
	lxvw4x 8,4,9
	addi 10,10,-1
	stxvw4x 8,3,9
	addi 9,9,16
.L1559:
	addi 10,10,-1
	lxvw4x 9,4,9
	stxvw4x 9,3,9
	addi 9,9,16
	cmpdi 6,10,0
	beq- 6,.L1591
.L1594:
	addi 10,10,-4
	addi 12,9,16
	lxvw4x 10,4,9
	stxvw4x 10,3,9
	cmpdi 7,10,0
	addi 11,9,32
	lxvw4x 11,4,12
	stxvw4x 11,3,12
	addi 6,9,48
	lxvw4x 12,4,11
	addi 9,9,64
	stxvw4x 12,3,11
	lxvw4x 13,4,6
	stxvw4x 13,3,6
	bne+ 7,.L1594
.L1591:
	slwi 10,0,3
	cmplw 0,8,10
	beq- 0,.L1484
	addi 7,10,1
	slwi 9,0,4
	cmplw 1,8,7
	lhzx 0,4,9
	sthx 0,3,9
	ble- 1,.L1484
	addi 12,10,2
	addi 11,9,2
	cmplw 5,8,12
	lhzx 6,4,11
	sthx 6,3,11
	ble- 5,.L1484
	addi 7,10,3
	addi 0,9,4
	cmplw 6,8,7
	lhzx 12,4,0
	sthx 12,3,0
	ble- 6,.L1484
	addi 11,10,4
	addi 6,9,6
	cmplw 7,8,11
	lhzx 7,4,6
	sthx 7,3,6
	ble- 7,.L1484
	addi 0,10,5
	addi 12,9,8
	cmplw 0,8,0
	lhzx 11,4,12
	sthx 11,3,12
	ble- 0,.L1484
	addi 10,10,6
	addi 6,9,10
	cmplw 1,8,10
	lhzx 8,4,6
	sthx 8,3,6
	ble- 1,.L1484
	addi 9,9,12
	lhzx 7,4,9
	sthx 7,3,9
.L1484:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
	blr
.L1601:
	cmpwi 5,5,0
	addi 0,5,-1
	beqlr- 5
	cmplwi 6,0,14
	ble- 6,.L1494
	addi 9,5,-2
	add 8,3,0
	add 6,4,9
	subf 7,6,8
	addi 11,7,14
	cmplwi 7,11,14
	ble- 7,.L1494
	rldicl 8,5,60,36
	addi 10,5,-16
	andi. 12,8,0x3
	add 7,4,10
	addi 6,8,-1
	add 10,3,10
	li 9,0
	beq- 0,.L1596
	cmpdi 1,12,1
	beq- 1,.L1561
	cmpdi 5,12,2
	bne- 5,.L1603
.L1562:
	lxvw4x 1,7,9
	addi 8,8,-1
	stxvw4x 1,10,9
	addi 9,9,-16
.L1561:
	addi 8,8,-1
	lxvw4x 2,7,9
	stxvw4x 2,10,9
	addi 9,9,-16
	cmpdi 6,8,0
	beq- 6,.L1592
.L1596:
	addi 8,8,-4
	addi 12,9,-16
	lxvw4x 3,7,9
	stxvw4x 3,10,9
	cmpdi 7,8,0
	addi 11,9,-32
	lxvw4x 4,7,12
	stxvw4x 4,10,12
	addi 6,9,-48
	lxvw4x 5,7,11
	addi 9,9,-64
	stxvw4x 5,10,11
	lxvw4x 6,7,6
	stxvw4x 6,10,6
	bne+ 7,.L1596
.L1592:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 7,5,0
	beqlr- 0
	cmpwi 1,7,0
	lbzx 0,4,7
	addi 9,7,-1
	stbx 0,3,7
	beqlr- 1
	cmpwi 5,9,0
	lbzx 8,4,9
	addi 10,7,-2
	stbx 8,3,9
	beqlr- 5
	cmpwi 6,10,0
	lbzx 12,4,10
	addi 11,7,-3
	stbx 12,3,10
	beqlr- 6
	cmpwi 7,11,0
	lbzx 6,4,11
	addi 5,7,-4
	stbx 6,3,11
	beqlr- 7
	cmpwi 0,5,0
	lbzx 0,4,5
	addi 9,7,-5
	stbx 0,3,5
	beqlr- 0
	cmpwi 1,9,0
	lbzx 8,4,9
	addi 10,7,-6
	stbx 8,3,9
	beqlr- 1
	cmpwi 5,10,0
	lbzx 12,4,10
	addi 11,7,-7
	stbx 12,3,10
	beqlr- 5
	cmpwi 6,11,0
	lbzx 6,4,11
	addi 5,7,-8
	stbx 6,3,11
	beqlr- 6
	cmpwi 7,5,0
	lbzx 0,4,5
	addi 9,7,-9
	stbx 0,3,5
	beqlr- 7
	cmpwi 0,9,0
	lbzx 8,4,9
	addi 10,7,-10
	stbx 8,3,9
	beqlr- 0
	cmpwi 1,10,0
	lbzx 12,4,10
	addi 11,7,-11
	stbx 12,3,10
	beqlr- 1
	cmpwi 5,11,0
	lbzx 6,4,11
	addi 5,7,-12
	stbx 6,3,11
	beqlr- 5
	cmpwi 6,5,0
	lbzx 0,4,5
	addi 9,7,-13
	stbx 0,3,5
	beqlr- 6
	cmpwi 7,9,0
	lbzx 8,4,9
	addi 7,7,-14
	stbx 8,3,9
	beqlr- 7
	lbzx 4,4,7
	stbx 4,3,7
	blr
.L1602:
	lxvw4x 7,0,4
	mr 10,7
	li 9,16
	stxvw4x 7,0,3
	b .L1560
.L1488:
	andi. 9,8,0x1
	addi 10,4,-2
	addi 0,8,-1
	addi 9,3,-2
	beq- 0,.L1593
	mr. 8,0
	lhz 12,0(4)
	mr 10,4
	mr 9,3
	sth 12,0(3)
	beq- 0,.L1484
.L1593:
	lhz 11,2(10)
	addi 8,8,-2
	mr 6,10
	cmpdi 5,8,0
	addi 7,9,2
	sth 11,2(9)
	addi 10,10,4
	addi 9,9,4
	lhz 0,4(6)
	sth 0,2(7)
	bne+ 5,.L1593
	b .L1484
.L1603:
	lxvw4x 0,0,7
	mr 8,6
	li 9,-16
	stxvw4x 0,0,10
	b .L1562
.L1494:
	rldicl 12,5,0,32
	add 5,3,5
	andi. 8,12,0x1
	addi 3,12,-1
	beq- 0,.L1595
	mr. 12,3
	lbzu 11,-1(10)
	stbu 11,-1(5)
	beqlr- 0
.L1595:
	lbz 6,-1(10)
	addi 12,12,-2
	mr 9,10
	cmpdi 1,12,0
	addi 8,5,-1
	stb 6,-1(5)
	addi 10,10,-2
	addi 5,5,-2
	lbz 0,-2(9)
	stb 0,-1(8)
	beqlr- 1
	lbz 6,-1(10)
	addi 12,12,-2
	mr 9,10
	cmpdi 1,12,0
	addi 8,5,-1
	stb 6,-1(5)
	addi 10,10,-2
	addi 5,5,-2
	lbz 0,-2(9)
	stb 0,-1(8)
	bne+ 1,.L1595
	blr
	.cfi_endproc
.LFE106:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	cmplw 0,3,4
	srwi 8,5,2
	rlwinm 12,5,0,0,29
	blt- 0,.L1609
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1758
.L1609:
	cmpwi 5,8,0
	beq- 5,.L1759
	addi 7,8,-1
	cmplwi 7,7,3
	ble- 7,.L1611
	addi 11,4,4
	subf 6,11,3
	cmplwi 0,6,8
	ble- 0,.L1611
	rldicl 10,5,60,36
	srwi 0,5,4
	andi. 7,10,0x3
	addi 11,10,-1
	li 9,0
	beq- 0,.L1747
	cmpdi 1,7,1
	beq- 1,.L1701
	cmpdi 5,7,2
	bne- 5,.L1760
.L1702:
	lxvw4x 8,4,9
	addi 10,10,-1
	stxvw4x 8,3,9
	addi 9,9,16
.L1701:
	addi 10,10,-1
	lxvw4x 9,4,9
	stxvw4x 9,3,9
	addi 9,9,16
	cmpdi 6,10,0
	beq- 6,.L1742
.L1747:
	addi 10,10,-4
	addi 6,9,16
	lxvw4x 10,4,9
	stxvw4x 10,3,9
	cmpdi 7,10,0
	addi 11,9,32
	lxvw4x 11,4,6
	stxvw4x 11,3,6
	addi 7,9,48
	lxvw4x 12,4,11
	addi 9,9,64
	stxvw4x 12,3,11
	lxvw4x 13,4,7
	stxvw4x 13,3,7
	bne+ 7,.L1747
.L1742:
	slwi 10,0,2
	cmplw 0,8,10
	beq- 0,.L1615
	addi 9,10,1
	slwi 6,0,4
	cmplw 1,8,9
	lwzx 0,4,6
	stwx 0,3,6
	ble- 1,.L1615
	addi 11,10,2
	addi 7,6,4
	cmplw 5,8,11
	lwzx 8,4,7
	stwx 8,3,7
	ble- 5,.L1615
	addi 9,6,8
	lwzx 10,4,9
	stwx 10,3,9
.L1615:
	cmplw 7,5,12
	blelr- 7
	subf 9,12,5
	addi 8,9,-1
	cmplwi 1,8,14
	ble- 1,.L1607
	addi 10,12,1
	add 7,3,12
	add 11,4,10
	subf 6,11,7
	cmplwi 5,6,14
	ble- 5,.L1607
	rldicl 8,9,60,36
	add 6,4,12
	andi. 11,8,0x3
	addi 0,8,-1
	li 10,0
	beq- 0,.L1745
	cmpdi 6,11,1
	beq- 6,.L1703
	cmpdi 7,11,2
	bne- 7,.L1761
.L1704:
	lxvw4x 1,6,10
	addi 8,8,-1
	stxvw4x 1,7,10
	addi 10,10,16
.L1703:
	addi 8,8,-1
	lxvw4x 2,6,10
	stxvw4x 2,7,10
	addi 10,10,16
	cmpdi 1,8,0
	beq- 1,.L1741
.L1745:
	addi 8,8,-4
	addi 11,10,16
	lxvw4x 3,6,10
	stxvw4x 3,7,10
	cmpdi 5,8,0
	lxvw4x 4,6,11
	addi 0,10,32
	stxvw4x 4,7,11
	addi 11,10,48
	lxvw4x 5,6,0
	addi 10,10,64
	stxvw4x 5,7,0
	lxvw4x 6,6,11
	stxvw4x 6,7,11
	bne+ 5,.L1745
.L1741:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 12,9,12
	beqlr- 0
	addi 6,12,1
	lbzx 7,4,12
	cmplw 6,5,6
	stbx 7,3,12
	blelr- 6
	addi 8,12,2
	lbzx 10,4,6
	cmplw 7,8,5
	stbx 10,3,6
	bgelr- 7
	addi 0,12,3
	lbzx 11,4,8
	cmplw 1,5,0
	stbx 11,3,8
	blelr- 1
	addi 9,12,4
	lbzx 6,4,0
	cmplw 5,5,9
	stbx 6,3,0
	blelr- 5
	addi 10,12,5
	lbzx 7,4,9
	cmplw 0,5,10
	stbx 7,3,9
	blelr- 0
	addi 8,12,6
	lbzx 0,4,10
	cmplw 6,5,8
	stbx 0,3,10
	blelr- 6
	addi 11,12,7
	lbzx 9,4,8
	cmplw 7,5,11
	stbx 9,3,8
	blelr- 7
	addi 6,12,8
	lbzx 10,4,11
	cmplw 1,5,6
	stbx 10,3,11
	blelr- 1
	addi 0,12,9
	lbzx 7,4,6
	cmplw 5,5,0
	stbx 7,3,6
	blelr- 5
	addi 8,12,10
	lbzx 11,4,0
	cmplw 0,5,8
	stbx 11,3,0
	blelr- 0
	addi 9,12,11
	lbzx 6,4,8
	cmplw 6,5,9
	stbx 6,3,8
	blelr- 6
	addi 0,12,12
	lbzx 10,4,9
	cmplw 7,5,0
	stbx 10,3,9
	blelr- 7
	addi 11,12,13
	lbzx 7,4,0
	cmplw 1,5,11
	stbx 7,3,0
	blelr- 1
	addi 12,12,14
	lbzx 8,4,11
	cmplw 5,5,12
	stbx 8,3,11
	blelr- 5
	lbzx 4,4,12
	stbx 4,3,12
	blr
.L1758:
	cmpwi 5,5,0
	addi 0,5,-1
	beqlr- 5
	cmplwi 6,0,14
	ble- 6,.L1620
	addi 9,5,-2
	add 8,3,0
	add 6,4,9
	subf 7,6,8
	addi 11,7,14
	cmplwi 7,11,14
	ble- 7,.L1620
	rldicl 8,5,60,36
	addi 10,5,-16
	andi. 12,8,0x3
	add 7,4,10
	addi 6,8,-1
	add 10,3,10
	li 9,0
	beq- 0,.L1749
	cmpdi 1,12,1
	beq- 1,.L1705
	cmpdi 5,12,2
	bne- 5,.L1762
.L1706:
	lxvw4x 1,7,9
	addi 8,8,-1
	stxvw4x 1,10,9
	addi 9,9,-16
.L1705:
	addi 8,8,-1
	lxvw4x 2,7,9
	stxvw4x 2,10,9
	addi 9,9,-16
	cmpdi 6,8,0
	beq- 6,.L1743
.L1749:
	addi 8,8,-4
	addi 12,9,-16
	lxvw4x 3,7,9
	stxvw4x 3,10,9
	cmpdi 7,8,0
	addi 11,9,-32
	lxvw4x 4,7,12
	stxvw4x 4,10,12
	addi 6,9,-48
	lxvw4x 5,7,11
	addi 9,9,-64
	stxvw4x 5,10,11
	lxvw4x 6,7,6
	stxvw4x 6,10,6
	bne+ 7,.L1749
.L1743:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 7,5,0
	beqlr- 0
	cmpwi 1,7,0
	lbzx 0,4,7
	addi 9,7,-1
	stbx 0,3,7
	beqlr- 1
	cmpwi 5,9,0
	lbzx 8,4,9
	addi 10,7,-2
	stbx 8,3,9
	beqlr- 5
	cmpwi 6,10,0
	lbzx 12,4,10
	addi 11,7,-3
	stbx 12,3,10
	beqlr- 6
	cmpwi 7,11,0
	lbzx 6,4,11
	addi 5,7,-4
	stbx 6,3,11
	beqlr- 7
	cmpwi 0,5,0
	lbzx 0,4,5
	addi 9,7,-5
	stbx 0,3,5
	beqlr- 0
	cmpwi 1,9,0
	lbzx 8,4,9
	addi 10,7,-6
	stbx 8,3,9
	beqlr- 1
	cmpwi 5,10,0
	lbzx 12,4,10
	addi 11,7,-7
	stbx 12,3,10
	beqlr- 5
	cmpwi 6,11,0
	lbzx 6,4,11
	addi 5,7,-8
	stbx 6,3,11
	beqlr- 6
	cmpwi 7,5,0
	lbzx 0,4,5
	addi 9,7,-9
	stbx 0,3,5
	beqlr- 7
	cmpwi 0,9,0
	lbzx 8,4,9
	addi 10,7,-10
	stbx 8,3,9
	beqlr- 0
	cmpwi 1,10,0
	lbzx 12,4,10
	addi 11,7,-11
	stbx 12,3,10
	beqlr- 1
	cmpwi 5,11,0
	lbzx 6,4,11
	addi 5,7,-12
	stbx 6,3,11
	beqlr- 5
	cmpwi 6,5,0
	lbzx 0,4,5
	addi 9,7,-13
	stbx 0,3,5
	beqlr- 6
	cmpwi 7,9,0
	lbzx 8,4,9
	addi 7,7,-14
	stbx 8,3,9
	beqlr- 7
	lbzx 4,4,7
	stbx 4,3,7
	blr
.L1760:
	lxvw4x 7,0,4
	mr 10,11
	li 9,16
	stxvw4x 7,0,3
	b .L1702
.L1761:
	lxvw4x 0,0,6
	mr 8,0
	li 10,16
	stxvw4x 0,0,7
	b .L1704
.L1759:
	cmpwi 6,5,0
	mr 9,5
	beqlr- 6
.L1607:
	rldicl 9,9,0,32
	addi 5,12,-1
	andi. 10,9,0x1
	add 12,3,5
	add 7,4,5
	addi 3,9,-1
	beq- 0,.L1744
	mr. 9,3
	lbzu 6,1(7)
	stbu 6,1(12)
	beqlr- 0
.L1744:
	lbz 0,1(7)
	addi 9,9,-2
	mr 11,7
	cmpdi 6,9,0
	addi 10,12,1
	stb 0,1(12)
	addi 7,7,2
	addi 12,12,2
	lbz 8,2(11)
	stb 8,1(10)
	beqlr- 6
	lbz 0,1(7)
	addi 9,9,-2
	mr 11,7
	cmpdi 6,9,0
	addi 10,12,1
	stb 0,1(12)
	addi 7,7,2
	addi 12,12,2
	lbz 8,2(11)
	stb 8,1(10)
	bne+ 6,.L1744
	blr
.L1611:
	andi. 9,8,0x1
	addi 10,4,-4
	addi 6,8,-1
	addi 9,3,-4
	beq- 0,.L1746
	mr. 8,6
	lwz 0,0(4)
	mr 10,4
	mr 9,3
	stw 0,0(3)
	beq- 0,.L1615
.L1746:
	lwz 11,4(10)
	addi 8,8,-2
	mr 6,10
	cmpdi 6,8,0
	addi 7,9,4
	stw 11,4(9)
	addi 10,10,8
	addi 9,9,8
	lwz 0,8(6)
	stw 0,4(7)
	bne+ 6,.L1746
	b .L1615
.L1762:
	lxvw4x 0,0,7
	mr 8,6
	li 9,-16
	stxvw4x 0,0,10
	b .L1706
.L1620:
	rldicl 12,5,0,32
	add 5,3,5
	andi. 8,12,0x1
	addi 3,12,-1
	beq- 0,.L1748
	mr. 12,3
	lbzu 11,-1(10)
	stbu 11,-1(5)
	beqlr- 0
.L1748:
	lbz 6,-1(10)
	addi 12,12,-2
	mr 9,10
	cmpdi 1,12,0
	addi 8,5,-1
	stb 6,-1(5)
	addi 10,10,-2
	addi 5,5,-2
	lbz 0,-2(9)
	stb 0,-1(8)
	beqlr- 1
	lbz 6,-1(10)
	addi 12,12,-2
	mr 9,10
	cmpdi 1,12,0
	addi 8,5,-1
	stb 6,-1(5)
	addi 10,10,-2
	addi 5,5,-2
	lbz 0,-2(9)
	stb 0,-1(8)
	bne+ 1,.L1748
	blr
	.cfi_endproc
.LFE107:
	.size	__cmovw,.-__cmovw
	.align 2
	.globl __modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	divw 9,3,4
	mullw 0,9,4
	subf 3,0,3
	blr
	.cfi_endproc
.LFE108:
	.size	__modi,.-__modi
	.align 2
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	mtvsrwz 1,3
	fcfid 1,1
	blr
	.cfi_endproc
.LFE109:
	.size	__uitod,.-__uitod
	.align 2
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	mtvsrwz 1,3
	fcfids 1,1
	blr
	.cfi_endproc
.LFE110:
	.size	__uitof,.-__uitof
	.align 2
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
	mtvsrd 1,9
	fcfidu 1,1
	blr
	.cfi_endproc
.LFE111:
	.size	__ulltod,.-__ulltod
	.align 2
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
	mtvsrd 1,9
	fcfidus 1,1
	blr
	.cfi_endproc
.LFE112:
	.size	__ulltof,.-__ulltof
	.align 2
	.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	divwu 9,3,4
	mullw 0,9,4
	subf 3,0,3
	blr
	.cfi_endproc
.LFE113:
	.size	__umodi,.-__umodi
	.align 2
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	srwi. 10,3,15
	mr 9,3
	bne- 0,.L1772
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1773
	srwi. 10,9,12
	bne- 0,.L1774
	srwi. 10,9,11
	bne- 0,.L1775
	srwi. 10,9,10
	bne- 0,.L1776
	srwi. 10,9,9
	bne- 0,.L1777
	srwi. 10,9,8
	bne- 0,.L1778
	srwi. 10,9,7
	bne- 0,.L1779
	srwi. 10,9,6
	bne- 0,.L1780
	srwi. 10,9,5
	bne- 0,.L1781
	srwi. 10,9,4
	bne- 0,.L1782
	srwi. 10,9,3
	bne- 0,.L1783
	srwi. 10,9,2
	bne- 0,.L1784
	srwi. 10,9,1
	bne- 0,.L1785
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1772:
	li 3,0
	blr
.L1783:
	li 3,12
	blr
.L1773:
	li 3,2
	blr
.L1774:
	li 3,3
	blr
.L1775:
	li 3,4
	blr
.L1776:
	li 3,5
	blr
.L1777:
	li 3,6
	blr
.L1778:
	li 3,7
	blr
.L1779:
	li 3,8
	blr
.L1780:
	li 3,9
	blr
.L1781:
	li 3,10
	blr
.L1782:
	li 3,11
	blr
.L1784:
	li 3,13
	blr
.L1785:
	li 3,14
	blr
	.cfi_endproc
.LFE114:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	andi. 9,3,0x1
	bne- 0,.L1790
	andi. 9,3,0x2
	bne- 0,.L1791
	andi. 9,3,0x4
	bne- 0,.L1792
	andi. 9,3,0x8
	bne- 0,.L1793
	andi. 9,3,0x10
	bne- 0,.L1794
	andi. 9,3,0x20
	bne- 0,.L1795
	andi. 9,3,0x40
	bne- 0,.L1796
	andi. 9,3,0x80
	bne- 0,.L1797
	andi. 9,3,0x100
	bne- 0,.L1798
	andi. 9,3,0x200
	bne- 0,.L1799
	andi. 9,3,0x400
	bne- 0,.L1800
	andi. 9,3,0x800
	bne- 0,.L1801
	andi. 9,3,0x1000
	bne- 0,.L1802
	andi. 9,3,0x2000
	bne- 0,.L1803
	andi. 9,3,0x4000
	bne- 0,.L1804
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1790:
	li 3,0
	blr
.L1791:
	li 3,1
	blr
.L1802:
	li 3,12
	blr
.L1792:
	li 3,2
	blr
.L1793:
	li 3,3
	blr
.L1794:
	li 3,4
	blr
.L1795:
	li 3,5
	blr
.L1796:
	li 3,6
	blr
.L1797:
	li 3,7
	blr
.L1798:
	li 3,8
	blr
.L1799:
	li 3,9
	blr
.L1800:
	li 3,10
	blr
.L1801:
	li 3,11
	blr
.L1803:
	li 3,13
	blr
.L1804:
	li 3,14
	blr
	.cfi_endproc
.LFE115:
	.size	__ctzhi2,.-__ctzhi2
	.align 2
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	lis 9,.LC33@ha
	lfs 0,.LC33@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1812
	fctiwz 1,1
	mfvsrwz 3,1
	blr
.L1812:
	fsubs 2,1,0
	fctiwz 3,2
	mfvsrwz 3,3
	addis 4,3,0x1
	addi 3,4,-32768
	blr
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc03c
	stw 12,28(1)
	mtvrsave 0
	lis 7,.LC35@ha
	vspltisw 1,0
	lis 8,.LC36@ha
	lis 10,.LC37@ha
	mtvsrwz 32,3
	lwz 12,28(1)
	lis 9,.LC38@ha
	vspltisw 10,1
	xxspltw 32,32,1
	la 3,.LC35@l(7)
	la 4,.LC36@l(8)
	la 5,.LC37@l(10)
	la 6,.LC38@l(9)
	lxvw4x 44,0,3
	vsraw 11,0,12
	lxvw4x 45,0,5
	xxland 44,43,42
	vsraw 13,0,13
	lxvw4x 43,0,4
	xxland 45,45,42
	vsraw 11,0,11
	xxland 43,43,42
	vadduwm 12,12,11
	lxvw4x 43,0,6
	vadduwm 13,13,12
	vsraw 0,0,11
	xxland 42,32,42
	vadduwm 12,10,13
	xxsldwi 43,44,33,2
	vadduwm 13,11,12
	xxsldwi 33,45,33,1
	vadduwm 0,1,13
	vspltw 10,0,0
	mfvsrwz 11,42
	rlwinm 3,11,0,31,31
	mtvrsave 12
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE117:
	.size	__parityhi2,.-__parityhi2
	.align 2
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc03c
	stw 12,28(1)
	mtvrsave 0
	lis 7,.LC35@ha
	vspltisw 1,0
	lis 8,.LC36@ha
	lis 10,.LC37@ha
	lwz 11,28(1)
	mtvsrwz 32,3
	lis 9,.LC38@ha
	vspltisw 10,1
	xxspltw 32,32,1
	la 3,.LC35@l(7)
	la 4,.LC36@l(8)
	la 5,.LC37@l(10)
	la 6,.LC38@l(9)
	lxvw4x 44,0,3
	vsraw 11,0,12
	lxvw4x 45,0,5
	xxland 44,43,42
	vsraw 13,0,13
	lxvw4x 43,0,4
	xxland 45,45,42
	vsraw 11,0,11
	xxland 43,43,42
	vadduwm 12,12,11
	lxvw4x 43,0,6
	vadduwm 13,13,12
	vsraw 0,0,11
	xxland 42,32,42
	vadduwm 12,10,13
	xxsldwi 43,44,33,2
	vadduwm 13,11,12
	xxsldwi 33,45,33,1
	vadduwm 0,1,13
	vspltw 10,0,0
	mfvsrwz 3,42
	mtvrsave 11
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE118:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB164:
	.cfi_startproc
	mr 10,3
	li 3,0
	cmpwi 0,10,0
	beqlr- 0
.L1819:
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	beqlr- 0
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 0,9
	and 5,0,4
	slwi 4,4,1
	add 3,3,5
	bne+ 0,.L1819
	blr
	.cfi_endproc
.LFE164:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mr 10,3
	li 3,0
	cmpwi 0,10,0
	beqlr- 0
	cmpwi 1,4,0
	beqlr- 1
.L1825:
	rlwinm 9,4,0,31,31
	srwi. 4,4,1
	neg 0,9
	and 5,0,10
	slwi 10,10,1
	add 3,3,5
	beqlr- 0
	rlwinm 9,4,0,31,31
	srwi. 4,4,1
	neg 0,9
	and 5,0,10
	slwi 10,10,1
	add 3,3,5
	bne+ 0,.L1825
	blr
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	cmplw 0,4,3
	li 8,16
	li 10,32
	li 0,1
	mtctr 8
	blt+ 0,.L1831
	b .L1853
.L1835:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1833
	blt- 5,.L1850
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L1833
	bdz .L1834
.L1831:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1835
.L1850:
	cmplw 7,3,4
	b .L1836
.L1833:
	cmpwi 6,0,0
	beq- 6,.L1840
.L1836:
	li 10,0
	li 11,1
	li 6,0
.L1837:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1837
.L1834:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L1853:
	isel 9,0,0,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1834
.L1840:
	li 10,0
	b .L1834
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	fcmpu 0,1,2
	li 3,-1
	bltlr- 0
	mfcr 3,128
	rlwinm 3,3,2,1
	blr
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	fcmpu 0,1,2
	li 3,-1
	bltlr- 0
	mfcr 3,128
	rlwinm 3,3,2,1
	blr
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	extsw 3,3
	extsw 4,4
	mulld 4,3,4
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll,.-__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	mulld 4,3,4
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull,.-__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	cmpwi 0,4,0
	blt- 0,.L1877
	beq- 0,.L1870
	li 6,0
.L1866:
	li 10,32
	li 8,0
	b .L1869
.L1878:
	beq- 7,.L1868
.L1869:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 8,8,5
	slwi 3,3,1
	bne+ 0,.L1878
.L1868:
	cmpwi 1,6,0
	neg 3,8
	isel 3,8,3,6
	blr
.L1877:
	neg 4,4
	li 6,1
	b .L1866
.L1870:
	li 3,0
	blr
	.cfi_endproc
.LFE126:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	cmpwi 0,3,0
	li 9,1
	li 11,0
	bge+ 0,.L1880
	neg 3,3
	li 9,0
	li 11,1
.L1880:
	cmpwi 1,4,0
	bge+ 1,.L1881
	neg 4,4
	mr 11,9
.L1881:
	cmplw 5,3,4
	li 8,16
	mr 10,3
	li 9,1
	mtctr 8
	bgt+ 5,.L1882
	b .L1905
.L1886:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,3,4
	ble- 7,.L1887
	bdz .L1887
.L1882:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 6,3,4
	bgt+ 6,.L1886
.L1887:
	cmpwi 0,9,0
	li 3,0
	li 6,1
	li 5,0
	beq- 0,.L1885
.L1884:
	cmplw 1,10,4
	subf 0,4,10
	srwi 4,4,1
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 12,5,9,22
	srwi. 9,9,1
	or 3,3,12
	isel 10,10,0,22
	bne+ 0,.L1884
.L1885:
	cmpwi 6,11,0
	neg 4,3
	isel 3,3,4,26
	blr
.L1905:
	isel 3,0,9,20
	b .L1885
	.cfi_endproc
.LFE127:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	cmpwi 0,3,0
	li 11,0
	bge+ 0,.L1910
	neg 3,3
	li 11,1
.L1910:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 8,3
	subf 12,9,4
	li 10,1
	cmplw 1,3,12
	mtctr 7
	bgt+ 1,.L1911
	b .L1933
.L1915:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 6,3,12
	ble- 6,.L1916
	bdz .L1916
.L1911:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 5,3,12
	bgt+ 5,.L1915
.L1916:
	cmpwi 7,10,0
	li 5,1
	beq- 7,.L1937
.L1913:
	cmplw 1,8,12
	srwi. 10,10,1
	subf 3,12,8
	srwi 12,12,1
	isel 6,0,5,4
	cmpwi 5,6,0
	isel 8,8,3,22
	bne+ 0,.L1913
.L1914:
	cmpwi 6,11,0
	neg 11,8
	isel 3,8,11,26
	blr
.L1937:
	cmpwi 6,11,0
	mr 8,3
	neg 11,8
	isel 3,8,11,26
	blr
.L1933:
	subf 0,12,3
	isel 8,3,0,4
	b .L1914
	.cfi_endproc
.LFE128:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	cmplw 0,4,3
	bge- 0,.L2104
	andi. 9,4,0x8000
	bne- 0,.L1943
	rlwinm 9,4,1,16,30
	cmplw 7,3,9
	ble- 7,.L2016
	andi. 10,9,0x8000
	bne- 0,.L2016
	rlwinm 9,4,2,16,29
	cmplw 7,3,9
	ble- 7,.L2018
	andi. 10,9,0x8000
	bne- 0,.L2018
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L2020
	andi. 10,9,0x8000
	bne- 0,.L2020
	rlwinm 9,4,4,16,27
	cmplw 7,3,9
	ble- 7,.L2022
	andi. 10,9,0x8000
	bne- 0,.L2022
	rlwinm 9,4,5,16,26
	cmplw 7,3,9
	ble- 7,.L2024
	andi. 10,9,0x8000
	bne- 0,.L2024
	rlwinm 9,4,6,16,25
	cmplw 7,3,9
	ble- 7,.L2026
	andi. 10,9,0x8000
	bne- 0,.L2026
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L2028
	andi. 10,9,0x8000
	bne- 0,.L2028
	rlwinm 9,4,8,16,23
	cmplw 7,3,9
	ble- 7,.L2030
	andi. 10,9,0x8000
	bne- 0,.L2030
	rlwinm 9,4,9,16,22
	cmplw 7,3,9
	ble- 7,.L2032
	andi. 10,9,0x8000
	bne- 0,.L2032
	rlwinm 9,4,10,16,21
	cmplw 7,3,9
	ble- 7,.L2034
	andi. 10,9,0x8000
	bne- 0,.L2034
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L2036
	andi. 10,9,0x8000
	bne- 0,.L2036
	rlwinm 9,4,12,16,19
	cmplw 7,3,9
	ble- 7,.L2038
	andi. 10,9,0x8000
	bne- 0,.L2038
	rlwinm 9,4,13,16,18
	cmplw 7,3,9
	ble- 7,.L2040
	andi. 10,9,0x8000
	bne- 0,.L2040
	rlwinm 9,4,14,16,17
	cmplw 7,3,9
	ble- 7,.L2042
	andi. 10,9,0x8000
	bne- 0,.L2042
	rlwinm 4,4,15,16,16
	cmplw 6,3,4
	ble- 6,.L2043
	cmpwi 1,4,0
	li 12,0
	bne- 1,.L2105
.L1946:
	cmpwi 7,5,0
	beq+ 7,.L2005
	mr 12,3
.L2005:
	rlwinm 3,12,0,0xffff
	blr
.L2016:
	li 8,2
.L1945:
	subf 0,9,3
	srwi 7,9,1
	rlwinm 12,0,0,0xffff
	li 10,1
	isel 3,3,12,28
	isel 6,0,10,28
	cmplw 5,3,7
	neg 4,6
	and 6,8,4
	srwi. 11,8,2
	li 4,1
	subf 11,7,3
	isel 7,0,4,20
	rlwinm 12,11,0,0xffff
	rldicl 10,8,63,49
	neg 11,7
	and 10,10,11
	isel 3,3,12,20
	or 11,10,6
	srwi 0,8,2
	srwi 7,9,2
	mr 12,11
	beq- 0,.L1946
	cmplw 7,3,7
	subf 6,7,3
	rlwinm 12,6,0,0xffff
	li 10,0
	isel 4,0,4,28
	cmpwi 6,4,0
	isel 3,3,12,26
	beq- 6,.L1954
	mr 10,0
.L1954:
	srwi. 7,8,3
	or 0,11,10
	mr 12,0
	srwi 11,8,3
	srwi 7,9,3
	beq- 0,.L1946
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1958
	mr 4,11
.L1958:
	srwi. 7,8,4
	or 0,0,4
	mr 12,0
	srwi 11,8,4
	srwi 10,9,4
	beq- 0,.L1946
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1962
	mr 4,11
.L1962:
	srwi. 7,8,5
	or 0,0,4
	mr 12,0
	srwi 11,8,5
	srwi 7,9,5
	beq- 0,.L1946
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1966
	mr 4,11
.L1966:
	srwi. 7,8,6
	or 0,0,4
	mr 12,0
	srwi 11,8,6
	srwi 10,9,6
	beq- 0,.L1946
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1970
	mr 4,11
.L1970:
	srwi. 7,8,7
	or 0,0,4
	mr 12,0
	srwi 11,8,7
	srwi 7,9,7
	beq- 0,.L1946
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1974
	mr 4,11
.L1974:
	srwi. 7,8,8
	or 0,0,4
	mr 12,0
	srwi 11,8,8
	srwi 10,9,8
	beq- 0,.L1946
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1978
	mr 4,11
.L1978:
	srwi. 7,8,9
	or 0,0,4
	mr 12,0
	srwi 11,8,9
	srwi 7,9,9
	beq- 0,.L1946
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1982
	mr 4,11
.L1982:
	srwi. 7,8,10
	or 0,0,4
	mr 12,0
	srwi 11,8,10
	srwi 10,9,10
	beq- 0,.L1946
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1986
	mr 4,11
.L1986:
	srwi. 7,8,11
	or 0,0,4
	mr 12,0
	srwi 11,8,11
	srwi 7,9,11
	beq- 0,.L1946
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1990
	mr 4,11
.L1990:
	srwi. 7,8,12
	or 0,0,4
	mr 12,0
	srwi 11,8,12
	srwi 10,9,12
	beq- 0,.L1946
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1994
	mr 4,11
.L1994:
	srwi. 7,8,13
	or 0,0,4
	mr 12,0
	srwi 11,8,13
	srwi 7,9,13
	beq- 0,.L1946
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1998
	mr 4,11
.L1998:
	srwi. 7,8,14
	or 0,0,4
	mr 12,0
	srwi 11,8,14
	srwi 10,9,14
	beq- 0,.L1946
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L2002
	mr 4,11
.L2002:
	cmpwi 1,8,16384
	or 8,0,4
	srwi 9,9,15
	mr 12,8
	beq- 1,.L1946
	cmplw 5,3,9
	li 0,1
	subf 11,9,3
	rlwinm 7,11,0,0xffff
	isel 6,0,0,20
	cmpwi 0,6,0
	or 12,8,6
	isel 3,3,7,2
	b .L1946
.L2018:
	li 8,4
	b .L1945
.L2020:
	li 8,8
	b .L1945
.L2022:
	li 8,16
	b .L1945
.L2032:
	li 8,512
	b .L1945
.L2024:
	li 8,32
	b .L1945
.L2026:
	li 8,64
	b .L1945
.L2028:
	li 8,128
	b .L1945
.L2030:
	li 8,256
	b .L1945
.L2104:
	cmpw 1,4,3
	li 10,0
	li 6,1
	subf 9,4,3
	rlwinm 0,9,0,0xffff
	isel 12,6,10,6
	cmpwi 5,12,0
	isel 3,3,0,22
	b .L1946
.L2034:
	li 8,1024
	b .L1945
.L2036:
	li 8,2048
	b .L1945
.L2038:
	li 8,4096
	b .L1945
.L2040:
	li 8,8192
	b .L1945
.L2042:
	li 8,16384
	b .L1945
.L2105:
	li 11,0
	li 8,0
	cmplwi 7,3,32768
	ori 8,8,0x8000
	ori 9,11,0x8000
	b .L1945
.L2043:
	li 7,0
	li 8,0
	cmplwi 7,3,32768
	ori 9,7,0x8000
	ori 8,8,0x8000
	b .L1945
.L1943:
	subf 3,4,3
	li 12,1
	rlwinm 3,3,0,0xffff
	b .L1946
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB162:
	.cfi_startproc
	cmplw 7,3,4
	li 8,16
	li 10,32
	li 0,1
	mtctr 8
	bgt+ 7,.L2107
	b .L2128
.L2111:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L2109
	blt- 5,.L2112
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L2109
	bdz .L2110
.L2107:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L2111
.L2112:
	li 10,0
	li 11,1
	li 6,0
.L2113:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L2113
.L2110:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L2109:
	cmpwi 6,0,0
	bne+ 6,.L2112
	li 10,0
	b .L2110
.L2128:
	subf 4,4,3
	isel 9,0,0,28
	isel 3,3,4,28
	rlwinm 10,9,0,0xff
	b .L2110
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	andi. 9,5,0x20
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	beq- 0,.L2132
	addi 5,5,-32
	li 11,0
	slw 9,0,5
.L2133:
	sldi 12,9,32
	or 4,11,12
.L2131:
	srdi 3,4,32
	blr
.L2132:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L2131
	subfic 10,5,32
	sradi 8,0,32
	srw 6,0,10
	slw 7,8,5
	or 9,6,7
	slw 11,0,5
	b .L2133
	.cfi_endproc
.LFE131:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	andi. 9,5,0x20
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	beq- 0,.L2138
	sradi 11,0,32
	addi 12,5,-32
	sraw 8,11,12
	srawi 5,11,31
.L2139:
	rldicl 3,8,0,32
	sldi 4,5,32
	or 4,4,3
.L2137:
	srdi 3,4,32
	blr
.L2138:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L2137
	sradi 6,0,32
	subfic 10,5,32
	srw 9,0,5
	slw 7,6,10
	or 8,7,9
	sraw 5,6,5
	b .L2139
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
	srdi 10,9,32
	rotlwi 8,9,24
	rotlwi 4,10,24
	rlwimi 8,9,8,8,15
	rlwimi 4,10,8,8,15
	rlwimi 8,9,8,24,31
	rlwimi 4,10,8,24,31
	rldimi 4,8,32,0
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE133:
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	mr 9,3
	rotlwi 3,3,24
	rlwimi 3,9,8,8,15
	rlwimi 3,9,8,24,31
	blr
	.cfi_endproc
.LFE134:
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
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
	add 6,10,8
	srw 11,0,5
	rlwinm 12,11,0,28,29
	cntlzw 8,12
	srwi 0,8,5
	slwi 4,0,1
	subfic 9,4,2
	add 3,4,6
	srw 5,11,9
	andi. 10,5,0x2
	subfic 10,5,2
	isel 7,10,7,2
	add 3,7,3
	blr
	.cfi_endproc
.LFE135:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	sldi 5,5,32
	rldicl 6,6,0,32
	or 0,4,3
	or 7,6,5
	sradi 10,0,32
	sradi 9,7,32
	cmpw 0,10,9
	blt- 0,.L2148
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L2148:
	li 3,0
	blr
	.cfi_endproc
.LFE136:
	.size	__cmpdi2,.-__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	sldi 5,5,32
	rldicl 6,6,0,32
	or 0,4,3
	or 7,6,5
	sradi 10,0,32
	sradi 9,7,32
	cmpw 0,10,9
	blt- 0,.L2154
	li 3,1
	bgtlr- 0
	cmplw 7,0,7
	cmplw 1,0,7
	li 8,0
	li 11,1
	li 12,-1
	isel 3,11,8,29
	isel 3,12,3,4
	blr
.L2154:
	li 3,-1
	blr
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
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
	add 10,5,12
	rlwinm 3,9,0,30,31
	cntlzw 6,3
	srwi 7,6,5
	slwi 11,7,1
	srw 12,9,11
	add 8,11,10
	rlwinm 0,12,0,30,31
	not 4,0
	srwi 5,0,1
	rlwinm 10,4,0,31,31
	subfic 9,5,2
	neg 3,10
	and 6,3,9
	add 3,6,8
	blr
	.cfi_endproc
.LFE138:
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	andi. 9,5,0x20
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	beq- 0,.L2159
	addi 12,5,-32
	srdi 11,0,32
	srw 8,11,12
	li 5,0
.L2160:
	rldicl 3,8,0,32
	sldi 4,5,32
	or 4,4,3
.L2158:
	srdi 3,4,32
	blr
.L2159:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L2158
	srdi 6,0,32
	subfic 10,5,32
	srw 9,0,5
	slw 7,6,10
	or 8,7,9
	srw 5,6,5
	b .L2160
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mr 8,4
	srwi 3,3,16
	mullw 4,10,9
	srwi 0,8,16
	mullw 5,9,3
	mullw 6,10,0
	srwi 7,4,16
	mullw 11,3,0
	add 12,5,7
	rlwinm 8,12,0,0xffff
	srwi 9,12,16
	add 10,6,8
	srwi 3,10,16
	rlwimi 4,10,16,0,31-16
	add 0,9,11
	add 5,0,3
	rldicl 3,5,0,32
	blr
	.cfi_endproc
.LFE140:
	.size	__muldsi3,.-__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	rldicl 6,6,0,32
	rlwinm 8,4,0,0xffff
	rlwinm 9,6,0,0xffff
	srwi 7,4,16
	mullw 10,8,9
	srwi 11,6,16
	sldi 5,5,32
	or 6,6,5
	mullw 9,9,7
	sradi 0,6,32
	mullw 8,8,11
	srwi 12,10,16
	mullw 11,7,11
	add 5,9,12
	rlwinm 7,5,0,0xffff
	srwi 9,5,16
	add 12,8,7
	mullw 0,4,0
	srwi 4,12,16
	rlwimi 10,12,16,0,31-16
	add 8,9,11
	mullw 3,3,6
	rldicl 10,10,0,32
	add 6,8,4
	sldi 11,6,32
	or 4,10,11
	sradi 5,4,32
	add 7,0,5
	add 3,7,3
	blr
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	neg 4,0
	srdi 3,4,32
	blr
	.cfi_endproc
.LFE142:
	.size	__negdi2,.-__negdi2
	.align 2
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	or 0,4,3
	li 5,27030
	sradi 10,0,32
	xor 6,10,0
	srwi 9,6,16
	xor 7,9,6
	srwi 8,7,8
	xor 11,8,7
	srwi 12,11,4
	xor 3,12,11
	rlwinm 4,3,0,28,31
	sraw 0,5,4
	rlwinm 3,0,0,31,31
	blr
	.cfi_endproc
.LFE143:
	.size	__paritydi2,.-__paritydi2
	.align 2
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
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
	rlwinm 3,7,0,31,31
	blr
	.cfi_endproc
.LFE144:
	.size	__paritysi2,.-__paritysi2
	.align 2
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	sldi 3,3,32
	rldicl 4,4,0,32
	lis 10,0x5555
	or 0,4,3
	ori 8,10,0x5555
	srdi 9,0,1
	rldimi 8,8,32,0
	lis 5,0x3333
	and 6,9,8
	ori 7,5,0x3333
	subf 11,6,0
	rldimi 7,7,32,0
	srdi 12,11,2
	and 3,11,7
	and 4,12,7
	lis 10,0xf0f
	add 0,4,3
	ori 8,10,0xf0f
	srdi 9,0,4
	rldimi 8,8,32,0
	add 5,9,0
	and 6,5,8
	srdi 7,6,32
	add 11,7,6
	srwi 12,11,16
	add 4,12,11
	srwi 3,4,8
	add 10,3,4
	rlwinm 3,10,0,25,31
	blr
	.cfi_endproc
.LFE145:
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
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
	rlwinm 3,7,0,26,31
	blr
	.cfi_endproc
.LFE146:
	.size	__popcountsi2,.-__popcountsi2
	.align 2
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	andi. 9,3,0x1
	lis 8,.LC29@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC29@l(8)
	beq- 0,.L2172
.L2174:
	fmul 1,1,0
.L2172:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L2173
	andi. 10,9,0x1
	fmul 0,0,0
	bne- 0,.L2174
.L2178:
	srawi 9,9,1
	addze 9,9
	fmul 0,0,0
	andi. 10,9,0x1
	bne- 0,.L2174
	b .L2178
.L2173:
	cmpwi 1,3,0
	bgelr+ 1
	lfs 2,.LC29@l(8)
	fdiv 1,2,1
	blr
	.cfi_endproc
.LFE147:
	.size	__powidf2,.-__powidf2
	.align 2
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	andi. 9,3,0x1
	lis 8,.LC29@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC29@l(8)
	beq- 0,.L2180
.L2182:
	fmuls 1,1,0
.L2180:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L2181
	andi. 10,9,0x1
	fmuls 0,0,0
	bne- 0,.L2182
.L2186:
	srawi 9,9,1
	addze 9,9
	fmuls 0,0,0
	andi. 10,9,0x1
	bne- 0,.L2182
	b .L2186
.L2181:
	cmpwi 1,3,0
	bgelr+ 1
	lfs 2,.LC29@l(8)
	fdivs 1,2,1
	blr
	.cfi_endproc
.LFE148:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	sldi 3,3,32
	sldi 5,5,32
	srdi 10,3,32
	srdi 9,5,32
	cmplw 0,10,9
	rldicl 4,4,0,32
	rldicl 6,6,0,32
	or 0,4,3
	or 7,6,5
	blt- 0,.L2189
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L2189:
	li 3,0
	blr
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2,.-__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	sldi 3,3,32
	sldi 5,5,32
	srdi 10,3,32
	srdi 9,5,32
	cmplw 0,10,9
	rldicl 4,4,0,32
	rldicl 6,6,0,32
	or 0,4,3
	or 7,6,5
	blt- 0,.L2195
	li 3,1
	bgtlr- 0
	cmplw 7,0,7
	cmplw 1,0,7
	li 8,0
	li 11,1
	li 12,-1
	isel 3,11,8,29
	isel 3,12,3,4
	blr
.L2195:
	li 3,-1
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
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
	.set	.LC14,.LC20
	.section	.rodata.cst4
	.align 2
.LC15:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC20:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC21:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC25:
	.long	-1082130432
	.align 2
.LC27:
	.long	-1090519040
	.align 2
.LC29:
	.long	1065353216
	.align 2
.LC33:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC35:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC36:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC37:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC38:
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
	.gnu_attribute 12, 2
	.section	.note.GNU-stack,"",@progbits
