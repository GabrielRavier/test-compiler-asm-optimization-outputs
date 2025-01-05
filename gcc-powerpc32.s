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
	cmplw %cr0,%r3,%r4
	ble- %cr0,.L2
	cmpwi %cr1,%r5,0
	add %r12,%r4,%r5
	add %r11,%r3,%r5
	beqlr- %cr1
	addi %r10,%r5,-1
	cmplwi %cr5,%r10,14
	ble- %cr5,.L4
	addi %r9,%r5,-2
	add %r6,%r3,%r10
	add %r7,%r4,%r9
	subf %r8,%r7,%r6
	addi %r0,%r8,14
	cmplwi %cr6,%r0,14
	ble- %cr6,.L4
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r7,%r8,0x3
	add %r4,%r4,%r10
	addi %r6,%r8,-1
	add %r10,%r3,%r10
	li %r9,0
	beq- %cr0,.L158
	cmpdi %cr7,%r7,1
	beq- %cr7,.L107
	cmpdi %cr1,%r7,2
	beq- %cr1,.L108
	mr %r8,%r6
	li %r9,-16
	lxvw4x %vs7,0,%r4
	stxvw4x %vs7,0,%r10
.L108:
	lxvw4x %vs8,%r4,%r9
	addi %r8,%r8,-1
	stxvw4x %vs8,%r10,%r9
	addi %r9,%r9,-16
.L107:
	addi %r8,%r8,-1
	lxvw4x %vs9,%r4,%r9
	stxvw4x %vs9,%r10,%r9
	addi %r9,%r9,-16
	cmpdi %cr5,%r8,0
	beq- %cr5,.L155
.L158:
	addi %r8,%r8,-4
	addi %r0,%r9,-16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r10,%r9
	cmpdi %cr6,%r8,0
	addi %r6,%r9,-32
	lxvw4x %vs11,%r4,%r0
	stxvw4x %vs11,%r10,%r0
	addi %r7,%r9,-48
	lxvw4x %vs12,%r4,%r6
	addi %r9,%r9,-64
	stxvw4x %vs12,%r10,%r6
	lxvw4x %vs13,%r4,%r7
	stxvw4x %vs13,%r10,%r7
	bne+ %cr6,.L158
