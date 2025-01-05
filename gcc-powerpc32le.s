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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	ble- 0,.L2
	cmpwi 5,5,0
	stw 30,40(1)
	.cfi_offset 30, -8
	add 30,4,5
	stw 31,44(1)
	.cfi_offset 31, -4
	add 31,3,5
	beq- 5,.L159
	addi 6,5,-1
	cmplwi 6,6,14
	ble- 6,.L4
	addi 7,5,-2
	add 12,3,6
	add 11,4,7
	subf 10,11,12
	addi 0,10,14
	cmplwi 7,0,14
	ble- 7,.L4
	stw 28,32(1)
	.cfi_offset 28, -16
	rldicl 12,5,60,36
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 27,28(1)
	.cfi_offset 27, -20
	addi 27,5,-16
	add 4,4,27
	add 9,3,27
.L5:
	lbz 28,9(4)
	addi 12,12,-1
	addi 4,4,-16
	lbz 8,26(4)
	cmpdi 0,12,0
	addi 9,9,-16
	lbz 29,24(4)
	lbz 6,27(4)
	sldi 7,8,16
	lbz 0,17(4)
	rldimi 29,28,8,0
	lbz 11,16(4)
	or 27,7,29
	sldi 10,6,24
	lbz 28,18(4)
	or 29,10,27
	lbz 7,28(4)
	rldimi 11,0,8,0
	lbz 8,19(4)
	sldi 6,28,16
	lbz 0,29(4)
	or 28,6,11
	sldi 27,7,32
	lbz 11,20(4)
	or 29,27,29
	sldi 8,8,24
	lbz 6,21(4)
	sldi 7,0,40
	or 27,8,28
	lbz 10,30(4)
	or 0,7,29
	sldi 28,11,32
	lbz 29,31(4)
	or 11,28,27
	sldi 27,6,40
	lbz 8,22(4)
	sldi 10,10,48
	or 6,27,11
	or 10,10,0
	sldi 7,29,56
	lbz 28,23(4)
	sldi 0,8,48
	or 29,7,10
	stb 10,24(9)
	or 8,0,6
	srdi 27,29,56
	stb 28,23(9)
	rlwinm 11,8,24,24,31
	rlwinm 6,8,16,24,31
	stb 27,31(9)
	srwi 7,8,24
	rldicl 27,8,32,56
	stb 8,16(9)
	rldicl 28,8,24,56
	rlwinm 29,10,24,24,31
	stb 11,17(9)
	rlwinm 0,10,16,24,31
	srwi 11,10,24
	stb 6,18(9)
	stb 7,19(9)
	rldicl 6,10,32,56
	rldicl 7,10,24,56
	srdi 8,8,48
	rldicl 10,10,16,56
	stb 27,20(9)
	stb 28,21(9)
	stb 8,22(9)
	stb 29,25(9)
	stb 0,26(9)
	stb 11,27(9)
	stb 6,28(9)
	stb 7,29(9)
	stb 10,30(9)
	bne+ 0,.L5
	andi. 9,5,0xf
	rlwinm 12,5,0,0,27
	subf 30,12,30
	subf 31,12,31
	subf 5,12,5
	beq- 0,.L158
	cmplwi 1,5,1
	lbz 27,-1(30)
	stb 27,-1(31)
	beq- 1,.L158
	cmplwi 5,5,2
	lbz 28,-2(30)
	stb 28,-2(31)
	beq- 5,.L158
	cmplwi 6,5,3
	lbz 8,-3(30)
	stb 8,-3(31)
	beq- 6,.L158
	cmplwi 7,5,4
	lbz 29,-4(30)
	stb 29,-4(31)
	beq- 7,.L158
	cmplwi 0,5,5
	lbz 0,-5(30)
	stb 0,-5(31)
	beq- 0,.L158
	cmplwi 1,5,6
	lbz 11,-6(30)
	stb 11,-6(31)
	beq- 1,.L158
	cmplwi 5,5,7
	lbz 6,-7(30)
	stb 6,-7(31)
	beq- 5,.L158
	cmplwi 6,5,8
	lbz 7,-8(30)
	stb 7,-8(31)
	beq- 6,.L158
	cmplwi 7,5,9
	lbz 10,-9(30)
	stb 10,-9(31)
	beq- 7,.L158
	cmplwi 0,5,10
	lbz 4,-10(30)
	stb 4,-10(31)
	beq- 0,.L158
	cmplwi 1,5,11
	lbz 9,-11(30)
	stb 9,-11(31)
	beq- 1,.L158
	cmplwi 5,5,12
	lbz 12,-12(30)
	stb 12,-12(31)
	beq- 5,.L158
	cmplwi 6,5,13
	lbz 27,-13(30)
	stb 27,-13(31)
	beq- 6,.L158
	cmplwi 7,5,14
	lbz 5,-14(30)
	stb 5,-14(31)
	beq- 7,.L158
	lbz 30,-15(30)
	stb 30,-15(31)
.L158:
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
.L159:
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L3:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L2:
	.cfi_restore_state
	beq- 0,.L3
	cmpwi 1,5,0
	beq- 1,.L3
	addi 9,5,-1
	cmplwi 5,9,14
	ble- 5,.L9
	addi 0,4,1
	subf 6,0,3
	cmplwi 6,6,14
	ble- 6,.L9
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 10,4
	mr 9,3
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 31,44(1)
	.cfi_offset 31, -4
	stw 30,40(1)
	.cfi_offset 30, -8
	rldicl 30,5,60,36
.L10:
	lbz 11,9(10)
	addi 30,30,-1
	addi 10,10,16
	lbz 7,-6(10)
	cmpdi 7,30,0
	addi 9,9,16
	lbz 12,-8(10)
	lbz 8,-5(10)
	sldi 27,7,16
	lbz 31,-15(10)
	rldimi 12,11,8,0
	lbz 28,-16(10)
	or 29,27,12
	sldi 0,8,24
	lbz 11,-14(10)
	or 12,0,29
	lbz 6,-4(10)
	rldimi 28,31,8,0
	lbz 7,-13(10)
	sldi 8,11,16
	lbz 31,-3(10)
	sldi 27,6,32
	or 28,8,28
	lbz 29,-12(10)
	or 12,27,12
	sldi 0,7,24
	lbz 8,-2(10)
	sldi 6,31,40
	or 7,0,28
	lbz 11,-11(10)
	or 31,6,12
	sldi 27,29,32
	lbz 28,-1(10)
	or 0,27,7
	sldi 29,8,48
	lbz 12,-10(10)
	sldi 7,11,40
	or 8,29,31
	or 11,7,0
	sldi 6,28,56
	lbz 27,-9(10)
	sldi 31,12,48
	or 28,6,8
	stb 8,-8(9)
	or 29,31,11
	srdi 12,28,56
	stb 27,-9(9)
	rlwinm 0,29,24,24,31
	rlwinm 11,29,16,24,31
	stb 12,-1(9)
	srwi 6,29,24
	rldicl 27,29,32,56
	stb 29,-16(9)
	rldicl 28,29,24,56
	srdi 7,29,48
	stb 0,-15(9)
	rlwinm 29,8,24,24,31
	rlwinm 31,8,16,24,31
	stb 11,-14(9)
	srwi 12,8,24
	rldicl 0,8,32,56
	stb 6,-13(9)
	rldicl 11,8,24,56
	rldicl 8,8,16,56
	stb 27,-12(9)
	stb 28,-11(9)
	stb 7,-10(9)
	stb 29,-7(9)
	stb 31,-6(9)
	stb 12,-5(9)
	stb 0,-4(9)
	stb 11,-3(9)
	stb 8,-2(9)
	bne+ 7,.L10
	andi. 9,5,0xf
	rlwinm 30,5,0,0,27
	add 6,4,30
	add 27,3,30
	subf 5,30,5
	beq- 0,.L158
	cmplwi 1,5,1
	lbzx 4,4,30
	stbx 4,3,30
	beq- 1,.L158
	cmplwi 5,5,2
	lbz 28,1(6)
	stb 28,1(27)
	beq- 5,.L158
	cmplwi 6,5,3
	lbz 7,2(6)
	stb 7,2(27)
	beq- 6,.L158
	cmplwi 7,5,4
	lbz 29,3(6)
	stb 29,3(27)
	beq- 7,.L158
	cmplwi 0,5,5
	lbz 31,4(6)
	stb 31,4(27)
	beq- 0,.L158
	cmplwi 1,5,6
	lbz 12,5(6)
	stb 12,5(27)
	beq- 1,.L158
	cmplwi 5,5,7
	lbz 0,6(6)
	stb 0,6(27)
	beq- 5,.L158
	cmplwi 6,5,8
	lbz 11,7(6)
	stb 11,7(27)
	beq- 6,.L158
	cmplwi 7,5,9
	lbz 8,8(6)
	stb 8,8(27)
	beq- 7,.L158
	cmplwi 0,5,10
	lbz 10,9(6)
	stb 10,9(27)
	beq- 0,.L158
	cmplwi 1,5,11
	lbz 9,10(6)
	stb 9,10(27)
	beq- 1,.L158
	cmplwi 5,5,12
	lbz 30,11(6)
	stb 30,11(27)
	beq- 5,.L158
	cmplwi 6,5,13
	lbz 4,12(6)
	stb 4,12(27)
	beq- 6,.L158
	cmplwi 7,5,14
	lbz 5,13(6)
	stb 5,13(27)
	beq- 7,.L158
	lbz 6,14(6)
	stb 6,14(27)
	b .L158
.L4:
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	rldicl 11,5,0,32
	andi. 9,11,0x1
	addi 8,11,-1
	beq- 0,.L125
	mr. 11,8
	lbzu 0,-1(30)
	stbu 0,-1(31)
	beq- 0,.L159
.L125:
	lbz 6,-1(30)
	addi 11,11,-2
	mr 7,30
	cmpdi 1,11,0
	mr 4,31
	stb 6,-1(31)
	addi 30,30,-2
	addi 31,31,-2
	lbz 10,-2(7)
	stb 10,-2(4)
	beq- 1,.L159
	lbz 6,-1(30)
	addi 11,11,-2
	mr 7,30
	cmpdi 1,11,0
	mr 4,31
	stb 6,-1(31)
	addi 30,30,-2
	addi 31,31,-2
	lbz 10,-2(7)
	stb 10,-2(4)
	bne+ 1,.L125
	b .L159
.L9:
	.cfi_restore 30
	.cfi_restore 31
	rldicl 11,5,0,32
	addi 12,4,-1
	andi. 10,11,0x1
	addi 7,11,-1
	addi 10,3,-1
	beq- 0,.L126
	mr. 11,7
	lbz 0,0(4)
	mr 12,4
	mr 10,3
	stb 0,0(3)
	beq- 0,.L3
.L126:
	lbz 9,1(12)
	addi 11,11,-2
	mr 4,12
	cmpdi 1,11,0
	addi 8,10,1
	stb 9,1(10)
	addi 12,12,2
	addi 10,10,2
	lbz 5,2(4)
	stb 5,1(8)
	beq- 1,.L3
	lbz 9,1(12)
	addi 11,11,-2
	mr 4,12
	cmpdi 1,11,0
	addi 8,10,1
	stb 9,1(10)
	addi 12,12,2
	addi 10,10,2
	lbz 5,2(4)
	stb 5,1(8)
	bne+ 1,.L126
	b .L3
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
	beq- 0,.L164
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L185
.L174:
	srwi 0,6,1
	mtctr 0
	b .L165
.L167:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L182
	addi 3,3,1
	bdz .L164
.L165:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L167
.L182:
	addi 3,3,1
	blr
.L185:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L182
	cmpwi 5,8,0
	addi 3,3,1
	bne+ 5,.L174
.L164:
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
	beq- 0,.L190
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L207
.L193:
	srwi 0,5,1
	mtctr 0
.L187:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L187
.L190:
	li 3,0
	blr
.L207:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,1
	bne+ 5,.L193
	b .L190
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
	beq- 0,.L213
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L228
.L216:
	srwi 0,5,1
	mtctr 0
	b .L209
.L211:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L225
	bdz .L213
.L209:
	lbz 10,0(3)
	addi 7,3,1
	addi 5,4,1
	lbz 9,0(4)
	cmpw 6,10,9
	beq+ 6,.L211
.L225:
	subf 3,9,10
	blr
.L228:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L225
	cmpwi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L216
.L213:
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
	beq- 0,.L230
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L230:
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
	beq- 0,.L240
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr- 1
.L240:
	srwi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L248
.L238:
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
	bdnz .L238
.L248:
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
	beq- 0,.L252
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L252:
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
.L256:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L256
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
.L267:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L267
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
.L270:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L270
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
	beq+ 0,.L275
	b .L274
.L276:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne- 5,.L274
.L275:
	cmpwi 1,9,0
	bne+ 1,.L276
.L274:
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
	beq- 0,.L284
	mr 4,3
.L283:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L283
	subf 3,3,4
	blr
.L284:
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
	beq- 0,.L294
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L290
	b .L299
.L301:
	bdz .L289
	bne- 7,.L289
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L300
	mr 4,8
.L290:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L301
.L289:
	subf 3,7,10
	blr
.L294:
	li 3,0
	blr
.L300:
	lbz 7,1(4)
	subf 3,7,10
	blr
.L299:
	lbz 7,0(4)
	b .L289
	.cfi_endproc
.LFE12:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	cmpwi 0,5,1
	blelr- 0
	stwu 1,-80(1)
	.cfi_def_cfa_offset 80
	mfvrsave 12
	oris 0,12,0xc000
	stw 28,64(1)
	stw 12,36(1)
	mtvrsave 0
	addi 9,5,-2
	.cfi_offset 28, -16
	srwi 28,5,1
	cmplwi 1,9,13
	ble- 1,.L304
	stw 29,68(1)
	.cfi_offset 29, -12
	lis 8,.LC0@ha
	srwi 29,5,4
	stw 30,72(1)
	.cfi_offset 30, -8
	la 6,.LC0@l(8)
	rldicl 30,5,60,36
	stw 22,40(1)
	.cfi_offset 22, -40
	mr 10,3
	mr 9,4
	stw 23,44(1)
	.cfi_offset 23, -36
	stw 24,48(1)
	.cfi_offset 24, -32
	stw 25,52(1)
	.cfi_offset 25, -28
	stw 26,56(1)
	.cfi_offset 26, -24
	stw 27,60(1)
	.cfi_offset 27, -20
	stw 31,76(1)
	.cfi_offset 31, -4
	lvx 0,0,6
