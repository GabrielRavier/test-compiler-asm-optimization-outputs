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
	cmpwi 7,5,0
	add 4,4,5
	add 9,3,5
	beqlr- 7
	rldicl 11,5,0,32
	andi. 10,11,0x1
	addi 8,11,-1
	beq- 0,.L98
	mr. 11,8
	lbzu 12,-1(4)
	stbu 12,-1(9)
	beqlr- 0
.L98:
	lbz 5,-1(4)
	addi 11,11,-2
	mr 7,4
	cmpdi 1,11,0
	addi 10,9,-1
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 6,-2(7)
	stb 6,-1(10)
	beqlr- 1
	lbz 5,-1(4)
	addi 11,11,-2
	mr 7,4
	cmpdi 1,11,0
	addi 10,9,-1
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 6,-2(7)
	stb 6,-1(10)
	bne+ 1,.L98
	blr
.L2:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 6,5,-1
	cmplwi 5,6,29
	ble- 5,.L5
	addi 11,4,1
	subf 9,11,3
	cmplwi 6,9,14
	ble- 6,.L5
	neg 10,3
	andi. 9,10,0xf
	beq- 0,.L27
	andi. 8,10,0xe
	lbz 8,0(4)
	addi 12,3,1
	stb 8,0(3)
	beq- 0,.L6
	cmplwi 7,9,2
	lbz 0,1(4)
	addi 11,4,2
	addi 12,3,2
	addi 6,5,-2
	stb 0,1(3)
	ble- 7,.L6
	andi. 8,10,0xc
	lbz 7,2(4)
	addi 11,4,3
	addi 12,3,3
	addi 6,5,-3
	stb 7,2(3)
	beq- 0,.L6
	cmplwi 1,9,4
	lbz 8,3(4)
	addi 11,4,4
	addi 12,3,4
	addi 6,5,-4
	stb 8,3(3)
	ble- 1,.L6
	cmplwi 5,9,5
	lbz 0,4(4)
	addi 11,4,5
	addi 12,3,5
	addi 6,5,-5
	stb 0,4(3)
	beq- 5,.L6
	cmplwi 6,9,6
	lbz 7,5(4)
	addi 11,4,6
	addi 12,3,6
	addi 6,5,-6
	stb 7,5(3)
	beq- 6,.L6
	andi. 10,10,0x8
	lbz 10,6(4)
	addi 11,4,7
	addi 12,3,7
	addi 6,5,-7
	stb 10,6(3)
	beq- 0,.L6
	cmplwi 7,9,8
	lbz 8,7(4)
	addi 11,4,8
	addi 12,3,8
	addi 6,5,-8
	stb 8,7(3)
	ble- 7,.L6
	cmplwi 1,9,9
	lbz 0,8(4)
	addi 11,4,9
	addi 12,3,9
	addi 6,5,-9
	stb 0,8(3)
	beq- 1,.L6
	cmplwi 5,9,10
	lbz 7,9(4)
	addi 11,4,10
	addi 12,3,10
	addi 6,5,-10
	stb 7,9(3)
	beq- 5,.L6
	cmplwi 6,9,11
	lbz 10,10(4)
	addi 11,4,11
	addi 12,3,11
	addi 6,5,-11
	stb 10,10(3)
	beq- 6,.L6
	cmplwi 0,9,12
	lbz 8,11(4)
	addi 11,4,12
	addi 12,3,12
	addi 6,5,-12
	stb 8,11(3)
	beq- 0,.L6
	cmplwi 7,9,13
	lbz 0,12(4)
	addi 11,4,13
	addi 12,3,13
	addi 6,5,-13
	stb 0,12(3)
	beq- 7,.L6
	cmplwi 1,9,15
	lbz 7,13(4)
	addi 11,4,14
	addi 12,3,14
	addi 6,5,-14
	stb 7,13(3)
	bne- 1,.L6
	lbz 10,14(4)
	addi 11,4,15
	addi 12,3,15
	addi 6,5,-15
	stb 10,14(3)
.L6:
	subf 5,9,5
	add 8,4,9
	lvx 0,4,9
	rldicl 7,5,60,36
	neg 10,8
	andi. 8,7,0x1
	addi 0,9,15
	lvsl 13,0,10
	addi 8,7,-1
	add 4,4,0
	add 9,3,9
	li 10,0
	beq- 0,.L100
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,4
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L97
.L100:
	addi 7,7,-2
	addi 0,10,16
	lvx 1,4,10
	vperm 0,1,0,13
	cmpdi 5,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,4,0
	vperm 1,0,1,13
	stvx 1,9,0
	bne+ 5,.L100
.L97:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 6,5,6
	add 8,11,5
	add 4,12,5
	beqlr- 0
	cmplwi 6,6,1
	lbzx 11,11,5
	stbx 11,12,5
	beqlr- 6
	cmplwi 7,6,2
	lbz 12,1(8)
	stb 12,1(4)
	beqlr- 7
	cmplwi 1,6,3
	lbz 9,2(8)
	stb 9,2(4)
	beqlr- 1
	cmplwi 5,6,4
	lbz 7,3(8)
	stb 7,3(4)
	beqlr- 5
	cmplwi 0,6,5
	lbz 10,4(8)
	stb 10,4(4)
	beqlr- 0
	cmplwi 6,6,6
	lbz 0,5(8)
	stb 0,5(4)
	beqlr- 6
	cmplwi 7,6,7
	lbz 5,6(8)
	stb 5,6(4)
	beqlr- 7
	cmplwi 1,6,8
	lbz 11,7(8)
	stb 11,7(4)
	beqlr- 1
	cmplwi 5,6,9
	lbz 12,8(8)
	stb 12,8(4)
	beqlr- 5
	cmplwi 0,6,10
	lbz 9,9(8)
	stb 9,9(4)
	beqlr- 0
	cmplwi 6,6,11
	lbz 7,10(8)
	stb 7,10(4)
	beqlr- 6
	cmplwi 7,6,12
	lbz 10,11(8)
	stb 10,11(4)
	beqlr- 7
	cmplwi 1,6,13
	lbz 0,12(8)
	stb 0,12(4)
	beqlr- 1
	cmplwi 5,6,14
	lbz 6,13(8)
	stb 6,13(4)
	beqlr- 5
	lbz 8,14(8)
	stb 8,14(4)
	blr
.L5:
	rldicl 5,5,0,32
	addi 12,4,-1
	andi. 10,5,0x1
	addi 11,5,-1
	addi 9,3,-1
	beq- 0,.L99
	mr. 5,11
	mr 12,4
	lbz 4,0(4)
	mr 9,3
	stb 4,0(3)
	beqlr- 0
.L99:
	lbz 10,1(12)
	addi 5,5,-2
	mr 7,12
	cmpdi 6,5,0
	mr 6,9
	stb 10,1(9)
	addi 12,12,2
	addi 9,9,2
	lbz 0,2(7)
	stb 0,2(6)
	beqlr- 6
	lbz 10,1(12)
	addi 5,5,-2
	mr 7,12
	cmpdi 6,5,0
	mr 6,9
	stb 10,1(9)
	addi 12,12,2
	addi 9,9,2
	lbz 0,2(7)
	stb 0,2(6)
	bne+ 6,.L99
	blr
.L27:
	mr 11,4
	mr 12,3
	mr 6,5
	b .L6
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
	beq- 0,.L106
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L127
.L116:
	srwi 0,6,1
	mtctr 0
	b .L107
.L109:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L124
	addi 3,3,1
	bdz .L106
.L107:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L109
.L124:
	addi 3,3,1
	blr
.L127:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L124
	cmpwi 5,8,0
	addi 3,3,1
	bne+ 5,.L116
.L106:
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
	beq- 0,.L132
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L149
.L135:
	srwi 0,5,1
	mtctr 0
.L129:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L129
.L132:
	li 3,0
	blr
.L149:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,1
	bne+ 5,.L135
	b .L132
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
	beq- 0,.L155
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L170
.L158:
	srwi 0,5,1
	mtctr 0
	b .L151
.L153:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L167
	bdz .L155
.L151:
	lbz 10,0(3)
	addi 7,3,1
	addi 5,4,1
	lbz 9,0(4)
	cmpw 6,10,9
	beq+ 6,.L153
.L167:
	subf 3,9,10
	blr
.L170:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L167
	cmpwi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L158
.L155:
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
	beq- 0,.L172
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L172:
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
	beq- 0,.L182
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr- 1
.L182:
	srwi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L190
.L180:
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
	bdnz .L180
.L190:
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
	beq- 0,.L194
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L194:
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
.L198:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L198
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
.L209:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L209
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
.L212:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L212
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
	beq+ 0,.L217
	b .L216
.L218:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne- 5,.L216
.L217:
	cmpwi 1,9,0
	bne+ 1,.L218
.L216:
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
	beq- 0,.L226
	mr 4,3
.L225:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L225
	subf 3,3,4
	blr
.L226:
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
	beq- 0,.L236
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L232
	b .L241
.L243:
	bdz .L231
	bne- 7,.L231
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L242
	mr 4,8
.L232:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L243
.L231:
	subf 3,7,10
	blr
.L236:
	li 3,0
	blr
.L242:
	lbz 7,1(4)
	subf 3,7,10
	blr
.L241:
	lbz 7,0(4)
	b .L231
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
	addi 9,5,-2
	cmplwi 1,9,13
	ble- 1,.L246
	andi. 9,4,0xf
	bne- 0,.L246
	lis 6,.LC0@ha
	neg 10,3
	lvx 1,0,3
	la 7,.LC0@l(6)
	srwi 0,5,1
	lvsl 12,0,10
	srwi 8,5,4
	rldicl 12,5,60,36
	lvx 13,0,7
	li 9,0
	addi 11,3,15
.L247:
	addi 12,12,-1
	vor 0,1,1
	lvx 1,11,9
	vperm 0,1,0,12
	cmpdi 5,12,0
	vperm 0,0,0,13
	stvx 0,4,9
	addi 9,9,16
	bne+ 5,.L247
	slwi 6,8,3
	slwi 7,8,4
	cmplw 6,0,6
	add 11,4,7
	subf 0,7,5
	add 8,3,7
	beqlr- 6
	cmpwi 7,0,3
	lbzx 3,3,7
	lbz 5,1(8)
	stbx 5,4,7
	stb 3,1(11)
	blelr- 7
	cmpwi 1,0,5
	lbz 4,3(8)
	lbz 12,2(8)
	stb 4,2(11)
	stb 12,3(11)
	blelr- 1
	cmpwi 0,0,7
	lbz 9,5(8)
	lbz 6,4(8)
	stb 9,4(11)
	stb 6,5(11)
	blelr- 0
	cmpwi 5,0,9
	lbz 10,7(8)
	lbz 7,6(8)
	stb 10,6(11)
	stb 7,7(11)
	blelr- 5
	cmpwi 6,0,11
	lbz 3,9(8)
	lbz 5,8(8)
	stb 3,8(11)
	stb 5,9(11)
	blelr- 6
	cmpwi 7,0,13
	lbz 4,10(8)
	lbz 0,11(8)
	stb 4,11(11)
	stb 0,10(11)
	blelr- 7
	lbz 12,13(8)
	lbz 8,12(8)
	stb 12,12(11)
	stb 8,13(11)
	blr
.L246:
	rldicl 5,5,63,33
	andi. 9,5,0x1
	addi 11,5,-1
	beq- 0,.L258
	mr. 5,11
	lbz 6,1(3)
	addi 4,4,2
	lbz 9,0(3)
	addi 3,3,2
	stb 6,-2(4)
	stb 9,-1(4)
	beqlr- 0
.L258:
	addi 5,5,-2
	lbz 10,1(3)
	mr 12,4
	cmpdi 1,5,0
	lbz 0,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 0,-2(4)
	stb 10,-4(4)
	stb 7,-3(4)
	stb 8,3(12)
	beqlr- 1
	addi 5,5,-2
	lbz 10,1(3)
	mr 12,4
	cmpdi 1,5,0
	lbz 0,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 0,-2(4)
	stb 10,-4(4)
	stb 7,-3(4)
	stb 8,3(12)
	bne+ 1,.L258
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
	ori 3,3,0x20
	addi 0,3,-97
	subfic 3,0,25
	subfe 4,4,4
	addi 3,4,1
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
	subfic 3,3,127
	subfe 3,3,3
	addi 3,3,1
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
	beq- 0,.L264
	xori 3,3,0x9
	cntlzw 0,3
	srwi 3,0,5
	blr
