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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,28(1)
	mtvrsave 0
	cmplw 0,3,4
	ble- 0,.L2
	cmpwi 7,5,0
	add 4,4,5
	add 9,3,5
	beq- 7,.L3
	rldicl 11,5,0,32
	andi. 10,11,0x1
	addi 8,11,-1
	beq- 0,.L98
	mr. 11,8
	lbzu 12,-1(4)
	stbu 12,-1(9)
	beq- 0,.L3
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
	bne+ 1,.L98
.L3:
	lwz 0,28(1)
	mtvrsave 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L2:
	.cfi_restore_state
	beq- 0,.L3
	cmpwi 1,5,0
	beq- 1,.L3
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
	lbz 7,1(4)
	addi 11,4,2
	addi 12,3,2
	addi 6,5,-2
	stb 7,1(3)
	ble- 7,.L6
	andi. 8,10,0xc
	lbz 0,2(4)
	addi 11,4,3
	addi 12,3,3
	addi 6,5,-3
	stb 0,2(3)
	beq- 0,.L6
	cmplwi 1,9,4
	lbz 8,3(4)
	addi 11,4,4
	addi 12,3,4
	addi 6,5,-4
	stb 8,3(3)
	ble- 1,.L6
	cmplwi 5,9,5
	lbz 7,4(4)
	addi 11,4,5
	addi 12,3,5
	addi 6,5,-5
	stb 7,4(3)
	beq- 5,.L6
	cmplwi 6,9,6
	lbz 0,5(4)
	addi 11,4,6
	addi 12,3,6
	addi 6,5,-6
	stb 0,5(3)
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
	lbz 7,8(4)
	addi 11,4,9
	addi 12,3,9
	addi 6,5,-9
	stb 7,8(3)
	beq- 1,.L6
	cmplwi 5,9,10
	lbz 0,9(4)
	addi 11,4,10
	addi 12,3,10
	addi 6,5,-10
	stb 0,9(3)
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
	lbz 7,12(4)
	addi 11,4,13
	addi 12,3,13
	addi 6,5,-13
	stb 7,12(3)
	beq- 7,.L6
	cmplwi 1,9,15
	lbz 0,13(4)
	addi 11,4,14
	addi 12,3,14
	addi 6,5,-14
	stb 0,13(3)
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
	lvsr 13,0,10
	addi 8,7,-1
	add 4,4,0
	add 9,3,9
	li 10,0
	beq- 0,.L100
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,4
	vperm 1,1,0,13
	stvx 1,0,9
	beq- 0,.L97
.L100:
	addi 7,7,-2
	addi 0,10,16
	lvx 1,4,10
	vperm 0,0,1,13
	cmpdi 5,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,4,0
	vperm 1,1,0,13
	stvx 1,9,0
	bne+ 5,.L100
.L97:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 6,5,6
	add 8,11,5
	add 4,12,5
	beq- 0,.L3
	cmplwi 6,6,1
	lbzx 11,11,5
	stbx 11,12,5
	beq- 6,.L3
	cmplwi 7,6,2
	lbz 12,1(8)
	stb 12,1(4)
	beq- 7,.L3
	cmplwi 1,6,3
	lbz 9,2(8)
	stb 9,2(4)
	beq- 1,.L3
	cmplwi 5,6,4
	lbz 7,3(8)
	stb 7,3(4)
	beq- 5,.L3
	cmplwi 0,6,5
	lbz 10,4(8)
	stb 10,4(4)
	beq- 0,.L3
	cmplwi 6,6,6
	lbz 0,5(8)
	stb 0,5(4)
	beq- 6,.L3
	cmplwi 7,6,7
	lbz 5,6(8)
	stb 5,6(4)
	beq- 7,.L3
	cmplwi 1,6,8
	lbz 11,7(8)
	stb 11,7(4)
	beq- 1,.L3
	cmplwi 5,6,9
	lbz 12,8(8)
	stb 12,8(4)
	beq- 5,.L3
	cmplwi 0,6,10
	lbz 9,9(8)
	stb 9,9(4)
	beq- 0,.L3
	cmplwi 6,6,11
	lbz 7,10(8)
	stb 7,10(4)
	beq- 6,.L3
	cmplwi 7,6,12
	lbz 10,11(8)
	stb 10,11(4)
	beq- 7,.L3
	cmplwi 1,6,13
	lbz 0,12(8)
	stb 0,12(4)
	beq- 1,.L3
	cmplwi 5,6,14
	lbz 6,13(8)
	stb 6,13(4)
	beq- 5,.L3
	lbz 8,14(8)
	stb 8,14(4)
	b .L3
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
	beq- 0,.L3
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
	beq- 6,.L3
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
	b .L3
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
	beq- 0,.L105
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L126
.L115:
	srwi 0,6,1
	mtctr 0
	b .L106
.L108:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L123
	addi 3,3,1
	bdz .L105
.L106:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L108
.L123:
	addi 3,3,1
	blr
.L126:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L123
	cmpwi 5,8,0
	addi 3,3,1
	bne+ 5,.L115
.L105:
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
	beq- 0,.L131
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L148
.L134:
	srwi 0,5,1
	mtctr 0
.L128:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L128
.L131:
	li 3,0
	blr
.L148:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,1
	bne+ 5,.L134
	b .L131
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
	beq- 0,.L154
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L169
.L157:
	srwi 0,5,1
	mtctr 0
	b .L150
.L152:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L166
	bdz .L154
.L150:
	lbz 10,0(3)
	addi 7,3,1
	addi 5,4,1
	lbz 9,0(4)
	cmpw 6,10,9
	beq+ 6,.L152
.L166:
	subf 3,9,10
	blr
.L169:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L166
	cmpwi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L157
.L154:
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
	beq- 0,.L171
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L171:
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
	beq- 0,.L181
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr- 1
.L181:
	srwi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L189
.L179:
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
	bdnz .L179
.L189:
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
	beq- 0,.L193
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L193:
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
.L197:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L197
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
.L208:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L208
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
.L211:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L211
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
	beq+ 0,.L216
	b .L215
.L217:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne- 5,.L215
.L216:
	cmpwi 1,9,0
	bne+ 1,.L217
.L215:
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
	beq- 0,.L225
	mr 4,3
.L224:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L224
	subf 3,3,4
	blr
.L225:
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
	beq- 0,.L235
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L231
	b .L240
.L242:
	bdz .L230
	bne- 7,.L230
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L241
	mr 4,8
.L231:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L242
.L230:
	subf 3,7,10
	blr
.L235:
	li 3,0
	blr
.L241:
	lbz 7,1(4)
	subf 3,7,10
	blr
.L240:
	lbz 7,0(4)
	b .L230
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
	oris 0,12,0xc00c
	stw 12,28(1)
	mtvrsave 0
	cmpwi 0,5,1
	ble- 0,.L243
	addi 9,5,-2
	cmplwi 1,9,13
	ble- 1,.L245
	andi. 9,4,0xf
	bne- 0,.L245
	lis 6,.LC0@ha
	neg 10,3
	lvx 1,0,3
	la 7,.LC0@l(6)
	srwi 11,5,1
	lvsr 12,0,10
	srwi 8,5,4
	rldicl 6,5,60,36
	lvx 13,0,7
	li 9,0
	addi 12,3,15
.L246:
	addi 6,6,-1
	vor 0,1,1
	lvx 1,12,9
	vperm 0,0,1,12
	cmpdi 5,6,0
	vperm 0,0,0,13
	stvx 0,4,9
	addi 9,9,16
	bne+ 5,.L246
	slwi 0,8,3
	slwi 10,8,4
	cmplw 6,11,0
	subf 5,10,5
	add 11,4,10
	add 8,3,10
	beq- 6,.L243
	cmpwi 7,5,3
	lhbrx 3,3,10
	sthx 3,4,10
	ble- 7,.L243
	cmpwi 1,5,5
	addi 4,8,2
	lhbrx 12,0,4
	sth 12,2(11)
	ble- 1,.L243
	cmpwi 0,5,7
	addi 6,8,4
	lhbrx 9,0,6
	sth 9,4(11)
	ble- 0,.L243
	cmpwi 5,5,9
	addi 10,8,6
	lhbrx 0,0,10
	sth 0,6(11)
	ble- 5,.L243
	cmpwi 6,5,11
	addi 7,8,8
	lhbrx 3,0,7
	sth 3,8(11)
	ble- 6,.L243
	cmpwi 7,5,13
	addi 5,8,10
	lhbrx 4,0,5
	sth 4,10(11)
	ble- 7,.L243
	addi 8,8,12
	lhbrx 12,0,8
	sth 12,12(11)
.L243:
	lwz 3,28(1)
	mtvrsave 3
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L245:
	.cfi_restore_state
	rldicl 5,5,63,33
	andi. 9,5,0x1
	addi 11,5,-1
	beq- 0,.L257
	mr. 5,11
	lbz 6,1(3)
	addi 4,4,2
	lbz 9,0(3)
	addi 3,3,2
	stb 6,-2(4)
	stb 9,-1(4)
	beq- 0,.L243
.L257:
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
	bne+ 1,.L257
	b .L243
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
	beq- 0,.L263
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L263:
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
	ble- 0,.L266
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L266:
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
	li 10,1
	cmplwi 0,3,9
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
	addi 3,3,-33
	li 10,1
	cmplwi 0,3,93
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
	addi 3,3,-97
	li 10,1
	cmplwi 0,3,25
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
	addi 3,3,-32
	li 10,1
	cmplwi 0,3,94
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
	beq- 0,.L273
	addi 3,3,-9
	li 9,1
	cmplwi 1,3,4
	isel 3,0,9,5
	blr
.L273:
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
	li 10,1
	cmplwi 0,3,25
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
	ble- 0,.L277
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
.L277:
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
	li 10,1
	cmplwi 0,3,9
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
	ble- 0,.L288
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
.L288:
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
	ble- 0,.L291
	ori 3,3,0x20
	li 10,1
	addi 0,3,-97
	cmplwi 1,0,5
	isel 3,0,10,5
	blr
.L291:
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
	bun- 1,.L297
	fcmpu 5,1,2
	bng- 5,.L300
	fsub 1,1,2
	blr
