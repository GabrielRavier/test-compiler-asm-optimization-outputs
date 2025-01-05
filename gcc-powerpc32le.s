	.file	"mini-libc.c"
	.machine power10
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
	lxv %vs7,0(%r4)
	stxv %vs7,0(%r10)
.L108:
	lxvx %vs8,%r4,%r9
	addi %r8,%r8,-1
	stxvx %vs8,%r10,%r9
	addi %r9,%r9,-16
.L107:
	addi %r8,%r8,-1
	lxvx %vs9,%r4,%r9
	stxvx %vs9,%r10,%r9
	addi %r9,%r9,-16
	cmpdi %cr5,%r8,0
	beq- %cr5,.L155
.L158:
	addi %r8,%r8,-4
	addi %r0,%r9,-16
	lxvx %vs10,%r4,%r9
	stxvx %vs10,%r10,%r9
	cmpdi %cr6,%r8,0
	addi %r6,%r9,-32
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r10,%r0
	addi %r7,%r9,-48
	lxvx %vs12,%r4,%r6
	addi %r9,%r9,-64
	stxvx %vs12,%r10,%r6
	lxvx %vs13,%r4,%r7
	stxvx %vs13,%r10,%r7
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
	lxv %vs0,0(%r4)
	stxv %vs0,0(%r3)
.L110:
	lxvx %vs1,%r4,%r11
	addi %r10,%r10,-1
	stxvx %vs1,%r3,%r11
	addi %r11,%r11,16
.L109:
	addi %r10,%r10,-1
	lxvx %vs2,%r4,%r11
	stxvx %vs2,%r3,%r11
	addi %r11,%r11,16
	cmpdi %cr5,%r10,0
	beq- %cr5,.L156
.L160:
	addi %r10,%r10,-4
	addi %r12,%r11,16
	lxvx %vs3,%r4,%r11
	stxvx %vs3,%r3,%r11
	cmpdi %cr6,%r10,0
	addi %r9,%r11,32
	lxvx %vs4,%r4,%r12
	stxvx %vs4,%r3,%r12
	addi %r0,%r11,48
	lxvx %vs5,%r4,%r9
	addi %r11,%r11,64
	stxvx %vs5,%r3,%r9
	lxvx %vs6,%r4,%r0
	stxvx %vs6,%r3,%r0
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
	lxv %vs45,0(%r10)
	li %r9,0
	beq- %cr0,.L318
	mr. %r8,%r11
	lxv %vs32,0(%r3)
	li %r9,16
	xxperm %vs32,%vs32,%vs45
	stxv %vs32,0(%r4)
	beq- %cr0,.L317
.L318:
	addi %r8,%r8,-2
	addi %r0,%r9,16
	lxvx %vs33,%r3,%r9
	xxperm %vs33,%vs33,%vs45
	cmpdi %cr5,%r8,0
	stxvx %vs33,%r4,%r9
	lxvx %vs0,%r3,%r0
	addi %r9,%r9,32
	xxperm %vs0,%vs0,%vs45
	stxvx %vs0,%r4,%r0
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
	ori %r3,%r3,0x20
	addi %r0,%r3,-97
	cmplwi %cr0,%r0,25
	setbcr %r3,1
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
	setbcr %r3,1
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
	setbc %r3,6
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
	setbc %r3,6
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
	addi %r3,%r3,-48
	cmplwi %cr0,%r3,9
	setbcr %r3,1
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
	addi %r3,%r3,-33
	cmplwi %cr0,%r3,93
	setbcr %r3,1
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
	addi %r3,%r3,-97
	cmplwi %cr0,%r3,25
	setbcr %r3,1
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
	addi %r3,%r3,-32
	cmplwi %cr0,%r3,94
	setbcr %r3,1
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
	cmplwi %cr1,%r3,4
	setbcr %r3,5
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
	addi %r3,%r3,-65
	cmplwi %cr0,%r3,25
	setbcr %r3,1
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
	paddi %r3,%r9,-65529
	cmplwi %cr6,%r3,2
	setbcr %r3,25
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
	addi %r3,%r3,-48
	cmplwi %cr0,%r3,9
	setbcr %r3,1
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
	paddi %r0,%r9,-57344
	cmplwi %cr6,%r0,8184
	blelr- %cr6
	pli %r3,1048579
	paddi %r8,%r9,-65532
	cmplw %cr7,%r8,%r3
	li %r3,0
	bgtlr- %cr7
	rlwinm %r4,%r9,0,16,30
	pli %r5,65534
	cmpw %cr0,%r4,%r5
	setbcr %r3,2
	blr
.L349:
	addi %r6,%r3,1
	rlwinm %r7,%r6,0,25,31
	cmplwi %cr1,%r7,32
	setbc %r3,5
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
	addi %r0,%r3,-97
	cmplwi %cr1,%r0,5
	setbcr %r3,5
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
	bun- %cr0,.L373
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L374
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L372
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr- %cr6
.L374:
	fmr %f1,%f0
	blr
.L372:
	xscmpgtdp %vs12,%vs2,%vs1
	xxsel %vs1,%vs1,%vs2,%vs12
	blr
.L373:
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
	bun- %cr0,.L379
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L380
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r9,%vs12
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs1
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L378
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr- %cr6
.L380:
	fmr %f1,%f0
	blr
.L378:
	xscmpgtdp %vs3,%vs2,%vs0
	xxsel %vs1,%vs0,%vs2,%vs3
	blr
.L379:
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
	bun- %cr0,.L389
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun- %cr1,.L388
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L384
	cmpwi %cr7,%r0,0
	bne- %cr7,.L389
.L388:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
.L384:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt- %cr6,.L389
	fmr %f11,%f2
	fmr %f10,%f1
.L389:
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
	bun- %cr0,.L393
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L392
	cmpwi %cr6,%r0,0
	bnelr- %cr6
.L393:
	fmr %f1,%f2
	blr
.L392:
	xsmincdp %vs1,%vs1,%vs2
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
	bun- %cr0,.L399
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r9,%vs0
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs3
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L398
	cmpwi %cr6,%r0,0
	bnelr- %cr6
.L399:
	fmr %f1,%f2
	blr
.L398:
	xsmincdp %vs1,%vs1,%vs2
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
	bun- %cr0,.L407
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr- %cr1
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L404
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L407:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
.L404:
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
	beq- %cr0,.L413
	lis %r7,.LANCHOR1@ha
	la %r3,.LANCHOR0@l(%r3)
	la %r4,.LANCHOR1@l(%r7)
	mr %r10,%r3
.L412:
	rlwinm %r8,%r9,0,26,31
	srwi. %r9,%r9,6
	lbzx %r0,%r4,%r8
	addi %r10,%r10,1
	stb %r0,-1(%r10)
	bne+ %cr0,.L412
	li %r5,0
	stb %r5,0(%r10)
	blr
.L413:
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
	lis %r9,.LANCHOR0@ha
	pli %r8,1481765933
	la %r4,.LANCHOR0@l(%r9)
	pli %r10,1284865837
	ld %r3,8(%r4)
	rldimi %r10,%r8,32,0
	mulld %r5,%r3,%r10
	addi %r0,%r5,1
	std %r0,8(%r4)
	srdi %r3,%r0,33
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
	beq- %cr0,.L423
	lwz %r9,0(%r4)
	stw %r4,4(%r3)
	stw %r9,0(%r3)
	stw %r3,0(%r4)
	lwz %r4,0(%r3)
	cmpwi %cr1,%r4,0
	beqlr- %cr1
	stw %r3,4(%r4)
	blr
.L423:
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
	beq- %cr0,.L425
	lwz %r10,4(%r3)
	stw %r10,4(%r9)
.L425:
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
	stw %r27,44(%r1)
	.cfi_register 65, 0
	.cfi_offset 27, -20
	lwz %r27,0(%r5)
	stw %r23,28(%r1)
	.cfi_offset 23, -36
	mr %r23,%r4
	cmpwi %cr0,%r27,0
	stw %r24,32(%r1)
	.cfi_offset 24, -32
	mr %r24,%r5
	stw %r28,48(%r1)
	.cfi_offset 28, -16
	mr %r28,%r3
	stw %r29,52(%r1)
	.cfi_offset 29, -12
	mr %r29,%r6
	stw %r0,68(%r1)
	stw %r25,36(%r1)
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	beq- %cr0,.L434
	stw %r26,40(%r1)
	.cfi_offset 26, -24
	mr %r26,%r7
	stw %r30,56(%r1)
	.cfi_offset 30, -8
	li %r30,0
	stw %r31,60(%r1)
	.cfi_offset 31, -4
	mr %r31,%r4
	b .L436
.L451:
	beq- %cr7,.L450
.L436:
	mr %r4,%r31
	mr %r3,%r28
	mtctr %r26
	mr %r25,%r31
	bctrl
	cmpwi %cr1,%r3,0
	addi %r30,%r30,1
	cmplw %cr7,%r27,%r30
	add %r31,%r31,%r29
	bne+ %cr1,.L451
	lwz %r26,40(%r1)
	.cfi_restore 26
	lwz %r30,56(%r1)
	.cfi_restore 30
	lwz %r31,60(%r1)
	.cfi_restore 31
.L433:
	lwz %r4,68(%r1)
	mr %r3,%r25
	lwz %r23,28(%r1)
	lwz %r24,32(%r1)
	mtlr %r4
	.cfi_restore 65
	lwz %r25,36(%r1)
	lwz %r27,44(%r1)
	lwz %r28,48(%r1)
	lwz %r29,52(%r1)
	addi %r1,%r1,64
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L450:
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
	lwz %r26,40(%r1)
	.cfi_restore 26
	lwz %r30,56(%r1)
	.cfi_restore 30
	lwz %r31,60(%r1)
	.cfi_restore 31
.L434:
	cmpwi %cr5,%r29,0
	addi %r9,%r27,1
	maddld %r25,%r29,%r27,%r23
	stw %r9,0(%r24)
	beq- %cr5,.L433
	mr %r4,%r28
	mr %r5,%r29
	mr %r3,%r25
	bl memmove
	lwz %r4,68(%r1)
	mr %r3,%r25
	lwz %r23,28(%r1)
	lwz %r24,32(%r1)
	mtlr %r4
	.cfi_restore 65
	lwz %r25,36(%r1)
	lwz %r27,44(%r1)
	lwz %r28,48(%r1)
	lwz %r29,52(%r1)
	addi %r1,%r1,64
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 25
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
	beq- %cr0,.L453
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
	b .L455
.L466:
	beq- %cr7,.L465
.L455:
	mr %r4,%r31
	mr %r3,%r29
	mtctr %r27
	mr %r25,%r31
	bctrl
	cmpwi %cr1,%r3,0
	addi %r30,%r30,1
	cmplw %cr7,%r26,%r30
	add %r31,%r31,%r28
	bne+ %cr1,.L466
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
.L465:
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
.L453:
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
.L475:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L469
	ble- %cr7,.L469
	cmpwi %cr1,%r10,43
	beq- %cr1,.L470
	cmpwi %cr6,%r10,45
	bne- %cr6,.L490
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L480
	li %r6,1
.L473:
	li %r0,0
.L477:
	addi %r7,%r10,-48
	lbzu %r10,1(%r3)
	slwi %r11,%r0,2
	add %r12,%r11,%r0
	addi %r8,%r10,-48
	slwi %r9,%r12,1
	cmplwi %cr1,%r8,9
	subf %r0,%r7,%r9
	ble+ %cr1,.L477
	cmpwi %cr5,%r6,0
	subf %r3,%r9,%r7
	isel %r3,%r3,%r0,22
	blr
.L469:
	addi %r3,%r3,1
	b .L475
.L490:
	addi %r5,%r10,-48
	li %r6,0
	cmplwi %cr7,%r5,9
	ble+ %cr7,.L473
.L480:
	li %r3,0
	blr
.L470:
	lbz %r10,1(%r3)
	li %r6,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L473
	b .L480
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L496:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L492
	ble- %cr7,.L492
	cmpwi %cr1,%r10,43
	beq- %cr1,.L493
	cmpwi %cr6,%r10,45
	beq- %cr6,.L494
	addi %r5,%r10,-48
	li %r6,0
	cmplwi %cr7,%r5,9
	bgt- %cr7,.L503
.L497:
	li %r0,0
.L500:
	addi %r7,%r10,-48
	lbzu %r10,1(%r3)
	slwi %r11,%r0,2
	add %r12,%r11,%r0
	addi %r8,%r10,-48
	slwi %r9,%r12,1
	cmplwi %cr1,%r8,9
	subf %r0,%r7,%r9
	ble+ %cr1,.L500
	cmpwi %cr5,%r6,0
	subf %r3,%r9,%r7
	isel %r3,%r3,%r0,22
	blr
.L492:
	addi %r3,%r3,1
	b .L496
.L494:
	lbz %r10,1(%r3)
	li %r6,1
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	ble+ %cr0,.L497
.L503:
	li %r3,0
	blr
