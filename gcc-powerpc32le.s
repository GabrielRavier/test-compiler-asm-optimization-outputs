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
	lvsl 13,0,10
	addi 8,7,-1
	add 4,4,0
	add 9,3,9
	li 10,0
	beq- 0,.L100
	mr. 7,8
	xxlor 33,32,32
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
	oris 0,12,0xc01c
	stw 12,28(1)
	mtvrsave 0
	cmpwi 0,5,1
	ble- 0,.L243
	addi 9,5,-2
	cmplwi 1,9,13
	ble- 1,.L245
	andi. 9,4,0xf
	bne- 0,.L245
	rldicl 8,5,60,36
	lis 10,.LC0@ha
	lvx 13,0,3
	andi. 9,8,0x1
	la 6,.LC0@l(10)
	neg 7,3
	lvx 12,0,6
	addi 12,8,-1
	srwi 11,5,1
	srwi 0,5,4
	lvsl 11,0,7
	li 9,0
	addi 6,3,15
	beq- 0,.L264
	mr. 8,12
	xxlor 32,45,45
	li 9,16
	lvx 13,0,6
	vperm 1,13,0,11
	vperm 0,1,1,12
	stvx 0,0,4
	beq- 0,.L262
.L264:
	addi 8,8,-2
	addi 10,9,16
	lvx 0,6,9
	vperm 13,0,13,11
	cmpdi 5,8,0
	vperm 1,13,13,12
	lvx 13,6,10
	stvx 1,4,9
	vperm 0,13,0,11
	addi 9,9,32
	vperm 1,0,0,12
	stvx 1,4,10
	bne+ 5,.L264
.L262:
	slwi 7,0,3
	slwi 12,0,4
	cmplw 6,11,7
	subf 0,12,5
	add 10,4,12
	add 8,3,12
	beq- 6,.L243
	cmpwi 7,0,3
	lbzx 3,3,12
	lbz 5,1(8)
	stbx 5,4,12
	stb 3,1(10)
	ble- 7,.L243
	cmpwi 1,0,5
	lbz 4,3(8)
	lbz 6,2(8)
	stb 4,2(10)
	stb 6,3(10)
	ble- 1,.L243
	cmpwi 0,0,7
	lbz 9,5(8)
	lbz 7,4(8)
	stb 9,4(10)
	stb 7,5(10)
	ble- 0,.L243
	cmpwi 5,0,9
	lbz 12,7(8)
	lbz 11,6(8)
	stb 12,6(10)
	stb 11,7(10)
	ble- 5,.L243
	cmpwi 6,0,11
	lbz 3,9(8)
	lbz 5,8(8)
	stb 3,8(10)
	stb 5,9(10)
	ble- 6,.L243
	cmpwi 7,0,13
	lbz 4,10(8)
	lbz 0,11(8)
	stb 4,11(10)
	stb 0,10(10)
	ble- 7,.L243
	lbz 6,13(8)
	lbz 8,12(8)
	stb 6,12(10)
	stb 8,13(10)
.L243:
	lwz 3,28(1)
	mtvrsave 3
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L245:
	.cfi_restore_state
	rldicl 12,5,63,33
	andi. 9,12,0x1
	addi 10,12,-1
	beq- 0,.L263
	mr. 12,10
	lbz 7,1(3)
	addi 4,4,2
	lbz 9,0(3)
	addi 3,3,2
	stb 7,-2(4)
	stb 9,-1(4)
	beq- 0,.L243
.L263:
	addi 12,12,-2
	lbz 5,1(3)
	mr 6,4
	cmpdi 1,12,0
	lbz 11,3(3)
	addi 4,4,4
	lbz 0,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 11,-2(4)
	stb 5,-4(4)
	stb 0,-3(4)
	stb 8,3(6)
	bne+ 1,.L263
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
	beq- 0,.L270
	cmpwi 1,3,9
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L270:
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
	ble- 0,.L273
	cmpwi 1,3,127
	li 9,0
	li 3,1
	isel 3,3,9,6
	blr
.L273:
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
	beq- 0,.L280
	addi 3,3,-9
	li 9,1
	cmplwi 1,3,4
	isel 3,0,9,5
	blr
.L280:
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
	ble- 0,.L284
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
.L284:
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
	ble- 0,.L295
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
.L295:
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
	ble- 0,.L298
	ori 3,3,0x20
	li 10,1
	addi 0,3,-97
	cmplwi 1,0,5
	isel 3,0,10,5
	blr
.L298:
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
	bun- 1,.L304
	fcmpu 5,1,2
	bng- 5,.L307
	fsub 1,1,2
	blr
.L307:
	xxlxor 1,1,1
	blr
.L304:
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
	bun- 1,.L312
	fcmpu 5,1,2
	bng- 5,.L315
	fsubs 1,1,2
	blr
.L315:
	xxlxor 1,1,1
	blr
.L312:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc000
	stw 12,28(1)
	mtvrsave 0
	fcmpu 0,1,1
	xxlor 33,2,2
	bun- 0,.L321
	fcmpu 1,2,2
	xxlor 32,1,1
	bun- 1,.L322
	stfd 1,8(1)
	addi 10,1,8
	addi 9,1,8
	ld 3,8(1)
	stfd 2,0(10)
	srdi 4,3,63
	ld 5,8(1)
	srdi 6,5,63
	cmpw 5,4,6
	beq- 5,.L318
	cmpwi 7,4,0
	fmr 1,2
	beq- 7,.L322
.L316:
	lwz 7,28(1)
	mtvrsave 7
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L318:
	.cfi_restore_state
	fcmpu 6,1,2
	bnl- 6,.L316
.L321:
	lwz 7,28(1)
	xxlor 1,33,33
	mtvrsave 7
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L322:
	.cfi_restore_state
	lwz 7,28(1)
	xxlor 1,32,32
	mtvrsave 7
	addi 1,1,32
	.cfi_def_cfa_offset 0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfs 1,8(1)
	stfs 2,12(1)
	bun- 0,.L331
	fcmpu 1,2,2
	bun- 1,.L326
	lwz 9,8(1)
	lwz 10,12(1)
	rlwinm 0,9,0,0,0
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq- 5,.L328
	cmpwi 7,0,0
	fmr 1,2
	bne- 7,.L326
	lfs 1,8(1)
.L326:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L328:
	.cfi_restore_state
	fcmpu 6,1,2
	bnl- 6,.L326
	fmr 1,2
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L331:
	.cfi_restore_state
	fmr 1,2
	b .L326
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
	fmr 13,4
	fmr 12,3
	fmr 0,8
	fcmpu 0,0,0
	bun- 0,.L341
	fmr 11,12
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
	bne- 5,.L348
	fcmpu 6,8,12
	bne 6,$+8
	fcmpu 6,9,13
	blt- 6,.L343
	fmr 13,2
	fmr 12,1
.L343:
	fmr 1,12
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	fmr 2,13
	blr
.L348:
	.cfi_restore_state
	cmpwi 7,0,0
	bne- 7,.L343
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L341:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mfvrsave 12
	oris 0,12,0xc000
	stw 12,28(1)
	mtvrsave 0
	fcmpu 0,1,1
	xxlor 33,2,2
	bun- 0,.L354
	fcmpu 1,2,2
	xxlor 32,1,1
	bun- 1,.L355
	stfd 1,8(1)
	addi 10,1,8
	addi 9,1,8
	ld 3,8(1)
	stfd 2,0(10)
	srdi 4,3,63
	ld 5,8(1)
	srdi 6,5,63
	cmpw 5,4,6
	beq- 5,.L351
	cmpwi 7,4,0
	beq- 7,.L354
.L349:
	lwz 7,28(1)
	mtvrsave 7
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L351:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 1,2
	bnl- 6,.L349
.L355:
	lwz 7,28(1)
	xxlor 1,32,32
	mtvrsave 7
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L354:
	.cfi_restore_state
	lwz 7,28(1)
	xxlor 1,33,33
	mtvrsave 7
	addi 1,1,32
	.cfi_def_cfa_offset 0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfs 1,8(1)
	stfs 2,12(1)
	bun- 0,.L364
	fcmpu 1,2,2
	fmr 0,2
	bun- 1,.L359
	lwz 9,8(1)
	lwz 10,12(1)
	rlwinm 0,9,0,0,0
	rlwinm 3,10,0,0,0
	cmpw 5,0,3
	beq- 5,.L361
	cmpwi 7,0,0
	beq- 7,.L369
.L359:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L361:
	.cfi_restore_state
	fmr 0,1
	fmr 1,2
	fcmpu 6,0,2
	bnl- 6,.L359
.L369:
	fmr 1,0
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L364:
	.cfi_restore_state
	fmr 1,2
	b .L359
	.cfi_endproc
.LFE35:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	fmr 13,2
	fmr 12,1
	fmr 9,4
	fmr 8,3
	fmr 0,12
	fcmpu 0,0,0
	bun- 0,.L375
	fmr 11,8
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
	bne- 5,.L382
	fcmpu 6,12,8
	bne 6,$+8
	fcmpu 6,13,9
	blt- 6,.L377
	fmr 13,4
	fmr 12,3
.L377:
	fmr 1,12
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	fmr 2,13
	blr
.L382:
	.cfi_restore_state
	cmpwi 7,0,0
	bne- 7,.L377
	fmr 1,3
	addi 1,1,16
	.cfi_def_cfa_offset 0
	fmr 2,4
	blr
.L375:
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
	beq- 0,.L386
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L385:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L385
	li 5,0
	stb 5,0(10)
	blr
.L386:
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
	beq- 0,.L396
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L396:
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
	beq- 0,.L398
	lwz 10,4(3)
	stw 10,4(9)