.L300:
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	blr
.L297:
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
	bun- 1,.L305
	fcmpu 5,1,2
	bng- 5,.L308
	fsubs 1,1,2
	blr
.L308:
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	blr
.L305:
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
	bun- 0,.L314
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
	bne- 5,.L322
	fcmpu 6,1,2
	bnl- 6,.L309
	fmr 1,2
.L309:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L322:
	.cfi_restore_state
	cmpwi 7,0,0
	fmr 1,2
	bne- 7,.L309
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L314:
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
	bun- 0,.L328
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
	bne- 5,.L336
	fcmpu 6,1,2
	bnl- 6,.L323
	fmr 1,2
.L323:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L336:
	.cfi_restore_state
	cmpwi 7,3,0
	fmr 1,2
	bne- 7,.L323
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L328:
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
	bun- 0,.L342
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
	bne- 5,.L349
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bnl- 6,.L337
.L344:
	fmr 1,3
	fmr 2,4
.L337:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L349:
	.cfi_restore_state
	cmpwi 7,0,0
	bne- 7,.L344
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L342:
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
	bun- 0,.L355
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
	beq- 5,.L352
	cmpwi 7,0,0
	bne- 7,.L350
	fmr 1,2
.L350:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L352:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L354
	fmr 0,1
.L354:
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L355:
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
	bun- 0,.L368
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
	beq- 5,.L365
	cmpwi 7,3,0
	bne- 7,.L363
	fmr 1,2
.L363:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L365:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L367
	fmr 0,1
.L367:
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L368:
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
	bun- 0,.L381
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
	bne- 5,.L390
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	blt- 6,.L376
.L388:
	fmr 1,3
	fmr 2,4
.L376:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L390:
	.cfi_restore_state
	cmpwi 7,0,0
	beq- 7,.L388
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L381:
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
	beq- 0,.L394
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L393:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L393
	li 5,0
	stb 5,0(10)
	blr
.L394:
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
	beq- 0,.L404
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L404:
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
	beq- 0,.L406
	lwz 10,4(3)
	stw 10,4(9)