.L493:
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	bgt- %cr5,.L503
	li %r6,0
	b .L497
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L520:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq- %cr0,.L514
	ble- %cr7,.L514
	cmpwi %cr1,%r9,43
	beq- %cr1,.L515
	cmpwi %cr6,%r9,45
	bne- %cr6,.L535
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r9,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L525
	li %r7,1
.L518:
	li %r5,0
.L522:
	addi %r11,%r9,-48
	lbzu %r9,1(%r3)
	sldi %r12,%r5,2
	add %r0,%r12,%r5
	extsw %r10,%r11
	addi %r8,%r9,-48
	sldi %r4,%r0,1
	cmplwi %cr1,%r8,9
	subf %r5,%r10,%r4
	ble+ %cr1,.L522
	cmpwi %cr5,%r7,0
	subf %r3,%r4,%r10
	isel %r6,%r3,%r5,22
.L513:
	srdi %r4,%r6,32
	mr %r3,%r6
	blr
.L514:
	addi %r3,%r3,1
	b .L520
.L535:
	addi %r5,%r9,-48
	li %r7,0
	cmplwi %cr7,%r5,9
	ble+ %cr7,.L518
.L525:
	li %r6,0
	b .L513
.L515:
	lbz %r9,1(%r3)
	li %r7,0
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L518
	li %r6,0
	b .L513
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
	stw %r29,36(%r1)
	.cfi_offset 29, -12
	beq- %cr0,.L537
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
	stw %r30,40(%r1)
	.cfi_offset 30, -8
	b .L540
.L549:
	beq- %cr1,.L547
	cmpwi %cr5,%r31,0
	add %r28,%r29,%r27
	beq- %cr5,.L548
.L540:
	srwi %r30,%r31,1
	mr %r3,%r26
	maddld %r29,%r30,%r27,%r28
	mtctr %r25
	mr %r4,%r29
	bctrl
	cmpwi %cr1,%r3,0
	addi %r31,%r31,-1
	subf %r31,%r30,%r31
	bge+ %cr1,.L549
	mr %r31,%r30
	cmpwi %cr5,%r31,0
	bne+ %cr5,.L540
.L548:
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
	lwz %r30,40(%r1)
	.cfi_restore 30
	lwz %r31,44(%r1)
	.cfi_restore 31
.L537:
	li %r29,0
	mr %r3,%r29
	lwz %r29,36(%r1)
	addi %r1,%r1,48
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L547:
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
	mr %r3,%r29
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
	lwz %r30,40(%r1)
	.cfi_restore 30
	lwz %r31,44(%r1)
	.cfi_restore 31
	lwz %r29,36(%r1)
	addi %r1,%r1,48
	.cfi_restore 29
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
	stw %r29,36(%r1)
	.cfi_offset 29, -12
	beq- %cr0,.L555
	mflr %r0
	.cfi_register 65, 0
	stw %r30,40(%r1)
	.cfi_offset 30, -8
	stw %r0,52(%r1)
	.cfi_offset 65, 4
.L563:
	srawi %r30,%r31,1
	mr %r5,%r24
	maddld %r29,%r30,%r27,%r28
	mr %r3,%r26
	mtctr %r25
	mr %r4,%r29
	bctrl
	cmpwi %cr7,%r3,0
	addi %r31,%r31,-1
	srawi. %r31,%r31,1
	beq- %cr7,.L567
.L569:
	cmpwi %cr5,%r30,0
	ble- %cr7,.L553
	add %r28,%r29,%r27
	bne+ %cr0,.L563
.L568:
	lwz %r0,52(%r1)
	lwz %r30,40(%r1)
	.cfi_restore 30
	mtlr %r0
	.cfi_restore 65
.L555:
	li %r29,0
	lwz %r24,16(%r1)
	mr %r3,%r29
	lwz %r25,20(%r1)
	lwz %r26,24(%r1)
	lwz %r27,28(%r1)
	lwz %r28,32(%r1)
	lwz %r29,36(%r1)
	lwz %r31,44(%r1)
	addi %r1,%r1,48
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	blr
.L553:
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
	mr %r31,%r30
	beq- %cr5,.L568
	srawi %r30,%r31,1
	mr %r5,%r24
	maddld %r29,%r30,%r27,%r28
	mr %r3,%r26
	mtctr %r25
	mr %r4,%r29
	bctrl
	cmpwi %cr7,%r3,0
	addi %r31,%r31,-1
	srawi. %r31,%r31,1
	bne+ %cr7,.L569
.L567:
	lwz %r3,52(%r1)
	lwz %r30,40(%r1)
	.cfi_restore 30
	lwz %r24,16(%r1)
	mtlr %r3
	.cfi_restore 65
	mr %r3,%r29
	lwz %r25,20(%r1)
	lwz %r26,24(%r1)
	lwz %r27,28(%r1)
	lwz %r28,32(%r1)
	lwz %r29,36(%r1)
	lwz %r31,44(%r1)
	addi %r1,%r1,48
	.cfi_restore 31
	.cfi_restore 29
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	sradi %r5,%r0,63
	xor %r6,%r5,%r0
	subf %r7,%r5,%r6
	srdi %r4,%r7,32
	mr %r3,%r7
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
	rldicl %r5,%r5,0,32
	sldi %r6,%r6,32
	rldicl %r7,%r7,0,32
	sldi %r8,%r8,32
	or %r0,%r5,%r6
	or %r4,%r7,%r8
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	sradi %r5,%r0,63
	xor %r6,%r5,%r0
	subf %r7,%r5,%r6
	srdi %r4,%r7,32
	mr %r3,%r7
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
	rldicl %r5,%r5,0,32
	sldi %r6,%r6,32
	rldicl %r7,%r7,0,32
	sldi %r8,%r8,32
	or %r0,%r5,%r6
	or %r4,%r7,%r8
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
	beq- %cr0,.L581
.L578:
	cmpw %cr1,%r4,%r9
	beqlr- %cr1
	lwzu %r9,4(%r3)
	cmpwi %cr5,%r9,0
	bne+ %cr5,.L578
.L581:
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
	beq+ %cr0,.L588
	b .L587
.L589:
	lwzu %r9,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r9,%r0
	bne- %cr0,.L587
.L588:
	cmpwi %cr7,%r9,0
	bne+ %cr7,.L589
.L587:
	li %r4,-1
	setbc %r3,1
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
.L593:
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	beqlr- %cr0
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	bne+ %cr0,.L593
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
	beq- %cr0,.L599
	mr %r4,%r3