.L155:
	andi. %r9,%r5,0xf
	rlwinm %r4,%r5,0,0,27
	subf %r12,%r4,%r12
	subf %r11,%r4,%r11
	subf %r5,%r4,%r5
	beqlr- %cr0
	cmplwi %cr7,%r5,1
	lbz %r10,-1(%r12)
	stb %r10,-1(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,2
	lbz %r8,-2(%r12)
	stb %r8,-2(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,3
	lbz %r9,-3(%r12)
	stb %r9,-3(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,4
	lbz %r0,-4(%r12)
	stb %r0,-4(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,5
	lbz %r6,-5(%r12)
	stb %r6,-5(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,6
	lbz %r7,-6(%r12)
	stb %r7,-6(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,7
	lbz %r4,-7(%r12)
	stb %r4,-7(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,8
	lbz %r10,-8(%r12)
	stb %r10,-8(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,9
	lbz %r8,-9(%r12)
	stb %r8,-9(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,10
	lbz %r9,-10(%r12)
	stb %r9,-10(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,11
	lbz %r0,-11(%r12)
	stb %r0,-11(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,12
	lbz %r6,-12(%r12)
	stb %r6,-12(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,13
	lbz %r7,-13(%r12)
	stb %r7,-13(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,14
	lbz %r5,-14(%r12)
	stb %r5,-14(%r11)
	beqlr- %cr6
	lbz %r12,-15(%r12)
	stb %r12,-15(%r11)
	blr
.L2:
	beqlr- %cr0
	cmpwi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r5,-1
	cmplwi %cr5,%r9,14
	ble- %cr5,.L9
	addi %r0,%r4,1
	subf %r6,%r0,%r3
	cmplwi %cr6,%r6,14
	ble- %cr6,.L9
	rldicl %r10,%r5,60,36
	li %r11,0
	andi. %r8,%r10,0x3
	addi %r7,%r10,-1
	beq- %cr0,.L160
	cmpdi %cr7,%r8,1
	beq- %cr7,.L109
	cmpdi %cr1,%r8,2
	beq- %cr1,.L110
	mr %r10,%r7
	li %r11,16
	lxvw4x %vs0,0,%r4
	stxvw4x %vs0,0,%r3
.L110:
	lxvw4x %vs1,%r4,%r11
	addi %r10,%r10,-1
	stxvw4x %vs1,%r3,%r11
	addi %r11,%r11,16
.L109:
	addi %r10,%r10,-1
	lxvw4x %vs2,%r4,%r11
	stxvw4x %vs2,%r3,%r11
	addi %r11,%r11,16
	cmpdi %cr5,%r10,0
	beq- %cr5,.L156
.L160:
	addi %r10,%r10,-4
	addi %r12,%r11,16
	lxvw4x %vs3,%r4,%r11
	stxvw4x %vs3,%r3,%r11
	cmpdi %cr6,%r10,0
	addi %r9,%r11,32
	lxvw4x %vs4,%r4,%r12
	stxvw4x %vs4,%r3,%r12
	addi %r0,%r11,48
	lxvw4x %vs5,%r4,%r9
	addi %r11,%r11,64
	stxvw4x %vs5,%r3,%r9
	lxvw4x %vs6,%r4,%r0
	stxvw4x %vs6,%r3,%r0
	bne+ %cr6,.L160
.L156:
	andi. %r9,%r5,0xf
	rlwinm %r6,%r5,0,0,27
	add %r10,%r4,%r6
	add %r11,%r3,%r6
	subf %r5,%r6,%r5
	beqlr- %cr0
	cmplwi %cr7,%r5,1
	lbzx %r4,%r4,%r6
	stbx %r4,%r3,%r6
	beqlr- %cr7
	cmplwi %cr1,%r5,2
	lbz %r8,1(%r10)
	stb %r8,1(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,3
	lbz %r7,2(%r10)
	stb %r7,2(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,4
	lbz %r12,3(%r10)
	stb %r12,3(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,5
	lbz %r9,4(%r10)
	stb %r9,4(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,6
	lbz %r0,5(%r10)
	stb %r0,5(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,7
	lbz %r6,6(%r10)
	stb %r6,6(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,8
	lbz %r4,7(%r10)
	stb %r4,7(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,9
	lbz %r8,8(%r10)
	stb %r8,8(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,10
	lbz %r7,9(%r10)
	stb %r7,9(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,11
	lbz %r12,10(%r10)
	stb %r12,10(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,12
	lbz %r9,11(%r10)
	stb %r9,11(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,13
	lbz %r0,12(%r10)
	stb %r0,12(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,14
	lbz %r5,13(%r10)
	stb %r5,13(%r11)
	beqlr- %cr6
	lbz %r10,14(%r10)
	stb %r10,14(%r11)
	blr
.L4:
	rldicl %r10,%r5,0,32
	andi. %r9,%r10,0x1
	addi %r4,%r10,-1
	beq- %cr0,.L157
	mr. %r10,%r4
	lbzu %r8,-1(%r12)
	stbu %r8,-1(%r11)
	beqlr- %cr0
.L157:
	lbz %r0,-1(%r12)
	addi %r10,%r10,-2
	mr %r6,%r12
	cmpdi %cr7,%r10,0
	addi %r9,%r11,-1
	stb %r0,-1(%r11)
	addi %r12,%r12,-2
	addi %r11,%r11,-2
	lbz %r7,-2(%r6)
	stb %r7,-1(%r9)
	beqlr- %cr7
	lbz %r0,-1(%r12)
	addi %r10,%r10,-2
	mr %r6,%r12
	cmpdi %cr7,%r10,0
	addi %r9,%r11,-1
	stb %r0,-1(%r11)
	addi %r12,%r12,-2
	addi %r11,%r11,-2
	lbz %r7,-2(%r6)
	stb %r7,-1(%r9)
	bne+ %cr7,.L157
	blr
.L9:
	rldicl %r9,%r5,0,32
	addi %r12,%r4,-1
	andi. %r10,%r9,0x1
	addi %r11,%r9,-1
	addi %r5,%r3,-1
	beq- %cr0,.L159
	mr. %r9,%r11
	lbz %r6,0(%r4)
	mr %r12,%r4
	mr %r5,%r3
	stb %r6,0(%r3)
	beqlr- %cr0
.L159:
	lbz %r4,1(%r12)
	addi %r9,%r9,-2
	mr %r7,%r12
	cmpdi %cr7,%r9,0
	addi %r8,%r5,1
	stb %r4,1(%r5)
	addi %r12,%r12,2
	addi %r5,%r5,2
	lbz %r0,2(%r7)
	stb %r0,1(%r8)
	beqlr- %cr7
	lbz %r4,1(%r12)
	addi %r9,%r9,-2
	mr %r7,%r12
	cmpdi %cr7,%r9,0
	addi %r8,%r5,1
	stb %r4,1(%r5)
	addi %r12,%r12,2
	addi %r5,%r5,2
	lbz %r0,2(%r7)
	stb %r0,1(%r8)
	bne+ %cr7,.L159
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
	cmpwi %cr0,%r6,0
	rlwinm %r5,%r5,0,0xff
	beq- %cr0,.L168
	andi. %r9,%r6,0x1
	addi %r8,%r6,-1
	addi %r9,%r4,-1
	bne- %cr0,.L189
.L178:
	srwi %r0,%r6,1
	mtctr %r0
	b .L169
.L171:
	lbz %r12,1(%r6)
	rlwinm %r8,%r12,0,0xff
	stbu %r12,1(%r3)
	cmpw %cr7,%r8,%r5
	beq- %cr7,.L186
	addi %r3,%r3,1
	bdz .L168
.L169:
	lbz %r4,1(%r9)
	addi %r6,%r9,1
	addi %r9,%r6,1
	rlwinm %r11,%r4,0,0xff
	stb %r4,0(%r3)
	cmpw %cr6,%r11,%r5
	bne+ %cr6,.L171
.L186:
	addi %r3,%r3,1
	blr
.L189:
	lbz %r10,0(%r4)
	mr %r9,%r4
	rlwinm %r7,%r10,0,0xff
	stb %r10,0(%r3)
	cmpw %cr1,%r7,%r5
	beq- %cr1,.L186
	cmpwi %cr5,%r8,0
	addi %r3,%r3,1
	bne+ %cr5,.L178
.L168:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	rlwinm %r4,%r4,0,0xff
	beq- %cr0,.L194
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L211
.L197:
	srwi %r0,%r5,1
	mtctr %r0
.L191:
	lbz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lbzu %r6,1(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,1
	bdnz .L191
.L194:
	li %r3,0
	blr
.L211:
	lbz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpwi %cr5,%r9,0
	addi %r3,%r3,1
	bne+ %cr5,.L197
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
	cmpwi %cr0,%r5,0
	beq- %cr0,.L217
	andi. %r9,%r5,0x1
	addi %r8,%r5,-1
	bne- %cr0,.L232
.L220:
	srwi %r0,%r5,1
	mtctr %r0
	b .L213
.L215:
	lbz %r10,1(%r3)
	addi %r3,%r7,1
	lbz %r9,1(%r4)
	addi %r4,%r5,1
	cmpw %cr7,%r10,%r9
	bne- %cr7,.L229
	bdz .L217
.L213:
	lbz %r10,0(%r3)
	addi %r7,%r3,1
	addi %r5,%r4,1
	lbz %r9,0(%r4)
	cmpw %cr6,%r10,%r9
	beq+ %cr6,.L215
.L229:
	subf %r3,%r9,%r10
	blr
.L232:
	lbz %r10,0(%r3)
	lbz %r9,0(%r4)
	cmpw %cr1,%r10,%r9
	bne- %cr1,.L229
	cmpwi %cr5,%r8,0
	addi %r3,%r3,1
	addi %r4,%r4,1
	bne+ %cr5,.L220
.L217:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	stw %r31,28(%r1)
	.cfi_offset 31, -4
	mr %r31,%r3
	beq- %cr0,.L234
	mflr %r0
	.cfi_register 65, 0
	stw %r0,36(%r1)
	.cfi_offset 65, 4
	bl memcpy
	lwz %r0,36(%r1)
	mtlr %r0
	.cfi_restore 65
.L234:
	mr %r3,%r31
	lwz %r31,28(%r1)
	addi %r1,%r1,32
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
	mr %r10,%r5
	addi %r5,%r5,-1
	andi. %r8,%r10,0x1
	add %r11,%r3,%r5
	rlwinm %r4,%r4,0,0xff
	beq- %cr0,.L244
	mr %r3,%r11
	addi %r11,%r11,-1
	lbz %r8,0(%r3)
	cmpw %cr1,%r8,%r4
	beqlr- %cr1
.L244:
	srwi %r3,%r10,1
	addi %r0,%r3,1
	mtctr %r0
	bdz .L252
.L242:
	lbz %r6,0(%r11)
	mr %r3,%r11
	addi %r9,%r11,-1
	cmpw %cr5,%r6,%r4
	beqlr- %cr5
	lbz %r7,0(%r9)
	mr %r3,%r9
	addi %r11,%r9,-1
	cmpw %cr6,%r7,%r4
	beqlr- %cr6
	bdnz .L242
.L252:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	stw %r31,28(%r1)
	.cfi_offset 31, -4
	mr %r31,%r3
	beq- %cr0,.L256
	mflr %r0
	.cfi_register 65, 0
	rlwinm %r4,%r4,0,0xff
	stw %r0,36(%r1)
	.cfi_offset 65, 4
	bl memset
	lwz %r0,36(%r1)
	mtlr %r0
	.cfi_restore 65
.L256:
	mr %r3,%r31
	lwz %r31,28(%r1)
	addi %r1,%r1,32
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
	lbz %r9,0(%r4)
	rlwinm %r10,%r9,0,0xff
	stb %r9,0(%r3)
	cmpwi %cr0,%r10,0
	beqlr- %cr0
.L260:
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	beqlr- %cr1
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	bne+ %cr1,.L260
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
	lbz %r9,0(%r3)
	rlwinm %r4,%r4,0,0xff
	cmpwi %cr0,%r9,0
	beqlr- %cr0
	cmpw %cr1,%r9,%r4
	beqlr- %cr1
.L271:
	lbzu %r9,1(%r3)
	cmpwi %cr5,%r9,0
	beqlr- %cr5
	cmpw %cr1,%r9,%r4
	bne+ %cr1,.L271
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
	lbz %r9,0(%r3)
	cmpw %cr0,%r9,%r4
	cmpwi %cr7,%r9,0
	beqlr- %cr0
	addi %r3,%r3,1
	bne+ %cr7,.L274
	li %r3,0
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
	lbz %r9,0(%r3)
	mr %r8,%r4
	lbz %r10,0(%r4)
	cmpw %cr0,%r9,%r10
	beq+ %cr0,.L279
	b .L278
.L280:
	lbzu %r9,1(%r3)
	lbzu %r10,1(%r8)
	cmpw %cr5,%r9,%r10
	bne- %cr5,.L278
.L279:
	cmpwi %cr1,%r9,0
	bne+ %cr1,.L280
.L278:
	subf %r3,%r10,%r9
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
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L288
	mr %r4,%r3
.L287:
	lbzu %r10,1(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L287
	subf %r3,%r3,%r4
	blr
.L288:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	beq- %cr0,.L298
	lbz %r10,0(%r3)
	addi %r5,%r5,-1
	add %r0,%r3,%r5
	cmpwi %cr1,%r10,0
	subf %r6,%r3,%r0
	addi %r9,%r6,1
	mtctr %r9
	bne+ %cr1,.L294
	b .L303
.L305:
	bdz .L293
	bne- %cr7,.L293
	lbzu %r10,1(%r3)
	cmpwi %cr6,%r10,0
	beq- %cr6,.L304
	mr %r4,%r8
.L294:
	lbz %r7,0(%r4)
	addi %r8,%r4,1
	cmpwi %cr5,%r7,0
	cmpw %cr7,%r7,%r10
	bne+ %cr5,.L305
.L293:
	subf %r3,%r7,%r10
	blr
.L298:
	li %r3,0
	blr
.L304:
	lbz %r7,1(%r4)
	subf %r3,%r7,%r10
	blr
.L303:
	lbz %r7,0(%r4)
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
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	mfvrsave %r12
	oris %r0,%r12,0xc004
	stw %r12,28(%r1)
	mtvrsave %r0
	cmpwi %cr0,%r5,1
	ble- %cr0,.L306
	addi %r9,%r5,-2
	srwi %r6,%r5,1
	cmplwi %cr1,%r9,13
	ble- %cr1,.L308
	rldicl %r8,%r5,60,36
	lis %r7,.LC0@ha
	andi. %r10,%r8,0x1
	la %r10,.LC0@l(%r7)
	addi %r11,%r8,-1
	srwi %r12,%r5,4
	lxvw4x %vs45,0,%r10
	li %r9,0
	beq- %cr0,.L318
	mr. %r8,%r11
	lxvw4x %vs32,0,%r3
	li %r9,16
	vperm %v1,%v0,%v0,%v13
	stxvw4x %vs33,0,%r4
	beq- %cr0,.L317
.L318:
	addi %r8,%r8,-2
	addi %r0,%r9,16
	lxvw4x %vs32,%r3,%r9
	vperm %v1,%v0,%v0,%v13
	cmpdi %cr5,%r8,0
	stxvw4x %vs33,%r4,%r9
	lxvw4x %vs32,%r3,%r0
	addi %r9,%r9,32
	vperm %v1,%v0,%v0,%v13
	stxvw4x %vs33,%r4,%r0
	bne+ %cr5,.L318
.L317:
	slwi %r7,%r12,3
	slwi %r10,%r12,4
	cmplw %cr6,%r6,%r7
	add %r4,%r4,%r10
	add %r3,%r3,%r10
	subf %r5,%r10,%r5
	beq- %cr6,.L306
.L308:
	cmpwi %cr7,%r5,3
	lhbrx %r11,0,%r3
	sth %r11,0(%r4)
	ble- %cr7,.L306
	cmpwi %cr1,%r5,5
	addi %r12,%r3,2
	lhbrx %r8,0,%r12
	sth %r8,2(%r4)
	ble- %cr1,.L306
	cmpwi %cr0,%r5,7
	addi %r9,%r3,4
	lhbrx %r0,0,%r9
	sth %r0,4(%r4)
	ble- %cr0,.L306
	cmpwi %cr5,%r5,9
	addi %r7,%r3,6
	lhbrx %r10,0,%r7
	sth %r10,6(%r4)
	ble- %cr5,.L306
	cmpwi %cr6,%r5,11
	addi %r6,%r3,8
	lhbrx %r11,0,%r6
	sth %r11,8(%r4)
	ble- %cr6,.L306
	cmpwi %cr7,%r5,13
	addi %r5,%r3,10
	lhbrx %r12,0,%r5
	sth %r12,10(%r4)
	ble- %cr7,.L306
	addi %r3,%r3,12
	lhbrx %r8,0,%r3
	sth %r8,12(%r4)
.L306:
	lwz %r4,28(%r1)
	mtvrsave %r4
	addi %r1,%r1,32
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
	ori %r9,%r3,0x20
	li %r10,1
	addi %r0,%r9,-97
	cmplwi %cr0,%r0,25
	isel %r3,0,%r10,1
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
	cmplwi %cr0,%r3,127
	li %r9,1
	isel %r3,0,%r9,1
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
	cmpwi %cr0,%r3,32
	beq- %cr0,.L324
	cmpwi %cr1,%r3,9
	li %r9,0
	li %r3,1
	isel %r3,%r3,%r9,6
	blr
.L324:
	li %r3,1
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
	cmplwi %cr0,%r3,31
	ble- %cr0,.L327
	cmpwi %cr1,%r3,127
	li %r9,0
	li %r3,1
	isel %r3,%r3,%r9,6
	blr
.L327:
	li %r3,1
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
	addi %r9,%r3,-48
	li %r10,1
	cmplwi %cr0,%r9,9
	isel %r3,0,%r10,1
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
	addi %r9,%r3,-33
	li %r10,1
	cmplwi %cr0,%r9,93
	isel %r3,0,%r10,1
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
	addi %r9,%r3,-97
	li %r10,1
	cmplwi %cr0,%r9,25
	isel %r3,0,%r10,1
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
	addi %r9,%r3,-32
	li %r10,1
	cmplwi %cr0,%r9,94
	isel %r3,0,%r10,1
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
	cmpwi %cr0,%r3,32
	beq- %cr0,.L334
	addi %r3,%r3,-9
	li %r9,1
	cmplwi %cr1,%r3,4
	isel %r3,0,%r9,5
	blr
.L334:
	li %r3,1
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
	addi %r9,%r3,-65
	li %r10,1
	cmplwi %cr0,%r9,25
	isel %r3,0,%r10,1
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
	cmplwi %cr0,%r3,31
	mr %r9,%r3
	ble- %cr0,.L338
	addi %r10,%r3,-127
	li %r3,1
	cmplwi %cr1,%r10,32
	blelr- %cr1
	addi %r0,%r9,-8232
	cmplwi %cr5,%r0,1
	blelr- %cr5
	addis %r4,%r9,0xffff
	addi %r5,%r4,7
	cmplwi %cr6,%r5,2
	isel %r3,0,%r3,25
	blr
.L338:
	li %r3,1
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
	addi %r9,%r3,-48
	li %r10,1
	cmplwi %cr0,%r9,9
	isel %r3,0,%r10,1
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
	cmplwi %cr0,%r3,254
	mr %r9,%r3
	ble- %cr0,.L349
	cmplwi %cr1,%r3,8231
	li %r3,1
	blelr- %cr1
	addi %r10,%r9,-8234
	cmplwi %cr5,%r10,47061
	blelr- %cr5
	addis %r4,%r9,0xffff
	addi %r8,%r4,8192
	cmplwi %cr6,%r8,8184
	blelr- %cr6
	lis %r0,0x10
	addi %r5,%r4,4
	ori %r6,%r0,0x3
	li %r3,0
	cmplw %cr7,%r5,%r6
	bgtlr- %cr7
	li %r3,0
	rlwinm %r7,%r9,0,16,30
	ori %r11,%r3,0xfffe
	li %r12,1
	cmpw %cr0,%r7,%r11
	isel %r3,0,%r12,2
	blr
.L349:
	addi %r9,%r3,1
	li %r10,1
	rlwinm %r4,%r9,0,25,31
	cmplwi %cr1,%r4,33
	isel %r3,0,%r10,4
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
	addi %r9,%r3,-48
	cmplwi %cr0,%r9,9
	ble- %cr0,.L352
	ori %r3,%r3,0x20
	li %r10,1
	addi %r0,%r3,-97
	cmplwi %cr1,%r0,5
	isel %r3,0,%r10,5
	blr
.L352:
	li %r3,1
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
	rlwinm %r3,%r3,0,25,31
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
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L358
	fcmpu %cr5,%f1,%f2
	bng- %cr5,.L361
	fsub %f1,%f1,%f2
	blr
.L361:
	xxlxor %vs1,%vs1,%vs1
	blr
.L358:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L366
	fcmpu %cr5,%f1,%f2
	bng- %cr5,.L369
	fsubs %f1,%f1,%f2
	blr
.L369:
	xxlxor %vs1,%vs1,%vs1
	blr
.L366:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun- %cr0,.L375
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L376
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L372
	cmpwi %cr7,%r0,0
	fmr %f1,%f2
	bnelr- %cr7
.L376:
	fmr %f1,%f0
	blr
.L372:
	fcmpu %cr6,%f1,%f2
	bnllr- %cr6
.L375:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun- %cr0,.L384
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L385
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r9,%vs12
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs1
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L381
	cmpwi %cr7,%r0,0
	fmr %f1,%f2
	bnelr- %cr7
.L385:
	fmr %f1,%f0
	blr
.L381:
	fcmpu %cr6,%f0,%f2
	fmr %f1,%f0
	bnllr- %cr6
.L384:
	fmr %f1,%f2
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
	fmr %f9,%f2
	fmr %f8,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fmr %f0,%f8
	fcmpu %cr0,%f0,%f0
	bun- %cr0,.L395
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun- %cr1,.L394
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L390
	cmpwi %cr7,%r0,0
	bne- %cr7,.L395
.L394:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
.L390:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt- %cr6,.L395
	fmr %f11,%f2
	fmr %f10,%f1
.L395:
	fmr %f1,%f10
	fmr %f2,%f11
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
	fcmpu %cr0,%f1,%f1
	bun- %cr0,.L401
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	bne- %cr5,.L405
	fcmpu %cr6,%f1,%f2
	fmr %f0,%f2
	bnl- %cr6,.L400
	fmr %f0,%f1
.L400:
	fmr %f1,%f0
	blr
.L405:
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L401:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	bun- %cr0,.L411
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r9,%vs0
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs3
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	bne- %cr5,.L415
	fcmpu %cr6,%f1,%f2
	bnl- %cr6,.L410
	fmr %f2,%f1
.L410:
	fmr %f1,%f2
	blr
.L415:
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L411:
	fmr %f1,%f2
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
	fmr %f0,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fcmpu %cr0,%f0,%f0
	bun- %cr0,.L421
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr- %cr1
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L418
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L421:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
.L418:
	fcmpu %cr6,%f1,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f2,%f11
	bltlr- %cr6
	fmr %f1,%f10
	fmr %f2,%f11
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
	mr %r9,%r3
	lis %r3,.LANCHOR0@ha
	cmpwi %cr0,%r9,0
	beq- %cr0,.L427
	lis %r7,.LANCHOR1@ha
	la %r3,.LANCHOR0@l(%r3)
	la %r4,.LANCHOR1@l(%r7)
	mr %r10,%r3
.L426:
	rlwinm %r8,%r9,0,26,31
	srwi. %r9,%r9,6
	lbzx %r0,%r4,%r8
	addi %r10,%r10,1
	stb %r0,-1(%r10)
	bne+ %cr0,.L426
	li %r5,0
	stb %r5,0(%r10)
	blr
.L427:
	la %r3,.LANCHOR0@l(%r3)
	li %r5,0
	mr %r10,%r3
	stb %r5,0(%r10)
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
	lis %r9,.LANCHOR0+8@ha
	addi %r3,%r3,-1
	rldicl %r0,%r3,0,32
	la %r4,.LANCHOR0+8@l(%r9)
	std %r0,0(%r4)
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
	lis %r10,.LANCHOR0@ha
	lis %r9,0x4c95
	la %r4,.LANCHOR0@l(%r10)
	lis %r8,0x5851
	ld %r3,8(%r4)
	ori %r0,%r9,0x7f2d
	ori %r5,%r8,0xf42d
	rldimi %r0,%r5,32,0
	mulld %r6,%r3,%r0
	addi %r7,%r6,1
	std %r7,8(%r4)
	srdi %r3,%r7,33
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
	cmpwi %cr0,%r4,0
	beq- %cr0,.L437
	lwz %r9,0(%r4)
	stw %r4,4(%r3)
	stw %r9,0(%r3)
	stw %r3,0(%r4)
	lwz %r4,0(%r3)
	cmpwi %cr1,%r4,0
	beqlr- %cr1
	stw %r3,4(%r4)
	blr
.L437:
	li %r0,0
	std %r0,0(%r3)
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
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L439
	lwz %r10,4(%r3)
	stw %r10,4(%r9)
.L439:
	lwz %r3,4(%r3)
	cmpwi %cr1,%r3,0
	beqlr- %cr1
	stw %r9,0(%r3)
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
	stwu %r1,-64(%r1)
	.cfi_def_cfa_offset 64
	mflr %r0
	stw %r28,48(%r1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	lwz %r28,0(%r5)
	stw %r23,28(%r1)
	.cfi_offset 23, -36
	mr %r23,%r4
	cmpwi %cr0,%r28,0
	stw %r24,32(%r1)
	.cfi_offset 24, -32
	mr %r24,%r5
	stw %r27,44(%r1)
	.cfi_offset 27, -20
	mr %r27,%r3
	stw %r29,52(%r1)
	.cfi_offset 29, -12
	mr %r29,%r6
	stw %r0,68(%r1)
	stw %r26,40(%r1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	beq- %cr0,.L448
	stw %r25,36(%r1)
	.cfi_offset 25, -28
	mr %r25,%r7
	stw %r30,56(%r1)
	.cfi_offset 30, -8
	li %r30,0
	stw %r31,60(%r1)
	.cfi_offset 31, -4
	mr %r31,%r4
	b .L450
.L465:
	beq- %cr7,.L464
.L450:
	mr %r4,%r31
	mr %r3,%r27
	mtctr %r25
	mr %r26,%r31
	bctrl
	cmpwi %cr1,%r3,0
	addi %r30,%r30,1
	cmplw %cr7,%r28,%r30
	add %r31,%r31,%r29
	bne+ %cr1,.L465
	lwz %r25,36(%r1)
	.cfi_restore 25
	lwz %r30,56(%r1)
	.cfi_restore 30
	lwz %r31,60(%r1)
	.cfi_restore 31
.L447:
	lwz %r5,68(%r1)
	mr %r3,%r26
	lwz %r23,28(%r1)
	lwz %r24,32(%r1)
	mtlr %r5
	.cfi_restore 65
	lwz %r26,40(%r1)
	lwz %r27,44(%r1)
	lwz %r28,48(%r1)
	lwz %r29,52(%r1)
	addi %r1,%r1,64
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
	lwz %r25,36(%r1)
	.cfi_restore 25
	lwz %r30,56(%r1)
	.cfi_restore 30
	lwz %r31,60(%r1)
	.cfi_restore 31
.L448:
	cmpwi %cr5,%r29,0
	mullw %r3,%r29,%r28
	addi %r4,%r28,1
	stw %r4,0(%r24)
	add %r26,%r23,%r3
	beq- %cr5,.L447
	mr %r5,%r29
	mr %r4,%r27
	mr %r3,%r26
	bl memmove
	lwz %r5,68(%r1)
	mr %r3,%r26
	lwz %r23,28(%r1)
	lwz %r24,32(%r1)
	mtlr %r5
	.cfi_restore 65
	lwz %r26,40(%r1)
	lwz %r27,44(%r1)
	lwz %r28,48(%r1)
	lwz %r29,52(%r1)
	addi %r1,%r1,64
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
	stwu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	stw %r26,24(%r1)
	.cfi_offset 26, -24
	lwz %r26,0(%r5)
	stw %r25,20(%r1)
	cmpwi %cr0,%r26,0
	.cfi_offset 25, -28
	beq- %cr0,.L467
	mflr %r0
	.cfi_register 65, 0
	stw %r27,28(%r1)
	.cfi_offset 27, -20
	mr %r27,%r7
	stw %r28,32(%r1)
	.cfi_offset 28, -16
	mr %r28,%r6
	stw %r29,36(%r1)
	.cfi_offset 29, -12
	mr %r29,%r3
	stw %r30,40(%r1)
	.cfi_offset 30, -8
	li %r30,0
	stw %r31,44(%r1)
	.cfi_offset 31, -4
	mr %r31,%r4
	stw %r0,52(%r1)
	.cfi_offset 65, 4
	b .L469
.L480:
	beq- %cr7,.L479
.L469:
	mr %r4,%r31
	mr %r3,%r29
	mtctr %r27
	mr %r25,%r31
	bctrl
	cmpwi %cr1,%r3,0
	addi %r30,%r30,1
	cmplw %cr7,%r26,%r30
	add %r31,%r31,%r28
	bne+ %cr1,.L480
	lwz %r3,52(%r1)
	lwz %r27,28(%r1)
	.cfi_remember_state
	.cfi_restore 27
	lwz %r28,32(%r1)
	.cfi_restore 28
	mtlr %r3
	.cfi_restore 65
	mr %r3,%r25
	lwz %r29,36(%r1)
	.cfi_restore 29
	lwz %r30,40(%r1)
	.cfi_restore 30
	lwz %r31,44(%r1)
	.cfi_restore 31
	lwz %r25,20(%r1)
	lwz %r26,24(%r1)
	addi %r1,%r1,48
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L479:
	.cfi_restore_state
	lwz %r0,52(%r1)
	lwz %r27,28(%r1)
	.cfi_restore 27
	lwz %r28,32(%r1)
	.cfi_restore 28
	mtlr %r0
	.cfi_restore 65
	lwz %r29,36(%r1)
	.cfi_restore 29
	lwz %r30,40(%r1)
	.cfi_restore 30
	lwz %r31,44(%r1)
	.cfi_restore 31
.L467:
	li %r25,0
	lwz %r26,24(%r1)
	mr %r3,%r25
	lwz %r25,20(%r1)
	addi %r1,%r1,48
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
	srawi %r9,%r3,31
	xor %r3,%r9,%r3
	subf %r3,%r9,%r3
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
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L483
	ble- %cr7,.L483
	cmpwi %cr1,%r10,43
	beq- %cr1,.L484
	cmpwi %cr6,%r10,45
	bne- %cr6,.L504
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L494
	li %r6,1
.L487:
	li %r0,0
.L491:
	addi %r7,%r10,-48
	lbzu %r10,1(%r3)
	slwi %r11,%r0,2
	add %r12,%r11,%r0
	addi %r8,%r10,-48
	slwi %r9,%r12,1
	cmplwi %cr1,%r8,9
	subf %r0,%r7,%r9
	ble+ %cr1,.L491
	cmpwi %cr5,%r6,0
	subf %r3,%r9,%r7
	isel %r3,%r3,%r0,22
	blr
.L483:
	addi %r3,%r3,1
	b .L489
.L504:
	addi %r5,%r10,-48
	li %r6,0
	cmplwi %cr7,%r5,9
	ble+ %cr7,.L487
.L494:
	li %r3,0
	blr
.L484:
	lbz %r10,1(%r3)
	li %r6,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L487
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
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L506
	ble- %cr7,.L506
	cmpwi %cr1,%r10,43
	beq- %cr1,.L507
	cmpwi %cr6,%r10,45
	beq- %cr6,.L508
	addi %r5,%r10,-48
	li %r6,0
	cmplwi %cr7,%r5,9
	bgt- %cr7,.L517
.L511:
	li %r0,0
.L514:
	addi %r7,%r10,-48
	lbzu %r10,1(%r3)
	slwi %r11,%r0,2
	add %r12,%r11,%r0
	addi %r8,%r10,-48
	slwi %r9,%r12,1
	cmplwi %cr1,%r8,9
	subf %r0,%r7,%r9
	ble+ %cr1,.L514
	cmpwi %cr5,%r6,0
	subf %r3,%r9,%r7
	isel %r3,%r3,%r0,22
	blr
.L506:
	addi %r3,%r3,1
	b .L510
.L508:
	lbz %r10,1(%r3)
	li %r6,1
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	ble+ %cr0,.L511
.L517:
	li %r3,0
	blr
.L507:
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	bgt- %cr5,.L517
	li %r6,0
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
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L528
	ble- %cr7,.L528
	cmpwi %cr1,%r10,43
	beq- %cr1,.L529
	cmpwi %cr6,%r10,45
	bne- %cr6,.L549
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L539
	li %r6,1
.L532:
	li %r5,0
.L536:
	addi %r8,%r10,-48
	lbzu %r10,1(%r3)
	sldi %r11,%r5,2
	add %r12,%r11,%r5
	extsw %r0,%r8
	addi %r7,%r10,-48
	sldi %r9,%r12,1
	cmplwi %cr1,%r7,9
	subf %r5,%r0,%r9
	ble+ %cr1,.L536
	cmpwi %cr5,%r6,0
	subf %r3,%r9,%r0
	isel %r4,%r3,%r5,22
.L527:
	srdi %r3,%r4,32
	blr
.L528:
	addi %r3,%r3,1
	b .L534
.L549:
	addi %r5,%r10,-48
	li %r6,0
	cmplwi %cr7,%r5,9
	ble+ %cr7,.L532
.L539:
	li %r4,0
	b .L527
.L529:
	lbz %r10,1(%r3)
	li %r6,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L532
	li %r4,0
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
	cmpwi %cr0,%r5,0
	stwu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	stw %r30,40(%r1)
	.cfi_offset 30, -8
	beq- %cr0,.L551
	mflr %r0
	.cfi_register 65, 0
	stw %r25,20(%r1)
	.cfi_offset 25, -28
	mr %r25,%r7
	stw %r26,24(%r1)
	.cfi_offset 26, -24
	mr %r26,%r3
	stw %r27,28(%r1)
	.cfi_offset 27, -20
	mr %r27,%r6
	stw %r28,32(%r1)
	.cfi_offset 28, -16
	mr %r28,%r4
	stw %r31,44(%r1)
	.cfi_offset 31, -4
	mr %r31,%r5
	stw %r0,52(%r1)
	.cfi_offset 65, 4
	stw %r29,36(%r1)
	.cfi_offset 29, -12
	b .L554
.L563:
	beq- %cr1,.L561
	cmpwi %cr5,%r31,0
	add %r28,%r30,%r27
	beq- %cr5,.L562
.L554:
	srwi %r29,%r31,1
	mr %r3,%r26
	mullw %r30,%r29,%r27
	mtctr %r25
	add %r30,%r28,%r30
	mr %r4,%r30
	bctrl
	cmpwi %cr1,%r3,0
	addi %r31,%r31,-1
	subf %r31,%r29,%r31
	bge+ %cr1,.L563
	mr %r31,%r29
	cmpwi %cr5,%r31,0
	bne+ %cr5,.L554
.L562:
	lwz %r3,52(%r1)
	lwz %r25,20(%r1)
	.cfi_restore 25
	lwz %r26,24(%r1)
	.cfi_restore 26
	mtlr %r3
	.cfi_restore 65
	lwz %r27,28(%r1)
	.cfi_restore 27
	lwz %r28,32(%r1)
	.cfi_restore 28
	lwz %r29,36(%r1)
	.cfi_restore 29
	lwz %r31,44(%r1)
	.cfi_restore 31
.L551:
	li %r30,0
	mr %r3,%r30
	lwz %r30,40(%r1)
	addi %r1,%r1,48
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
	lwz %r0,52(%r1)
	mr %r3,%r30
	lwz %r25,20(%r1)
	.cfi_restore 25
	lwz %r26,24(%r1)
	.cfi_restore 26
	mtlr %r0
	.cfi_restore 65
	lwz %r27,28(%r1)
	.cfi_restore 27
	lwz %r28,32(%r1)
	.cfi_restore 28
	lwz %r29,36(%r1)
	.cfi_restore 29
	lwz %r31,44(%r1)
	.cfi_restore 31
	lwz %r30,40(%r1)
	addi %r1,%r1,48
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
	cmpwi %cr0,%r5,0
	stwu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	stw %r24,16(%r1)
	.cfi_offset 24, -32
	mr %r24,%r8
	stw %r25,20(%r1)
	.cfi_offset 25, -28
	mr %r25,%r7
	stw %r26,24(%r1)
	.cfi_offset 26, -24
	mr %r26,%r3
	stw %r27,28(%r1)
	.cfi_offset 27, -20
	mr %r27,%r6
	stw %r28,32(%r1)
	.cfi_offset 28, -16
	mr %r28,%r4
	stw %r31,44(%r1)
	.cfi_offset 31, -4
	mr %r31,%r5
	stw %r30,40(%r1)
	.cfi_offset 30, -8
	beq- %cr0,.L569
	mflr %r0
	.cfi_register 65, 0
	stw %r29,36(%r1)
	.cfi_offset 29, -12
	stw %r0,52(%r1)
	.cfi_offset 65, 4
.L577:
	srawi %r29,%r31,1
	mr %r5,%r24
	mullw %r30,%r29,%r27
	mr %r3,%r26
	mtctr %r25
	add %r30,%r28,%r30
	mr %r4,%r30
	bctrl
	cmpwi %cr7,%r3,0
	addi %r31,%r31,-1
	srawi. %r31,%r31,1
	beq- %cr7,.L581
.L583:
	cmpwi %cr5,%r29,0
	ble- %cr7,.L567
	add %r28,%r30,%r27
	bne+ %cr0,.L577
.L582:
	lwz %r0,52(%r1)
	lwz %r29,36(%r1)
	.cfi_restore 29
	mtlr %r0
	.cfi_restore 65
.L569:
	li %r30,0
	lwz %r24,16(%r1)
	mr %r3,%r30
	lwz %r25,20(%r1)
	lwz %r26,24(%r1)
	lwz %r27,28(%r1)
	lwz %r28,32(%r1)
	lwz %r30,40(%r1)
	lwz %r31,44(%r1)
	addi %r1,%r1,48
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
	mr %r31,%r29
	beq- %cr5,.L582
	srawi %r29,%r31,1
	mr %r5,%r24
	mullw %r30,%r29,%r27
	mr %r3,%r26
	mtctr %r25
	add %r30,%r28,%r30
	mr %r4,%r30
	bctrl
	cmpwi %cr7,%r3,0
	addi %r31,%r31,-1
	srawi. %r31,%r31,1
	bne+ %cr7,.L583
.L581:
	lwz %r3,52(%r1)
	lwz %r29,36(%r1)
	.cfi_restore 29
	lwz %r24,16(%r1)
	mtlr %r3
	.cfi_restore 65
	mr %r3,%r30
	lwz %r25,20(%r1)
	lwz %r26,24(%r1)
	lwz %r27,28(%r1)
	lwz %r28,32(%r1)
	lwz %r30,40(%r1)
	lwz %r31,44(%r1)
	addi %r1,%r1,48
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
	divw %r10,%r4,%r5
	mullw %r5,%r10,%r5
	stw %r10,0(%r3)
	subf %r4,%r5,%r4
	stw %r4,4(%r3)
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r9,%r4,%r3
	sradi %r0,%r9,63
	xor %r5,%r0,%r9
	subf %r4,%r0,%r5
	srdi %r3,%r4,32
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
	sldi %r5,%r5,32
	rldicl %r6,%r6,0,32
	sldi %r7,%r7,32
	rldicl %r8,%r8,0,32
	or %r0,%r6,%r5
	or %r4,%r8,%r7
	divd %r10,%r0,%r4
	mulld %r11,%r10,%r4
	std %r10,0(%r3)
	subf %r12,%r11,%r0
	std %r12,8(%r3)
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
	srawi %r9,%r3,31
	xor %r3,%r9,%r3
	subf %r3,%r9,%r3
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
	divw %r10,%r4,%r5
	mullw %r5,%r10,%r5
	stw %r10,0(%r3)
	subf %r4,%r5,%r4
	stw %r4,4(%r3)
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r9,%r4,%r3
	sradi %r0,%r9,63
	xor %r5,%r0,%r9
	subf %r4,%r0,%r5
	srdi %r3,%r4,32
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
	sldi %r5,%r5,32
	rldicl %r6,%r6,0,32
	sldi %r7,%r7,32
	rldicl %r8,%r8,0,32
	or %r0,%r6,%r5
	or %r4,%r8,%r7
	divd %r10,%r0,%r4
	mulld %r11,%r10,%r4
	std %r10,0(%r3)
	subf %r12,%r11,%r0
	std %r12,8(%r3)
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
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L595
.L592:
	cmpw %cr1,%r4,%r9
	beqlr- %cr1
	lwzu %r9,4(%r3)
	cmpwi %cr5,%r9,0
	bne+ %cr5,.L592
.L595:
	li %r3,0
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
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr0,%r9,%r10
	beq+ %cr0,.L602
	b .L601
.L603:
	lwzu %r9,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r9,%r0
	bne- %cr0,.L601
.L602:
	cmpwi %cr7,%r9,0
	bne+ %cr7,.L603
.L601:
	li %r4,-1
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
	isel %r3,%r4,%r3,0
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
	addi %r4,%r4,-4
	addi %r10,%r3,-4
.L607:
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	beqlr- %cr0
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	bne+ %cr0,.L607
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
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L613
	mr %r4,%r3
.L612:
	lwzu %r10,4(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L612
	subf %r3,%r3,%r4
	srawi %r3,%r3,2
	blr
.L613:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	mtctr %r5
	bne+ %cr0,.L616
	b .L624
.L627:
	beq- %cr7,.L618
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L624
.L616:
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpwi %cr7,%r9,0
	cmpw %cr1,%r9,%r10
	beq+ %cr1,.L627
.L618:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	blt- %cr5,.L628
	mfcr %r3,4
	rlwinm %r3,%r3,22,1
	blr
.L628:
	li %r3,-1
	blr
.L624:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	beq- %cr0,.L633
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L650
.L636:
	srwi %r0,%r5,1
	mtctr %r0
.L630:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,4
	bdnz .L630
.L633:
	li %r3,0
	blr
.L650:
	lwz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpwi %cr5,%r9,0
	addi %r3,%r3,4
	bne+ %cr5,.L636
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
	cmpwi %cr0,%r5,0
	beq- %cr0,.L657
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L672
.L660:
	srwi %r0,%r5,1
	mtctr %r0
	b .L652
.L654:
	lwz %r12,4(%r3)
	addi %r3,%r7,4
	lwz %r9,4(%r4)
	addi %r4,%r6,4
	cmpw %cr1,%r12,%r9
	bne- %cr1,.L669
	bdz .L657
.L652:
	lwz %r5,0(%r3)
	addi %r7,%r3,4
	addi %r6,%r4,4
	lwz %r11,0(%r4)
	cmpw %cr1,%r5,%r11
	beq+ %cr1,.L654
.L669:
	li %r4,-1
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	isel %r3,%r4,%r3,4
	blr
.L672:
	lwz %r8,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r8,%r10
	bne- %cr1,.L669
	cmpwi %cr5,%r9,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne+ %cr5,.L660
.L657:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	stw %r31,28(%r1)
	.cfi_offset 31, -4
	mr %r31,%r3
	beq- %cr0,.L674
	mflr %r0
	.cfi_register 65, 0
	slwi %r5,%r5,2
	stw %r0,36(%r1)
	.cfi_offset 65, 4
	bl memcpy
	lwz %r0,36(%r1)
	mtlr %r0
	.cfi_restore 65
.L674:
	mr %r3,%r31
	lwz %r31,28(%r1)
	addi %r1,%r1,32
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
	cmplw %cr0,%r3,%r4
	beqlr- %cr0
	slwi %r9,%r5,2
	subf %r10,%r4,%r3
	cmplw %cr1,%r10,%r9
	addi %r0,%r5,-1
	bge- %cr1,.L774
	cmpwi %cr7,%r5,0
	beqlr- %cr7
	cmplwi %cr1,%r0,4
	ble- %cr1,.L684
	addi %r6,%r9,-4
	addi %r10,%r9,-8
	add %r11,%r3,%r6
	add %r7,%r4,%r10
	subf %r12,%r7,%r11
	addi %r8,%r12,8
	cmplwi %cr5,%r8,8
	ble- %cr5,.L684
	rldicl %r8,%r5,62,34
	addi %r9,%r9,-16
	andi. %r6,%r8,0x3
	add %r7,%r4,%r9
	add %r12,%r3,%r9
	addi %r11,%r8,-1
	li %r10,0
	beq- %cr0,.L765
	cmpdi %cr6,%r6,1
	beq- %cr6,.L739
	cmpdi %cr7,%r6,2
	beq- %cr7,.L740
	mr %r8,%r11
	li %r10,-16
	lxvw4x %vs7,0,%r7
	stxvw4x %vs7,0,%r12
.L740:
	lxvw4x %vs8,%r7,%r10
	addi %r8,%r8,-1
	stxvw4x %vs8,%r12,%r10
	addi %r10,%r10,-16
.L739:
	addi %r8,%r8,-1
	lxvw4x %vs9,%r7,%r10
	stxvw4x %vs9,%r12,%r10
	addi %r10,%r10,-16
	cmpdi %cr1,%r8,0
	beq- %cr1,.L762
.L765:
	addi %r8,%r8,-4
	addi %r9,%r10,-16
	lxvw4x %vs10,%r7,%r10
	stxvw4x %vs10,%r12,%r10
	cmpdi %cr5,%r8,0
	addi %r11,%r10,-32
	lxvw4x %vs11,%r7,%r9
	stxvw4x %vs11,%r12,%r9
	addi %r6,%r10,-48
	lxvw4x %vs12,%r7,%r11
	addi %r10,%r10,-64
	stxvw4x %vs12,%r12,%r11
	lxvw4x %vs13,%r7,%r6
	stxvw4x %vs13,%r12,%r6
	bne+ %cr5,.L765
.L762:
	andi. %r9,%r5,0x3
	rlwinm %r5,%r5,0,0,29
	subf %r7,%r5,%r0
	beqlr- %cr0
	cmpwi %cr6,%r7,0
	slwi %r0,%r7,2
	lwzx %r12,%r4,%r0
	stwx %r12,%r3,%r0
	beqlr- %cr6
	addi %r8,%r7,-1
	cmpwi %cr7,%r8,0
	slwi %r10,%r8,2
	lwzx %r9,%r4,%r10
	stwx %r9,%r3,%r10
	beqlr- %cr7
	addi %r11,%r10,-4
	lwzx %r4,%r4,%r11
	stwx %r4,%r3,%r11
	blr
.L774:
	cmpwi %cr5,%r5,0
	beqlr- %cr5
	cmplwi %cr6,%r0,3
	ble- %cr6,.L690
	addi %r6,%r4,4
	subf %r7,%r6,%r3
	cmplwi %cr7,%r7,8
	ble- %cr7,.L690
	rldicl %r12,%r5,62,34
	li %r9,0
	andi. %r8,%r12,0x3
	addi %r11,%r12,-1
	beq- %cr0,.L767
	cmpdi %cr1,%r8,1
	beq- %cr1,.L741
	cmpdi %cr5,%r8,2
	beq- %cr5,.L742
	mr %r12,%r11
	li %r9,16
	lxvw4x %vs0,0,%r4
	stxvw4x %vs0,0,%r3
.L742:
	lxvw4x %vs1,%r4,%r9
	addi %r12,%r12,-1
	stxvw4x %vs1,%r3,%r9
	addi %r9,%r9,16
.L741:
	addi %r12,%r12,-1
	lxvw4x %vs2,%r4,%r9
	stxvw4x %vs2,%r3,%r9
	addi %r9,%r9,16
	cmpdi %cr6,%r12,0
	beq- %cr6,.L763
.L767:
	addi %r12,%r12,-4
	addi %r10,%r9,16
	lxvw4x %vs3,%r4,%r9
	stxvw4x %vs3,%r3,%r9
	cmpdi %cr7,%r12,0
	addi %r6,%r9,32
	lxvw4x %vs4,%r4,%r10
	stxvw4x %vs4,%r3,%r10
	addi %r7,%r9,48
	lxvw4x %vs5,%r4,%r6
	addi %r9,%r9,64
	stxvw4x %vs5,%r3,%r6
	lxvw4x %vs6,%r4,%r7
	stxvw4x %vs6,%r3,%r7
	bne+ %cr7,.L767
.L763:
	andi. %r9,%r5,0x3
	rlwinm %r5,%r5,0,0,29
	slwi %r11,%r5,2
	subf %r0,%r5,%r0
	add %r8,%r4,%r11
	add %r12,%r3,%r11
	beqlr- %cr0
	cmpwi %cr1,%r0,0
	lwzx %r4,%r4,%r11
	stwx %r4,%r3,%r11
	beqlr- %cr1
	cmplwi %cr5,%r0,1
	lwz %r9,4(%r8)
	stw %r9,4(%r12)
	beqlr- %cr5
	lwz %r10,8(%r8)
	stw %r10,8(%r12)
	blr
.L684:
	rldicl %r5,%r5,0,32
	add %r11,%r4,%r9
	andi. %r10,%r5,0x1
	add %r9,%r3,%r9
	addi %r6,%r5,-1
	beq- %cr0,.L764
	mr. %r5,%r6
	lwzu %r7,-4(%r11)
	stwu %r7,-4(%r9)
	beqlr- %cr0
.L764:
	lwz %r0,-4(%r11)
	addi %r5,%r5,-2
	mr %r12,%r11
	cmpdi %cr1,%r5,0
	addi %r10,%r9,-4
	stw %r0,-4(%r9)
	addi %r11,%r11,-8
	addi %r9,%r9,-8
	lwz %r8,-8(%r12)
	stw %r8,-4(%r10)
	beqlr- %cr1
	lwz %r0,-4(%r11)
	addi %r5,%r5,-2
	mr %r12,%r11
	cmpdi %cr1,%r5,0
	addi %r10,%r9,-4
	stw %r0,-4(%r9)
	addi %r11,%r11,-8
	addi %r9,%r9,-8
	lwz %r8,-8(%r12)
	stw %r8,-4(%r10)
	bne+ %cr1,.L764
	blr
.L690:
	rldicl %r5,%r5,0,32
	addi %r11,%r4,-4
	andi. %r10,%r5,0x1
	addi %r6,%r5,-1
	addi %r12,%r3,-4
	beq- %cr0,.L766
	mr. %r5,%r6
	lwz %r7,0(%r4)
	mr %r11,%r4
	mr %r12,%r3
	stw %r7,0(%r3)
	beqlr- %cr0
.L766:
	lwz %r0,4(%r11)
	addi %r5,%r5,-2
	mr %r4,%r11
	cmpdi %cr6,%r5,0
	addi %r8,%r12,4
	stw %r0,4(%r12)
	addi %r11,%r11,8
	addi %r12,%r12,8
	lwz %r9,8(%r4)
	stw %r9,4(%r8)
	beqlr- %cr6
	lwz %r0,4(%r11)
	addi %r5,%r5,-2
	mr %r4,%r11
	cmpdi %cr6,%r5,0
	addi %r8,%r12,4
	stw %r0,4(%r12)
	addi %r11,%r11,8
	addi %r12,%r12,8
	lwz %r9,8(%r4)
	stw %r9,4(%r8)
	bne+ %cr6,.L766
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
	cmpwi %cr0,%r5,0
	addi %r7,%r5,-1
	beqlr- %cr0
	cmplwi %cr1,%r7,2
	ble- %cr1,.L780
	rldicl %r10,%r5,62,34
	mtvsrwz %vs0,%r4
	mr %r11,%r3
	xxspltw %vs1,%vs0,1
	andi. %r8,%r10,0x3
	addi %r6,%r10,-1
	beq- %cr0,.L810
	cmpdi %cr5,%r8,1
	beq- %cr5,.L799
	cmpdi %cr6,%r8,2
	beq- %cr6,.L800
	mr %r10,%r6
	addi %r11,%r3,16
	stxvw4x %vs1,0,%r3
.L800:
	stxvw4x %vs1,0,%r11
	addi %r10,%r10,-1
	addi %r11,%r11,16
.L799:
	addi %r10,%r10,-1
	stxvw4x %vs1,0,%r11
	addi %r11,%r11,16
	cmpdi %cr7,%r10,0
	beq- %cr7,.L809
.L810:
	addi %r10,%r10,-4
	addi %r12,%r11,16
	stxvw4x %vs1,0,%r11
	cmpdi %cr1,%r10,0
	addi %r9,%r11,32
	stxvw4x %vs1,0,%r12
	addi %r8,%r11,48
	stxvw4x %vs1,0,%r9
	addi %r11,%r11,64
	stxvw4x %vs1,0,%r8
	bne+ %cr1,.L810
.L809:
	andi. %r9,%r5,0x3
	beqlr- %cr0
	rlwinm %r5,%r5,0,0,29
	slwi %r0,%r5,2
	subf %r7,%r5,%r7
	add %r9,%r3,%r0
.L777:
	cmpwi %cr5,%r7,0
	stw %r4,0(%r9)
	beqlr- %cr5
	cmplwi %cr6,%r7,1
	stw %r4,4(%r9)
	beqlr- %cr6
	stw %r4,8(%r9)
	blr
.L780:
	mr %r9,%r3
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
	cmplw %cr0,%r3,%r4
	bge- %cr0,.L813
	cmpwi %cr1,%r5,0
	add %r12,%r3,%r5
	add %r11,%r4,%r5
	beqlr- %cr1
	addi %r7,%r5,-1
	cmplwi %cr5,%r7,14
	ble- %cr5,.L815
	addi %r0,%r5,-2
	add %r10,%r4,%r7
	add %r9,%r3,%r0
	subf %r6,%r9,%r10
	addi %r8,%r6,14
	cmplwi %cr6,%r8,14
	ble- %cr6,.L815
	rldicl %r10,%r5,60,36
	addi %r0,%r5,-16
	andi. %r7,%r10,0x3
	addi %r6,%r10,-1
	add %r3,%r3,%r0
	add %r4,%r4,%r0
	li %r9,0
	beq- %cr0,.L969
	cmpdi %cr7,%r7,1
	beq- %cr7,.L918
	cmpdi %cr1,%r7,2
	beq- %cr1,.L919
	mr %r10,%r6
	li %r9,-16
	lxvw4x %vs7,0,%r3
	stxvw4x %vs7,0,%r4
.L919:
	lxvw4x %vs8,%r3,%r9
	addi %r10,%r10,-1
	stxvw4x %vs8,%r4,%r9
	addi %r9,%r9,-16
.L918:
	addi %r10,%r10,-1
	lxvw4x %vs9,%r3,%r9
	stxvw4x %vs9,%r4,%r9
	addi %r9,%r9,-16
	cmpdi %cr5,%r10,0
	beq- %cr5,.L966
.L969:
	addi %r10,%r10,-4
	addi %r8,%r9,-16
	lxvw4x %vs10,%r3,%r9
	stxvw4x %vs10,%r4,%r9
	cmpdi %cr6,%r10,0
	addi %r0,%r9,-32
	lxvw4x %vs11,%r3,%r8
	stxvw4x %vs11,%r4,%r8
	addi %r7,%r9,-48
	lxvw4x %vs12,%r3,%r0
	addi %r9,%r9,-64
	stxvw4x %vs12,%r4,%r0
	lxvw4x %vs13,%r3,%r7
	stxvw4x %vs13,%r4,%r7
	bne+ %cr6,.L969
.L966:
	andi. %r9,%r5,0xf
	rlwinm %r6,%r5,0,0,27
	subf %r11,%r6,%r11
	subf %r12,%r6,%r12
	subf %r5,%r6,%r5
	beqlr- %cr0
	cmplwi %cr7,%r5,1
	lbz %r3,-1(%r12)
	stb %r3,-1(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,2
	lbz %r4,-2(%r12)
	stb %r4,-2(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,3
	lbz %r10,-3(%r12)
	stb %r10,-3(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,4
	lbz %r9,-4(%r12)
	stb %r9,-4(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,5
	lbz %r8,-5(%r12)
	stb %r8,-5(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,6
	lbz %r0,-6(%r12)
	stb %r0,-6(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,7
	lbz %r7,-7(%r12)
	stb %r7,-7(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,8
	lbz %r6,-8(%r12)
	stb %r6,-8(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,9
	lbz %r3,-9(%r12)
	stb %r3,-9(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,10
	lbz %r4,-10(%r12)
	stb %r4,-10(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,11
	lbz %r10,-11(%r12)
	stb %r10,-11(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,12
	lbz %r9,-12(%r12)
	stb %r9,-12(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,13
	lbz %r8,-13(%r12)
	stb %r8,-13(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,14
	lbz %r5,-14(%r12)
	stb %r5,-14(%r11)
	beqlr- %cr6
	lbz %r12,-15(%r12)
	stb %r12,-15(%r11)
	blr
.L813:
	beqlr- %cr0
	cmpwi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r5,-1
	cmplwi %cr5,%r9,14
	ble- %cr5,.L820
	addi %r0,%r3,1
	subf %r6,%r0,%r4
	cmplwi %cr6,%r6,14
	ble- %cr6,.L820
	rldicl %r10,%r5,60,36
	li %r11,0
	andi. %r8,%r10,0x3
	addi %r7,%r10,-1
	beq- %cr0,.L971
	cmpdi %cr7,%r8,1
	beq- %cr7,.L920
	cmpdi %cr1,%r8,2
	beq- %cr1,.L921
	mr %r10,%r7
	li %r11,16
	lxvw4x %vs0,0,%r3
	stxvw4x %vs0,0,%r4
.L921:
	lxvw4x %vs1,%r3,%r11
	addi %r10,%r10,-1
	stxvw4x %vs1,%r4,%r11
	addi %r11,%r11,16
.L920:
	addi %r10,%r10,-1
	lxvw4x %vs2,%r3,%r11
	stxvw4x %vs2,%r4,%r11
	addi %r11,%r11,16
	cmpdi %cr5,%r10,0
	beq- %cr5,.L967
.L971:
	addi %r10,%r10,-4
	addi %r12,%r11,16
	lxvw4x %vs3,%r3,%r11
	stxvw4x %vs3,%r4,%r11
	cmpdi %cr6,%r10,0
	addi %r9,%r11,32
	lxvw4x %vs4,%r3,%r12
	stxvw4x %vs4,%r4,%r12
	addi %r0,%r11,48
	lxvw4x %vs5,%r3,%r9
	addi %r11,%r11,64
	stxvw4x %vs5,%r4,%r9
	lxvw4x %vs6,%r3,%r0
	stxvw4x %vs6,%r4,%r0
	bne+ %cr6,.L971
.L967:
	andi. %r9,%r5,0xf
	rlwinm %r6,%r5,0,0,27
	add %r11,%r4,%r6
	add %r10,%r3,%r6
	subf %r5,%r6,%r5
	beqlr- %cr0
	cmplwi %cr7,%r5,1
	lbzx %r3,%r3,%r6
	stbx %r3,%r4,%r6
	beqlr- %cr7
	cmplwi %cr1,%r5,2
	lbz %r4,1(%r10)
	stb %r4,1(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,3
	lbz %r8,2(%r10)
	stb %r8,2(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,4
	lbz %r7,3(%r10)
	stb %r7,3(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,5
	lbz %r12,4(%r10)
	stb %r12,4(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,6
	lbz %r9,5(%r10)
	stb %r9,5(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,7
	lbz %r0,6(%r10)
	stb %r0,6(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,8
	lbz %r6,7(%r10)
	stb %r6,7(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,9
	lbz %r3,8(%r10)
	stb %r3,8(%r11)
	beqlr- %cr6
	cmplwi %cr0,%r5,10
	lbz %r4,9(%r10)
	stb %r4,9(%r11)
	beqlr- %cr0
	cmplwi %cr7,%r5,11
	lbz %r8,10(%r10)
	stb %r8,10(%r11)
	beqlr- %cr7
	cmplwi %cr1,%r5,12
	lbz %r7,11(%r10)
	stb %r7,11(%r11)
	beqlr- %cr1
	cmplwi %cr5,%r5,13
	lbz %r12,12(%r10)
	stb %r12,12(%r11)
	beqlr- %cr5
	cmplwi %cr6,%r5,14
	lbz %r5,13(%r10)
	stb %r5,13(%r11)
	beqlr- %cr6
	lbz %r10,14(%r10)
	stb %r10,14(%r11)
	blr
.L815:
	rldicl %r6,%r5,0,32
	andi. %r9,%r6,0x1
	addi %r0,%r6,-1
	beq- %cr0,.L968
	mr. %r6,%r0
	lbzu %r7,-1(%r12)
	stbu %r7,-1(%r11)
	beqlr- %cr0
.L968:
	lbz %r3,-1(%r12)
	addi %r6,%r6,-2
	mr %r4,%r12
	cmpdi %cr7,%r6,0
	mr %r10,%r11
	stb %r3,-1(%r11)
	addi %r12,%r12,-2
	addi %r11,%r11,-2
	lbz %r9,-2(%r4)
	stb %r9,-2(%r10)
	beqlr- %cr7
	lbz %r3,-1(%r12)
	addi %r6,%r6,-2
	mr %r4,%r12
	cmpdi %cr7,%r6,0
	mr %r10,%r11
	stb %r3,-1(%r11)
	addi %r12,%r12,-2
	addi %r11,%r11,-2
	lbz %r9,-2(%r4)
	stb %r9,-2(%r10)
	bne+ %cr7,.L968
	blr
.L820:
	rldicl %r5,%r5,0,32
	addi %r12,%r3,-1
	andi. %r9,%r5,0x1
	addi %r11,%r5,-1
	addi %r9,%r4,-1
	beq- %cr0,.L970
	mr. %r5,%r11
	lbz %r0,0(%r3)
	mr %r12,%r3
	mr %r9,%r4
	stb %r0,0(%r4)
	beqlr- %cr0
.L970:
	lbz %r6,1(%r12)
	addi %r5,%r5,-2
	mr %r3,%r12
	cmpdi %cr7,%r5,0
	mr %r4,%r9
	stb %r6,1(%r9)
	addi %r12,%r12,2
	addi %r9,%r9,2
	lbz %r8,2(%r3)
	stb %r8,2(%r4)
	beqlr- %cr7
	lbz %r6,1(%r12)
	addi %r5,%r5,-2
	mr %r3,%r12
	cmpdi %cr7,%r5,0
	mr %r4,%r9
	stb %r6,1(%r9)
	addi %r12,%r12,2
	addi %r9,%r9,2
	lbz %r8,2(%r3)
	stb %r8,2(%r4)
	bne+ %cr7,.L970
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	rotld %r4,%r0,%r5
	srdi %r3,%r4,32
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	subfic %r5,%r5,64
	rotld %r4,%r0,%r5
	srdi %r3,%r4,32
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
	rotlw %r3,%r3,%r4
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
	subfic %r4,%r4,32
	rotlw %r3,%r3,%r4
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
	rotlw %r3,%r3,%r4
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
	subfic %r4,%r4,32
	rotlw %r3,%r3,%r4
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
	rlwinm %r4,%r4,0,28,31
	neg %r9,%r4
	slw %r0,%r3,%r4
	rlwinm %r5,%r9,0,28,31
	srw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xffff
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
	rlwinm %r4,%r4,0,28,31
	neg %r9,%r4
	srw %r0,%r3,%r4
	rlwinm %r5,%r9,0,28,31
	slw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xffff
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
	rlwinm %r4,%r4,0,29,31
	neg %r9,%r4
	slw %r0,%r3,%r4
	rlwinm %r5,%r9,0,29,31
	srw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xff
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
	rlwinm %r4,%r4,0,29,31
	neg %r9,%r4
	srw %r0,%r3,%r4
	rlwinm %r5,%r9,0,29,31
	slw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xff
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
	rlwinm %r9,%r3,24,24,31
	rlwinm %r10,%r3,8,16,23
	or %r0,%r9,%r10
	rlwinm %r3,%r0,0,0xffff
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
	mr %r9,%r3
	rotlwi %r3,%r3,24
	rlwimi %r3,%r9,8,8,15
	rlwimi %r3,%r9,8,24,31
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r9,%r4,%r3
	srdi %r10,%r9,32
	rotlwi %r8,%r9,24
	rotlwi %r4,%r10,24
	rlwimi %r8,%r9,8,8,15
	rlwimi %r4,%r10,8,8,15
	rlwimi %r8,%r9,8,24,31
	rlwimi %r4,%r10,8,24,31
	rldimi %r4,%r8,32,0
	srdi %r3,%r4,32
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
	li %r10,16
	li %r9,0
	mtctr %r10
	b .L993
.L991:
	addi %r9,%r9,1
	bne- %cr0,.L997
	bdz .L1001
.L993:
	srw %r8,%r3,%r9
	addi %r9,%r9,1
	rldicl %r4,%r8,0,63
	srw %r0,%r3,%r9
	cmpdi %cr7,%r4,0
	andi. %r10,%r0,0x1
	beq+ %cr7,.L991
.L997:
	mr %r3,%r9
	blr
.L1001:
	li %r3,0
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
	cmpwi %cr0,%r3,0
	mr %r9,%r3
	beq- %cr0,.L1005
	andi. %r3,%r3,0x1
	bnelr- %cr0
	li %r3,1
.L1004:
	srawi %r9,%r9,1
	addi %r3,%r3,1
	andi. %r10,%r9,0x1
	bnelr- %cr0
	srawi %r9,%r9,1
	addi %r3,%r3,1
	andi. %r10,%r9,0x1
	beq+ %cr0,.L1004
	blr
.L1005:
	li %r3,0
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
	lis %r9,.LC2@ha
	li %r3,1
	lfs %f0,.LC2@l(%r9)
	fcmpu %cr0,%f1,%f0
	bltlr- %cr0
	lis %r3,.LC3@ha
	lfs %f2,.LC3@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
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
	lis %r9,.LC6@ha
	li %r3,1
	lfd %f0,.LC6@l(%r9)
	fcmpu %cr0,%f1,%f0
	bltlr- %cr0
	lis %r3,.LC7@ha
	lfd %f2,.LC7@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
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
	lis %r9,.LC10@ha
	fmr %f0,%f1
	la %r3,.LC10@l(%r9)
	fmr %f1,%f2
	lfd %f12,0(%r3)
	lfd %f13,8(%r3)
	li %r3,1
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	bltlr- %cr0
	lis %r4,.LC11@ha
	la %r5,.LC11@l(%r4)
	lfd %f12,0(%r5)
	lfd %f13,8(%r5)
	fcmpu %cr1,%f0,%f12
	bne %cr1,$+8
	fcmpu %cr1,%f1,%f13
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
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
	mtvsrwa %vs0,%r4
	fcfid %f1,%f0
	xxlxor %vs3,%vs3,%vs3
	stfd %f3,8(%r3)
	stfd %f1,0(%r3)
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
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fadds %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr- %cr1
	cmpwi %cr5,%r3,0
	blt- %cr5,.L1032
	lis %r9,.LC14@ha
	lfs %f2,.LC14@l(%r9)
.L1021:
	andi. %r9,%r3,0x1
	beq- %cr0,.L1022
.L1023:
	fmuls %f1,%f1,%f2
.L1022:
	srawi %r3,%r3,1
	addze. %r3,%r3
	beqlr- %cr0
	andi. %r9,%r3,0x1
	fmuls %f2,%f2,%f2
	bne- %cr0,.L1023
.L1033:
	srawi %r3,%r3,1
	addze %r3,%r3
	fmuls %f2,%f2,%f2
	andi. %r9,%r3,0x1
	bne- %cr0,.L1023
	b .L1033
.L1032:
	lis %r4,.LC15@ha
	lfs %f2,.LC15@l(%r4)
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
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fadd %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr- %cr1
	cmpwi %cr5,%r3,0
	blt- %cr5,.L1047
	lis %r9,.LC14@ha
	lfs %f2,.LC14@l(%r9)
.L1036:
	andi. %r9,%r3,0x1
	beq- %cr0,.L1037
.L1038:
	fmul %f1,%f1,%f2
.L1037:
	srawi %r3,%r3,1
	addze. %r3,%r3
	beqlr- %cr0
	andi. %r9,%r3,0x1
	fmul %f2,%f2,%f2
	bne- %cr0,.L1038
.L1048:
	srawi %r3,%r3,1
	addze %r3,%r3
	fmul %f2,%f2,%f2
	andi. %r9,%r3,0x1
	bne- %cr0,.L1038
	b .L1048
.L1047:
	lis %r4,.LC15@ha
	lfs %f2,.LC15@l(%r4)
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
	stwu %r1,-64(%r1)
	.cfi_def_cfa_offset 64
	stfd %f28,32(%r1)
	.cfi_offset 60, -32
	fmr %f28,%f1
	stfd %f29,40(%r1)
	.cfi_offset 61, -24
	fmr %f29,%f2
	fmr %f0,%f28
	fcmpu %cr0,%f0,%f0
	bun- %cr0,.L1050
	fmr %f3,%f1
	mflr %r0
	.cfi_register 65, 0
	stw %r31,28(%r1)
	.cfi_offset 31, -36
	mr %r31,%r3
	fmr %f4,%f2
	stw %r0,68(%r1)
	.cfi_offset 65, 4
	bl __gcc_qadd
	fcmpu %cr1,%f1,%f28
	bne %cr1,$+8
	fcmpu %cr1,%f2,%f29
	beq- %cr1,.L1065
	cmpwi %cr5,%r31,0
	stfd %f30,48(%r1)
	.cfi_offset 62, -16
	stfd %f31,56(%r1)
	.cfi_offset 63, -8
	blt- %cr5,.L1066
	lis %r9,.LC20@ha
	la %r3,.LC20@l(%r9)
	lfd %f30,0(%r3)
	lfd %f31,8(%r3)
.L1051:
	andi. %r9,%r31,0x1
	beq- %cr0,.L1052
.L1053:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul
	fmr %f29,%f2
	fmr %f28,%f1
.L1052:
	srawi %r31,%r31,1
	addze. %r31,%r31
	beq- %cr0,.L1064
	fmr %f3,%f30
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	andi. %r9,%r31,0x1
	fmr %f31,%f2
	fmr %f30,%f1
	bne- %cr0,.L1053
.L1067:
	fmr %f3,%f30
	srawi %r31,%r31,1
	addze %r31,%r31
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	andi. %r9,%r31,0x1
	fmr %f31,%f2
	fmr %f30,%f1
	bne- %cr0,.L1053
	b .L1067
.L1064:
	lfd %f30,48(%r1)
	.cfi_restore 62
	lfd %f31,56(%r1)
	.cfi_restore 63
.L1065:
	lwz %r0,68(%r1)
	lwz %r31,28(%r1)
	.cfi_restore 31
	mtlr %r0
	.cfi_restore 65
.L1050:
	fmr %f1,%f28
	lfd %f28,32(%r1)
	fmr %f2,%f29
	lfd %f29,40(%r1)
	addi %r1,%r1,64
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
	lis %r4,.LC21@ha
	la %r5,.LC21@l(%r4)
	lfd %f30,0(%r5)
	lfd %f31,8(%r5)
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
	cmpwi %cr0,%r5,0
	beqlr- %cr0
	addi %r9,%r5,-1
	cmplwi %cr1,%r9,14
	ble- %cr1,.L1073
	rldicl %r8,%r5,60,36
	li %r7,0
	andi. %r10,%r8,0x1
	addi %r10,%r8,-1
	beq- %cr0,.L1129
	mr. %r8,%r10
	lxvw4x %vs0,0,%r3
	lxvw4x %vs12,0,%r4
	li %r7,16
	xxlxor %vs1,%vs0,%vs12
	stxvw4x %vs1,0,%r3
	beq- %cr0,.L1128
.L1129:
	addi %r8,%r8,-2
	addi %r0,%r7,16
	lxvw4x %vs2,%r3,%r7
	lxvw4x %vs3,%r4,%r7
	cmpdi %cr5,%r8,0
	xxlxor %vs4,%vs2,%vs3
	lxvw4x %vs6,%r4,%r0
	stxvw4x %vs4,%r3,%r7
	addi %r7,%r7,32
	lxvw4x %vs5,%r3,%r0
	xxlxor %vs7,%vs5,%vs6
	stxvw4x %vs7,%r3,%r0
	bne+ %cr5,.L1129
.L1128:
	andi. %r9,%r5,0xf
	rlwinm %r11,%r5,0,0,27
	add %r4,%r4,%r11
	add %r6,%r3,%r11
	subf %r5,%r11,%r5
	beqlr- %cr0
.L1070:
	cmplwi %cr6,%r5,1
	lbz %r12,0(%r6)
	lbz %r9,0(%r4)
	xor %r10,%r12,%r9
	stb %r10,0(%r6)
	beqlr- %cr6
	cmplwi %cr7,%r5,2
	lbz %r8,1(%r6)
	lbz %r7,1(%r4)
	xor %r0,%r7,%r8
	stb %r0,1(%r6)
	beqlr- %cr7
	cmplwi %cr1,%r5,3
	lbz %r12,2(%r6)
	lbz %r11,2(%r4)
	xor %r9,%r11,%r12
	stb %r9,2(%r6)
	beqlr- %cr1
	cmplwi %cr5,%r5,4
	lbz %r7,3(%r6)
	lbz %r10,3(%r4)
	xor %r8,%r10,%r7
	stb %r8,3(%r6)
	beqlr- %cr5
	cmplwi %cr0,%r5,5
	lbz %r11,4(%r6)
	lbz %r0,4(%r4)
	xor %r12,%r0,%r11
	stb %r12,4(%r6)
	beqlr- %cr0
	cmplwi %cr6,%r5,6
	lbz %r10,5(%r6)
	lbz %r9,5(%r4)
	xor %r7,%r9,%r10
	stb %r7,5(%r6)
	beqlr- %cr6
	cmplwi %cr7,%r5,7
	lbz %r8,6(%r6)
	lbz %r0,6(%r4)
	xor %r11,%r0,%r8
	stb %r11,6(%r6)
	beqlr- %cr7
	cmplwi %cr1,%r5,8
	lbz %r9,7(%r6)
	lbz %r12,7(%r4)
	xor %r10,%r12,%r9
	stb %r10,7(%r6)
	beqlr- %cr1
	cmplwi %cr5,%r5,9
	lbz %r0,8(%r6)
	lbz %r7,8(%r4)
	xor %r8,%r7,%r0
	stb %r8,8(%r6)
	beqlr- %cr5
	cmplwi %cr0,%r5,10
	lbz %r12,9(%r6)
	lbz %r11,9(%r4)
	xor %r9,%r11,%r12
	stb %r9,9(%r6)
	beqlr- %cr0
	cmplwi %cr6,%r5,11
	lbz %r7,10(%r6)
	lbz %r10,10(%r4)
	xor %r0,%r10,%r7
	stb %r0,10(%r6)
	beqlr- %cr6
	cmplwi %cr7,%r5,12
	lbz %r8,11(%r6)
	lbz %r11,11(%r4)
	xor %r12,%r11,%r8
	stb %r12,11(%r6)
	beqlr- %cr7
	cmplwi %cr1,%r5,13
	lbz %r10,12(%r6)
	lbz %r9,12(%r4)
	xor %r7,%r9,%r10
	stb %r7,12(%r6)
	beqlr- %cr1
	cmplwi %cr5,%r5,14
	lbz %r0,13(%r6)
	lbz %r5,13(%r4)
	xor %r11,%r5,%r0
	stb %r11,13(%r6)
	beqlr- %cr5
	lbz %r8,14(%r6)
	lbz %r4,14(%r4)
	xor %r12,%r4,%r8
	stb %r12,14(%r6)
	blr
.L1073:
	mr %r6,%r3
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
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	mr %r9,%r3
	beq- %cr0,.L1132
.L1133:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1133
.L1132:
	cmpwi %cr5,%r5,0
	beq- %cr5,.L1134
	andi. %r10,%r5,0x1
	addi %r12,%r4,-1
	addi %r7,%r5,-1
	bne- %cr0,.L1157
.L1145:
	srwi %r0,%r5,1
	mtctr %r0
.L1135:
	lbz %r4,1(%r12)
	addi %r11,%r12,1
	addi %r5,%r9,1
	addi %r12,%r11,1
	rlwinm %r10,%r4,0,0xff
	stb %r4,0(%r9)
	cmpwi %cr1,%r10,0
	beqlr- %cr1
	lbz %r8,1(%r11)
	rlwinm %r7,%r8,0,0xff
	stb %r8,1(%r9)
	addi %r9,%r5,1
	cmpwi %cr5,%r7,0
	beqlr- %cr5
	bdnz .L1135
.L1134:
	li %r6,0
	stb %r6,0(%r9)
	blr
.L1157:
	lbz %r8,0(%r4)
	mr %r12,%r4
	rlwinm %r6,%r8,0,0xff
	stb %r8,0(%r9)
	cmpwi %cr6,%r6,0
	beqlr- %cr6
	cmpwi %cr7,%r7,0
	addi %r9,%r9,1
	bne+ %cr7,.L1145
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
	cmpwi %cr0,%r4,0
	mr %r9,%r3
	li %r3,0
	beqlr- %cr0
	andi. %r8,%r4,0x3
	mr %r10,%r4
	beq- %cr0,.L1170
	cmpwi %cr1,%r8,1
	beq- %cr1,.L1181
	cmpwi %cr5,%r8,2
	beq- %cr5,.L1182
	lbz %r0,0(%r9)
	cmpwi %cr6,%r0,0
	beqlr+ %cr6
	li %r3,1
.L1182:
	lbzx %r5,%r9,%r3
	cmpwi %cr7,%r5,0
	beqlr+ %cr7
	addi %r3,%r3,1
.L1181:
	lbzx %r6,%r9,%r3
	cmpwi %cr0,%r6,0
	beqlr+ %cr0
	addi %r3,%r3,1
	cmplw %cr1,%r4,%r3
	beqlr- %cr1
.L1170:
	srwi %r10,%r10,2
.L1159:
	lbzx %r4,%r9,%r3
	cmpwi %cr5,%r4,0
	beqlr+ %cr5
	addi %r3,%r3,1
	lbzx %r11,%r9,%r3
	mr %r7,%r3
	cmpwi %cr6,%r11,0
	beqlr+ %cr6
	addi %r3,%r3,1
	lbzx %r12,%r9,%r3
	cmpwi %cr7,%r12,0
	beqlr+ %cr7
	addi %r3,%r7,2
	lbzx %r8,%r9,%r3
	cmpwi %cr0,%r8,0
	beqlr+ %cr0
	cmpwi %cr1,%r10,1
	addi %r3,%r7,3
	addi %r10,%r10,-1
	bne+ %cr1,.L1159
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
	lbz %r8,0(%r3)
	addi %r4,%r4,-1
	cmpwi %cr0,%r8,0
	beq- %cr0,.L1196
.L1192:
	mr %r10,%r4
	b .L1195
.L1194:
	beqlr- %cr7
.L1195:
	lbzu %r9,1(%r10)
	cmpwi %cr1,%r9,0
	cmpw %cr7,%r9,%r8
	bne+ %cr1,.L1194
	lbzu %r8,1(%r3)
	cmpwi %cr5,%r8,0
	bne+ %cr5,.L1192
.L1196:
	li %r3,0
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
	mr %r9,%r3
	li %r3,0
.L1202:
	lbz %r10,0(%r9)
	cmpwi %cr0,%r10,0
	cmpw %cr7,%r10,%r4
	isel %r3,%r9,%r3,30
	addi %r9,%r9,1
	beqlr- %cr0
	lbz %r10,0(%r9)
	cmpwi %cr0,%r10,0
	cmpw %cr7,%r10,%r4
	isel %r3,%r9,%r3,30
	addi %r9,%r9,1
	bne+ %cr0,.L1202
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
	lbz %r11,0(%r4)
	mr %r8,%r3
	andi. %r5,%r11,0xff
	beq- %cr0,.L1218
	mr %r9,%r4
.L1207:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1207
	subf. %r6,%r4,%r9
	mr %r3,%r8
	beqlr- %cr0
	addi %r3,%r6,-1
	b .L1226
.L1229:
	cmpwi %cr6,%r12,0
	addi %r8,%r8,1
	beq- %cr6,.L1228
.L1226:
	lbz %r12,0(%r8)
	cmpw %cr5,%r12,%r5
	bne+ %cr5,.L1229
	addi %r0,%r3,1
	mr %r6,%r4
	mr %r10,%r11
	mr %r7,%r8
	mtctr %r0
	b .L1209
.L1231:
	bdz .L1211
	bne- %cr7,.L1212
	lbzu %r12,1(%r7)
	cmpwi %cr1,%r12,0
	beq- %cr1,.L1230
	lbzu %r10,1(%r6)
.L1209:
	andi. %r9,%r10,0xff
	cmpw %cr7,%r9,%r12
	bne+ %cr0,.L1231
.L1212:
	addi %r8,%r8,1
	b .L1226
.L1228:
	li %r3,0
	blr
.L1230:
	lbz %r9,1(%r6)
.L1211:
	cmpw %cr5,%r12,%r9
	bne+ %cr5,.L1212
.L1218:
	mr %r3,%r8
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
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr0,%f1,%f0
	blt- %cr0,.L1242
	bnglr- %cr0
	fcmpu %cr1,%f2,%f0
	bnllr+ %cr1
	fneg %f1,%f1
	blr
.L1242:
	fcmpu %cr5,%f2,%f0
	bnglr+ %cr5
	fneg %f1,%f1
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
	cmpwi %cr0,%r6,0
	mr %r9,%r3
	beqlr- %cr0
	cmplw %cr1,%r4,%r6
	blt- %cr1,.L1251
	subf %r4,%r6,%r4
	add %r0,%r3,%r4
	cmplw %cr5,%r3,%r0
	bgt- %cr5,.L1251
	cmplwi %cr7,%r6,1
	lbz %r12,0(%r5)
	addi %r11,%r3,-1
	b .L1248
.L1245:
	cmplw %cr1,%r0,%r9
	blt- %cr1,.L1251
.L1248:
	lbzu %r10,1(%r11)
	mr %r3,%r9
	addi %r9,%r9,1
	cmpw %cr6,%r10,%r12
	bne+ %cr6,.L1245
	beqlr- %cr7
	subf %r8,%r11,%r9
	mr %r7,%r5
	add %r4,%r8,%r6
	mr %r8,%r11
	addi %r10,%r4,-2
	mtctr %r10
.L1246:
	lbzu %r4,1(%r8)
	lbzu %r10,1(%r7)
	cmpw %cr0,%r4,%r10
	bne- %cr0,.L1245
	bdnz .L1246
	blr
.L1251:
	li %r3,0
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
	cmpwi %cr0,%r5,0
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	stw %r30,24(%r1)
	.cfi_offset 30, -8
	mr %r30,%r3
	stw %r31,28(%r1)
	.cfi_offset 31, -4
	mr %r31,%r5
	beq- %cr0,.L1260
	mflr %r0
	.cfi_register 65, 0
	stw %r0,36(%r1)
	.cfi_offset 65, 4
	bl memmove
	lwz %r0,36(%r1)
	mtlr %r0
	.cfi_restore 65
.L1260:
	add %r3,%r30,%r31
	lwz %r30,24(%r1)
	lwz %r31,28(%r1)
	addi %r1,%r1,32
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
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr7,%f1,%f0
	blt- %cr7,.L1288
	lis %r9,.LC29@ha
	li %r10,0
	lfs %f2,.LC29@l(%r9)
	fcmpu %cr0,%f1,%f2
	cror 2,1,2
	bne- %cr0,.L1289
.L1268:
	lis %r11,.LC15@ha
	lis %r12,.LC29@ha
	lfs %f7,.LC15@l(%r11)
	li %r7,0
	lfs %f8,.LC29@l(%r12)
.L1274:
	fmul %f1,%f1,%f7
	addi %r7,%r7,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq+ %cr0,.L1274
	cmpwi %cr1,%r10,0
	stw %r7,0(%r3)
	beqlr- %cr1
.L1291:
	fneg %f1,%f1
	blr
.L1289:
	lis %r4,.LC15@ha
	lfs %f3,.LC15@l(%r4)
	fcmpu %cr1,%f1,%f3
	bnl- %cr1,.L1271
	bne- %cr7,.L1280
.L1271:
	li %r0,0
	stw %r0,0(%r3)
	blr
.L1288:
	lis %r5,.LC25@ha
	fneg %f12,%f1
	lfs %f4,.LC25@l(%r5)
	fcmpu %cr5,%f1,%f4
	cror 22,20,22
	bne- %cr5,.L1290
	fmr %f1,%f12
	li %r10,1
	b .L1268
.L1290:
	lis %r6,.LC27@ha
	lfs %f5,.LC27@l(%r6)
	fcmpu %cr6,%f1,%f5
	bng- %cr6,.L1271
	li %r10,1
.L1269:
	lis %r8,.LC15@ha
	fmr %f1,%f12
	li %r7,0
	lfs %f6,.LC15@l(%r8)
.L1276:
	fadd %f1,%f1,%f1
	addi %r7,%r7,-1
	fcmpu %cr7,%f1,%f6
	blt+ %cr7,.L1276
	cmpwi %cr1,%r10,0
	stw %r7,0(%r3)
	bne+ %cr1,.L1291
	blr
.L1280:
	fmr %f12,%f1
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
	rldicl %r4,%r4,0,32
	sldi %r3,%r3,32
	or %r10,%r4,%r3
	sldi %r5,%r5,32
	cmpdi %cr0,%r10,0
	rldicl %r6,%r6,0,32
	li %r4,0
	or %r8,%r6,%r5
	beq- %cr0,.L1292
.L1294:
	rldicl %r9,%r10,0,63
	srdi %r10,%r10,1
	cmpdi %cr1,%r10,0
	neg %r0,%r9
	and %r7,%r0,%r8
	sldi %r8,%r8,1
	add %r4,%r4,%r7
	bne+ %cr1,.L1294
.L1292:
	srdi %r3,%r4,32
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
	cmplw %cr0,%r4,%r3
	sldi %r5,%r5,32
	rldicl %r6,%r6,0,32
	li %r8,16
	li %r10,32
	or %r0,%r6,%r5
	li %r12,1
	mtctr %r8
	blt+ %cr0,.L1298
	b .L1320
.L1302:
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr7,%r3,%r4
	cmpwi %cr5,%r4,0
	ble- %cr7,.L1300
	blt- %cr5,.L1317
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L1300
	bdz .L1301
.L1298:
	cmpwi %cr1,%r4,0
	addi %r10,%r10,-2
	bge+ %cr1,.L1302
.L1317:
	cmplw %cr7,%r3,%r4
	b .L1303
.L1300:
	cmpwi %cr6,%r12,0
	beq- %cr6,.L1307
.L1303:
	li %r10,0
	li %r11,1
	li %r5,0
.L1304:
	isel %r7,0,%r11,28
	subf %r6,%r4,%r3
	cmpwi %cr1,%r7,0
	srwi %r4,%r4,1
	isel %r8,%r5,%r12,6
	srwi. %r12,%r12,1
	isel %r3,%r3,%r6,6
	or %r10,%r10,%r8
	cmplw %cr7,%r3,%r4
	bne+ %cr0,.L1304
.L1301:
	cmpdi %cr5,%r0,0
	isel %r3,%r10,%r3,22
	blr
.L1320:
	isel %r9,0,%r12,1
	subf %r4,%r4,%r3
	andi. %r10,%r9,0xff
	isel %r3,%r3,%r4,2
	b .L1301
.L1307:
	li %r10,0
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
	cmpwi %cr0,%r3,0
	beq- %cr0,.L1325
	slwi %r3,%r3,8
	cntlzw %r4,%r3
	addi %r3,%r4,-1
	blr
.L1325:
	li %r3,7
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	sradi %r9,%r0,63
	cmpd %cr0,%r0,%r9
	xor %r5,%r0,%r9
	beq- %cr0,.L1328
	cntlzd %r6,%r5
	addi %r3,%r6,-1
	blr
.L1328:
	li %r3,63
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
	mr %r10,%r3
	li %r3,0
	cmpwi %cr0,%r10,0
	beqlr- %cr0
.L1331:
	rlwinm %r9,%r10,0,31,31
	srwi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	beqlr- %cr0
	rlwinm %r9,%r10,0,31,31
	srwi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	bne+ %cr0,.L1331
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
	cmplw %cr0,%r3,%r4
	srwi %r9,%r5,3
	rlwinm %r11,%r5,0,0,28
	blt- %cr0,.L1339
	add %r10,%r4,%r5
	cmplw %cr1,%r10,%r3
	bge- %cr1,.L1478
.L1339:
	cmpwi %cr5,%r9,0
	addi %r12,%r4,-8
	addi %r8,%r3,-8
	beq- %cr5,.L1451
	andi. %r7,%r9,0x1
	addi %r7,%r9,-1
	beq- %cr0,.L1462
	mr. %r9,%r7
	ld %r6,0(%r4)
	mr %r12,%r4
	mr %r8,%r3
	std %r6,0(%r3)
	beq- %cr0,.L1453
.L1462:
	ld %r10,8(%r12)
	addi %r9,%r9,-2
	mr %r6,%r12
	cmpdi %cr7,%r9,0
	addi %r7,%r8,8
	std %r10,8(%r8)
	addi %r12,%r12,16
	addi %r8,%r8,16
	ld %r0,16(%r6)
	std %r0,8(%r7)
	bne+ %cr7,.L1462
.L1453:
	cmplw %cr1,%r5,%r11
	blelr- %cr1
	subf %r9,%r11,%r5
	addi %r12,%r9,-1
	cmplwi %cr5,%r12,14
	ble- %cr5,.L1344
	addi %r8,%r11,1
	add %r7,%r3,%r11
	add %r10,%r4,%r8
	subf %r6,%r10,%r7
	cmplwi %cr6,%r6,14
	ble- %cr6,.L1344
	rldicl %r8,%r9,60,36
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	add %r6,%r4,%r11
	andi. %r0,%r8,0x3
	li %r10,0
	stw %r31,28(%r1)
	.cfi_offset 31, -4
	addi %r31,%r8,-1
	beq- %cr0,.L1461
	cmpdi %cr7,%r0,1
	beq- %cr7,.L1422
	cmpdi %cr1,%r0,2
	bne- %cr1,.L1479
.L1423:
	lxvw4x %vs8,%r6,%r10
	addi %r8,%r8,-1
	stxvw4x %vs8,%r7,%r10
	addi %r10,%r10,16
.L1422:
	addi %r8,%r8,-1
	lxvw4x %vs9,%r6,%r10
	stxvw4x %vs9,%r7,%r10
	addi %r10,%r10,16
	cmpdi %cr5,%r8,0
	beq- %cr5,.L1458
.L1461:
	addi %r8,%r8,-4
	addi %r12,%r10,16
	lxvw4x %vs10,%r6,%r10
	stxvw4x %vs10,%r7,%r10
	cmpdi %cr6,%r8,0
	addi %r31,%r10,32
	lxvw4x %vs11,%r6,%r12
	stxvw4x %vs11,%r7,%r12
	addi %r0,%r10,48
	lxvw4x %vs12,%r6,%r31
	addi %r10,%r10,64
	stxvw4x %vs12,%r7,%r31
	lxvw4x %vs13,%r6,%r0
	stxvw4x %vs13,%r7,%r0
	bne+ %cr6,.L1461
.L1458:
	andi. %r10,%r9,0xf
	rlwinm %r9,%r9,0,0,27
	add %r11,%r9,%r11
	beq- %cr0,.L1335
	addi %r6,%r11,1
	lbzx %r7,%r4,%r11
	cmplw %cr7,%r6,%r5
	stbx %r7,%r3,%r11
	bge- %cr7,.L1335
	addi %r8,%r11,2
	lbzx %r10,%r4,%r6
	cmplw %cr1,%r5,%r8
	stbx %r10,%r3,%r6
	ble- %cr1,.L1335
	addi %r12,%r11,3
	lbzx %r31,%r4,%r8
	cmplw %cr5,%r5,%r12
	stbx %r31,%r3,%r8
	ble- %cr5,.L1335
	addi %r0,%r11,4
	lbzx %r9,%r4,%r12
	cmplw %cr6,%r5,%r0
	stbx %r9,%r3,%r12
	ble- %cr6,.L1335
	addi %r6,%r11,5
	lbzx %r7,%r4,%r0
	cmplw %cr0,%r5,%r6
	stbx %r7,%r3,%r0
	ble- %cr0,.L1335
	addi %r8,%r11,6
	lbzx %r10,%r4,%r6
	cmplw %cr7,%r5,%r8
	stbx %r10,%r3,%r6
	ble- %cr7,.L1335
	addi %r12,%r11,7
	lbzx %r31,%r4,%r8
	cmplw %cr1,%r5,%r12
	stbx %r31,%r3,%r8
	ble- %cr1,.L1335
	addi %r0,%r11,8
	lbzx %r9,%r4,%r12
	cmplw %cr5,%r5,%r0
	stbx %r9,%r3,%r12
	ble- %cr5,.L1335
	addi %r6,%r11,9
	lbzx %r7,%r4,%r0
	cmplw %cr6,%r5,%r6
	stbx %r7,%r3,%r0
	ble- %cr6,.L1335
	addi %r8,%r11,10
	lbzx %r10,%r4,%r6
	cmplw %cr0,%r5,%r8
	stbx %r10,%r3,%r6
	ble- %cr0,.L1335
	addi %r12,%r11,11
	lbzx %r31,%r4,%r8
	cmplw %cr7,%r5,%r12
	stbx %r31,%r3,%r8
	ble- %cr7,.L1335
	addi %r0,%r11,12
	lbzx %r9,%r4,%r12
	cmplw %cr1,%r5,%r0
	stbx %r9,%r3,%r12
	ble- %cr1,.L1335
	addi %r6,%r11,13
	lbzx %r7,%r4,%r0
	cmplw %cr5,%r5,%r6
	stbx %r7,%r3,%r0
	ble- %cr5,.L1335
	addi %r11,%r11,14
	lbzx %r8,%r4,%r6
	cmplw %cr6,%r5,%r11
	stbx %r8,%r3,%r6
	ble- %cr6,.L1335
	lbzx %r4,%r4,%r11
	stbx %r4,%r3,%r11
.L1335:
	lwz %r31,28(%r1)
	addi %r1,%r1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1478:
	cmpwi %cr5,%r5,0
	addi %r0,%r5,-1
	beqlr- %cr5
	cmplwi %cr6,%r0,14
	ble- %cr6,.L1349
	addi %r9,%r5,-2
	add %r8,%r3,%r0
	add %r6,%r4,%r9
	subf %r7,%r6,%r8
	addi %r12,%r7,14
	cmplwi %cr7,%r12,14
	ble- %cr7,.L1349
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r6,%r8,0x3
	addi %r11,%r8,-1
	add %r7,%r4,%r10
	add %r12,%r3,%r10
	li %r9,0
	beq- %cr0,.L1464
	cmpdi %cr1,%r6,1
	beq- %cr1,.L1424
	cmpdi %cr5,%r6,2
	bne- %cr5,.L1480
.L1425:
	lxvw4x %vs1,%r7,%r9
	addi %r8,%r8,-1
	stxvw4x %vs1,%r12,%r9
	addi %r9,%r9,-16
.L1424:
	addi %r8,%r8,-1
	lxvw4x %vs2,%r7,%r9
	stxvw4x %vs2,%r12,%r9
	addi %r9,%r9,-16
	cmpdi %cr6,%r8,0
	beq- %cr6,.L1459
.L1464:
	addi %r8,%r8,-4
	addi %r10,%r9,-16
	lxvw4x %vs3,%r7,%r9
	stxvw4x %vs3,%r12,%r9
	cmpdi %cr7,%r8,0
	addi %r11,%r9,-32
	lxvw4x %vs4,%r7,%r10
	stxvw4x %vs4,%r12,%r10
	addi %r6,%r9,-48
	lxvw4x %vs5,%r7,%r11
	addi %r9,%r9,-64
	stxvw4x %vs5,%r12,%r11
	lxvw4x %vs6,%r7,%r6
	stxvw4x %vs6,%r12,%r6
	bne+ %cr7,.L1464
.L1459:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r7,%r5,%r0
	beqlr- %cr0
	cmpwi %cr1,%r7,0
	lbzx %r0,%r4,%r7
	addi %r12,%r7,-1
	stbx %r0,%r3,%r7
	beqlr- %cr1
	cmpwi %cr5,%r12,0
	lbzx %r8,%r4,%r12
	addi %r10,%r7,-2
	stbx %r8,%r3,%r12
	beqlr- %cr5
	cmpwi %cr6,%r10,0
	lbzx %r11,%r4,%r10
	addi %r9,%r7,-3
	stbx %r11,%r3,%r10
	beqlr- %cr6
	cmpwi %cr7,%r9,0
	lbzx %r6,%r4,%r9
	addi %r5,%r7,-4
	stbx %r6,%r3,%r9
	beqlr- %cr7
	cmpwi %cr0,%r5,0
	lbzx %r0,%r4,%r5
	addi %r12,%r7,-5
	stbx %r0,%r3,%r5
	beqlr- %cr0
	cmpwi %cr1,%r12,0
	lbzx %r8,%r4,%r12
	addi %r10,%r7,-6
	stbx %r8,%r3,%r12
	beqlr- %cr1
	cmpwi %cr5,%r10,0
	lbzx %r11,%r4,%r10
	addi %r9,%r7,-7
	stbx %r11,%r3,%r10
	beqlr- %cr5
	cmpwi %cr6,%r9,0
	lbzx %r6,%r4,%r9
	addi %r5,%r7,-8
	stbx %r6,%r3,%r9
	beqlr- %cr6
	cmpwi %cr7,%r5,0
	lbzx %r0,%r4,%r5
	addi %r12,%r7,-9
	stbx %r0,%r3,%r5
	beqlr- %cr7
	cmpwi %cr0,%r12,0
	lbzx %r8,%r4,%r12
	addi %r10,%r7,-10
	stbx %r8,%r3,%r12
	beqlr- %cr0
	cmpwi %cr1,%r10,0
	lbzx %r11,%r4,%r10
	addi %r9,%r7,-11
	stbx %r11,%r3,%r10
	beqlr- %cr1
	cmpwi %cr5,%r9,0
	lbzx %r6,%r4,%r9
	addi %r5,%r7,-12
	stbx %r6,%r3,%r9
	beqlr- %cr5
	cmpwi %cr6,%r5,0
	lbzx %r0,%r4,%r5
	addi %r12,%r7,-13
	stbx %r0,%r3,%r5
	beqlr- %cr6
	cmpwi %cr7,%r12,0
	lbzx %r8,%r4,%r12
	addi %r7,%r7,-14
	stbx %r8,%r3,%r12
	beqlr- %cr7
	lbzx %r4,%r4,%r7
	stbx %r4,%r3,%r7
	blr
.L1479:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	lxvw4x %vs7,0,%r6
	mr %r8,%r31
	li %r10,16
	stxvw4x %vs7,0,%r7
	b .L1423
.L1451:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	cmpwi %cr6,%r5,0
	mr %r9,%r5
	beqlr- %cr6
.L1344:
	rldicl %r12,%r9,0,32
	addi %r5,%r11,-1
	andi. %r10,%r12,0x1
	add %r11,%r3,%r5
	add %r7,%r4,%r5
	addi %r3,%r12,-1
	beq- %cr0,.L1460
	mr. %r12,%r3
	lbzu %r10,1(%r7)
	stbu %r10,1(%r11)
	beqlr- %cr0
.L1460:
	lbz %r0,1(%r7)
	addi %r12,%r12,-2
	mr %r9,%r7
	cmpdi %cr7,%r12,0
	mr %r6,%r11
	stb %r0,1(%r11)
	addi %r7,%r7,2
	addi %r11,%r11,2
	lbz %r8,2(%r9)
	stb %r8,2(%r6)
	beqlr- %cr7
	lbz %r0,1(%r7)
	addi %r12,%r12,-2
	mr %r9,%r7
	cmpdi %cr7,%r12,0
	mr %r6,%r11
	stb %r0,1(%r11)
	addi %r7,%r7,2
	addi %r11,%r11,2
	lbz %r8,2(%r9)
	stb %r8,2(%r6)
	bne+ %cr7,.L1460
	blr
.L1480:
	lxvw4x %vs0,0,%r7
	mr %r8,%r11
	li %r9,-16
	stxvw4x %vs0,0,%r12
	b .L1425
.L1349:
	rldicl %r11,%r5,0,32
	add %r5,%r3,%r5
	andi. %r8,%r11,0x1
	addi %r3,%r11,-1
	beq- %cr0,.L1463
	mr. %r11,%r3
	lbzu %r9,-1(%r10)
	stbu %r9,-1(%r5)
	beqlr- %cr0
.L1463:
	lbz %r6,-1(%r10)
	addi %r11,%r11,-2
	mr %r12,%r10
	cmpdi %cr1,%r11,0
	addi %r8,%r5,-1
	stb %r6,-1(%r5)
	addi %r10,%r10,-2
	addi %r5,%r5,-2
	lbz %r0,-2(%r12)
	stb %r0,-1(%r8)
	beqlr- %cr1
	lbz %r6,-1(%r10)
	addi %r11,%r11,-2
	mr %r12,%r10
	cmpdi %cr1,%r11,0
	addi %r8,%r5,-1
	stb %r6,-1(%r5)
	addi %r10,%r10,-2
	addi %r5,%r5,-2
	lbz %r0,-2(%r12)
	stb %r0,-1(%r8)
	bne+ %cr1,.L1463
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
	cmplw %cr0,%r3,%r4
	srwi %r8,%r5,1
	blt- %cr0,.L1485
	add %r10,%r4,%r5
	cmplw %cr1,%r10,%r3
	bge- %cr1,.L1601
.L1485:
	cmpwi %cr5,%r8,0
	beq- %cr5,.L1484
	addi %r7,%r8,-1
	cmplwi %cr6,%r7,6
	ble- %cr6,.L1488
	addi %r12,%r4,2
	subf %r11,%r12,%r3
	cmplwi %cr7,%r11,12
	ble- %cr7,.L1488
	rldicl %r10,%r5,60,36
	srwi %r0,%r5,4
	andi. %r6,%r10,0x3
	addi %r7,%r10,-1
	li %r9,0
	beq- %cr0,.L1594
	cmpdi %cr1,%r6,1
	beq- %cr1,.L1559
	cmpdi %cr5,%r6,2
	bne- %cr5,.L1602
.L1560:
	lxvw4x %vs8,%r4,%r9
	addi %r10,%r10,-1
	stxvw4x %vs8,%r3,%r9
	addi %r9,%r9,16
.L1559:
	addi %r10,%r10,-1
	lxvw4x %vs9,%r4,%r9
	stxvw4x %vs9,%r3,%r9
	addi %r9,%r9,16
	cmpdi %cr6,%r10,0
	beq- %cr6,.L1591
.L1594:
	addi %r10,%r10,-4
	addi %r12,%r9,16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r3,%r9
	cmpdi %cr7,%r10,0
	addi %r11,%r9,32
	lxvw4x %vs11,%r4,%r12
	stxvw4x %vs11,%r3,%r12
	addi %r6,%r9,48
	lxvw4x %vs12,%r4,%r11
	addi %r9,%r9,64
	stxvw4x %vs12,%r3,%r11
	lxvw4x %vs13,%r4,%r6
	stxvw4x %vs13,%r3,%r6
	bne+ %cr7,.L1594
.L1591:
	slwi %r10,%r0,3
	cmplw %cr0,%r8,%r10
	beq- %cr0,.L1484
	addi %r7,%r10,1
	slwi %r9,%r0,4
	cmplw %cr1,%r8,%r7
	lhzx %r0,%r4,%r9
	sthx %r0,%r3,%r9
	ble- %cr1,.L1484
	addi %r12,%r10,2
	addi %r11,%r9,2
	cmplw %cr5,%r8,%r12
	lhzx %r6,%r4,%r11
	sthx %r6,%r3,%r11
	ble- %cr5,.L1484
	addi %r7,%r10,3
	addi %r0,%r9,4
	cmplw %cr6,%r8,%r7
	lhzx %r12,%r4,%r0
	sthx %r12,%r3,%r0
	ble- %cr6,.L1484
	addi %r11,%r10,4
	addi %r6,%r9,6
	cmplw %cr7,%r8,%r11
	lhzx %r7,%r4,%r6
	sthx %r7,%r3,%r6
	ble- %cr7,.L1484
	addi %r0,%r10,5
	addi %r12,%r9,8
	cmplw %cr0,%r8,%r0
	lhzx %r11,%r4,%r12
	sthx %r11,%r3,%r12
	ble- %cr0,.L1484
	addi %r10,%r10,6
	addi %r6,%r9,10
	cmplw %cr1,%r8,%r10
	lhzx %r8,%r4,%r6
	sthx %r8,%r3,%r6
	ble- %cr1,.L1484
	addi %r9,%r9,12
	lhzx %r7,%r4,%r9
	sthx %r7,%r3,%r9
.L1484:
	andi. %r9,%r5,0x1
	beqlr- %cr0
	addi %r5,%r5,-1
	lbzx %r4,%r4,%r5
	stbx %r4,%r3,%r5
	blr
.L1601:
	cmpwi %cr5,%r5,0
	addi %r0,%r5,-1
	beqlr- %cr5
	cmplwi %cr6,%r0,14
	ble- %cr6,.L1494
	addi %r9,%r5,-2
	add %r8,%r3,%r0
	add %r6,%r4,%r9
	subf %r7,%r6,%r8
	addi %r11,%r7,14
	cmplwi %cr7,%r11,14
	ble- %cr7,.L1494
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r12,%r8,0x3
	add %r7,%r4,%r10
	addi %r6,%r8,-1
	add %r10,%r3,%r10
	li %r9,0
	beq- %cr0,.L1596
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1561
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1603
.L1562:
	lxvw4x %vs1,%r7,%r9
	addi %r8,%r8,-1
	stxvw4x %vs1,%r10,%r9
	addi %r9,%r9,-16
.L1561:
	addi %r8,%r8,-1
	lxvw4x %vs2,%r7,%r9
	stxvw4x %vs2,%r10,%r9
	addi %r9,%r9,-16
	cmpdi %cr6,%r8,0
	beq- %cr6,.L1592
.L1596:
	addi %r8,%r8,-4
	addi %r12,%r9,-16
	lxvw4x %vs3,%r7,%r9
	stxvw4x %vs3,%r10,%r9
	cmpdi %cr7,%r8,0
	addi %r11,%r9,-32
	lxvw4x %vs4,%r7,%r12
	stxvw4x %vs4,%r10,%r12
	addi %r6,%r9,-48
	lxvw4x %vs5,%r7,%r11
	addi %r9,%r9,-64
	stxvw4x %vs5,%r10,%r11
	lxvw4x %vs6,%r7,%r6
	stxvw4x %vs6,%r10,%r6
	bne+ %cr7,.L1596
.L1592:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r7,%r5,%r0
	beqlr- %cr0
	cmpwi %cr1,%r7,0
	lbzx %r0,%r4,%r7
	addi %r9,%r7,-1
	stbx %r0,%r3,%r7
	beqlr- %cr1
	cmpwi %cr5,%r9,0
	lbzx %r8,%r4,%r9
	addi %r10,%r7,-2
	stbx %r8,%r3,%r9
	beqlr- %cr5
	cmpwi %cr6,%r10,0
	lbzx %r12,%r4,%r10
	addi %r11,%r7,-3
	stbx %r12,%r3,%r10
	beqlr- %cr6
	cmpwi %cr7,%r11,0
	lbzx %r6,%r4,%r11
	addi %r5,%r7,-4
	stbx %r6,%r3,%r11
	beqlr- %cr7
	cmpwi %cr0,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r7,-5
	stbx %r0,%r3,%r5
	beqlr- %cr0
	cmpwi %cr1,%r9,0
	lbzx %r8,%r4,%r9
	addi %r10,%r7,-6
	stbx %r8,%r3,%r9
	beqlr- %cr1
	cmpwi %cr5,%r10,0
	lbzx %r12,%r4,%r10
	addi %r11,%r7,-7
	stbx %r12,%r3,%r10
	beqlr- %cr5
	cmpwi %cr6,%r11,0
	lbzx %r6,%r4,%r11
	addi %r5,%r7,-8
	stbx %r6,%r3,%r11
	beqlr- %cr6
	cmpwi %cr7,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r7,-9
	stbx %r0,%r3,%r5
	beqlr- %cr7
	cmpwi %cr0,%r9,0
	lbzx %r8,%r4,%r9
	addi %r10,%r7,-10
	stbx %r8,%r3,%r9
	beqlr- %cr0
	cmpwi %cr1,%r10,0
	lbzx %r12,%r4,%r10
	addi %r11,%r7,-11
	stbx %r12,%r3,%r10
	beqlr- %cr1
	cmpwi %cr5,%r11,0
	lbzx %r6,%r4,%r11
	addi %r5,%r7,-12
	stbx %r6,%r3,%r11
	beqlr- %cr5
	cmpwi %cr6,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r7,-13
	stbx %r0,%r3,%r5
	beqlr- %cr6
	cmpwi %cr7,%r9,0
	lbzx %r8,%r4,%r9
	addi %r7,%r7,-14
	stbx %r8,%r3,%r9
	beqlr- %cr7
	lbzx %r4,%r4,%r7
	stbx %r4,%r3,%r7
	blr
.L1602:
	lxvw4x %vs7,0,%r4
	mr %r10,%r7
	li %r9,16
	stxvw4x %vs7,0,%r3
	b .L1560
.L1488:
	andi. %r9,%r8,0x1
	addi %r10,%r4,-2
	addi %r0,%r8,-1
	addi %r9,%r3,-2
	beq- %cr0,.L1593
	mr. %r8,%r0
	lhz %r12,0(%r4)
	mr %r10,%r4
	mr %r9,%r3
	sth %r12,0(%r3)
	beq- %cr0,.L1484
.L1593:
	lhz %r11,2(%r10)
	addi %r8,%r8,-2
	mr %r6,%r10
	cmpdi %cr5,%r8,0
	addi %r7,%r9,2
	sth %r11,2(%r9)
	addi %r10,%r10,4
	addi %r9,%r9,4
	lhz %r0,4(%r6)
	sth %r0,2(%r7)
	bne+ %cr5,.L1593
	b .L1484
.L1603:
	lxvw4x %vs0,0,%r7
	mr %r8,%r6
	li %r9,-16
	stxvw4x %vs0,0,%r10
	b .L1562
.L1494:
	rldicl %r12,%r5,0,32
	add %r5,%r3,%r5
	andi. %r8,%r12,0x1
	addi %r3,%r12,-1
	beq- %cr0,.L1595
	mr. %r12,%r3
	lbzu %r11,-1(%r10)
	stbu %r11,-1(%r5)
	beqlr- %cr0
.L1595:
	lbz %r6,-1(%r10)
	addi %r12,%r12,-2
	mr %r9,%r10
	cmpdi %cr1,%r12,0
	addi %r8,%r5,-1
	stb %r6,-1(%r5)
	addi %r10,%r10,-2
	addi %r5,%r5,-2
	lbz %r0,-2(%r9)
	stb %r0,-1(%r8)
	beqlr- %cr1
	lbz %r6,-1(%r10)
	addi %r12,%r12,-2
	mr %r9,%r10
	cmpdi %cr1,%r12,0
	addi %r8,%r5,-1
	stb %r6,-1(%r5)
	addi %r10,%r10,-2
	addi %r5,%r5,-2
	lbz %r0,-2(%r9)
	stb %r0,-1(%r8)
	bne+ %cr1,.L1595
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
	cmplw %cr0,%r3,%r4
	srwi %r8,%r5,2
	rlwinm %r12,%r5,0,0,29
	blt- %cr0,.L1609
	add %r10,%r4,%r5
	cmplw %cr1,%r10,%r3
	bge- %cr1,.L1758
.L1609:
	cmpwi %cr5,%r8,0
	beq- %cr5,.L1759
	addi %r7,%r8,-1
	cmplwi %cr7,%r7,3
	ble- %cr7,.L1611
	addi %r11,%r4,4
	subf %r6,%r11,%r3
	cmplwi %cr0,%r6,8
	ble- %cr0,.L1611
	rldicl %r10,%r5,60,36
	srwi %r0,%r5,4
	andi. %r7,%r10,0x3
	addi %r11,%r10,-1
	li %r9,0
	beq- %cr0,.L1747
	cmpdi %cr1,%r7,1
	beq- %cr1,.L1701
	cmpdi %cr5,%r7,2
	bne- %cr5,.L1760
.L1702:
	lxvw4x %vs8,%r4,%r9
	addi %r10,%r10,-1
	stxvw4x %vs8,%r3,%r9
	addi %r9,%r9,16
.L1701:
	addi %r10,%r10,-1
	lxvw4x %vs9,%r4,%r9
	stxvw4x %vs9,%r3,%r9
	addi %r9,%r9,16
	cmpdi %cr6,%r10,0
	beq- %cr6,.L1742
.L1747:
	addi %r10,%r10,-4
	addi %r6,%r9,16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r3,%r9
	cmpdi %cr7,%r10,0
	addi %r11,%r9,32
	lxvw4x %vs11,%r4,%r6
	stxvw4x %vs11,%r3,%r6
	addi %r7,%r9,48
	lxvw4x %vs12,%r4,%r11
	addi %r9,%r9,64
	stxvw4x %vs12,%r3,%r11
	lxvw4x %vs13,%r4,%r7
	stxvw4x %vs13,%r3,%r7
	bne+ %cr7,.L1747
.L1742:
	slwi %r10,%r0,2
	cmplw %cr0,%r8,%r10
	beq- %cr0,.L1615
	addi %r9,%r10,1
	slwi %r6,%r0,4
	cmplw %cr1,%r8,%r9
	lwzx %r0,%r4,%r6
	stwx %r0,%r3,%r6
	ble- %cr1,.L1615
	addi %r11,%r10,2
	addi %r7,%r6,4
	cmplw %cr5,%r8,%r11
	lwzx %r8,%r4,%r7
	stwx %r8,%r3,%r7
	ble- %cr5,.L1615
	addi %r9,%r6,8
	lwzx %r10,%r4,%r9
	stwx %r10,%r3,%r9
.L1615:
	cmplw %cr7,%r5,%r12
	blelr- %cr7
	subf %r9,%r12,%r5
	addi %r8,%r9,-1
	cmplwi %cr1,%r8,14
	ble- %cr1,.L1607
	addi %r10,%r12,1
	add %r7,%r3,%r12
	add %r11,%r4,%r10
	subf %r6,%r11,%r7
	cmplwi %cr5,%r6,14
	ble- %cr5,.L1607
	rldicl %r8,%r9,60,36
	add %r6,%r4,%r12
	andi. %r11,%r8,0x3
	addi %r0,%r8,-1
	li %r10,0
	beq- %cr0,.L1745
	cmpdi %cr6,%r11,1
	beq- %cr6,.L1703
	cmpdi %cr7,%r11,2
	bne- %cr7,.L1761
.L1704:
	lxvw4x %vs1,%r6,%r10
	addi %r8,%r8,-1
	stxvw4x %vs1,%r7,%r10
	addi %r10,%r10,16
.L1703:
	addi %r8,%r8,-1
	lxvw4x %vs2,%r6,%r10
	stxvw4x %vs2,%r7,%r10
	addi %r10,%r10,16
	cmpdi %cr1,%r8,0
	beq- %cr1,.L1741
.L1745:
	addi %r8,%r8,-4
	addi %r11,%r10,16
	lxvw4x %vs3,%r6,%r10
	stxvw4x %vs3,%r7,%r10
	cmpdi %cr5,%r8,0
	lxvw4x %vs4,%r6,%r11
	addi %r0,%r10,32
	stxvw4x %vs4,%r7,%r11
	addi %r11,%r10,48
	lxvw4x %vs5,%r6,%r0
	addi %r10,%r10,64
	stxvw4x %vs5,%r7,%r0
	lxvw4x %vs6,%r6,%r11
	stxvw4x %vs6,%r7,%r11
	bne+ %cr5,.L1745
.L1741:
	andi. %r10,%r9,0xf
	rlwinm %r9,%r9,0,0,27
	add %r12,%r9,%r12
	beqlr- %cr0
	addi %r6,%r12,1
	lbzx %r7,%r4,%r12
	cmplw %cr6,%r5,%r6
	stbx %r7,%r3,%r12
	blelr- %cr6
	addi %r8,%r12,2
	lbzx %r10,%r4,%r6
	cmplw %cr7,%r8,%r5
	stbx %r10,%r3,%r6
	bgelr- %cr7
	addi %r0,%r12,3
	lbzx %r11,%r4,%r8
	cmplw %cr1,%r5,%r0
	stbx %r11,%r3,%r8
	blelr- %cr1
	addi %r9,%r12,4
	lbzx %r6,%r4,%r0
	cmplw %cr5,%r5,%r9
	stbx %r6,%r3,%r0
	blelr- %cr5
	addi %r10,%r12,5
	lbzx %r7,%r4,%r9
	cmplw %cr0,%r5,%r10
	stbx %r7,%r3,%r9
	blelr- %cr0
	addi %r8,%r12,6
	lbzx %r0,%r4,%r10
	cmplw %cr6,%r5,%r8
	stbx %r0,%r3,%r10
	blelr- %cr6
	addi %r11,%r12,7
	lbzx %r9,%r4,%r8
	cmplw %cr7,%r5,%r11
	stbx %r9,%r3,%r8
	blelr- %cr7
	addi %r6,%r12,8
	lbzx %r10,%r4,%r11
	cmplw %cr1,%r5,%r6
	stbx %r10,%r3,%r11
	blelr- %cr1
	addi %r0,%r12,9
	lbzx %r7,%r4,%r6
	cmplw %cr5,%r5,%r0
	stbx %r7,%r3,%r6
	blelr- %cr5
	addi %r8,%r12,10
	lbzx %r11,%r4,%r0
	cmplw %cr0,%r5,%r8
	stbx %r11,%r3,%r0
	blelr- %cr0
	addi %r9,%r12,11
	lbzx %r6,%r4,%r8
	cmplw %cr6,%r5,%r9
	stbx %r6,%r3,%r8
	blelr- %cr6
	addi %r0,%r12,12
	lbzx %r10,%r4,%r9
	cmplw %cr7,%r5,%r0
	stbx %r10,%r3,%r9
	blelr- %cr7
	addi %r11,%r12,13
	lbzx %r7,%r4,%r0
	cmplw %cr1,%r5,%r11
	stbx %r7,%r3,%r0
	blelr- %cr1
	addi %r12,%r12,14
	lbzx %r8,%r4,%r11
	cmplw %cr5,%r5,%r12
	stbx %r8,%r3,%r11
	blelr- %cr5
	lbzx %r4,%r4,%r12
	stbx %r4,%r3,%r12
	blr
.L1758:
	cmpwi %cr5,%r5,0
	addi %r0,%r5,-1
	beqlr- %cr5
	cmplwi %cr6,%r0,14
	ble- %cr6,.L1620
	addi %r9,%r5,-2
	add %r8,%r3,%r0
	add %r6,%r4,%r9
	subf %r7,%r6,%r8
	addi %r11,%r7,14
	cmplwi %cr7,%r11,14
	ble- %cr7,.L1620
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r12,%r8,0x3
	add %r7,%r4,%r10
	addi %r6,%r8,-1
	add %r10,%r3,%r10
	li %r9,0
	beq- %cr0,.L1749
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1705
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1762
.L1706:
	lxvw4x %vs1,%r7,%r9
	addi %r8,%r8,-1
	stxvw4x %vs1,%r10,%r9
	addi %r9,%r9,-16
.L1705:
	addi %r8,%r8,-1
	lxvw4x %vs2,%r7,%r9
	stxvw4x %vs2,%r10,%r9
	addi %r9,%r9,-16
	cmpdi %cr6,%r8,0
	beq- %cr6,.L1743
.L1749:
	addi %r8,%r8,-4
	addi %r12,%r9,-16
	lxvw4x %vs3,%r7,%r9
	stxvw4x %vs3,%r10,%r9
	cmpdi %cr7,%r8,0
	addi %r11,%r9,-32
	lxvw4x %vs4,%r7,%r12
	stxvw4x %vs4,%r10,%r12
	addi %r6,%r9,-48
	lxvw4x %vs5,%r7,%r11
	addi %r9,%r9,-64
	stxvw4x %vs5,%r10,%r11
	lxvw4x %vs6,%r7,%r6
	stxvw4x %vs6,%r10,%r6
	bne+ %cr7,.L1749
.L1743:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r7,%r5,%r0
	beqlr- %cr0
	cmpwi %cr1,%r7,0
	lbzx %r0,%r4,%r7
	addi %r9,%r7,-1
	stbx %r0,%r3,%r7
	beqlr- %cr1
	cmpwi %cr5,%r9,0
	lbzx %r8,%r4,%r9
	addi %r10,%r7,-2
	stbx %r8,%r3,%r9
	beqlr- %cr5
	cmpwi %cr6,%r10,0
	lbzx %r12,%r4,%r10
	addi %r11,%r7,-3
	stbx %r12,%r3,%r10
	beqlr- %cr6
	cmpwi %cr7,%r11,0
	lbzx %r6,%r4,%r11
	addi %r5,%r7,-4
	stbx %r6,%r3,%r11
	beqlr- %cr7
	cmpwi %cr0,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r7,-5
	stbx %r0,%r3,%r5
	beqlr- %cr0
	cmpwi %cr1,%r9,0
	lbzx %r8,%r4,%r9
	addi %r10,%r7,-6
	stbx %r8,%r3,%r9
	beqlr- %cr1
	cmpwi %cr5,%r10,0
	lbzx %r12,%r4,%r10
	addi %r11,%r7,-7
	stbx %r12,%r3,%r10
	beqlr- %cr5
	cmpwi %cr6,%r11,0
	lbzx %r6,%r4,%r11
	addi %r5,%r7,-8
	stbx %r6,%r3,%r11
	beqlr- %cr6
	cmpwi %cr7,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r7,-9
	stbx %r0,%r3,%r5
	beqlr- %cr7
	cmpwi %cr0,%r9,0
	lbzx %r8,%r4,%r9
	addi %r10,%r7,-10
	stbx %r8,%r3,%r9
	beqlr- %cr0
	cmpwi %cr1,%r10,0
	lbzx %r12,%r4,%r10
	addi %r11,%r7,-11
	stbx %r12,%r3,%r10
	beqlr- %cr1
	cmpwi %cr5,%r11,0
	lbzx %r6,%r4,%r11
	addi %r5,%r7,-12
	stbx %r6,%r3,%r11
	beqlr- %cr5
	cmpwi %cr6,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r7,-13
	stbx %r0,%r3,%r5
	beqlr- %cr6
	cmpwi %cr7,%r9,0
	lbzx %r8,%r4,%r9
	addi %r7,%r7,-14
	stbx %r8,%r3,%r9
	beqlr- %cr7
	lbzx %r4,%r4,%r7
	stbx %r4,%r3,%r7
	blr
.L1760:
	lxvw4x %vs7,0,%r4
	mr %r10,%r11
	li %r9,16
	stxvw4x %vs7,0,%r3
	b .L1702
.L1761:
	lxvw4x %vs0,0,%r6
	mr %r8,%r0
	li %r10,16
	stxvw4x %vs0,0,%r7
	b .L1704
.L1759:
	cmpwi %cr6,%r5,0
	mr %r9,%r5
	beqlr- %cr6
.L1607:
	rldicl %r9,%r9,0,32
	addi %r5,%r12,-1
	andi. %r10,%r9,0x1
	add %r12,%r3,%r5
	add %r7,%r4,%r5
	addi %r3,%r9,-1
	beq- %cr0,.L1744
	mr. %r9,%r3
	lbzu %r6,1(%r7)
	stbu %r6,1(%r12)
	beqlr- %cr0
.L1744:
	lbz %r0,1(%r7)
	addi %r9,%r9,-2
	mr %r11,%r7
	cmpdi %cr6,%r9,0
	addi %r10,%r12,1
	stb %r0,1(%r12)
	addi %r7,%r7,2
	addi %r12,%r12,2
	lbz %r8,2(%r11)
	stb %r8,1(%r10)
	beqlr- %cr6
	lbz %r0,1(%r7)
	addi %r9,%r9,-2
	mr %r11,%r7
	cmpdi %cr6,%r9,0
	addi %r10,%r12,1
	stb %r0,1(%r12)
	addi %r7,%r7,2
	addi %r12,%r12,2
	lbz %r8,2(%r11)
	stb %r8,1(%r10)
	bne+ %cr6,.L1744
	blr
.L1611:
	andi. %r9,%r8,0x1
	addi %r10,%r4,-4
	addi %r6,%r8,-1
	addi %r9,%r3,-4
	beq- %cr0,.L1746
	mr. %r8,%r6
	lwz %r0,0(%r4)
	mr %r10,%r4
	mr %r9,%r3
	stw %r0,0(%r3)
	beq- %cr0,.L1615
.L1746:
	lwz %r11,4(%r10)
	addi %r8,%r8,-2
	mr %r6,%r10
	cmpdi %cr6,%r8,0
	addi %r7,%r9,4
	stw %r11,4(%r9)
	addi %r10,%r10,8
	addi %r9,%r9,8
	lwz %r0,8(%r6)
	stw %r0,4(%r7)
	bne+ %cr6,.L1746
	b .L1615
.L1762:
	lxvw4x %vs0,0,%r7
	mr %r8,%r6
	li %r9,-16
	stxvw4x %vs0,0,%r10
	b .L1706
.L1620:
	rldicl %r12,%r5,0,32
	add %r5,%r3,%r5
	andi. %r8,%r12,0x1
	addi %r3,%r12,-1
	beq- %cr0,.L1748
	mr. %r12,%r3
	lbzu %r11,-1(%r10)
	stbu %r11,-1(%r5)
	beqlr- %cr0
.L1748:
	lbz %r6,-1(%r10)
	addi %r12,%r12,-2
	mr %r9,%r10
	cmpdi %cr1,%r12,0
	addi %r8,%r5,-1
	stb %r6,-1(%r5)
	addi %r10,%r10,-2
	addi %r5,%r5,-2
	lbz %r0,-2(%r9)
	stb %r0,-1(%r8)
	beqlr- %cr1
	lbz %r6,-1(%r10)
	addi %r12,%r12,-2
	mr %r9,%r10
	cmpdi %cr1,%r12,0
	addi %r8,%r5,-1
	stb %r6,-1(%r5)
	addi %r10,%r10,-2
	addi %r5,%r5,-2
	lbz %r0,-2(%r9)
	stb %r0,-1(%r8)
	bne+ %cr1,.L1748
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
	divw %r9,%r3,%r4
	mullw %r0,%r9,%r4
	subf %r3,%r0,%r3
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
	mtvsrwz %vs1,%r3
	fcfid %f1,%f1
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
	mtvsrwz %vs1,%r3
	fcfids %f1,%f1
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r9,%r4,%r3
	mtvsrd %vs1,%r9
	fcfidu %f1,%f1
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r9,%r4,%r3
	mtvsrd %vs1,%r9
	fcfidus %f1,%f1
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
	divwu %r9,%r3,%r4
	mullw %r0,%r9,%r4
	subf %r3,%r0,%r3
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
	srwi. %r10,%r3,15
	mr %r9,%r3
	bne- %cr0,.L1772
	srawi. %r3,%r3,14
	bnelr- %cr0
	srwi. %r10,%r9,13
	bne- %cr0,.L1773
	srwi. %r10,%r9,12
	bne- %cr0,.L1774
	srwi. %r10,%r9,11
	bne- %cr0,.L1775
	srwi. %r10,%r9,10
	bne- %cr0,.L1776
	srwi. %r10,%r9,9
	bne- %cr0,.L1777
	srwi. %r10,%r9,8
	bne- %cr0,.L1778
	srwi. %r10,%r9,7
	bne- %cr0,.L1779
	srwi. %r10,%r9,6
	bne- %cr0,.L1780
	srwi. %r10,%r9,5
	bne- %cr0,.L1781
	srwi. %r10,%r9,4
	bne- %cr0,.L1782
	srwi. %r10,%r9,3
	bne- %cr0,.L1783
	srwi. %r10,%r9,2
	bne- %cr0,.L1784
	srwi. %r10,%r9,1
	bne- %cr0,.L1785
	cntlzw %r0,%r9
	srwi %r3,%r0,5
	addi %r3,%r3,15
	blr
.L1772:
	li %r3,0
	blr
.L1783:
	li %r3,12
	blr
.L1773:
	li %r3,2
	blr
.L1774:
	li %r3,3
	blr
.L1775:
	li %r3,4
	blr
.L1776:
	li %r3,5
	blr
.L1777:
	li %r3,6
	blr
.L1778:
	li %r3,7
	blr
.L1779:
	li %r3,8
	blr
.L1780:
	li %r3,9
	blr
.L1781:
	li %r3,10
	blr
.L1782:
	li %r3,11
	blr
.L1784:
	li %r3,13
	blr
.L1785:
	li %r3,14
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
	andi. %r9,%r3,0x1
	bne- %cr0,.L1790
	andi. %r9,%r3,0x2
	bne- %cr0,.L1791
	andi. %r9,%r3,0x4
	bne- %cr0,.L1792
	andi. %r9,%r3,0x8
	bne- %cr0,.L1793
	andi. %r9,%r3,0x10
	bne- %cr0,.L1794
	andi. %r9,%r3,0x20
	bne- %cr0,.L1795
	andi. %r9,%r3,0x40
	bne- %cr0,.L1796
	andi. %r9,%r3,0x80
	bne- %cr0,.L1797
	andi. %r9,%r3,0x100
	bne- %cr0,.L1798
	andi. %r9,%r3,0x200
	bne- %cr0,.L1799
	andi. %r9,%r3,0x400
	bne- %cr0,.L1800
	andi. %r9,%r3,0x800
	bne- %cr0,.L1801
	andi. %r9,%r3,0x1000
	bne- %cr0,.L1802
	andi. %r9,%r3,0x2000
	bne- %cr0,.L1803
	andi. %r9,%r3,0x4000
	bne- %cr0,.L1804
	srawi %r3,%r3,15
	cntlzw %r0,%r3
	srwi %r4,%r0,5
	addi %r3,%r4,15
	blr
.L1790:
	li %r3,0
	blr
.L1791:
	li %r3,1
	blr
.L1802:
	li %r3,12
	blr
.L1792:
	li %r3,2
	blr
.L1793:
	li %r3,3
	blr
.L1794:
	li %r3,4
	blr
.L1795:
	li %r3,5
	blr
.L1796:
	li %r3,6
	blr
.L1797:
	li %r3,7
	blr
.L1798:
	li %r3,8
	blr
.L1799:
	li %r3,9
	blr
.L1800:
	li %r3,10
	blr
.L1801:
	li %r3,11
	blr
.L1803:
	li %r3,13
	blr
.L1804:
	li %r3,14
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
	lis %r9,.LC33@ha
	lfs %f0,.LC33@l(%r9)
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne- %cr0,.L1812
	fctiwz %f1,%f1
	mfvsrwz %r3,%vs1
	blr
.L1812:
	fsubs %f2,%f1,%f0
	fctiwz %f3,%f2
	mfvsrwz %r3,%vs3
	addis %r4,%r3,0x1
	addi %r3,%r4,-32768
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
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	mfvrsave %r12
	oris %r0,%r12,0xc03c
	stw %r12,28(%r1)
	mtvrsave %r0
	lis %r7,.LC35@ha
	vspltisw %v1,0
	lis %r8,.LC36@ha
	lis %r10,.LC37@ha
	mtvsrwz %vs32,%r3
	lwz %r12,28(%r1)
	lis %r9,.LC38@ha
	vspltisw %v10,1
	xxspltw %vs32,%vs32,1
	la %r3,.LC35@l(%r7)
	la %r4,.LC36@l(%r8)
	la %r5,.LC37@l(%r10)
	la %r6,.LC38@l(%r9)
	lxvw4x %vs44,0,%r3
	vsraw %v11,%v0,%v12
	lxvw4x %vs45,0,%r5
	xxland %vs44,%vs43,%vs42
	vsraw %v13,%v0,%v13
	lxvw4x %vs43,0,%r4
	xxland %vs45,%vs45,%vs42
	vsraw %v11,%v0,%v11
	xxland %vs43,%vs43,%vs42
	vadduwm %v12,%v12,%v11
	lxvw4x %vs43,0,%r6
	vadduwm %v13,%v13,%v12
	vsraw %v0,%v0,%v11
	xxland %vs42,%vs32,%vs42
	vadduwm %v12,%v10,%v13
	xxsldwi %vs43,%vs44,%vs33,2
	vadduwm %v13,%v11,%v12
	xxsldwi %vs33,%vs45,%vs33,1
	vadduwm %v0,%v1,%v13
	vspltw %v10,%v0,0
	mfvsrwz %r11,%vs42
	rlwinm %r3,%r11,0,31,31
	mtvrsave %r12
	addi %r1,%r1,32
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
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	mfvrsave %r12
	oris %r0,%r12,0xc03c
	stw %r12,28(%r1)
	mtvrsave %r0
	lis %r7,.LC35@ha
	vspltisw %v1,0
	lis %r8,.LC36@ha
	lis %r10,.LC37@ha
	lwz %r11,28(%r1)
	mtvsrwz %vs32,%r3
	lis %r9,.LC38@ha
	vspltisw %v10,1
	xxspltw %vs32,%vs32,1
	la %r3,.LC35@l(%r7)
	la %r4,.LC36@l(%r8)
	la %r5,.LC37@l(%r10)
	la %r6,.LC38@l(%r9)
	lxvw4x %vs44,0,%r3
	vsraw %v11,%v0,%v12
	lxvw4x %vs45,0,%r5
	xxland %vs44,%vs43,%vs42
	vsraw %v13,%v0,%v13
	lxvw4x %vs43,0,%r4
	xxland %vs45,%vs45,%vs42
	vsraw %v11,%v0,%v11
	xxland %vs43,%vs43,%vs42
	vadduwm %v12,%v12,%v11
	lxvw4x %vs43,0,%r6
	vadduwm %v13,%v13,%v12
	vsraw %v0,%v0,%v11
	xxland %vs42,%vs32,%vs42
	vadduwm %v12,%v10,%v13
	xxsldwi %vs43,%vs44,%vs33,2
	vadduwm %v13,%v11,%v12
	xxsldwi %vs33,%vs45,%vs33,1
	vadduwm %v0,%v1,%v13
	vspltw %v10,%v0,0
	mfvsrwz %r3,%vs42
	mtvrsave %r11
	addi %r1,%r1,32
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
	mr %r10,%r3
	li %r3,0
	cmpwi %cr0,%r10,0
	beqlr- %cr0
.L1819:
	rlwinm %r9,%r10,0,31,31
	srwi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	beqlr- %cr0
	rlwinm %r9,%r10,0,31,31
	srwi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	bne+ %cr0,.L1819
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
	mr %r10,%r3
	li %r3,0
	cmpwi %cr0,%r10,0
	beqlr- %cr0
	cmpwi %cr1,%r4,0
	beqlr- %cr1
.L1825:
	rlwinm %r9,%r4,0,31,31
	srwi. %r4,%r4,1
	neg %r0,%r9
	and %r5,%r0,%r10
	slwi %r10,%r10,1
	add %r3,%r3,%r5
	beqlr- %cr0
	rlwinm %r9,%r4,0,31,31
	srwi. %r4,%r4,1
	neg %r0,%r9
	and %r5,%r0,%r10
	slwi %r10,%r10,1
	add %r3,%r3,%r5
	bne+ %cr0,.L1825
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
	cmplw %cr0,%r4,%r3
	li %r8,16
	li %r10,32
	li %r0,1
	mtctr %r8
	blt+ %cr0,.L1831
	b .L1853
.L1835:
	slwi %r4,%r4,1
	slwi %r0,%r0,1
	cmplw %cr7,%r3,%r4
	cmpwi %cr5,%r4,0
	ble- %cr7,.L1833
	blt- %cr5,.L1850
	slwi %r4,%r4,1
	slwi %r0,%r0,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L1833
	bdz .L1834
.L1831:
	cmpwi %cr1,%r4,0
	addi %r10,%r10,-2
	bge+ %cr1,.L1835
.L1850:
	cmplw %cr7,%r3,%r4
	b .L1836
.L1833:
	cmpwi %cr6,%r0,0
	beq- %cr6,.L1840
.L1836:
	li %r10,0
	li %r11,1
	li %r6,0
.L1837:
	isel %r7,0,%r11,28
	subf %r12,%r4,%r3
	cmpwi %cr1,%r7,0
	srwi %r4,%r4,1
	isel %r8,%r6,%r0,6
	srwi. %r0,%r0,1
	isel %r3,%r3,%r12,6
	or %r10,%r10,%r8
	cmplw %cr7,%r3,%r4
	bne+ %cr0,.L1837
.L1834:
	cmpwi %cr5,%r5,0
	isel %r3,%r10,%r3,22
	blr
.L1853:
	isel %r9,0,%r0,1
	subf %r4,%r4,%r3
	andi. %r10,%r9,0xff
	isel %r3,%r3,%r4,2
	b .L1834
.L1840:
	li %r10,0
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
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	bltlr- %cr0
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
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
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	bltlr- %cr0
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
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
	extsw %r3,%r3
	extsw %r4,%r4
	mulld %r4,%r3,%r4
	srdi %r3,%r4,32
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
	rldicl %r3,%r3,0,32
	rldicl %r4,%r4,0,32
	mulld %r4,%r3,%r4
	srdi %r3,%r4,32
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
	cmpwi %cr0,%r4,0
	blt- %cr0,.L1877
	beq- %cr0,.L1870
	li %r6,0
.L1866:
	li %r10,32
	li %r8,0
	b .L1869
.L1878:
	beq- %cr7,.L1868
.L1869:
	rlwinm %r9,%r4,0,31,31
	srawi. %r4,%r4,1
	addi %r10,%r10,-1
	neg %r0,%r9
	and %r5,%r0,%r3
	rlwinm %r7,%r10,0,0xff
	cmpwi %cr7,%r7,0
	add %r8,%r8,%r5
	slwi %r3,%r3,1
	bne+ %cr0,.L1878
.L1868:
	cmpwi %cr1,%r6,0
	neg %r3,%r8
	isel %r3,%r8,%r3,6
	blr
.L1877:
	neg %r4,%r4
	li %r6,1
	b .L1866
.L1870:
	li %r3,0
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
	cmpwi %cr0,%r3,0
	li %r9,1
	li %r11,0
	bge+ %cr0,.L1880
	neg %r3,%r3
	li %r9,0
	li %r11,1
.L1880:
	cmpwi %cr1,%r4,0
	bge+ %cr1,.L1881
	neg %r4,%r4
	mr %r11,%r9
.L1881:
	cmplw %cr5,%r3,%r4
	li %r8,16
	mr %r10,%r3
	li %r9,1
	mtctr %r8
	bgt+ %cr5,.L1882
	b .L1905
.L1886:
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L1887
	bdz .L1887
.L1882:
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr6,%r3,%r4
	bgt+ %cr6,.L1886
.L1887:
	cmpwi %cr0,%r9,0
	li %r3,0
	li %r6,1
	li %r5,0
	beq- %cr0,.L1885
.L1884:
	cmplw %cr1,%r10,%r4
	subf %r0,%r4,%r10
	srwi %r4,%r4,1
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r12,%r5,%r9,22
	srwi. %r9,%r9,1
	or %r3,%r3,%r12
	isel %r10,%r10,%r0,22
	bne+ %cr0,.L1884
.L1885:
	cmpwi %cr6,%r11,0
	neg %r4,%r3
	isel %r3,%r3,%r4,26
	blr
.L1905:
	isel %r3,0,%r9,20
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
	cmpwi %cr0,%r3,0
	li %r11,0
	bge+ %cr0,.L1910
	neg %r3,%r3
	li %r11,1
.L1910:
	srawi %r9,%r4,31
	li %r7,16
	xor %r4,%r9,%r4
	mr %r8,%r3
	subf %r12,%r9,%r4
	li %r10,1
	cmplw %cr1,%r3,%r12
	mtctr %r7
	bgt+ %cr1,.L1911
	b .L1933
.L1915:
	slwi %r12,%r12,1
	slwi %r10,%r10,1
	cmplw %cr6,%r3,%r12
	ble- %cr6,.L1916
	bdz .L1916
.L1911:
	slwi %r12,%r12,1
	slwi %r10,%r10,1
	cmplw %cr5,%r3,%r12
	bgt+ %cr5,.L1915
.L1916:
	cmpwi %cr7,%r10,0
	li %r5,1
	beq- %cr7,.L1937
.L1913:
	cmplw %cr1,%r8,%r12
	srwi. %r10,%r10,1
	subf %r3,%r12,%r8
	srwi %r12,%r12,1
	isel %r6,0,%r5,4
	cmpwi %cr5,%r6,0
	isel %r8,%r8,%r3,22
	bne+ %cr0,.L1913
.L1914:
	cmpwi %cr6,%r11,0
	neg %r11,%r8
	isel %r3,%r8,%r11,26
	blr
.L1937:
	cmpwi %cr6,%r11,0
	mr %r8,%r3
	neg %r11,%r8
	isel %r3,%r8,%r11,26
	blr
.L1933:
	subf %r0,%r12,%r3
	isel %r8,%r3,%r0,4
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
	cmplw %cr0,%r4,%r3
	bge- %cr0,.L2104
	andi. %r9,%r4,0x8000
	bne- %cr0,.L1943
	rlwinm %r9,%r4,1,16,30
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2016
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2016
	rlwinm %r9,%r4,2,16,29
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2018
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2018
	rlwinm %r9,%r4,3,16,28
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2020
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2020
	rlwinm %r9,%r4,4,16,27
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2022
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2022
	rlwinm %r9,%r4,5,16,26
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2024
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2024
	rlwinm %r9,%r4,6,16,25
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2026
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2026
	rlwinm %r9,%r4,7,16,24
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2028
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2028
	rlwinm %r9,%r4,8,16,23
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2030
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2030
	rlwinm %r9,%r4,9,16,22
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2032
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2032
	rlwinm %r9,%r4,10,16,21
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2034
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2034
	rlwinm %r9,%r4,11,16,20
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2036
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2036
	rlwinm %r9,%r4,12,16,19
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2038
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2038
	rlwinm %r9,%r4,13,16,18
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2040
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2040
	rlwinm %r9,%r4,14,16,17
	cmplw %cr7,%r3,%r9
	ble- %cr7,.L2042
	andi. %r10,%r9,0x8000
	bne- %cr0,.L2042
	rlwinm %r4,%r4,15,16,16
	cmplw %cr6,%r3,%r4
	ble- %cr6,.L2043
	cmpwi %cr1,%r4,0
	li %r12,0
	bne- %cr1,.L2105
.L1946:
	cmpwi %cr7,%r5,0
	beq+ %cr7,.L2005
	mr %r12,%r3
.L2005:
	rlwinm %r3,%r12,0,0xffff
	blr
.L2016:
	li %r8,2
.L1945:
	subf %r0,%r9,%r3
	srwi %r7,%r9,1
	rlwinm %r12,%r0,0,0xffff
	li %r10,1
	isel %r3,%r3,%r12,28
	isel %r6,0,%r10,28
	cmplw %cr5,%r3,%r7
	neg %r4,%r6
	and %r6,%r8,%r4
	srwi. %r11,%r8,2
	li %r4,1
	subf %r11,%r7,%r3
	isel %r7,0,%r4,20
	rlwinm %r12,%r11,0,0xffff
	rldicl %r10,%r8,63,49
	neg %r11,%r7
	and %r10,%r10,%r11
	isel %r3,%r3,%r12,20
	or %r11,%r10,%r6
	srwi %r0,%r8,2
	srwi %r7,%r9,2
	mr %r12,%r11
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r12,%r6,0,0xffff
	li %r10,0
	isel %r4,0,%r4,28
	cmpwi %cr6,%r4,0
	isel %r3,%r3,%r12,26
	beq- %cr6,.L1954
	mr %r10,%r0
.L1954:
	srwi. %r7,%r8,3
	or %r0,%r11,%r10
	mr %r12,%r0
	srwi %r11,%r8,3
	srwi %r7,%r9,3
	beq- %cr0,.L1946
	cmplw %cr1,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	rlwinm %r10,%r12,0,0xffff
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1958
	mr %r4,%r11
.L1958:
	srwi. %r7,%r8,4
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,4
	srwi %r10,%r9,4
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	rlwinm %r7,%r12,0,0xffff
	isel %r10,0,%r6,28
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1962
	mr %r4,%r11
.L1962:
	srwi. %r7,%r8,5
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,5
	srwi %r7,%r9,5
	beq- %cr0,.L1946
	cmplw %cr1,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	rlwinm %r10,%r12,0,0xffff
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1966
	mr %r4,%r11
.L1966:
	srwi. %r7,%r8,6
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,6
	srwi %r10,%r9,6
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	rlwinm %r7,%r12,0,0xffff
	isel %r10,0,%r6,28
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1970
	mr %r4,%r11
.L1970:
	srwi. %r7,%r8,7
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,7
	srwi %r7,%r9,7
	beq- %cr0,.L1946
	cmplw %cr1,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	rlwinm %r10,%r12,0,0xffff
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1974
	mr %r4,%r11
.L1974:
	srwi. %r7,%r8,8
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,8
	srwi %r10,%r9,8
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	rlwinm %r7,%r12,0,0xffff
	isel %r10,0,%r6,28
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1978
	mr %r4,%r11
.L1978:
	srwi. %r7,%r8,9
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,9
	srwi %r7,%r9,9
	beq- %cr0,.L1946
	cmplw %cr1,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	rlwinm %r10,%r12,0,0xffff
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1982
	mr %r4,%r11
.L1982:
	srwi. %r7,%r8,10
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,10
	srwi %r10,%r9,10
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	rlwinm %r7,%r12,0,0xffff
	isel %r10,0,%r6,28
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1986
	mr %r4,%r11
.L1986:
	srwi. %r7,%r8,11
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,11
	srwi %r7,%r9,11
	beq- %cr0,.L1946
	cmplw %cr1,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	rlwinm %r10,%r12,0,0xffff
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1990
	mr %r4,%r11
.L1990:
	srwi. %r7,%r8,12
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,12
	srwi %r10,%r9,12
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	rlwinm %r7,%r12,0,0xffff
	isel %r10,0,%r6,28
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1994
	mr %r4,%r11
.L1994:
	srwi. %r7,%r8,13
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,13
	srwi %r7,%r9,13
	beq- %cr0,.L1946
	cmplw %cr1,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	rlwinm %r10,%r12,0,0xffff
	isel %r7,0,%r6,4
	cmpwi %cr5,%r7,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1998
	mr %r4,%r11
.L1998:
	srwi. %r7,%r8,14
	or %r0,%r0,%r4
	mr %r12,%r0
	srwi %r11,%r8,14
	srwi %r10,%r9,14
	beq- %cr0,.L1946
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	rlwinm %r7,%r12,0,0xffff
	isel %r10,0,%r6,28
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L2002
	mr %r4,%r11
.L2002:
	cmpwi %cr1,%r8,16384
	or %r8,%r0,%r4
	srwi %r9,%r9,15
	mr %r12,%r8
	beq- %cr1,.L1946
	cmplw %cr5,%r3,%r9
	li %r0,1
	subf %r11,%r9,%r3
	rlwinm %r7,%r11,0,0xffff
	isel %r6,0,%r0,20
	cmpwi %cr0,%r6,0
	or %r12,%r8,%r6
	isel %r3,%r3,%r7,2
	b .L1946
.L2018:
	li %r8,4
	b .L1945
.L2020:
	li %r8,8
	b .L1945
.L2022:
	li %r8,16
	b .L1945
.L2032:
	li %r8,512
	b .L1945
.L2024:
	li %r8,32
	b .L1945
.L2026:
	li %r8,64
	b .L1945
.L2028:
	li %r8,128
	b .L1945
.L2030:
	li %r8,256
	b .L1945
.L2104:
	cmpw %cr1,%r4,%r3
	li %r10,0
	li %r6,1
	subf %r9,%r4,%r3
	rlwinm %r0,%r9,0,0xffff
	isel %r12,%r6,%r10,6
	cmpwi %cr5,%r12,0
	isel %r3,%r3,%r0,22
	b .L1946
.L2034:
	li %r8,1024
	b .L1945
.L2036:
	li %r8,2048
	b .L1945
.L2038:
	li %r8,4096
	b .L1945
.L2040:
	li %r8,8192
	b .L1945
.L2042:
	li %r8,16384
	b .L1945
.L2105:
	li %r11,0
	li %r8,0
	cmplwi %cr7,%r3,32768
	ori %r8,%r8,0x8000
	ori %r9,%r11,0x8000
	b .L1945
.L2043:
	li %r7,0
	li %r8,0
	cmplwi %cr7,%r3,32768
	ori %r9,%r7,0x8000
	ori %r8,%r8,0x8000
	b .L1945
.L1943:
	subf %r3,%r4,%r3
	li %r12,1
	rlwinm %r3,%r3,0,0xffff
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
	cmplw %cr7,%r3,%r4
	li %r8,16
	li %r10,32
	li %r0,1
	mtctr %r8
	bgt+ %cr7,.L2107
	b .L2128
.L2111:
	slwi %r4,%r4,1
	slwi %r0,%r0,1
	cmplw %cr7,%r3,%r4
	cmpwi %cr5,%r4,0
	ble- %cr7,.L2109
	blt- %cr5,.L2112
	slwi %r4,%r4,1
	slwi %r0,%r0,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L2109
	bdz .L2110
.L2107:
	cmpwi %cr1,%r4,0
	addi %r10,%r10,-2
	bge+ %cr1,.L2111
.L2112:
	li %r10,0
	li %r11,1
	li %r6,0
.L2113:
	isel %r7,0,%r11,28
	subf %r12,%r4,%r3
	cmpwi %cr1,%r7,0
	srwi %r4,%r4,1
	isel %r8,%r6,%r0,6
	srwi. %r0,%r0,1
	isel %r3,%r3,%r12,6
	or %r10,%r10,%r8
	cmplw %cr7,%r3,%r4
	bne+ %cr0,.L2113
.L2110:
	cmpwi %cr5,%r5,0
	isel %r3,%r10,%r3,22
	blr
.L2109:
	cmpwi %cr6,%r0,0
	bne+ %cr6,.L2112
	li %r10,0
	b .L2110
.L2128:
	subf %r4,%r4,%r3
	isel %r9,0,%r0,28
	isel %r3,%r3,%r4,28
	rlwinm %r10,%r9,0,0xff
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
	andi. %r9,%r5,0x20
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	beq- %cr0,.L2132
	addi %r5,%r5,-32
	li %r11,0
	slw %r9,%r0,%r5
.L2133:
	sldi %r12,%r9,32
	or %r4,%r11,%r12
.L2131:
	srdi %r3,%r4,32
	blr
.L2132:
	cmpwi %cr1,%r5,0
	mr %r4,%r0
	beq- %cr1,.L2131
	subfic %r10,%r5,32
	sradi %r8,%r0,32
	srw %r6,%r0,%r10
	slw %r7,%r8,%r5
	or %r9,%r6,%r7
	slw %r11,%r0,%r5
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
	andi. %r9,%r5,0x20
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	beq- %cr0,.L2138
	sradi %r11,%r0,32
	addi %r12,%r5,-32
	sraw %r8,%r11,%r12
	srawi %r5,%r11,31
.L2139:
	rldicl %r3,%r8,0,32
	sldi %r4,%r5,32
	or %r4,%r4,%r3
.L2137:
	srdi %r3,%r4,32
	blr
.L2138:
	cmpwi %cr1,%r5,0
	mr %r4,%r0
	beq- %cr1,.L2137
	sradi %r6,%r0,32
	subfic %r10,%r5,32
	srw %r9,%r0,%r5
	slw %r7,%r6,%r10
	or %r8,%r7,%r9
	sraw %r5,%r6,%r5
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r9,%r4,%r3
	srdi %r10,%r9,32
	rotlwi %r8,%r9,24
	rotlwi %r4,%r10,24
	rlwimi %r8,%r9,8,8,15
	rlwimi %r4,%r10,8,8,15
	rlwimi %r8,%r9,8,24,31
	rlwimi %r4,%r10,8,24,31
	rldimi %r4,%r8,32,0
	srdi %r3,%r4,32
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
	mr %r9,%r3
	rotlwi %r3,%r3,24
	rlwimi %r3,%r9,8,8,15
	rlwimi %r3,%r9,8,24,31
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
	cmplwi %cr0,%r3,65535
	li %r8,1
	li %r7,0
	isel %r0,0,%r8,1
	slwi %r4,%r0,4
	subfic %r9,%r4,16
	srw %r3,%r3,%r9
	rlwinm %r10,%r3,0,16,23
	cntlzw %r5,%r10
	srwi %r6,%r5,5
	slwi %r11,%r6,3
	subfic %r12,%r11,8
	add %r8,%r11,%r4
	srw %r0,%r3,%r12
	rlwinm %r4,%r0,0,24,27
	cntlzw %r9,%r4
	srwi %r3,%r9,5
	slwi %r10,%r3,2
	subfic %r5,%r10,4
	add %r6,%r10,%r8
	srw %r11,%r0,%r5
	rlwinm %r12,%r11,0,28,29
	cntlzw %r8,%r12
	srwi %r0,%r8,5
	slwi %r4,%r0,1
	subfic %r9,%r4,2
	add %r3,%r4,%r6
	srw %r5,%r11,%r9
	andi. %r10,%r5,0x2
	subfic %r10,%r5,2
	isel %r7,%r10,%r7,2
	add %r3,%r7,%r3
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	sldi %r5,%r5,32
	rldicl %r6,%r6,0,32
	or %r0,%r4,%r3
	or %r7,%r6,%r5
	sradi %r10,%r0,32
	sradi %r9,%r7,32
	cmpw %cr0,%r10,%r9
	blt- %cr0,.L2148
	li %r3,2
	bgtlr- %cr0
	cmplw %cr1,%r0,%r7
	li %r3,0
	bltlr- %cr1
	mfcr %r8,64
	rlwinm %r8,%r8,6,1
	addi %r3,%r8,1
	blr
.L2148:
	li %r3,0
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	sldi %r5,%r5,32
	rldicl %r6,%r6,0,32
	or %r0,%r4,%r3
	or %r7,%r6,%r5
	sradi %r10,%r0,32
	sradi %r9,%r7,32
	cmpw %cr0,%r10,%r9
	blt- %cr0,.L2154
	li %r3,1
	bgtlr- %cr0
	cmplw %cr7,%r0,%r7
	cmplw %cr1,%r0,%r7
	li %r8,0
	li %r11,1
	li %r12,-1
	isel %r3,%r11,%r8,29
	isel %r3,%r12,%r3,4
	blr
.L2154:
	li %r3,-1
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
	rlwinm %r8,%r3,0,16,31
	cntlzw %r0,%r8
	srwi %r4,%r0,5
	slwi %r5,%r4,4
	srw %r9,%r3,%r5
	rlwinm %r10,%r9,0,24,31
	cntlzw %r3,%r10
	srwi %r6,%r3,5
	slwi %r7,%r6,3
	srw %r11,%r9,%r7
	add %r12,%r7,%r5
	rlwinm %r8,%r11,0,28,31
	cntlzw %r0,%r8
	srwi %r4,%r0,5
	slwi %r5,%r4,2
	srw %r9,%r11,%r5
	add %r10,%r5,%r12
	rlwinm %r3,%r9,0,30,31
	cntlzw %r6,%r3
	srwi %r7,%r6,5
	slwi %r11,%r7,1
	srw %r12,%r9,%r11
	add %r8,%r11,%r10
	rlwinm %r0,%r12,0,30,31
	not %r4,%r0
	srwi %r5,%r0,1
	rlwinm %r10,%r4,0,31,31
	subfic %r9,%r5,2
	neg %r3,%r10
	and %r6,%r3,%r9
	add %r3,%r6,%r8
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
	andi. %r9,%r5,0x20
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	beq- %cr0,.L2159
	addi %r12,%r5,-32
	srdi %r11,%r0,32
	srw %r8,%r11,%r12
	li %r5,0
.L2160:
	rldicl %r3,%r8,0,32
	sldi %r4,%r5,32
	or %r4,%r4,%r3
.L2158:
	srdi %r3,%r4,32
	blr
.L2159:
	cmpwi %cr1,%r5,0
	mr %r4,%r0
	beq- %cr1,.L2158
	srdi %r6,%r0,32
	subfic %r10,%r5,32
	srw %r9,%r0,%r5
	slw %r7,%r6,%r10
	or %r8,%r7,%r9
	srw %r5,%r6,%r5
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
	rlwinm %r10,%r3,0,16,31
	rlwinm %r9,%r4,0,16,31
	mr %r8,%r4
	srwi %r3,%r3,16
	mullw %r4,%r10,%r9
	srwi %r0,%r8,16
	mullw %r5,%r9,%r3
	mullw %r6,%r10,%r0
	srwi %r7,%r4,16
	mullw %r11,%r3,%r0
	add %r12,%r5,%r7
	rlwinm %r8,%r12,0,0xffff
	srwi %r9,%r12,16
	add %r10,%r6,%r8
	srwi %r3,%r10,16
	rlwimi %r4,%r10,16,0,31-16
	add %r0,%r9,%r11
	add %r5,%r0,%r3
	rldicl %r3,%r5,0,32
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
	rldicl %r6,%r6,0,32
	rlwinm %r8,%r4,0,0xffff
	rlwinm %r9,%r6,0,0xffff
	srwi %r7,%r4,16
	mullw %r10,%r8,%r9
	srwi %r11,%r6,16
	sldi %r5,%r5,32
	or %r6,%r6,%r5
	mullw %r9,%r9,%r7
	sradi %r0,%r6,32
	mullw %r8,%r8,%r11
	srwi %r12,%r10,16
	mullw %r11,%r7,%r11
	add %r5,%r9,%r12
	rlwinm %r7,%r5,0,0xffff
	srwi %r9,%r5,16
	add %r12,%r8,%r7
	mullw %r0,%r4,%r0
	srwi %r4,%r12,16
	rlwimi %r10,%r12,16,0,31-16
	add %r8,%r9,%r11
	mullw %r3,%r3,%r6
	rldicl %r10,%r10,0,32
	add %r6,%r8,%r4
	sldi %r11,%r6,32
	or %r4,%r10,%r11
	sradi %r5,%r4,32
	add %r7,%r0,%r5
	add %r3,%r7,%r3
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	neg %r4,%r0
	srdi %r3,%r4,32
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	or %r0,%r4,%r3
	li %r5,27030
	sradi %r10,%r0,32
	xor %r6,%r10,%r0
	srwi %r9,%r6,16
	xor %r7,%r9,%r6
	srwi %r8,%r7,8
	xor %r11,%r8,%r7
	srwi %r12,%r11,4
	xor %r3,%r12,%r11
	rlwinm %r4,%r3,0,28,31
	sraw %r0,%r5,%r4
	rlwinm %r3,%r0,0,31,31
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
	srwi %r9,%r3,16
	li %r8,27030
	xor %r0,%r9,%r3
	srwi %r10,%r0,8
	xor %r3,%r10,%r0
	srwi %r4,%r3,4
	xor %r5,%r4,%r3
	rlwinm %r6,%r5,0,28,31
	sraw %r7,%r8,%r6
	rlwinm %r3,%r7,0,31,31
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
	sldi %r3,%r3,32
	rldicl %r4,%r4,0,32
	lis %r10,0x5555
	or %r0,%r4,%r3
	ori %r8,%r10,0x5555
	srdi %r9,%r0,1
	rldimi %r8,%r8,32,0
	lis %r5,0x3333
	and %r6,%r9,%r8
	ori %r7,%r5,0x3333
	subf %r11,%r6,%r0
	rldimi %r7,%r7,32,0
	srdi %r12,%r11,2
	and %r3,%r11,%r7
	and %r4,%r12,%r7
	lis %r10,0xf0f
	add %r0,%r4,%r3
	ori %r8,%r10,0xf0f
	srdi %r9,%r0,4
	rldimi %r8,%r8,32,0
	add %r5,%r9,%r0
	and %r6,%r5,%r8
	srdi %r7,%r6,32
	add %r11,%r7,%r6
	srwi %r12,%r11,16
	add %r4,%r12,%r11
	srwi %r3,%r4,8
	add %r10,%r3,%r4
	rlwinm %r3,%r10,0,25,31
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
	lis %r9,0x5555
	srwi %r0,%r3,1
	ori %r10,%r9,0x5555
	lis %r8,0x3333
	and %r4,%r0,%r10
	ori %r5,%r8,0x3333
	subf %r3,%r4,%r3
	lis %r6,0xf0f
	srwi %r7,%r3,2
	and %r11,%r3,%r5
	and %r12,%r7,%r5
	ori %r0,%r6,0xf0f
	add %r10,%r12,%r11
	srwi %r9,%r10,4
	add %r8,%r9,%r10
	and %r4,%r8,%r0
	srwi %r5,%r4,16
	add %r6,%r5,%r4
	srwi %r3,%r6,8
	add %r7,%r3,%r6
	rlwinm %r3,%r7,0,26,31
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
	andi. %r9,%r3,0x1
	lis %r8,.LC29@ha
	fmr %f0,%f1
	mr %r9,%r3
	lfs %f1,.LC29@l(%r8)
	beq- %cr0,.L2172
.L2174:
	fmul %f1,%f1,%f0
.L2172:
	srawi %r9,%r9,1
	addze. %r9,%r9
	beq- %cr0,.L2173
	andi. %r10,%r9,0x1
	fmul %f0,%f0,%f0
	bne- %cr0,.L2174
.L2178:
	srawi %r9,%r9,1
	addze %r9,%r9
	fmul %f0,%f0,%f0
	andi. %r10,%r9,0x1
	bne- %cr0,.L2174
	b .L2178
.L2173:
	cmpwi %cr1,%r3,0
	bgelr+ %cr1
	lfs %f2,.LC29@l(%r8)
	fdiv %f1,%f2,%f1
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
	andi. %r9,%r3,0x1
	lis %r8,.LC29@ha
	fmr %f0,%f1
	mr %r9,%r3
	lfs %f1,.LC29@l(%r8)
	beq- %cr0,.L2180
.L2182:
	fmuls %f1,%f1,%f0
.L2180:
	srawi %r9,%r9,1
	addze. %r9,%r9
	beq- %cr0,.L2181
	andi. %r10,%r9,0x1
	fmuls %f0,%f0,%f0
	bne- %cr0,.L2182
.L2186:
	srawi %r9,%r9,1
	addze %r9,%r9
	fmuls %f0,%f0,%f0
	andi. %r10,%r9,0x1
	bne- %cr0,.L2182
	b .L2186
.L2181:
	cmpwi %cr1,%r3,0
	bgelr+ %cr1
	lfs %f2,.LC29@l(%r8)
	fdivs %f1,%f2,%f1
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
	sldi %r3,%r3,32
	sldi %r5,%r5,32
	srdi %r10,%r3,32
	srdi %r9,%r5,32
	cmplw %cr0,%r10,%r9
	rldicl %r4,%r4,0,32
	rldicl %r6,%r6,0,32
	or %r0,%r4,%r3
	or %r7,%r6,%r5
	blt- %cr0,.L2189
	li %r3,2
	bgtlr- %cr0
	cmplw %cr1,%r0,%r7
	li %r3,0
	bltlr- %cr1
	mfcr %r8,64
	rlwinm %r8,%r8,6,1
	addi %r3,%r8,1
	blr
.L2189:
	li %r3,0
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
	sldi %r3,%r3,32
	sldi %r5,%r5,32
	srdi %r10,%r3,32
	srdi %r9,%r5,32
	cmplw %cr0,%r10,%r9
	rldicl %r4,%r4,0,32
	rldicl %r6,%r6,0,32
	or %r0,%r4,%r3
	or %r7,%r6,%r5
	blt- %cr0,.L2195
	li %r3,1
	bgtlr- %cr0
	cmplw %cr7,%r0,%r7
	cmplw %cr1,%r0,%r7
	li %r8,0
	li %r11,1
	li %r12,-1
	isel %r3,%r11,%r8,29
	isel %r3,%r12,%r3,4
	blr
.L2195:
	li %r3,-1
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