.L305:
	lbz 31,1(10)
	addi 30,30,-1
	addi 10,10,16
	lbz 7,-14(10)
	cmpdi 5,30,0
	addi 9,9,16
	lbz 11,-16(10)
	lbz 22,-13(10)
	sldi 24,7,16
	lbz 23,-7(10)
	rldimi 11,31,8,0
	lbz 12,-6(10)
	or 26,24,11
	sldi 27,22,24
	lbz 25,-8(10)
	or 0,27,26
	lbz 6,-12(10)
	sldi 11,12,16
	lbz 8,-5(10)
	rldimi 25,23,8,0
	lbz 31,-11(10)
	or 22,11,25
	sldi 7,6,32
	lbz 23,-4(10)
	sldi 24,8,24
	or 25,7,0
	lbz 11,-3(10)
	or 6,24,22
	sldi 27,31,40
	lbz 8,-2(10)
	sldi 12,23,32
	or 31,27,25
	lbz 26,-10(10)
	or 22,12,6
	sldi 23,11,40
	lbz 7,-9(10)
	sldi 11,8,48
	or 27,23,22
	lbz 25,-1(10)
	sldi 0,26,48
	or 12,11,27
	or 24,0,31
	sldi 26,7,56
	sldi 31,25,56
	addi 8,1,16
	or 6,26,24
	or 7,31,12
	std 6,0(8)
	std 7,8(8)
	lvx 1,0,8
	vperm 1,1,1,0
	xxpermdi 0,33,33,2
	stxvd2x 0,0,8
	ld 22,0(8)
	ld 23,8(8)
	rldicl 26,22,56,56
	rldicl 0,22,48,56
	stb 22,-16(9)
	srwi 11,22,24
	rldicl 6,22,32,56
	stb 26,-15(9)
	rldicl 24,22,24,56
	rldicl 25,22,16,56
	stb 0,-14(9)
	srdi 7,22,56
	rldicl 12,23,56,56
	stb 23,-8(9)
	rldicl 27,23,48,56
	srwi 31,23,24
	stb 11,-13(9)
	rldicl 22,23,32,56
	rldicl 26,23,24,56
	stb 6,-12(9)
	rldicl 0,23,16,56
	srdi 8,23,56
	stb 24,-11(9)
	stb 25,-10(9)
	stb 7,-9(9)
	stb 12,-7(9)
	stb 27,-6(9)
	stb 31,-5(9)
	stb 22,-4(9)
	stb 26,-3(9)
	stb 0,-2(9)
	stb 8,-1(9)
	bne+ 5,.L305
	slwi 30,29,3
	slwi 10,29,4
	lwz 22,40(1)
	.cfi_restore 22
	cmplw 6,28,30
	lwz 23,44(1)
	.cfi_restore 23
	add 4,4,10
	lwz 24,48(1)
	.cfi_restore 24
	add 3,3,10
	subf 5,10,5
	lwz 25,52(1)
	.cfi_restore 25
	lwz 26,56(1)
	.cfi_restore 26
	lwz 27,60(1)
	.cfi_restore 27
	lwz 29,68(1)
	.cfi_restore 29
	lwz 30,72(1)
	.cfi_restore 30
	lwz 31,76(1)
	.cfi_restore 31
	beq- 6,.L302
.L304:
	cmpwi 7,5,3
	lbz 11,1(3)
	lbz 6,0(3)
	stb 11,0(4)
	stb 6,1(4)
	ble- 7,.L302
	cmpwi 0,5,5
	lbz 7,3(3)
	lbz 12,2(3)
	stb 7,2(4)
	stb 12,3(4)
	ble- 0,.L302
	cmpwi 1,5,7
	lbz 0,5(3)
	lbz 8,4(3)
	stb 0,4(4)
	stb 8,5(4)
	ble- 1,.L302
	cmpwi 5,5,9
	lbz 10,7(3)
	lbz 9,6(3)
	stb 10,6(4)
	stb 9,7(4)
	ble- 5,.L302
	cmpwi 6,5,11
	lbz 28,9(3)
	lbz 11,8(3)
	stb 28,8(4)
	stb 11,9(4)
	ble- 6,.L302
	cmpwi 7,5,13
	lbz 6,10(3)
	lbz 5,11(3)
	stb 6,11(4)
	stb 5,10(4)
	ble- 7,.L302
	lbz 7,13(3)
	lbz 3,12(3)
	stb 7,12(4)
	stb 3,13(4)
.L302:
	lwz 4,36(1)
	mtvrsave 4
	lwz 28,64(1)
	addi 1,1,80
	.cfi_restore 28
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
	beq- 0,.L317
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L317:
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
	ble- 0,.L320
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L320:
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
	beq- 0,.L327
	addi 3,3,-9
	li 9,1
	cmplwi 1,3,4
	isel 3,0,9,5
	blr
.L327:
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
	ble- 0,.L331
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
.L331:
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
	ble- 0,.L342
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
.L342:
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
	ble- 0,.L345
	ori 3,3,0x20
	li 10,1
	addi 0,3,-97
	cmplwi 1,0,5
	isel 3,0,10,5
	blr
.L345:
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
	bun- 1,.L351
	fcmpu 5,1,2
	bng- 5,.L354
	fsub 1,1,2
	blr
.L354:
	xxlxor 1,1,1
	blr
.L351:
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
	bun- 1,.L359
	fcmpu 5,1,2
	bng- 5,.L362
	fsubs 1,1,2
	blr
.L362:
	xxlxor 1,1,1
	blr
.L359:
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
	bun- 0,.L368
	fcmpu 1,2,2
	bun- 1,.L369
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L365
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L369:
	fmr 1,0
	blr
.L365:
	fcmpu 6,1,2
	bnllr- 6
.L368:
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
	bun- 0,.L377
	fcmpu 1,2,2
	bun- 1,.L378
	xscvdpspn 12,1
	xscvdpspn 1,2
	mfvsrwz 9,12
	rlwinm 0,9,0,0,0
	mfvsrwz 10,1
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq- 5,.L374
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L378:
	fmr 1,0
	blr
.L374:
	fcmpu 6,0,2
	fmr 1,0
	bnllr- 6
.L377:
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
	bun- 0,.L388
	fmr 12,10
	fcmpu 1,12,12
	bun- 1,.L387
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L383
	cmpwi 7,0,0
	bne- 7,.L388
.L387:
	fmr 1,8
	fmr 2,9
	blr
.L383:
	fcmpu 6,8,10
	bne 6,$+8
	fcmpu 6,9,11
	blt- 6,.L388
	fmr 11,2
	fmr 10,1
.L388:
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
	bun- 0,.L394
	fcmpu 1,2,2
	bunlr- 1
	mfvsrd 9,1
	mfvsrd 10,2
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L398
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L393
	fmr 0,1
.L393:
	fmr 1,0
	blr
.L398:
	cmpwi 7,0,0
	bnelr- 7
.L394:
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
	bun- 0,.L404
	fcmpu 1,2,2
	bunlr- 1
	xscvdpspn 0,1
	xscvdpspn 3,2
	mfvsrwz 9,0
	rlwinm 0,9,0,0,0
	mfvsrwz 10,3
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	bne- 5,.L408
	fcmpu 6,1,2
	bnl- 6,.L403
	fmr 2,1
.L403:
	fmr 1,2
	blr
.L408:
	cmpwi 7,0,0
	bnelr- 7
.L404:
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
	bun- 0,.L414
	fmr 12,10
	fcmpu 1,12,12
	bunlr- 1
	mfvsrd 9,0
	mfvsrd 10,12
	srdi 0,9,63
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L411
	cmpwi 7,0,0
	bnelr- 7
.L414:
	fmr 1,10
	fmr 2,11
	blr
.L411:
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
	beq- 0,.L420
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L419:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L419
	li 5,0
	stb 5,0(10)
	blr
.L420:
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
	beq- 0,.L430
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L430:
	stw 4,4(3)
	stw 4,0(3)
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
	beq- 0,.L432
	lwz 10,4(3)
	stw 10,4(9)