.L398:
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
	beq- 0,.L407
	stw 25,36(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,56(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L409
.L424:
	beq- 7,.L423
.L409:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L424
	lwz 25,36(1)
	.cfi_restore 25
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L406:
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
.L423:
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
.L407:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L406
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
	beq- 0,.L426
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
	b .L428
.L439:
	beq- 7,.L438
.L428:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L439
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
.L438:
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
.L426:
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
.L448:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L442
	ble- 7,.L442
	cmpwi 1,10,43
	beq- 1,.L443
	cmpwi 6,10,45
	bne- 6,.L463
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L453
	li 6,1
.L446:
	li 0,0
.L450:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L450
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L442:
	addi 3,3,1
	b .L448
.L463:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L446
.L453:
	li 3,0
	blr
.L443:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L446
	b .L453
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L469:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L465
	ble- 7,.L465
	cmpwi 1,10,43
	beq- 1,.L466
	cmpwi 6,10,45
	beq- 6,.L467
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	bgt- 7,.L476
.L470:
	li 0,0
.L473:
	addi 7,10,-48
	lbzu 10,1(3)
	slwi 11,0,2
	add 12,11,0
	addi 8,10,-48
	slwi 9,12,1
	cmplwi 1,8,9
	subf 0,7,9
	ble+ 1,.L473
	cmpwi 5,6,0
	subf 3,9,7
	isel 3,3,0,22
	blr
.L465:
	addi 3,3,1
	b .L469
.L467:
	lbz 10,1(3)
	li 6,1
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	ble+ 0,.L470
.L476:
	li 3,0
	blr
.L466:
	lbz 10,1(3)
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L476
	li 6,0
	b .L470
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L493:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq- 0,.L487
	ble- 7,.L487
	cmpwi 1,9,43
	beq- 1,.L488
	cmpwi 6,9,45
	bne- 6,.L508
	lbz 9,1(3)
	addi 3,3,1
	addi 4,9,-48
	cmplwi 0,4,9
	bgt- 0,.L498
	li 7,1
.L491:
	li 5,0
.L495:
	addi 11,9,-48
	lbzu 9,1(3)
	sldi 12,5,2
	add 0,12,5
	extsw 10,11
	addi 8,9,-48
	sldi 4,0,1
	cmplwi 1,8,9
	subf 5,10,4
	ble+ 1,.L495
	cmpwi 5,7,0
	subf 3,4,10
	isel 6,3,5,22
.L486:
	srdi 4,6,32
	mr 3,6
	blr
.L487:
	addi 3,3,1
	b .L493
.L508:
	addi 5,9,-48
	li 7,0
	cmplwi 7,5,9
	ble+ 7,.L491
.L498:
	li 6,0
	b .L486
.L488:
	lbz 9,1(3)
	li 7,0
	addi 3,3,1
	addi 0,9,-48
	cmplwi 5,0,9
	ble+ 5,.L491
	li 6,0
	b .L486
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
	beq- 0,.L510
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
	b .L513
.L522:
	beq- 1,.L520
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L521
.L513:
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
	bge+ 1,.L522
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L513
.L521:
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
.L510:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L520:
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
	beq- 0,.L528
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L536:
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
	beq- 7,.L540
.L542:
	cmpwi 5,29,0
	ble- 7,.L526
	add 28,30,27
	bne+ 0,.L536
.L541:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L528:
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
.L526:
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
	beq- 5,.L541
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
	bne+ 7,.L542
.L540:
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
	beq- 0,.L554
.L551:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L551
.L554:
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
	beq+ 0,.L561
	b .L560
.L562:
	lwzu 9,4(3)
	lwzu 0,4(4)
	cmpw 0,9,0
	bne- 0,.L560
.L561:
	cmpwi 7,9,0
	bne+ 7,.L562
.L560:
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
.L566:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L566
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
	beq- 0,.L572
	mr 4,3
.L571:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L571
	subf 3,3,4
	srawi 3,3,2
	blr
.L572:
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
	bne+ 0,.L575
	b .L583
.L586:
	beq- 7,.L577
	addi 3,3,4
	addi 4,4,4
	bdz .L583
.L575:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L586
.L577:
	lwz 0,0(3)
	lwz 3,0(4)
	cmpw 5,0,3
	blt- 5,.L587
	mfcr 3,4
	rlwinm 3,3,22,1
	blr
.L587:
	li 3,-1
	blr
.L583:
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
	beq- 0,.L592
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L609
.L595:
	srwi 0,5,1
	mtctr 0
.L589:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L589
.L592:
	li 3,0
	blr
.L609:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L595
	b .L592
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
	beq- 0,.L616
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L631
.L619:
	srwi 0,5,1
	mtctr 0
	b .L611
.L613:
	lwz 12,4(3)
	addi 3,7,4
	lwz 9,4(4)
	addi 4,6,4
	cmpw 1,12,9
	bne- 1,.L628
	bdz .L616
.L611:
	lwz 5,0(3)
	addi 7,3,4
	addi 6,4,4
	lwz 11,0(4)
	cmpw 1,5,11
	beq+ 1,.L613
.L628:
	li 4,-1
	mfcr 3,64
	rlwinm 3,3,6,1
	isel 3,4,3,4
	blr
.L631:
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 1,8,10
	bne- 1,.L628
	cmpwi 5,9,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L619
.L616:
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
	beq- 0,.L633
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L633:
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
	beq- 0,.L659
	slwi 9,5,2
	subf 10,4,3
	cmplw 1,10,9
	blt- 1,.L640
	cmpwi 5,5,0
	beq- 5,.L659
	addi 11,5,-1
	cmplwi 6,11,10
	ble- 6,.L644
	addi 6,4,4
	subf 7,6,3
	cmplwi 7,7,8
	ble- 7,.L644
	srwi 8,3,2
	neg 12,8
	andi. 0,12,0x3
	beq- 0,.L654
	andi. 10,12,0x2
	lwz 9,0(4)
	addi 12,3,4
	addi 11,5,-2
	stw 9,0(3)
	beq- 0,.L645
	cmplwi 1,0,3
	lwz 10,4(4)
	stw 10,4(3)
	bne- 1,.L693
	lwz 7,8(4)
	addi 6,4,12
	addi 12,3,12
	addi 11,5,-4
	stw 7,8(3)
.L645:
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
	lvsl 13,0,8
	li 10,0
	beq- 0,.L689
	mr. 7,0
	xxlor 33,32,32
	li 10,16
	lvx 0,0,4
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L686
.L689:
	addi 7,7,-2
	addi 8,10,16
	lvx 1,4,10
	vperm 0,1,0,13
	cmpdi 5,7,0
	stvx 0,9,10
	addi 10,10,32
	lvx 0,4,8
	vperm 1,0,1,13
	stvx 1,9,8
	bne+ 5,.L689
.L686:
	andi. 9,5,0x3
	rlwinm 5,5,0,0,29
	slwi 0,5,2
	subf 11,5,11
	add 4,6,0
	add 10,12,0
	beq- 0,.L659
	cmpwi 6,11,0
	lwzx 6,6,0
	stwx 6,12,0
	beq- 6,.L659
	cmplwi 7,11,1
	lwz 12,4(4)
	stw 12,4(10)
	beq- 7,.L659
	lwz 9,8(4)
	stw 9,8(10)
.L659:
	lwz 12,28(1)
	mtvrsave 12
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L640:
	.cfi_restore_state
	cmpwi 5,5,0
	beq- 5,.L659
	rldicl 11,5,0,32
	add 4,4,9
	andi. 10,11,0x1
	add 9,3,9
	addi 7,11,-1
	beq- 0,.L687
	mr. 11,7
	lwzu 5,-4(4)
	stwu 5,-4(9)
	beq- 0,.L659
.L687:
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
	beq- 6,.L659
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
	bne+ 6,.L687
	b .L659
.L654:
	mr 6,4
	mr 12,3
	b .L645
.L644:
	rldicl 5,5,0,32
	addi 11,4,-4
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,3,-4
	beq- 0,.L688
	mr. 5,7
	lwz 8,0(4)
	mr 11,4
	mr 10,3
	stw 8,0(3)
	beq- 0,.L659
.L688:
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
	beq- 1,.L659
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
	bne+ 1,.L688
	b .L659
.L693:
	addi 6,4,8
	addi 12,3,8
	addi 11,5,-3
	b .L645
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
	ble- 1,.L703
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mfvrsave 12
	oris 6,12,0x8000
	stw 12,44(1)
	mtvrsave 6
	cmpwi 5,9,0
	mr 12,3
	beq- 5,.L697
	andi. 10,0,0x2
	stw 4,0(3)
	addi 12,3,4
	addi 7,5,-2
	beq- 0,.L697
	cmplwi 6,9,3
	stw 4,4(3)
	addi 12,3,8
	addi 7,5,-3
	bne- 6,.L697
	stw 4,8(3)
	addi 12,3,12
	addi 7,5,-4
.L697:
	subf 5,9,5
	stw 4,16(1)
	slwi 0,9,2
	rldicl 10,5,62,34
	li 11,16
	andi. 8,10,0x3
	add 9,3,0
	lvewx 0,1,11
	addi 6,10,-1
	xxspltw 3,32,3
	beq- 0,.L744
	cmpdi 7,8,1
	beq- 7,.L729
	cmpdi 1,8,2
	beq- 1,.L730
	rlwinm 11,9,0,0,27
	mr 10,6
	xxpermdi 0,3,3,2
	xxpermdi 3,0,0,2
	addi 9,9,16
	stxvd2x 0,0,11
.L730:
	rlwinm 8,9,0,0,27
	addi 10,10,-1
	xxpermdi 1,3,3,2
	xxpermdi 3,1,1,2
	addi 9,9,16
	stxvd2x 1,0,8
.L729:
	addi 10,10,-1
	rlwinm 11,9,0,0,27
	xxpermdi 2,3,3,2
	xxpermdi 3,2,2,2
	cmpdi 5,10,0
	addi 9,9,16
	stxvd2x 2,0,11
	beq- 5,.L743
.L744:
	addi 10,10,-4
	addi 0,9,16
	xxpermdi 4,3,3,2
	xxpermdi 5,4,4,2
	cmpdi 6,10,0
	rlwinm 6,9,0,0,27
	xxpermdi 6,5,5,2
	xxpermdi 7,6,6,2
	addi 11,9,32
	rlwinm 8,0,0,0,27
	stxvd2x 4,0,6
	xxpermdi 8,7,7,2
	addi 0,9,48
	rlwinm 6,11,0,0,27
	stxvd2x 6,0,8
	xxpermdi 9,8,8,2
	rlwinm 11,0,0,0,27
	xxpermdi 10,9,9,2
	stxvd2x 8,0,6
	addi 9,9,64
	stxvd2x 10,0,11
	xxpermdi 3,10,10,2
	bne+ 6,.L744
.L743:
	andi. 9,5,0x3
	beq- 0,.L695
	rlwinm 5,5,0,0,29
	subf 7,5,7
	slwi 10,5,2
	cmpwi 7,7,0
	add 12,12,10
	stw 4,0(12)
	beq- 7,.L695
	cmplwi 1,7,1
	stw 4,4(12)
	beq- 1,.L695
	cmplwi 5,7,2
	stw 4,8(12)
	beq- 5,.L695
	cmplwi 6,7,3
	stw 4,12(12)
	beq- 6,.L695
	cmplwi 0,7,4
	stw 4,16(12)
	beq- 0,.L695
	stw 4,20(12)
.L695:
	lwz 4,44(1)
	mtvrsave 4
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
.L703:
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
	bge- 0,.L758
	cmpwi 7,5,0
	add 3,3,5
	add 4,4,5
	beq- 7,.L757
	rldicl 12,5,0,32
	andi. 9,12,0x1
	addi 7,12,-1
	beq- 0,.L854
	mr. 12,7
	lbzu 6,-1(3)
	stbu 6,-1(4)
	beq- 0,.L757
.L854:
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
	bne+ 1,.L854
.L757:
	lwz 8,28(1)
	mtvrsave 8
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L758:
	.cfi_restore_state
	beq- 0,.L757
	cmpwi 1,5,0
	beq- 1,.L757
	addi 7,5,-1
	cmplwi 5,7,29
	ble- 5,.L761
	addi 6,3,1
	subf 9,6,4
	cmplwi 6,9,14
	ble- 6,.L761
	neg 10,4
	andi. 12,10,0xf
	beq- 0,.L783
	andi. 8,10,0xe
	lbz 8,0(3)
	addi 11,4,1
	stb 8,0(4)
	beq- 0,.L762
	cmplwi 7,12,2
	lbz 0,1(3)
	addi 6,3,2
	addi 11,4,2
	addi 7,5,-2
	stb 0,1(4)
	ble- 7,.L762
	andi. 8,10,0xc
	lbz 9,2(3)
	addi 6,3,3
	addi 11,4,3
	addi 7,5,-3
	stb 9,2(4)
	beq- 0,.L762
	cmplwi 1,12,4
	lbz 8,3(3)
	addi 6,3,4
	addi 11,4,4
	addi 7,5,-4
	stb 8,3(4)
	ble- 1,.L762
	cmplwi 5,12,5
	lbz 0,4(3)
	addi 6,3,5
	addi 11,4,5
	addi 7,5,-5
	stb 0,4(4)
	beq- 5,.L762
	cmplwi 6,12,6
	lbz 9,5(3)
	addi 6,3,6
	addi 11,4,6
	addi 7,5,-6
	stb 9,5(4)
	beq- 6,.L762
	andi. 10,10,0x8
	lbz 10,6(3)
	addi 6,3,7
	addi 11,4,7
	addi 7,5,-7
	stb 10,6(4)
	beq- 0,.L762
	cmplwi 7,12,8
	lbz 8,7(3)
	addi 6,3,8
	addi 11,4,8
	addi 7,5,-8
	stb 8,7(4)
	ble- 7,.L762
	cmplwi 1,12,9
	lbz 0,8(3)
	addi 6,3,9
	addi 11,4,9
	addi 7,5,-9
	stb 0,8(4)
	beq- 1,.L762
	cmplwi 5,12,10
	lbz 9,9(3)
	addi 6,3,10
	addi 11,4,10
	addi 7,5,-10
	stb 9,9(4)
	beq- 5,.L762
	cmplwi 6,12,11
	lbz 10,10(3)
	addi 6,3,11
	addi 11,4,11
	addi 7,5,-11
	stb 10,10(4)
	beq- 6,.L762
	cmplwi 0,12,12
	lbz 8,11(3)
	addi 6,3,12
	addi 11,4,12
	addi 7,5,-12
	stb 8,11(4)
	beq- 0,.L762
	cmplwi 7,12,13
	lbz 0,12(3)
	addi 6,3,13
	addi 11,4,13
	addi 7,5,-13
	stb 0,12(4)
	beq- 7,.L762
	cmplwi 1,12,15
	lbz 9,13(3)
	addi 6,3,14
	addi 11,4,14
	addi 7,5,-14
	stb 9,13(4)
	bne- 1,.L762
	lbz 10,14(3)
	addi 6,3,15
	addi 11,4,15
	addi 7,5,-15
	stb 10,14(4)
.L762:
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
	beq- 0,.L856
	mr. 8,12
	xxlor 33,32,32
	li 9,16
	lvx 0,0,3
	vperm 1,0,1,13
	stvx 1,0,4
	beq- 0,.L853
.L856:
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
	bne+ 5,.L856
.L853:
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	subf 7,5,7
	add 4,11,5
	add 12,6,5
	beq- 0,.L757
	cmplwi 6,7,1
	lbzx 6,6,5
	stbx 6,11,5
	beq- 6,.L757
	cmplwi 7,7,2
	lbz 11,1(12)
	stb 11,1(4)
	beq- 7,.L757
	cmplwi 1,7,3
	lbz 0,2(12)
	stb 0,2(4)
	beq- 1,.L757
	cmplwi 5,7,4
	lbz 3,3(12)
	stb 3,3(4)
	beq- 5,.L757
	cmplwi 0,7,5
	lbz 8,4(12)
	stb 8,4(4)
	beq- 0,.L757
	cmplwi 6,7,6
	lbz 9,5(12)
	stb 9,5(4)
	beq- 6,.L757
	cmplwi 7,7,7
	lbz 10,6(12)
	stb 10,6(4)
	beq- 7,.L757
	cmplwi 1,7,8
	lbz 5,7(12)
	stb 5,7(4)
	beq- 1,.L757
	cmplwi 5,7,9
	lbz 6,8(12)
	stb 6,8(4)
	beq- 5,.L757
	cmplwi 0,7,10
	lbz 11,9(12)
	stb 11,9(4)
	beq- 0,.L757
	cmplwi 6,7,11
	lbz 0,10(12)
	stb 0,10(4)
	beq- 6,.L757
	cmplwi 7,7,12
	lbz 3,11(12)
	stb 3,11(4)
	beq- 7,.L757
	cmplwi 1,7,13
	lbz 8,12(12)
	stb 8,12(4)
	beq- 1,.L757
	cmplwi 5,7,14
	lbz 7,13(12)
	stb 7,13(4)
	beq- 5,.L757
	lbz 12,14(12)
	stb 12,14(4)
	b .L757
.L761:
	rldicl 5,5,0,32
	addi 10,3,-1
	andi. 9,5,0x1
	addi 6,5,-1
	addi 9,4,-1
	beq- 0,.L855
	mr. 5,6
	lbz 11,0(3)
	mr 10,3
	mr 9,4
	stb 11,0(4)
	beq- 0,.L757
.L855:
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
	beq- 6,.L757
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
	bne+ 6,.L855
	b .L757
.L783:
	mr 11,4
	mr 6,3
	mr 7,5
	b .L762
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
	b .L875
.L873:
	addi 9,9,1
	bne- 0,.L879
	bdz .L883
.L875:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L873
.L879:
	mr 3,9
	blr
.L883:
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
	beq- 0,.L887
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L886:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L886
	blr
.L887:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	xxlxor 3,3,3
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
	blt- 5,.L915
	lis 9,.LC14@ha
	lfs 2,.LC14@l(9)
.L904:
	andi. 9,3,0x1
	beq- 0,.L905
.L906:
	fmuls 1,1,2
.L905:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmuls 2,2,2
	bne- 0,.L906
.L916:
	srawi 3,3,1
	addze 3,3
	fmuls 2,2,2
	andi. 9,3,0x1
	bne- 0,.L906
	b .L916
.L915:
	lis 4,.LC15@ha
	lfs 2,.LC15@l(4)
	b .L904
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
	blt- 5,.L930
	lis 9,.LC14@ha
	lfs 2,.LC14@l(9)
.L919:
	andi. 9,3,0x1
	beq- 0,.L920
.L921:
	fmul 1,1,2
.L920:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmul 2,2,2
	bne- 0,.L921
.L931:
	srawi 3,3,1
	addze 3,3
	fmul 2,2,2
	andi. 9,3,0x1
	bne- 0,.L921
	b .L931
.L930:
	lis 4,.LC15@ha
	lfs 2,.LC15@l(4)
	b .L919
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
	bun- 0,.L933
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
	beq- 1,.L948
	cmpwi 5,31,0
	stfd 30,48(1)
	.cfi_offset 62, -16
	stfd 31,56(1)
	.cfi_offset 63, -8
	blt- 5,.L949
	lis 9,.LC20@ha
	la 3,.LC20@l(9)
	lfd 30,0(3)
	lfd 31,8(3)
.L934:
	andi. 9,31,0x1
	beq- 0,.L935
.L936:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	fmr 29,2
	fmr 28,1
.L935:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L947
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L936
.L950:
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
	bne- 0,.L936
	b .L950
.L947:
	lfd 30,48(1)
	.cfi_restore 62
	lfd 31,56(1)
	.cfi_restore 63
.L948:
	lwz 0,68(1)
	lwz 31,28(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L933:
	fmr 1,28
	lfd 28,32(1)
	fmr 2,29
	lfd 29,40(1)
	addi 1,1,64
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L949:
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
	b .L934
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
	li 7,23
	rlwinm 10,8,0,28,31
	addi 6,5,-1
	addi 9,10,15
	cmplwi 1,9,23
	isel 0,7,9,4
	cmplw 5,6,0
	blt- 5,.L973
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mfvrsave 12
	oris 0,12,0xc004
	stw 12,44(1)
	mtvrsave 0
	cmpwi 7,10,0
	beq- 7,.L974
	lbz 0,0(3)
	andi. 11,8,0xe
	lbz 12,0(4)
	xor 7,12,0
	stb 7,0(3)
	beq- 0,.L999
	cmplwi 1,10,2
	lbz 6,1(3)
	lbz 11,1(4)
	xor 12,11,6
	stb 12,1(3)
	ble- 1,.L1000
	lbz 7,2(3)
	andi. 6,8,0xc
	lbz 0,2(4)
	xor 11,0,7
	stb 11,2(3)
	beq- 0,.L1001
	cmplwi 5,10,4
	lbz 6,3(3)
	lbz 12,3(4)
	xor 0,12,6
	stb 0,3(3)
	ble- 5,.L1002
	cmplwi 6,10,5
	lbz 11,4(3)
	lbz 7,4(4)
	xor 12,7,11
	stb 12,4(3)
	beq- 6,.L1003
	cmplwi 7,10,6
	lbz 6,5(3)
	lbz 0,5(4)
	xor 7,0,6
	stb 7,5(3)
	beq- 7,.L1004
	lbz 11,6(3)
	andi. 8,8,0x8
	addi 7,3,7
	lbz 8,6(4)
	addi 6,5,-7
	xor 12,8,11
	addi 11,4,7
	stb 12,6(3)
	beq- 0,.L954
	cmplwi 1,10,8
	lbz 6,7(3)
	lbz 0,7(4)
	xor 7,0,6
	stb 7,7(3)
	ble- 1,.L1005
	cmplwi 5,10,9
	lbz 11,8(3)
	lbz 8,8(4)
	xor 12,8,11
	stb 12,8(3)
	beq- 5,.L1006
	cmplwi 6,10,10
	lbz 6,9(3)
	lbz 0,9(4)
	xor 7,0,6
	stb 7,9(3)
	beq- 6,.L1007
	cmplwi 7,10,11
	lbz 11,10(3)
	lbz 8,10(4)
	xor 12,8,11
	stb 12,10(3)
	beq- 7,.L1008
	cmplwi 0,10,12
	lbz 6,11(3)
	lbz 0,11(4)
	xor 7,0,6
	stb 7,11(3)
	beq- 0,.L1009
	cmplwi 1,10,13
	lbz 11,12(3)
	lbz 8,12(4)
	xor 12,8,11
	stb 12,12(3)
	beq- 1,.L1010
	cmplwi 5,10,15
	lbz 6,13(3)
	lbz 0,13(4)
	xor 7,0,6
	stb 7,13(3)
	bne- 5,.L1011
	lbz 12,14(3)
	addi 11,4,15
	addi 7,3,15
	lbz 8,14(4)
	addi 6,5,-15
	xor 0,8,12
	stb 0,14(3)
.L954:
	add 8,4,10
	subf 5,10,5
	lvx 1,4,10
	add 4,4,9
	neg 9,8
	lvsl 13,0,9
	rldicl 8,5,60,36
	add 10,3,10
	li 9,0
.L970:
	addi 8,8,-1
	addi 12,1,16
	xxlor 32,33,33
	lvx 1,10,9
	cmpdi 6,8,0
	add 0,10,9
	xxpermdi 0,33,33,2
	stxvd2x 0,0,12
	lxvd2x 1,0,12
	rlwinm 12,0,0,0,27
	lvx 1,4,9
	xxpermdi 2,1,1,2
	vperm 0,1,0,13
	addi 9,9,16
	xxlxor 3,2,32
	xxpermdi 4,3,3,2
	stxvd2x 4,0,12
	bne+ 6,.L970
	andi. 9,5,0xf
	rlwinm 5,5,0,0,27
	add 8,7,5
	add 11,11,5
	subf 6,5,6
	beq- 0,.L952
	rldicl 9,6,0,32
	addi 12,11,-1
	andi. 10,9,0x1
	addi 7,9,-1
	addi 10,8,-1
	beq- 0,.L988
	lbz 0,0(8)
	mr. 9,7
	mr 12,11
	lbz 4,0(11)
	mr 10,8
	xor 5,4,0
	stb 5,0(8)
	beq- 0,.L952
.L988:
	lbz 6,1(10)
	addi 9,9,-2
	mr 8,10
	lbz 11,1(12)
	cmpdi 7,9,0
	addi 12,12,2
	lbz 7,0(12)
	addi 10,10,2
	xor 4,11,6
	stb 4,-1(10)
	lbz 0,2(8)
	xor 5,7,0
	stb 5,2(8)
	bne+ 7,.L988
.L952:
	lwz 12,44(1)
	mtvrsave 12
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1002:
	.cfi_restore_state
	addi 11,4,4
	addi 7,3,4
	addi 6,5,-4
	b .L954
.L973:
	.cfi_def_cfa_offset 0
	rldicl 5,5,0,32
	addi 12,4,-1
	andi. 10,5,0x1
	addi 11,5,-1
	addi 10,3,-1
	beq- 0,.L993
	mr. 5,11
	lbz 8,0(3)
	mr 12,4
	lbz 4,0(4)
	mr 10,3
	xor 7,4,8
	stb 7,0(3)
	beqlr- 0
.L993:
	lbz 0,1(10)
	addi 5,5,-2
	mr 11,10
	lbz 9,1(12)
	cmpdi 6,5,0
	addi 12,12,2
	lbz 4,0(12)
	addi 10,10,2
	xor 6,9,0
	stb 6,-1(10)
	lbz 8,2(11)
	xor 7,4,8
	stb 7,2(11)
	beqlr- 6
	lbz 0,1(10)
	addi 5,5,-2
	mr 11,10
	lbz 9,1(12)
	cmpdi 6,5,0
	addi 12,12,2
	lbz 4,0(12)
	addi 10,10,2
	xor 6,9,0
	stb 6,-1(10)
	lbz 8,2(11)
	xor 7,4,8
	stb 7,2(11)
	bne+ 6,.L993
	blr
.L999:
	.cfi_def_cfa_offset 48
	addi 11,4,1
	addi 7,3,1
	b .L954
.L1000:
	addi 11,4,2
	addi 7,3,2
	addi 6,5,-2
	b .L954
.L1001:
	addi 11,4,3
	addi 7,3,3
	addi 6,5,-3
	b .L954
.L1003:
	addi 11,4,5
	addi 7,3,5
	addi 6,5,-5
	b .L954
.L974:
	mr 7,3
	mr 11,4
	mr 6,5
	b .L954
.L1009:
	addi 11,4,12
	addi 7,3,12
	addi 6,5,-12
	b .L954
.L1004:
	addi 11,4,6
	addi 7,3,6
	addi 6,5,-6
	b .L954
.L1005:
	addi 11,4,8
	addi 7,3,8
	addi 6,5,-8
	b .L954
.L1006:
	addi 11,4,9
	addi 7,3,9
	addi 6,5,-9
	b .L954
.L1007:
	addi 11,4,10
	addi 7,3,10
	addi 6,5,-10
	b .L954
.L1008:
	addi 11,4,11
	addi 7,3,11
	addi 6,5,-11
	b .L954
.L1010:
	addi 11,4,13
	addi 7,3,13
	addi 6,5,-13
	b .L954
.L1011:
	addi 11,4,14
	addi 7,3,14
	addi 6,5,-14
	b .L954
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
	beq- 0,.L1013
.L1014:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1014
.L1013:
	cmpwi 5,5,0
	beq- 5,.L1015
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne- 0,.L1038
.L1026:
	srwi 0,5,1
	mtctr 0
.L1016:
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
	bdnz .L1016
.L1015:
	li 6,0
	stb 6,0(9)
	blr
.L1038:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpwi 7,7,0
	addi 9,9,1
	bne+ 7,.L1026
	b .L1015
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
	beq- 0,.L1051
	cmpwi 1,8,1
	beq- 1,.L1062
	cmpwi 5,8,2
	beq- 5,.L1063
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L1063:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L1062:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmplw 1,4,3
	beqlr- 1
.L1051:
	srwi 10,10,2
.L1040:
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
	bne+ 1,.L1040
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
	beq- 0,.L1077
.L1073:
	mr 10,4
	b .L1076
.L1075:
	beqlr- 7
.L1076:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L1075
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L1073
.L1077:
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
.L1083:
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
	bne+ 0,.L1083
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
	beq- 0,.L1099
	mr 9,4
.L1088:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L1088
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1107
.L1110:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1109
.L1107:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1110
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L1090
.L1112:
	bdz .L1092
	bne- 7,.L1093
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1111
	lbzu 10,1(6)
.L1090:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1112
.L1093:
	addi 8,8,1
	b .L1107
.L1109:
	li 3,0
	blr
.L1111:
	lbz 9,1(6)
.L1092:
	cmpw 5,12,9
	bne+ 5,.L1093
.L1099:
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
	blt- 0,.L1123
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1123:
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
	blt- 1,.L1132
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1132
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1129
.L1126:
	cmplw 1,0,9
	blt- 1,.L1132
.L1129:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1126
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1127:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1126
	bdnz .L1127
	blr
.L1132:
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
	beq- 0,.L1141
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L1141:
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
	blt- 7,.L1169
	lis 9,.LC29@ha
	li 10,0
	lfs 2,.LC29@l(9)
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1170
.L1149:
	lis 11,.LC15@ha
	lis 12,.LC29@ha
	lfs 7,.LC15@l(11)
	li 7,0
	lfs 8,.LC29@l(12)
.L1155:
	fmul 1,1,7
	addi 7,7,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1155
	cmpwi 1,10,0
	stw 7,0(3)
	beqlr- 1
.L1172:
	fneg 1,1
	blr
.L1170:
	lis 4,.LC15@ha
	lfs 3,.LC15@l(4)
	fcmpu 1,1,3
	bnl- 1,.L1152
	bne- 7,.L1161
.L1152:
	li 0,0
	stw 0,0(3)
	blr
.L1169:
	lis 5,.LC25@ha
	fneg 12,1
	lfs 4,.LC25@l(5)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1171
	fmr 1,12
	li 10,1
	b .L1149
.L1171:
	lis 6,.LC27@ha
	lfs 5,.LC27@l(6)
	fcmpu 6,1,5
	bng- 6,.L1152
	li 10,1
.L1150:
	lis 8,.LC15@ha
	fmr 1,12
	li 7,0
	lfs 6,.LC15@l(8)
.L1157:
	fadd 1,1,1
	addi 7,7,-1
	fcmpu 7,1,6
	blt+ 7,.L1157
	cmpwi 1,10,0
	stw 7,0(3)
	bne+ 1,.L1172
	blr
.L1161:
	fmr 12,1
	b .L1150
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
	beq- 0,.L1173
.L1175:
	rldicl 9,0,0,63
	srdi 0,0,1
	cmpdi 1,0,0
	neg 7,9
	and 8,7,11
	sldi 11,11,1
	add 10,10,8
	bne+ 1,.L1175
.L1173:
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
	blt+ 0,.L1179
	b .L1201
.L1183:
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1181
	blt- 5,.L1198
	slwi 4,4,1
	slwi 12,12,1
	cmplw 7,3,4
	ble- 7,.L1181
	bdz .L1182
.L1179:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1183
.L1198:
	cmplw 7,3,4
	b .L1184
.L1181:
	cmpwi 6,12,0
	beq- 6,.L1188
.L1184:
	li 10,0
	li 11,1
	li 5,0
.L1185:
	isel 7,0,11,28
	subf 6,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,5,12,6
	srwi. 12,12,1
	isel 3,3,6,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1185
.L1182:
	cmpdi 5,0,0
	isel 3,10,3,22
	blr
.L1201:
	isel 9,0,12,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1182
.L1188:
	li 10,0
	b .L1182
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
	beq- 0,.L1206
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1206:
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
	beq- 0,.L1209
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1209:
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
.L1212:
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
	bne+ 0,.L1212
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
	blt- 0,.L1220
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1307
.L1220:
	cmpwi 7,12,0
	addi 8,4,-8
	addi 10,3,-8
	beq- 7,.L1292
	andi. 7,12,0x1
	addi 6,12,-1
	beq- 0,.L1301
	mr. 12,6
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1295
.L1301:
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
	bne+ 5,.L1301
.L1295:
	cmplw 6,5,11
	ble- 6,.L1216
	subf 12,11,5
	addi 8,12,-1
	cmplwi 7,8,29
	ble- 7,.L1225
	addi 0,11,1
	add 9,3,11
	add 10,4,0
	subf 6,10,9
	cmplwi 1,6,14
	ble- 1,.L1225
	neg 8,9
	andi. 10,8,0xf
	beq- 0,.L1234
	andi. 7,8,0xe
	lbzx 7,4,11
	stbx 7,3,11
	beq- 0,.L1226
	cmplwi 5,10,2
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,2
	ble- 5,.L1226
	andi. 7,8,0xc
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,3
	beq- 0,.L1226
	cmplwi 6,10,4
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,4
	ble- 6,.L1226
	cmplwi 7,10,5
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,5
	beq- 7,.L1226
	cmplwi 1,10,6
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,6
	beq- 1,.L1226
	andi. 8,8,0x8
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,7
	beq- 0,.L1226
	cmplwi 5,10,8
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,8
	ble- 5,.L1226
	cmplwi 6,10,9
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,9
	beq- 6,.L1226
	cmplwi 7,10,10
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,10
	beq- 7,.L1226
	cmplwi 1,10,11
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,11
	beq- 1,.L1226
	cmplwi 0,10,12
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,12
	beq- 0,.L1226
	cmplwi 5,10,13
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,13
	beq- 5,.L1226
	cmplwi 6,10,15
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,14
	bne- 6,.L1226
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,15
.L1226:
	subf 12,10,12
	add 10,11,10
	rldicl 6,12,60,36
	add 11,4,10
	lvx 0,4,10
	andi. 7,6,0x1
	addi 9,10,15
	neg 7,11
	add 10,3,10
	lvsl 13,0,7
	add 11,4,9
	addi 7,6,-1
	li 8,0
	beq- 0,.L1300
	mr. 6,7
	xxlor 33,32,32
	li 8,16
	lvx 0,0,11
	vperm 1,0,1,13
	stvx 1,0,10
	beq- 0,.L1298
.L1300:
	addi 6,6,-2
	addi 9,8,16
	lvx 1,11,8
	vperm 0,1,0,13
	cmpdi 7,6,0
	stvx 0,10,8
	addi 8,8,32
	lvx 0,11,9
	vperm 1,0,1,13
	stvx 1,10,9
	bne+ 7,.L1300
.L1298:
	andi. 10,12,0xf
	rlwinm 12,12,0,0,27
	add 11,12,0
	beq- 0,.L1216
	addi 0,11,1
	lbzx 7,4,11
	cmplw 1,5,0
	stbx 7,3,11
	ble- 1,.L1216
	addi 6,11,2
	lbzx 10,4,0
	cmplw 5,5,6
	stbx 10,3,0
	ble- 5,.L1216
	addi 9,11,3
	lbzx 8,4,6
	cmplw 6,5,9
	stbx 8,3,6
	ble- 6,.L1216
	addi 12,11,4
	lbzx 0,4,9
	cmplw 7,5,12
	stbx 0,3,9
	ble- 7,.L1216
	addi 6,11,5
	lbzx 7,4,12
	cmplw 0,5,6
	stbx 7,3,12
	ble- 0,.L1216
	addi 9,11,6
	lbzx 10,4,6
	cmplw 1,5,9
	stbx 10,3,6
	ble- 1,.L1216
	addi 12,11,7
	lbzx 8,4,9
	cmplw 5,5,12
	stbx 8,3,9
	ble- 5,.L1216
	addi 0,11,8
	lbzx 6,4,12
	cmplw 6,5,0
	stbx 6,3,12
	ble- 6,.L1216
	addi 9,11,9
	lbzx 7,4,0
	cmplw 7,5,9
	stbx 7,3,0
	ble- 7,.L1216
	addi 12,11,10
	lbzx 10,4,9
	cmplw 0,5,12
	stbx 10,3,9
	ble- 0,.L1216
	addi 0,11,11
	lbzx 8,4,12
	cmplw 1,5,0
	stbx 8,3,12
	ble- 1,.L1216
	addi 6,11,12
	lbzx 9,4,0
	cmplw 5,5,6
	stbx 9,3,0
	ble- 5,.L1216
	addi 12,11,13
	lbzx 7,4,6
	cmplw 6,5,12
	stbx 7,3,6
	ble- 6,.L1216
	addi 11,11,14
	lbzx 10,4,12
	cmplw 7,5,11
	stbx 10,3,12
	ble- 7,.L1216
	lbzx 4,4,11
	stbx 4,3,11
.L1216:
	lwz 4,28(1)
	mtvrsave 4
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1307:
	.cfi_restore_state
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beq- 5,.L1216
	andi. 10,5,0x1
	addi 4,5,-1
	beq- 0,.L1302
	mr. 5,4
	lbzu 6,-1(9)
	stbu 6,-1(3)
	beq- 0,.L1216
.L1302:
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
	beq- 6,.L1216
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
	bne+ 6,.L1302
	b .L1216
.L1292:
	cmpwi 1,5,0
	mr 12,5
	beq- 1,.L1216
.L1225:
	rldicl 6,12,0,32
	addi 5,11,-1
	andi. 10,6,0x1
	add 11,3,5
	add 7,4,5
	addi 3,6,-1
	beq- 0,.L1299
	mr. 6,3
	lbzu 0,1(7)
	stbu 0,1(11)
	beq- 0,.L1216
.L1299:
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
	bne+ 1,.L1299
	b .L1216
.L1234:
	mr 0,11
	b .L1226
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
	blt- 0,.L1312
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1364
.L1312:
	cmpwi 7,6,0
	beq- 7,.L1311
	addi 12,6,-1
	cmplwi 1,12,13
	ble- 1,.L1315
	addi 0,4,2
	subf 10,0,3
	cmplwi 5,10,12
	ble- 5,.L1315
	srwi 7,3,1
	neg 11,7
	andi. 9,11,0x7
	beq- 0,.L1324
	andi. 8,11,0x6
	lhz 8,0(4)
	sth 8,0(3)
	beq- 0,.L1325
	cmplwi 6,9,2
	lhz 12,2(4)
	sth 12,2(3)
	ble- 6,.L1326
	andi. 10,11,0x4
	lhz 10,4(4)
	sth 10,4(3)
	beq- 0,.L1327
	cmplwi 7,9,4
	lhz 7,6(4)
	sth 7,6(3)
	ble- 7,.L1328
	cmplwi 1,9,5
	lhz 11,8(4)
	sth 11,8(3)
	beq- 1,.L1329
	cmplwi 5,9,7
	lhz 0,10(4)
	sth 0,10(3)
	bne- 5,.L1330
	lhz 8,12(4)
	li 0,7
	sth 8,12(3)
.L1316:
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
	beq- 0,.L1359
	mr. 7,8
	xxlor 33,32,32
	li 10,16
	lvx 0,0,12
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L1357
.L1359:
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
	bne+ 6,.L1359
.L1357:
	andi. 9,11,0x7
	rlwinm 11,11,0,0,28
	add 12,11,0
	beq- 0,.L1311
	addi 0,12,1
	slwi 10,12,1
	cmplw 7,6,0
	lhzx 9,4,10
	sthx 9,3,10
	ble- 7,.L1311
	addi 8,12,2
	addi 7,10,2
	cmplw 1,6,8
	lhzx 11,4,7
	sthx 11,3,7
	ble- 1,.L1311
	addi 0,12,3
	addi 9,10,4
	cmplw 5,6,0
	lhzx 8,4,9
	sthx 8,3,9
	ble- 5,.L1311
	addi 11,12,4
	addi 7,10,6
	cmplw 6,6,11
	lhzx 0,4,7
	sthx 0,3,7
	ble- 6,.L1311
	addi 9,12,5
	addi 11,10,8
	cmplw 0,6,9
	lhzx 8,4,11
	sthx 8,3,11
	ble- 0,.L1311
	addi 12,12,6
	addi 7,10,10
	cmplw 7,6,12
	lhzx 6,4,7
	sthx 6,3,7
	ble- 7,.L1311
	addi 10,10,12
	lhzx 0,4,10
	sthx 0,3,10
.L1311:
	andi. 9,5,0x1
	beq- 0,.L1308
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
.L1308:
	lwz 3,28(1)
	mtvrsave 3
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1364:
	.cfi_restore_state
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beq- 5,.L1308
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1360
	mr. 5,10
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beq- 0,.L1308
.L1360:
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
	beq- 6,.L1308
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
	bne+ 6,.L1360
	b .L1308
.L1324:
	li 0,0
	b .L1316
.L1315:
	andi. 9,6,0x1
	addi 12,4,-2
	addi 11,6,-1
	addi 9,3,-2
	beq- 0,.L1358
	mr. 6,11
	lhz 8,0(4)
	mr 12,4
	mr 9,3
	sth 8,0(3)
	beq- 0,.L1311
.L1358:
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
	bne+ 1,.L1358
	b .L1311
.L1325:
	li 0,1
	b .L1316
.L1326:
	li 0,2
	b .L1316
.L1330:
	li 0,6
	b .L1316
.L1327:
	li 0,3
	b .L1316
.L1328:
	li 0,4
	b .L1316
.L1329:
	li 0,5
	b .L1316
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
	blt- 0,.L1370
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1473
.L1370:
	cmpwi 7,12,0
	beq- 7,.L1474
	addi 0,12,-1
	cmplwi 5,0,10
	ble- 5,.L1372
	addi 10,4,4
	subf 7,10,3
	cmplwi 0,7,8
	ble- 0,.L1372
	srwi 8,3,2
	stw 31,28(1)
	.cfi_offset 31, -4
	li 31,0
	neg 6,8
	andi. 9,6,0x3
	beq- 0,.L1373
	andi. 10,6,0x2
	lwz 0,0(4)
	li 31,1
	stw 0,0(3)
	beq- 0,.L1373
	cmplwi 6,9,3
	lwz 10,4(4)
	li 31,2
	stw 10,4(3)
	bne- 6,.L1373
	lwz 7,8(4)
	li 31,3
	stw 7,8(3)
.L1373:
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
	beq- 0,.L1466
	mr. 7,8
	xxlor 33,32,32
	li 10,16
	lvx 0,0,6
	vperm 1,0,1,13
	stvx 1,0,9
	beq- 0,.L1462
.L1466:
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
	bne+ 7,.L1466
.L1462:
	andi. 9,0,0x3
	rlwinm 0,0,0,0,29
	add 31,0,31
	beq- 0,.L1472
	addi 6,31,1
	slwi 7,31,2
	cmplw 1,12,6
	lwzx 9,4,7
	stwx 9,3,7
	ble- 1,.L1472
	addi 10,31,2
	addi 8,7,4
	cmplw 5,12,10
	lwzx 12,4,8
	stwx 12,3,8
	ble- 5,.L1472
	addi 0,7,8
	lwzx 31,4,0
	stwx 31,3,0
	lwz 31,28(1)
	.cfi_restore 31
	b .L1378
.L1473:
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beq- 5,.L1365
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1467
	mr. 5,10
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beq- 0,.L1365
.L1467:
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
	bne+ 6,.L1467
.L1365:
	lwz 5,24(1)
	mtvrsave 5
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
.L1472:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	lwz 31,28(1)
	.cfi_restore 31
.L1378:
	cmplw 7,5,11
	ble- 7,.L1365
	subf 12,11,5
	addi 10,12,-1
	cmplwi 1,10,29
	ble- 1,.L1368
	addi 0,11,1
	add 9,3,11
	add 6,4,0
	subf 8,6,9
	cmplwi 5,8,14
	ble- 5,.L1368
	neg 9,9
	andi. 10,9,0xf
	beq- 0,.L1390
	andi. 7,9,0xe
	lbzx 7,4,11
	stbx 7,3,11
	beq- 0,.L1379
	cmplwi 6,10,2
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,2
	ble- 6,.L1379
	andi. 7,9,0xc
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,3
	beq- 0,.L1379
	cmplwi 7,10,4
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,4
	ble- 7,.L1379
	cmplwi 1,10,5
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,5
	beq- 1,.L1379
	cmplwi 5,10,6
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,6
	beq- 5,.L1379
	andi. 8,9,0x8
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,7
	beq- 0,.L1379
	cmplwi 6,10,8
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,8
	ble- 6,.L1379
	cmplwi 7,10,9
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,9
	beq- 7,.L1379
	cmplwi 1,10,10
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,10
	beq- 1,.L1379
	cmplwi 5,10,11
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,11
	beq- 5,.L1379
	cmplwi 0,10,12
	lbzx 7,4,0
	stbx 7,3,0
	addi 0,11,12
	beq- 0,.L1379
	cmplwi 6,10,13
	lbzx 6,4,0
	stbx 6,3,0
	addi 0,11,13
	beq- 6,.L1379
	cmplwi 7,10,15
	lbzx 8,4,0
	stbx 8,3,0
	addi 0,11,14
	bne- 7,.L1379
	lbzx 9,4,0
	stbx 9,3,0
	addi 0,11,15
.L1379:
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
	lvsl 13,0,7
	li 8,0
	beq- 0,.L1464
	mr. 6,9
	xxlor 33,32,32
	li 8,16
	lvx 0,0,11
	vperm 1,0,1,13
	stvx 1,0,10
	beq- 0,.L1461
.L1464:
	addi 6,6,-2
	addi 7,8,16
	lvx 1,11,8
	vperm 0,1,0,13
	cmpdi 1,6,0
	stvx 0,10,8
	addi 8,8,32
	lvx 0,11,7
	vperm 1,0,1,13
	stvx 1,10,7
	bne+ 1,.L1464
.L1461:
	andi. 10,12,0xf
	rlwinm 12,12,0,0,27
	add 9,12,0
	beq- 0,.L1365
	addi 0,9,1
	lbzx 11,4,9
	cmplw 5,5,0
	stbx 11,3,9
	ble- 5,.L1365
	addi 6,9,2
	lbzx 10,4,0
	cmplw 6,5,6
	stbx 10,3,0
	ble- 6,.L1365
	addi 12,9,3
	lbzx 8,4,6
	cmplw 7,5,12
	stbx 8,3,6
	ble- 7,.L1365
	addi 0,9,4
	lbzx 7,4,12
	cmplw 1,5,0
	stbx 7,3,12
	ble- 1,.L1365
	addi 11,9,5
	lbzx 6,4,0
	cmplw 0,5,11
	stbx 6,3,0
	ble- 0,.L1365
	addi 12,9,6
	lbzx 10,4,11
	cmplw 5,5,12
	stbx 10,3,11
	ble- 5,.L1365
	addi 0,9,7
	lbzx 8,4,12
	cmplw 6,5,0
	stbx 8,3,12
	ble- 6,.L1365
	addi 11,9,8
	lbzx 7,4,0
	cmplw 7,5,11
	stbx 7,3,0
	ble- 7,.L1365
	addi 6,9,9
	lbzx 12,4,11
	cmplw 1,5,6
	stbx 12,3,11
	ble- 1,.L1365
	addi 0,9,10
	lbzx 10,4,6
	cmplw 0,5,0
	stbx 10,3,6
	ble- 0,.L1365
	addi 11,9,11
	lbzx 8,4,0
	cmplw 5,5,11
	stbx 8,3,0
	ble- 5,.L1365
	addi 6,9,12
	lbzx 7,4,11
	cmplw 6,5,6
	stbx 7,3,11
	ble- 6,.L1365
	addi 12,9,13
	lbzx 0,4,6
	cmplw 7,5,12
	stbx 0,3,6
	ble- 7,.L1365
	addi 9,9,14
	lbzx 10,4,12
	cmplw 1,5,9
	stbx 10,3,12
	ble- 1,.L1365
	lbzx 5,4,9
	stbx 5,3,9
	b .L1365
.L1474:
	cmpwi 1,5,0
	mr 12,5
	beq- 1,.L1365
.L1368:
	rldicl 6,12,0,32
	addi 11,11,-1
	andi. 10,6,0x1
	add 4,4,11
	add 10,3,11
	addi 3,6,-1
	beq- 0,.L1463
	mr. 6,3
	lbzu 8,1(4)
	stbu 8,1(10)
	beq- 0,.L1365
.L1463:
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
	bne+ 5,.L1463
	b .L1365
.L1372:
	andi. 9,12,0x1
	addi 10,4,-4
	addi 6,12,-1
	addi 9,3,-4
	beq- 0,.L1465
	mr. 12,6
	lwz 7,0(4)
	mr 10,4
	mr 9,3
	stw 7,0(3)
	beq- 0,.L1378
.L1465:
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
	bne+ 6,.L1465
	b .L1378
.L1390:
	mr 0,11
	b .L1379
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
	bne- 0,.L1488
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1489
	srwi. 10,9,12
	bne- 0,.L1490
	srwi. 10,9,11
	bne- 0,.L1491
	srwi. 10,9,10
	bne- 0,.L1492
	srwi. 10,9,9
	bne- 0,.L1493
	srwi. 10,9,8
	bne- 0,.L1494
	srwi. 10,9,7
	bne- 0,.L1495
	srwi. 10,9,6
	bne- 0,.L1496
	srwi. 10,9,5
	bne- 0,.L1497
	srwi. 10,9,4
	bne- 0,.L1498
	srwi. 10,9,3
	bne- 0,.L1499
	srwi. 10,9,2
	bne- 0,.L1500
	srwi. 10,9,1
	bne- 0,.L1501
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1488:
	li 3,0
	blr
.L1499:
	li 3,12
	blr
.L1489:
	li 3,2
	blr
.L1490:
	li 3,3
	blr
.L1491:
	li 3,4
	blr
.L1492:
	li 3,5
	blr
.L1493:
	li 3,6
	blr
.L1494:
	li 3,7
	blr
.L1495:
	li 3,8
	blr
.L1496:
	li 3,9
	blr
.L1497:
	li 3,10
	blr
.L1498:
	li 3,11
	blr
.L1500:
	li 3,13
	blr
.L1501:
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
	bne- 0,.L1506
	andi. 9,3,0x2
	bne- 0,.L1507
	andi. 9,3,0x4
	bne- 0,.L1508
	andi. 9,3,0x8
	bne- 0,.L1509
	andi. 9,3,0x10
	bne- 0,.L1510
	andi. 9,3,0x20
	bne- 0,.L1511
	andi. 9,3,0x40
	bne- 0,.L1512
	andi. 9,3,0x80
	bne- 0,.L1513
	andi. 9,3,0x100
	bne- 0,.L1514
	andi. 9,3,0x200
	bne- 0,.L1515
	andi. 9,3,0x400
	bne- 0,.L1516
	andi. 9,3,0x800
	bne- 0,.L1517
	andi. 9,3,0x1000
	bne- 0,.L1518
	andi. 9,3,0x2000
	bne- 0,.L1519
	andi. 9,3,0x4000
	bne- 0,.L1520
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1506:
	li 3,0
	blr
.L1507:
	li 3,1
	blr
.L1518:
	li 3,12
	blr
.L1508:
	li 3,2
	blr
.L1509:
	li 3,3
	blr
.L1510:
	li 3,4
	blr
.L1511:
	li 3,5
	blr
.L1512:
	li 3,6
	blr
.L1513:
	li 3,7
	blr
.L1514:
	li 3,8
	blr
.L1515:
	li 3,9
	blr
.L1516:
	li 3,10
	blr
.L1517:
	li 3,11
	blr
.L1519:
	li 3,13
	blr
.L1520:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lfs 0,.LC33@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1529
	fctiwz 1,1
	addi 3,1,8
	stfiwx 1,0,3
	lwz 3,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1529:
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
	lis 7,.LC35@ha
	vspltisw 12,0
	stw 3,16(1)
	lis 8,.LC36@ha
	lis 10,.LC37@ha
	lis 9,.LC38@ha
	vspltisw 10,1
	la 3,.LC35@l(7)
	li 6,16
	la 4,.LC36@l(8)
	la 5,.LC37@l(10)
	lvx 13,0,3
	lvewx 0,1,6
	la 11,.LC38@l(9)
	li 12,32
	xxspltw 32,32,3
	lvx 11,0,4
	vsraw 1,0,13
	vsraw 11,0,11
	xxland 45,33,42
	xxland 43,43,42
	lvx 1,0,5
	vadduwm 13,13,11
	vsraw 1,0,1
	lvx 11,0,11
	xxland 33,33,42
	vsraw 0,0,11
	vadduwm 13,1,13
	xxland 42,32,42
	vadduwm 11,10,13
	xxsldwi 33,44,43,2
	vadduwm 0,1,11
	xxsldwi 44,44,32,3
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
	lis 7,.LC35@ha
	vspltisw 12,0
	stw 3,16(1)
	lis 8,.LC36@ha
	lis 10,.LC37@ha
	lis 9,.LC38@ha
	vspltisw 10,1
	la 3,.LC35@l(7)
	li 6,16
	la 4,.LC36@l(8)
	la 5,.LC37@l(10)
	lvx 13,0,3
	lvewx 0,1,6
	la 11,.LC38@l(9)
	li 12,32
	xxspltw 32,32,3
	lvx 11,0,4
	vsraw 1,0,13
	vsraw 11,0,11
	xxland 45,33,42
	xxland 43,43,42
	lvx 1,0,5
	vadduwm 13,13,11
	vsraw 1,0,1
	lvx 11,0,11
	xxland 33,33,42
	vsraw 0,0,11
	vadduwm 13,1,13
	xxland 42,32,42
	vadduwm 11,10,13
	xxsldwi 33,44,43,2
	vadduwm 0,1,11
	xxsldwi 44,44,32,3
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
.L1536:
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
	bne+ 0,.L1536
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
.L1542:
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
	bne+ 0,.L1542
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
	blt+ 0,.L1548
	b .L1570
.L1552:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1550
	blt- 5,.L1567
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L1550
	bdz .L1551
.L1548:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1552
.L1567:
	cmplw 7,3,4
	b .L1553
.L1550:
	cmpwi 6,0,0
	beq- 6,.L1557
.L1553:
	li 10,0
	li 11,1
	li 6,0
.L1554:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1554
.L1551:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L1570:
	isel 9,0,0,1
	subf 4,4,3
	andi. 10,9,0xff
	isel 3,3,4,2
	b .L1551
.L1557:
	li 10,0
	b .L1551
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
	blt- 0,.L1594
	beq- 0,.L1587
	li 6,0
.L1583:
	li 10,32
	li 8,0
	b .L1586
.L1595:
	beq- 7,.L1585
.L1586:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 8,8,5
	slwi 3,3,1
	bne+ 0,.L1595
.L1585:
	cmpwi 1,6,0
	neg 3,8
	isel 3,8,3,6
	blr
.L1594:
	neg 4,4
	li 6,1
	b .L1583
.L1587:
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
	bge+ 0,.L1597
	neg 3,3
	li 9,0
	li 11,1
.L1597:
	cmpwi 1,4,0
	bge+ 1,.L1598
	neg 4,4
	mr 11,9
.L1598:
	cmplw 5,3,4
	li 8,16
	mr 10,3
	li 9,1
	mtctr 8
	bgt+ 5,.L1599
	b .L1622
.L1603:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,3,4
	ble- 7,.L1604
	bdz .L1604
.L1599:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 6,3,4
	bgt+ 6,.L1603
.L1604:
	cmpwi 0,9,0
	li 3,0
	li 6,1
	li 5,0
	beq- 0,.L1602
.L1601:
	cmplw 1,10,4
	subf 0,4,10
	srwi 4,4,1
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 12,5,9,22
	srwi. 9,9,1
	or 3,3,12
	isel 10,10,0,22
	bne+ 0,.L1601
.L1602:
	cmpwi 6,11,0
	neg 4,3
	isel 3,3,4,26
	blr
.L1622:
	isel 3,0,9,20
	b .L1602
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
	bge+ 0,.L1627
	neg 3,3
	li 11,1
.L1627:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 8,3
	subf 12,9,4
	li 10,1
	cmplw 1,3,12
	mtctr 7
	bgt+ 1,.L1628
	b .L1650
.L1632:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 6,3,12
	ble- 6,.L1633
	bdz .L1633
.L1628:
	slwi 12,12,1
	slwi 10,10,1
	cmplw 5,3,12
	bgt+ 5,.L1632
.L1633:
	cmpwi 7,10,0
	li 5,1
	beq- 7,.L1654
.L1630:
	cmplw 1,8,12
	srwi. 10,10,1
	subf 3,12,8
	srwi 12,12,1
	isel 6,0,5,4
	cmpwi 5,6,0
	isel 8,8,3,22
	bne+ 0,.L1630
.L1631:
	cmpwi 6,11,0
	neg 11,8
	isel 3,8,11,26
	blr
.L1654:
	cmpwi 6,11,0
	mr 8,3
	neg 11,8
	isel 3,8,11,26
	blr
.L1650:
	subf 0,12,3
	isel 8,3,0,4
	b .L1631
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
	bge- 0,.L1821
	andi. 9,4,0x8000
	bne- 0,.L1660
	rlwinm 9,4,1,16,30
	cmplw 7,3,9
	ble- 7,.L1733
	andi. 10,9,0x8000
	bne- 0,.L1733
	rlwinm 9,4,2,16,29
	cmplw 7,3,9
	ble- 7,.L1735
	andi. 10,9,0x8000
	bne- 0,.L1735
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L1737
	andi. 10,9,0x8000
	bne- 0,.L1737
	rlwinm 9,4,4,16,27
	cmplw 7,3,9
	ble- 7,.L1739
	andi. 10,9,0x8000
	bne- 0,.L1739
	rlwinm 9,4,5,16,26
	cmplw 7,3,9
	ble- 7,.L1741
	andi. 10,9,0x8000
	bne- 0,.L1741
	rlwinm 9,4,6,16,25
	cmplw 7,3,9
	ble- 7,.L1743
	andi. 10,9,0x8000
	bne- 0,.L1743
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L1745
	andi. 10,9,0x8000
	bne- 0,.L1745
	rlwinm 9,4,8,16,23
	cmplw 7,3,9
	ble- 7,.L1747
	andi. 10,9,0x8000
	bne- 0,.L1747
	rlwinm 9,4,9,16,22
	cmplw 7,3,9
	ble- 7,.L1749
	andi. 10,9,0x8000
	bne- 0,.L1749
	rlwinm 9,4,10,16,21
	cmplw 7,3,9
	ble- 7,.L1751
	andi. 10,9,0x8000
	bne- 0,.L1751
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L1753
	andi. 10,9,0x8000
	bne- 0,.L1753
	rlwinm 9,4,12,16,19
	cmplw 7,3,9
	ble- 7,.L1755
	andi. 10,9,0x8000
	bne- 0,.L1755
	rlwinm 9,4,13,16,18
	cmplw 7,3,9
	ble- 7,.L1757
	andi. 10,9,0x8000
	bne- 0,.L1757
	rlwinm 9,4,14,16,17
	cmplw 7,3,9
	ble- 7,.L1759
	andi. 10,9,0x8000
	bne- 0,.L1759
	rlwinm 4,4,15,16,16
	cmplw 6,3,4
	ble- 6,.L1760
	cmpwi 1,4,0
	li 12,0
	bne- 1,.L1822
.L1663:
	cmpwi 7,5,0
	beq+ 7,.L1722
	mr 12,3
.L1722:
	rlwinm 3,12,0,0xffff
	blr
.L1733:
	li 8,2
.L1662:
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
	beq- 0,.L1663
	cmplw 7,3,7
	subf 6,7,3
	rlwinm 12,6,0,0xffff
	li 10,0
	isel 4,0,4,28
	cmpwi 6,4,0
	isel 3,3,12,26
	beq- 6,.L1671
	mr 10,0
.L1671:
	srwi. 7,8,3
	or 0,11,10
	mr 12,0
	srwi 11,8,3
	srwi 7,9,3
	beq- 0,.L1663
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1675
	mr 4,11
.L1675:
	srwi. 7,8,4
	or 0,0,4
	mr 12,0
	srwi 11,8,4
	srwi 10,9,4
	beq- 0,.L1663
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1679
	mr 4,11
.L1679:
	srwi. 7,8,5
	or 0,0,4
	mr 12,0
	srwi 11,8,5
	srwi 7,9,5
	beq- 0,.L1663
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1683
	mr 4,11
.L1683:
	srwi. 7,8,6
	or 0,0,4
	mr 12,0
	srwi 11,8,6
	srwi 10,9,6
	beq- 0,.L1663
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1687
	mr 4,11
.L1687:
	srwi. 7,8,7
	or 0,0,4
	mr 12,0
	srwi 11,8,7
	srwi 7,9,7
	beq- 0,.L1663
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1691
	mr 4,11
.L1691:
	srwi. 7,8,8
	or 0,0,4
	mr 12,0
	srwi 11,8,8
	srwi 10,9,8
	beq- 0,.L1663
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1695
	mr 4,11
.L1695:
	srwi. 7,8,9
	or 0,0,4
	mr 12,0
	srwi 11,8,9
	srwi 7,9,9
	beq- 0,.L1663
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1699
	mr 4,11
.L1699:
	srwi. 7,8,10
	or 0,0,4
	mr 12,0
	srwi 11,8,10
	srwi 10,9,10
	beq- 0,.L1663
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1703
	mr 4,11
.L1703:
	srwi. 7,8,11
	or 0,0,4
	mr 12,0
	srwi 11,8,11
	srwi 7,9,11
	beq- 0,.L1663
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1707
	mr 4,11
.L1707:
	srwi. 7,8,12
	or 0,0,4
	mr 12,0
	srwi 11,8,12
	srwi 10,9,12
	beq- 0,.L1663
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1711
	mr 4,11
.L1711:
	srwi. 7,8,13
	or 0,0,4
	mr 12,0
	srwi 11,8,13
	srwi 7,9,13
	beq- 0,.L1663
	cmplw 1,3,7
	li 6,1
	subf 12,7,3
	li 4,0
	rlwinm 10,12,0,0xffff
	isel 7,0,6,4
	cmpwi 5,7,0
	isel 3,3,10,22
	beq- 5,.L1715
	mr 4,11
.L1715:
	srwi. 7,8,14
	or 0,0,4
	mr 12,0
	srwi 11,8,14
	srwi 10,9,14
	beq- 0,.L1663
	cmplw 7,3,10
	li 6,1
	subf 12,10,3
	li 4,0
	rlwinm 7,12,0,0xffff
	isel 10,0,6,28
	cmpwi 6,10,0
	isel 3,3,7,26
	beq- 6,.L1719
	mr 4,11
.L1719:
	cmpwi 1,8,16384
	or 8,0,4
	srwi 9,9,15
	mr 12,8
	beq- 1,.L1663
	cmplw 5,3,9
	li 0,1
	subf 11,9,3
	rlwinm 7,11,0,0xffff
	isel 6,0,0,20
	cmpwi 0,6,0
	or 12,8,6
	isel 3,3,7,2
	b .L1663
.L1735:
	li 8,4
	b .L1662
.L1737:
	li 8,8
	b .L1662
.L1739:
	li 8,16
	b .L1662
.L1749:
	li 8,512
	b .L1662
.L1741:
	li 8,32
	b .L1662
.L1743:
	li 8,64
	b .L1662
.L1745:
	li 8,128
	b .L1662
.L1747:
	li 8,256
	b .L1662
.L1821:
	cmpw 1,4,3
	li 10,0
	li 6,1
	subf 9,4,3
	rlwinm 0,9,0,0xffff
	isel 12,6,10,6
	cmpwi 5,12,0
	isel 3,3,0,22
	b .L1663
.L1751:
	li 8,1024
	b .L1662
.L1753:
	li 8,2048
	b .L1662
.L1755:
	li 8,4096
	b .L1662
.L1757:
	li 8,8192
	b .L1662
.L1759:
	li 8,16384
	b .L1662
.L1822:
	li 11,0
	li 8,0
	cmplwi 7,3,32768
	ori 8,8,0x8000
	ori 9,11,0x8000
	b .L1662
.L1760:
	li 7,0
	li 8,0
	cmplwi 7,3,32768
	ori 9,7,0x8000
	ori 8,8,0x8000
	b .L1662
.L1660:
	subf 3,4,3
	li 12,1
	rlwinm 3,3,0,0xffff
	b .L1663
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
	bgt+ 7,.L1824
	b .L1845
.L1828:
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	cmpwi 5,4,0
	ble- 7,.L1826
	blt- 5,.L1829
	slwi 4,4,1
	slwi 0,0,1
	cmplw 7,3,4
	ble- 7,.L1826
	bdz .L1827
.L1824:
	cmpwi 1,4,0
	addi 10,10,-2
	bge+ 1,.L1828
.L1829:
	li 10,0
	li 11,1
	li 6,0
.L1830:
	isel 7,0,11,28
	subf 12,4,3
	cmpwi 1,7,0
	srwi 4,4,1
	isel 8,6,0,6
	srwi. 0,0,1
	isel 3,3,12,6
	or 10,10,8
	cmplw 7,3,4
	bne+ 0,.L1830
.L1827:
	cmpwi 5,5,0
	isel 3,10,3,22
	blr
.L1826:
	cmpwi 6,0,0
	bne+ 6,.L1829
	li 10,0
	b .L1827
.L1845:
	subf 4,4,3
	isel 9,0,0,28
	isel 3,3,4,28
	rlwinm 10,9,0,0xff
	b .L1827
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
	beq- 0,.L1849
	addi 5,5,-32
	li 11,0
	slw 8,0,5
.L1850:
	sldi 12,8,32
	or 4,11,12
.L1848:
	mr 3,4
	srdi 4,4,32
	blr
.L1849:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1848
	subfic 9,5,32
	sradi 10,0,32
	srw 6,0,9
	slw 7,10,5
	or 8,6,7
	slw 11,0,5
	b .L1850
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
	beq- 0,.L1855
	sradi 11,0,32
	addi 12,5,-32
	sraw 10,11,12
	srawi 5,11,31
.L1856:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1854:
	srdi 4,6,32
	mr 3,6
	blr
.L1855:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1854
	sradi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	sraw 5,6,5
	b .L1856
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
	blt- 0,.L1865
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 3,9,1
	blr
.L1865:
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
	blt- 0,.L1871
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
.L1871:
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
	beq- 0,.L1876
	addi 12,5,-32
	srdi 11,0,32
	srw 10,11,12
	li 5,0
.L1877:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1875:
	srdi 4,6,32
	mr 3,6
	blr
.L1876:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1875
	srdi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	srw 5,6,5
	b .L1877
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
	lis 8,.LC29@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC29@l(8)
	beq- 0,.L1889
.L1891:
	fmul 1,1,0
.L1889:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1890
	andi. 10,9,0x1
	fmul 0,0,0
	bne- 0,.L1891
.L1895:
	srawi 9,9,1
	addze 9,9
	fmul 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1891
	b .L1895
.L1890:
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
	beq- 0,.L1897
.L1899:
	fmuls 1,1,0
.L1897:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1898
	andi. 10,9,0x1
	fmuls 0,0,0
	bne- 0,.L1899
.L1903:
	srawi 9,9,1
	addze 9,9
	fmuls 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1899
	b .L1903
.L1898:
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
	blt- 0,.L1906
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L1906:
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
	blt- 0,.L1912
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
.L1912:
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