.L598:
	lwzu %r10,4(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L598
	subf %r3,%r3,%r4
	srawi %r3,%r3,2
	blr
.L599:
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
	bne+ %cr0,.L602
	b .L610
.L613:
	beq- %cr7,.L604
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L610
.L602:
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpwi %cr7,%r9,0
	cmpw %cr1,%r9,%r10
	beq+ %cr1,.L613
.L604:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	blt- %cr5,.L614
	setbc %r3,21
	blr
.L614:
	li %r3,-1
	blr
.L610:
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
	beq- %cr0,.L619
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L636
.L622:
	srwi %r0,%r5,1
	mtctr %r0
.L616:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,4
	bdnz .L616
.L619:
	li %r3,0
	blr
.L636:
	lwz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpwi %cr5,%r9,0
	addi %r3,%r3,4
	bne+ %cr5,.L622
	b .L619
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
	beq- %cr0,.L643
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L658
.L646:
	srwi %r0,%r5,1
	mtctr %r0
	b .L638
.L640:
	lwz %r12,4(%r3)
	addi %r3,%r7,4
	lwz %r9,4(%r4)
	addi %r4,%r6,4
	cmpw %cr1,%r12,%r9
	bne- %cr1,.L655
	bdz .L643
.L638:
	lwz %r5,0(%r3)
	addi %r7,%r3,4
	addi %r6,%r4,4
	lwz %r11,0(%r4)
	cmpw %cr1,%r5,%r11
	beq+ %cr1,.L640
.L655:
	li %r4,-1
	setbc %r3,5
	isel %r3,%r4,%r3,4
	blr
.L658:
	lwz %r8,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r8,%r10
	bne- %cr1,.L655
	cmpwi %cr5,%r9,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne+ %cr5,.L646
.L643:
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
	beq- %cr0,.L660
	mflr %r0
	.cfi_register 65, 0
	slwi %r5,%r5,2
	stw %r0,36(%r1)
	.cfi_offset 65, 4
	bl memcpy
	lwz %r0,36(%r1)
	mtlr %r0
	.cfi_restore 65
.L660:
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
	bge- %cr1,.L760
	cmpwi %cr7,%r5,0
	beqlr- %cr7
	cmplwi %cr1,%r0,4
	ble- %cr1,.L670
	addi %r6,%r9,-4
	addi %r10,%r9,-8
	add %r11,%r3,%r6
	add %r7,%r4,%r10
	subf %r12,%r7,%r11
	addi %r8,%r12,8
	cmplwi %cr5,%r8,8
	ble- %cr5,.L670
	rldicl %r8,%r5,62,34
	addi %r9,%r9,-16
	andi. %r6,%r8,0x3
	add %r7,%r4,%r9
	add %r12,%r3,%r9
	addi %r11,%r8,-1
	li %r10,0
	beq- %cr0,.L751
	cmpdi %cr6,%r6,1
	beq- %cr6,.L725
	cmpdi %cr7,%r6,2
	beq- %cr7,.L726
	mr %r8,%r11
	li %r10,-16
	lxv %vs7,0(%r7)
	stxv %vs7,0(%r12)
.L726:
	lxvx %vs8,%r7,%r10
	addi %r8,%r8,-1
	stxvx %vs8,%r12,%r10
	addi %r10,%r10,-16
.L725:
	addi %r8,%r8,-1
	lxvx %vs9,%r7,%r10
	stxvx %vs9,%r12,%r10
	addi %r10,%r10,-16
	cmpdi %cr1,%r8,0
	beq- %cr1,.L748
.L751:
	addi %r8,%r8,-4
	addi %r9,%r10,-16
	lxvx %vs10,%r7,%r10
	stxvx %vs10,%r12,%r10
	cmpdi %cr5,%r8,0
	addi %r11,%r10,-32
	lxvx %vs11,%r7,%r9
	stxvx %vs11,%r12,%r9
	addi %r6,%r10,-48
	lxvx %vs12,%r7,%r11
	addi %r10,%r10,-64
	stxvx %vs12,%r12,%r11
	lxvx %vs13,%r7,%r6
	stxvx %vs13,%r12,%r6
	bne+ %cr5,.L751
.L748:
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
.L760:
	cmpwi %cr5,%r5,0
	beqlr- %cr5
	cmplwi %cr6,%r0,3
	ble- %cr6,.L676
	addi %r6,%r4,4
	subf %r7,%r6,%r3
	cmplwi %cr7,%r7,8
	ble- %cr7,.L676
	rldicl %r12,%r5,62,34
	li %r9,0
	andi. %r8,%r12,0x3
	addi %r11,%r12,-1
	beq- %cr0,.L753
	cmpdi %cr1,%r8,1
	beq- %cr1,.L727
	cmpdi %cr5,%r8,2
	beq- %cr5,.L728
	mr %r12,%r11
	li %r9,16
	lxv %vs0,0(%r4)
	stxv %vs0,0(%r3)
.L728:
	lxvx %vs1,%r4,%r9
	addi %r12,%r12,-1
	stxvx %vs1,%r3,%r9
	addi %r9,%r9,16
.L727:
	addi %r12,%r12,-1
	lxvx %vs2,%r4,%r9
	stxvx %vs2,%r3,%r9
	addi %r9,%r9,16
	cmpdi %cr6,%r12,0
	beq- %cr6,.L749
.L753:
	addi %r12,%r12,-4
	addi %r10,%r9,16
	lxvx %vs3,%r4,%r9
	stxvx %vs3,%r3,%r9
	cmpdi %cr7,%r12,0
	addi %r6,%r9,32
	lxvx %vs4,%r4,%r10
	stxvx %vs4,%r3,%r10
	addi %r7,%r9,48
	lxvx %vs5,%r4,%r6
	addi %r9,%r9,64
	stxvx %vs5,%r3,%r6
	lxvx %vs6,%r4,%r7
	stxvx %vs6,%r3,%r7
	bne+ %cr7,.L753
.L749:
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
.L670:
	rldicl %r5,%r5,0,32
	add %r11,%r4,%r9
	andi. %r10,%r5,0x1
	add %r9,%r3,%r9
	addi %r6,%r5,-1
	beq- %cr0,.L750
	mr. %r5,%r6
	lwzu %r7,-4(%r11)
	stwu %r7,-4(%r9)
	beqlr- %cr0
.L750:
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
	bne+ %cr1,.L750
	blr
.L676:
	rldicl %r5,%r5,0,32
	addi %r11,%r4,-4
	andi. %r10,%r5,0x1
	addi %r6,%r5,-1
	addi %r12,%r3,-4
	beq- %cr0,.L752
	mr. %r5,%r6
	lwz %r7,0(%r4)
	mr %r11,%r4
	mr %r12,%r3
	stw %r7,0(%r3)
	beqlr- %cr0
.L752:
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
	bne+ %cr6,.L752
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
	addi %r8,%r5,-1
	beqlr- %cr0
	cmplwi %cr1,%r8,2
	ble- %cr1,.L766
	rldicl %r10,%r5,62,34
	mr %r11,%r3
	mtvsrws %vs0,%r4
	andi. %r7,%r10,0x3
	addi %r6,%r10,-1
	beq- %cr0,.L796
	cmpdi %cr5,%r7,1
	beq- %cr5,.L785
	cmpdi %cr6,%r7,2
	beq- %cr6,.L786
	mr %r10,%r6
	addi %r11,%r3,16
	stxv %vs0,0(%r3)
.L786:
	stxv %vs0,0(%r11)
	addi %r10,%r10,-1
	addi %r11,%r11,16
.L785:
	addi %r10,%r10,-1
	stxv %vs0,0(%r11)
	addi %r11,%r11,16
	cmpdi %cr7,%r10,0
	beq- %cr7,.L795
.L796:
	addi %r10,%r10,-4
	stxv %vs0,0(%r11)
	stxv %vs0,16(%r11)
	stxv %vs0,32(%r11)
	cmpdi %cr1,%r10,0
	stxv %vs0,48(%r11)
	addi %r11,%r11,64
	bne+ %cr1,.L796
.L795:
	andi. %r9,%r5,0x3
	beqlr- %cr0
	rlwinm %r5,%r5,0,0,29
	slwi %r0,%r5,2
	subf %r8,%r5,%r8
	add %r9,%r3,%r0
.L763:
	cmpwi %cr5,%r8,0
	stw %r4,0(%r9)
	beqlr- %cr5
	cmplwi %cr6,%r8,1
	stw %r4,4(%r9)
	beqlr- %cr6
	stw %r4,8(%r9)
	blr
.L766:
	mr %r9,%r3
	b .L763
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
	bge- %cr0,.L799
	cmpwi %cr1,%r5,0
	add %r12,%r3,%r5
	add %r11,%r4,%r5
	beqlr- %cr1
	addi %r7,%r5,-1
	cmplwi %cr5,%r7,14
	ble- %cr5,.L801
	addi %r0,%r5,-2
	add %r10,%r4,%r7
	add %r9,%r3,%r0
	subf %r6,%r9,%r10
	addi %r8,%r6,14
	cmplwi %cr6,%r8,14
	ble- %cr6,.L801
	rldicl %r10,%r5,60,36
	addi %r0,%r5,-16
	andi. %r7,%r10,0x3
	addi %r6,%r10,-1
	add %r3,%r3,%r0
	add %r4,%r4,%r0
	li %r9,0
	beq- %cr0,.L955
	cmpdi %cr7,%r7,1
	beq- %cr7,.L904
	cmpdi %cr1,%r7,2
	beq- %cr1,.L905
	mr %r10,%r6
	li %r9,-16
	lxv %vs7,0(%r3)
	stxv %vs7,0(%r4)
.L905:
	lxvx %vs8,%r3,%r9
	addi %r10,%r10,-1
	stxvx %vs8,%r4,%r9
	addi %r9,%r9,-16
.L904:
	addi %r10,%r10,-1
	lxvx %vs9,%r3,%r9
	stxvx %vs9,%r4,%r9
	addi %r9,%r9,-16
	cmpdi %cr5,%r10,0
	beq- %cr5,.L952
.L955:
	addi %r10,%r10,-4
	addi %r8,%r9,-16
	lxvx %vs10,%r3,%r9
	stxvx %vs10,%r4,%r9
	cmpdi %cr6,%r10,0
	addi %r0,%r9,-32
	lxvx %vs11,%r3,%r8
	stxvx %vs11,%r4,%r8
	addi %r7,%r9,-48
	lxvx %vs12,%r3,%r0
	addi %r9,%r9,-64
	stxvx %vs12,%r4,%r0
	lxvx %vs13,%r3,%r7
	stxvx %vs13,%r4,%r7
	bne+ %cr6,.L955
.L952:
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
.L799:
	beqlr- %cr0
	cmpwi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r5,-1
	cmplwi %cr5,%r9,14
	ble- %cr5,.L806
	addi %r0,%r3,1
	subf %r6,%r0,%r4
	cmplwi %cr6,%r6,14
	ble- %cr6,.L806
	rldicl %r10,%r5,60,36
	li %r11,0
	andi. %r8,%r10,0x3
	addi %r7,%r10,-1
	beq- %cr0,.L957
	cmpdi %cr7,%r8,1
	beq- %cr7,.L906
	cmpdi %cr1,%r8,2
	beq- %cr1,.L907
	mr %r10,%r7
	li %r11,16
	lxv %vs0,0(%r3)
	stxv %vs0,0(%r4)
.L907:
	lxvx %vs1,%r3,%r11
	addi %r10,%r10,-1
	stxvx %vs1,%r4,%r11
	addi %r11,%r11,16
.L906:
	addi %r10,%r10,-1
	lxvx %vs2,%r3,%r11
	stxvx %vs2,%r4,%r11
	addi %r11,%r11,16
	cmpdi %cr5,%r10,0
	beq- %cr5,.L953
.L957:
	addi %r10,%r10,-4
	addi %r12,%r11,16
	lxvx %vs3,%r3,%r11
	stxvx %vs3,%r4,%r11
	cmpdi %cr6,%r10,0
	addi %r9,%r11,32
	lxvx %vs4,%r3,%r12
	stxvx %vs4,%r4,%r12
	addi %r0,%r11,48
	lxvx %vs5,%r3,%r9
	addi %r11,%r11,64
	stxvx %vs5,%r4,%r9
	lxvx %vs6,%r3,%r0
	stxvx %vs6,%r4,%r0
	bne+ %cr6,.L957
.L953:
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
.L801:
	rldicl %r6,%r5,0,32
	andi. %r9,%r6,0x1
	addi %r0,%r6,-1
	beq- %cr0,.L954
	mr. %r6,%r0
	lbzu %r7,-1(%r12)
	stbu %r7,-1(%r11)
	beqlr- %cr0
.L954:
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
	bne+ %cr7,.L954
	blr
.L806:
	rldicl %r5,%r5,0,32
	addi %r12,%r3,-1
	andi. %r9,%r5,0x1
	addi %r11,%r5,-1
	addi %r9,%r4,-1
	beq- %cr0,.L956
	mr. %r5,%r11
	lbz %r0,0(%r3)
	mr %r12,%r3
	mr %r9,%r4
	stb %r0,0(%r4)
	beqlr- %cr0
.L956:
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
	bne+ %cr7,.L956
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	rotld %r5,%r0,%r5
	srdi %r4,%r5,32
	mr %r3,%r5
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	subfic %r5,%r5,64
	rotld %r6,%r0,%r5
	srdi %r4,%r6,32
	mr %r3,%r6
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
	brh %r3,%r3
	rlwinm %r3,%r3,0,0xffff
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
	brw %r3,%r3
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	brd %r5,%r0
	srdi %r4,%r5,32
	mr %r3,%r5
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
	b .L979
.L977:
	addi %r9,%r9,1
	bne- %cr0,.L983
	bdz .L987
.L979:
	srw %r8,%r3,%r9
	addi %r9,%r9,1
	rldicl %r4,%r8,0,63
	srw %r0,%r3,%r9
	cmpdi %cr7,%r4,0
	andi. %r10,%r0,0x1
	beq+ %cr7,.L977
.L983:
	mr %r3,%r9
	blr
.L987:
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
	beq- %cr0,.L991
	andi. %r3,%r3,0x1
	bnelr- %cr0
	li %r3,1
.L990:
	srawi %r9,%r9,1
	addi %r3,%r3,1
	andi. %r10,%r9,0x1
	bnelr- %cr0
	srawi %r9,%r9,1
	addi %r3,%r3,1
	andi. %r10,%r9,0x1
	beq+ %cr0,.L990
	blr
.L991:
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
	xxspltidp %vs0,4286578687
	fcmpu %cr0,%f1,%f0
	li %r3,1
	bltlr- %cr0
	xxspltidp %vs2,2139095039
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
	lis %r9,.LC2@ha
	li %r3,1
	lfd %f0,.LC2@l(%r9)
	fcmpu %cr0,%f1,%f0
	bltlr- %cr0
	lis %r3,.LC3@ha
	lfd %f2,.LC3@l(%r3)
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
	lis %r9,.LC6@ha
	fmr %f0,%f1
	la %r3,.LC6@l(%r9)
	fmr %f1,%f2
	lfd %f12,0(%r3)
	lfd %f13,8(%r3)
	li %r3,1
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	bltlr- %cr0
	lis %r4,.LC7@ha
	la %r5,.LC7@l(%r4)
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
	xxspltidp %vs2,1073741824
	bge+ %cr5,.L1007
	xxspltidp %vs2,1056964608
.L1007:
	andi. %r9,%r3,0x1
	beq- %cr0,.L1008
.L1009:
	fmuls %f1,%f1,%f2
.L1008:
	srawi %r3,%r3,1
	addze. %r3,%r3
	beqlr- %cr0
	andi. %r9,%r3,0x1
	fmuls %f2,%f2,%f2
	bne- %cr0,.L1009
.L1018:
	srawi %r3,%r3,1
	addze %r3,%r3
	fmuls %f2,%f2,%f2
	andi. %r9,%r3,0x1
	bne- %cr0,.L1009
	b .L1018
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
	xxspltidp %vs2,1073741824
	bge+ %cr5,.L1021
	xxspltidp %vs2,1056964608
.L1021:
	andi. %r9,%r3,0x1
	beq- %cr0,.L1022
.L1023:
	fmul %f1,%f1,%f2
.L1022:
	srawi %r3,%r3,1
	addze. %r3,%r3
	beqlr- %cr0
	andi. %r9,%r3,0x1
	fmul %f2,%f2,%f2
	bne- %cr0,.L1023
.L1032:
	srawi %r3,%r3,1
	addze %r3,%r3
	fmul %f2,%f2,%f2
	andi. %r9,%r3,0x1
	bne- %cr0,.L1023
	b .L1032
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
	bun- %cr0,.L1034
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
	beq- %cr1,.L1049
	cmpwi %cr5,%r31,0
	stfd %f30,48(%r1)
	.cfi_offset 62, -16
	stfd %f31,56(%r1)
	.cfi_offset 63, -8
	blt- %cr5,.L1050
	lis %r9,.LC10@ha
	la %r3,.LC10@l(%r9)
	lfd %f30,0(%r3)
	lfd %f31,8(%r3)
.L1035:
	andi. %r9,%r31,0x1
	beq- %cr0,.L1036
.L1037:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul
	fmr %f29,%f2
	fmr %f28,%f1
.L1036:
	srawi %r31,%r31,1
	addze. %r31,%r31
	beq- %cr0,.L1048
	fmr %f3,%f30
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	andi. %r9,%r31,0x1
	fmr %f31,%f2
	fmr %f30,%f1
	bne- %cr0,.L1037
.L1051:
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
	bne- %cr0,.L1037
	b .L1051
.L1048:
	lfd %f30,48(%r1)
	.cfi_restore 62
	lfd %f31,56(%r1)
	.cfi_restore 63
.L1049:
	lwz %r0,68(%r1)
	lwz %r31,28(%r1)
	.cfi_restore 31
	mtlr %r0
	.cfi_restore 65
.L1034:
	fmr %f1,%f28
	lfd %f28,32(%r1)
	fmr %f2,%f29
	lfd %f29,40(%r1)
	addi %r1,%r1,64
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L1050:
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -36
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	lis %r4,.LC11@ha
	la %r5,.LC11@l(%r4)
	lfd %f30,0(%r5)
	lfd %f31,8(%r5)
	b .L1035
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
	ble- %cr1,.L1057
	rldicl %r8,%r5,60,36
	li %r7,0
	andi. %r10,%r8,0x1
	addi %r10,%r8,-1
	beq- %cr0,.L1113
	mr. %r8,%r10
	lxv %vs0,0(%r3)
	lxv %vs12,0(%r4)
	li %r7,16
	xxlxor %vs1,%vs0,%vs12
	stxv %vs1,0(%r3)
	beq- %cr0,.L1112
.L1113:
	addi %r8,%r8,-2
	addi %r0,%r7,16
	lxvx %vs2,%r3,%r7
	lxvx %vs3,%r4,%r7
	cmpdi %cr5,%r8,0
	xxlxor %vs4,%vs2,%vs3
	lxvx %vs6,%r4,%r0
	stxvx %vs4,%r3,%r7
	addi %r7,%r7,32
	lxvx %vs5,%r3,%r0
	xxlxor %vs7,%vs5,%vs6
	stxvx %vs7,%r3,%r0
	bne+ %cr5,.L1113
.L1112:
	andi. %r9,%r5,0xf
	rlwinm %r11,%r5,0,0,27
	add %r4,%r4,%r11
	add %r6,%r3,%r11
	subf %r5,%r11,%r5
	beqlr- %cr0
.L1054:
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
.L1057:
	mr %r6,%r3
	b .L1054
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
	beq- %cr0,.L1116
.L1117:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1117
.L1116:
	cmpwi %cr5,%r5,0
	beq- %cr5,.L1118
	andi. %r10,%r5,0x1
	addi %r12,%r4,-1
	addi %r7,%r5,-1
	bne- %cr0,.L1141
.L1129:
	srwi %r0,%r5,1
	mtctr %r0
.L1119:
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
	bdnz .L1119
.L1118:
	li %r6,0
	stb %r6,0(%r9)
	blr
.L1141:
	lbz %r8,0(%r4)
	mr %r12,%r4
	rlwinm %r6,%r8,0,0xff
	stb %r8,0(%r9)
	cmpwi %cr6,%r6,0
	beqlr- %cr6
	cmpwi %cr7,%r7,0
	addi %r9,%r9,1
	bne+ %cr7,.L1129
	b .L1118
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
	beq- %cr0,.L1154
	cmpwi %cr1,%r8,1
	beq- %cr1,.L1165
	cmpwi %cr5,%r8,2
	beq- %cr5,.L1166
	lbz %r0,0(%r9)
	cmpwi %cr6,%r0,0
	beqlr+ %cr6
	li %r3,1
.L1166:
	lbzx %r5,%r9,%r3
	cmpwi %cr7,%r5,0
	beqlr+ %cr7
	addi %r3,%r3,1
.L1165:
	lbzx %r6,%r9,%r3
	cmpwi %cr0,%r6,0
	beqlr+ %cr0
	addi %r3,%r3,1
	cmplw %cr1,%r4,%r3
	beqlr- %cr1
.L1154:
	srwi %r10,%r10,2
.L1143:
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
	bne+ %cr1,.L1143
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
	beq- %cr0,.L1180
.L1176:
	mr %r10,%r4
	b .L1179
.L1178:
	beqlr- %cr7
.L1179:
	lbzu %r9,1(%r10)
	cmpwi %cr1,%r9,0
	cmpw %cr7,%r9,%r8
	bne+ %cr1,.L1178
	lbzu %r8,1(%r3)
	cmpwi %cr5,%r8,0
	bne+ %cr5,.L1176
.L1180:
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
.L1186:
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
	bne+ %cr0,.L1186
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
	beq- %cr0,.L1202
	mr %r9,%r4
.L1191:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1191
	subf. %r6,%r4,%r9
	mr %r3,%r8
	beqlr- %cr0
	addi %r3,%r6,-1
	b .L1210
.L1213:
	cmpwi %cr6,%r12,0
	addi %r8,%r8,1
	beq- %cr6,.L1212
.L1210:
	lbz %r12,0(%r8)
	cmpw %cr5,%r12,%r5
	bne+ %cr5,.L1213
	addi %r0,%r3,1
	mr %r6,%r4
	mr %r10,%r11
	mr %r7,%r8
	mtctr %r0
	b .L1193
.L1215:
	bdz .L1195
	bne- %cr7,.L1196
	lbzu %r12,1(%r7)
	cmpwi %cr1,%r12,0
	beq- %cr1,.L1214
	lbzu %r10,1(%r6)
.L1193:
	andi. %r9,%r10,0xff
	cmpw %cr7,%r9,%r12
	bne+ %cr0,.L1215
.L1196:
	addi %r8,%r8,1
	b .L1210
.L1212:
	li %r3,0
	blr
.L1214:
	lbz %r9,1(%r6)
.L1195:
	cmpw %cr5,%r12,%r9
	bne+ %cr5,.L1196
.L1202:
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
	blt- %cr0,.L1226
	bnglr- %cr0
	fcmpu %cr1,%f2,%f0
	bnllr+ %cr1
	fneg %f1,%f1
	blr
.L1226:
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
	blt- %cr1,.L1235
	subf %r4,%r6,%r4
	add %r0,%r3,%r4
	cmplw %cr5,%r3,%r0
	bgt- %cr5,.L1235
	cmplwi %cr7,%r6,1
	lbz %r12,0(%r5)
	addi %r11,%r3,-1
	b .L1232
.L1229:
	cmplw %cr1,%r0,%r9
	blt- %cr1,.L1235
.L1232:
	lbzu %r10,1(%r11)
	mr %r3,%r9
	addi %r9,%r9,1
	cmpw %cr6,%r10,%r12
	bne+ %cr6,.L1229
	beqlr- %cr7
	subf %r8,%r11,%r9
	mr %r7,%r5
	add %r4,%r8,%r6
	mr %r8,%r11
	addi %r10,%r4,-2
	mtctr %r10
.L1230:
	lbzu %r4,1(%r8)
	lbzu %r10,1(%r7)
	cmpw %cr0,%r4,%r10
	bne- %cr0,.L1229
	bdnz .L1230
	blr
.L1235:
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
	beq- %cr0,.L1244
	mflr %r0
	.cfi_register 65, 0
	stw %r0,36(%r1)
	.cfi_offset 65, 4
	bl memmove
	lwz %r0,36(%r1)
	mtlr %r0
	.cfi_restore 65
.L1244:
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
	blt- %cr7,.L1272
	xxspltidp %vs2,1065353216
	fcmpu %cr0,%f1,%f2
	li %r10,0
	cror 2,1,2
	bne- %cr0,.L1273
.L1252:
	li %r4,0
	xxspltidp %vs7,1056964608
	xxspltidp %vs8,1065353216
.L1258:
	fmul %f1,%f1,%f7
	addi %r4,%r4,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq+ %cr0,.L1258
	cmpwi %cr1,%r10,0
	stw %r4,0(%r3)
	beqlr- %cr1
.L1275:
	fneg %f1,%f1
	blr
.L1273:
	xxspltidp %vs3,1056964608
	fcmpu %cr1,%f1,%f3
	bnl- %cr1,.L1255
	bne- %cr7,.L1264
.L1255:
	li %r9,0
	stw %r9,0(%r3)
	blr
.L1272:
	xxspltidp %vs5,3212836864
	fcmpu %cr5,%f1,%f5
	fneg %f4,%f1
	cror 22,20,22
	bne- %cr5,.L1274
	fmr %f1,%f4
	li %r10,1
	b .L1252
.L1274:
	xxspltidp %vs12,3204448256
	fcmpu %cr6,%f1,%f12
	bng- %cr6,.L1255
	li %r10,1
.L1253:
	fmr %f1,%f4
	li %r4,0
	xxspltidp %vs6,1056964608
.L1260:
	fadd %f1,%f1,%f1
	addi %r4,%r4,-1
	fcmpu %cr7,%f1,%f6
	blt+ %cr7,.L1260
	cmpwi %cr1,%r10,0
	stw %r4,0(%r3)
	bne+ %cr1,.L1275
	blr
.L1264:
	fmr %f4,%f1
	b .L1253
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	rldicl %r5,%r5,0,32
	cmpdi %cr0,%r0,0
	sldi %r6,%r6,32
	li %r10,0
	or %r11,%r5,%r6
	beq- %cr0,.L1276
.L1278:
	rldicl %r9,%r0,0,63
	srdi %r0,%r0,1
	cmpdi %cr1,%r0,0
	neg %r7,%r9
	and %r8,%r7,%r11
	sldi %r11,%r11,1
	add %r10,%r10,%r8
	bne+ %cr1,.L1278
.L1276:
	srdi %r4,%r10,32
	mr %r3,%r10
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
	rldicl %r5,%r5,0,32
	sldi %r6,%r6,32
	li %r8,16
	li %r10,32
	or %r0,%r5,%r6
	li %r9,1
	mtctr %r8
	blt+ %cr0,.L1282
	b .L1304
.L1286:
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	cmpwi %cr5,%r4,0
	ble- %cr7,.L1284
	blt- %cr5,.L1301
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L1284
	bdz .L1285
.L1282:
	cmpwi %cr1,%r4,0
	addi %r10,%r10,-2
	bge+ %cr1,.L1286
.L1301:
	cmplw %cr7,%r3,%r4
	b .L1287
.L1284:
	cmpwi %cr6,%r9,0
	beq- %cr6,.L1291
.L1287:
	li %r10,0
	li %r11,0
.L1288:
	setbcr %r7,28
	subf %r12,%r4,%r3
	cmpwi %cr1,%r7,0
	srwi %r4,%r4,1
	isel %r5,%r11,%r9,6
	srwi. %r9,%r9,1
	isel %r3,%r3,%r12,6
	or %r10,%r10,%r5
	cmplw %cr7,%r3,%r4
	bne+ %cr0,.L1288
.L1285:
	cmpdi %cr5,%r0,0
	isel %r3,%r10,%r3,22
	blr
.L1304:
	subf %r4,%r4,%r3
	setbcr %r10,1
	isel %r3,%r3,%r4,1
	b .L1285
.L1291:
	li %r10,0
	b .L1285
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
	beq- %cr0,.L1309
	slwi %r3,%r3,8
	cntlzw %r4,%r3
	addi %r3,%r4,-1
	blr
.L1309:
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	sradi %r9,%r0,63
	cmpd %cr0,%r0,%r9
	xor %r5,%r0,%r9
	beq- %cr0,.L1312
	cntlzd %r6,%r5
	addi %r3,%r6,-1
	blr
.L1312:
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
.L1315:
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
	bne+ %cr0,.L1315
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
	blt- %cr0,.L1323
	add %r10,%r4,%r5
	cmplw %cr1,%r10,%r3
	bge- %cr1,.L1462
.L1323:
	cmpwi %cr5,%r9,0
	addi %r12,%r4,-8
	addi %r8,%r3,-8
	beq- %cr5,.L1435
	andi. %r7,%r9,0x1
	addi %r7,%r9,-1
	beq- %cr0,.L1446
	mr. %r9,%r7
	ld %r6,0(%r4)
	mr %r12,%r4
	mr %r8,%r3
	std %r6,0(%r3)
	beq- %cr0,.L1437
.L1446:
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
	bne+ %cr7,.L1446
.L1437:
	cmplw %cr1,%r5,%r11
	blelr- %cr1
	subf %r9,%r11,%r5
	addi %r12,%r9,-1
	cmplwi %cr5,%r12,14
	ble- %cr5,.L1328
	addi %r8,%r11,1
	add %r7,%r3,%r11
	add %r10,%r4,%r8
	subf %r6,%r10,%r7
	cmplwi %cr6,%r6,14
	ble- %cr6,.L1328
	rldicl %r8,%r9,60,36
	stwu %r1,-32(%r1)
	.cfi_def_cfa_offset 32
	add %r6,%r4,%r11
	andi. %r0,%r8,0x3
	li %r10,0
	stw %r31,28(%r1)
	.cfi_offset 31, -4
	addi %r31,%r8,-1
	beq- %cr0,.L1445
	cmpdi %cr7,%r0,1
	beq- %cr7,.L1406
	cmpdi %cr1,%r0,2
	bne- %cr1,.L1463
.L1407:
	lxvx %vs8,%r6,%r10
	addi %r8,%r8,-1
	stxvx %vs8,%r7,%r10
	addi %r10,%r10,16
.L1406:
	addi %r8,%r8,-1
	lxvx %vs9,%r6,%r10
	stxvx %vs9,%r7,%r10
	addi %r10,%r10,16
	cmpdi %cr5,%r8,0
	beq- %cr5,.L1442
.L1445:
	addi %r8,%r8,-4
	addi %r12,%r10,16
	lxvx %vs10,%r6,%r10
	stxvx %vs10,%r7,%r10
	cmpdi %cr6,%r8,0
	addi %r31,%r10,32
	lxvx %vs11,%r6,%r12
	stxvx %vs11,%r7,%r12
	addi %r0,%r10,48
	lxvx %vs12,%r6,%r31
	addi %r10,%r10,64
	stxvx %vs12,%r7,%r31
	lxvx %vs13,%r6,%r0
	stxvx %vs13,%r7,%r0
	bne+ %cr6,.L1445
.L1442:
	andi. %r10,%r9,0xf
	rlwinm %r9,%r9,0,0,27
	add %r11,%r9,%r11
	beq- %cr0,.L1319
	addi %r6,%r11,1
	lbzx %r7,%r4,%r11
	cmplw %cr7,%r6,%r5
	stbx %r7,%r3,%r11
	bge- %cr7,.L1319
	addi %r8,%r11,2
	lbzx %r10,%r4,%r6
	cmplw %cr1,%r5,%r8
	stbx %r10,%r3,%r6
	ble- %cr1,.L1319
	addi %r12,%r11,3
	lbzx %r31,%r4,%r8
	cmplw %cr5,%r5,%r12
	stbx %r31,%r3,%r8
	ble- %cr5,.L1319
	addi %r0,%r11,4
	lbzx %r9,%r4,%r12
	cmplw %cr6,%r5,%r0
	stbx %r9,%r3,%r12
	ble- %cr6,.L1319
	addi %r6,%r11,5
	lbzx %r7,%r4,%r0
	cmplw %cr0,%r5,%r6
	stbx %r7,%r3,%r0
	ble- %cr0,.L1319
	addi %r8,%r11,6
	lbzx %r10,%r4,%r6
	cmplw %cr7,%r5,%r8
	stbx %r10,%r3,%r6
	ble- %cr7,.L1319
	addi %r12,%r11,7
	lbzx %r31,%r4,%r8
	cmplw %cr1,%r5,%r12
	stbx %r31,%r3,%r8
	ble- %cr1,.L1319
	addi %r0,%r11,8
	lbzx %r9,%r4,%r12
	cmplw %cr5,%r5,%r0
	stbx %r9,%r3,%r12
	ble- %cr5,.L1319
	addi %r6,%r11,9
	lbzx %r7,%r4,%r0
	cmplw %cr6,%r5,%r6
	stbx %r7,%r3,%r0
	ble- %cr6,.L1319
	addi %r8,%r11,10
	lbzx %r10,%r4,%r6
	cmplw %cr0,%r5,%r8
	stbx %r10,%r3,%r6
	ble- %cr0,.L1319
	addi %r12,%r11,11
	lbzx %r31,%r4,%r8
	cmplw %cr7,%r5,%r12
	stbx %r31,%r3,%r8
	ble- %cr7,.L1319
	addi %r0,%r11,12
	lbzx %r9,%r4,%r12
	cmplw %cr1,%r5,%r0
	stbx %r9,%r3,%r12
	ble- %cr1,.L1319
	addi %r6,%r11,13
	lbzx %r7,%r4,%r0
	cmplw %cr5,%r5,%r6
	stbx %r7,%r3,%r0
	ble- %cr5,.L1319
	addi %r11,%r11,14
	lbzx %r8,%r4,%r6
	cmplw %cr6,%r5,%r11
	stbx %r8,%r3,%r6
	ble- %cr6,.L1319
	lbzx %r4,%r4,%r11
	stbx %r4,%r3,%r11
.L1319:
	lwz %r31,28(%r1)
	addi %r1,%r1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1462:
	cmpwi %cr5,%r5,0
	addi %r0,%r5,-1
	beqlr- %cr5
	cmplwi %cr6,%r0,14
	ble- %cr6,.L1333
	addi %r9,%r5,-2
	add %r8,%r3,%r0
	add %r6,%r4,%r9
	subf %r7,%r6,%r8
	addi %r12,%r7,14
	cmplwi %cr7,%r12,14
	ble- %cr7,.L1333
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r6,%r8,0x3
	addi %r11,%r8,-1
	add %r7,%r4,%r10
	add %r12,%r3,%r10
	li %r9,0
	beq- %cr0,.L1448
	cmpdi %cr1,%r6,1
	beq- %cr1,.L1408
	cmpdi %cr5,%r6,2
	bne- %cr5,.L1464
.L1409:
	lxvx %vs1,%r7,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r12,%r9
	addi %r9,%r9,-16
.L1408:
	addi %r8,%r8,-1
	lxvx %vs2,%r7,%r9
	stxvx %vs2,%r12,%r9
	addi %r9,%r9,-16
	cmpdi %cr6,%r8,0
	beq- %cr6,.L1443
.L1448:
	addi %r8,%r8,-4
	addi %r10,%r9,-16
	lxvx %vs3,%r7,%r9
	stxvx %vs3,%r12,%r9
	cmpdi %cr7,%r8,0
	addi %r11,%r9,-32
	lxvx %vs4,%r7,%r10
	stxvx %vs4,%r12,%r10
	addi %r6,%r9,-48
	lxvx %vs5,%r7,%r11
	addi %r9,%r9,-64
	stxvx %vs5,%r12,%r11
	lxvx %vs6,%r7,%r6
	stxvx %vs6,%r12,%r6
	bne+ %cr7,.L1448
.L1443:
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
.L1463:
	.cfi_def_cfa_offset 32
	.cfi_offset 31, -4
	lxv %vs7,0(%r6)
	mr %r8,%r31
	li %r10,16
	stxv %vs7,0(%r7)
	b .L1407
.L1435:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	cmpwi %cr6,%r5,0
	mr %r9,%r5
	beqlr- %cr6
.L1328:
	rldicl %r12,%r9,0,32
	addi %r5,%r11,-1
	andi. %r10,%r12,0x1
	add %r11,%r3,%r5
	add %r7,%r4,%r5
	addi %r3,%r12,-1
	beq- %cr0,.L1444
	mr. %r12,%r3
	lbzu %r10,1(%r7)
	stbu %r10,1(%r11)
	beqlr- %cr0
.L1444:
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
	bne+ %cr7,.L1444
	blr
.L1464:
	lxv %vs0,0(%r7)
	mr %r8,%r11
	li %r9,-16
	stxv %vs0,0(%r12)
	b .L1409
.L1333:
	rldicl %r11,%r5,0,32
	add %r5,%r3,%r5
	andi. %r8,%r11,0x1
	addi %r3,%r11,-1
	beq- %cr0,.L1447
	mr. %r11,%r3
	lbzu %r9,-1(%r10)
	stbu %r9,-1(%r5)
	beqlr- %cr0
.L1447:
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
	bne+ %cr1,.L1447
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
	blt- %cr0,.L1469
	add %r10,%r4,%r5
	cmplw %cr1,%r10,%r3
	bge- %cr1,.L1585
.L1469:
	cmpwi %cr5,%r8,0
	beq- %cr5,.L1468
	addi %r7,%r8,-1
	cmplwi %cr6,%r7,6
	ble- %cr6,.L1472
	addi %r12,%r4,2
	subf %r11,%r12,%r3
	cmplwi %cr7,%r11,12
	ble- %cr7,.L1472
	rldicl %r10,%r5,60,36
	srwi %r0,%r5,4
	andi. %r6,%r10,0x3
	addi %r7,%r10,-1
	li %r9,0
	beq- %cr0,.L1578
	cmpdi %cr1,%r6,1
	beq- %cr1,.L1543
	cmpdi %cr5,%r6,2
	bne- %cr5,.L1586
.L1544:
	lxvx %vs8,%r4,%r9
	addi %r10,%r10,-1
	stxvx %vs8,%r3,%r9
	addi %r9,%r9,16
.L1543:
	addi %r10,%r10,-1
	lxvx %vs9,%r4,%r9
	stxvx %vs9,%r3,%r9
	addi %r9,%r9,16
	cmpdi %cr6,%r10,0
	beq- %cr6,.L1575
.L1578:
	addi %r10,%r10,-4
	addi %r12,%r9,16
	lxvx %vs10,%r4,%r9
	stxvx %vs10,%r3,%r9
	cmpdi %cr7,%r10,0
	addi %r11,%r9,32
	lxvx %vs11,%r4,%r12
	stxvx %vs11,%r3,%r12
	addi %r6,%r9,48
	lxvx %vs12,%r4,%r11
	addi %r9,%r9,64
	stxvx %vs12,%r3,%r11
	lxvx %vs13,%r4,%r6
	stxvx %vs13,%r3,%r6
	bne+ %cr7,.L1578
.L1575:
	slwi %r10,%r0,3
	cmplw %cr0,%r8,%r10
	beq- %cr0,.L1468
	addi %r7,%r10,1
	slwi %r9,%r0,4
	cmplw %cr1,%r8,%r7
	lhzx %r0,%r4,%r9
	sthx %r0,%r3,%r9
	ble- %cr1,.L1468
	addi %r12,%r10,2
	addi %r11,%r9,2
	cmplw %cr5,%r8,%r12
	lhzx %r6,%r4,%r11
	sthx %r6,%r3,%r11
	ble- %cr5,.L1468
	addi %r7,%r10,3
	addi %r0,%r9,4
	cmplw %cr6,%r8,%r7
	lhzx %r12,%r4,%r0
	sthx %r12,%r3,%r0
	ble- %cr6,.L1468
	addi %r11,%r10,4
	addi %r6,%r9,6
	cmplw %cr7,%r8,%r11
	lhzx %r7,%r4,%r6
	sthx %r7,%r3,%r6
	ble- %cr7,.L1468
	addi %r0,%r10,5
	addi %r12,%r9,8
	cmplw %cr0,%r8,%r0
	lhzx %r11,%r4,%r12
	sthx %r11,%r3,%r12
	ble- %cr0,.L1468
	addi %r10,%r10,6
	addi %r6,%r9,10
	cmplw %cr1,%r8,%r10
	lhzx %r8,%r4,%r6
	sthx %r8,%r3,%r6
	ble- %cr1,.L1468
	addi %r9,%r9,12
	lhzx %r7,%r4,%r9
	sthx %r7,%r3,%r9
.L1468:
	andi. %r9,%r5,0x1
	beqlr- %cr0
	addi %r5,%r5,-1
	lbzx %r4,%r4,%r5
	stbx %r4,%r3,%r5
	blr
.L1585:
	cmpwi %cr5,%r5,0
	addi %r0,%r5,-1
	beqlr- %cr5
	cmplwi %cr6,%r0,14
	ble- %cr6,.L1478
	addi %r9,%r5,-2
	add %r8,%r3,%r0
	add %r6,%r4,%r9
	subf %r7,%r6,%r8
	addi %r11,%r7,14
	cmplwi %cr7,%r11,14
	ble- %cr7,.L1478
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r12,%r8,0x3
	add %r7,%r4,%r10
	addi %r6,%r8,-1
	add %r10,%r3,%r10
	li %r9,0
	beq- %cr0,.L1580
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1545
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1587
.L1546:
	lxvx %vs1,%r7,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r10,%r9
	addi %r9,%r9,-16
.L1545:
	addi %r8,%r8,-1
	lxvx %vs2,%r7,%r9
	stxvx %vs2,%r10,%r9
	addi %r9,%r9,-16
	cmpdi %cr6,%r8,0
	beq- %cr6,.L1576
.L1580:
	addi %r8,%r8,-4
	addi %r12,%r9,-16
	lxvx %vs3,%r7,%r9
	stxvx %vs3,%r10,%r9
	cmpdi %cr7,%r8,0
	addi %r11,%r9,-32
	lxvx %vs4,%r7,%r12
	stxvx %vs4,%r10,%r12
	addi %r6,%r9,-48
	lxvx %vs5,%r7,%r11
	addi %r9,%r9,-64
	stxvx %vs5,%r10,%r11
	lxvx %vs6,%r7,%r6
	stxvx %vs6,%r10,%r6
	bne+ %cr7,.L1580
.L1576:
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
.L1586:
	lxv %vs7,0(%r4)
	mr %r10,%r7
	li %r9,16
	stxv %vs7,0(%r3)
	b .L1544
.L1472:
	andi. %r9,%r8,0x1
	addi %r10,%r4,-2
	addi %r0,%r8,-1
	addi %r9,%r3,-2
	beq- %cr0,.L1577
	mr. %r8,%r0
	lhz %r12,0(%r4)
	mr %r10,%r4
	mr %r9,%r3
	sth %r12,0(%r3)
	beq- %cr0,.L1468
.L1577:
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
	bne+ %cr5,.L1577
	b .L1468
.L1587:
	lxv %vs0,0(%r7)
	mr %r8,%r6
	li %r9,-16
	stxv %vs0,0(%r10)
	b .L1546
.L1478:
	rldicl %r12,%r5,0,32
	add %r5,%r3,%r5
	andi. %r8,%r12,0x1
	addi %r3,%r12,-1
	beq- %cr0,.L1579
	mr. %r12,%r3
	lbzu %r11,-1(%r10)
	stbu %r11,-1(%r5)
	beqlr- %cr0
.L1579:
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
	bne+ %cr1,.L1579
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
	blt- %cr0,.L1593
	add %r10,%r4,%r5
	cmplw %cr1,%r10,%r3
	bge- %cr1,.L1742
.L1593:
	cmpwi %cr5,%r8,0
	beq- %cr5,.L1743
	addi %r7,%r8,-1
	cmplwi %cr7,%r7,3
	ble- %cr7,.L1595
	addi %r11,%r4,4
	subf %r6,%r11,%r3
	cmplwi %cr0,%r6,8
	ble- %cr0,.L1595
	rldicl %r10,%r5,60,36
	srwi %r0,%r5,4
	andi. %r7,%r10,0x3
	addi %r11,%r10,-1
	li %r9,0
	beq- %cr0,.L1731
	cmpdi %cr1,%r7,1
	beq- %cr1,.L1685
	cmpdi %cr5,%r7,2
	bne- %cr5,.L1744
.L1686:
	lxvx %vs8,%r4,%r9
	addi %r10,%r10,-1
	stxvx %vs8,%r3,%r9
	addi %r9,%r9,16
.L1685:
	addi %r10,%r10,-1
	lxvx %vs9,%r4,%r9
	stxvx %vs9,%r3,%r9
	addi %r9,%r9,16
	cmpdi %cr6,%r10,0
	beq- %cr6,.L1726
.L1731:
	addi %r10,%r10,-4
	addi %r6,%r9,16
	lxvx %vs10,%r4,%r9
	stxvx %vs10,%r3,%r9
	cmpdi %cr7,%r10,0
	addi %r11,%r9,32
	lxvx %vs11,%r4,%r6
	stxvx %vs11,%r3,%r6
	addi %r7,%r9,48
	lxvx %vs12,%r4,%r11
	addi %r9,%r9,64
	stxvx %vs12,%r3,%r11
	lxvx %vs13,%r4,%r7
	stxvx %vs13,%r3,%r7
	bne+ %cr7,.L1731
.L1726:
	slwi %r10,%r0,2
	cmplw %cr0,%r8,%r10
	beq- %cr0,.L1599
	addi %r9,%r10,1
	slwi %r6,%r0,4
	cmplw %cr1,%r8,%r9
	lwzx %r0,%r4,%r6
	stwx %r0,%r3,%r6
	ble- %cr1,.L1599
	addi %r11,%r10,2
	addi %r7,%r6,4
	cmplw %cr5,%r8,%r11
	lwzx %r8,%r4,%r7
	stwx %r8,%r3,%r7
	ble- %cr5,.L1599
	addi %r9,%r6,8
	lwzx %r10,%r4,%r9
	stwx %r10,%r3,%r9
.L1599:
	cmplw %cr7,%r5,%r12
	blelr- %cr7
	subf %r9,%r12,%r5
	addi %r8,%r9,-1
	cmplwi %cr1,%r8,14
	ble- %cr1,.L1591
	addi %r10,%r12,1
	add %r7,%r3,%r12
	add %r11,%r4,%r10
	subf %r6,%r11,%r7
	cmplwi %cr5,%r6,14
	ble- %cr5,.L1591
	rldicl %r8,%r9,60,36
	add %r6,%r4,%r12
	andi. %r11,%r8,0x3
	addi %r0,%r8,-1
	li %r10,0
	beq- %cr0,.L1729
	cmpdi %cr6,%r11,1
	beq- %cr6,.L1687
	cmpdi %cr7,%r11,2
	bne- %cr7,.L1745
.L1688:
	lxvx %vs1,%r6,%r10
	addi %r8,%r8,-1
	stxvx %vs1,%r7,%r10
	addi %r10,%r10,16
.L1687:
	addi %r8,%r8,-1
	lxvx %vs2,%r6,%r10
	stxvx %vs2,%r7,%r10
	addi %r10,%r10,16
	cmpdi %cr1,%r8,0
	beq- %cr1,.L1725
.L1729:
	addi %r8,%r8,-4
	addi %r11,%r10,16
	lxvx %vs3,%r6,%r10
	stxvx %vs3,%r7,%r10
	cmpdi %cr5,%r8,0
	lxvx %vs4,%r6,%r11
	addi %r0,%r10,32
	stxvx %vs4,%r7,%r11
	addi %r11,%r10,48
	lxvx %vs5,%r6,%r0
	addi %r10,%r10,64
	stxvx %vs5,%r7,%r0
	lxvx %vs6,%r6,%r11
	stxvx %vs6,%r7,%r11
	bne+ %cr5,.L1729
.L1725:
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
.L1742:
	cmpwi %cr5,%r5,0
	addi %r0,%r5,-1
	beqlr- %cr5
	cmplwi %cr6,%r0,14
	ble- %cr6,.L1604
	addi %r9,%r5,-2
	add %r8,%r3,%r0
	add %r6,%r4,%r9
	subf %r7,%r6,%r8
	addi %r11,%r7,14
	cmplwi %cr7,%r11,14
	ble- %cr7,.L1604
	rldicl %r8,%r5,60,36
	addi %r10,%r5,-16
	andi. %r12,%r8,0x3
	add %r7,%r4,%r10
	addi %r6,%r8,-1
	add %r10,%r3,%r10
	li %r9,0
	beq- %cr0,.L1733
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1689
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1746
.L1690:
	lxvx %vs1,%r7,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r10,%r9
	addi %r9,%r9,-16
.L1689:
	addi %r8,%r8,-1
	lxvx %vs2,%r7,%r9
	stxvx %vs2,%r10,%r9
	addi %r9,%r9,-16
	cmpdi %cr6,%r8,0
	beq- %cr6,.L1727
.L1733:
	addi %r8,%r8,-4
	addi %r12,%r9,-16
	lxvx %vs3,%r7,%r9
	stxvx %vs3,%r10,%r9
	cmpdi %cr7,%r8,0
	addi %r11,%r9,-32
	lxvx %vs4,%r7,%r12
	stxvx %vs4,%r10,%r12
	addi %r6,%r9,-48
	lxvx %vs5,%r7,%r11
	addi %r9,%r9,-64
	stxvx %vs5,%r10,%r11
	lxvx %vs6,%r7,%r6
	stxvx %vs6,%r10,%r6
	bne+ %cr7,.L1733
.L1727:
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
.L1744:
	lxv %vs7,0(%r4)
	mr %r10,%r11
	li %r9,16
	stxv %vs7,0(%r3)
	b .L1686
.L1745:
	lxv %vs0,0(%r6)
	mr %r8,%r0
	li %r10,16
	stxv %vs0,0(%r7)
	b .L1688
.L1743:
	cmpwi %cr6,%r5,0
	mr %r9,%r5
	beqlr- %cr6
.L1591:
	rldicl %r9,%r9,0,32
	addi %r5,%r12,-1
	andi. %r10,%r9,0x1
	add %r12,%r3,%r5
	add %r7,%r4,%r5
	addi %r3,%r9,-1
	beq- %cr0,.L1728
	mr. %r9,%r3
	lbzu %r6,1(%r7)
	stbu %r6,1(%r12)
	beqlr- %cr0
.L1728:
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
	bne+ %cr6,.L1728
	blr
.L1595:
	andi. %r9,%r8,0x1
	addi %r10,%r4,-4
	addi %r6,%r8,-1
	addi %r9,%r3,-4
	beq- %cr0,.L1730
	mr. %r8,%r6
	lwz %r0,0(%r4)
	mr %r10,%r4
	mr %r9,%r3
	stw %r0,0(%r3)
	beq- %cr0,.L1599
.L1730:
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
	bne+ %cr6,.L1730
	b .L1599
.L1746:
	lxv %vs0,0(%r7)
	mr %r8,%r6
	li %r9,-16
	stxv %vs0,0(%r10)
	b .L1690
.L1604:
	rldicl %r12,%r5,0,32
	add %r5,%r3,%r5
	andi. %r8,%r12,0x1
	addi %r3,%r12,-1
	beq- %cr0,.L1732
	mr. %r12,%r3
	lbzu %r11,-1(%r10)
	stbu %r11,-1(%r5)
	beqlr- %cr0
.L1732:
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
	bne+ %cr1,.L1732
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r9,%r3,%r4
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r9,%r3,%r4
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
	bne- %cr0,.L1756
	srawi. %r3,%r3,14
	bnelr- %cr0
	srwi. %r10,%r9,13
	bne- %cr0,.L1757
	srwi. %r10,%r9,12
	bne- %cr0,.L1758
	srwi. %r10,%r9,11
	bne- %cr0,.L1759
	srwi. %r10,%r9,10
	bne- %cr0,.L1760
	srwi. %r10,%r9,9
	bne- %cr0,.L1761
	srwi. %r10,%r9,8
	bne- %cr0,.L1762
	srwi. %r10,%r9,7
	bne- %cr0,.L1763
	srwi. %r10,%r9,6
	bne- %cr0,.L1764
	srwi. %r10,%r9,5
	bne- %cr0,.L1765
	srwi. %r10,%r9,4
	bne- %cr0,.L1766
	srwi. %r10,%r9,3
	bne- %cr0,.L1767
	srwi. %r10,%r9,2
	bne- %cr0,.L1768
	srwi. %r10,%r9,1
	bne- %cr0,.L1769
	cmpwi %cr1,%r9,0
	setbc %r3,6
	addi %r3,%r3,15
	blr
.L1756:
	li %r3,0
	blr
.L1767:
	li %r3,12
	blr
.L1757:
	li %r3,2
	blr
.L1758:
	li %r3,3
	blr
.L1759:
	li %r3,4
	blr
.L1760:
	li %r3,5
	blr
.L1761:
	li %r3,6
	blr
.L1762:
	li %r3,7
	blr
.L1763:
	li %r3,8
	blr
.L1764:
	li %r3,9
	blr
.L1765:
	li %r3,10
	blr
.L1766:
	li %r3,11
	blr
.L1768:
	li %r3,13
	blr
.L1769:
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
	bne- %cr0,.L1774
	andi. %r9,%r3,0x2
	bne- %cr0,.L1775
	andi. %r9,%r3,0x4
	bne- %cr0,.L1776
	andi. %r9,%r3,0x8
	bne- %cr0,.L1777
	andi. %r9,%r3,0x10
	bne- %cr0,.L1778
	andi. %r9,%r3,0x20
	bne- %cr0,.L1779
	andi. %r9,%r3,0x40
	bne- %cr0,.L1780
	andi. %r9,%r3,0x80
	bne- %cr0,.L1781
	andi. %r9,%r3,0x100
	bne- %cr0,.L1782
	andi. %r9,%r3,0x200
	bne- %cr0,.L1783
	andi. %r9,%r3,0x400
	bne- %cr0,.L1784
	andi. %r9,%r3,0x800
	bne- %cr0,.L1785
	andi. %r9,%r3,0x1000
	bne- %cr0,.L1786
	andi. %r9,%r3,0x2000
	bne- %cr0,.L1787
	andi. %r9,%r3,0x4000
	bne- %cr0,.L1788
	srwi. %r3,%r3,15
	setbc %r3,2
	addi %r3,%r3,15
	blr
.L1774:
	li %r3,0
	blr
.L1775:
	li %r3,1
	blr
.L1786:
	li %r3,12
	blr
.L1776:
	li %r3,2
	blr
.L1777:
	li %r3,3
	blr
.L1778:
	li %r3,4
	blr
.L1779:
	li %r3,5
	blr
.L1780:
	li %r3,6
	blr
.L1781:
	li %r3,7
	blr
.L1782:
	li %r3,8
	blr
.L1783:
	li %r3,9
	blr
.L1784:
	li %r3,10
	blr
.L1785:
	li %r3,11
	blr
.L1787:
	li %r3,13
	blr
.L1788:
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
	xxspltidp %vs0,1191182336
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne- %cr0,.L1796
	fctiwz %f1,%f1
	mfvsrwz %r3,%vs1
	blr
.L1796:
	fsubs %f2,%f1,%f0
	fctiwz %f3,%f2
	mfvsrwz %r3,%vs3
	paddi %r3,%r3,32768
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
	oris %r0,%r12,0xc01c
	stw %r12,28(%r1)
	mtvrsave %r0
	lis %r7,.LC14@ha
	xxspltib %vs0,0
	lis %r8,.LC15@ha
	lis %r10,.LC16@ha
	mtvsrws %vs32,%r3
	lwz %r0,28(%r1)
	lis %r9,.LC17@ha
	vspltisw %v11,1
	la %r3,.LC16@l(%r10)
	la %r4,.LC14@l(%r7)
	la %r5,.LC15@l(%r8)
	la %r6,.LC17@l(%r9)
	lxv %vs45,0(%r4)
	vsraw %v1,%v0,%v13
	li %r11,0
	xxland %vs45,%vs33,%vs43
	lxv %vs44,0(%r5)
	lxv %vs33,0(%r3)
	vsraw %v12,%v0,%v12
	vsraw %v1,%v0,%v1
	xxland %vs44,%vs44,%vs43
	xxland %vs33,%vs33,%vs43
	vadduwm %v13,%v13,%v12
	lxv %vs44,0(%r6)
	vadduwm %v13,%v1,%v13
	vsraw %v0,%v0,%v12
	xxland %vs43,%vs32,%vs43
	vadduwm %v12,%v11,%v13
	xxsldwi %vs33,%vs0,%vs44,2
	vadduwm %v13,%v1,%v12
	xxsldwi %vs32,%vs0,%vs45,3
	vadduwm %v11,%v0,%v13
	vextuwrx %r12,%r11,%v11
	rlwinm %r3,%r12,0,31,31
	mtvrsave %r0
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
	oris %r0,%r12,0xc01c
	stw %r12,28(%r1)
	mtvrsave %r0
	lis %r7,.LC14@ha
	xxspltib %vs0,0
	lis %r8,.LC15@ha
	lis %r10,.LC16@ha
	lwz %r12,28(%r1)
	mtvsrws %vs32,%r3
	lis %r9,.LC17@ha
	vspltisw %v11,1
	la %r3,.LC16@l(%r10)
	la %r4,.LC14@l(%r7)
	la %r5,.LC15@l(%r8)
	la %r6,.LC17@l(%r9)
	lxv %vs45,0(%r4)
	vsraw %v1,%v0,%v13
	li %r11,0
	xxland %vs45,%vs33,%vs43
	lxv %vs44,0(%r5)
	lxv %vs33,0(%r3)
	vsraw %v12,%v0,%v12
	vsraw %v1,%v0,%v1
	xxland %vs44,%vs44,%vs43
	xxland %vs33,%vs33,%vs43
	vadduwm %v13,%v13,%v12
	lxv %vs44,0(%r6)
	vadduwm %v13,%v1,%v13
	vsraw %v0,%v0,%v12
	xxland %vs43,%vs32,%vs43
	vadduwm %v12,%v11,%v13
	xxsldwi %vs33,%vs0,%vs44,2
	vadduwm %v13,%v1,%v12
	xxsldwi %vs32,%vs0,%vs45,3
	vadduwm %v11,%v0,%v13
	vextuwrx %r3,%r11,%v11
	mtvrsave %r12
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
.L1803:
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
	bne+ %cr0,.L1803
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
.L1809:
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
	bne+ %cr0,.L1809
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
	li %r9,1
	mtctr %r8
	blt+ %cr0,.L1815
	b .L1837
.L1819:
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	cmpwi %cr5,%r4,0
	ble- %cr7,.L1817
	blt- %cr5,.L1834
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L1817
	bdz .L1818
.L1815:
	cmpwi %cr1,%r4,0
	addi %r10,%r10,-2
	bge+ %cr1,.L1819
.L1834:
	cmplw %cr7,%r3,%r4
	b .L1820
.L1817:
	cmpwi %cr6,%r9,0
	beq- %cr6,.L1824
.L1820:
	li %r10,0
	li %r6,0
.L1821:
	setbcr %r7,28
	subf %r0,%r4,%r3
	cmpwi %cr1,%r7,0
	srwi %r4,%r4,1
	isel %r11,%r6,%r9,6
	srwi. %r9,%r9,1
	isel %r3,%r3,%r0,6
	or %r10,%r10,%r11
	cmplw %cr7,%r3,%r4
	bne+ %cr0,.L1821
.L1818:
	cmpwi %cr5,%r5,0
	isel %r3,%r10,%r3,22
	blr
.L1837:
	subf %r4,%r4,%r3
	setbcr %r10,1
	isel %r3,%r3,%r4,1
	b .L1818
.L1824:
	li %r10,0
	b .L1818
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
	mulld %r0,%r3,%r4
	srdi %r4,%r0,32
	mr %r3,%r0
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
	mulld %r0,%r3,%r4
	srdi %r4,%r0,32
	mr %r3,%r0
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
	blt- %cr0,.L1861
	beq- %cr0,.L1854
	li %r6,0
.L1850:
	li %r10,32
	li %r8,0
	b .L1853
.L1862:
	beq- %cr7,.L1852
.L1853:
	rlwinm %r9,%r4,0,31,31
	srawi. %r4,%r4,1
	addi %r10,%r10,-1
	neg %r0,%r9
	and %r5,%r0,%r3
	rlwinm %r7,%r10,0,0xff
	cmpwi %cr7,%r7,0
	add %r8,%r8,%r5
	slwi %r3,%r3,1
	bne+ %cr0,.L1862
.L1852:
	cmpwi %cr1,%r6,0
	neg %r3,%r8
	isel %r3,%r8,%r3,6
	blr
.L1861:
	neg %r4,%r4
	li %r6,1
	b .L1850
.L1854:
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
	li %r5,0
	bge+ %cr0,.L1864
	neg %r3,%r3
	li %r9,0
	li %r5,1
.L1864:
	cmpwi %cr1,%r4,0
	bge+ %cr1,.L1865
	neg %r4,%r4
	mr %r5,%r9
.L1865:
	cmplw %cr5,%r3,%r4
	li %r8,16
	mr %r10,%r3
	li %r12,1
	mtctr %r8
	bgt+ %cr5,.L1866
	b .L1889
.L1870:
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L1871
	bdz .L1871
.L1866:
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr6,%r3,%r4
	bgt+ %cr6,.L1870
.L1871:
	cmpwi %cr0,%r12,0
	li %r3,0
	li %r6,0
	beq- %cr0,.L1869
.L1868:
	cmplw %cr1,%r10,%r4
	subf %r0,%r4,%r10
	srwi %r4,%r4,1
	setbcr %r7,4
	cmpwi %cr5,%r7,0
	isel %r11,%r6,%r12,22
	srwi. %r12,%r12,1
	or %r3,%r3,%r11
	isel %r10,%r10,%r0,22
	bne+ %cr0,.L1868
.L1869:
	cmpwi %cr6,%r5,0
	neg %r4,%r3
	isel %r3,%r3,%r4,26
	blr
.L1889:
	setbcr %r3,20
	b .L1869
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
	li %r6,0
	bge+ %cr0,.L1894
	neg %r3,%r3
	li %r6,1
.L1894:
	srawi %r9,%r4,31
	li %r7,16
	xor %r4,%r9,%r4
	mr %r8,%r3
	subf %r5,%r9,%r4
	li %r10,1
	cmplw %cr1,%r3,%r5
	mtctr %r7
	bgt+ %cr1,.L1895
	b .L1917
.L1899:
	slwi %r5,%r5,1
	slwi %r10,%r10,1
	cmplw %cr6,%r3,%r5
	ble- %cr6,.L1900
	bdz .L1900
.L1895:
	slwi %r5,%r5,1
	slwi %r10,%r10,1
	cmplw %cr5,%r3,%r5
	bgt+ %cr5,.L1899
.L1900:
	cmpwi %cr7,%r10,0
	beq- %cr7,.L1921
.L1897:
	srwi. %r10,%r10,1
	cmplw %cr1,%r8,%r5
	subf %r3,%r5,%r8
	srwi %r5,%r5,1
	isel %r8,%r8,%r3,4
	bne+ %cr0,.L1897
.L1898:
	cmpwi %cr5,%r6,0
	neg %r11,%r8
	isel %r3,%r8,%r11,22
	blr
.L1921:
	cmpwi %cr5,%r6,0
	mr %r8,%r3
	neg %r11,%r8
	isel %r3,%r8,%r11,22
	blr
.L1917:
	subf %r0,%r5,%r3
	isel %r8,%r3,%r0,4
	b .L1898
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
	bge- %cr0,.L2092
	andi. %r9,%r4,0x8000
	bne- %cr0,.L1927
	rlwinm %r0,%r4,1,16,30
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2000
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2000
	rlwinm %r0,%r4,2,16,29
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2002
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2002
	rlwinm %r0,%r4,3,16,28
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2004
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2004
	rlwinm %r0,%r4,4,16,27
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2006
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2006
	rlwinm %r0,%r4,5,16,26
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2008
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2008
	rlwinm %r0,%r4,6,16,25
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2010
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2010
	rlwinm %r0,%r4,7,16,24
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2012
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2012
	rlwinm %r0,%r4,8,16,23
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2014
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2014
	rlwinm %r0,%r4,9,16,22
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2016
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2016
	rlwinm %r0,%r4,10,16,21
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2018
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2018
	rlwinm %r0,%r4,11,16,20
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2020
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2020
	rlwinm %r0,%r4,12,16,19
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2022
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2022
	rlwinm %r0,%r4,13,16,18
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2024
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2024
	rlwinm %r0,%r4,14,16,17
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2026
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2026
	rlwinm %r7,%r4,15,16,16
	cmplw %cr1,%r3,%r7
	ble- %cr1,.L2027
	cmpwi %cr5,%r7,0
	pli %r0,32768
	cmplw %cr7,%r3,%r0
	pli %r8,32768
	li %r6,0
	bne- %cr5,.L1929
.L1930:
	cmpwi %cr0,%r5,0
	beq+ %cr0,.L1989
	mr %r6,%r3
.L1989:
	rlwinm %r3,%r6,0,0xffff
	blr
.L2000:
	li %r8,2
.L1929:
	subf %r10,%r0,%r3
	li %r9,0
	rlwinm %r11,%r10,0,0xffff
	isel %r12,%r3,%r11,28
	blt- %cr7,.L1998
	mr %r9,%r8
.L1998:
	srwi %r3,%r0,1
	rldicl %r4,%r8,63,49
	cmplw %cr6,%r12,%r3
	subf %r6,%r3,%r12
	mtvsrwz %vs0,%r4
	rlwinm %r7,%r6,0,0xffff
	li %r10,0
	isel %r3,%r12,%r7,24
	blt- %cr6,.L1934
	mfvsrwz %r10,%vs0
.L1934:
	srwi. %r7,%r8,2
	or %r12,%r10,%r9
	mr %r6,%r12
	srwi %r11,%r8,2
	srwi %r9,%r0,2
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq- %cr1,.L1938
	mr %r6,%r11
.L1938:
	srwi. %r7,%r8,3
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,3
	srwi %r9,%r0,3
	beq- %cr0,.L1930
	cmplw %cr5,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,20
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1942
	mr %r6,%r11
.L1942:
	srwi. %r7,%r8,4
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,4
	srwi %r9,%r0,4
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq- %cr1,.L1946
	mr %r6,%r11
.L1946:
	srwi. %r7,%r8,5
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,5
	srwi %r9,%r0,5
	beq- %cr0,.L1930
	cmplw %cr5,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,20
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1950
	mr %r6,%r11
.L1950:
	srwi. %r7,%r8,6
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,6
	srwi %r9,%r0,6
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq- %cr1,.L1954
	mr %r6,%r11
.L1954:
	srwi. %r7,%r8,7
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,7
	srwi %r9,%r0,7
	beq- %cr0,.L1930
	cmplw %cr5,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,20
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	bne- %cr6,.L2093
.L1958:
	srwi. %r7,%r8,8
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,8
	srwi %r9,%r0,8
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	bne- %cr1,.L2094
.L1962:
	srwi. %r7,%r8,9
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,9
	srwi %r9,%r0,9
	beq- %cr0,.L1930
	cmplw %cr5,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,20
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	bne- %cr6,.L2095
.L1966:
	srwi. %r7,%r8,10
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,10
	srwi %r9,%r0,10
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	bne- %cr1,.L2096
.L1970:
	srwi. %r7,%r8,11
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,11
	srwi %r9,%r0,11
	beq- %cr0,.L1930
	cmplw %cr5,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,20
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	bne- %cr6,.L2097
.L1974:
	srwi. %r7,%r8,12
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,12
	srwi %r9,%r0,12
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	bne- %cr1,.L2098
	srwi. %r7,%r8,13
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,13
	srwi %r9,%r0,13
	beq- %cr0,.L1930
.L2099:
	cmplw %cr5,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,20
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L1982
	mr %r6,%r11
.L1982:
	srwi. %r7,%r8,14
	or %r12,%r12,%r6
	mr %r6,%r12
	srwi %r11,%r8,14
	srwi %r9,%r0,14
	beq- %cr0,.L1930
	cmplw %cr7,%r3,%r9
	subf %r4,%r9,%r3
	rlwinm %r7,%r4,0,0xffff
	li %r6,0
	setbcr %r10,28
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq- %cr1,.L1986
	mr %r6,%r11
.L1986:
	cmpwi %cr5,%r8,16384
	or %r8,%r12,%r6
	srwi %r0,%r0,15
	mr %r6,%r8
	beq- %cr5,.L1930
	cmplw %cr6,%r3,%r0
	subf %r12,%r0,%r3
	rlwinm %r11,%r12,0,0xffff
	setbcr %r9,24
	isel %r3,%r3,%r11,24
	or %r6,%r8,%r9
	b .L1930
.L2093:
	mr %r6,%r11
	b .L1958
.L2094:
	mr %r6,%r11
	b .L1962
.L2095:
	mr %r6,%r11
	b .L1966
.L2096:
	mr %r6,%r11
	b .L1970
.L2097:
	mr %r6,%r11
	b .L1974
.L2098:
	srwi. %r7,%r8,13
	mr %r6,%r11
	or %r12,%r12,%r6
	srwi %r11,%r8,13
	mr %r6,%r12
	srwi %r9,%r0,13
	bne+ %cr0,.L2099
	b .L1930
.L2002:
	li %r8,4
	b .L1929
.L2004:
	li %r8,8
	b .L1929
.L2006:
	li %r8,16
	b .L1929
.L2016:
	li %r8,512
	b .L1929
.L2008:
	li %r8,32
	b .L1929
.L2010:
	li %r8,64
	b .L1929
.L2012:
	li %r8,128
	b .L1929
.L2014:
	li %r8,256
	b .L1929
.L2092:
	subf %r9,%r4,%r3
	setbc %r6,2
	rlwinm %r4,%r9,0,0xffff
	isel %r3,%r4,%r3,2
	b .L1930
.L2018:
	li %r8,1024
	b .L1929
.L2020:
	li %r8,2048
	b .L1929
.L2022:
	li %r8,4096
	b .L1929
.L2024:
	li %r8,8192
	b .L1929
.L2026:
	li %r8,16384
	b .L1929
.L2027:
	cmplwi %cr7,%r3,32768
	pli %r0,32768
	pli %r8,32768
	b .L1929
.L1927:
	subf %r3,%r4,%r3
	li %r6,1
	rlwinm %r3,%r3,0,0xffff
	b .L1930
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
	li %r9,1
	mtctr %r8
	bgt+ %cr7,.L2101
	b .L2122
.L2105:
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	cmpwi %cr5,%r4,0
	ble- %cr7,.L2103
	blt- %cr5,.L2106
	slwi %r4,%r4,1
	slwi %r9,%r9,1
	cmplw %cr7,%r3,%r4
	ble- %cr7,.L2103
	bdz .L2104
.L2101:
	cmpwi %cr1,%r4,0
	addi %r10,%r10,-2
	bge+ %cr1,.L2105
.L2106:
	li %r10,0
	li %r6,0
.L2107:
	setbcr %r7,28
	subf %r0,%r4,%r3
	cmpwi %cr1,%r7,0
	srwi %r4,%r4,1
	isel %r11,%r6,%r9,6
	srwi. %r9,%r9,1
	isel %r3,%r3,%r0,6
	or %r10,%r10,%r11
	cmplw %cr7,%r3,%r4
	bne+ %cr0,.L2107
.L2104:
	cmpwi %cr5,%r5,0
	isel %r3,%r10,%r3,22
	blr
.L2103:
	cmpwi %cr6,%r9,0
	bne+ %cr6,.L2106
	li %r10,0
	b .L2104
.L2122:
	subf %r4,%r4,%r3
	setbcr %r10,28
	isel %r3,%r3,%r4,28
	b .L2104
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	beq- %cr0,.L2126
	addi %r5,%r5,-32
	li %r11,0
	slw %r8,%r0,%r5
.L2127:
	sldi %r12,%r8,32
	or %r4,%r11,%r12
.L2125:
	mr %r3,%r4
	srdi %r4,%r4,32
	blr
.L2126:
	cmpwi %cr1,%r5,0
	mr %r4,%r0
	beq- %cr1,.L2125
	subfic %r9,%r5,32
	sradi %r10,%r0,32
	srw %r6,%r0,%r9
	slw %r7,%r10,%r5
	or %r8,%r6,%r7
	slw %r11,%r0,%r5
	b .L2127
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	beq- %cr0,.L2132
	sradi %r11,%r0,32
	addi %r12,%r5,-32
	sraw %r10,%r11,%r12
	srawi %r5,%r11,31
.L2133:
	rldicl %r3,%r10,0,32
	sldi %r4,%r5,32
	or %r6,%r4,%r3
.L2131:
	srdi %r4,%r6,32
	mr %r3,%r6
	blr
.L2132:
	cmpwi %cr1,%r5,0
	mr %r6,%r0
	beq- %cr1,.L2131
	sradi %r6,%r0,32
	subfic %r9,%r5,32
	srw %r7,%r0,%r5
	slw %r8,%r6,%r9
	or %r10,%r8,%r7
	sraw %r5,%r6,%r5
	b .L2133
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	brd %r5,%r0
	srdi %r4,%r5,32
	mr %r3,%r5
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
	brw %r3,%r3
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
	li %r7,0
	setbcr %r8,1
	slwi %r0,%r8,4
	subfic %r9,%r0,16
	srw %r3,%r3,%r9
	andi. %r10,%r3,0xff00
	setbc %r10,2
	slwi %r4,%r10,3
	subfic %r6,%r4,8
	add %r5,%r4,%r0
	srw %r11,%r3,%r6
	andi. %r10,%r11,0xf0
	setbc %r12,2
	slwi %r8,%r12,2
	subfic %r0,%r8,4
	add %r10,%r8,%r5
	srw %r9,%r11,%r0
	andi. %r8,%r9,0xc
	setbc %r3,2
	slwi %r4,%r3,1
	subfic %r6,%r4,2
	add %r5,%r4,%r10
	srw %r11,%r9,%r6
	andi. %r10,%r11,0x2
	subfic %r12,%r11,2
	isel %r7,%r12,%r7,2
	add %r3,%r7,%r5
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	rldicl %r5,%r5,0,32
	sldi %r6,%r6,32
	or %r0,%r3,%r4
	or %r7,%r5,%r6
	sradi %r8,%r0,32
	sradi %r10,%r7,32
	cmpw %cr0,%r8,%r10
	blt- %cr0,.L2142
	li %r3,2
	bgtlr- %cr0
	cmplw %cr1,%r0,%r7
	li %r3,0
	bltlr- %cr1
	setbc %r9,5
	addi %r3,%r9,1
	blr
.L2142:
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	rldicl %r5,%r5,0,32
	sldi %r6,%r6,32
	or %r0,%r3,%r4
	or %r7,%r5,%r6
	sradi %r8,%r0,32
	sradi %r10,%r7,32
	cmpw %cr0,%r8,%r10
	blt- %cr0,.L2148
	li %r3,1
	bgtlr- %cr0
	cmplw %cr1,%r0,%r7
	li %r11,-1
	setbc %r9,5
	isel %r3,%r11,%r9,4
	blr
.L2148:
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
	rlwinm %r9,%r3,0,16,31
	cmpwi %cr0,%r9,0
	setbc %r8,2
	slwi %r0,%r8,4
	srw %r3,%r3,%r0
	rlwinm %r4,%r3,0,24,31
	cmpwi %cr1,%r4,0
	setbc %r10,6
	slwi %r5,%r10,3
	srw %r6,%r3,%r5
	add %r7,%r5,%r0
	andi. %r10,%r6,0xf
	setbc %r11,2
	slwi %r12,%r11,2
	srw %r9,%r6,%r12
	add %r0,%r12,%r7
	andi. %r8,%r9,0x3
	setbc %r8,2
	slwi %r3,%r8,1
	srw %r4,%r9,%r3
	add %r5,%r3,%r0
	rlwinm %r6,%r4,0,30,31
	not %r10,%r6
	srwi %r7,%r6,1
	rlwinm %r11,%r10,0,31,31
	subfic %r12,%r7,2
	neg %r9,%r11
	and %r0,%r9,%r12
	add %r3,%r0,%r5
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	beq- %cr0,.L2153
	addi %r12,%r5,-32
	srdi %r11,%r0,32
	srw %r10,%r11,%r12
	li %r5,0
.L2154:
	rldicl %r3,%r10,0,32
	sldi %r4,%r5,32
	or %r6,%r4,%r3
.L2152:
	srdi %r4,%r6,32
	mr %r3,%r6
	blr
.L2153:
	cmpwi %cr1,%r5,0
	mr %r6,%r0
	beq- %cr1,.L2152
	srdi %r6,%r0,32
	subfic %r9,%r5,32
	srw %r7,%r0,%r5
	slw %r8,%r6,%r9
	or %r10,%r8,%r7
	srw %r5,%r6,%r5
	b .L2154
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	rlwinm %r10,%r4,0,16,31
	rlwinm %r8,%r3,0,16,31
	mr %r9,%r3
	mullw %r3,%r8,%r10
	srwi %r4,%r4,16
	srwi %r0,%r9,16
	srwi %r7,%r3,16
	maddld %r5,%r10,%r0,%r7
	rlwinm %r6,%r5,0,0xffff
	srwi %r11,%r5,16
	maddld %r12,%r8,%r4,%r6
	maddld %r9,%r0,%r4,%r11
	srwi %r8,%r12,16
	rlwimi %r3,%r12,16,0,31-16
	add %r4,%r9,%r8
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
	rldicl %r5,%r5,0,32
	rlwinm %r7,%r3,0,0xffff
	rlwinm %r10,%r5,0,0xffff
	srwi %r9,%r3,16
	mr %r8,%r3
	mullw %r3,%r7,%r10
	sldi %r6,%r6,32
	srwi %r11,%r5,16
	or %r12,%r5,%r6
	sradi %r5,%r12,32
	srwi %r0,%r3,16
	maddld %r10,%r10,%r9,%r0
	rlwinm %r6,%r10,0,0xffff
	srwi %r0,%r10,16
	maddld %r7,%r7,%r11,%r6
	maddld %r9,%r9,%r11,%r0
	srwi %r11,%r7,16
	rlwimi %r3,%r7,16,0,31-16
	rldicl %r3,%r3,0,32
	add %r10,%r9,%r11
	sldi %r6,%r10,32
	or %r3,%r3,%r6
	sradi %r0,%r3,32
	maddld %r8,%r8,%r5,%r0
	maddld %r4,%r4,%r12,%r8
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	neg %r5,%r0
	srdi %r4,%r5,32
	mr %r3,%r5
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
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
	rldicl %r3,%r3,0,32
	sldi %r4,%r4,32
	or %r0,%r3,%r4
	pli %r10,1431655765
	srdi %r9,%r0,1
	rldimi %r10,%r10,32,0
	and %r5,%r9,%r10
	pli %r8,858993459
	subf %r6,%r5,%r0
	rldimi %r8,%r8,32,0
	srdi %r7,%r6,2
	and %r11,%r6,%r8
	and %r12,%r7,%r8
	pli %r3,252645135
	add %r4,%r12,%r11
	rldimi %r3,%r3,32,0
	srdi %r0,%r4,4
	add %r10,%r0,%r4
	and %r9,%r10,%r3
	srdi %r5,%r9,32
	add %r8,%r5,%r9
	srwi %r6,%r8,16
	add %r7,%r6,%r8
	srwi %r11,%r7,8
	add %r12,%r11,%r7
	rlwinm %r3,%r12,0,25,31
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
	srwi %r9,%r3,1
	pli %r10,1431655765
	and %r0,%r9,%r10
	pli %r8,858993459
	subf %r3,%r0,%r3
	pli %r7,252645135
	srwi %r4,%r3,2
	and %r5,%r3,%r8
	and %r6,%r4,%r8
	add %r11,%r6,%r5
	srwi %r12,%r11,4
	add %r10,%r12,%r11
	and %r8,%r10,%r7
	srwi %r9,%r8,16
	add %r7,%r9,%r8
	srwi %r0,%r7,8
	add %r3,%r0,%r7
	rlwinm %r3,%r3,0,26,31
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
	fmr %f0,%f1
	mr %r9,%r3
	xxspltidp %vs1,1065353216
	beq- %cr0,.L2166
.L2168:
	fmul %f1,%f1,%f0
.L2166:
	srawi %r9,%r9,1
	addze. %r9,%r9
	beq- %cr0,.L2167
	andi. %r10,%r9,0x1
	fmul %f0,%f0,%f0
	bne- %cr0,.L2168
.L2172:
	srawi %r9,%r9,1
	addze %r9,%r9
	fmul %f0,%f0,%f0
	andi. %r10,%r9,0x1
	bne- %cr0,.L2168
	b .L2172
.L2167:
	cmpwi %cr1,%r3,0
	bgelr+ %cr1
	xxspltidp %vs2,1065353216
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
	fmr %f0,%f1
	mr %r9,%r3
	xxspltidp %vs1,1065353216
	beq- %cr0,.L2174
.L2176:
	fmuls %f1,%f1,%f0
.L2174:
	srawi %r9,%r9,1
	addze. %r9,%r9
	beq- %cr0,.L2175
	andi. %r10,%r9,0x1
	fmuls %f0,%f0,%f0
	bne- %cr0,.L2176
.L2180:
	srawi %r9,%r9,1
	addze %r9,%r9
	fmuls %f0,%f0,%f0
	andi. %r10,%r9,0x1
	bne- %cr0,.L2176
	b .L2180
.L2175:
	cmpwi %cr1,%r3,0
	bgelr+ %cr1
	xxspltidp %vs2,1065353216
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
	sldi %r4,%r4,32
	sldi %r6,%r6,32
	srdi %r10,%r4,32
	srdi %r9,%r6,32
	cmplw %cr0,%r10,%r9
	rldicl %r3,%r3,0,32
	rldicl %r5,%r5,0,32
	or %r0,%r3,%r4
	or %r7,%r5,%r6
	blt- %cr0,.L2183
	li %r3,2
	bgtlr- %cr0
	cmplw %cr1,%r0,%r7
	li %r3,0
	bltlr- %cr1
	setbc %r8,5
	addi %r3,%r8,1
	blr
.L2183:
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
	sldi %r4,%r4,32
	sldi %r6,%r6,32
	srdi %r10,%r4,32
	srdi %r9,%r6,32
	cmplw %cr0,%r10,%r9
	rldicl %r3,%r3,0,32
	rldicl %r5,%r5,0,32
	or %r0,%r3,%r4
	or %r7,%r5,%r6
	blt- %cr0,.L2189
	li %r3,1
	bgtlr- %cr0
	cmplw %cr1,%r0,%r7
	li %r8,-1
	setbc %r11,5
	isel %r3,%r8,%r11,4
	blr
.L2189:
	li %r3,-1
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
	.set	.LC2,.LC6
	.set	.LC3,.LC7
	.align 4
.LC6:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC7:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.align 4
.LC10:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC11:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.align 4
.LC14:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC15:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC16:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC17:
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