.L264:
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
	ble- 0,.L267
	xori 3,3,0x7f
	cntlzw 0,3
	srwi 3,0,5
	blr
.L267:
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
	addi 3,3,-48
	subfic 3,3,9
	subfe 4,4,4
	addi 3,4,1
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
	addi 3,3,-33
	subfic 3,3,93
	subfe 4,4,4
	addi 3,4,1
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
	addi 3,3,-97
	subfic 3,3,25
	subfe 4,4,4
	addi 3,4,1
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
	addi 3,3,-32
	subfic 3,3,94
	subfe 4,4,4
	addi 3,4,1
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
	beq- 0,.L274
	addi 3,3,-9
	subfic 3,3,4
	subfe 4,4,4
	addi 3,4,1
	blr
.L274:
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
	addi 3,3,-65
	subfic 3,3,25
	subfe 4,4,4
	addi 3,4,1
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
	ble- 0,.L278
	addi 10,3,-127
	li 3,1
	cmplwi 1,10,32
	blelr- 1
	addi 0,9,-8232
	cmplwi 5,0,1
	blelr- 5
	addis 3,9,0xffff
	addi 4,3,7
	subfic 9,4,2
	subfe 5,5,5
	addi 3,5,1
	blr
.L278:
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
	addi 3,3,-48
	subfic 3,3,9
	subfe 4,4,4
	addi 3,4,1
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
	ble- 0,.L289
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
	rlwinm 3,9,0,16,30
	xori 7,3,0xfffe
	addic 11,7,-1
	subfe 3,11,7
	blr
.L289:
	addi 12,3,1
	rlwinm 9,12,0,25,31
	subfic 9,9,32
	subfe 10,10,10
	neg 3,10
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
	ble- 0,.L292
	ori 3,3,0x20
	addi 0,3,-97
	subfic 3,0,5
	subfe 4,4,4
	addi 3,4,1
	blr
.L292:
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
	bun- 1,.L298
	fcmpu 5,1,2
	bng- 5,.L301
	fsub 1,1,2
	blr
.L301:
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	blr
.L298:
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
	bun- 1,.L306
	fcmpu 5,1,2
	bng- 5,.L309
	fsubs 1,1,2
	blr
.L309:
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	blr
.L306:
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
	bun- 0,.L315
	fcmpu 1,2,2
	fmr 0,1
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 1,8(1)
	ld 9,8(1)
	stfd 2,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L323
	fcmpu 6,1,2
	bnl- 6,.L310
	fmr 1,2