.L406:
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
	beq- 0,.L415
	stw 25,36(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,56(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L417
.L432:
	beq- 7,.L431
.L417:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L432
	lwz 25,36(1)
	.cfi_restore 25
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L414:
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
.L431:
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
.L415:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L414
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
	beq- 0,.L434
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
	b .L436
.L447:
	beq- 7,.L446
.L436:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L447
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
.L446:
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
.L434:
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
.L456:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L450
	ble- 7,.L450
	cmpwi 1,10,43
	beq- 1,.L451
	cmpwi 6,10,45
	bne- 6,.L471
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L461
	li 6,1
.L454:
	li 0,0
.L458:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L458
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L450:
	addi 3,3,1
	b .L456
.L471:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L454
.L461:
	li 3,0
	blr
.L451:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L454
	b .L461
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L477:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L473
	ble- 7,.L473
	cmpwi 1,10,43
	beq- 1,.L474
	cmpwi 6,10,45
	beq- 6,.L475
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	bgt- 7,.L484
.L478:
	li 0,0
.L481:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L481
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L473:
	addi 3,3,1
	b .L477
.L475:
	lbz 10,1(3)
	li 6,1
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	ble+ 0,.L478
.L484:
	li 3,0
	blr
.L474:
	lbz 10,1(3)
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L484
	li 6,0
	b .L478
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L501:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L495
	ble- 7,.L495
	cmpwi 1,10,43
	beq- 1,.L496
	cmpwi 6,10,45
	bne- 6,.L516
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L506
	li 6,1
.L499:
	li 5,0
.L503:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 11,5,2
	add 12,11,5
	extsw 0,8
	addi 7,10,-48
	sldi 9,12,1
	cmplwi 1,7,9
	subf 5,0,9
	ble+ 1,.L503
	cmpwi 5,6,0
	subf 3,9,0
	isel 4,3,5,22
.L494:
	srdi 3,4,32
	blr
.L495:
	addi 3,3,1
	b .L501
.L516:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L499
.L506:
	li 4,0
	b .L494
.L496:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L499
	li 4,0
	b .L494
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
	beq- 0,.L518
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
	b .L521
.L530:
	beq- 1,.L528
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L529
.L521:
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
	bge+ 1,.L530
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L521
.L529:
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
.L518:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L528:
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
	beq- 0,.L536
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L544:
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
	beq- 7,.L548
.L550:
	cmpwi 5,29,0
	ble- 7,.L534
	add 28,30,27
	bne+ 0,.L544
.L549:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L536:
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
.L534:
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
	beq- 5,.L549
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
	bne+ 7,.L550
.L548:
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
	beq- 0,.L562
.L559:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L559
.L562:
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
	beq+ 0,.L569
	b .L568
.L570:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne- 0,.L568
.L569:
	cmpwi 7,9,0
	bne+ 7,.L570
.L568:
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
.L574:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L574
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
	beq- 0,.L580
	mr 4,3
.L579:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L579
	subf 3,3,4
	srawi 3,3,2
	blr
.L580:
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
	bne+ 0,.L583
	b .L591
.L594:
	beq- 7,.L585
	addi 3,3,4
	addi 4,4,4
	bdz .L591
.L583:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L594
.L585:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	blt- 5,.L595
	mfcr 3,4
	rlwinm 3,3,22,1
	blr
.L595:
	li 3,-1
	blr
.L591:
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
	beq- 0,.L600
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L617
.L603:
	srwi 0,5,1
	mtctr 0
.L597:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L597
.L600:
	li 3,0
	blr
.L617:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L603
	b .L600
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
	beq- 0,.L624
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L639
.L627:
	srwi 0,5,1
	mtctr 0
	b .L619
.L621:
	lwz 12,4(3)
	addi 3,7,4
	lwz 9,4(4)
	addi 4,6,4
	cmpw 1,12,9
	bne- 1,.L636
	bdz .L624
.L619:
	lwz 5,0(3)
	addi 7,3,4
	addi 6,4,4
	lwz 11,0(4)
	cmpw 1,5,11
	beq+ 1,.L621
.L636:
	li 4,-1
	mfcr 3,64
	rlwinm 3,3,6,1
	isel 3,4,3,4
	blr
.L639:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne- 1,.L636
	cmpwi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L627
.L624:
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
	beq- 0,.L641
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L641:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,28(1)
	mtvrsave 0
	cmplw 0,3,4
	beq- 0,.L667
	slwi 9,5,2
	subf 10,4,3
	cmplw 1,10,9
	blt- 1,.L648
	cmpwi 5,5,0
	beq- 5,.L667
	addi 11,5,-1
	cmplwi 6,11,10
	ble- 6,.L652
	addi 6,4,4
	subf 7,6,3
	cmplwi 7,7,8
	ble- 7,.L652
	srwi 8,3,2
	neg 12,8
	andi. 0,12,0x3
	beq- 0,.L662
	andi. 10,12,0x2
	lwz 9,0(4)
	addi 12,3,4
	addi 11,5,-2
	stw 9,0(3)
	beq- 0,.L653
	cmplwi 1,0,3
	lwz 10,4(4)
	stw 10,4(3)
	bne- 1,.L701
	lwz 7,8(4)
	addi 6,4,12
	addi 12,3,12
	addi 11,5,-4
	stw 7,8(3)
.L653:
	subf 5,0,5
	slwi 9,0,2
	rldicl 7,5,62,34
	add 0,4,9
	lvx 0,4,9
	andi. 8,7,0x1
	addi 10,9,15
	neg 8,0
	add 4,4,10
	addi 0,7,-1
	add 9,3,9
	lvsr 13,0,8
	li 10,0
	beq- 0,.L697
	mr. 7,0
	vor 1,0,0
	li 10,16
	lvx 0,0,4
	vperm 1,1,0,13
	stvx 1,0,9
	beq- 0,.L694
.L697:
	addi 7,7,-2
	addi 8,10,16
	lvx 1,4,10
	vperm 0,0,1,13
	cmpdi 5,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,4,8
	vperm 1,1,0,13
	stvx 1,9,8
	bne+ 5,.L697
.L694:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	slwi 0,5,2
	subf 11,5,11
	add 4,6,0
	add 10,12,0
	beq- 0,.L667
	cmpwi 6,11,0
	lwzx 6,6,0
	stwx 6,12,0
	beq- 6,.L667
	cmplwi 7,11,1
	lwz 12,4(4)
	stw 12,4(10)
	beq- 7,.L667
	lwz 9,8(4)
	stw 9,8(10)
.L667:
	lwz 12,28(1)
	mtvrsave 12
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L648:
	.cfi_restore_state
	cmpwi 5,5,0
	beq- 5,.L667
	rldicl 11,5,0,32
	add 4,4,9
	andi. 10,11,0x1
	add 9,3,9
	addi 7,11,-1
	beq- 0,.L695
	mr. 11,7
	lwzu 5,-4(4)
	stwu 5,-4(9)
	beq- 0,.L667
.L695:
	lwz 0,-4(4)
	addi 11,11,-2
	mr 8,4
	cmpdi 6,11,0
	addi 10,9,-4
	stw 0,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 6,-8(8)
	stw 6,-4(10)
	beq- 6,.L667
	lwz 0,-4(4)
	addi 11,11,-2
	mr 8,4
	cmpdi 6,11,0
	addi 10,9,-4
	stw 0,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 6,-8(8)
	stw 6,-4(10)
	bne+ 6,.L695
	b .L667
.L662:
	mr 6,4
	mr 12,3
	b .L653
.L652:
	rldicl 5,5,0,32
	addi 11,4,-4
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,3,-4
	beq- 0,.L696
	mr. 5,7
	lwz 8,0(4)
	mr 11,4
	mr 10,3
	stw 8,0(3)
	beq- 0,.L667
.L696:
	lwz 0,4(11)
	addi 5,5,-2
	mr 4,11
	cmpdi 1,5,0
	mr 6,10
	stw 0,4(10)
	addi 11,11,8
	addi 10,10,8
	lwz 12,8(4)
	stw 12,8(6)
	beq- 1,.L667
	lwz 0,4(11)
	addi 5,5,-2
	mr 4,11
	cmpdi 1,5,0
	mr 6,10
	stw 0,4(10)
	addi 11,11,8
	addi 10,10,8
	lwz 12,8(4)
	stw 12,8(6)
	bne+ 1,.L696
	b .L667
.L701:
	addi 6,4,8
	addi 12,3,8
	addi 11,5,-3
	b .L653
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
	ble- 1,.L711
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mfvrsave 12
	oris 6,12,0x8000
	stw 12,44(1)
	mtvrsave 6
	cmpwi 5,9,0
	mr 12,3
	beq- 5,.L705
	andi. 10,0,0x2
	stw 4,0(3)
	addi 12,3,4
	addi 7,5,-2
	beq- 0,.L705
	cmplwi 6,9,3
	stw 4,4(3)
	addi 12,3,8
	addi 7,5,-3
	bne- 6,.L705
	stw 4,8(3)
	addi 12,3,12
	addi 7,5,-4
.L705:
	subf 5,9,5
	stw 4,16(1)
	slwi 0,9,2
	rldicl 10,5,62,34
	li 11,16
	andi. 8,10,0x3
	add 9,3,0
	lvewx 0,1,11
	addi 6,10,-1
	vspltw 0,0,0
	beq- 0,.L752
	cmpdi 7,8,1
	beq- 7,.L737
	cmpdi 1,8,2
	beq- 1,.L738
	stvx 0,0,9
	mr 10,6
	addi 9,9,16
.L738:
	stvx 0,0,9
	addi 10,10,-1
	addi 9,9,16
.L737:
	addi 10,10,-1
	stvx 0,0,9
	addi 9,9,16
	cmpdi 5,10,0
	beq- 5,.L751
.L752:
	addi 10,10,-4
	addi 8,9,16
	stvx 0,0,9
	cmpdi 6,10,0
	addi 11,9,32
	stvx 0,0,8
	addi 6,9,48
	stvx 0,0,11
	addi 9,9,64
	stvx 0,0,6
	bne+ 6,.L752
.L751:
	andi. 9,5,0x3
	beq- 0,.L703
	rlwinm 5,5,0,0,29
	subf 7,5,7
	slwi 0,5,2
	cmpwi 7,7,0
	add 12,12,0
	stw 4,0(12)
	beq- 7,.L703
	cmplwi 1,7,1
	stw 4,4(12)
	beq- 1,.L703
	cmplwi 5,7,2
	stw 4,8(12)
	beq- 5,.L703
	cmplwi 6,7,3
	stw 4,12(12)
	beq- 6,.L703
	cmplwi 0,7,4
	stw 4,16(12)
	beq- 0,.L703
	stw 4,20(12)
.L703:
	lwz 4,44(1)
	mtvrsave 4
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
.L711:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,28(1)
	mtvrsave 0
	cmplw 0,3,4
	bge- 0,.L766
	cmpwi 7,5,0
	add 3,3,5
	add 4,4,5
	beq- 7,.L765
	rldicl 12,5,0,32
	andi. 9,12,0x1
	addi 7,12,-1
	beq- 0,.L862
	mr. 12,7
	lbzu 6,-1(3)
	stbu 6,-1(4)
	beq- 0,.L765
.L862:
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
	bne+ 1,.L862
.L765:
	lwz 8,28(1)
	mtvrsave 8
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L766:
	.cfi_restore_state
	beq- 0,.L765
	cmpwi 1,5,0
	beq- 1,.L765
	addi 7,5,-1
	cmplwi 5,7,29
	ble- 5,.L769
	addi 6,3,1
	subf 9,6,4
	cmplwi 6,9,14
	ble- 6,.L769
	neg 10,4
	andi. 12,10,0xf
	beq- 0,.L791
	andi. 8,10,0xe
	lbz 8,0(3)
	addi 11,4,1
	stb 8,0(4)
	beq- 0,.L770
	cmplwi 7,12,2
	lbz 0,1(3)
	addi 6,3,2
	addi 11,4,2
	addi 7,5,-2
	stb 0,1(4)
	ble- 7,.L770
	andi. 8,10,0xc
	lbz 9,2(3)
	addi 6,3,3
	addi 11,4,3
	addi 7,5,-3
	stb 9,2(4)
	beq- 0,.L770
	cmplwi 1,12,4
	lbz 8,3(3)
	addi 6,3,4
	addi 11,4,4
	addi 7,5,-4
	stb 8,3(4)
	ble- 1,.L770
	cmplwi 5,12,5
	lbz 0,4(3)
	addi 6,3,5
	addi 11,4,5
	addi 7,5,-5
	stb 0,4(4)
	beq- 5,.L770
	cmplwi 6,12,6
	lbz 9,5(3)
	addi 6,3,6
	addi 11,4,6
	addi 7,5,-6
	stb 9,5(4)
	beq- 6,.L770
	andi. 10,10,0x8
	lbz 10,6(3)
	addi 6,3,7
	addi 11,4,7
	addi 7,5,-7
	stb 10,6(4)
	beq- 0,.L770
	cmplwi 7,12,8
	lbz 8,7(3)
	addi 6,3,8
	addi 11,4,8
	addi 7,5,-8
	stb 8,7(4)
	ble- 7,.L770
	cmplwi 1,12,9
	lbz 0,8(3)
	addi 6,3,9
	addi 11,4,9
	addi 7,5,-9
	stb 0,8(4)
	beq- 1,.L770
	cmplwi 5,12,10
	lbz 9,9(3)
	addi 6,3,10
	addi 11,4,10
	addi 7,5,-10
	stb 9,9(4)
	beq- 5,.L770
	cmplwi 6,12,11
	lbz 10,10(3)
	addi 6,3,11
	addi 11,4,11
	addi 7,5,-11
	stb 10,10(4)
	beq- 6,.L770
	cmplwi 0,12,12
	lbz 8,11(3)
	addi 6,3,12
	addi 11,4,12
	addi 7,5,-12
	stb 8,11(4)
	beq- 0,.L770
	cmplwi 7,12,13
	lbz 0,12(3)
	addi 6,3,13
	addi 11,4,13
	addi 7,5,-13
	stb 0,12(4)
	beq- 7,.L770
	cmplwi 1,12,15
	lbz 9,13(3)
	addi 6,3,14
	addi 11,4,14
	addi 7,5,-14
	stb 9,13(4)
	bne- 1,.L770
	lbz 10,14(3)
	addi 6,3,15
	addi 11,4,15
	addi 7,5,-15
	stb 10,14(4)
.L770:
	subf 5,12,5
	add 0,3,12
	lvx 0,3,12
	rldicl 8,5,60,36
	neg 9,0
	andi. 0,8,0x1
	addi 0,12,15
	lvsr 13,0,9
	add 4,4,12
	add 3,3,0
	addi 12,8,-1
	li 9,0
	beq- 0,.L864
	mr. 8,12
	vor 1,0,0
	li 9,16
	lvx 0,0,3
	vperm 1,1,0,13
	stvx 1,0,4
	beq- 0,.L861
.L864:
	addi 8,8,-2
	addi 10,9,16
	lvx 1,3,9
	vperm 0,0,1,13
	cmpdi 5,8,0
	stvx 0,4,9
	addi 9,9,32
	lvx 0,3,10
	vperm 1,1,0,13
	stvx 1,4,10
	bne+ 5,.L864
.L861:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 7,5,7
	add 4,11,5
	add 12,6,5
	beq- 0,.L765
	cmplwi 6,7,1
	lbzx 6,6,5
	stbx 6,11,5
	beq- 6,.L765
	cmplwi 7,7,2
	lbz 11,1(12)
	stb 11,1(4)
	beq- 7,.L765
	cmplwi 1,7,3
	lbz 0,2(12)
	stb 0,2(4)
	beq- 1,.L765
	cmplwi 5,7,4
	lbz 3,3(12)
	stb 3,3(4)
	beq- 5,.L765
	cmplwi 0,7,5
	lbz 8,4(12)
	stb 8,4(4)
	beq- 0,.L765
	cmplwi 6,7,6
	lbz 9,5(12)
	stb 9,5(4)
	beq- 6,.L765
	cmplwi 7,7,7
	lbz 10,6(12)
	stb 10,6(4)
	beq- 7,.L765
	cmplwi 1,7,8
	lbz 5,7(12)
	stb 5,7(4)
	beq- 1,.L765
	cmplwi 5,7,9
	lbz 6,8(12)
	stb 6,8(4)
	beq- 5,.L765
	cmplwi 0,7,10
	lbz 11,9(12)
	stb 11,9(4)
	beq- 0,.L765
	cmplwi 6,7,11
	lbz 0,10(12)
	stb 0,10(4)
	beq- 6,.L765
	cmplwi 7,7,12
	lbz 3,11(12)
	stb 3,11(4)
	beq- 7,.L765
	cmplwi 1,7,13
	lbz 8,12(12)
	stb 8,12(4)
	beq- 1,.L765
	cmplwi 5,7,14
	lbz 7,13(12)
	stb 7,13(4)
	beq- 5,.L765
	lbz 12,14(12)
	stb 12,14(4)
	b .L765
.L769:
	rldicl 5,5,0,32
	addi 10,3,-1
	andi. 9,5,0x1
	addi 6,5,-1
	addi 9,4,-1
	beq- 0,.L863
	mr. 5,6
	lbz 11,0(3)
	mr 10,3
	mr 9,4
	stb 11,0(4)
	beq- 0,.L765
.L863:
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
	beq- 6,.L765
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
	bne+ 6,.L863
	b .L765
.L791:
	mr 11,4
	mr 6,3
	mr 7,5
	b .L770
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
	or 0,4,3
	srdi 10,0,32
	rotlwi 8,0,24
	rotlwi 4,10,24
	rlwimi 8,0,8,8,15
	rlwimi 4,10,8,8,15
	rlwimi 8,0,8,24,31
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
	b .L883
.L881:
	addi 9,9,1
	bne- 0,.L887
	bdz .L891
.L883:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L881
.L887:
	mr 3,9
	blr
.L891:
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
	beq- 0,.L895
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L894:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L894
	blr
.L895:
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
	blt- 5,.L923
	lis 9,.LC18@ha
	lfs 2,.LC18@l(9)
.L912:
	andi. 9,3,0x1
	beq- 0,.L913
.L914:
	fmuls 1,1,2
.L913:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmuls 2,2,2
	bne- 0,.L914
.L924:
	srawi 3,3,1
	addze 3,3
	fmuls 2,2,2
	andi. 9,3,0x1
	bne- 0,.L914
	b .L924
.L923:
	lis 4,.LC19@ha
	lfs 2,.LC19@l(4)
	b .L912
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
	blt- 5,.L938
	lis 9,.LC18@ha
	lfs 2,.LC18@l(9)
.L927:
	andi. 9,3,0x1
	beq- 0,.L928
.L929:
	fmul 1,1,2
.L928:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmul 2,2,2
	bne- 0,.L929
.L939:
	srawi 3,3,1
	addze 3,3
	fmul 2,2,2
	andi. 9,3,0x1
	bne- 0,.L929
	b .L939
.L938:
	lis 4,.LC19@ha
	lfs 2,.LC19@l(4)
	b .L927
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
	bun- 0,.L941
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
	beq- 1,.L956
	cmpwi 5,31,0
	stfd 30,48(1)
	.cfi_offset 62, -16
	stfd 31,56(1)
	.cfi_offset 63, -8
	blt- 5,.L957
	lis 9,.LC24@ha
	la 3,.LC24@l(9)
	lfd 30,0(3)
	lfd 31,8(3)
.L942:
	andi. 9,31,0x1
	beq- 0,.L943
.L944:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	fmr 29,2
	fmr 28,1
.L943:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L955
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L944
.L958:
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
	bne- 0,.L944
	b .L958
.L955:
	lfd 30,48(1)
	.cfi_restore 62
	lfd 31,56(1)
	.cfi_restore 63
.L956:
	lwz 0,68(1)
	lwz 31,28(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L941:
	fmr 1,28
	lfd 28,32(1)
	fmr 2,29
	lfd 29,40(1)
	addi 1,1,64
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L957:
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
	b .L942
	.cfi_endproc
.LFE89:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc00c
	stw 12,28(1)
	mtvrsave 0
	cmpwi 0,5,0
	beq- 0,.L960
	neg 8,3
	li 7,23
	rlwinm 10,8,0,28,31
	addi 6,5,-1
	addi 9,10,15
	cmplwi 1,9,23
	isel 11,7,9,4
	cmplw 5,6,11
	blt- 5,.L981
	cmpwi 6,10,0
	beq- 6,.L982
	lbz 12,0(3)
	andi. 11,8,0xe
	lbz 0,0(4)
	xor 7,0,12
	stb 7,0(3)
	beq- 0,.L998
	cmplwi 7,10,2
	lbz 6,1(3)
	lbz 11,1(4)
	xor 0,11,6
	stb 0,1(3)
	ble- 7,.L999
	lbz 7,2(3)
	andi. 6,8,0xc
	lbz 12,2(4)
	xor 11,12,7
	stb 11,2(3)
	beq- 0,.L1000
	cmplwi 1,10,4
	lbz 6,3(3)
	lbz 0,3(4)
	xor 12,0,6
	stb 12,3(3)
	ble- 1,.L1001
	cmplwi 5,10,5
	lbz 11,4(3)
	lbz 7,4(4)
	xor 0,7,11
	stb 0,4(3)
	beq- 5,.L1002
	cmplwi 6,10,6
	lbz 6,5(3)
	lbz 12,5(4)
	xor 7,12,6
	stb 7,5(3)
	beq- 6,.L1003
	lbz 11,6(3)
	andi. 8,8,0x8
	addi 7,3,7
	lbz 8,6(4)
	addi 6,5,-7
	xor 0,8,11
	addi 11,4,7
	stb 0,6(3)
	beq- 0,.L962
	cmplwi 7,10,8
	lbz 6,7(3)
	lbz 12,7(4)
	xor 7,12,6
	stb 7,7(3)
	ble- 7,.L1004
	cmplwi 1,10,9
	lbz 11,8(3)
	lbz 8,8(4)
	xor 0,8,11
	stb 0,8(3)
	beq- 1,.L1005
	cmplwi 5,10,10
	lbz 6,9(3)
	lbz 12,9(4)
	xor 7,12,6
	stb 7,9(3)
	beq- 5,.L1006
	cmplwi 6,10,11
	lbz 11,10(3)
	lbz 8,10(4)
	xor 0,8,11
	stb 0,10(3)
	beq- 6,.L1007
	cmplwi 0,10,12
	lbz 6,11(3)
	lbz 12,11(4)
	xor 7,12,6
	stb 7,11(3)
	beq- 0,.L1008
	cmplwi 7,10,13
	lbz 11,12(3)
	lbz 8,12(4)
	xor 0,8,11
	stb 0,12(3)
	beq- 7,.L1009
	cmplwi 1,10,15
	lbz 6,13(3)
	lbz 12,13(4)
	xor 7,12,6
	stb 7,13(3)
	bne- 1,.L1010
	lbz 0,14(3)
	addi 11,4,15
	addi 7,3,15
	lbz 8,14(4)
	addi 6,5,-15
	xor 12,8,0
	stb 12,14(3)
.L962:
	add 8,4,10
	subf 5,10,5
	lvx 13,4,10
	rldicl 12,5,60,36
	add 4,4,9
	add 10,3,10
	neg 9,8
	li 8,0
	lvsr 12,0,9
.L978:
	addi 12,12,-1
	lvx 0,10,8
	vor 1,13,13
	lvx 13,4,8
	cmpdi 5,12,0
	vperm 1,1,13,12
	vxor 0,0,1
	stvx 0,10,8
	addi 8,8,16
	bne+ 5,.L978
	andi. 9,5,0xf
	rlwinm 0,5,0,0,27
	add 12,7,0
	add 4,11,0
	subf 5,0,6
	beq- 0,.L960
.L961:
	rldicl 5,5,0,32
	addi 9,4,-1
	andi. 10,5,0x1
	addi 11,5,-1
	addi 10,12,-1
	beq- 0,.L996
	lbz 7,0(12)
	mr. 5,11
	mr 9,4
	lbz 6,0(4)
	mr 10,12
	xor 4,6,7
	stb 4,0(12)
	beq- 0,.L960
.L996:
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
	bne+ 6,.L996
.L960:
	lwz 9,28(1)
	mtvrsave 9
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1001:
	.cfi_restore_state
	addi 11,4,4
	addi 7,3,4
	addi 6,5,-4
	b .L962
.L981:
	mr 12,3
	b .L961
.L998:
	addi 11,4,1
	addi 7,3,1
	b .L962
.L999:
	addi 11,4,2
	addi 7,3,2
	addi 6,5,-2
	b .L962
.L1000:
	addi 11,4,3
	addi 7,3,3
	addi 6,5,-3
	b .L962
.L1002:
	addi 11,4,5
	addi 7,3,5
	addi 6,5,-5
	b .L962
.L982:
	mr 7,3
	mr 11,4
	mr 6,5
	b .L962
.L1008:
	addi 11,4,12
	addi 7,3,12
	addi 6,5,-12
	b .L962
.L1003:
	addi 11,4,6
	addi 7,3,6
	addi 6,5,-6
	b .L962
.L1004:
	addi 11,4,8
	addi 7,3,8
	addi 6,5,-8
	b .L962
.L1005:
	addi 11,4,9
	addi 7,3,9
	addi 6,5,-9
	b .L962
.L1006:
	addi 11,4,10
	addi 7,3,10
	addi 6,5,-10
	b .L962
.L1007:
	addi 11,4,11
	addi 7,3,11
	addi 6,5,-11
	b .L962
.L1009:
	addi 11,4,13
	addi 7,3,13
	addi 6,5,-13
	b .L962
.L1010:
	addi 11,4,14
	addi 7,3,14
	addi 6,5,-14
	b .L962
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
	beq- 0,.L1012
.L1013:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1013
.L1012:
	cmpwi 5,5,0
	beq- 5,.L1014
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne- 0,.L1037
.L1025:
	srwi 0,5,1
	mtctr 0
.L1015:
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
	bdnz .L1015
.L1014:
	li 6,0
	stb 6,0(9)
	blr
.L1037:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpwi 7,7,0
	addi 9,9,1
	bne+ 7,.L1025
	b .L1014
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
	beq- 0,.L1050
	cmpwi 1,8,1
	beq- 1,.L1061
	cmpwi 5,8,2
	beq- 5,.L1062
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1062:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1061:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmplw 1,4,3
	beqlr- 1
.L1050:
	srwi 10,10,2
.L1039:
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
	bne+ 1,.L1039
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
	beq- 0,.L1076
.L1072:
	mr 10,4
	b .L1075
.L1074:
	beqlr- 7
.L1075:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1074
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1072
.L1076:
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
.L1082:
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
	bne+ 0,.L1082
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
	beq- 0,.L1098
	mr 9,4
.L1087:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1087
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1106
.L1109:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1108
.L1106:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1109
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L1089
.L1111:
	bdz .L1091
	bne- 7,.L1092
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1110
	lbzu 10,1(6)
.L1089:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1111
.L1092:
	addi 8,8,1
	b .L1106
.L1108:
	li 3,0
	blr
.L1110:
	lbz 9,1(6)
.L1091:
	cmpw 5,12,9
	bne+ 5,.L1092
.L1098:
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
	blt- 0,.L1122
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1122:
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
	blt- 1,.L1131
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1131
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1128
.L1125:
	cmplw 1,0,9
	blt- 1,.L1131
.L1128:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1125
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1126:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1125
	bdnz .L1126
	blr
.L1131:
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
	beq- 0,.L1140
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L1140:
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
	blt- 7,.L1168
	lis 4,.LC33@ha
	li 10,0
	lfs 2,.LC33@l(4)
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1169
.L1148:
	lis 12,.LC19@ha
	lis 9,.LC33@ha
	lfs 7,.LC19@l(12)
	li 11,0
	lfs 8,.LC33@l(9)
.L1154:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1154
	cmpwi 1,10,0
	stw 11,0(3)
	beqlr- 1
.L1171:
	fneg 1,1
	blr
.L1169:
	lis 5,.LC19@ha
	lfs 3,.LC19@l(5)
	fcmpu 1,1,3
	bnl- 1,.L1151
	bne- 7,.L1160
.L1151:
	li 0,0
	stw 0,0(3)
	blr
.L1168:
	lis 6,.LC29@ha
	fneg 12,1
	lfs 4,.LC29@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1170
	fmr 1,12
	li 10,1
	b .L1148
.L1170:
	lis 7,.LC31@ha
	lfs 5,.LC31@l(7)
	fcmpu 6,1,5
	bng- 6,.L1151
	li 10,1
.L1149:
	lis 8,.LC19@ha
	fmr 1,12
	li 11,0
	lfs 6,.LC19@l(8)
.L1156:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt+ 7,.L1156
	cmpwi 1,10,0
	stw 11,0(3)
	bne+ 1,.L1171
	blr
.L1160:
	fmr 12,1
	b .L1149
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
	or 0,4,3
	sldi 5,5,32
	cmpdi 0,0,0
	rldicl 6,6,0,32
	li 4,0
	or 10,6,5
	beq- 0,.L1172
.L1174:
	rldicl 9,0,0,63
	srdi 0,0,1
	cmpdi 1,0,0
	neg 7,9
	and 8,7,10
	sldi 10,10,1
	add 4,4,8
	bne+ 1,.L1174
.L1172:
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
	blt+ 0,.L1178
	b .L1200
.L1182:
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1180
	blt- 5,.L1197
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	ble- 7,.L1180
	bdz .L1181
.L1178:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1182
.L1197:
	cmplw 7,3,4
	b .L1183
.L1180:
	cmpwi 6,12,0
	beq- 6,.L1187
.L1183:
	li 10,0
	li 11,1
	li 5,0
.L1184:
	isel 7,0,11,28
	subf 6,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,5,12,6
	srwi. 12,12,1
	isel 3,3,6,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1184
.L1181:
	cmpdi 5,0,0
	isel 3,10,3,22
	blr
.L1200:
	isel 9,0,12,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1181
.L1187:
	li 10,0
	b .L1181
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
	beq- 0,.L1205
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1205:
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
	beq- 0,.L1208
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1208:
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
.L1211:
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
	bne+ 0,.L1211
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,28(1)
	mtvrsave 0
	cmplw 0,3,4
	srwi 12,5,3
	rlwinm 11,5,0,0,28
	blt- 0,.L1219
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1306
.L1219:
	cmpwi 7,12,0
	addi 8,4,-8
	addi 10,3,-8
	beq- 7,.L1291
	andi. 7,12,0x1
	addi 6,12,-1
	beq- 0,.L1300
	mr. 12,6
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1294
.L1300:
	ld 9,8(8)
	addi 12,12,-2
	mr 6,8
	cmpdi 5,12,0
	addi 7,10,8
	std 9,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 5,.L1300
.L1294:
	cmplw 6,5,11
	ble- 6,.L1215
	subf 12,11,5
	addi 8,12,-1
	cmplwi 7,8,29
	ble- 7,.L1224
	addi 0,11,1
	add 9,3,11
	add 10,4,0
	subf 6,10,9
	cmplwi 1,6,14
	ble- 1,.L1224
	neg 8,9
	andi. 10,8,0xf
	beq- 0,.L1233
	andi. 7,8,0xe
	lbzx 7,4,11
	stbx 7,3,11
	beq- 0,.L1225
	cmplwi 5,10,2
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,2
	ble- 5,.L1225
	andi. 7,8,0xc
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,3
	beq- 0,.L1225
	cmplwi 6,10,4
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,4
	ble- 6,.L1225
	cmplwi 7,10,5
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,5
	beq- 7,.L1225
	cmplwi 1,10,6
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,6
	beq- 1,.L1225
	andi. 8,8,0x8
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,7
	beq- 0,.L1225
	cmplwi 5,10,8
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,8
	ble- 5,.L1225
	cmplwi 6,10,9
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,9
	beq- 6,.L1225
	cmplwi 7,10,10
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,10
	beq- 7,.L1225
	cmplwi 1,10,11
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,11
	beq- 1,.L1225
	cmplwi 0,10,12
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,12
	beq- 0,.L1225
	cmplwi 5,10,13
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,13
	beq- 5,.L1225
	cmplwi 6,10,15
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,14
	bne- 6,.L1225
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,15
.L1225:
	subf 12,10,12
	add 10,11,10
	rldicl 6,12,60,36
	add 11,4,10
	lvx 0,4,10
	andi. 7,6,0x1
	addi 9,10,15
	neg 7,11
	add 10,3,10
	lvsr 13,0,7
	add 11,4,9
	addi 7,6,-1
	li 8,0
	beq- 0,.L1299
	mr. 6,7
	vor 1,0,0
	li 8,16
	lvx 0,0,11
	vperm 1,1,0,13
	stvx 1,0,10
	beq- 0,.L1297
.L1299:
	addi 6,6,-2
	addi 9,8,16
	lvx 1,11,8
	vperm 0,0,1,13
	cmpdi 7,6,0
	stvx 0,10,8
	addi 8,8,32
	lvx 0,11,9
	vperm 1,1,0,13
	stvx 1,10,9
	bne+ 7,.L1299
.L1297:
	andi. 10,12,0xf
	rlwinm 12,12,0,0,27
	add 11,12,0
	beq- 0,.L1215
	addi 0,11,1
	lbzx 7,4,11
	cmplw 1,5,0
	stbx 7,3,11
	ble- 1,.L1215
	addi 6,11,2
	lbzx 10,4,0
	cmplw 5,5,6
	stbx 10,3,0
	ble- 5,.L1215
	addi 9,11,3
	lbzx 8,4,6
	cmplw 6,5,9
	stbx 8,3,6
	ble- 6,.L1215
	addi 12,11,4
	lbzx 0,4,9
	cmplw 7,5,12
	stbx 0,3,9
	ble- 7,.L1215
	addi 6,11,5
	lbzx 7,4,12
	cmplw 0,5,6
	stbx 7,3,12
	ble- 0,.L1215
	addi 9,11,6
	lbzx 10,4,6
	cmplw 1,5,9
	stbx 10,3,6
	ble- 1,.L1215
	addi 12,11,7
	lbzx 8,4,9
	cmplw 5,5,12
	stbx 8,3,9
	ble- 5,.L1215
	addi 0,11,8
	lbzx 6,4,12
	cmplw 6,5,0
	stbx 6,3,12
	ble- 6,.L1215
	addi 9,11,9
	lbzx 7,4,0
	cmplw 7,5,9
	stbx 7,3,0
	ble- 7,.L1215
	addi 12,11,10
	lbzx 10,4,9
	cmplw 0,5,12
	stbx 10,3,9
	ble- 0,.L1215
	addi 0,11,11
	lbzx 8,4,12
	cmplw 1,5,0
	stbx 8,3,12
	ble- 1,.L1215
	addi 6,11,12
	lbzx 9,4,0
	cmplw 5,5,6
	stbx 9,3,0
	ble- 5,.L1215
	addi 12,11,13
	lbzx 7,4,6
	cmplw 6,5,12
	stbx 7,3,6
	ble- 6,.L1215
	addi 11,11,14
	lbzx 10,4,12
	cmplw 7,5,11
	stbx 10,3,12
	ble- 7,.L1215
	lbzx 4,4,11
	stbx 4,3,11
.L1215:
	lwz 4,28(1)
	mtvrsave 4
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1306:
	.cfi_restore_state
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beq- 5,.L1215
	andi. 10,5,0x1
	addi 4,5,-1
	beq- 0,.L1301
	mr. 5,4
	lbzu 6,-1(9)
	stbu 6,-1(3)
	beq- 0,.L1215
.L1301:
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 12,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 0,-2(8)
	stb 0,-2(12)
	beq- 6,.L1215
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 12,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 0,-2(8)
	stb 0,-2(12)
	bne+ 6,.L1301
	b .L1215
.L1291:
	cmpwi 1,5,0
	mr 12,5
	beq- 1,.L1215
.L1224:
	rldicl 6,12,0,32
	addi 5,11,-1
	andi. 10,6,0x1
	add 11,3,5
	add 7,4,5
	addi 3,6,-1
	beq- 0,.L1298
	mr. 6,3
	lbzu 0,1(7)
	stbu 0,1(11)
	beq- 0,.L1215
.L1298:
	lbz 9,1(7)
	addi 6,6,-2
	mr 8,7
	cmpdi 1,6,0
	mr 12,11
	stb 9,1(11)
	addi 7,7,2
	addi 11,11,2
	lbz 10,2(8)
	stb 10,2(12)
	bne+ 1,.L1298
	b .L1215
.L1233:
	mr 0,11
	b .L1225
	.cfi_endproc
.LFE105:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,28(1)
	mtvrsave 0
	cmplw 0,3,4
	srwi 6,5,1
	blt- 0,.L1311
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1363
.L1311:
	cmpwi 7,6,0
	beq- 7,.L1310
	addi 12,6,-1
	cmplwi 1,12,13
	ble- 1,.L1314
	addi 0,4,2
	subf 10,0,3
	cmplwi 5,10,12
	ble- 5,.L1314
	srwi 7,3,1
	neg 11,7
	andi. 9,11,0x7
	beq- 0,.L1323
	andi. 8,11,0x6
	lhz 8,0(4)
	sth 8,0(3)
	beq- 0,.L1324
	cmplwi 6,9,2
	lhz 12,2(4)
	sth 12,2(3)
	ble- 6,.L1325
	andi. 10,11,0x4
	lhz 10,4(4)
	sth 10,4(3)
	beq- 0,.L1326
	cmplwi 7,9,4
	lhz 7,6(4)
	sth 7,6(3)
	ble- 7,.L1327
	cmplwi 1,9,5
	lhz 11,8(4)
	sth 11,8(3)
	beq- 1,.L1328
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne- 5,.L1329
	lhz 8,12(4)
	li 0,7
	sth 8,12(3)
.L1315:
	subf 11,9,6
	slwi 9,9,1
	rldicl 7,11,61,35
	add 12,4,9
	lvx 0,4,9
	andi. 8,7,0x1
	neg 10,12
	addi 12,9,15
	lvsr 13,0,10
	addi 8,7,-1
	add 12,4,12
	add 9,3,9
	li 10,0
	beq- 0,.L1358
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,12
	vperm 1,1,0,13
	stvx 1,0,9
	beq- 0,.L1356
.L1358:
	addi 7,7,-2
	addi 8,10,16
	lvx 1,12,10
	vperm 0,0,1,13
	cmpdi 6,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,12,8
	vperm 1,1,0,13
	stvx 1,9,8
	bne+ 6,.L1358
.L1356:
	andi. 9,11,0x7
	rlwinm 11,11,0,0,28
	add 12,11,0
	beq- 0,.L1310
	addi 0,12,1
	slwi 10,12,1
	cmplw 7,6,0
	lhzx 9,4,10
	sthx 9,3,10
	ble- 7,.L1310
	addi 8,12,2
	addi 7,10,2
	cmplw 1,6,8
	lhzx 11,4,7
	sthx 11,3,7
	ble- 1,.L1310
	addi 0,12,3
	addi 9,10,4
	cmplw 5,6,0
	lhzx 8,4,9
	sthx 8,3,9
	ble- 5,.L1310
	addi 11,12,4
	addi 7,10,6
	cmplw 6,6,11
	lhzx 0,4,7
	sthx 0,3,7
	ble- 6,.L1310
	addi 9,12,5
	addi 11,10,8
	cmplw 0,6,9
	lhzx 8,4,11
	sthx 8,3,11
	ble- 0,.L1310
	addi 12,12,6
	addi 7,10,10
	cmplw 7,6,12
	lhzx 6,4,7
	sthx 6,3,7
	ble- 7,.L1310
	addi 10,10,12
	lhzx 0,4,10
	sthx 0,3,10
.L1310:
	andi. 9,5,0x1
	beq- 0,.L1307
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
.L1307:
	lwz 3,28(1)
	mtvrsave 3
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1363:
	.cfi_restore_state
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beq- 5,.L1307
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1359
	mr. 5,10
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beq- 0,.L1307
.L1359:
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 6,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 11,-2(8)
	stb 11,-2(6)
	beq- 6,.L1307
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 6,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 11,-2(8)
	stb 11,-2(6)
	bne+ 6,.L1359
	b .L1307
.L1323:
	li 0,0
	b .L1315
.L1314:
	andi. 9,6,0x1
	addi 12,4,-2
	addi 11,6,-1
	addi 9,3,-2
	beq- 0,.L1357
	mr. 6,11
	lhz 8,0(4)
	mr 12,4
	mr 9,3
	sth 8,0(3)
	beq- 0,.L1310
.L1357:
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
	bne+ 1,.L1357
	b .L1310
.L1324:
	li 0,1
	b .L1315
.L1325:
	li 0,2
	b .L1315
.L1329:
	li 0,6
	b .L1315
.L1326:
	li 0,3
	b .L1315
.L1327:
	li 0,4
	b .L1315
.L1328:
	li 0,5
	b .L1315
	.cfi_endproc
.LFE106:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,24(1)
	mtvrsave 0
	cmplw 0,3,4
	srwi 12,5,2
	rlwinm 11,5,0,0,29
	blt- 0,.L1369
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1472
.L1369:
	cmpwi 7,12,0
	beq- 7,.L1473
	addi 0,12,-1
	cmplwi 5,0,10
	ble- 5,.L1371
	addi 10,4,4
	subf 7,10,3
	cmplwi 0,7,8
	ble- 0,.L1371
	srwi 8,3,2
	stw 31,28(1)
	.cfi_offset 31, -4
	li 31,0
	neg 6,8
	andi. 9,6,0x3
	beq- 0,.L1372
	andi. 10,6,0x2
	lwz 0,0(4)
	li 31,1
	stw 0,0(3)
	beq- 0,.L1372
	cmplwi 6,9,3
	lwz 10,4(4)
	li 31,2
	stw 10,4(3)
	bne- 6,.L1372
	lwz 7,8(4)
	li 31,3
	stw 7,8(3)
.L1372:
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
	lvsr 13,0,8
	li 10,0
	addi 8,7,-1
	beq- 0,.L1465
	mr. 7,8
	vor 1,0,0
	li 10,16
	lvx 0,0,6
	vperm 1,1,0,13
	stvx 1,0,9
	beq- 0,.L1461
.L1465:
	addi 7,7,-2
	addi 8,10,16
	lvx 1,6,10
	vperm 0,0,1,13
	cmpdi 7,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,6,8
	vperm 1,1,0,13
	stvx 1,9,8
	bne+ 7,.L1465
.L1461:
	andi. 9,0,0x3
	rlwinm 0,0,0,0,29
	add 31,0,31
	beq- 0,.L1471
	addi 6,31,1
	slwi 7,31,2
	cmplw 1,12,6
	lwzx 9,4,7
	stwx 9,3,7
	ble- 1,.L1471
	addi 10,31,2
	addi 8,7,4
	cmplw 5,12,10
	lwzx 12,4,8
	stwx 12,3,8
	ble- 5,.L1471
	addi 0,7,8
	lwzx 31,4,0
	stwx 31,3,0
	lwz 31,28(1)
	.cfi_restore 31
	b .L1377
.L1472:
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beq- 5,.L1364
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1466
	mr. 5,10
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beq- 0,.L1364
.L1466:
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
	bne+ 6,.L1466
.L1364:
	lwz 5,24(1)
	mtvrsave 5
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
.L1471:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	lwz 31,28(1)
	.cfi_restore 31
.L1377:
	cmplw 7,5,11
	ble- 7,.L1364
	subf 12,11,5
	addi 10,12,-1
	cmplwi 1,10,29
	ble- 1,.L1367
	addi 0,11,1
	add 9,3,11
	add 6,4,0
	subf 8,6,9
	cmplwi 5,8,14
	ble- 5,.L1367
	neg 9,9
	andi. 10,9,0xf
	beq- 0,.L1389
	andi. 7,9,0xe
	lbzx 7,4,11
	stbx 7,3,11
	beq- 0,.L1378
	cmplwi 6,10,2
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,2
	ble- 6,.L1378
	andi. 7,9,0xc
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,3
	beq- 0,.L1378
	cmplwi 7,10,4
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,4
	ble- 7,.L1378
	cmplwi 1,10,5
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,5
	beq- 1,.L1378
	cmplwi 5,10,6
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,6
	beq- 5,.L1378
	andi. 8,9,0x8
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,7
	beq- 0,.L1378
	cmplwi 6,10,8
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,8
	ble- 6,.L1378
	cmplwi 7,10,9
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,9
	beq- 7,.L1378
	cmplwi 1,10,10
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,10
	beq- 1,.L1378
	cmplwi 5,10,11
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,11
	beq- 5,.L1378
	cmplwi 0,10,12
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,12
	beq- 0,.L1378
	cmplwi 6,10,13
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,13
	beq- 6,.L1378
	cmplwi 7,10,15
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,14
	bne- 7,.L1378
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,15
.L1378:
	subf 12,10,12
	add 10,11,10
	rldicl 6,12,60,36
	add 11,4,10
	lvx 0,4,10
	andi. 7,6,0x1
	addi 8,10,15
	neg 7,11
	addi 9,6,-1
	add 11,4,8
	add 10,3,10
	lvsr 13,0,7
	li 8,0
	beq- 0,.L1463
	mr. 6,9
	vor 1,0,0
	li 8,16
	lvx 0,0,11
	vperm 1,1,0,13
	stvx 1,0,10
	beq- 0,.L1460
.L1463:
	addi 6,6,-2
	addi 7,8,16
	lvx 1,11,8
	vperm 0,0,1,13
	cmpdi 1,6,0
	stvx 0,10,8
	addi 8,8,32
	lvx 0,11,7
	vperm 1,1,0,13
	stvx 1,10,7
	bne+ 1,.L1463
.L1460:
	andi. 10,12,0xf
	rlwinm 12,12,0,0,27
	add 9,12,0
	beq- 0,.L1364
	addi 0,9,1
	lbzx 11,4,9
	cmplw 5,5,0
	stbx 11,3,9
	ble- 5,.L1364
	addi 6,9,2
	lbzx 10,4,0
	cmplw 6,5,6
	stbx 10,3,0
	ble- 6,.L1364
	addi 12,9,3
	lbzx 8,4,6
	cmplw 7,5,12
	stbx 8,3,6
	ble- 7,.L1364
	addi 0,9,4
	lbzx 7,4,12
	cmplw 1,5,0
	stbx 7,3,12
	ble- 1,.L1364
	addi 11,9,5
	lbzx 6,4,0
	cmplw 0,5,11
	stbx 6,3,0
	ble- 0,.L1364
	addi 12,9,6
	lbzx 10,4,11
	cmplw 5,5,12
	stbx 10,3,11
	ble- 5,.L1364
	addi 0,9,7
	lbzx 8,4,12
	cmplw 6,5,0
	stbx 8,3,12
	ble- 6,.L1364
	addi 11,9,8
	lbzx 7,4,0
	cmplw 7,5,11
	stbx 7,3,0
	ble- 7,.L1364
	addi 6,9,9
	lbzx 12,4,11
	cmplw 1,5,6
	stbx 12,3,11
	ble- 1,.L1364
	addi 0,9,10
	lbzx 10,4,6
	cmplw 0,5,0
	stbx 10,3,6
	ble- 0,.L1364
	addi 11,9,11
	lbzx 8,4,0
	cmplw 5,5,11
	stbx 8,3,0
	ble- 5,.L1364
	addi 6,9,12
	lbzx 7,4,11
	cmplw 6,5,6
	stbx 7,3,11
	ble- 6,.L1364
	addi 12,9,13
	lbzx 0,4,6
	cmplw 7,5,12
	stbx 0,3,6
	ble- 7,.L1364
	addi 9,9,14
	lbzx 10,4,12
	cmplw 1,5,9
	stbx 10,3,12
	ble- 1,.L1364
	lbzx 5,4,9
	stbx 5,3,9
	b .L1364
.L1473:
	cmpwi 1,5,0
	mr 12,5
	beq- 1,.L1364
.L1367:
	rldicl 6,12,0,32
	addi 11,11,-1
	andi. 10,6,0x1
	add 4,4,11
	add 10,3,11
	addi 3,6,-1
	beq- 0,.L1462
	mr. 6,3
	lbzu 8,1(4)
	stbu 8,1(10)
	beq- 0,.L1364
.L1462:
	lbz 7,1(4)
	addi 6,6,-2
	mr 12,4
	cmpdi 5,6,0
	mr 9,10
	stb 7,1(10)
	addi 4,4,2
	addi 10,10,2
	lbz 0,2(12)
	stb 0,2(9)
	bne+ 5,.L1462
	b .L1364
.L1371:
	andi. 9,12,0x1
	addi 10,4,-4
	addi 6,12,-1
	addi 9,3,-4
	beq- 0,.L1464
	mr. 12,6
	lwz 7,0(4)
	mr 10,4
	mr 9,3
	stw 7,0(3)
	beq- 0,.L1377
.L1464:
	lwz 0,4(10)
	addi 12,12,-2
	mr 6,10
	cmpdi 6,12,0
	addi 8,9,4
	stw 0,4(9)
	addi 10,10,8
	addi 9,9,8
	lwz 7,8(6)
	stw 7,4(8)
	bne+ 6,.L1464
	b .L1377
.L1389:
	mr 0,11
	b .L1378
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
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
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
	sldi 3,3,32
	rldicl 4,4,0,32
	or 9,4,3
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
	bne- 0,.L1487
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1488
	srwi. 10,9,12
	bne- 0,.L1489
	srwi. 10,9,11
	bne- 0,.L1490
	srwi. 10,9,10
	bne- 0,.L1491
	srwi. 10,9,9
	bne- 0,.L1492
	srwi. 10,9,8
	bne- 0,.L1493
	srwi. 10,9,7
	bne- 0,.L1494
	srwi. 10,9,6
	bne- 0,.L1495
	srwi. 10,9,5
	bne- 0,.L1496
	srwi. 10,9,4
	bne- 0,.L1497
	srwi. 10,9,3
	bne- 0,.L1498
	srwi. 10,9,2
	bne- 0,.L1499
	srwi. 10,9,1
	bne- 0,.L1500
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1487:
	li 3,0
	blr
.L1498:
	li 3,12
	blr
.L1488:
	li 3,2
	blr
.L1489:
	li 3,3
	blr
.L1490:
	li 3,4
	blr
.L1491:
	li 3,5
	blr
.L1492:
	li 3,6
	blr
.L1493:
	li 3,7
	blr
.L1494:
	li 3,8
	blr
.L1495:
	li 3,9
	blr
.L1496:
	li 3,10
	blr
.L1497:
	li 3,11
	blr
.L1499:
	li 3,13
	blr
.L1500:
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
	bne- 0,.L1505
	andi. 9,3,0x2
	bne- 0,.L1506
	andi. 9,3,0x4
	bne- 0,.L1507
	andi. 9,3,0x8
	bne- 0,.L1508
	andi. 9,3,0x10
	bne- 0,.L1509
	andi. 9,3,0x20
	bne- 0,.L1510
	andi. 9,3,0x40
	bne- 0,.L1511
	andi. 9,3,0x80
	bne- 0,.L1512
	andi. 9,3,0x100
	bne- 0,.L1513
	andi. 9,3,0x200
	bne- 0,.L1514
	andi. 9,3,0x400
	bne- 0,.L1515
	andi. 9,3,0x800
	bne- 0,.L1516
	andi. 9,3,0x1000
	bne- 0,.L1517
	andi. 9,3,0x2000
	bne- 0,.L1518
	andi. 9,3,0x4000
	bne- 0,.L1519
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1505:
	li 3,0
	blr
.L1506:
	li 3,1
	blr
.L1517:
	li 3,12
	blr
.L1507:
	li 3,2
	blr
.L1508:
	li 3,3
	blr
.L1509:
	li 3,4
	blr
.L1510:
	li 3,5
	blr
.L1511:
	li 3,6
	blr
.L1512:
	li 3,7
	blr
.L1513:
	li 3,8
	blr
.L1514:
	li 3,9
	blr
.L1515:
	li 3,10
	blr
.L1516:
	li 3,11
	blr
.L1518:
	li 3,13
	blr
.L1519:
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
	bne- 0,.L1528
	fctiwz 1,1
	addi 3,1,8
	stfiwx 1,0,3
	lwz 3,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1528:
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mfvrsave 12
	oris 0,12,0xc03c
	stw 12,60(1)
	mtvrsave 0
	lis 7,.LC39@ha
	vxor 12,12,12
	stw 3,16(1)
	lis 8,.LC40@ha
	lis 10,.LC41@ha
	lis 9,.LC42@ha
	vspltisw 10,1
	la 3,.LC39@l(7)
	li 6,16
	la 4,.LC40@l(8)
	la 5,.LC41@l(10)
	lvx 13,0,3
	lvewx 0,1,6
	la 11,.LC42@l(9)
	li 12,32
	vspltw 0,0,0
	lvx 11,0,4
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
	vsldoi 1,11,12,8
	vadduwm 0,1,11
	vsldoi 12,0,12,4
	vadduwm 13,12,0
	stvx 13,1,12
	lwz 0,32(1)
	lwz 7,60(1)
	rlwinm 3,0,0,31,31
	mtvrsave 7
	addi 1,1,64
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mfvrsave 12
	oris 0,12,0xc03c
	stw 12,60(1)
	mtvrsave 0
	lis 7,.LC39@ha
	vxor 12,12,12
	stw 3,16(1)
	lis 8,.LC40@ha
	lis 10,.LC41@ha
	lis 9,.LC42@ha
	vspltisw 10,1
	la 3,.LC39@l(7)
	li 6,16
	la 4,.LC40@l(8)
	la 5,.LC41@l(10)
	lvx 13,0,3
	lvewx 0,1,6
	la 11,.LC42@l(9)
	li 12,32
	vspltw 0,0,0
	lvx 11,0,4
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
	vsldoi 1,11,12,8
	vadduwm 0,1,11
	vsldoi 12,0,12,4
	vadduwm 13,12,0
	stvx 13,1,12
	lwz 3,32(1)
	lwz 0,60(1)
	mtvrsave 0
	addi 1,1,64
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
.L1535:
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
	bne+ 0,.L1535
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
.L1541:
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
	bne+ 0,.L1541
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
	blt+ 0,.L1547
	b .L1569
.L1551:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1549
	blt- 5,.L1566
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L1549
	bdz .L1550
.L1547:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1551
.L1566:
	cmplw 7,3,4
	b .L1552
.L1549:
	cmpwi 6,0,0
	beq- 6,.L1556
.L1552:
	li 10,0
	li 11,1
	li 6,0
.L1553:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1553
.L1550:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L1569:
	isel 9,0,0,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1550
.L1556:
	li 10,0
	b .L1550
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
	blt- 0,.L1593
	beq- 0,.L1586
	li 6,0
.L1582:
	li 10,32
	li 8,0
	b .L1585
.L1594:
	beq- 7,.L1584
.L1585:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 8,8,5
	slwi 3,3,1
	bne+ 0,.L1594
.L1584:
	cmpwi 1,6,0
	neg 3,8
	isel 3,8,3,6
	blr
.L1593:
	neg 4,4
	li 6,1
	b .L1582
.L1586:
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
	bge+ 0,.L1596
	neg 3,3
	li 9,0
	li 11,1
.L1596:
	cmpwi 1,4,0
	bge+ 1,.L1597
	neg 4,4
	mr 11,9
.L1597:
	cmplw 5,3,4
	li 8,16
	mr 10,3
	li 9,1
	mtctr 8
	bgt+ 5,.L1598
	b .L1621
.L1602:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,3,4
	ble- 7,.L1603
	bdz .L1603
.L1598:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 6,3,4
	bgt+ 6,.L1602
.L1603:
	cmpwi 0,9,0
	li 3,0
	li 6,1
	li 5,0
	beq- 0,.L1601
.L1600:
	cmplw 1,10,4
	subf 0,4,10
	srwi 4,4,1
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 12,5,9,22
	srwi. 9,9,1
	or 3,3,12
	isel 10,10,0,22
	bne+ 0,.L1600
.L1601:
	cmpwi 6,11,0
	neg 4,3
	isel 3,3,4,26
	blr
.L1621:
	isel 3,0,9,20
	b .L1601
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
	bge+ 0,.L1626
	neg 3,3
	li 11,1
.L1626:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 8,3
	subf 12,9,4
	li 10,1
	cmplw 1,3,12
	mtctr 7
	bgt+ 1,.L1627
	b .L1649
.L1631:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 6,3,12
	ble- 6,.L1632
	bdz .L1632
.L1627:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 5,3,12
	bgt+ 5,.L1631
.L1632:
	cmpwi 7,10,0
	li 5,1
	beq- 7,.L1653
.L1629:
	cmplw 1,8,12
	srwi. 10,10,1
	subf 3,12,8
	srwi 12,12,1
	isel 6,0,5,4
	cmpwi 5,6,0
	isel 8,8,3,22
	bne+ 0,.L1629
.L1630:
	cmpwi 6,11,0
	neg 11,8
	isel 3,8,11,26
	blr
.L1653:
	cmpwi 6,11,0
	mr 8,3
	neg 11,8
	isel 3,8,11,26
	blr
.L1649:
	subf 0,12,3
	isel 8,3,0,4
	b .L1630
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
	bge- 0,.L1820
	andi. 9,4,0x8000
	bne- 0,.L1659
	rlwinm 9,4,1,16,30
	cmplw 7,3,9
	ble- 7,.L1732
	andi. 10,9,0x8000
	bne- 0,.L1732
	rlwinm 9,4,2,16,29
	cmplw 7,3,9
	ble- 7,.L1734
	andi. 10,9,0x8000
	bne- 0,.L1734
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L1736
	andi. 10,9,0x8000
	bne- 0,.L1736
	rlwinm 9,4,4,16,27
	cmplw 7,3,9
	ble- 7,.L1738
	andi. 10,9,0x8000
	bne- 0,.L1738
	rlwinm 9,4,5,16,26
	cmplw 7,3,9
	ble- 7,.L1740
	andi. 10,9,0x8000
	bne- 0,.L1740
	rlwinm 9,4,6,16,25
	cmplw 7,3,9
	ble- 7,.L1742
	andi. 10,9,0x8000
	bne- 0,.L1742
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L1744
	andi. 10,9,0x8000
	bne- 0,.L1744
	rlwinm 9,4,8,16,23
	cmplw 7,3,9
	ble- 7,.L1746
	andi. 10,9,0x8000
	bne- 0,.L1746
	rlwinm 9,4,9,16,22
	cmplw 7,3,9
	ble- 7,.L1748
	andi. 10,9,0x8000
	bne- 0,.L1748
	rlwinm 9,4,10,16,21
	cmplw 7,3,9
	ble- 7,.L1750
	andi. 10,9,0x8000
	bne- 0,.L1750
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L1752
	andi. 10,9,0x8000
	bne- 0,.L1752
	rlwinm 9,4,12,16,19
	cmplw 7,3,9
	ble- 7,.L1754
	andi. 10,9,0x8000
	bne- 0,.L1754
	rlwinm 9,4,13,16,18
	cmplw 7,3,9
	ble- 7,.L1756
	andi. 10,9,0x8000
	bne- 0,.L1756
	rlwinm 9,4,14,16,17
	cmplw 7,3,9
	ble- 7,.L1758
	andi. 10,9,0x8000
	bne- 0,.L1758
	rlwinm 4,4,15,16,16
	cmplw 6,3,4
	ble- 6,.L1759
	cmpwi 1,4,0
	li 12,0
	bne- 1,.L1821
.L1662:
	cmpwi 7,5,0
	beq+ 7,.L1721
	mr 12,3
.L1721:
	rlwinm 3,12,0,0xffff
	blr
.L1732:
	li 8,2
.L1661:
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
	beq- 0,.L1662
	cmplw 7,3,7
	subf 6,7,3
	rlwinm 12,6,0,0xffff
	li 10,0
	isel 4,0,4,28
	cmpwi 6,4,0
	isel 3,3,12,26
	beq- 6,.L1670
	mr 10,0
.L1670:
	srwi. 7,8,3
	or 0,11,10
	mr 12,0
	srwi 11,8,3
	srwi 7,9,3
	beq- 0,.L1662
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1674
	mr 4,11
.L1674:
	srwi. 7,8,4
	or 0,0,4
	mr 12,0
	srwi 11,8,4
	srwi 10,9,4
	beq- 0,.L1662
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1678
	mr 4,11
.L1678:
	srwi. 7,8,5
	or 0,0,4
	mr 12,0
	srwi 11,8,5
	srwi 7,9,5
	beq- 0,.L1662
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1682
	mr 4,11
.L1682:
	srwi. 7,8,6
	or 0,0,4
	mr 12,0
	srwi 11,8,6
	srwi 10,9,6
	beq- 0,.L1662
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1686
	mr 4,11
.L1686:
	srwi. 7,8,7
	or 0,0,4
	mr 12,0
	srwi 11,8,7
	srwi 7,9,7
	beq- 0,.L1662
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1690
	mr 4,11
.L1690:
	srwi. 7,8,8
	or 0,0,4
	mr 12,0
	srwi 11,8,8
	srwi 10,9,8
	beq- 0,.L1662
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1694
	mr 4,11
.L1694:
	srwi. 7,8,9
	or 0,0,4
	mr 12,0
	srwi 11,8,9
	srwi 7,9,9
	beq- 0,.L1662
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1698
	mr 4,11
.L1698:
	srwi. 7,8,10
	or 0,0,4
	mr 12,0
	srwi 11,8,10
	srwi 10,9,10
	beq- 0,.L1662
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1702
	mr 4,11
.L1702:
	srwi. 7,8,11
	or 0,0,4
	mr 12,0
	srwi 11,8,11
	srwi 7,9,11
	beq- 0,.L1662
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1706
	mr 4,11
.L1706:
	srwi. 7,8,12
	or 0,0,4
	mr 12,0
	srwi 11,8,12
	srwi 10,9,12
	beq- 0,.L1662
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1710
	mr 4,11
.L1710:
	srwi. 7,8,13
	or 0,0,4
	mr 12,0
	srwi 11,8,13
	srwi 7,9,13
	beq- 0,.L1662
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1714
	mr 4,11
.L1714:
	srwi. 7,8,14
	or 0,0,4
	mr 12,0
	srwi 11,8,14
	srwi 10,9,14
	beq- 0,.L1662
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1718
	mr 4,11
.L1718:
	cmpwi 1,8,16384
	or 8,0,4
	srwi 9,9,15
	mr 12,8
	beq- 1,.L1662
	cmplw 5,3,9
	li 0,1
	subf 11,9,3
	rlwinm 7,11,0,0xffff
	isel 6,0,0,20
	cmpwi 0,6,0
	or 12,8,6
	isel 3,3,7,2
	b .L1662
.L1734:
	li 8,4
	b .L1661
.L1736:
	li 8,8
	b .L1661
.L1738:
	li 8,16
	b .L1661
.L1748:
	li 8,512
	b .L1661
.L1740:
	li 8,32
	b .L1661
.L1742:
	li 8,64
	b .L1661
.L1744:
	li 8,128
	b .L1661
.L1746:
	li 8,256
	b .L1661
.L1820:
	cmpw 1,4,3
	li 10,0
	li 6,1
	subf 9,4,3
	rlwinm 0,9,0,0xffff
	isel 12,6,10,6
	cmpwi 5,12,0
	isel 3,3,0,22
	b .L1662
.L1750:
	li 8,1024
	b .L1661
.L1752:
	li 8,2048
	b .L1661
.L1754:
	li 8,4096
	b .L1661
.L1756:
	li 8,8192
	b .L1661
.L1758:
	li 8,16384
	b .L1661
.L1821:
	li 11,0
	li 8,0
	cmplwi 7,3,32768
	ori 8,8,0x8000
	ori 9,11,0x8000
	b .L1661
.L1759:
	li 7,0
	li 8,0
	cmplwi 7,3,32768
	ori 9,7,0x8000
	ori 8,8,0x8000
	b .L1661
.L1659:
	subf 3,4,3
	li 12,1
	rlwinm 3,3,0,0xffff
	b .L1662
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
	bgt+ 7,.L1823
	b .L1844
.L1827:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1825
	blt- 5,.L1828
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L1825
	bdz .L1826
.L1823:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1827
.L1828:
	li 10,0
	li 11,1
	li 6,0
.L1829:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1829
.L1826:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L1825:
	cmpwi 6,0,0
	bne+ 6,.L1828
	li 10,0
	b .L1826
.L1844:
	subf 4,4,3
	isel 9,0,0,28
	isel 3,3,4,28
	rlwinm 10,9,0,0xff
	b .L1826
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
	beq- 0,.L1848
	addi 5,5,-32
	li 11,0
	slw 9,0,5
.L1849:
	sldi 12,9,32
	or 4,11,12
.L1847:
	srdi 3,4,32
	blr
.L1848:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1847
	subfic 10,5,32
	sradi 8,0,32
	srw 6,0,10
	slw 7,8,5
	or 9,6,7
	slw 11,0,5
	b .L1849
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
	beq- 0,.L1854
	sradi 11,0,32
	addi 12,5,-32
	sraw 8,11,12
	srawi 5,11,31
.L1855:
	rldicl 3,8,0,32
	sldi 4,5,32
	or 4,4,3
.L1853:
	srdi 3,4,32
	blr
.L1854:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1853
	sradi 6,0,32
	subfic 10,5,32
	srw 9,0,5
	slw 7,6,10
	or 8,7,9
	sraw 5,6,5
	b .L1855
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
	or 0,4,3
	srdi 10,0,32
	rotlwi 8,0,24
	rotlwi 4,10,24
	rlwimi 8,0,8,8,15
	rlwimi 4,10,8,8,15
	rlwimi 8,0,8,24,31
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
	blt- 0,.L1864
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L1864:
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
	blt- 0,.L1870
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
.L1870:
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
	beq- 0,.L1875
	addi 12,5,-32
	srdi 11,0,32
	srw 8,11,12
	li 5,0
.L1876:
	rldicl 3,8,0,32
	sldi 4,5,32
	or 4,4,3
.L1874:
	srdi 3,4,32
	blr
.L1875:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1874
	srdi 6,0,32
	subfic 10,5,32
	srw 9,0,5
	slw 7,6,10
	or 8,7,9
	srw 5,6,5
	b .L1876
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
	srwi 0,10,16
	rlwimi 4,10,16,0,31-16
	add 3,9,11
	add 5,3,0
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
	lis 8,.LC33@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC33@l(8)
	beq- 0,.L1888
.L1890:
	fmul 1,1,0
.L1888:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1889
	andi. 10,9,0x1
	fmul 0,0,0
	bne- 0,.L1890
.L1894:
	srawi 9,9,1
	addze 9,9
	fmul 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1890
	b .L1894
.L1889:
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
	beq- 0,.L1896
.L1898:
	fmuls 1,1,0
.L1896:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1897
	andi. 10,9,0x1
	fmuls 0,0,0
	bne- 0,.L1898
.L1902:
	srawi 9,9,1
	addze 9,9
	fmuls 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1898
	b .L1902
.L1897:
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
	sldi 3,3,32
	sldi 5,5,32
	srdi 10,3,32
	srdi 9,5,32
	cmplw 0,10,9
	rldicl 4,4,0,32
	rldicl 6,6,0,32
	or 0,4,3
	or 7,6,5
	blt- 0,.L1905
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L1905:
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
	blt- 0,.L1911
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
.L1911:
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
	.set	.LC2,.LC24+8
	.set	.LC3,.LC24+8
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
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC14:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.set	.LC18,.LC24
	.section	.rodata.cst4
	.align 2
.LC19:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC24:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC25:
	.long	1071644672
	.long	0
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