.L432:
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
	beq- 0,.L441
	stw 25,36(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,56(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L443
.L458:
	beq- 7,.L457
.L443:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L458
	lwz 25,36(1)
	.cfi_restore 25
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L440:
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
.L457:
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
.L441:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L440
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
	beq- 0,.L460
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
	b .L462
.L473:
	beq- 7,.L472
.L462:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L473
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
.L472:
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
.L460:
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
.L482:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L476
	ble- 7,.L476
	cmpwi 1,10,43
	beq- 1,.L477
	cmpwi 6,10,45
	bne- 6,.L497
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L487
	li 6,1
.L480:
	li 0,0
.L484:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L484
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L476:
	addi 3,3,1
	b .L482
.L497:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L480
.L487:
	li 3,0
	blr
.L477:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L480
	b .L487
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L503:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L499
	ble- 7,.L499
	cmpwi 1,10,43
	beq- 1,.L500
	cmpwi 6,10,45
	beq- 6,.L501
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	bgt- 7,.L510
.L504:
	li 0,0
.L507:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L507
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L499:
	addi 3,3,1
	b .L503
.L501:
	lbz 10,1(3)
	li 6,1
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	ble+ 0,.L504
.L510:
	li 3,0
	blr
.L500:
	lbz 10,1(3)
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L510
	li 6,0
	b .L504
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L527:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq- 0,.L521
	ble- 7,.L521
	cmpwi 1,9,43
	beq- 1,.L522
	cmpwi 6,9,45
	bne- 6,.L542
	lbz 9,1(3)
	addi 3,3,1
	addi 4,9,-48
	cmplwi 0,4,9
	bgt- 0,.L532
	li 7,1
.L525:
	li 5,0
.L529:
	addi 11,9,-48
	lbzu 9,1(3)
	sldi 12,5,2
	add 0,12,5
	extsw 10,11
	addi 8,9,-48
	sldi 4,0,1
	cmplwi 1,8,9
	subf 5,10,4
	ble+ 1,.L529
	cmpwi 5,7,0
	subf 3,4,10
	isel 6,3,5,22
.L520:
	srdi 4,6,32
	mr 3,6
	blr
.L521:
	addi 3,3,1
	b .L527
.L542:
	addi 5,9,-48
	li 7,0
	cmplwi 7,5,9
	ble+ 7,.L525
.L532:
	li 6,0
	b .L520
.L522:
	lbz 9,1(3)
	li 7,0
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	ble+ 5,.L525
	li 6,0
	b .L520
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
	beq- 0,.L544
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
	b .L547
.L556:
	beq- 1,.L554
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L555
.L547:
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
	bge+ 1,.L556
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L547
.L555:
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
.L544:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L554:
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
	beq- 0,.L562
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L570:
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
	beq- 7,.L574
.L576:
	cmpwi 5,29,0
	ble- 7,.L560
	add 28,30,27
	bne+ 0,.L570
.L575:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L562:
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
.L560:
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
	beq- 5,.L575
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
	bne+ 7,.L576
.L574:
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	sradi 5,0,63
	xor 6,5,0
	subf 7,5,6
	srdi 4,7,32
	mr 3,7
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
	rldicl 5,5,0,32
	sldi 6,6,32
	rldicl 7,7,0,32
	sldi 8,8,32
	or 0,5,6
	or 4,7,8
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	sradi 5,0,63
	xor 6,5,0
	subf 7,5,6
	srdi 4,7,32
	mr 3,7
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
	rldicl 5,5,0,32
	sldi 6,6,32
	rldicl 7,7,0,32
	sldi 8,8,32
	or 0,5,6
	or 4,7,8
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
	beq- 0,.L588
.L585:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L585
.L588:
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
	beq+ 0,.L595
	b .L594
.L596:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne- 0,.L594
.L595:
	cmpwi 7,9,0
	bne+ 7,.L596
.L594:
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
.L600:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L600
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
	beq- 0,.L606
	mr 4,3
.L605:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L605
	subf 3,3,4
	srawi 3,3,2
	blr
.L606:
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
	bne+ 0,.L609
	b .L617
.L620:
	beq- 7,.L611
	addi 3,3,4
	addi 4,4,4
	bdz .L617
.L609:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L620
.L611:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	blt- 5,.L621
	mfcr 3,4
	rlwinm 3,3,22,1
	blr
.L621:
	li 3,-1
	blr
.L617:
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
	beq- 0,.L626
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L643
.L629:
	srwi 0,5,1
	mtctr 0
.L623:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L623
.L626:
	li 3,0
	blr
.L643:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L629
	b .L626
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
	beq- 0,.L650
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L665
.L653:
	srwi 0,5,1
	mtctr 0
	b .L645
.L647:
	lwz 12,4(3)
	addi 3,7,4
	lwz 9,4(4)
	addi 4,6,4
	cmpw 1,12,9
	bne- 1,.L662
	bdz .L650
.L645:
	lwz 5,0(3)
	addi 7,3,4
	addi 6,4,4
	lwz 11,0(4)
	cmpw 1,5,11
	beq+ 1,.L647
.L662:
	li 4,-1
	mfcr 3,64
	rlwinm 3,3,6,1
	isel 3,4,3,4
	blr
.L665:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne- 1,.L662
	cmpwi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L653
.L650:
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
	beq- 0,.L667
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L667:
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
	subf 10,4,3
	slwi 9,5,2
	cmplw 1,10,9
	mr 8,4
	mr 10,3
	addi 6,5,-1
	bge- 1,.L745
	cmpwi 1,5,0
	beqlr- 1
	cmplwi 5,6,4
	ble- 5,.L677
	addi 7,9,-4
	addi 10,9,-8
	add 0,3,7
	add 11,4,10
	subf 12,11,0
	addi 8,12,8
	cmplwi 6,8,8
	ble- 6,.L677
	rldicl 10,5,62,34
	addi 9,9,-16
	andi. 8,10,0x1
	add 11,4,9
	add 12,3,9
	addi 7,10,-1
	beq- 0,.L738
	mr. 10,7
	lxvd2x 3,0,11
	addi 11,11,-16
	stxvd2x 3,0,12
	addi 12,12,-16
	beq- 0,.L735
.L738:
	addi 10,10,-2
	addi 8,11,-16
	lxvd2x 4,0,11
	stxvd2x 4,0,12
	cmpdi 7,10,0
	addi 9,12,-16
	lxvd2x 5,0,8
	addi 11,11,-32
	addi 12,9,-16
	stxvd2x 5,0,9
	bne+ 7,.L738
.L735:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	subf 6,5,6
	beqlr- 0
	cmpwi 1,6,0
	slwi 0,6,2
	lwzx 7,4,0
	stwx 7,3,0
	beqlr- 1
	addi 10,6,-1
	cmpwi 5,10,0
	slwi 11,10,2
	lwzx 12,4,11
	stwx 12,3,11
	beqlr- 5
	addi 8,11,-4
	lwzx 4,4,8
	stwx 4,3,8
	blr
.L745:
	cmpwi 5,5,0
	beqlr- 5
	cmplwi 6,6,3
	ble- 6,.L683
	addi 0,4,4
	subf 7,0,3
	cmplwi 7,7,8
	ble- 7,.L683
	rldicl 12,5,62,34
	andi. 7,12,0x1
	addi 11,12,-1
	beq- 0,.L740
	mr. 12,11
	lxvd2x 0,0,4
	addi 8,4,16
	stxvd2x 0,0,3
	addi 10,3,16
	beq- 0,.L736
.L740:
	addi 12,12,-2
	addi 9,8,16
	lxvd2x 1,0,8
	stxvd2x 1,0,10
	cmpdi 1,12,0
	addi 7,10,16
	lxvd2x 2,0,9
	addi 8,8,32
	addi 10,7,16
	stxvd2x 2,0,7
	bne+ 1,.L740
.L736:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	slwi 0,5,2
	subf 6,5,6
	add 11,4,0
	add 12,3,0
	beqlr- 0
	cmpwi 5,6,0
	lwzx 4,4,0
	stwx 4,3,0
	beqlr- 5
	cmplwi 6,6,1
	lwz 8,4(11)
	stw 8,4(12)
	beqlr- 6
	lwz 10,8(11)
	stw 10,8(12)
	blr
.L677:
	rldicl 5,5,0,32
	add 12,4,9
	andi. 10,5,0x1
	add 9,3,9
	addi 6,5,-1
	beq- 0,.L737
	mr. 5,6
	lwzu 0,-4(12)
	stwu 0,-4(9)
	beqlr- 0
.L737:
	lwz 7,-4(12)
	addi 5,5,-2
	mr 11,12
	cmpdi 6,5,0
	addi 10,9,-4
	stw 7,-4(9)
	addi 12,12,-8
	addi 9,9,-8
	lwz 8,-8(11)
	stw 8,-4(10)
	beqlr- 6
	lwz 7,-4(12)
	addi 5,5,-2
	mr 11,12
	cmpdi 6,5,0
	addi 10,9,-4
	stw 7,-4(9)
	addi 12,12,-8
	addi 9,9,-8
	lwz 8,-8(11)
	stw 8,-4(10)
	bne+ 6,.L737
	blr
.L683:
	rldicl 5,5,0,32
	addi 9,4,-4
	andi. 10,5,0x1
	addi 7,5,-1
	addi 11,3,-4
	beq- 0,.L739
	mr. 5,7
	lwz 0,0(4)
	mr 9,4
	mr 11,3
	stw 0,0(3)
	beqlr- 0
.L739:
	lwz 6,4(9)
	addi 5,5,-2
	mr 12,9
	cmpdi 7,5,0
	mr 4,11
	stw 6,4(11)
	addi 9,9,8
	addi 11,11,8
	lwz 8,8(12)
	stw 8,8(4)
	beqlr- 7
	lwz 6,4(9)
	addi 5,5,-2
	mr 12,9
	cmpdi 7,5,0
	mr 4,11
	stw 6,4(11)
	addi 9,9,8
	addi 11,11,8
	lwz 8,8(12)
	stw 8,8(4)
	bne+ 7,.L739
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
	ble- 1,.L751
	rldicl 10,5,62,34
	mtvsrwz 0,4
	mr 11,3
	xxspltw 1,0,1
	andi. 8,10,0x3
	addi 6,10,-1
	beq- 0,.L781
	cmpdi 5,8,1
	beq- 5,.L770
	cmpdi 6,8,2
	beq- 6,.L771
	mr 10,6
	addi 11,3,16
	stxvd2x 1,0,3
.L771:
	stxvd2x 1,0,11
	addi 10,10,-1
	addi 11,11,16
.L770:
	addi 10,10,-1
	stxvd2x 1,0,11
	addi 11,11,16
	cmpdi 7,10,0
	beq- 7,.L780
.L781:
	addi 10,10,-4
	addi 12,11,16
	stxvd2x 1,0,11
	cmpdi 1,10,0
	addi 9,11,32
	stxvd2x 1,0,12
	addi 8,11,48
	stxvd2x 1,0,9
	addi 11,11,64
	stxvd2x 1,0,8
	bne+ 1,.L781
.L780:
	andi. 9,5,0x3
	beqlr- 0
	rlwinm 5,5,0,0,29
	slwi 0,5,2
	subf 7,5,7
	add 9,3,0
.L748:
	cmpwi 5,7,0
	stw 4,0(9)
	beqlr- 5
	cmplwi 6,7,1
	stw 4,4(9)
	beqlr- 6
	stw 4,8(9)
	blr
.L751:
	mr 9,3
	b .L748
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	bge- 0,.L784
	cmpwi 5,5,0
	stw 31,28(1)
	.cfi_offset 31, -4
	add 0,4,5
	add 31,3,5
	beq- 5,.L941
	addi 7,5,-1
	cmplwi 6,7,14
	ble- 6,.L786
	addi 11,5,-2
	add 10,4,7
	add 9,3,11
	subf 6,9,10
	addi 8,6,14
	cmplwi 7,8,14
	ble- 7,.L786
	stw 29,20(1)
	.cfi_offset 29, -12
	rldicl 12,5,60,36
	stw 30,24(1)
	.cfi_offset 30, -8
	stw 28,16(1)
	.cfi_offset 28, -16
	addi 28,5,-16
	add 3,3,28
	add 4,4,28
.L787:
	lbz 30,9(3)
	addi 12,12,-1
	addi 3,3,-16
	lbz 29,24(3)
	cmpdi 0,12,0
	addi 4,4,-16
	lbz 7,26(3)
	lbz 9,27(3)
	rldimi 29,30,8,0
	lbz 11,17(3)
	sldi 10,7,16
	lbz 30,18(3)
	sldi 28,9,24
	or 8,10,29
	lbz 6,16(3)
	or 29,28,8
	lbz 9,28(3)
	sldi 7,30,16
	lbz 10,19(3)
	rldimi 6,11,8,0
	lbz 11,29(3)
	or 28,7,6
	sldi 8,9,32
	lbz 6,20(3)
	or 29,8,29
	sldi 30,10,24
	lbz 9,30(3)
	sldi 11,11,40
	or 10,30,28
	lbz 7,21(3)
	or 30,11,29
	sldi 28,6,32
	lbz 8,31(3)
	or 6,28,10
	sldi 29,9,48
	lbz 11,22(3)
	sldi 10,7,40
	or 9,29,30
	or 7,10,6
	sldi 28,8,56
	lbz 30,23(3)
	sldi 29,11,48
	or 8,28,9
	stb 9,24(4)
	or 11,29,7
	srdi 10,8,56
	stb 30,23(4)
	rlwinm 6,11,24,24,31
	rlwinm 7,11,16,24,31
	stb 10,31(4)
	srwi 8,11,24
	rldicl 28,11,32,56
	stb 11,16(4)
	rldicl 29,11,24,56
	srdi 10,11,48
	stb 6,17(4)
	rlwinm 30,9,24,24,31
	rlwinm 11,9,16,24,31
	stb 7,18(4)
	srwi 6,9,24
	rldicl 7,9,32,56
	stb 8,19(4)
	rldicl 8,9,24,56
	rldicl 9,9,16,56
	stb 28,20(4)
	stb 29,21(4)
	stb 10,22(4)
	stb 30,25(4)
	stb 11,26(4)
	stb 6,27(4)
	stb 7,28(4)
	stb 8,29(4)
	stb 9,30(4)
	bne+ 0,.L787
	andi. 9,5,0xf
	rlwinm 12,5,0,0,27
	subf 28,12,0
	subf 31,12,31
	subf 5,12,5
	beq- 0,.L940
	cmplwi 1,5,1
	lbz 0,-1(31)
	stb 0,-1(28)
	beq- 1,.L940
	cmplwi 5,5,2
	lbz 29,-2(31)
	stb 29,-2(28)
	beq- 5,.L940
	cmplwi 6,5,3
	lbz 10,-3(31)
	stb 10,-3(28)
	beq- 6,.L940
	cmplwi 7,5,4
	lbz 30,-4(31)
	stb 30,-4(28)
	beq- 7,.L940
	cmplwi 0,5,5
	lbz 11,-5(31)
	stb 11,-5(28)
	beq- 0,.L940
	cmplwi 1,5,6
	lbz 6,-6(31)
	stb 6,-6(28)
	beq- 1,.L940
	cmplwi 5,5,7
	lbz 7,-7(31)
	stb 7,-7(28)
	beq- 5,.L940
	cmplwi 6,5,8
	lbz 8,-8(31)
	stb 8,-8(28)
	beq- 6,.L940
	cmplwi 7,5,9
	lbz 9,-9(31)
	stb 9,-9(28)
	beq- 7,.L940
	cmplwi 0,5,10
	lbz 3,-10(31)
	stb 3,-10(28)
	beq- 0,.L940
	cmplwi 1,5,11
	lbz 4,-11(31)
	stb 4,-11(28)
	beq- 1,.L940
	cmplwi 5,5,12
	lbz 12,-12(31)
	stb 12,-12(28)
	beq- 5,.L940
	cmplwi 6,5,13
	lbz 0,-13(31)
	stb 0,-13(28)
	beq- 6,.L940
	cmplwi 7,5,14
	lbz 5,-14(31)
	stb 5,-14(28)
	beq- 7,.L940
	lbz 31,-15(31)
	stb 31,-15(28)
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
	lwz 30,24(1)
	.cfi_restore 30
	lwz 31,28(1)
	.cfi_restore 31
	b .L783
.L784:
	beq- 0,.L783
	cmpwi 1,5,0
	beq- 1,.L783
	addi 9,5,-1
	cmplwi 5,9,14
	ble- 5,.L791
	addi 0,3,1
	subf 6,0,4
	cmplwi 6,6,14
	ble- 6,.L791
	stw 28,16(1)
	.cfi_offset 28, -16
	rldicl 12,5,60,36
	mr 10,3
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 9,4
	stw 30,24(1)
	.cfi_offset 30, -8
	stw 31,28(1)
	.cfi_offset 31, -4
.L792:
	lbz 11,9(10)
	addi 12,12,-1
	addi 10,10,16
	lbz 7,-6(10)
	cmpdi 7,12,0
	addi 9,9,16
	lbz 28,-8(10)
	lbz 8,-5(10)
	sldi 29,7,16
	lbz 31,-15(10)
	rldimi 28,11,8,0
	lbz 30,-16(10)
	or 0,29,28
	sldi 6,8,24
	lbz 11,-14(10)
	or 28,6,0
	lbz 8,-4(10)
	rldimi 30,31,8,0
	lbz 7,-13(10)
	sldi 29,11,16
	lbz 31,-3(10)
	sldi 6,8,32
	or 30,29,30
	lbz 0,-12(10)
	sldi 11,7,24
	or 28,6,28
	lbz 8,-2(10)
	or 7,11,30
	sldi 29,31,40
	lbz 30,-11(10)
	sldi 0,0,32
	or 31,29,28
	lbz 6,-1(10)
	or 29,0,7
	sldi 28,8,48
	lbz 7,-10(10)
	sldi 11,30,40
	or 8,28,31
	sldi 30,6,56
	or 31,11,29
	lbz 0,-9(10)
	sldi 28,7,48
	or 6,30,8
	stb 8,-8(9)
	or 7,28,31
	srdi 29,6,56
	stb 0,-9(9)
	rlwinm 30,7,24,24,31
	rlwinm 11,7,16,24,31
	stb 29,-1(9)
	srwi 6,7,24
	rldicl 28,7,32,56
	stb 7,-16(9)
	rldicl 29,7,24,56
	rlwinm 31,8,16,24,31
	stb 30,-15(9)
	srwi 0,8,24
	rlwinm 30,8,24,24,31
	stb 11,-14(9)
	stb 6,-13(9)
	rldicl 11,8,32,56
	rldicl 6,8,24,56
	srdi 7,7,48
	rldicl 8,8,16,56
	stb 28,-12(9)
	stb 29,-11(9)
	stb 7,-10(9)
	stb 30,-7(9)
	stb 31,-6(9)
	stb 0,-5(9)
	stb 11,-4(9)
	stb 6,-3(9)
	stb 8,-2(9)
	bne+ 7,.L792
	andi. 9,5,0xf
	rlwinm 12,5,0,0,27
	add 28,4,12
	add 29,3,12
	subf 5,12,5
	beq- 0,.L940
	cmplwi 1,5,1
	lbzx 3,3,12
	stbx 3,4,12
	beq- 1,.L940
	cmplwi 5,5,2
	lbz 4,1(29)
	stb 4,1(28)
	bne+ 5,.L944
.L940:
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
	lwz 30,24(1)
	.cfi_restore 30
.L941:
	lwz 31,28(1)
	.cfi_restore 31
.L783:
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
.L944:
	.cfi_def_cfa_offset 32
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	cmplwi 6,5,3
	lbz 7,2(29)
	stb 7,2(28)
	beq- 6,.L940
	cmplwi 7,5,4
	lbz 30,3(29)
	stb 30,3(28)
	beq- 7,.L940
	cmplwi 0,5,5
	lbz 31,4(29)
	stb 31,4(28)
	beq- 0,.L940
	cmplwi 1,5,6
	lbz 0,5(29)
	stb 0,5(28)
	beq- 1,.L940
	cmplwi 5,5,7
	lbz 11,6(29)
	stb 11,6(28)
	beq- 5,.L940
	cmplwi 6,5,8
	lbz 6,7(29)
	stb 6,7(28)
	beq- 6,.L940
	cmplwi 7,5,9
	lbz 8,8(29)
	stb 8,8(28)
	beq- 7,.L940
	cmplwi 0,5,10
	lbz 10,9(29)
	stb 10,9(28)
	beq- 0,.L940
	cmplwi 1,5,11
	lbz 9,10(29)
	stb 9,10(28)
	beq- 1,.L940
	cmplwi 5,5,12
	lbz 12,11(29)
	stb 12,11(28)
	beq- 5,.L940
	cmplwi 6,5,13
	lbz 3,12(29)
	stb 3,12(28)
	beq- 6,.L940
	cmplwi 7,5,14
	lbz 5,13(29)
	stb 5,13(28)
	beq- 7,.L940
	lbz 29,14(29)
	stb 29,14(28)
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
	lwz 30,24(1)
	.cfi_restore 30
	lwz 31,28(1)
	.cfi_restore 31
	b .L783
.L786:
	.cfi_offset 31, -4
	rldicl 11,5,0,32
	mr 9,0
	andi. 10,11,0x1
	addi 10,11,-1
	beq- 0,.L907
	mr. 11,10
	lbzu 6,-1(31)
	stbu 6,-1(9)
	beq- 0,.L941
.L907:
	lbz 7,-1(31)
	addi 11,11,-2
	mr 8,31
	cmpdi 1,11,0
	mr 3,9
	stb 7,-1(9)
	addi 31,31,-2
	addi 9,9,-2
	lbz 4,-2(8)
	stb 4,-2(3)
	beq- 1,.L941
	lbz 7,-1(31)
	addi 11,11,-2
	mr 8,31
	cmpdi 1,11,0
	mr 3,9
	stb 7,-1(9)
	addi 31,31,-2
	addi 9,9,-2
	lbz 4,-2(8)
	stb 4,-2(3)
	bne+ 1,.L907
	b .L941
.L791:
	.cfi_restore 31
	rldicl 10,5,0,32
	addi 11,3,-1
	andi. 9,10,0x1
	addi 7,10,-1
	addi 9,4,-1
	beq- 0,.L908
	mr. 10,7
	lbz 0,0(3)
	mr 11,3
	mr 9,4
	stb 0,0(4)
	beq- 0,.L783
.L908:
	lbz 4,1(11)
	addi 10,10,-2
	mr 6,11
	cmpdi 1,10,0
	addi 8,9,1
	stb 4,1(9)
	addi 11,11,2
	addi 9,9,2
	lbz 12,2(6)
	stb 12,1(8)
	beq- 1,.L783
	lbz 4,1(11)
	addi 10,10,-2
	mr 6,11
	cmpdi 1,10,0
	addi 8,9,1
	stb 4,1(9)
	addi 11,11,2
	addi 9,9,2
	lbz 12,2(6)
	stb 12,1(8)
	bne+ 1,.L908
	b .L783
	.cfi_endproc
.LFE67:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	rotld 5,0,5
	srdi 4,5,32
	mr 3,5
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	subfic 5,5,64
	rotld 6,0,5
	srdi 4,6,32
	mr 3,6
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	srdi 9,0,32
	rotlwi 10,0,24
	rotlwi 5,9,24
	rlwimi 10,0,8,8,15
	rlwimi 5,9,8,8,15
	rlwimi 10,0,8,24,31
	rlwimi 5,9,8,24,31
	rldimi 5,10,32,0
	srdi 4,5,32
	mr 3,5
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
	b .L961
.L959:
	addi 9,9,1
	bne- 0,.L965
	bdz .L969
.L961:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L959
.L965:
	mr 3,9
	blr
.L969:
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
	beq- 0,.L973
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L972:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L972
	blr
.L973:
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
	blt- 5,.L1000
	lis 9,.LC14@ha
	lfs 2,.LC14@l(9)
.L989:
	andi. 9,3,0x1
	beq- 0,.L990
.L991:
	fmuls 1,1,2
.L990:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmuls 2,2,2
	bne- 0,.L991
.L1001:
	srawi 3,3,1
	addze 3,3
	fmuls 2,2,2
	andi. 9,3,0x1
	bne- 0,.L991
	b .L1001
.L1000:
	lis 4,.LC15@ha
	lfs 2,.LC15@l(4)
	b .L989
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
	blt- 5,.L1015
	lis 9,.LC14@ha
	lfs 2,.LC14@l(9)
.L1004:
	andi. 9,3,0x1
	beq- 0,.L1005
.L1006:
	fmul 1,1,2
.L1005:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmul 2,2,2
	bne- 0,.L1006
.L1016:
	srawi 3,3,1
	addze 3,3
	fmul 2,2,2
	andi. 9,3,0x1
	bne- 0,.L1006
	b .L1016
.L1015:
	lis 4,.LC15@ha
	lfs 2,.LC15@l(4)
	b .L1004
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
	bun- 0,.L1018
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
	beq- 1,.L1033
	cmpwi 5,31,0
	stfd 30,48(1)
	.cfi_offset 62, -16
	stfd 31,56(1)
	.cfi_offset 63, -8
	blt- 5,.L1034
	lis 9,.LC20@ha
	la 3,.LC20@l(9)
	lfd 30,0(3)
	lfd 31,8(3)
.L1019:
	andi. 9,31,0x1
	beq- 0,.L1020
.L1021:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	fmr 29,2
	fmr 28,1
.L1020:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L1032
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L1021
.L1035:
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
	bne- 0,.L1021
	b .L1035
.L1032:
	lfd 30,48(1)
	.cfi_restore 62
	lfd 31,56(1)
	.cfi_restore 63
.L1033:
	lwz 0,68(1)
	lwz 31,28(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L1018:
	fmr 1,28
	lfd 28,32(1)
	fmr 2,29
	lfd 29,40(1)
	addi 1,1,64
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L1034:
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
	b .L1019
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
	ble- 1,.L1041
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mr 10,4
	mr 9,3
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 31,60(1)
	stw 27,44(1)
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	rldicl 27,5,60,36
.L1039:
	lbz 28,1(9)
	addi 27,27,-1
	addi 10,10,16
	lbz 26,0(9)
	cmpdi 1,27,0
	addi 9,9,16
	lbz 23,-15(10)
	lbz 24,-14(10)
	rldimi 26,28,8,0
	lbz 29,-16(10)
	lbz 30,-14(9)
	sldi 25,24,16
	lbz 6,-13(10)
	rldimi 29,23,8,0
	lbz 28,-13(9)
	or 31,25,29
	sldi 0,30,16
	sldi 12,6,24
	lbz 7,-7(10)
	or 23,0,26
	lbz 11,-6(10)
	or 24,12,31
	sldi 29,28,24
	lbz 8,-8(10)
	or 26,29,23
	lbz 6,-6(9)
	sldi 30,11,16
	lbz 12,-12(9)
	rldimi 8,7,8,0
	lbz 25,-7(9)
	or 31,30,8
	sldi 11,6,16
	lbz 0,-8(9)
	sldi 6,12,32
	lbz 7,-12(10)
	lbz 23,-5(10)
	rldimi 0,25,8,0
	lbz 30,-5(9)
	sldi 28,7,32
	or 8,11,0
	sldi 29,23,24
	lbz 25,-11(10)
	or 23,6,26
	lbz 26,-11(9)
	or 24,28,24
	sldi 0,30,24
	lbz 7,-4(10)
	sldi 12,25,40
	or 30,0,8
	lbz 28,-10(10)
	sldi 25,26,40
	or 31,29,31
	lbz 8,-4(9)
	sldi 11,7,32
	or 7,25,23
	lbz 0,-3(9)
	sldi 26,28,48
	or 6,11,31
	lbz 23,-10(9)
	sldi 31,8,32
	or 24,12,24
	lbz 29,-3(10)
	or 30,31,30
	or 24,26,24
	lbz 28,-9(10)
	sldi 12,23,48
	lbz 11,-2(10)
	sldi 8,29,40
	sldi 29,0,40
	sldi 25,28,56
	lbz 0,-2(9)
	or 31,12,7
	or 23,29,30
	lbz 7,-9(9)
	or 30,25,24
	or 6,8,6
	lbz 24,-1(10)
	sldi 8,11,48
	lbz 11,-1(9)
	sldi 29,0,48
	or 12,8,6
	sldi 26,7,56
	sldi 28,24,56
	or 7,29,23
	sldi 25,11,56
	or 6,26,31
	or 0,25,7
	or 31,28,12
	xor 23,6,30
	xor 24,0,31
	rldicl 30,23,56,56
	stb 23,-16(9)
	rldicl 12,23,48,56
	srwi 11,23,24
	stb 24,-8(9)
	rldicl 8,23,32,56
	rldicl 7,23,24,56
	stb 30,-15(9)
	rldicl 26,23,16,56
	srdi 28,23,56
	stb 12,-14(9)
	rldicl 29,24,56,56
	rldicl 25,24,48,56
	stb 11,-13(9)
	srwi 31,24,24
	rldicl 0,24,32,56
	stb 8,-12(9)
	rldicl 23,24,24,56
	rldicl 6,24,16,56
	stb 7,-11(9)
	srdi 24,24,56
	stb 26,-10(9)
	stb 28,-9(9)
	stb 29,-7(9)
	stb 25,-6(9)
	stb 31,-5(9)
	stb 0,-4(9)
	stb 23,-3(9)
	stb 6,-2(9)
	stb 24,-1(9)
	bne+ 1,.L1039
	andi. 9,5,0xf
	rlwinm 27,5,0,0,27
	add 4,4,27
	add 30,3,27
	subf 5,27,5
	beq- 0,.L1037
	cmplwi 5,5,1
	lbz 10,0(30)
	lbz 12,0(4)
	xor 11,10,12
	stb 11,0(30)
	beq- 5,.L1037
	cmplwi 6,5,2
	lbz 7,1(30)
	lbz 8,1(4)
	xor 26,8,7
	stb 26,1(30)
	beq- 6,.L1037
	cmplwi 7,5,3
	lbz 29,2(30)
	lbz 28,2(4)
	xor 25,28,29
	stb 25,2(30)
	beq- 7,.L1037
	cmplwi 1,5,4
	lbz 0,3(30)
	lbz 31,3(4)
	xor 23,31,0
	stb 23,3(30)
	beq- 1,.L1037
	cmplwi 0,5,5
	lbz 24,4(30)
	lbz 6,4(4)
	xor 9,6,24
	stb 9,4(30)
	beq- 0,.L1037
	cmplwi 5,5,6
	lbz 10,5(30)
	lbz 27,5(4)
	xor 12,27,10
	stb 12,5(30)
	beq- 5,.L1037
	cmplwi 6,5,7
	lbz 8,6(30)
	lbz 11,6(4)
	xor 7,11,8
	stb 7,6(30)
	beq- 6,.L1037
	cmplwi 7,5,8
	lbz 28,7(30)
	lbz 26,7(4)
	xor 29,26,28
	stb 29,7(30)
	beq- 7,.L1037
	cmplwi 1,5,9
	lbz 31,8(30)
	lbz 25,8(4)
	xor 0,25,31
	stb 0,8(30)
	beq- 1,.L1037
	cmplwi 0,5,10
	lbz 6,9(30)
	lbz 23,9(4)
	xor 24,23,6
	stb 24,9(30)
	beq- 0,.L1037
	cmplwi 5,5,11
	lbz 27,10(30)
	lbz 9,10(4)
	xor 10,9,27
	stb 10,10(30)
	beq- 5,.L1037
	cmplwi 6,5,12
	lbz 11,11(30)
	lbz 12,11(4)
	xor 8,12,11
	stb 8,11(30)
	beq- 6,.L1037
	cmplwi 7,5,13
	lbz 7,12(30)
	lbz 26,12(4)
	xor 28,26,7
	stb 28,12(30)
	beq- 7,.L1037
	cmplwi 1,5,14
	lbz 29,13(30)
	lbz 5,13(4)
	xor 25,5,29
	stb 25,13(30)
	beq- 1,.L1037
	lbz 31,14(30)
	lbz 4,14(4)
	xor 0,4,31
	stb 0,14(30)
.L1037:
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L1041:
	cmplwi 5,5,1
	lbz 8,0(3)
	lbz 7,0(4)
	xor 0,8,7
	stb 0,0(3)
	beqlr- 5
	cmplwi 6,5,2
	lbz 11,1(3)
	lbz 6,1(4)
	xor 12,6,11
	stb 12,1(3)
	beqlr- 6
	cmplwi 7,5,3
	lbz 8,2(3)
	lbz 9,2(4)
	xor 7,9,8
	stb 7,2(3)
	beqlr- 7
	cmplwi 0,5,4
	lbz 6,3(3)
	lbz 0,3(4)
	xor 11,0,6
	stb 11,3(3)
	beqlr- 0
	cmplwi 1,5,5
	lbz 9,4(3)
	lbz 12,4(4)
	xor 8,12,9
	stb 8,4(3)
	beqlr- 1
	cmplwi 5,5,6
	lbz 7,5(3)
	lbz 0,5(4)
	xor 6,0,7
	stb 6,5(3)
	beqlr- 5
	cmplwi 6,5,7
	lbz 12,6(3)
	lbz 11,6(4)
	xor 9,11,12
	stb 9,6(3)
	beqlr- 6
	cmplwi 7,5,8
	lbz 0,7(3)
	lbz 8,7(4)
	xor 7,8,0
	stb 7,7(3)
	beqlr- 7
	cmplwi 0,5,9
	lbz 11,8(3)
	lbz 6,8(4)
	xor 12,6,11
	stb 12,8(3)
	beqlr- 0
	cmplwi 1,5,10
	lbz 8,9(3)
	lbz 9,9(4)
	xor 0,9,8
	stb 0,9(3)
	beqlr- 1
	cmplwi 5,5,11
	lbz 7,10(3)
	lbz 6,10(4)
	xor 11,6,7
	stb 11,10(3)
	beqlr- 5
	cmplwi 6,5,12
	lbz 9,11(3)
	lbz 12,11(4)
	xor 8,12,9
	stb 8,11(3)
	beqlr- 6
	cmplwi 7,5,13
	lbz 6,12(3)
	lbz 0,12(4)
	xor 7,0,6
	stb 7,12(3)
	beqlr- 7
	cmplwi 0,5,14
	lbz 11,13(3)
	lbz 10,13(4)
	xor 12,10,11
	stb 12,13(3)
	beqlr- 0
	lbz 9,14(3)
	lbz 4,14(4)
	xor 8,4,9
	stb 8,14(3)
	blr
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
	beq- 0,.L1111
.L1112:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1112
.L1111:
	cmpwi 5,5,0
	beq- 5,.L1113
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne- 0,.L1136
.L1124:
	srwi 0,5,1
	mtctr 0
.L1114:
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
	bdnz .L1114
.L1113:
	li 6,0
	stb 6,0(9)
	blr
.L1136:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpwi 7,7,0
	addi 9,9,1
	bne+ 7,.L1124
	b .L1113
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
	beq- 0,.L1149
	cmpwi 1,8,1
	beq- 1,.L1160
	cmpwi 5,8,2
	beq- 5,.L1161
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1161:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1160:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmplw 1,4,3
	beqlr- 1
.L1149:
	srwi 10,10,2
.L1138:
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
	bne+ 1,.L1138
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
	beq- 0,.L1175
.L1171:
	mr 10,4
	b .L1174
.L1173:
	beqlr- 7
.L1174:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1173
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1171
.L1175:
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
.L1181:
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
	bne+ 0,.L1181
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
	beq- 0,.L1197
	mr 9,4
.L1186:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1186
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1205
.L1208:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1207
.L1205:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1208
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L1188
.L1210:
	bdz .L1190
	bne- 7,.L1191
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1209
	lbzu 10,1(6)
.L1188:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1210
.L1191:
	addi 8,8,1
	b .L1205
.L1207:
	li 3,0
	blr
.L1209:
	lbz 9,1(6)
.L1190:
	cmpw 5,12,9
	bne+ 5,.L1191
.L1197:
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
	blt- 0,.L1221
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1221:
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
	blt- 1,.L1230
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1230
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1227
.L1224:
	cmplw 1,0,9
	blt- 1,.L1230
.L1227:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1224
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1225:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1224
	bdnz .L1225
	blr
.L1230:
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
	beq- 0,.L1239
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L1239:
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
	blt- 7,.L1267
	lis 9,.LC29@ha
	li 10,0
	lfs 2,.LC29@l(9)
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1268
.L1247:
	lis 11,.LC15@ha
	lis 12,.LC29@ha
	lfs 7,.LC15@l(11)
	li 7,0
	lfs 8,.LC29@l(12)
.L1253:
	fmul 1,1,7
	addi 7,7,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1253
	cmpwi 1,10,0
	stw 7,0(3)
	beqlr- 1
.L1270:
	fneg 1,1
	blr
.L1268:
	lis 4,.LC15@ha
	lfs 3,.LC15@l(4)
	fcmpu 1,1,3
	bnl- 1,.L1250
	bne- 7,.L1259
.L1250:
	li 0,0
	stw 0,0(3)
	blr
.L1267:
	lis 5,.LC25@ha
	fneg 12,1
	lfs 4,.LC25@l(5)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1269
	fmr 1,12
	li 10,1
	b .L1247
.L1269:
	lis 6,.LC27@ha
	lfs 5,.LC27@l(6)
	fcmpu 6,1,5
	bng- 6,.L1250
	li 10,1
.L1248:
	lis 8,.LC15@ha
	fmr 1,12
	li 7,0
	lfs 6,.LC15@l(8)
.L1255:
	fadd 1,1,1
	addi 7,7,-1
	fcmpu 7,1,6
	blt+ 7,.L1255
	cmpwi 1,10,0
	stw 7,0(3)
	bne+ 1,.L1270
	blr
.L1259:
	fmr 12,1
	b .L1248
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	rldicl 5,5,0,32
	cmpdi 0,0,0
	sldi 6,6,32
	li 10,0
	or 11,5,6
	beq- 0,.L1271
.L1273:
	rldicl 9,0,0,63
	srdi 0,0,1
	cmpdi 1,0,0
	neg 7,9
	and 8,7,11
	sldi 11,11,1
	add 10,10,8
	bne+ 1,.L1273
.L1271:
	srdi 4,10,32
	mr 3,10
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
	rldicl 5,5,0,32
	sldi 6,6,32
	li 8,16
	li 10,32
	or 0,5,6
	li 12,1
	mtctr 8
	blt+ 0,.L1277
	b .L1299
.L1281:
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1279
	blt- 5,.L1296
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	ble- 7,.L1279
	bdz .L1280
.L1277:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1281
.L1296:
	cmplw 7,3,4
	b .L1282
.L1279:
	cmpwi 6,12,0
	beq- 6,.L1286
.L1282:
	li 10,0
	li 11,1
	li 5,0
.L1283:
	isel 7,0,11,28
	subf 6,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,5,12,6
	srwi. 12,12,1
	isel 3,3,6,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1283
.L1280:
	cmpdi 5,0,0
	isel 3,10,3,22
	blr
.L1299:
	isel 9,0,12,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1280
.L1286:
	li 10,0
	b .L1280
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
	beq- 0,.L1304
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1304:
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	sradi 9,0,63
	cmpd 0,0,9
	xor 5,0,9
	beq- 0,.L1307
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1307:
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
.L1310:
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
	bne+ 0,.L1310
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	srwi 9,5,3
	stw 30,40(1)
	.cfi_offset 30, -8
	rlwinm 30,5,0,0,28
	stw 29,36(1)
	.cfi_offset 29, -12
	blt- 0,.L1318
	add 12,4,5
	cmplw 1,12,3
	bge- 1,.L1442
.L1318:
	cmpwi 5,9,0
	addi 12,4,-8
	addi 10,3,-8
	beq- 5,.L1402
	andi. 7,9,0x1
	addi 29,9,-1
	beq- 0,.L1408
	mr. 9,29
	ld 6,0(4)
	mr 12,4
	mr 10,3
	std 6,0(3)
	beq- 0,.L1404
.L1408:
	ld 0,8(12)
	addi 9,9,-2
	mr 11,12
	cmpdi 7,9,0
	addi 7,10,8
	std 0,8(10)
	addi 12,12,16
	addi 10,10,16
	ld 8,16(11)
	std 8,8(7)
	bne+ 7,.L1408
.L1404:
	cmplw 1,5,30
	ble- 1,.L1314
	subf 29,30,5
	addi 9,29,-1
	cmplwi 5,9,14
	ble- 5,.L1323
	addi 6,30,1
	add 9,3,30
	add 12,4,6
	subf 10,12,9
	cmplwi 6,10,14
	ble- 6,.L1323
	stw 26,24(1)
	.cfi_offset 26, -24
	add 10,4,30
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 31,44(1)
	.cfi_offset 31, -4
	rldicl 31,29,60,36
.L1324:
	lbz 26,9(10)
	addi 31,31,-1
	addi 10,10,16
	lbz 27,-8(10)
	cmpdi 0,31,0
	addi 9,9,16
	lbz 0,-6(10)
	lbz 11,-5(10)
	rldimi 27,26,8,0
	lbz 28,-15(10)
	sldi 7,0,16
	lbz 26,-16(10)
	or 6,7,27
	sldi 8,11,24
	lbz 12,-14(10)
	or 27,8,6
	lbz 0,-4(10)
	rldimi 26,28,8,0
	lbz 28,-13(10)
	sldi 11,12,16
	sldi 6,0,32
	lbz 12,-3(10)
	or 26,11,26
	lbz 0,-12(10)
	sldi 7,28,24
	or 27,6,27
	lbz 8,-2(10)
	or 26,7,26
	sldi 28,12,40
	lbz 11,-11(10)
	sldi 0,0,32
	or 12,28,27
	lbz 6,-1(10)
	or 28,0,26
	sldi 27,8,48
	lbz 7,-10(10)
	sldi 26,11,40
	or 8,27,12
	or 11,26,28
	sldi 12,6,56
	lbz 0,-9(10)
	sldi 27,7,48
	or 6,12,8
	stb 8,-8(9)
	or 28,27,11
	srdi 7,6,56
	stb 0,-9(9)
	rlwinm 12,28,24,24,31
	rlwinm 11,28,16,24,31
	stb 7,-1(9)
	srwi 6,28,24
	rldicl 26,28,32,56
	stb 28,-16(9)
	rldicl 27,28,24,56
	srdi 7,28,48
	stb 12,-15(9)
	rlwinm 28,8,24,24,31
	rlwinm 12,8,16,24,31
	stb 11,-14(9)
	srwi 0,8,24
	rldicl 11,8,32,56
	stb 6,-13(9)
	rldicl 6,8,24,56
	rldicl 8,8,16,56
	stb 26,-12(9)
	stb 27,-11(9)
	stb 7,-10(9)
	stb 28,-7(9)
	stb 12,-6(9)
	stb 0,-5(9)
	stb 11,-4(9)
	stb 6,-3(9)
	stb 8,-2(9)
	bne+ 0,.L1324
	andi. 9,29,0xf
	rlwinm 29,29,0,0,27
	add 30,29,30
	beq- 0,.L1441
	addi 31,30,1
	lbzx 26,4,30
	cmplw 7,31,5
	stbx 26,3,30
	bge- 7,.L1441
	addi 27,30,2
	lbzx 7,4,31
	cmplw 1,5,27
	stbx 7,3,31
	ble- 1,.L1441
	addi 28,30,3
	lbzx 12,4,27
	cmplw 5,5,28
	stbx 12,3,27
	ble- 5,.L1441
	addi 0,30,4
	lbzx 11,4,28
	cmplw 6,5,0
	stbx 11,3,28
	ble- 6,.L1441
	addi 6,30,5
	lbzx 8,4,0
	cmplw 0,5,6
	stbx 8,3,0
	ble- 0,.L1441
	addi 10,30,6
	lbzx 9,4,6
	cmplw 7,5,10
	stbx 9,3,6
	ble- 7,.L1441
	addi 29,30,7
	lbzx 31,4,10
	cmplw 1,5,29
	stbx 31,3,10
	ble- 1,.L1441
	addi 26,30,8
	lbzx 27,4,29
	cmplw 5,5,26
	stbx 27,3,29
	ble- 5,.L1441
	addi 7,30,9
	lbzx 28,4,26
	cmplw 6,5,7
	stbx 28,3,26
	ble- 6,.L1441
	addi 12,30,10
	lbzx 0,4,7
	cmplw 0,5,12
	stbx 0,3,7
	ble- 0,.L1441
	addi 11,30,11
	lbzx 6,4,12
	cmplw 7,5,11
	stbx 6,3,12
	ble- 7,.L1441
	addi 10,30,12
	lbzx 8,4,11
	cmplw 1,5,10
	stbx 8,3,11
	ble- 1,.L1441
	addi 9,30,13
	lbzx 29,4,10
	cmplw 5,5,9
	stbx 29,3,10
	ble- 5,.L1441
	addi 30,30,14
	lbzx 31,4,9
	cmplw 6,5,30
	stbx 31,3,9
	ble- 6,.L1441
	lbzx 4,4,30
	stbx 4,3,30
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 31,44(1)
	.cfi_restore 31
	b .L1314
.L1442:
	cmpwi 5,5,0
	addi 29,5,-1
	beq- 5,.L1314
	cmplwi 6,29,14
	ble- 6,.L1328
	addi 9,5,-2
	add 8,3,29
	add 0,4,9
	subf 6,0,8
	addi 7,6,14
	cmplwi 7,7,14
	ble- 7,.L1328
	stw 26,24(1)
	.cfi_offset 26, -24
	addi 11,5,-16
	rldicl 30,5,60,36
	stw 27,28(1)
	.cfi_offset 27, -20
	add 10,4,11
	add 9,3,11
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 31,44(1)
	.cfi_offset 31, -4
.L1329:
	lbz 12,9(10)
	addi 30,30,-1
	addi 10,10,-16
	lbz 27,26(10)
	cmpdi 0,30,0
	addi 9,9,-16
	lbz 26,24(10)
	lbz 28,27(10)
	sldi 8,27,16
	lbz 31,17(10)
	rldimi 26,12,8,0
	lbz 11,18(10)
	or 6,8,26
	sldi 7,28,24
	lbz 0,16(10)
	or 12,7,6
	lbz 26,28(10)
	sldi 28,11,16
	lbz 27,19(10)
	rldimi 0,31,8,0
	lbz 31,29(10)
	or 11,28,0
	sldi 8,26,32
	lbz 0,20(10)
	or 6,8,12
	sldi 7,27,24
	lbz 12,30(10)
	sldi 26,31,40
	or 27,7,11
	lbz 28,21(10)
	or 31,26,6
	sldi 11,0,32
	lbz 6,31(10)
	or 0,11,27
	sldi 8,12,48
	lbz 7,22(10)
	sldi 12,28,40
	or 8,8,31
	or 27,12,0
	sldi 26,6,56
	lbz 28,23(10)
	sldi 11,7,48
	or 31,26,8
	stb 8,24(9)
	or 7,11,27
	srdi 6,31,56
	stb 28,23(9)
	rlwinm 0,7,24,24,31
	rlwinm 12,7,16,24,31
	stb 6,31(9)
	rldicl 26,7,32,56
	srwi 6,7,24
	stb 7,16(9)
	rldicl 27,7,24,56
	rlwinm 28,8,24,24,31
	stb 0,17(9)
	rlwinm 31,8,16,24,31
	srwi 0,8,24
	stb 12,18(9)
	rldicl 11,8,32,56
	rldicl 12,8,24,56
	stb 6,19(9)
	srdi 7,7,48
	rldicl 8,8,16,56
	stb 26,20(9)
	stb 27,21(9)
	stb 7,22(9)
	stb 28,25(9)
	stb 31,26(9)
	stb 0,27(9)
	stb 11,28(9)
	stb 12,29(9)
	stb 8,30(9)
	bne+ 0,.L1329
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 29,5,29
	beq- 0,.L1441
	cmpwi 1,29,0
	lbzx 30,4,29
	addi 6,29,-1
	stbx 30,3,29
	beq- 1,.L1441
	cmpwi 5,6,0
	lbzx 26,4,6
	addi 27,29,-2
	stbx 26,3,6
	beq- 5,.L1441
	cmpwi 6,27,0
	lbzx 7,4,27
	addi 28,29,-3
	stbx 7,3,27
	beq- 6,.L1441
	cmpwi 7,28,0
	lbzx 31,4,28
	addi 0,29,-4
	stbx 31,3,28
	beq- 7,.L1441
	cmpwi 0,0,0
	lbzx 11,4,0
	addi 12,29,-5
	stbx 11,3,0
	beq- 0,.L1441
	cmpwi 1,12,0
	lbzx 8,4,12
	addi 10,29,-6
	stbx 8,3,12
	beq- 1,.L1441
	cmpwi 5,10,0
	lbzx 5,4,10
	addi 9,29,-7
	stbx 5,3,10
	beq- 5,.L1441
	cmpwi 6,9,0
	lbzx 30,4,9
	addi 6,29,-8
	stbx 30,3,9
	beq- 6,.L1441
	cmpwi 7,6,0
	lbzx 26,4,6
	addi 27,29,-9
	stbx 26,3,6
	beq- 7,.L1441
	cmpwi 0,27,0
	lbzx 7,4,27
	addi 28,29,-10
	stbx 7,3,27
	beq- 0,.L1441
	cmpwi 1,28,0
	lbzx 31,4,28
	addi 0,29,-11
	stbx 31,3,28
	bne+ 1,.L1443
.L1441:
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 31,44(1)
	.cfi_restore 31
.L1314:
	lwz 29,36(1)
	lwz 30,40(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L1402:
	.cfi_restore_state
	cmpwi 6,5,0
	mr 29,5
	beq- 6,.L1314
.L1323:
	rldicl 7,29,0,32
	addi 5,30,-1
	andi. 9,7,0x1
	add 8,4,5
	add 9,3,5
	addi 3,7,-1
	beq- 0,.L1407
	mr. 7,3
	lbzu 12,1(8)
	stbu 12,1(9)
	beq- 0,.L1314
.L1407:
	lbz 0,1(8)
	addi 7,7,-2
	mr 11,8
	cmpdi 7,7,0
	mr 6,9
	stb 0,1(9)
	addi 8,8,2
	addi 9,9,2
	lbz 10,2(11)
	stb 10,2(6)
	bne+ 7,.L1407
	b .L1314
.L1443:
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 31, -4
	cmpwi 5,0,0
	lbzx 11,4,0
	addi 12,29,-12
	stbx 11,3,0
	beq- 5,.L1441
	cmpwi 6,12,0
	lbzx 8,4,12
	addi 9,29,-13
	stbx 8,3,12
	beq- 6,.L1441
	cmpwi 7,9,0
	lbzx 10,4,9
	addi 29,29,-14
	stbx 10,3,9
	beq- 7,.L1441
	lbzx 4,4,29
	stbx 4,3,29
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 31,44(1)
	.cfi_restore 31
	b .L1314
.L1328:
	rldicl 30,5,0,32
	add 3,3,5
	andi. 8,30,0x1
	addi 5,30,-1
	beq- 0,.L1409
	mr. 30,5
	lbzu 6,-1(12)
	stbu 6,-1(3)
	beq- 0,.L1314
.L1409:
	lbz 0,-1(12)
	addi 30,30,-2
	mr 7,12
	cmpdi 1,30,0
	mr 11,3
	stb 0,-1(3)
	addi 12,12,-2
	addi 3,3,-2
	lbz 8,-2(7)
	stb 8,-2(11)
	bne+ 1,.L1409
	b .L1314
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 29,36(1)
	.cfi_offset 29, -12
	srwi 29,5,1
	blt- 0,.L1448
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1549
.L1448:
	cmpwi 5,29,0
	beq- 5,.L1447
	addi 8,29,-1
	cmplwi 6,8,6
	ble- 6,.L1451
	addi 12,4,2
	subf 7,12,3
	cmplwi 7,7,12
	ble- 7,.L1451
	stw 30,40(1)
	.cfi_offset 30, -8
	rldicl 12,5,60,36
	mr 10,4
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 9,3
	stw 28,32(1)
	.cfi_offset 28, -16
	srwi 28,5,4
.L1452:
	lhz 31,10(10)
	addi 12,12,-1
	addi 10,10,16
	lhz 11,-4(10)
	cmpdi 0,12,0
	addi 9,9,16
	lhz 30,-8(10)
	lhz 6,-2(10)
	sldi 8,11,32
	lhz 0,-14(10)
	rldimi 30,31,16,0
	lhz 11,-16(10)
	or 8,8,30
	sldi 31,6,48
	lhz 7,-12(10)
	or 6,31,8
	srwi 31,8,16
	rldimi 11,0,16,0
	lhz 30,-10(10)
	srdi 6,6,48
	sldi 7,7,32
	rldicl 0,8,32,48
	sth 6,-2(9)
	or 11,7,11
	sth 8,-8(9)
	srwi 6,11,16
	srdi 8,11,32
	sth 11,-16(9)
	sth 30,-10(9)
	sth 6,-14(9)
	sth 8,-12(9)
	sth 31,-6(9)
	sth 0,-4(9)
	bne+ 0,.L1452
	slwi 12,28,3
	cmplw 1,29,12
	beq- 1,.L1533
	addi 31,12,1
	slwi 28,28,4
	cmplw 5,29,31
	lhzx 30,4,28
	sthx 30,3,28
	ble- 5,.L1533
	addi 7,12,2
	addi 0,28,2
	cmplw 6,29,7
	lhzx 11,4,0
	sthx 11,3,0
	ble- 6,.L1533
	addi 10,12,3
	addi 6,28,4
	cmplw 7,29,10
	lhzx 8,4,6
	sthx 8,3,6
	ble- 7,.L1533
	addi 9,12,4
	addi 31,28,6
	cmplw 0,29,9
	lhzx 30,4,31
	sthx 30,3,31
	ble- 0,.L1533
	addi 7,12,5
	addi 0,28,8
	cmplw 1,29,7
	lhzx 11,4,0
	sthx 11,3,0
	ble- 1,.L1533
	addi 12,12,6
	addi 10,28,10
	cmplw 5,29,12
	lhzx 29,4,10
	sthx 29,3,10
	ble- 5,.L1533
	addi 28,28,12
	lwz 30,40(1)
	.cfi_restore 30
	lhzx 6,4,28
	lwz 31,44(1)
	.cfi_restore 31
	sthx 6,3,28
	lwz 28,32(1)
	.cfi_restore 28
.L1447:
	andi. 9,5,0x1
	beq- 0,.L1444
.L1550:
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
.L1444:
	lwz 29,36(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L1549:
	.cfi_restore_state
	cmpwi 5,5,0
	addi 29,5,-1
	beq- 5,.L1444
	cmplwi 6,29,14
	ble- 6,.L1457
	addi 9,5,-2
	add 8,3,29
	add 0,4,9
	subf 6,0,8
	addi 7,6,14
	cmplwi 7,7,14
	ble- 7,.L1457
	stw 27,28(1)
	.cfi_offset 27, -20
	addi 11,5,-16
	stw 28,32(1)
	.cfi_offset 28, -16
	add 10,4,11
	add 9,3,11
	stw 31,44(1)
	.cfi_offset 31, -4
	stw 30,40(1)
	.cfi_offset 30, -8
	rldicl 30,5,60,36
.L1458:
	lbz 12,9(10)
	addi 30,30,-1
	addi 10,10,-16
	lbz 28,26(10)
	cmpdi 0,30,0
	addi 9,9,-16
	lbz 27,24(10)
	lbz 8,27(10)
	sldi 6,28,16
	lbz 31,17(10)
	rldimi 27,12,8,0
	lbz 11,18(10)
	or 7,6,27
	sldi 12,8,24
	lbz 0,16(10)
	or 27,12,7
	lbz 28,28(10)
	sldi 7,11,16
	lbz 8,19(10)
	rldimi 0,31,8,0
	or 12,7,0
	lbz 31,29(10)
	sldi 6,28,32
	lbz 0,20(10)
	sldi 11,8,24
	or 27,6,27
	lbz 28,30(10)
	or 7,11,12
	sldi 8,31,40
	lbz 12,21(10)
	sldi 0,0,32
	or 31,8,27
	lbz 6,31(10)
	sldi 27,28,48
	or 28,0,7
	lbz 7,22(10)
	sldi 11,12,40
	or 8,27,31
	sldi 12,6,56
	or 31,11,28
	lbz 0,23(10)
	sldi 27,7,48
	or 6,12,8
	stb 8,24(9)
	or 28,27,31
	srdi 7,6,56
	stb 0,23(9)
	rlwinm 31,28,24,24,31
	rlwinm 11,28,16,24,31
	stb 7,31(9)
	srwi 6,28,24
	rldicl 27,28,32,56
	stb 28,16(9)
	rldicl 12,28,24,56
	srdi 7,28,48
	stb 31,17(9)
	rlwinm 28,8,24,24,31
	rlwinm 31,8,16,24,31
	stb 11,18(9)
	srwi 0,8,24
	rldicl 11,8,32,56
	stb 6,19(9)
	rldicl 6,8,24,56
	rldicl 8,8,16,56
	stb 27,20(9)
	stb 12,21(9)
	stb 7,22(9)
	stb 28,25(9)
	stb 31,26(9)
	stb 0,27(9)
	stb 11,28(9)
	stb 6,29(9)
	stb 8,30(9)
	bne+ 0,.L1458
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 29,5,29
	beq- 0,.L1548
	cmpwi 1,29,0
	lbzx 30,4,29
	addi 27,29,-1
	stbx 30,3,29
	beq- 1,.L1548
	cmpwi 5,27,0
	lbzx 12,4,27
	addi 7,29,-2
	stbx 12,3,27
	beq- 5,.L1548
	cmpwi 6,7,0
	lbzx 28,4,7
	addi 31,29,-3
	stbx 28,3,7
	beq- 6,.L1548
	cmpwi 7,31,0
	lbzx 0,4,31
	addi 11,29,-4
	stbx 0,3,31
	beq- 7,.L1548
	cmpwi 0,11,0
	lbzx 6,4,11
	addi 9,29,-5
	stbx 6,3,11
	beq- 0,.L1548
	cmpwi 1,9,0
	lbzx 8,4,9
	addi 10,29,-6
	stbx 8,3,9
	beq- 1,.L1548
	cmpwi 5,10,0
	lbzx 5,4,10
	addi 30,29,-7
	stbx 5,3,10
	beq- 5,.L1548
	cmpwi 6,30,0
	lbzx 27,4,30
	addi 12,29,-8
	stbx 27,3,30
	beq- 6,.L1548
	cmpwi 7,12,0
	lbzx 7,4,12
	addi 28,29,-9
	stbx 7,3,12
	beq- 7,.L1548
	cmpwi 0,28,0
	lbzx 31,4,28
	addi 0,29,-10
	stbx 31,3,28
	beq- 0,.L1548
	cmpwi 1,0,0
	lbzx 11,4,0
	addi 6,29,-11
	stbx 11,3,0
	beq- 1,.L1548
	cmpwi 5,6,0
	lbzx 9,4,6
	addi 10,29,-12
	stbx 9,3,6
	beq- 5,.L1548
	cmpwi 6,10,0
	lbzx 8,4,10
	addi 30,29,-13
	stbx 8,3,10
	beq- 6,.L1548
	cmpwi 7,30,0
	lbzx 27,4,30
	addi 29,29,-14
	stbx 27,3,30
	beq- 7,.L1548
	lbzx 4,4,29
	stbx 4,3,29
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	b .L1444
.L1533:
	.cfi_offset 28, -16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	andi. 9,5,0x1
	lwz 28,32(1)
	.cfi_restore 28
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	beq- 0,.L1444
	b .L1550
.L1548:
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	lwz 29,36(1)
	addi 1,1,48
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L1451:
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -12
	andi. 9,29,0x1
	addi 11,4,-2
	addi 8,29,-1
	addi 9,3,-2
	beq- 0,.L1524
	mr. 29,8
	lhz 7,0(4)
	mr 11,4
	mr 9,3
	sth 7,0(3)
	beq- 0,.L1447
.L1524:
	lhz 0,2(11)
	addi 29,29,-2
	mr 12,11
	cmpdi 6,29,0
	mr 10,9
	sth 0,2(9)
	addi 11,11,4
	addi 9,9,4
	lhz 6,4(12)
	sth 6,4(10)
	bne+ 6,.L1524
	b .L1447
.L1457:
	rldicl 12,5,0,32
	add 3,3,5
	andi. 8,12,0x1
	addi 5,12,-1
	beq- 0,.L1525
	mr. 12,5
	lbzu 7,-1(10)
	stbu 7,-1(3)
	beq- 0,.L1444
.L1525:
	lbz 0,-1(10)
	addi 12,12,-2
	mr 11,10
	cmpdi 1,12,0
	mr 6,3
	stb 0,-1(3)
	addi 10,10,-2
	addi 3,3,-2
	lbz 9,-2(11)
	stb 9,-2(6)
	bne+ 1,.L1525
	b .L1444
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	srwi 11,5,2
	stw 30,40(1)
	.cfi_offset 30, -8
	rlwinm 30,5,0,0,29
	stw 29,36(1)
	.cfi_offset 29, -12
	blt- 0,.L1556
	add 12,4,5
	cmplw 1,12,3
	bge- 1,.L1684
.L1556:
	cmpwi 5,11,0
	beq- 5,.L1685
	addi 9,11,-1
	cmplwi 7,9,3
	ble- 7,.L1558
	addi 10,4,4
	subf 29,10,3
	cmplwi 0,29,8
	ble- 0,.L1558
	rldicl 12,5,60,36
	srwi 6,5,4
	andi. 9,12,0x1
	addi 0,12,-1
	mr 8,4
	mr 9,3
	beq- 0,.L1651
	mr. 12,0
	lxvd2x 0,0,4
	addi 8,4,16
	stxvd2x 0,0,3
	addi 9,3,16
	beq- 0,.L1648
.L1651:
	addi 12,12,-2
	addi 7,8,16
	lxvd2x 1,0,8
	stxvd2x 1,0,9
	cmpdi 1,12,0
	addi 10,9,16
	lxvd2x 2,0,7
	addi 8,8,32
	addi 9,10,16
	stxvd2x 2,0,10
	bne+ 1,.L1651
.L1648:
	slwi 29,6,2
	cmplw 5,11,29
	beq- 5,.L1562
	addi 0,29,1
	slwi 6,6,4
	cmplw 6,11,0
	lwzx 12,4,6
	stwx 12,3,6
	ble- 6,.L1562
	addi 9,29,2
	addi 8,6,4
	cmplw 7,11,9
	lwzx 11,4,8
	stwx 11,3,8
	ble- 7,.L1562
	addi 7,6,8
	lwzx 10,4,7
	stwx 10,3,7
.L1562:
	cmplw 5,5,30
	ble- 5,.L1551
	subf 29,30,5
	addi 11,29,-1
	cmplwi 6,11,14
	ble- 6,.L1554
	addi 0,30,1
	add 9,3,30
	add 12,4,0
	subf 8,12,9
	cmplwi 7,8,14
	ble- 7,.L1554
	stw 26,24(1)
	.cfi_offset 26, -24
	add 10,4,30
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 31,44(1)
	.cfi_offset 31, -4
	rldicl 31,29,60,36
.L1563:
	lbz 26,9(10)
	addi 31,31,-1
	addi 10,10,16
	lbz 6,-6(10)
	cmpdi 0,31,0
	addi 9,9,16
	lbz 27,-8(10)
	lbz 11,-5(10)
	sldi 7,6,16
	lbz 28,-15(10)
	rldimi 27,26,8,0
	lbz 0,-16(10)
	or 12,7,27
	sldi 8,11,24
	lbz 26,-14(10)
	or 27,8,12
	lbz 6,-4(10)
	rldimi 0,28,8,0
	lbz 12,-3(10)
	sldi 11,26,16
	lbz 28,-13(10)
	sldi 8,6,32
	or 26,11,0
	lbz 0,-12(10)
	or 27,8,27
	sldi 6,12,40
	lbz 11,-11(10)
	sldi 7,28,24
	or 12,6,27
	lbz 28,-2(10)
	or 26,7,26
	sldi 0,0,32
	lbz 27,-1(10)
	lbz 7,-10(10)
	sldi 8,28,48
	or 28,0,26
	sldi 26,11,40
	lbz 0,-9(10)
	or 8,8,12
	or 11,26,28
	sldi 12,7,48
	stb 8,-8(9)
	sldi 6,27,56
	or 28,12,11
	stb 0,-9(9)
	or 27,6,8
	rlwinm 0,28,24,24,31
	stb 28,-16(9)
	srdi 7,27,56
	rlwinm 11,28,16,24,31
	stb 0,-15(9)
	srwi 6,28,24
	rldicl 26,28,32,56
	stb 7,-1(9)
	rldicl 27,28,24,56
	srdi 7,28,48
	stb 11,-14(9)
	rlwinm 28,8,24,24,31
	rlwinm 12,8,16,24,31
	stb 6,-13(9)
	srwi 0,8,24
	rldicl 11,8,32,56
	stb 26,-12(9)
	rldicl 6,8,24,56
	rldicl 8,8,16,56
	stb 27,-11(9)
	stb 7,-10(9)
	stb 28,-7(9)
	stb 12,-6(9)
	stb 0,-5(9)
	stb 11,-4(9)
	stb 6,-3(9)
	stb 8,-2(9)
	bne+ 0,.L1563
	andi. 9,29,0xf
	rlwinm 29,29,0,0,27
	add 30,29,30
	beq- 0,.L1683
	addi 31,30,1
	lbzx 26,4,30
	cmplw 1,5,31
	stbx 26,3,30
	ble- 1,.L1683
	addi 27,30,2
	lbzx 7,4,31
	cmplw 5,27,5
	stbx 7,3,31
	bge- 5,.L1683
	addi 28,30,3
	lbzx 12,4,27
	cmplw 6,5,28
	stbx 12,3,27
	ble- 6,.L1683
	addi 0,30,4
	lbzx 11,4,28
	cmplw 7,5,0
	stbx 11,3,28
	ble- 7,.L1683
	addi 6,30,5
	lbzx 8,4,0
	cmplw 0,5,6
	stbx 8,3,0
	ble- 0,.L1683
	addi 10,30,6
	lbzx 9,4,6
	cmplw 1,5,10
	stbx 9,3,6
	ble- 1,.L1683
	addi 29,30,7
	lbzx 31,4,10
	cmplw 5,5,29
	stbx 31,3,10
	ble- 5,.L1683
	addi 26,30,8
	lbzx 27,4,29
	cmplw 6,5,26
	stbx 27,3,29
	ble- 6,.L1683
	addi 7,30,9
	lbzx 28,4,26
	cmplw 7,5,7
	stbx 28,3,26
	ble- 7,.L1683
	addi 12,30,10
	lbzx 0,4,7
	cmplw 0,5,12
	stbx 0,3,7
	ble- 0,.L1683
	addi 11,30,11
	lbzx 6,4,12
	cmplw 1,5,11
	stbx 6,3,12
	ble- 1,.L1683
	addi 10,30,12
	lbzx 8,4,11
	cmplw 5,5,10
	stbx 8,3,11
	ble- 5,.L1683
	addi 9,30,13
	lbzx 29,4,10
	cmplw 6,5,9
	stbx 29,3,10
	ble- 6,.L1683
	addi 30,30,14
	lbzx 31,4,9
	cmplw 7,5,30
	stbx 31,3,9
	ble- 7,.L1683
	lbzx 4,4,30
	stbx 4,3,30
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 31,44(1)
	.cfi_restore 31
	b .L1551
.L1684:
	cmpwi 5,5,0
	addi 29,5,-1
	beq- 5,.L1551
	cmplwi 6,29,14
	ble- 6,.L1567
	addi 9,5,-2
	add 8,3,29
	add 0,4,9
	subf 6,0,8
	addi 7,6,14
	cmplwi 7,7,14
	ble- 7,.L1567
	stw 26,24(1)
	.cfi_offset 26, -24
	addi 11,5,-16
	rldicl 30,5,60,36
	stw 27,28(1)
	.cfi_offset 27, -20
	add 10,4,11
	add 9,3,11
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 31,44(1)
	.cfi_offset 31, -4
.L1568:
	lbz 12,9(10)
	addi 30,30,-1
	addi 10,10,-16
	lbz 27,26(10)
	cmpdi 0,30,0
	addi 9,9,-16
	lbz 26,24(10)
	lbz 28,27(10)
	sldi 8,27,16
	lbz 31,17(10)
	rldimi 26,12,8,0
	lbz 11,18(10)
	or 6,8,26
	sldi 7,28,24
	lbz 0,16(10)
	or 12,7,6
	lbz 26,28(10)
	sldi 28,11,16
	lbz 27,19(10)
	rldimi 0,31,8,0
	lbz 31,29(10)
	or 11,28,0
	sldi 8,26,32
	lbz 0,20(10)
	or 6,8,12
	sldi 7,27,24
	lbz 12,30(10)
	sldi 26,31,40
	or 27,7,11
	lbz 28,21(10)
	or 31,26,6
	sldi 11,0,32
	lbz 6,31(10)
	or 0,11,27
	sldi 8,12,48
	lbz 7,22(10)
	sldi 12,28,40
	or 8,8,31
	or 27,12,0
	sldi 26,6,56
	lbz 28,23(10)
	sldi 11,7,48
	or 31,26,8
	stb 8,24(9)
	or 7,11,27
	srdi 6,31,56
	stb 28,23(9)
	rlwinm 0,7,24,24,31
	rlwinm 12,7,16,24,31
	stb 6,31(9)
	rldicl 26,7,32,56
	srwi 6,7,24
	stb 7,16(9)
	rldicl 27,7,24,56
	rlwinm 28,8,24,24,31
	stb 0,17(9)
	rlwinm 31,8,16,24,31
	srwi 0,8,24
	stb 12,18(9)
	rldicl 11,8,32,56
	rldicl 12,8,24,56
	stb 6,19(9)
	srdi 7,7,48
	rldicl 8,8,16,56
	stb 26,20(9)
	stb 27,21(9)
	stb 7,22(9)
	stb 28,25(9)
	stb 31,26(9)
	stb 0,27(9)
	stb 11,28(9)
	stb 12,29(9)
	stb 8,30(9)
	bne+ 0,.L1568
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 29,5,29
	beq- 0,.L1683
	cmpwi 1,29,0
	lbzx 30,4,29
	addi 6,29,-1
	stbx 30,3,29
	beq- 1,.L1683
	cmpwi 5,6,0
	lbzx 26,4,6
	addi 27,29,-2
	stbx 26,3,6
	beq- 5,.L1683
	cmpwi 6,27,0
	lbzx 7,4,27
	addi 28,29,-3
	stbx 7,3,27
	beq- 6,.L1683
	cmpwi 7,28,0
	lbzx 31,4,28
	addi 0,29,-4
	stbx 31,3,28
	beq- 7,.L1683
	cmpwi 0,0,0
	lbzx 11,4,0
	addi 12,29,-5
	stbx 11,3,0
	beq- 0,.L1683
	cmpwi 1,12,0
	lbzx 8,4,12
	addi 10,29,-6
	stbx 8,3,12
	beq- 1,.L1683
	cmpwi 5,10,0
	lbzx 5,4,10
	addi 9,29,-7
	stbx 5,3,10
	beq- 5,.L1683
	cmpwi 6,9,0
	lbzx 30,4,9
	addi 6,29,-8
	stbx 30,3,9
	beq- 6,.L1683
	cmpwi 7,6,0
	lbzx 26,4,6
	addi 27,29,-9
	stbx 26,3,6
	beq- 7,.L1683
	cmpwi 0,27,0
	lbzx 7,4,27
	addi 28,29,-10
	stbx 7,3,27
	beq- 0,.L1683
	cmpwi 1,28,0
	lbzx 31,4,28
	addi 0,29,-11
	stbx 31,3,28
	bne+ 1,.L1686
.L1683:
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 31,44(1)
	.cfi_restore 31
.L1551:
	lwz 29,36(1)
	lwz 30,40(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L1685:
	.cfi_restore_state
	cmpwi 6,5,0
	mr 29,5
	beq- 6,.L1551
.L1554:
	rldicl 7,29,0,32
	addi 5,30,-1
	andi. 9,7,0x1
	add 8,4,5
	add 9,3,5
	addi 3,7,-1
	beq- 0,.L1649
	mr. 7,3
	lbzu 12,1(8)
	stbu 12,1(9)
	beq- 0,.L1551
.L1649:
	lbz 0,1(8)
	addi 7,7,-2
	mr 11,8
	cmpdi 1,7,0
	mr 6,9
	stb 0,1(9)
	addi 8,8,2
	addi 9,9,2
	lbz 10,2(11)
	stb 10,2(6)
	bne+ 1,.L1649
	b .L1551
.L1558:
	andi. 10,11,0x1
	addi 12,4,-4
	addi 29,11,-1
	addi 8,3,-4
	beq- 0,.L1650
	mr. 11,29
	lwz 0,0(4)
	mr 12,4
	mr 8,3
	stw 0,0(3)
	beq- 0,.L1562
.L1650:
	lwz 9,4(12)
	addi 11,11,-2
	mr 6,12
	cmpdi 1,11,0
	addi 7,8,4
	stw 9,4(8)
	addi 12,12,8
	addi 8,8,8
	lwz 10,8(6)
	stw 10,4(7)
	bne+ 1,.L1650
	b .L1562
.L1686:
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 31, -4
	cmpwi 5,0,0
	lbzx 11,4,0
	addi 12,29,-12
	stbx 11,3,0
	beq- 5,.L1683
	cmpwi 6,12,0
	lbzx 8,4,12
	addi 9,29,-13
	stbx 8,3,12
	beq- 6,.L1683
	cmpwi 7,9,0
	lbzx 10,4,9
	addi 29,29,-14
	stbx 10,3,9
	beq- 7,.L1683
	lbzx 4,4,29
	stbx 4,3,29
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 31,44(1)
	.cfi_restore 31
	b .L1551
.L1567:
	rldicl 30,5,0,32
	add 3,3,5
	andi. 8,30,0x1
	addi 5,30,-1
	beq- 0,.L1652
	mr. 30,5
	lbzu 6,-1(12)
	stbu 6,-1(3)
	beq- 0,.L1551
.L1652:
	lbz 0,-1(12)
	addi 30,30,-2
	mr 7,12
	cmpdi 1,30,0
	mr 11,3
	stb 0,-1(3)
	addi 12,12,-2
	addi 3,3,-2
	lbz 8,-2(7)
	stb 8,-2(11)
	bne+ 1,.L1652
	b .L1551
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
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
	bne- 0,.L1696
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1697
	srwi. 10,9,12
	bne- 0,.L1698
	srwi. 10,9,11
	bne- 0,.L1699
	srwi. 10,9,10
	bne- 0,.L1700
	srwi. 10,9,9
	bne- 0,.L1701
	srwi. 10,9,8
	bne- 0,.L1702
	srwi. 10,9,7
	bne- 0,.L1703
	srwi. 10,9,6
	bne- 0,.L1704
	srwi. 10,9,5
	bne- 0,.L1705
	srwi. 10,9,4
	bne- 0,.L1706
	srwi. 10,9,3
	bne- 0,.L1707
	srwi. 10,9,2
	bne- 0,.L1708
	srwi. 10,9,1
	bne- 0,.L1709
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1696:
	li 3,0
	blr
.L1707:
	li 3,12
	blr
.L1697:
	li 3,2
	blr
.L1698:
	li 3,3
	blr
.L1699:
	li 3,4
	blr
.L1700:
	li 3,5
	blr
.L1701:
	li 3,6
	blr
.L1702:
	li 3,7
	blr
.L1703:
	li 3,8
	blr
.L1704:
	li 3,9
	blr
.L1705:
	li 3,10
	blr
.L1706:
	li 3,11
	blr
.L1708:
	li 3,13
	blr
.L1709:
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
	bne- 0,.L1714
	andi. 9,3,0x2
	bne- 0,.L1715
	andi. 9,3,0x4
	bne- 0,.L1716
	andi. 9,3,0x8
	bne- 0,.L1717
	andi. 9,3,0x10
	bne- 0,.L1718
	andi. 9,3,0x20
	bne- 0,.L1719
	andi. 9,3,0x40
	bne- 0,.L1720
	andi. 9,3,0x80
	bne- 0,.L1721
	andi. 9,3,0x100
	bne- 0,.L1722
	andi. 9,3,0x200
	bne- 0,.L1723
	andi. 9,3,0x400
	bne- 0,.L1724
	andi. 9,3,0x800
	bne- 0,.L1725
	andi. 9,3,0x1000
	bne- 0,.L1726
	andi. 9,3,0x2000
	bne- 0,.L1727
	andi. 9,3,0x4000
	bne- 0,.L1728
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1714:
	li 3,0
	blr
.L1715:
	li 3,1
	blr
.L1726:
	li 3,12
	blr
.L1716:
	li 3,2
	blr
.L1717:
	li 3,3
	blr
.L1718:
	li 3,4
	blr
.L1719:
	li 3,5
	blr
.L1720:
	li 3,6
	blr
.L1721:
	li 3,7
	blr
.L1722:
	li 3,8
	blr
.L1723:
	li 3,9
	blr
.L1724:
	li 3,10
	blr
.L1725:
	li 3,11
	blr
.L1727:
	li 3,13
	blr
.L1728:
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
	bne- 0,.L1736
	fctiwz 1,1
	mfvsrwz 3,1
	blr
.L1736:
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
	lvx 12,0,3
	vsraw 11,0,12
	lvx 13,0,5
	xxland 44,43,42
	vsraw 13,0,13
	lvx 11,0,4
	xxland 45,45,42
	vsraw 11,0,11
	xxland 43,43,42
	vadduwm 12,12,11
	lvx 11,0,6
	vadduwm 13,13,12
	vsraw 0,0,11
	xxland 42,32,42
	vadduwm 12,10,13
	xxsldwi 43,33,44,2
	vadduwm 13,11,12
	xxsldwi 33,33,45,3
	vadduwm 0,1,13
	vspltw 10,0,3
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
	lvx 12,0,3
	vsraw 11,0,12
	lvx 13,0,5
	xxland 44,43,42
	vsraw 13,0,13
	lvx 11,0,4
	xxland 45,45,42
	vsraw 11,0,11
	xxland 43,43,42
	vadduwm 12,12,11
	lvx 11,0,6
	vadduwm 13,13,12
	vsraw 0,0,11
	xxland 42,32,42
	vadduwm 12,10,13
	xxsldwi 43,33,44,2
	vadduwm 13,11,12
	xxsldwi 33,33,45,3
	vadduwm 0,1,13
	vspltw 10,0,3
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
.L1743:
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
	bne+ 0,.L1743
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
.L1749:
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
	bne+ 0,.L1749
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
	blt+ 0,.L1755
	b .L1777
.L1759:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1757
	blt- 5,.L1774
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L1757
	bdz .L1758
.L1755:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1759
.L1774:
	cmplw 7,3,4
	b .L1760
.L1757:
	cmpwi 6,0,0
	beq- 6,.L1764
.L1760:
	li 10,0
	li 11,1
	li 6,0
.L1761:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1761
.L1758:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L1777:
	isel 9,0,0,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1758
.L1764:
	li 10,0
	b .L1758
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
	mulld 0,3,4
	srdi 4,0,32
	mr 3,0
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
	mulld 0,3,4
	srdi 4,0,32
	mr 3,0
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
	blt- 0,.L1801
	beq- 0,.L1794
	li 6,0
.L1790:
	li 10,32
	li 8,0
	b .L1793
.L1802:
	beq- 7,.L1792
.L1793:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 8,8,5
	slwi 3,3,1
	bne+ 0,.L1802
.L1792:
	cmpwi 1,6,0
	neg 3,8
	isel 3,8,3,6
	blr
.L1801:
	neg 4,4
	li 6,1
	b .L1790
.L1794:
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
	bge+ 0,.L1804
	neg 3,3
	li 9,0
	li 11,1
.L1804:
	cmpwi 1,4,0
	bge+ 1,.L1805
	neg 4,4
	mr 11,9
.L1805:
	cmplw 5,3,4
	li 8,16
	mr 10,3
	li 9,1
	mtctr 8
	bgt+ 5,.L1806
	b .L1829
.L1810:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,3,4
	ble- 7,.L1811
	bdz .L1811
.L1806:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 6,3,4
	bgt+ 6,.L1810
.L1811:
	cmpwi 0,9,0
	li 3,0
	li 6,1
	li 5,0
	beq- 0,.L1809
.L1808:
	cmplw 1,10,4
	subf 0,4,10
	srwi 4,4,1
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 12,5,9,22
	srwi. 9,9,1
	or 3,3,12
	isel 10,10,0,22
	bne+ 0,.L1808
.L1809:
	cmpwi 6,11,0
	neg 4,3
	isel 3,3,4,26
	blr
.L1829:
	isel 3,0,9,20
	b .L1809
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
	bge+ 0,.L1834
	neg 3,3
	li 11,1
.L1834:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 8,3
	subf 12,9,4
	li 10,1
	cmplw 1,3,12
	mtctr 7
	bgt+ 1,.L1835
	b .L1857
.L1839:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 6,3,12
	ble- 6,.L1840
	bdz .L1840
.L1835:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 5,3,12
	bgt+ 5,.L1839
.L1840:
	cmpwi 7,10,0
	li 5,1
	beq- 7,.L1861
.L1837:
	cmplw 1,8,12
	srwi. 10,10,1
	subf 3,12,8
	srwi 12,12,1
	isel 6,0,5,4
	cmpwi 5,6,0
	isel 8,8,3,22
	bne+ 0,.L1837
.L1838:
	cmpwi 6,11,0
	neg 11,8
	isel 3,8,11,26
	blr
.L1861:
	cmpwi 6,11,0
	mr 8,3
	neg 11,8
	isel 3,8,11,26
	blr
.L1857:
	subf 0,12,3
	isel 8,3,0,4
	b .L1838
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
	bge- 0,.L2028
	andi. 9,4,0x8000
	bne- 0,.L1867
	rlwinm 9,4,1,16,30
	cmplw 7,3,9
	ble- 7,.L1940
	andi. 10,9,0x8000
	bne- 0,.L1940
	rlwinm 9,4,2,16,29
	cmplw 7,3,9
	ble- 7,.L1942
	andi. 10,9,0x8000
	bne- 0,.L1942
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L1944
	andi. 10,9,0x8000
	bne- 0,.L1944
	rlwinm 9,4,4,16,27
	cmplw 7,3,9
	ble- 7,.L1946
	andi. 10,9,0x8000
	bne- 0,.L1946
	rlwinm 9,4,5,16,26
	cmplw 7,3,9
	ble- 7,.L1948
	andi. 10,9,0x8000
	bne- 0,.L1948
	rlwinm 9,4,6,16,25
	cmplw 7,3,9
	ble- 7,.L1950
	andi. 10,9,0x8000
	bne- 0,.L1950
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L1952
	andi. 10,9,0x8000
	bne- 0,.L1952
	rlwinm 9,4,8,16,23
	cmplw 7,3,9
	ble- 7,.L1954
	andi. 10,9,0x8000
	bne- 0,.L1954
	rlwinm 9,4,9,16,22
	cmplw 7,3,9
	ble- 7,.L1956
	andi. 10,9,0x8000
	bne- 0,.L1956
	rlwinm 9,4,10,16,21
	cmplw 7,3,9
	ble- 7,.L1958
	andi. 10,9,0x8000
	bne- 0,.L1958
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L1960
	andi. 10,9,0x8000
	bne- 0,.L1960
	rlwinm 9,4,12,16,19
	cmplw 7,3,9
	ble- 7,.L1962
	andi. 10,9,0x8000
	bne- 0,.L1962
	rlwinm 9,4,13,16,18
	cmplw 7,3,9
	ble- 7,.L1964
	andi. 10,9,0x8000
	bne- 0,.L1964
	rlwinm 9,4,14,16,17
	cmplw 7,3,9
	ble- 7,.L1966
	andi. 10,9,0x8000
	bne- 0,.L1966
	rlwinm 4,4,15,16,16
	cmplw 6,3,4
	ble- 6,.L1967
	cmpwi 1,4,0
	li 12,0
	bne- 1,.L2029
.L1870:
	cmpwi 7,5,0
	beq+ 7,.L1929
	mr 12,3
.L1929:
	rlwinm 3,12,0,0xffff
	blr
.L1940:
	li 8,2
.L1869:
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
	beq- 0,.L1870
	cmplw 7,3,7
	subf 6,7,3
	rlwinm 12,6,0,0xffff
	li 10,0
	isel 4,0,4,28
	cmpwi 6,4,0
	isel 3,3,12,26
	beq- 6,.L1878
	mr 10,0
.L1878:
	srwi. 7,8,3
	or 0,11,10
	mr 12,0
	srwi 11,8,3
	srwi 7,9,3
	beq- 0,.L1870
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1882
	mr 4,11
.L1882:
	srwi. 7,8,4
	or 0,0,4
	mr 12,0
	srwi 11,8,4
	srwi 10,9,4
	beq- 0,.L1870
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1886
	mr 4,11
.L1886:
	srwi. 7,8,5
	or 0,0,4
	mr 12,0
	srwi 11,8,5
	srwi 7,9,5
	beq- 0,.L1870
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1890
	mr 4,11
.L1890:
	srwi. 7,8,6
	or 0,0,4
	mr 12,0
	srwi 11,8,6
	srwi 10,9,6
	beq- 0,.L1870
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1894
	mr 4,11
.L1894:
	srwi. 7,8,7
	or 0,0,4
	mr 12,0
	srwi 11,8,7
	srwi 7,9,7
	beq- 0,.L1870
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1898
	mr 4,11
.L1898:
	srwi. 7,8,8
	or 0,0,4
	mr 12,0
	srwi 11,8,8
	srwi 10,9,8
	beq- 0,.L1870
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1902
	mr 4,11
.L1902:
	srwi. 7,8,9
	or 0,0,4
	mr 12,0
	srwi 11,8,9
	srwi 7,9,9
	beq- 0,.L1870
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1906
	mr 4,11
.L1906:
	srwi. 7,8,10
	or 0,0,4
	mr 12,0
	srwi 11,8,10
	srwi 10,9,10
	beq- 0,.L1870
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1910
	mr 4,11
.L1910:
	srwi. 7,8,11
	or 0,0,4
	mr 12,0
	srwi 11,8,11
	srwi 7,9,11
	beq- 0,.L1870
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1914
	mr 4,11
.L1914:
	srwi. 7,8,12
	or 0,0,4
	mr 12,0
	srwi 11,8,12
	srwi 10,9,12
	beq- 0,.L1870
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1918
	mr 4,11
.L1918:
	srwi. 7,8,13
	or 0,0,4
	mr 12,0
	srwi 11,8,13
	srwi 7,9,13
	beq- 0,.L1870
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1922
	mr 4,11
.L1922:
	srwi. 7,8,14
	or 0,0,4
	mr 12,0
	srwi 11,8,14
	srwi 10,9,14
	beq- 0,.L1870
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1926
	mr 4,11
.L1926:
	cmpwi 1,8,16384
	or 8,0,4
	srwi 9,9,15
	mr 12,8
	beq- 1,.L1870
	cmplw 5,3,9
	li 0,1
	subf 11,9,3
	rlwinm 7,11,0,0xffff
	isel 6,0,0,20
	cmpwi 0,6,0
	or 12,8,6
	isel 3,3,7,2
	b .L1870
.L1942:
	li 8,4
	b .L1869
.L1944:
	li 8,8
	b .L1869
.L1946:
	li 8,16
	b .L1869
.L1956:
	li 8,512
	b .L1869
.L1948:
	li 8,32
	b .L1869
.L1950:
	li 8,64
	b .L1869
.L1952:
	li 8,128
	b .L1869
.L1954:
	li 8,256
	b .L1869
.L2028:
	cmpw 1,4,3
	li 10,0
	li 6,1
	subf 9,4,3
	rlwinm 0,9,0,0xffff
	isel 12,6,10,6
	cmpwi 5,12,0
	isel 3,3,0,22
	b .L1870
.L1958:
	li 8,1024
	b .L1869
.L1960:
	li 8,2048
	b .L1869
.L1962:
	li 8,4096
	b .L1869
.L1964:
	li 8,8192
	b .L1869
.L1966:
	li 8,16384
	b .L1869
.L2029:
	li 11,0
	li 8,0
	cmplwi 7,3,32768
	ori 8,8,0x8000
	ori 9,11,0x8000
	b .L1869
.L1967:
	li 7,0
	li 8,0
	cmplwi 7,3,32768
	ori 9,7,0x8000
	ori 8,8,0x8000
	b .L1869
.L1867:
	subf 3,4,3
	li 12,1
	rlwinm 3,3,0,0xffff
	b .L1870
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
	bgt+ 7,.L2031
	b .L2052
.L2035:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L2033
	blt- 5,.L2036
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L2033
	bdz .L2034
.L2031:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L2035
.L2036:
	li 10,0
	li 11,1
	li 6,0
.L2037:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L2037
.L2034:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L2033:
	cmpwi 6,0,0
	bne+ 6,.L2036
	li 10,0
	b .L2034
.L2052:
	subf 4,4,3
	isel 9,0,0,28
	isel 3,3,4,28
	rlwinm 10,9,0,0xff
	b .L2034
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	beq- 0,.L2056
	addi 5,5,-32
	li 11,0
	slw 8,0,5
.L2057:
	sldi 12,8,32
	or 4,11,12
.L2055:
	mr 3,4
	srdi 4,4,32
	blr
.L2056:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L2055
	subfic 9,5,32
	sradi 10,0,32
	srw 6,0,9
	slw 7,10,5
	or 8,6,7
	slw 11,0,5
	b .L2057
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	beq- 0,.L2062
	sradi 11,0,32
	addi 12,5,-32
	sraw 10,11,12
	srawi 5,11,31
.L2063:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L2061:
	srdi 4,6,32
	mr 3,6
	blr
.L2062:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L2061
	sradi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	sraw 5,6,5
	b .L2063
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	srdi 9,0,32
	rotlwi 10,0,24
	rotlwi 5,9,24
	rlwimi 10,0,8,8,15
	rlwimi 5,9,8,8,15
	rlwimi 10,0,8,24,31
	rlwimi 5,9,8,24,31
	rldimi 5,10,32,0
	srdi 4,5,32
	mr 3,5
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
	rldicl 3,3,0,32
	sldi 4,4,32
	rldicl 5,5,0,32
	sldi 6,6,32
	or 0,3,4
	or 7,5,6
	sradi 8,0,32
	sradi 10,7,32
	cmpw 0,8,10
	blt- 0,.L2072
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 3,9,1
	blr
.L2072:
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
	rldicl 3,3,0,32
	sldi 4,4,32
	rldicl 5,5,0,32
	sldi 6,6,32
	or 0,3,4
	or 7,5,6
	sradi 8,0,32
	sradi 10,7,32
	cmpw 0,8,10
	blt- 0,.L2078
	li 3,1
	bgtlr- 0
	cmplw 7,0,7
	cmplw 1,0,7
	li 11,0
	li 9,1
	li 12,-1
	isel 3,9,11,29
	isel 3,12,3,4
	blr
.L2078:
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	beq- 0,.L2083
	addi 12,5,-32
	srdi 11,0,32
	srw 10,11,12
	li 5,0
.L2084:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L2082:
	srdi 4,6,32
	mr 3,6
	blr
.L2083:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L2082
	srdi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	srw 5,6,5
	b .L2084
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	rlwinm 9,4,0,16,31
	rlwinm 8,3,0,16,31
	srwi 10,3,16
	mullw 3,8,9
	srwi 4,4,16
	mullw 0,9,10
	mullw 5,8,4
	srwi 7,3,16
	mullw 6,10,4
	add 11,0,7
	rlwinm 12,11,0,0xffff
	srwi 9,11,16
	add 8,5,12
	srwi 10,8,16
	rlwimi 3,8,16,0,31-16
	add 4,9,6
	add 4,4,10
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
	rldicl 5,5,0,32
	rlwinm 8,3,0,0xffff
	rlwinm 9,5,0,0xffff
	srwi 7,3,16
	mullw 10,8,9
	srwi 11,5,16
	sldi 6,6,32
	or 5,5,6
	mullw 9,9,7
	sradi 0,5,32
	mullw 8,8,11
	srwi 12,10,16
	mullw 11,7,11
	add 6,9,12
	rlwinm 7,6,0,0xffff
	srwi 9,6,16
	add 12,8,7
	mullw 0,3,0
	srwi 3,12,16
	rlwimi 10,12,16,0,31-16
	add 8,9,11
	mullw 4,4,5
	rldicl 10,10,0,32
	add 5,8,3
	sldi 11,5,32
	or 3,10,11
	sradi 6,3,32
	add 7,0,6
	add 4,7,4
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
	neg 5,0
	srdi 4,5,32
	mr 3,5
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 0,3,4
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
	rldicl 3,3,0,32
	sldi 4,4,32
	lis 10,0x5555
	or 0,3,4
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
	beq- 0,.L2096
.L2098:
	fmul 1,1,0
.L2096:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L2097
	andi. 10,9,0x1
	fmul 0,0,0
	bne- 0,.L2098
.L2102:
	srawi 9,9,1
	addze 9,9
	fmul 0,0,0
	andi. 10,9,0x1
	bne- 0,.L2098
	b .L2102
.L2097:
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
	beq- 0,.L2104
.L2106:
	fmuls 1,1,0
.L2104:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L2105
	andi. 10,9,0x1
	fmuls 0,0,0
	bne- 0,.L2106
.L2110:
	srawi 9,9,1
	addze 9,9
	fmuls 0,0,0
	andi. 10,9,0x1
	bne- 0,.L2106
	b .L2110
.L2105:
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
	sldi 4,4,32
	sldi 6,6,32
	srdi 10,4,32
	srdi 9,6,32
	cmplw 0,10,9
	rldicl 3,3,0,32
	rldicl 5,5,0,32
	or 0,3,4
	or 7,5,6
	blt- 0,.L2113
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L2113:
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
	sldi 4,4,32
	sldi 6,6,32
	srdi 10,4,32
	srdi 9,6,32
	cmplw 0,10,9
	rldicl 3,3,0,32
	rldicl 5,5,0,32
	or 0,3,4
	or 7,5,6
	blt- 0,.L2119
	li 3,1
	bgtlr- 0
	cmplw 7,0,7
	cmplw 1,0,7
	li 8,0
	li 11,1
	li 12,-1
	isel 4,11,8,29
	isel 3,12,4,4
	blr
.L2119:
	li 3,-1
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
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
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC11:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC14,.LC20+4
	.section	.rodata.cst4
	.align 2
.LC15:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC20:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC21:
	.long	0
	.long	1071644672
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