.L310:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L323:
	.cfi_restore_state
	cmpwi 7,0,0
	fmr 1,2
	bne- 7,.L310
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L315:
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
	bun- 0,.L329
	fcmpu 1,2,2
	fmr 0,1
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	addi 9,1,8
	addi 10,1,8
	stfiwx 1,0,9
	lwz 0,8(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,8(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	bne- 5,.L337
	fcmpu 6,1,2
	bnl- 6,.L324
	fmr 1,2
.L324:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L337:
	.cfi_restore_state
	cmpwi 7,3,0
	fmr 1,2
	bne- 7,.L324
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L329:
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
	fmr 0,1
	fcmpu 0,0,0
	bun- 0,.L343
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 0,8(1)
	ld 9,8(1)
	stfd 11,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L350
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bnl- 6,.L338
.L345:
	fmr 1,3
	fmr 2,4
.L338:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L350:
	.cfi_restore_state
	cmpwi 7,0,0
	bne- 7,.L345
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L343:
	fmr 1,3
	fmr 2,4
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
	bun- 0,.L356
	fcmpu 1,2,2
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 1,8(1)
	ld 9,8(1)
	stfd 2,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L353
	cmpwi 7,0,0
	bne- 7,.L351
	fmr 1,2
.L351:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L353:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L355
	fmr 0,1
.L355:
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L356:
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
	bun- 0,.L369
	fcmpu 1,2,2
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	addi 9,1,8
	addi 10,1,8
	stfiwx 1,0,9
	lwz 0,8(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,8(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	beq- 5,.L366
	cmpwi 7,3,0
	bne- 7,.L364
	fmr 1,2
.L364:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L366:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L368
	fmr 0,1
.L368:
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L369:
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
	fcmpu 0,0,0
	bun- 0,.L382
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 0,8(1)
	ld 9,8(1)
	stfd 11,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L391
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	blt- 6,.L377
.L389:
	fmr 1,3
	fmr 2,4
.L377:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L391:
	.cfi_restore_state
	cmpwi 7,0,0
	beq- 7,.L389
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L382:
	fmr 1,3
	fmr 2,4
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
	beq- 0,.L395
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L394:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L394
	li 5,0
	stb 5,0(10)
	blr
.L395:
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
	beq- 0,.L405
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L405:
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
	beq- 0,.L407
	lwz 10,4(3)
	stw 10,4(9)
.L407:
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
	beq- 0,.L416
	stw 25,36(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,56(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L418
.L433:
	beq- 7,.L432
.L418:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L433
	lwz 25,36(1)
	.cfi_restore 25
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L415:
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
.L432:
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
.L416:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L415
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
	beq- 0,.L435
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
	b .L437
.L448:
	beq- 7,.L447
.L437:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L448
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
.L447:
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
.L435:
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
.L457:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L451
	ble- 7,.L451
	cmpwi 1,10,43
	beq- 1,.L452
	cmpwi 6,10,45
	bne- 6,.L472
	lbz 10,1(3)
	addi 8,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L462
	li 5,1
.L455:
	li 3,0
.L459:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 6,3,2
	add 11,6,3
	addi 12,10,-48
	slwi 9,11,1
	cmplwi 1,12,9
	subf 3,7,9
	ble+ 1,.L459
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,7
	blr
.L451:
	addi 3,3,1
	b .L457
.L472:
	addi 4,10,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	ble+ 7,.L455
.L462:
	li 3,0
	blr
.L452:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L455
	b .L462
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L478:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L474
	ble- 7,.L474
	cmpwi 1,10,43
	beq- 1,.L475
	cmpwi 6,10,45
	beq- 6,.L476
	addi 4,10,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	bgt- 7,.L485
.L479:
	li 3,0
.L482:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 6,3,2
	add 11,6,3
	addi 12,10,-48
	slwi 9,11,1
	cmplwi 1,12,9
	subf 3,7,9
	ble+ 1,.L482
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,7
	blr
.L474:
	addi 3,3,1
	b .L478
.L476:
	lbz 10,1(3)
	addi 8,3,1
	li 5,1
	addi 3,10,-48
	cmplwi 0,3,9
	ble+ 0,.L479
.L485:
	li 3,0
	blr
.L475:
	lbz 10,1(3)
	addi 8,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L485
	li 5,0
	b .L479
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
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
	li 6,1
.L500:
	li 7,0
.L504:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 11,7,2
	add 12,11,7
	extsw 0,8
	addi 4,10,-48
	sldi 9,12,1
	cmplwi 1,4,9
	subf 7,0,9
	ble+ 1,.L504
	cmpwi 5,6,0
	bne- 5,.L495
	subf 7,9,0
.L495:
	srdi 4,7,32
	mr 3,7
	blr
.L496:
	addi 3,3,1
	b .L502
.L517:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L500
.L507:
	li 7,0
	b .L495
.L497:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L500
	li 7,0
	b .L495
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
	beq- 0,.L519
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
	b .L522
.L531:
	beq- 1,.L529
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L530
.L522:
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
	bge+ 1,.L531
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L522
.L530:
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
.L519:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L529:
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
	beq- 0,.L537
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L545:
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
	beq- 7,.L549
.L551:
	cmpwi 5,29,0
	ble- 7,.L535
	add 28,30,27
	bne+ 0,.L545
.L550:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L537:
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
.L535:
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
	beq- 5,.L550
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
	bne+ 7,.L551
.L549:
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
	beq- 0,.L563
.L560:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L560
.L563:
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
	beq+ 0,.L570
	b .L569
.L571:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L569
.L570:
	cmpwi 7,9,0
	bne+ 7,.L571
.L569:
	li 3,-1
	bltlr- 0
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 0,3,8
	xori 3,0,0x1
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
.L575:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L575
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
	beq- 0,.L581
	mr 4,3
.L580:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L580
	subf 3,3,4
	srawi 3,3,2
	blr
.L581:
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
	bne+ 0,.L584
	b .L592
.L595:
	beq- 7,.L586
	addi 3,3,4
	addi 4,4,4
	bdz .L592
.L584:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L595
.L586:
	lwz 0,0(3)
	lwz 4,0(4)
	cmpw 5,0,4
	blt- 5,.L596
	srawi 8,4,31
	srwi 3,0,31
	subfc 9,0,4
	adde 5,3,8
	xori 3,5,0x1
	blr
.L596:
	li 3,-1
	blr
.L592:
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
	beq- 0,.L601
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L618
.L604:
	srwi 0,5,1
	mtctr 0
.L598:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L598
.L601:
	li 3,0
	blr
.L618:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L604
	b .L601
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
	beq- 0,.L625
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L640
.L628:
	srwi 0,5,1
	mtctr 0
	b .L620
.L622:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,5,4
	cmpw 1,9,10
	bne- 1,.L637
	bdz .L625
.L620:
	lwz 9,0(3)
	addi 7,3,4
	addi 5,4,4
	lwz 10,0(4)
	cmpw 1,9,10
	beq+ 1,.L622
.L637:
	blt- 1,.L641
	srawi 4,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 6,3,4
	xori 3,6,0x1
	blr
.L640:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne- 1,.L637
	cmpwi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L628
.L625:
	li 3,0
	blr
.L641:
	li 3,-1
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
	beq- 0,.L643
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L643:
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
	blt- 1,.L650
	cmpwi 5,5,0
	beqlr- 5
	addi 11,5,-1
	cmplwi 6,11,10
	ble- 6,.L654
	addi 6,4,4
	subf 0,6,3
	cmplwi 7,0,8
	ble- 7,.L654
	srwi 7,3,2
	neg 8,7
	andi. 9,8,0x3
	beq- 0,.L664
	andi. 10,8,0x2
	lwz 10,0(4)
	addi 12,3,4
	addi 11,5,-2
	stw 10,0(3)
	beq- 0,.L655
	cmplwi 1,9,3
	lwz 11,4(4)
	stw 11,4(3)
	bne- 1,.L704
	lwz 0,8(4)
	addi 6,4,12
	addi 12,3,12
	addi 11,5,-4
	stw 0,8(3)
.L655:
	subf 5,9,5
	slwi 9,9,2
	rldicl 7,5,62,34
	add 10,4,9
	lvx 0,4,9
	andi. 8,7,0x1
	addi 0,9,15
	neg 8,10
	add 4,4,0
	lvsl 13,0,8
	add 9,3,9
	addi 8,7,-1
	li 10,0
	beq- 0,.L699
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,4
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L696
.L699:
	addi 7,7,-2
	addi 0,10,16
	lvx 1,4,10
	vperm 0,1,0,13
	cmpdi 5,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,4,0
	vperm 1,0,1,13
	stvx 1,9,0
	bne+ 5,.L699
.L696:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	slwi 4,5,2
	subf 11,5,11
	add 8,6,4
	add 10,12,4
	beqlr- 0
	cmpwi 6,11,0
	lwzx 6,6,4
	stwx 6,12,4
	beqlr- 6
	cmplwi 7,11,1
	lwz 12,4(8)
	stw 12,4(10)
	beqlr- 7
	lwz 9,8(8)
	stw 9,8(10)
	blr
.L650:
	cmpwi 5,5,0
	beqlr- 5
	rldicl 11,5,0,32
	add 4,4,9
	andi. 10,11,0x1
	add 9,3,9
	addi 7,11,-1
	beq- 0,.L697
	mr. 11,7
	lwzu 5,-4(4)
	stwu 5,-4(9)
	beqlr- 0
.L697:
	lwz 0,-4(4)
	addi 11,11,-2
	mr 6,4
	cmpdi 6,11,0
	addi 10,9,-4
	stw 0,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 8,-8(6)
	stw 8,-4(10)
	beqlr- 6
	lwz 0,-4(4)
	addi 11,11,-2
	mr 6,4
	cmpdi 6,11,0
	addi 10,9,-4
	stw 0,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 8,-8(6)
	stw 8,-4(10)
	bne+ 6,.L697
	blr
.L664:
	mr 6,4
	mr 12,3
	b .L655
.L654:
	rldicl 5,5,0,32
	addi 11,4,-4
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,3,-4
	beq- 0,.L698
	mr. 5,7
	lwz 0,0(4)
	mr 11,4
	mr 10,3
	stw 0,0(3)
	beqlr- 0
.L698:
	lwz 4,4(11)
	addi 5,5,-2
	mr 6,11
	cmpdi 1,5,0
	addi 8,10,4
	stw 4,4(10)
	addi 11,11,8
	addi 10,10,8
	lwz 12,8(6)
	stw 12,4(8)
	beqlr- 1
	lwz 4,4(11)
	addi 5,5,-2
	mr 6,11
	cmpdi 1,5,0
	addi 8,10,4
	stw 4,4(10)
	addi 11,11,8
	addi 10,10,8
	lwz 12,8(6)
	stw 12,4(8)
	bne+ 1,.L698
	blr
.L704:
	addi 6,4,8
	addi 12,3,8
	addi 11,5,-3
	b .L655
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
	beqlr- 0
	addi 7,5,-1
	srwi 10,3,2
	cmplwi 1,7,5
	neg 0,10
	rlwinm 9,0,0,30,31
	ble- 1,.L714
	cmpwi 5,9,0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 6,3
	beq- 5,.L708
	andi. 10,0,0x2
	stw 4,0(3)
	addi 6,3,4
	addi 7,5,-2
	beq- 0,.L708
	cmplwi 6,9,3
	stw 4,4(3)
	addi 6,3,8
	addi 7,5,-3
	bne- 6,.L708
	stw 4,8(3)
	addi 6,3,12
	addi 7,5,-4
.L708:
	subf 12,9,5
	stw 4,16(1)
	slwi 0,9,2
	rldicl 10,12,62,34
	li 11,16
	andi. 8,10,0x3
	add 9,3,0
	lvewx 0,1,11
	addi 5,10,-1
	vspltw 0,0,3
	beq- 0,.L755
	cmpdi 7,8,1
	beq- 7,.L740
	cmpdi 1,8,2
	beq- 1,.L741
	stvx 0,0,9
	mr 10,5
	addi 9,9,16
.L741:
	stvx 0,0,9
	addi 10,10,-1
	addi 9,9,16
.L740:
	addi 10,10,-1
	stvx 0,0,9
	addi 9,9,16
	cmpdi 5,10,0
	beq- 5,.L754
.L755:
	addi 10,10,-4
	addi 8,9,16
	stvx 0,0,9
	cmpdi 6,10,0
	addi 11,9,32
	stvx 0,0,8
	addi 5,9,48
	stvx 0,0,11
	addi 9,9,64
	stvx 0,0,5
	bne+ 6,.L755
.L754:
	andi. 9,12,0x3
	beq- 0,.L706
	rlwinm 12,12,0,0,29
	subf 7,12,7
	slwi 0,12,2
	cmpwi 7,7,0
	add 6,6,0
	stw 4,0(6)
	beq- 7,.L706
	cmplwi 1,7,1
	stw 4,4(6)
	beq- 1,.L706
	cmplwi 5,7,2
	stw 4,8(6)
	beq- 5,.L706
	cmplwi 6,7,3
	stw 4,12(6)
	beq- 6,.L706
	cmplwi 0,7,4
	stw 4,16(6)
	beq- 0,.L706
	stw 4,20(6)
.L706:
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
.L714:
	cmpwi 5,7,0
	stw 4,0(3)
	beqlr- 5
	cmplwi 6,7,1
	stw 4,4(3)
	beqlr- 6
	cmplwi 7,7,2
	stw 4,8(3)
	beqlr- 7
	cmplwi 0,7,3
	stw 4,12(3)
	beqlr- 0
	cmplwi 1,7,4
	stw 4,16(3)
	beqlr- 1
	stw 4,20(3)
	blr
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
	bge- 0,.L769
	cmpwi 7,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 7
	rldicl 12,5,0,32
	andi. 9,12,0x1
	addi 7,12,-1
	beq- 0,.L865
	mr. 12,7
	lbzu 6,-1(3)
	stbu 6,-1(4)
	beqlr- 0
.L865:
	lbz 5,-1(3)
	addi 12,12,-2
	mr 10,3
	cmpdi 1,12,0
	mr 11,4
	stb 5,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 9,-2(10)
	stb 9,-2(11)
	beqlr- 1
	lbz 5,-1(3)
	addi 12,12,-2
	mr 10,3
	cmpdi 1,12,0
	mr 11,4
	stb 5,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 9,-2(10)
	stb 9,-2(11)
	bne+ 1,.L865
	blr
.L769:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 7,5,-1
	cmplwi 5,7,29
	ble- 5,.L772
	addi 6,3,1
	subf 9,6,4
	cmplwi 6,9,14
	ble- 6,.L772
	neg 10,4
	andi. 12,10,0xf
	beq- 0,.L794
	andi. 8,10,0xe
	lbz 8,0(3)
	addi 11,4,1
	stb 8,0(4)
	beq- 0,.L773
	cmplwi 7,12,2
	lbz 0,1(3)
	addi 6,3,2
	addi 11,4,2
	addi 7,5,-2
	stb 0,1(4)
	ble- 7,.L773
	andi. 8,10,0xc
	lbz 9,2(3)
	addi 6,3,3
	addi 11,4,3
	addi 7,5,-3
	stb 9,2(4)
	beq- 0,.L773
	cmplwi 1,12,4
	lbz 8,3(3)
	addi 6,3,4
	addi 11,4,4
	addi 7,5,-4
	stb 8,3(4)
	ble- 1,.L773
	cmplwi 5,12,5
	lbz 0,4(3)
	addi 6,3,5
	addi 11,4,5
	addi 7,5,-5
	stb 0,4(4)
	beq- 5,.L773
	cmplwi 6,12,6
	lbz 9,5(3)
	addi 6,3,6
	addi 11,4,6
	addi 7,5,-6
	stb 9,5(4)
	beq- 6,.L773
	andi. 10,10,0x8
	lbz 10,6(3)
	addi 6,3,7
	addi 11,4,7
	addi 7,5,-7
	stb 10,6(4)
	beq- 0,.L773
	cmplwi 7,12,8
	lbz 8,7(3)
	addi 6,3,8
	addi 11,4,8
	addi 7,5,-8
	stb 8,7(4)
	ble- 7,.L773
	cmplwi 1,12,9
	lbz 0,8(3)
	addi 6,3,9
	addi 11,4,9
	addi 7,5,-9
	stb 0,8(4)
	beq- 1,.L773
	cmplwi 5,12,10
	lbz 9,9(3)
	addi 6,3,10
	addi 11,4,10
	addi 7,5,-10
	stb 9,9(4)
	beq- 5,.L773
	cmplwi 6,12,11
	lbz 10,10(3)
	addi 6,3,11
	addi 11,4,11
	addi 7,5,-11
	stb 10,10(4)
	beq- 6,.L773
	cmplwi 0,12,12
	lbz 8,11(3)
	addi 6,3,12
	addi 11,4,12
	addi 7,5,-12
	stb 8,11(4)
	beq- 0,.L773
	cmplwi 7,12,13
	lbz 0,12(3)
	addi 6,3,13
	addi 11,4,13
	addi 7,5,-13
	stb 0,12(4)
	beq- 7,.L773
	cmplwi 1,12,15
	lbz 9,13(3)
	addi 6,3,14
	addi 11,4,14
	addi 7,5,-14
	stb 9,13(4)
	bne- 1,.L773
	lbz 10,14(3)
	addi 6,3,15
	addi 11,4,15
	addi 7,5,-15
	stb 10,14(4)
.L773:
	subf 5,12,5
	add 0,3,12
	lvx 0,3,12
	rldicl 8,5,60,36
	neg 9,0
	andi. 0,8,0x1
	addi 0,12,15
	lvsl 13,0,9
	add 4,4,12
	add 3,3,0
	addi 12,8,-1
	li 9,0
	beq- 0,.L867
	mr. 8,12
	vor 1,0,0
	li 9,16
	lvx 0,0,3
	vperm 1,0,1,13
	stvx 1,0,4
	beq- 0,.L864
.L867:
	addi 8,8,-2
	addi 10,9,16
	lvx 1,3,9
	vperm 0,1,0,13
	cmpdi 5,8,0
	stvx 0,4,9
	addi 9,9,32
	lvx 0,3,10
	vperm 1,0,1,13
	stvx 1,4,10
	bne+ 5,.L867
.L864:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 7,5,7
	add 4,11,5
	add 12,6,5
	beqlr- 0
	cmplwi 6,7,1
	lbzx 6,6,5
	stbx 6,11,5
	beqlr- 6
	cmplwi 7,7,2
	lbz 11,1(12)
	stb 11,1(4)
	beqlr- 7
	cmplwi 1,7,3
	lbz 0,2(12)
	stb 0,2(4)
	beqlr- 1
	cmplwi 5,7,4
	lbz 3,3(12)
	stb 3,3(4)
	beqlr- 5
	cmplwi 0,7,5
	lbz 8,4(12)
	stb 8,4(4)
	beqlr- 0
	cmplwi 6,7,6
	lbz 9,5(12)
	stb 9,5(4)
	beqlr- 6
	cmplwi 7,7,7
	lbz 10,6(12)
	stb 10,6(4)
	beqlr- 7
	cmplwi 1,7,8
	lbz 5,7(12)
	stb 5,7(4)
	beqlr- 1
	cmplwi 5,7,9
	lbz 6,8(12)
	stb 6,8(4)
	beqlr- 5
	cmplwi 0,7,10
	lbz 11,9(12)
	stb 11,9(4)
	beqlr- 0
	cmplwi 6,7,11
	lbz 0,10(12)
	stb 0,10(4)
	beqlr- 6
	cmplwi 7,7,12
	lbz 3,11(12)
	stb 3,11(4)
	beqlr- 7
	cmplwi 1,7,13
	lbz 8,12(12)
	stb 8,12(4)
	beqlr- 1
	cmplwi 5,7,14
	lbz 7,13(12)
	stb 7,13(4)
	beqlr- 5
	lbz 12,14(12)
	stb 12,14(4)
	blr
.L772:
	rldicl 5,5,0,32
	addi 10,3,-1
	andi. 9,5,0x1
	addi 6,5,-1
	addi 9,4,-1
	beq- 0,.L866
	mr. 5,6
	lbz 11,0(3)
	mr 10,3
	mr 9,4
	stb 11,0(4)
	beqlr- 0
.L866:
	lbz 4,1(10)
	addi 5,5,-2
	mr 3,10
	cmpdi 6,5,0
	addi 8,9,1
	stb 4,1(9)
	addi 10,10,2
	addi 9,9,2
	lbz 0,2(3)
	stb 0,1(8)
	beqlr- 6
	lbz 4,1(10)
	addi 5,5,-2
	mr 3,10
	cmpdi 6,5,0
	addi 8,9,1
	stb 4,1(9)
	addi 10,10,2
	addi 9,9,2
	lbz 0,2(3)
	stb 0,1(8)
	bne+ 6,.L866
	blr
.L794:
	mr 11,4
	mr 6,3
	mr 7,5
	b .L773
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
	b .L887
.L885:
	addi 9,9,1
	bne- 0,.L891
	bdz .L895
.L887:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L885
.L891:
	mr 3,9
	blr
.L895:
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
	beq- 0,.L899
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L898:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L898
	blr
.L899:
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
	lis 9,.LC5@ha
	li 3,1
	lfs 0,.LC5@l(9)
	fcmpu 0,1,0
	bltlr- 0
	lis 3,.LC6@ha
	lfs 2,.LC6@l(3)
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
	lis 9,.LC9@ha
	li 3,1
	lfd 0,.LC9@l(9)
	fcmpu 0,1,0
	bltlr- 0
	lis 3,.LC10@ha
	lfd 2,.LC10@l(3)
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
	lis 9,.LC13@ha
	la 3,.LC13@l(9)
	lfd 12,0(3)
	lfd 13,8(3)
	li 3,1
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	bltlr- 0
	lis 4,.LC14@ha
	la 5,.LC14@l(4)
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,1,12
	bne 1,$+8
	fcmpu 1,2,13
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lis 10,.LC2@ha
	lfd 3,.LC2@l(10)
	stw 4,8(1)
	addi 9,1,8
	lfiwax 0,0,9
	stfd 3,8(3)
	fcfid 1,0
	stfd 1,0(3)
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	blt- 5,.L927
	lis 9,.LC18@ha
	lfs 2,.LC18@l(9)
.L916:
	andi. 9,3,0x1
	beq- 0,.L917
.L918:
	fmuls 1,1,2
.L917:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmuls 2,2,2
	bne- 0,.L918
.L928:
	srawi 3,3,1
	addze 3,3
	fmuls 2,2,2
	andi. 9,3,0x1
	bne- 0,.L918
	b .L928
.L927:
	lis 4,.LC19@ha
	lfs 2,.LC19@l(4)
	b .L916
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
	blt- 5,.L942
	lis 9,.LC18@ha
	lfs 2,.LC18@l(9)
.L931:
	andi. 9,3,0x1
	beq- 0,.L932
.L933:
	fmul 1,1,2
.L932:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmul 2,2,2
	bne- 0,.L933
.L943:
	srawi 3,3,1
	addze 3,3
	fmul 2,2,2
	andi. 9,3,0x1
	bne- 0,.L933
	b .L943
.L942:
	lis 4,.LC19@ha
	lfs 2,.LC19@l(4)
	b .L931
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
	bun- 0,.L945
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
	beq- 1,.L960
	cmpwi 5,31,0
	stfd 30,48(1)
	.cfi_offset 62, -16
	stfd 31,56(1)
	.cfi_offset 63, -8
	blt- 5,.L961
	lis 9,.LC24@ha
	la 3,.LC24@l(9)
	lfd 30,0(3)
	lfd 31,8(3)
.L946:
	andi. 9,31,0x1
	beq- 0,.L947
.L948:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	fmr 29,2
	fmr 28,1
.L947:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L959
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L948
.L962:
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
	bne- 0,.L948
	b .L962
.L959:
	lfd 30,48(1)
	.cfi_restore 62
	lfd 31,56(1)
	.cfi_restore 63
.L960:
	lwz 0,68(1)
	lwz 31,28(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L945:
	fmr 1,28
	lfd 28,32(1)
	fmr 2,29
	lfd 29,40(1)
	addi 1,1,64
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L961:
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -36
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	lis 4,.LC25@ha
	la 5,.LC25@l(4)
	lfd 30,0(5)
	lfd 31,8(5)
	b .L946
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
	neg 8,3
	addi 6,5,-1
	rlwinm 10,8,0,28,31
	addi 9,10,15
	cmplwi 1,9,23
	mr 7,9
	blt- 1,.L1004
.L966:
	cmplw 5,6,7
	blt- 5,.L986
	cmpwi 6,10,0
	beq- 6,.L987
	lbz 12,0(3)
	andi. 11,8,0xe
	lbz 0,0(4)
	xor 7,0,12
	stb 7,0(3)
	beq- 0,.L1005
	cmplwi 7,10,2
	lbz 6,1(3)
	lbz 11,1(4)
	xor 0,11,6
	stb 0,1(3)
	ble- 7,.L1006
	lbz 7,2(3)
	andi. 6,8,0xc
	lbz 12,2(4)
	xor 11,12,7
	stb 11,2(3)
	beq- 0,.L1007
	cmplwi 1,10,4
	lbz 6,3(3)
	lbz 0,3(4)
	xor 12,0,6
	stb 12,3(3)
	ble- 1,.L1008
	cmplwi 5,10,5
	lbz 11,4(3)
	lbz 7,4(4)
	xor 0,7,11
	stb 0,4(3)
	beq- 5,.L1009
	cmplwi 6,10,6
	lbz 6,5(3)
	lbz 12,5(4)
	xor 7,12,6
	stb 7,5(3)
	beq- 6,.L1010
	lbz 11,6(3)
	andi. 8,8,0x8
	addi 7,3,7
	lbz 8,6(4)
	addi 6,5,-7
	xor 0,8,11
	addi 11,4,7
	stb 0,6(3)
	beq- 0,.L967
	cmplwi 7,10,8
	lbz 6,7(3)
	lbz 12,7(4)
	xor 7,12,6
	stb 7,7(3)
	ble- 7,.L1011
	cmplwi 1,10,9
	lbz 11,8(3)
	lbz 8,8(4)
	xor 0,8,11
	stb 0,8(3)
	beq- 1,.L1012
	cmplwi 5,10,10
	lbz 6,9(3)
	lbz 12,9(4)
	xor 7,12,6
	stb 7,9(3)
	beq- 5,.L1013
	cmplwi 6,10,11
	lbz 11,10(3)
	lbz 8,10(4)
	xor 0,8,11
	stb 0,10(3)
	beq- 6,.L1014
	cmplwi 0,10,12
	lbz 6,11(3)
	lbz 12,11(4)
	xor 7,12,6
	stb 7,11(3)
	beq- 0,.L1015
	cmplwi 7,10,13
	lbz 11,12(3)
	lbz 8,12(4)
	xor 0,8,11
	stb 0,12(3)
	beq- 7,.L1016
	cmplwi 1,10,15
	lbz 6,13(3)
	lbz 12,13(4)
	xor 7,12,6
	stb 7,13(3)
	bne- 1,.L1017
	lbz 0,14(3)
	addi 11,4,15
	addi 7,3,15
	lbz 8,14(4)
	addi 6,5,-15
	xor 12,8,0
	stb 12,14(3)
.L967:
	add 8,4,10
	subf 5,10,5
	lvx 13,4,10
	rldicl 12,5,60,36
	add 4,4,9
	add 10,3,10
	neg 9,8
	li 8,0
	lvsl 12,0,9
.L983:
	addi 12,12,-1
	lvx 0,10,8
	vor 1,13,13
	lvx 13,4,8
	cmpdi 5,12,0
	vperm 1,13,1,12
	vxor 0,0,1
	stvx 0,10,8
	addi 8,8,16
	bne+ 5,.L983
	andi. 9,5,0xf
	rlwinm 0,5,0,0,27
	add 12,7,0
	add 4,11,0
	subf 5,0,6
	beqlr- 0
.L965:
	rldicl 5,5,0,32
	addi 9,4,-1
	andi. 10,5,0x1
	addi 11,5,-1
	addi 10,12,-1
	beq- 0,.L1001
	mr. 5,11
	lbz 7,0(12)
	mr 9,4
	lbz 6,0(4)
	mr 10,12
	xor 4,6,7
	stb 4,0(12)
	beqlr- 0
.L1001:
	lbz 0,1(10)
	addi 5,5,-2
	mr 8,10
	lbz 12,1(9)
	cmpdi 6,5,0
	addi 9,9,2
	lbz 11,0(9)
	addi 10,10,2
	xor 6,12,0
	stb 6,-1(10)
	lbz 7,2(8)
	xor 4,11,7
	stb 4,2(8)
	beqlr- 6
	lbz 0,1(10)
	addi 5,5,-2
	mr 8,10
	lbz 12,1(9)
	cmpdi 6,5,0
	addi 9,9,2
	lbz 11,0(9)
	addi 10,10,2
	xor 6,12,0
	stb 6,-1(10)
	lbz 7,2(8)
	xor 4,11,7
	stb 4,2(8)
	bne+ 6,.L1001
	blr
.L1004:
	li 7,23
	b .L966
.L1008:
	addi 11,4,4
	addi 7,3,4
	addi 6,5,-4
	b .L967
.L986:
	mr 12,3
	b .L965
.L1005:
	addi 11,4,1
	addi 7,3,1
	b .L967
.L1006:
	addi 11,4,2
	addi 7,3,2
	addi 6,5,-2
	b .L967
.L1007:
	addi 11,4,3
	addi 7,3,3
	addi 6,5,-3
	b .L967
.L1009:
	addi 11,4,5
	addi 7,3,5
	addi 6,5,-5
	b .L967
.L987:
	mr 7,3
	mr 11,4
	mr 6,5
	b .L967
.L1015:
	addi 11,4,12
	addi 7,3,12
	addi 6,5,-12
	b .L967
.L1010:
	addi 11,4,6
	addi 7,3,6
	addi 6,5,-6
	b .L967
.L1011:
	addi 11,4,8
	addi 7,3,8
	addi 6,5,-8
	b .L967
.L1012:
	addi 11,4,9
	addi 7,3,9
	addi 6,5,-9
	b .L967
.L1013:
	addi 11,4,10
	addi 7,3,10
	addi 6,5,-10
	b .L967
.L1014:
	addi 11,4,11
	addi 7,3,11
	addi 6,5,-11
	b .L967
.L1016:
	addi 11,4,13
	addi 7,3,13
	addi 6,5,-13
	b .L967
.L1017:
	addi 11,4,14
	addi 7,3,14
	addi 6,5,-14
	b .L967
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
	beq- 0,.L1019
.L1020:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1020
.L1019:
	cmpwi 5,5,0
	beq- 5,.L1021
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne- 0,.L1044
.L1032:
	srwi 0,5,1
	mtctr 0
.L1022:
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
	bdnz .L1022
.L1021:
	li 6,0
	stb 6,0(9)
	blr
.L1044:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpwi 7,7,0
	addi 9,9,1
	bne+ 7,.L1032
	b .L1021
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
	beq- 0,.L1057
	cmpwi 1,8,1
	beq- 1,.L1068
	cmpwi 5,8,2
	beq- 5,.L1069
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1069:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1068:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmplw 1,4,3
	beqlr- 1
.L1057:
	srwi 10,10,2
.L1046:
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
	bne+ 1,.L1046
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
	beq- 0,.L1083
.L1079:
	mr 10,4
	b .L1082
.L1081:
	beqlr- 7
.L1082:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1081
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1079
.L1083:
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
	li 8,0
.L1091:
	lbz 10,0(9)
	mr 3,8
	cmpw 7,10,4
	cmpwi 0,10,0
	bne- 7,.L1090
	mr 3,9
.L1090:
	addi 9,9,1
	mr 8,3
	bne+ 0,.L1091
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
	beq- 0,.L1108
	mr 9,4
.L1097:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1097
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1116
.L1119:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1118
.L1116:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1119
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L1099
.L1121:
	bdz .L1101
	bne- 7,.L1102
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1120
	lbzu 10,1(6)
.L1099:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1121
.L1102:
	addi 8,8,1
	b .L1116
.L1118:
	li 3,0
	blr
.L1120:
	lbz 9,1(6)
.L1101:
	cmpw 5,12,9
	bne+ 5,.L1102
.L1108:
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
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 0,1,0
	blt- 0,.L1132
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1132:
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
	blt- 1,.L1141
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1141
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1138
.L1135:
	cmplw 1,0,9
	blt- 1,.L1141
.L1138:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1135
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1136:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1135
	bdnz .L1136
	blr
.L1141:
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
	beq- 0,.L1150
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L1150:
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
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,1,0
	blt- 7,.L1178
	lis 4,.LC33@ha
	li 10,0
	lfs 2,.LC33@l(4)
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1179
.L1158:
	lis 12,.LC19@ha
	lis 9,.LC33@ha
	lfs 7,.LC19@l(12)
	li 11,0
	lfs 8,.LC33@l(9)
.L1164:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1164
	cmpwi 1,10,0
	stw 11,0(3)
	beqlr- 1
.L1181:
	fneg 1,1
	blr
.L1179:
	lis 5,.LC19@ha
	lfs 3,.LC19@l(5)
	fcmpu 1,1,3
	bnl- 1,.L1161
	bne- 7,.L1170
.L1161:
	li 0,0
	stw 0,0(3)
	blr
.L1178:
	lis 6,.LC29@ha
	fneg 12,1
	lfs 4,.LC29@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1180
	fmr 1,12
	li 10,1
	b .L1158
.L1180:
	lis 7,.LC31@ha
	lfs 5,.LC31@l(7)
	fcmpu 6,1,5
	bng- 6,.L1161
	li 10,1
.L1159:
	lis 8,.LC19@ha
	fmr 1,12
	li 11,0
	lfs 6,.LC19@l(8)
.L1166:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt+ 7,.L1166
	cmpwi 1,10,0
	stw 11,0(3)
	bne+ 1,.L1181
	blr
.L1170:
	fmr 12,1
	b .L1159
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
	beq- 0,.L1182
.L1184:
	rldicl 9,0,0,63
	srdi 0,0,1
	cmpdi 1,0,0
	neg 7,9
	and 8,7,11
	sldi 11,11,1
	add 10,10,8
	bne+ 1,.L1184
.L1182:
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
	li 10,16
	mr 9,3
	or 0,5,6
	li 3,32
	li 8,1
	mtctr 10
	blt+ 0,.L1188
	b .L1216
.L1192:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1190
	blt- 7,.L1193
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1190
	bdz .L1191
.L1188:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1192
.L1193:
	li 3,0
.L1198:
	subfc 7,4,9
	srwi 4,4,1
	subfe 11,11,11
	addi 12,11,1
	andi. 5,12,0xff
	subfic 10,5,0
	beq- 0,.L1195
	mr 9,7
.L1195:
	subfe 6,6,6
	and 10,8,6
	srwi. 8,8,1
	or 3,3,10
	bne+ 0,.L1198
.L1191:
	cmpdi 1,0,0
	beqlr+ 1
	mr 3,9
	blr
.L1190:
	cmpwi 0,8,0
	bne+ 0,.L1193
	li 3,0
	b .L1191
.L1216:
	subfc 4,4,9
	subfe 3,3,3
	addi 7,3,1
	andi. 3,7,0xff
	beq- 0,.L1191
	mr 9,4
	b .L1191
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
	beq- 0,.L1220
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1220:
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
	beq- 0,.L1223
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1223:
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
.L1226:
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
	bne+ 0,.L1226
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
	blt- 0,.L1234
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1323
.L1234:
	cmpwi 7,9,0
	addi 8,4,-8
	addi 10,3,-8
	beq- 7,.L1306
	andi. 7,9,0x1
	addi 0,9,-1
	beq- 0,.L1315
	mr. 9,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1309
.L1315:
	ld 12,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 5,9,0
	addi 7,10,8
	std 12,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 5,.L1315
.L1309:
	cmplw 6,5,11
	blelr- 6
	subf 9,11,5
	addi 8,9,-1
	cmplwi 7,8,29
	ble- 7,.L1239
	addi 0,11,1
	add 12,3,11
	add 10,4,0
	subf 6,10,12
	cmplwi 1,6,14
	ble- 1,.L1239
	neg 8,12
	andi. 12,8,0xf
	beq- 0,.L1248
	andi. 7,8,0xe
	lbzx 7,4,11
	stbx 7,3,11
	beq- 0,.L1240
	cmplwi 5,12,2
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,2
	ble- 5,.L1240
	andi. 7,8,0xc
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,3
	beq- 0,.L1240
	cmplwi 6,12,4
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,4
	ble- 6,.L1240
	cmplwi 7,12,5
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,5
	beq- 7,.L1240
	cmplwi 1,12,6
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,6
	beq- 1,.L1240
	andi. 8,8,0x8
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,7
	beq- 0,.L1240
	cmplwi 5,12,8
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,8
	ble- 5,.L1240
	cmplwi 6,12,9
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,9
	beq- 6,.L1240
	cmplwi 7,12,10
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,10
	beq- 7,.L1240
	cmplwi 1,12,11
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,11
	beq- 1,.L1240
	cmplwi 0,12,12
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,12
	beq- 0,.L1240
	cmplwi 5,12,13
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,13
	beq- 5,.L1240
	cmplwi 6,12,15
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,14
	bne- 6,.L1240
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,15
.L1240:
	subf 9,12,9
	add 12,11,12
	rldicl 6,9,60,36
	add 11,4,12
	lvx 0,4,12
	andi. 7,6,0x1
	addi 10,12,15
	neg 7,11
	add 12,3,12
	lvsl 13,0,7
	add 11,4,10
	addi 7,6,-1
	li 8,0
	beq- 0,.L1314
	mr. 6,7
	vor 1,0,0
	li 8,16
	lvx 0,0,11
	vperm 1,0,1,13
	stvx 1,0,12
	beq- 0,.L1312
.L1314:
	addi 6,6,-2
	addi 10,8,16
	lvx 1,11,8
	vperm 0,1,0,13
	cmpdi 7,6,0
	stvx 0,12,8
	addi 8,8,32
	lvx 0,11,10
	vperm 1,0,1,13
	stvx 1,12,10
	bne+ 7,.L1314
.L1312:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 11,9,0
	beqlr- 0
	addi 0,11,1
	lbzx 7,4,11
	cmplw 1,5,0
	stbx 7,3,11
	blelr- 1
	addi 12,11,2
	lbzx 6,4,0
	cmplw 5,5,12
	stbx 6,3,0
	blelr- 5
	addi 10,11,3
	lbzx 8,4,12
	cmplw 6,5,10
	stbx 8,3,12
	blelr- 6
	addi 9,11,4
	lbzx 0,4,10
	cmplw 7,5,9
	stbx 0,3,10
	blelr- 7
	addi 12,11,5
	lbzx 7,4,9
	cmplw 0,5,12
	stbx 7,3,9
	blelr- 0
	addi 6,11,6
	lbzx 10,4,12
	cmplw 1,5,6
	stbx 10,3,12
	blelr- 1
	addi 9,11,7
	lbzx 8,4,6
	cmplw 5,5,9
	stbx 8,3,6
	blelr- 5
	addi 0,11,8
	lbzx 12,4,9
	cmplw 6,5,0
	stbx 12,3,9
	blelr- 6
	addi 6,11,9
	lbzx 7,4,0
	cmplw 7,5,6
	stbx 7,3,0
	blelr- 7
	addi 9,11,10
	lbzx 10,4,6
	cmplw 0,5,9
	stbx 10,3,6
	blelr- 0
	addi 0,11,11
	lbzx 8,4,9
	cmplw 1,5,0
	stbx 8,3,9
	blelr- 1
	addi 12,11,12
	lbzx 6,4,0
	cmplw 5,5,12
	stbx 6,3,0
	blelr- 5
	addi 10,11,13
	lbzx 7,4,12
	cmplw 6,5,10
	stbx 7,3,12
	blelr- 6
	addi 11,11,14
	lbzx 9,4,10
	cmplw 7,5,11
	stbx 9,3,10
	blelr- 7
	lbzx 5,4,11
	stbx 5,3,11
	blr
.L1323:
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 0,5,-1
	beq- 0,.L1316
	mr. 5,0
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beqlr- 0
.L1316:
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 6,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 12,-2(8)
	stb 12,-2(6)
	beqlr- 6
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 6,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 12,-2(8)
	stb 12,-2(6)
	bne+ 6,.L1316
	blr
.L1306:
	cmpwi 1,5,0
	mr 9,5
	beqlr- 1
.L1239:
	rldicl 12,9,0,32
	addi 0,11,-1
	andi. 10,12,0x1
	add 11,3,0
	add 4,4,0
	addi 3,12,-1
	beq- 0,.L1313
	mr. 12,3
	lbzu 8,1(4)
	stbu 8,1(11)
	beqlr- 0
.L1313:
	lbz 6,1(4)
	addi 12,12,-2
	mr 7,4
	cmpdi 1,12,0
	addi 10,11,1
	stb 6,1(11)
	addi 4,4,2
	addi 11,11,2
	lbz 9,2(7)
	stb 9,1(10)
	beqlr- 1
	lbz 6,1(4)
	addi 12,12,-2
	mr 7,4
	cmpdi 1,12,0
	addi 10,11,1
	stb 6,1(11)
	addi 4,4,2
	addi 11,11,2
	lbz 9,2(7)
	stb 9,1(10)
	bne+ 1,.L1313
	blr
.L1248:
	mr 0,11
	b .L1240
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
	srwi 6,5,1
	blt- 0,.L1328
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1379
.L1328:
	cmpwi 7,6,0
	beq- 7,.L1327
	addi 11,6,-1
	cmplwi 1,11,13
	ble- 1,.L1331
	addi 12,4,2
	subf 10,12,3
	cmplwi 5,10,12
	ble- 5,.L1331
	srwi 0,3,1
	neg 7,0
	andi. 9,7,0x7
	beq- 0,.L1340
	andi. 8,7,0x6
	lhz 8,0(4)
	sth 8,0(3)
	beq- 0,.L1341
	cmplwi 6,9,2
	lhz 11,2(4)
	sth 11,2(3)
	ble- 6,.L1342
	andi. 10,7,0x4
	lhz 12,4(4)
	sth 12,4(3)
	beq- 0,.L1343
	cmplwi 7,9,4
	lhz 10,6(4)
	sth 10,6(3)
	ble- 7,.L1344
	cmplwi 1,9,5
	lhz 7,8(4)
	sth 7,8(3)
	beq- 1,.L1345
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne- 5,.L1346
	lhz 8,12(4)
	li 0,7
	sth 8,12(3)
.L1332:
	subf 11,9,6
	slwi 9,9,1
	rldicl 7,11,61,35
	add 12,4,9
	lvx 0,4,9
	andi. 8,7,0x1
	neg 10,12
	addi 12,9,15
	lvsl 13,0,10
	addi 8,7,-1
	add 12,4,12
	add 9,3,9
	li 10,0
	beq- 0,.L1375
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,12
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L1373
.L1375:
	addi 7,7,-2
	addi 8,10,16
	lvx 1,12,10
	vperm 0,1,0,13
	cmpdi 6,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,12,8
	vperm 1,0,1,13
	stvx 1,9,8
	bne+ 6,.L1375
.L1373:
	andi. 9,11,0x7
	rlwinm 11,11,0,0,28
	add 12,11,0
	beq- 0,.L1327
	addi 0,12,1
	slwi 10,12,1
	cmplw 7,6,0
	lhzx 9,4,10
	sthx 9,3,10
	ble- 7,.L1327
	addi 8,12,2
	addi 7,10,2
	cmplw 1,6,8
	lhzx 11,4,7
	sthx 11,3,7
	ble- 1,.L1327
	addi 0,12,3
	addi 9,10,4
	cmplw 5,6,0
	lhzx 8,4,9
	sthx 8,3,9
	ble- 5,.L1327
	addi 11,12,4
	addi 7,10,6
	cmplw 6,6,11
	lhzx 0,4,7
	sthx 0,3,7
	ble- 6,.L1327
	addi 9,12,5
	addi 11,10,8
	cmplw 0,6,9
	lhzx 8,4,11
	sthx 8,3,11
	ble- 0,.L1327
	addi 12,12,6
	addi 7,10,10
	cmplw 7,6,12
	lhzx 6,4,7
	sthx 6,3,7
	ble- 7,.L1327
	addi 10,10,12
	lhzx 0,4,10
	sthx 0,3,10
.L1327:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
	blr
.L1379:
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1376
	mr. 5,10
	lbzu 0,-1(9)
	stbu 0,-1(3)
	beqlr- 0
.L1376:
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 4,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 6,-2(8)
	stb 6,-2(4)
	beqlr- 6
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 4,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 6,-2(8)
	stb 6,-2(4)
	bne+ 6,.L1376
	blr
.L1340:
	li 0,0
	b .L1332
.L1331:
	andi. 9,6,0x1
	addi 12,4,-2
	addi 11,6,-1
	addi 9,3,-2
	beq- 0,.L1374
	mr. 6,11
	lhz 8,0(4)
	mr 12,4
	mr 9,3
	sth 8,0(3)
	beq- 0,.L1327
.L1374:
	lhz 10,2(12)
	addi 6,6,-2
	mr 7,12
	cmpdi 1,6,0
	mr 11,9
	sth 10,2(9)
	addi 12,12,4
	addi 9,9,4
	lhz 0,4(7)
	sth 0,4(11)
	bne+ 1,.L1374
	b .L1327
.L1341:
	li 0,1
	b .L1332
.L1342:
	li 0,2
	b .L1332
.L1346:
	li 0,6
	b .L1332
.L1343:
	li 0,3
	b .L1332
.L1344:
	li 0,4
	b .L1332
.L1345:
	li 0,5
	b .L1332
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
	srwi 12,5,2
	rlwinm 11,5,0,0,29
	blt- 0,.L1385
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1537
.L1385:
	cmpwi 7,12,0
	beq- 7,.L1538
	addi 10,12,-1
	cmplwi 5,10,10
	ble- 5,.L1387
	addi 0,4,4
	subf 7,0,3
	cmplwi 0,7,8
	ble- 0,.L1387
	srwi 8,3,2
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	neg 6,8
	andi. 9,6,0x3
	stw 31,28(1)
	.cfi_offset 31, -4
	li 31,0
	beq- 0,.L1388
	andi. 10,6,0x2
	lwz 10,0(4)
	li 31,1
	stw 10,0(3)
	beq- 0,.L1388
	cmplwi 6,9,3
	lwz 0,4(4)
	li 31,2
	stw 0,4(3)
	bne- 6,.L1388
	lwz 7,8(4)
	li 31,3
	stw 7,8(3)
.L1388:
	subf 0,9,12
	slwi 9,9,2
	rldicl 7,0,62,34
	add 6,4,9
	lvx 0,4,9
	andi. 8,7,0x1
	addi 10,9,15
	neg 8,6
	add 9,3,9
	add 6,4,10
	lvsl 13,0,8
	li 10,0
	addi 8,7,-1
	beq- 0,.L1481
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,6
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L1477
.L1481:
	addi 7,7,-2
	addi 8,10,16
	lvx 1,6,10
	vperm 0,1,0,13
	cmpdi 7,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,6,8
	vperm 1,0,1,13
	stvx 1,9,8
	bne+ 7,.L1481
.L1477:
	andi. 9,0,0x3
	rlwinm 0,0,0,0,29
	add 31,0,31
	beq- 0,.L1393
	addi 6,31,1
	slwi 7,31,2
	cmplw 1,12,6
	lwzx 9,4,7
	stwx 9,3,7
	ble- 1,.L1393
	addi 10,31,2
	addi 8,7,4
	cmplw 5,12,10
	lwzx 12,4,8
	stwx 12,3,8
	ble- 5,.L1393
	addi 0,7,8
	lwzx 31,4,0
	stwx 31,3,0
.L1393:
	cmplw 6,5,11
	ble- 6,.L1380
	subf 6,11,5
	addi 7,6,-1
	cmplwi 7,7,29
	ble- 7,.L1383
	addi 0,11,1
	add 9,3,11
	add 10,4,0
	subf 8,10,9
	cmplwi 0,8,14
	ble- 0,.L1383
	neg 12,9
	andi. 31,12,0xf
	beq- 0,.L1405
	andi. 7,12,0xe
	lbzx 7,4,11
	stbx 7,3,11
	beq- 0,.L1394
	cmplwi 1,31,2
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,2
	ble- 1,.L1394
	andi. 7,12,0xc
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,3
	beq- 0,.L1394
	cmplwi 5,31,4
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,4
	ble- 5,.L1394
	cmplwi 6,31,5
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,5
	beq- 6,.L1394
	cmplwi 7,31,6
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,6
	beq- 7,.L1394
	andi. 8,12,0x8
	lbzx 12,4,0
	stbx 12,3,0
	addi 0,11,7
	beq- 0,.L1394
	cmplwi 1,31,8
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,8
	ble- 1,.L1394
	cmplwi 5,31,9
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,9
	beq- 5,.L1394
	cmplwi 6,31,10
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,10
	beq- 6,.L1394
	cmplwi 7,31,11
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,11
	beq- 7,.L1394
	cmplwi 0,31,12
	lbzx 12,4,0
	stbx 12,3,0
	addi 0,11,12
	beq- 0,.L1394
	cmplwi 1,31,13
	lbzx 10,4,0
	stbx 10,3,0
	addi 0,11,13
	beq- 1,.L1394
	cmplwi 5,31,15
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,14
	bne- 5,.L1394
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,15
.L1394:
	subf 9,31,6
	add 31,11,31
	rldicl 6,9,60,36
	add 11,4,31
	lvx 0,4,31
	andi. 7,6,0x1
	neg 12,11
	addi 10,31,15
	addi 7,6,-1
	lvsl 13,0,12
	add 11,4,10
	add 31,3,31
	li 8,0
	beq- 0,.L1479
	mr. 6,7
	vor 1,0,0
	li 8,16
	lvx 0,0,11
	vperm 1,0,1,13
	stvx 1,0,31
	beq- 0,.L1476
.L1479:
	addi 6,6,-2
	addi 12,8,16
	lvx 1,11,8
	vperm 0,1,0,13
	cmpdi 6,6,0
	stvx 0,31,8
	addi 8,8,32
	lvx 0,11,12
	vperm 1,0,1,13
	stvx 1,31,12
	bne+ 6,.L1479
.L1476:
	andi. 10,9,0xf
	rlwinm 9,9,0,0,27
	add 11,9,0
	beq- 0,.L1380
	addi 0,11,1
	lbzx 10,4,11
	cmplw 7,5,0
	stbx 10,3,11
	ble- 7,.L1380
	addi 31,11,2
	lbzx 7,4,0
	cmplw 1,5,31
	stbx 7,3,0
	ble- 1,.L1380
	addi 6,11,3
	lbzx 8,4,31
	cmplw 5,5,6
	stbx 8,3,31
	ble- 5,.L1380
	addi 12,11,4
	lbzx 9,4,6
	cmplw 6,5,12
	stbx 9,3,6
	ble- 6,.L1380
	addi 0,11,5
	lbzx 10,4,12
	cmplw 0,5,0
	stbx 10,3,12
	ble- 0,.L1380
	addi 31,11,6
	lbzx 7,4,0
	cmplw 7,5,31
	stbx 7,3,0
	ble- 7,.L1380
	addi 6,11,7
	lbzx 8,4,31
	cmplw 1,5,6
	stbx 8,3,31
	ble- 1,.L1380
	addi 12,11,8
	lbzx 9,4,6
	cmplw 5,5,12
	stbx 9,3,6
	ble- 5,.L1380
	addi 0,11,9
	lbzx 10,4,12
	cmplw 6,5,0
	stbx 10,3,12
	ble- 6,.L1380
	addi 31,11,10
	lbzx 7,4,0
	cmplw 0,5,31
	stbx 7,3,0
	ble- 0,.L1380
	addi 6,11,11
	lbzx 8,4,31
	cmplw 7,5,6
	stbx 8,3,31
	ble- 7,.L1380
	addi 12,11,12
	lbzx 9,4,6
	cmplw 1,5,12
	stbx 9,3,6
	ble- 1,.L1380
	addi 0,11,13
	lbzx 10,4,12
	cmplw 5,5,0
	stbx 10,3,12
	ble- 5,.L1380
	addi 11,11,14
	lbzx 31,4,0
	cmplw 6,5,11
	stbx 31,3,0
	ble- 6,.L1380
	lbzx 5,4,11
	stbx 5,3,11
.L1380:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1537:
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1482
	mr. 5,10
	lbzu 0,-1(9)
	stbu 0,-1(3)
	beqlr- 0
.L1482:
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 4,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 6,-2(8)
	stb 6,-2(4)
	beqlr- 6
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 4,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 6,-2(8)
	stb 6,-2(4)
	bne+ 6,.L1482
	blr
.L1383:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	rldicl 6,6,0,32
	addi 7,11,-1
	andi. 10,6,0x1
	add 11,3,7
	add 4,4,7
	addi 3,6,-1
	beq- 0,.L1478
	mr. 6,3
	lbzu 8,1(4)
	stbu 8,1(11)
	beq- 0,.L1380
.L1478:
	lbz 12,1(4)
	addi 6,6,-2
	mr 9,4
	cmpdi 7,6,0
	addi 10,11,1
	stb 12,1(11)
	addi 4,4,2
	addi 11,11,2
	lbz 0,2(9)
	stb 0,1(10)
	bne+ 7,.L1478
	b .L1380
.L1387:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	andi. 9,12,0x1
	addi 10,4,-4
	addi 7,12,-1
	addi 9,3,-4
	beq- 0,.L1480
	mr. 12,7
	lwz 6,0(4)
	mr 10,4
	mr 9,3
	stw 6,0(3)
	beq- 0,.L1487
.L1480:
	lwz 0,4(10)
	addi 12,12,-2
	mr 7,10
	cmpdi 1,12,0
	addi 8,9,4
	stw 0,4(9)
	addi 10,10,8
	addi 9,9,8
	lwz 6,8(7)
	stw 6,4(8)
	bne+ 1,.L1480
.L1487:
	cmplw 5,5,11
	blelr- 5
	subf 12,11,5
	addi 10,12,-1
	cmplwi 6,10,29
	ble- 6,.L1485
	addi 0,11,1
	add 9,3,11
	add 7,4,0
	subf 8,7,9
	cmplwi 7,8,14
	ble- 7,.L1485
	neg 6,9
	andi. 10,6,0xf
	beq- 0,.L1492
	andi. 7,6,0xe
	lbzx 9,4,11
	stbx 9,3,11
	beq- 0,.L1494
	cmplwi 1,10,2
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,2
	ble- 1,.L1494
	andi. 7,6,0xc
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,3
	beq- 0,.L1494
	cmplwi 5,10,4
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,4
	ble- 5,.L1494
	cmplwi 6,10,5
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,5
	beq- 6,.L1494
	cmplwi 7,10,6
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,6
	beq- 7,.L1494
	andi. 8,6,0x8
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,7
	beq- 0,.L1494
	cmplwi 1,10,8
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,8
	ble- 1,.L1494
	cmplwi 5,10,9
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,9
	beq- 5,.L1494
	cmplwi 6,10,10
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,10
	beq- 6,.L1494
	cmplwi 7,10,11
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,11
	beq- 7,.L1494
	cmplwi 0,10,12
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,12
	beq- 0,.L1494
	cmplwi 1,10,13
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,13
	beq- 1,.L1494
	cmplwi 5,10,15
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,14
	bne- 5,.L1494
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,15
.L1494:
	subf 12,10,12
	add 10,11,10
	rldicl 6,12,60,36
	add 11,4,10
	lvx 0,4,10
	andi. 7,6,0x1
	neg 9,11
	addi 8,10,15
	lvsl 13,0,9
	addi 7,6,-1
	add 11,4,8
	add 10,3,10
	li 9,0
	beq- 0,.L1509
	mr. 6,7
	vor 1,0,0
	li 9,16
	lvx 0,0,11
	vperm 1,0,1,13
	stvx 1,0,10
	beq- 0,.L1510
.L1509:
	addi 6,6,-2
	addi 8,9,16
	lvx 1,11,9
	vperm 0,1,0,13
	cmpdi 6,6,0
	stvx 0,10,9
	addi 9,9,32
	lvx 0,11,8
	vperm 1,0,1,13
	stvx 1,10,8
	bne+ 6,.L1509
.L1510:
	andi. 10,12,0xf
	rlwinm 12,12,0,0,27
	add 11,12,0
	beqlr- 0
	addi 0,11,1
	lbzx 7,4,11
	cmplw 7,5,0
	stbx 7,3,11
	blelr- 7
	addi 6,11,2
	lbzx 10,4,0
	cmplw 1,5,6
	stbx 10,3,0
	blelr- 1
	addi 9,11,3
	lbzx 8,4,6
	cmplw 5,5,9
	stbx 8,3,6
	blelr- 5
	addi 12,11,4
	lbzx 0,4,9
	cmplw 6,5,12
	stbx 0,3,9
	blelr- 6
	addi 6,11,5
	lbzx 7,4,12
	cmplw 0,5,6
	stbx 7,3,12
	blelr- 0
	addi 9,11,6
	lbzx 10,4,6
	cmplw 7,5,9
	stbx 10,3,6
	blelr- 7
	addi 12,11,7
	lbzx 8,4,9
	cmplw 1,5,12
	stbx 8,3,9
	blelr- 1
	addi 0,11,8
	lbzx 6,4,12
	cmplw 5,5,0
	stbx 6,3,12
	blelr- 5
	addi 9,11,9
	lbzx 7,4,0
	cmplw 6,5,9
	stbx 7,3,0
	blelr- 6
	addi 12,11,10
	lbzx 10,4,9
	cmplw 0,5,12
	stbx 10,3,9
	blelr- 0
	addi 0,11,11
	lbzx 8,4,12
	cmplw 7,5,0
	stbx 8,3,12
	blelr- 7
	addi 6,11,12
	lbzx 9,4,0
	cmplw 1,5,6
	stbx 9,3,0
	blelr- 1
	addi 12,11,13
	lbzx 7,4,6
	cmplw 5,5,12
	stbx 7,3,6
	blelr- 5
	addi 11,11,14
	lbzx 10,4,12
	cmplw 6,5,11
	stbx 10,3,12
	blelr- 6
	lbzx 5,4,11
	stbx 5,3,11
	blr
.L1538:
	cmpwi 1,5,0
	mr 12,5
	beqlr- 1
.L1485:
	rldicl 6,12,0,32
	addi 0,11,-1
	andi. 10,6,0x1
	add 11,3,0
	add 4,4,0
	addi 3,6,-1
	beq- 0,.L1527
	mr. 6,3
	lbzu 8,1(4)
	stbu 8,1(11)
	beqlr- 0
.L1527:
	lbz 9,1(4)
	addi 6,6,-2
	mr 12,4
	cmpdi 7,6,0
	mr 7,11
	stb 9,1(11)
	addi 4,4,2
	addi 11,11,2
	lbz 10,2(12)
	stb 10,2(7)
	bne+ 7,.L1527
	blr
.L1405:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	mr 0,11
	b .L1394
.L1492:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mr 0,11
	b .L1494
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	addi 9,1,8
	lfiwzx 1,0,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	addi 9,1,8
	lfiwzx 1,0,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
	std 9,8(1)
	lfd 1,8(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
	std 9,8(1)
	lfd 1,8(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	bne- 0,.L1552
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1553
	srwi. 10,9,12
	bne- 0,.L1554
	srwi. 10,9,11
	bne- 0,.L1555
	srwi. 10,9,10
	bne- 0,.L1556
	srwi. 10,9,9
	bne- 0,.L1557
	srwi. 10,9,8
	bne- 0,.L1558
	srwi. 10,9,7
	bne- 0,.L1559
	srwi. 10,9,6
	bne- 0,.L1560
	srwi. 10,9,5
	bne- 0,.L1561
	srwi. 10,9,4
	bne- 0,.L1562
	srwi. 10,9,3
	bne- 0,.L1563
	srwi. 10,9,2
	bne- 0,.L1564
	srwi. 10,9,1
	bne- 0,.L1565
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1552:
	li 3,0
	blr
.L1563:
	li 3,12
	blr
.L1553:
	li 3,2
	blr
.L1554:
	li 3,3
	blr
.L1555:
	li 3,4
	blr
.L1556:
	li 3,5
	blr
.L1557:
	li 3,6
	blr
.L1558:
	li 3,7
	blr
.L1559:
	li 3,8
	blr
.L1560:
	li 3,9
	blr
.L1561:
	li 3,10
	blr
.L1562:
	li 3,11
	blr
.L1564:
	li 3,13
	blr
.L1565:
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
	bne- 0,.L1570
	andi. 9,3,0x2
	bne- 0,.L1571
	andi. 9,3,0x4
	bne- 0,.L1572
	andi. 9,3,0x8
	bne- 0,.L1573
	andi. 9,3,0x10
	bne- 0,.L1574
	andi. 9,3,0x20
	bne- 0,.L1575
	andi. 9,3,0x40
	bne- 0,.L1576
	andi. 9,3,0x80
	bne- 0,.L1577
	andi. 9,3,0x100
	bne- 0,.L1578
	andi. 9,3,0x200
	bne- 0,.L1579
	andi. 9,3,0x400
	bne- 0,.L1580
	andi. 9,3,0x800
	bne- 0,.L1581
	andi. 9,3,0x1000
	bne- 0,.L1582
	andi. 9,3,0x2000
	bne- 0,.L1583
	andi. 9,3,0x4000
	bne- 0,.L1584
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1570:
	li 3,0
	blr
.L1571:
	li 3,1
	blr
.L1582:
	li 3,12
	blr
.L1572:
	li 3,2
	blr
.L1573:
	li 3,3
	blr
.L1574:
	li 3,4
	blr
.L1575:
	li 3,5
	blr
.L1576:
	li 3,6
	blr
.L1577:
	li 3,7
	blr
.L1578:
	li 3,8
	blr
.L1579:
	li 3,9
	blr
.L1580:
	li 3,10
	blr
.L1581:
	li 3,11
	blr
.L1583:
	li 3,13
	blr
.L1584:
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
	lis 9,.LC37@ha
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lfs 0,.LC37@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1593
	fctiwz 1,1
	addi 3,1,8
	stfiwx 1,0,3
	lwz 3,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1593:
	.cfi_restore_state
	fsubs 2,1,0
	addi 4,1,12
	fctiwz 3,2
	stfiwx 3,0,4
	lwz 5,12(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	addis 6,5,0x1
	addi 3,6,-32768
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	lis 7,.LC39@ha
	lis 8,.LC40@ha
	vxor 12,12,12
	lis 10,.LC41@ha
	lis 9,.LC42@ha
	vspltisw 10,1
	li 6,16
	stw 3,16(1)
	la 4,.LC40@l(8)
	la 3,.LC39@l(7)
	la 5,.LC41@l(10)
	la 11,.LC42@l(9)
	lvx 13,0,3
	lvx 11,0,4
	li 0,32
	lvewx 0,1,6
	vspltw 0,0,3
	vsraw 1,0,13
	vsraw 11,0,11
	vand 13,1,10
	vand 11,11,10
	lvx 1,0,5
	vadduwm 13,13,11
	vsraw 1,0,1
	lvx 11,0,11
	vand 1,1,10
	vsraw 0,0,11
	vadduwm 13,1,13
	vand 10,0,10
	vadduwm 11,10,13
	vsldoi 1,12,11,8
	vadduwm 0,1,11
	vsldoi 12,12,0,12
	vadduwm 13,12,0
	stvx 13,1,0
	lwz 12,32(1)
	addi 1,1,48
	.cfi_def_cfa_offset 0
	rlwinm 3,12,0,31,31
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	lis 7,.LC39@ha
	lis 8,.LC40@ha
	vxor 12,12,12
	lis 10,.LC41@ha
	lis 9,.LC42@ha
	vspltisw 10,1
	li 6,16
	stw 3,16(1)
	la 4,.LC40@l(8)
	la 3,.LC39@l(7)
	la 5,.LC41@l(10)
	la 11,.LC42@l(9)
	lvx 13,0,3
	lvx 11,0,4
	li 0,32
	lvewx 0,1,6
	vspltw 0,0,3
	vsraw 1,0,13
	vsraw 11,0,11
	vand 13,1,10
	vand 11,11,10
	lvx 1,0,5
	vadduwm 13,13,11
	vsraw 1,0,1
	lvx 11,0,11
	vand 1,1,10
	vsraw 0,0,11
	vadduwm 13,1,13
	vand 10,0,10
	vadduwm 11,10,13
	vsldoi 1,12,11,8
	vadduwm 0,1,11
	vsldoi 12,12,0,12
	vadduwm 13,12,0
	stvx 13,1,0
	lwz 3,32(1)
	addi 1,1,48
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
.L1600:
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
	bne+ 0,.L1600
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
.L1606:
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
	bne+ 0,.L1606
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
	li 10,16
	mr 9,3
	li 8,1
	li 3,32
	mtctr 10
	blt+ 0,.L1612
	b .L1640
.L1616:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1614
	blt- 7,.L1617
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1614
	bdz .L1615
.L1612:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1616
.L1617:
	li 3,0
.L1622:
	subfc 7,4,9
	srwi 4,4,1
	subfe 6,6,6
	addi 11,6,1
	andi. 12,11,0xff
	subfic 10,12,0
	beq- 0,.L1619
	mr 9,7
.L1619:
	subfe 10,10,10
	and 0,8,10
	srwi. 8,8,1
	or 3,3,0
	bne+ 0,.L1622
.L1615:
	cmpwi 1,5,0
	beqlr+ 1
	mr 3,9
	blr
.L1614:
	cmpwi 0,8,0
	bne+ 0,.L1617
	li 3,0
	b .L1615
.L1640:
	subfc 4,4,9
	subfe 3,3,3
	addi 0,3,1
	andi. 3,0,0xff
	beq- 0,.L1615
	mr 9,4
	b .L1615
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
	mr 8,3
	blt- 0,.L1664
	beq- 0,.L1656
	li 6,0
.L1652:
	li 10,32
	li 3,0
	b .L1655
.L1665:
	beq- 7,.L1654
.L1655:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,8
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 3,3,5
	slwi 8,8,1
	bne+ 0,.L1665
.L1654:
	cmpwi 1,6,0
	beqlr- 1
	neg 3,3
	blr
.L1664:
	neg 4,4
	li 6,1
	b .L1652
.L1656:
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
	li 5,0
	bge+ 0,.L1667
	neg 3,3
	li 9,0
	li 5,1
.L1667:
	cmpwi 1,4,0
	bge+ 1,.L1668
	neg 4,4
	mr 5,9
.L1668:
	cmplw 5,3,4
	li 8,16
	mr 7,3
	mr 11,4
	li 10,1
	mtctr 8
	bgt+ 5,.L1669
	b .L1697
.L1673:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 7,3,11
	ble- 7,.L1674
	bdz .L1674
.L1669:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,3,11
	bgt+ 6,.L1673
.L1674:
	cmpwi 0,10,0
	li 3,0
	beq- 0,.L1672
.L1671:
	subfc 6,11,7
	srwi 11,11,1
	subfe 4,4,4
	addi 0,4,1
	andi. 12,0,0xff
	subfic 8,12,0
	beq- 0,.L1676
	mr 7,6
.L1676:
	subfe 9,9,9
	and 8,10,9
	srwi. 10,10,1
	or 3,3,8
	bne+ 0,.L1671
.L1672:
	cmpwi 1,5,0
	beqlr- 1
	neg 3,3
	blr
.L1697:
	subfc 4,4,3
	subfe 3,3,3
	addi 3,3,1
	b .L1672
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
	mr 8,3
	li 6,0
	bge+ 0,.L1701
	neg 8,3
	li 6,1
.L1701:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 3,8
	subf 9,9,4
	li 11,1
	cmplw 1,8,9
	mtctr 7
	bgt+ 1,.L1702
	b .L1730
.L1706:
	slwi 9,9,1
	slwi 11,11,1
	cmplw 7,8,9
	ble- 7,.L1707
	bdz .L1707
.L1702:
	slwi 9,9,1
	slwi 11,11,1
	cmplw 6,8,9
	bgt+ 6,.L1706
.L1707:
	cmpwi 0,11,0
	beq- 0,.L1733
.L1704:
	subfc 8,9,3
	subf 4,9,3
	subfe 12,12,12
	srwi. 11,11,1
	addi 8,12,1
	srwi 9,9,1
	rlwinm 7,8,0,0xff
	cmpwi 1,7,0
	beq- 1,.L1709
	mr 3,4
.L1709:
	bne+ 0,.L1704
.L1705:
	cmpwi 5,6,0
	beqlr- 5
.L1734:
	neg 3,3
	blr
.L1733:
	cmpwi 5,6,0
	mr 3,8
	beqlr- 5
	b .L1734
.L1730:
	subfc 9,9,8
	subfe 10,10,10
	addi 0,10,1
	rlwinm 5,0,0,0xff
	cmpwi 5,5,0
	beq- 5,.L1705
	mr 3,9
	b .L1705
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
	bge- 0,.L1921
	andi. 9,4,0x8000
	bne- 0,.L1740
	rlwinm 9,4,1,16,30
	cmplw 5,3,9
	ble- 5,.L1813
	andi. 10,9,0x8000
	bne- 0,.L1813
	rlwinm 9,4,2,16,29
	cmplw 6,3,9
	ble- 6,.L1815
	andi. 10,9,0x8000
	bne- 0,.L1815
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L1817
	andi. 10,9,0x8000
	bne- 0,.L1817
	rlwinm 9,4,4,16,27
	cmplw 1,3,9
	ble- 1,.L1819
	andi. 10,9,0x8000
	bne- 0,.L1819
	rlwinm 9,4,5,16,26
	cmplw 5,3,9
	ble- 5,.L1821
	andi. 10,9,0x8000
	bne- 0,.L1821
	rlwinm 9,4,6,16,25
	cmplw 6,3,9
	ble- 6,.L1823
	andi. 10,9,0x8000
	bne- 0,.L1823
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L1825
	andi. 10,9,0x8000
	bne- 0,.L1825
	rlwinm 9,4,8,16,23
	cmplw 1,3,9
	ble- 1,.L1827
	andi. 10,9,0x8000
	bne- 0,.L1827
	rlwinm 9,4,9,16,22
	cmplw 5,3,9
	ble- 5,.L1829
	andi. 10,9,0x8000
	bne- 0,.L1829
	rlwinm 9,4,10,16,21
	cmplw 6,3,9
	ble- 6,.L1831
	andi. 10,9,0x8000
	bne- 0,.L1831
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L1833
	andi. 10,9,0x8000
	bne- 0,.L1833
	rlwinm 9,4,12,16,19
	cmplw 1,3,9
	ble- 1,.L1835
	andi. 10,9,0x8000
	bne- 0,.L1835
	rlwinm 9,4,13,16,18
	cmplw 5,3,9
	ble- 5,.L1837
	andi. 10,9,0x8000
	bne- 0,.L1837
	rlwinm 9,4,14,16,17
	cmplw 6,3,9
	ble- 6,.L1839
	andi. 10,9,0x8000
	bne- 0,.L1839
	rlwinm 8,4,15,16,16
	cmplw 7,3,8
	ble- 7,.L1840
	cmpwi 1,8,0
	li 11,0
	bne- 1,.L1840
.L1743:
	cmpwi 5,5,0
	beq+ 5,.L1802
	mr 11,3
.L1802:
	rlwinm 3,11,0,0xffff
	blr
.L1813:
	li 12,2
.L1742:
	subfc 6,9,3
	rlwinm 10,3,0,0xffff
	subfe 4,4,4
	rlwinm 0,6,0,0xffff
	addi 7,4,1
	rlwinm 11,7,0,0xff
	cmpwi 5,11,0
	beq- 5,.L1809
	rlwinm 10,0,0,0xffff
.L1809:
	subfc 3,9,3
	rldicl 0,12,63,49
	subfe 3,3,3
	addi 8,3,1
	rlwinm 3,10,0,0xffff
	rlwinm 6,8,0,0xff
	rlwinm 8,12,0,0xffff
	subfic 7,6,0
	srwi 7,9,1
	subfe 4,4,4
	and 12,12,4
	subfc 4,7,10
	subfe 11,11,11
	rlwinm 4,4,0,0xffff
	addi 6,11,1
	rlwinm 11,6,0,0xff
	cmpwi 6,11,0
	beq- 6,.L1745
	rlwinm 3,4,0,0xffff
.L1745:
	subfc 7,7,10
	srwi. 10,8,2
	subfe 10,10,10
	srwi 4,8,2
	addi 7,10,1
	rlwinm 6,7,0,0xff
	srwi 7,9,2
	subfic 10,6,0
	subfe 11,11,11
	and 0,0,11
	or 12,0,12
	mr 11,12
	beq- 0,.L1743
	subfc 7,7,3
	subfe 10,10,10
	rlwinm 11,7,0,0xffff
	addi 6,10,1
	andi. 0,6,0xff
	beq- 0,.L1749
	mr 3,11
.L1749:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1751
	mr 7,4
.L1751:
	srwi. 6,8,3
	or 12,12,7
	mr 11,12
	srwi 4,8,3
	srwi 10,9,3
	beq- 0,.L1743
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1753
	mr 3,0
.L1753:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1755
	mr 7,4
.L1755:
	srwi. 6,8,4
	or 12,12,7
	mr 11,12
	srwi 4,8,4
	srwi 0,9,4
	beq- 0,.L1743
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1757
	mr 3,10
.L1757:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1759
	mr 7,4
.L1759:
	srwi. 6,8,5
	or 12,12,7
	mr 11,12
	srwi 4,8,5
	srwi 10,9,5
	beq- 0,.L1743
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1761
	mr 3,0
.L1761:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1763
	mr 7,4
.L1763:
	srwi. 6,8,6
	or 12,12,7
	mr 11,12
	srwi 4,8,6
	srwi 0,9,6
	beq- 0,.L1743
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1765
	mr 3,10
.L1765:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1767
	mr 7,4
.L1767:
	srwi. 6,8,7
	or 12,12,7
	mr 11,12
	srwi 4,8,7
	srwi 10,9,7
	beq- 0,.L1743
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1769
	mr 3,0
.L1769:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1771
	mr 7,4
.L1771:
	srwi. 6,8,8
	or 12,12,7
	mr 11,12
	srwi 4,8,8
	srwi 0,9,8
	beq- 0,.L1743
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1773
	mr 3,10
.L1773:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1775
	mr 7,4
.L1775:
	srwi. 6,8,9
	or 12,12,7
	mr 11,12
	srwi 4,8,9
	srwi 10,9,9
	beq- 0,.L1743
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1777
	mr 3,0
.L1777:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1779
	mr 7,4
.L1779:
	srwi. 6,8,10
	or 12,12,7
	mr 11,12
	srwi 4,8,10
	srwi 0,9,10
	beq- 0,.L1743
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1781
	mr 3,10
.L1781:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1783
	mr 7,4
.L1783:
	srwi. 6,8,11
	or 12,12,7
	mr 11,12
	srwi 4,8,11
	srwi 10,9,11
	beq- 0,.L1743
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1785
	mr 3,0
.L1785:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1787
	mr 7,4
.L1787:
	srwi. 6,8,12
	or 12,12,7
	mr 11,12
	srwi 4,8,12
	srwi 0,9,12
	beq- 0,.L1743
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1789
	mr 3,10
.L1789:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1791
	mr 7,4
.L1791:
	srwi. 6,8,13
	or 12,12,7
	mr 11,12
	srwi 4,8,13
	srwi 10,9,13
	beq- 0,.L1743
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1793
	mr 3,0
.L1793:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1795
	mr 7,4
.L1795:
	srwi. 6,8,14
	or 12,12,7
	mr 11,12
	srwi 4,8,14
	srwi 0,9,14
	beq- 0,.L1743
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1797
	mr 3,10
.L1797:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1799
	mr 7,4
.L1799:
	cmpwi 1,8,16384
	or 12,12,7
	srwi 9,9,15
	mr 11,12
	beq- 1,.L1743
	subfc 9,9,3
	subfe 8,8,8
	rlwinm 4,9,0,0xffff
	addi 11,8,1
	andi. 10,11,0xff
	beq- 0,.L1801
	mr 3,4
.L1801:
	rlwinm 3,3,0,0xffff
	or 11,12,10
	b .L1743
.L1815:
	li 12,4
	b .L1742
.L1817:
	li 12,8
	b .L1742
.L1819:
	li 12,16
	b .L1742
.L1829:
	li 12,512
	b .L1742
.L1821:
	li 12,32
	b .L1742
.L1823:
	li 12,64
	b .L1742
.L1825:
	li 12,128
	b .L1742
.L1827:
	li 12,256
	b .L1742
.L1921:
	xor 6,4,3
	subf 4,4,3
	cntlzw 0,6
	rlwinm 7,4,0,0xffff
	srwi 11,0,5
	cmpwi 1,11,0
	beq- 1,.L1919
	mr 3,7
.L1919:
	rlwinm 3,3,0,0xffff
	b .L1743
.L1831:
	li 12,1024
	b .L1742
.L1833:
	li 12,2048
	b .L1742
.L1835:
	li 12,4096
	b .L1742
.L1837:
	li 12,8192
	b .L1742
.L1839:
	li 12,16384
	b .L1742
.L1840:
	li 10,0
	li 12,-32768
	ori 9,10,0x8000
	b .L1742
.L1740:
	subf 3,4,3
	li 11,1
	rlwinm 3,3,0,0xffff
	b .L1743
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB162:
	.cfi_startproc
	cmplw 0,3,4
	li 10,16
	mr 9,3
	li 8,1
	li 3,32
	mtctr 10
	bgt+ 0,.L1923
	b .L1951
.L1927:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1925
	blt- 7,.L1928
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1925
	bdz .L1926
.L1923:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1927
.L1928:
	li 3,0
.L1933:
	subfc 7,4,9
	srwi 4,4,1
	subfe 6,6,6
	addi 11,6,1
	andi. 12,11,0xff
	subfic 10,12,0
	beq- 0,.L1930
	mr 9,7
.L1930:
	subfe 10,10,10
	and 0,8,10
	srwi. 8,8,1
	or 3,3,0
	bne+ 0,.L1933
.L1926:
	cmpwi 1,5,0
	beqlr+ 1
	mr 3,9
	blr
.L1925:
	cmpwi 0,8,0
	bne+ 0,.L1928
	li 3,0
	b .L1926
.L1951:
	subfc 4,4,9
	subfe 3,3,3
	addi 0,3,1
	andi. 3,0,0xff
	beq- 0,.L1926
	mr 9,4
	b .L1926
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
	beq- 0,.L1954
	addi 5,5,-32
	li 11,0
	slw 8,0,5
.L1955:
	sldi 12,8,32
	or 4,11,12
.L1953:
	mr 3,4
	srdi 4,4,32
	blr
.L1954:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1953
	subfic 9,5,32
	sradi 10,0,32
	srw 6,0,9
	slw 7,10,5
	or 8,6,7
	slw 11,0,5
	b .L1955
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
	beq- 0,.L1960
	sradi 11,0,32
	addi 12,5,-32
	sraw 10,11,12
	srawi 5,11,31
.L1961:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1959:
	srdi 4,6,32
	mr 3,6
	blr
.L1960:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1959
	sradi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	sraw 5,6,5
	b .L1961
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
	lis 9,0x1
	subfc 9,9,3
	subfe 8,8,8
	neg 0,8
	slwi 4,0,4
	subfic 5,4,16
	srw 3,3,5
	rlwinm 10,3,0,16,23
	cntlzw 6,10
	srwi 7,6,5
	slwi 11,7,3
	subfic 12,11,8
	add 8,11,4
	srw 9,3,12
	rlwinm 0,9,0,24,27
	cntlzw 4,0
	srwi 5,4,5
	slwi 3,5,2
	subfic 6,3,4
	add 10,3,8
	srw 7,9,6
	rlwinm 11,7,0,28,29
	cntlzw 12,11
	srwi 8,12,5
	slwi 0,8,1
	subfic 9,0,2
	srw 4,7,9
	andi. 8,4,0x2
	bne- 0,.L1968
	subfic 5,4,2
	add 3,0,10
	add 3,5,3
	blr
.L1968:
	li 5,0
	add 3,0,10
	add 3,5,3
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
	blt- 0,.L1972
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 3,9,1
	blr
.L1972:
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
	or 9,3,4
	or 0,5,6
	sradi 8,9,32
	sradi 10,0,32
	cmpw 0,8,10
	blt- 0,.L1978
	li 3,1
	bgtlr- 0
	cmplw 1,9,0
	li 3,-1
	bltlr- 1
	subfc 9,9,0
	subfe 7,7,7
	neg 3,7
	blr
.L1978:
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
	beq- 0,.L1983
	addi 12,5,-32
	srdi 11,0,32
	srw 10,11,12
	li 5,0
.L1984:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1982:
	srdi 4,6,32
	mr 3,6
	blr
.L1983:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1982
	srdi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	srw 5,6,5
	b .L1984
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
	srwi 10,11,16
	add 9,5,12
	srwi 8,9,16
	rlwimi 3,9,16,0,31-16
	add 4,10,6
	add 4,4,8
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
	lis 8,.LC33@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC33@l(8)
	beq- 0,.L1996
.L1998:
	fmul 1,1,0
.L1996:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1997
	andi. 10,9,0x1
	fmul 0,0,0
	bne- 0,.L1998
.L2002:
	srawi 9,9,1
	addze 9,9
	fmul 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1998
	b .L2002
.L1997:
	cmpwi 1,3,0
	bgelr+ 1
	lfs 2,.LC33@l(8)
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
	lis 8,.LC33@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC33@l(8)
	beq- 0,.L2004
.L2006:
	fmuls 1,1,0
.L2004:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L2005
	andi. 10,9,0x1
	fmuls 0,0,0
	bne- 0,.L2006
.L2010:
	srawi 9,9,1
	addze 9,9
	fmuls 0,0,0
	andi. 10,9,0x1
	bne- 0,.L2006
	b .L2010
.L2005:
	cmpwi 1,3,0
	bgelr+ 1
	lfs 2,.LC33@l(8)
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
	blt- 0,.L2013
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L2013:
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
	blt- 0,.L2019
	li 3,1
	bgtlr- 0
	cmplw 1,0,7
	li 3,-1
	bltlr- 1
	subfc 9,0,7
	subfe 8,8,8
	neg 3,8
	blr
.L2019:
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
	.set	.LC2,.LC24+8
	.set	.LC3,.LC24
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC5:
	.long	-8388609
	.align 2
.LC6:
	.long	2139095039
	.set	.LC9,.LC13
	.set	.LC10,.LC14
	.section	.rodata.cst16
	.align 4
.LC13:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC14:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC18,.LC24+4
	.section	.rodata.cst4
	.align 2
.LC19:
	.long	1056964608
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
	.section	.rodata.cst4
	.align 2
.LC29:
	.long	-1082130432
	.align 2
.LC31:
	.long	-1090519040
	.align 2
.LC33:
	.long	1065353216
	.align 2
.LC37:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC39:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC40:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC41:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC42:
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
