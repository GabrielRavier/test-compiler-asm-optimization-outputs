	.file	"mini-libc.c"
	.machine power9
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
	mr %r9,%r3
	mr %r3,%r4
	mr %r4,%r9
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
	mr %r9,%r3
	mr %r3,%r4
	mr %r4,%r9
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
	cmpld %cr0,%r3,%r4
	ble %cr0,.L5
	cmpdi %cr6,%r5,0
	add %r12,%r4,%r5
	add %r11,%r3,%r5
	beqlr %cr6
	addi %r6,%r5,-1
	cmpldi %cr7,%r6,14
	ble %cr7,.L7
	addi %r9,%r5,-2
	add %r8,%r3,%r6
	add %r10,%r4,%r9
	subf %r7,%r10,%r8
	addi %r0,%r7,14
	cmpldi %cr1,%r0,14
	ble %cr1,.L7
	srdi %r7,%r5,4
	addi %r9,%r5,-16
	andi. %r6,%r7,0x3
	add %r4,%r4,%r9
	add %r10,%r3,%r9
	addi %r0,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq %cr0,.L94
	cmpdi %cr5,%r6,1
	beq %cr5,.L110
	cmpdi %cr6,%r6,2
	beq %cr6,.L111
	lxv %vs7,0(%r4)
	mr %r7,%r0
	li %r9,-16
	stxv %vs7,0(%r10)
.L111:
	lxvx %vs8,%r4,%r9
	addi %r7,%r7,-1
	stxvx %vs8,%r10,%r9
	addi %r9,%r9,-16
.L110:
	lxvx %vs9,%r4,%r9
	cmpdi %cr7,%r7,1
	stxvx %vs9,%r10,%r9
	addi %r9,%r9,-16
	beq %cr7,.L158
.L94:
	srdi %r6,%r8,2
	mtctr %r6
.L8:
	lxvx %vs10,%r4,%r9
	addi %r0,%r9,-16
	addi %r7,%r9,-32
	addi %r8,%r9,-48
	stxvx %vs10,%r10,%r9
	addi %r9,%r9,-64
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r10,%r0
	lxvx %vs12,%r4,%r7
	stxvx %vs12,%r10,%r7
	lxvx %vs13,%r4,%r8
	stxvx %vs13,%r10,%r8
	bdnz .L8
.L158:
	andi. %r9,%r5,0xf
	rldicr %r4,%r5,0,59
	subf %r12,%r4,%r12
	subf %r11,%r4,%r11
	subf %r5,%r4,%r5
	beqlr %cr0
	cmpldi %cr1,%r5,1
	lbz %r10,-1(%r12)
	stb %r10,-1(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,2
	lbz %r9,-2(%r12)
	stb %r9,-2(%r11)
	beqlr %cr5
	cmpldi %cr6,%r5,3
	lbz %r6,-3(%r12)
	stb %r6,-3(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,4
	lbz %r0,-4(%r12)
	stb %r0,-4(%r11)
	beqlr %cr7
	cmpldi %cr0,%r5,5
	lbz %r8,-5(%r12)
	stb %r8,-5(%r11)
	beqlr %cr0
	cmpldi %cr1,%r5,6
	lbz %r7,-6(%r12)
	stb %r7,-6(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,7
	lbz %r4,-7(%r12)
	stb %r4,-7(%r11)
	beqlr %cr5
	cmpldi %cr6,%r5,8
	lbz %r10,-8(%r12)
	stb %r10,-8(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,9
	lbz %r9,-9(%r12)
	stb %r9,-9(%r11)
	beqlr %cr7
	cmpldi %cr0,%r5,10
	lbz %r6,-10(%r12)
	stb %r6,-10(%r11)
	beqlr %cr0
	cmpldi %cr1,%r5,11
	lbz %r0,-11(%r12)
	stb %r0,-11(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,12
	lbz %r8,-12(%r12)
	stb %r8,-12(%r11)
	beqlr %cr5
	cmpldi %cr6,%r5,13
	lbz %r7,-13(%r12)
	stb %r7,-13(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,14
	lbz %r5,-14(%r12)
	stb %r5,-14(%r11)
	beqlr %cr7
	lbz %r12,-15(%r12)
	stb %r12,-15(%r11)
	blr
	.p2align 4,,15
.L5:
	beqlr %cr0
	cmpdi %cr1,%r5,0
	beqlr %cr1
	addi %r9,%r5,-1
	cmpldi %cr5,%r9,14
	ble %cr5,.L12
	addi %r10,%r4,1
	subf %r0,%r10,%r3
	cmpldi %cr6,%r0,14
	ble %cr6,.L12
	srdi %r8,%r5,4
	li %r12,0
	andi. %r7,%r8,0x3
	addi %r6,%r8,-1
	mr %r11,%r8
	beq %cr0,.L106
	cmpdi %cr7,%r7,1
	beq %cr7,.L112
	cmpdi %cr1,%r7,2
	beq %cr1,.L113
	lxv %vs0,0(%r4)
	mr %r8,%r6
	li %r12,16
	stxv %vs0,0(%r3)
.L113:
	lxvx %vs1,%r4,%r12
	addi %r8,%r8,-1
	stxvx %vs1,%r3,%r12
	addi %r12,%r12,16
.L112:
	lxvx %vs2,%r4,%r12
	cmpdi %cr5,%r8,1
	stxvx %vs2,%r3,%r12
	addi %r12,%r12,16
	beq %cr5,.L159
.L106:
	srdi %r9,%r11,2
	mtctr %r9
.L13:
	lxvx %vs3,%r4,%r12
	addi %r10,%r12,16
	addi %r7,%r12,32
	addi %r0,%r12,48
	stxvx %vs3,%r3,%r12
	addi %r12,%r12,64
	lxvx %vs4,%r4,%r10
	stxvx %vs4,%r3,%r10
	lxvx %vs5,%r4,%r7
	stxvx %vs5,%r3,%r7
	lxvx %vs6,%r4,%r0
	stxvx %vs6,%r3,%r0
	bdnz .L13
.L159:
	andi. %r9,%r5,0xf
	rldicr %r6,%r5,0,59
	add %r11,%r4,%r6
	add %r12,%r3,%r6
	subf %r5,%r6,%r5
	beqlr %cr0
	cmpldi %cr6,%r5,1
	lbzx %r4,%r4,%r6
	stbx %r4,%r3,%r6
	beqlr %cr6
	cmpldi %cr7,%r5,2
	lbz %r8,1(%r11)
	stb %r8,1(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,3
	lbz %r9,2(%r11)
	stb %r9,2(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,4
	lbz %r10,3(%r11)
	stb %r10,3(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,5
	lbz %r0,4(%r11)
	stb %r0,4(%r12)
	beqlr %cr0
	cmpldi %cr6,%r5,6
	lbz %r7,5(%r11)
	stb %r7,5(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,7
	lbz %r6,6(%r11)
	stb %r6,6(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,8
	lbz %r4,7(%r11)
	stb %r4,7(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,9
	lbz %r8,8(%r11)
	stb %r8,8(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,10
	lbz %r9,9(%r11)
	stb %r9,9(%r12)
	beqlr %cr0
	cmpldi %cr6,%r5,11
	lbz %r10,10(%r11)
	stb %r10,10(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,12
	lbz %r0,11(%r11)
	stb %r0,11(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,13
	lbz %r7,12(%r11)
	stb %r7,12(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,13(%r11)
	stb %r5,13(%r12)
	beqlr %cr5
	lbz %r11,14(%r11)
	stb %r11,14(%r12)
	blr
	.p2align 4,,15
.L7:
	andi. %r9,%r6,0x1
	bne %cr0,.L169
.L87:
	srdi %r10,%r6,1
	addi %r9,%r10,1
	mtctr %r9
	b .L10
	.p2align 4,,15
.L170:
	lbz %r0,-1(%r7)
	addi %r11,%r11,-2
	stb %r0,-1(%r8)
.L10:
	lbz %r6,-1(%r12)
	addi %r7,%r12,-1
	addi %r8,%r11,-1
	addi %r12,%r12,-2
	stb %r6,-1(%r11)
	bdnz .L170
	blr
.L169:
	lbzu %r4,-1(%r12)
	stbu %r4,-1(%r11)
	b .L87
	.p2align 4,,15
.L12:
	andi. %r10,%r9,0x1
	addi %r12,%r4,-1
	addi %r8,%r3,-1
	bne %cr0,.L171
.L99:
	srdi %r4,%r9,1
	addi %r9,%r4,1
	mtctr %r9
	b .L16
	.p2align 4,,15
.L172:
	lbz %r0,1(%r5)
	addi %r8,%r8,2
	stb %r0,1(%r7)
.L16:
	lbz %r10,1(%r12)
	addi %r5,%r12,1
	addi %r7,%r8,1
	addi %r12,%r12,2
	stb %r10,1(%r8)
	bdnz .L172
	blr
.L171:
	lbz %r6,0(%r4)
	mr %r12,%r4
	mr %r8,%r3
	stb %r6,0(%r3)
	b .L99
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
	cmpdi %cr0,%r6,0
	rlwinm %r5,%r5,0,0xff
	beq %cr0,.L174
	andi. %r9,%r6,0x1
	addi %r8,%r6,-1
	addi %r9,%r4,-1
	bne %cr0,.L195
.L184:
	srdi %r0,%r6,1
	mtctr %r0
	b .L175
	.p2align 4,,15
.L177:
	lbz %r12,1(%r6)
	rlwinm %r8,%r12,0,0xff
	stbu %r12,1(%r3)
	cmpw %cr7,%r8,%r5
	beq %cr7,.L192
	addi %r3,%r3,1
	bdz .L174
.L175:
	lbz %r4,1(%r9)
	addi %r6,%r9,1
	addi %r9,%r6,1
	rlwinm %r11,%r4,0,0xff
	stb %r4,0(%r3)
	cmpw %cr6,%r11,%r5
	bne %cr6,.L177
.L192:
	addi %r3,%r3,1
	blr
	.p2align 4,,15
.L195:
	lbz %r10,0(%r4)
	mr %r9,%r4
	rlwinm %r7,%r10,0,0xff
	stb %r10,0(%r3)
	cmpw %cr1,%r7,%r5
	beq %cr1,.L192
	cmpdi %cr5,%r8,0
	addi %r3,%r3,1
	bne %cr5,.L184
.L174:
	li %r3,0
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
	cmpdi %cr0,%r5,0
	rlwinm %r4,%r4,0,0xff
	beq %cr0,.L200
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne %cr0,.L217
.L203:
	srdi %r0,%r5,1
	mtctr %r0
.L197:
	lbz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr %cr6
	lbzu %r6,1(%r3)
	cmpw %cr7,%r6,%r4
	beqlr %cr7
	addi %r3,%r3,1
	bdnz .L197
.L200:
	li %r3,0
	blr
	.p2align 4,,15
.L217:
	lbz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,1
	bne %cr5,.L203
	b .L200
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
	cmpdi %cr0,%r5,0
	beq %cr0,.L223
	andi. %r9,%r5,0x1
	addi %r8,%r5,-1
	bne %cr0,.L240
.L226:
	srdi %r0,%r5,1
	mtctr %r0
	b .L219
	.p2align 4,,15
.L221:
	lbz %r10,1(%r3)
	lbz %r9,1(%r4)
	addi %r3,%r7,1
	addi %r4,%r5,1
	cmpw %cr7,%r10,%r9
	bne %cr7,.L235
	bdz .L223
.L219:
	lbz %r10,0(%r3)
	lbz %r9,0(%r4)
	addi %r7,%r3,1
	addi %r5,%r4,1
	cmpw %cr6,%r10,%r9
	beq %cr6,.L221
.L235:
	subf %r3,%r9,%r10
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L240:
	lbz %r10,0(%r3)
	lbz %r9,0(%r4)
	cmpw %cr1,%r10,%r9
	bne %cr1,.L235
	cmpdi %cr5,%r8,0
	addi %r3,%r3,1
	addi %r4,%r4,1
	bne %cr5,.L226
.L223:
	li %r3,0
	extsw %r3,%r3
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
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr %r31,%r3
	beq %cr0,.L242
	mflr %r0
	.cfi_register 65, 0
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L242:
	addi %r1,%r1,48
	.cfi_def_cfa_offset 0
	mr %r3,%r31
	ld %r31,-8(%r1)
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
	mr %r10,%r5
	addi %r5,%r5,-1
	andi. %r8,%r10,0x1
	add %r11,%r3,%r5
	rlwinm %r4,%r4,0,0xff
	beq %cr0,.L252
	mr %r3,%r11
	addi %r11,%r11,-1
	lbz %r8,0(%r3)
	cmpw %cr1,%r8,%r4
	beqlr %cr1
.L252:
	srdi %r3,%r10,1
	addi %r0,%r3,1
	mtctr %r0
	bdz .L260
	.p2align 4,,15
.L250:
	lbz %r6,0(%r11)
	mr %r3,%r11
	addi %r9,%r11,-1
	cmpw %cr5,%r6,%r4
	beqlr %cr5
	lbz %r7,0(%r9)
	mr %r3,%r9
	addi %r11,%r9,-1
	cmpw %cr6,%r7,%r4
	beqlr %cr6
	bdnz .L250
.L260:
	li %r3,0
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
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr %r31,%r3
	beq %cr0,.L264
	mflr %r0
	.cfi_register 65, 0
	rlwinm %r4,%r4,0,0xff
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L264:
	addi %r1,%r1,48
	.cfi_def_cfa_offset 0
	mr %r3,%r31
	ld %r31,-8(%r1)
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
	lbz %r9,0(%r4)
	rlwinm %r10,%r9,0,0xff
	stb %r9,0(%r3)
	cmpwi %cr0,%r10,0
	beqlr %cr0
	.p2align 4,,15
.L268:
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	beqlr %cr1
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	bne %cr1,.L268
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
	lbz %r9,0(%r3)
	rlwinm %r4,%r4,0,0xff
	cmpwi %cr0,%r9,0
	beqlr %cr0
	cmpw %cr1,%r9,%r4
	beqlr %cr1
	.p2align 5
.L279:
	lbzu %r9,1(%r3)
	cmpwi %cr5,%r9,0
	beqlr %cr5
	cmpw %cr1,%r9,%r4
	bne %cr1,.L279
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
.L282:
	lbz %r9,0(%r3)
	cmpw %cr0,%r9,%r4
	cmpwi %cr7,%r9,0
	beqlr %cr0
	addi %r3,%r3,1
	bne %cr7,.L282
	li %r3,0
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
	lbz %r9,0(%r3)
	lbz %r10,0(%r4)
	mr %r8,%r4
	cmpw %cr0,%r9,%r10
	beq %cr0,.L287
	b .L286
	.p2align 4,,15
.L288:
	lbzu %r9,1(%r3)
	lbzu %r10,1(%r8)
	cmpw %cr5,%r9,%r10
	bne %cr5,.L286
.L287:
	cmpwi %cr1,%r9,0
	bne %cr1,.L288
.L286:
	subf %r3,%r10,%r9
	extsw %r3,%r3
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
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq %cr0,.L296
	mr %r4,%r3
	.p2align 4,,15
.L295:
	lbzu %r10,1(%r4)
	cmpwi %cr1,%r10,0
	bne %cr1,.L295
	subf %r3,%r3,%r4
	blr
	.p2align 4,,15
.L296:
	li %r3,0
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
	cmpdi %cr0,%r5,0
	beq %cr0,.L306
	lbz %r10,0(%r3)
	addi %r5,%r5,-1
	add %r0,%r3,%r5
	subf %r6,%r3,%r0
	cmpwi %cr1,%r10,0
	addi %r9,%r6,1
	mtctr %r9
	bne %cr1,.L302
	b .L311
	.p2align 4,,15
.L313:
	bdz .L301
	bne %cr7,.L301
	lbzu %r10,1(%r3)
	cmpwi %cr6,%r10,0
	beq %cr6,.L312
	mr %r4,%r8
.L302:
	lbz %r7,0(%r4)
	addi %r8,%r4,1
	cmpwi %cr5,%r7,0
	cmpw %cr7,%r7,%r10
	bne %cr5,.L313
.L301:
	subf %r3,%r7,%r10
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L306:
	li %r3,0
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L312:
	lbz %r7,1(%r4)
	b .L301
.L311:
	lbz %r7,0(%r4)
	b .L301
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
	mfvrsave %r11
	oris %r0,%r11,0xc004
	stw %r11,-4(%r1)
	mtvrsave %r0
	cmpdi %cr0,%r5,1
	ble %cr0,.L314
	addi %r9,%r5,-2
	srdi %r7,%r5,1
	cmpldi %cr1,%r9,13
	ble %cr1,.L316
	srdi %r8,%r5,4
	addis %r6,%r2,.LC0@toc@ha
	andi. %r10,%r8,0x1
	addi %r12,%r6,.LC0@toc@l
	addi %r10,%r8,-1
	li %r11,0
	lxv %vs45,0(%r12)
	bne %cr0,.L329
.L321:
	srdi %r0,%r8,1
	mtctr %r0
.L317:
	addi %r9,%r11,16
	lxvx %vs33,%r3,%r11
	lxvx %vs0,%r3,%r9
	xxperm %vs33,%vs33,%vs45
	stxvx %vs33,%r4,%r11
	xxperm %vs0,%vs0,%vs45
	addi %r11,%r11,32
	stxvx %vs0,%r4,%r9
	bdnz .L317
.L325:
	sldi %r6,%r8,3
	sldi %r12,%r8,4
	cmpld %cr6,%r7,%r6
	add %r4,%r4,%r12
	add %r3,%r3,%r12
	subf %r5,%r12,%r5
	beq %cr6,.L314
.L316:
	cmpdi %cr7,%r5,3
	lhbrx %r8,0,%r3
	sth %r8,0(%r4)
	ble %cr7,.L314
	addi %r10,%r3,2
	cmpdi %cr1,%r5,5
	lhbrx %r11,0,%r10
	sth %r11,2(%r4)
	ble %cr1,.L314
	addi %r9,%r3,4
	cmpdi %cr0,%r5,7
	lhbrx %r0,0,%r9
	sth %r0,4(%r4)
	ble %cr0,.L314
	addi %r6,%r3,6
	cmpdi %cr5,%r5,9
	lhbrx %r12,0,%r6
	sth %r12,6(%r4)
	ble %cr5,.L314
	addi %r7,%r3,8
	cmpdi %cr6,%r5,11
	lhbrx %r8,0,%r7
	sth %r8,8(%r4)
	ble %cr6,.L314
	cmpdi %cr7,%r5,13
	addi %r5,%r3,10
	lhbrx %r10,0,%r5
	sth %r10,10(%r4)
	ble %cr7,.L314
	addi %r3,%r3,12
	lhbrx %r11,0,%r3
	sth %r11,12(%r4)
.L314:
	lwz %r4,-4(%r1)
	mtvrsave %r4
	blr
	.p2align 4,,15
.L329:
	lxv %vs32,0(%r3)
	cmpdi %cr5,%r10,0
	li %r11,16
	xxperm %vs32,%vs32,%vs45
	stxv %vs32,0(%r4)
	bne %cr5,.L321
	b .L325
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
	ori %r9,%r3,0x20
	li %r10,1
	addi %r0,%r9,-97
	cmplwi %cr0,%r0,25
	isel %r3,0,%r10,1
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
	cmplwi %cr0,%r3,127
	li %r9,1
	isel %r3,0,%r9,1
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
	cmpwi %cr0,%r3,32
	beq %cr0,.L334
	cmpwi %cr1,%r3,9
	li %r9,0
	li %r3,1
	isel %r0,%r3,%r9,6
	rldicl %r3,%r0,0,63
	blr
	.p2align 4,,15
.L334:
	li %r0,1
	rldicl %r3,%r0,0,63
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
	cmplwi %cr0,%r3,31
	ble %cr0,.L337
	cmpwi %cr1,%r3,127
	li %r9,0
	li %r3,1
	isel %r0,%r3,%r9,6
	rldicl %r3,%r0,0,63
	blr
	.p2align 4,,15
.L337:
	li %r0,1
	rldicl %r3,%r0,0,63
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
	addi %r9,%r3,-48
	li %r10,1
	cmplwi %cr0,%r9,9
	isel %r3,0,%r10,1
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
	addi %r9,%r3,-33
	li %r10,1
	cmplwi %cr0,%r9,93
	isel %r3,0,%r10,1
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
	addi %r9,%r3,-97
	li %r10,1
	cmplwi %cr0,%r9,25
	isel %r3,0,%r10,1
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
	addi %r9,%r3,-32
	li %r10,1
	cmplwi %cr0,%r9,94
	isel %r3,0,%r10,1
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
	cmpwi %cr0,%r3,32
	beq %cr0,.L344
	addi %r3,%r3,-9
	li %r9,1
	cmplwi %cr1,%r3,4
	isel %r0,0,%r9,5
	rldicl %r3,%r0,0,63
	blr
	.p2align 4,,15
.L344:
	li %r0,1
	rldicl %r3,%r0,0,63
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
	addi %r9,%r3,-65
	li %r10,1
	cmplwi %cr0,%r9,25
	isel %r3,0,%r10,1
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
	cmplwi %cr0,%r3,31
	li %r10,1
	ble %cr0,.L347
	addi %r9,%r3,-127
	li %r10,1
	cmplwi %cr1,%r9,32
	bgt %cr1,.L351
.L347:
	rldicl %r3,%r10,0,63
	blr
	.p2align 4,,15
.L351:
	addi %r0,%r3,-8232
	cmplwi %cr5,%r0,1
	ble %cr5,.L347
	addis %r3,%r3,0xffff
	addi %r4,%r3,7
	cmplwi %cr6,%r4,2
	isel %r10,0,%r10,25
	rldicl %r3,%r10,0,63
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
	addi %r9,%r3,-48
	li %r10,1
	cmplwi %cr0,%r9,9
	isel %r3,0,%r10,1
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
	cmplwi %cr0,%r3,254
	ble %cr0,.L360
	cmplwi %cr1,%r3,8231
	li %r12,1
	ble %cr1,.L355
	addi %r10,%r3,-8234
	cmplwi %cr5,%r10,47061
	ble %cr5,.L355
	addis %r4,%r3,0xffff
	addi %r8,%r4,8192
	cmplwi %cr6,%r8,8184
	ble %cr6,.L355
	lis %r0,0x10
	addi %r5,%r4,4
	ori %r6,%r0,0x3
	li %r12,0
	cmplw %cr7,%r5,%r6
	bgt %cr7,.L355
	li %r7,0
	rlwinm %r3,%r3,0,16,30
	ori %r11,%r7,0xfffe
	li %r9,1
	cmpw %cr0,%r3,%r11
	isel %r12,0,%r9,2
.L355:
	rldicl %r3,%r12,0,63
	blr
	.p2align 4,,15
.L360:
	addi %r10,%r3,1
	li %r4,1
	rlwinm %r8,%r10,0,25,31
	cmplwi %cr1,%r8,33
	isel %r12,0,%r4,4
	rldicl %r3,%r12,0,63
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
	addi %r9,%r3,-48
	cmplwi %cr0,%r9,9
	ble %cr0,.L363
	ori %r3,%r3,0x20
	li %r0,1
	addi %r4,%r3,-97
	cmplwi %cr1,%r4,5
	isel %r5,0,%r0,5
	rldicl %r3,%r5,0,63
	blr
	.p2align 4,,15
.L363:
	li %r5,1
	rldicl %r3,%r5,0,63
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
	rldicl %r3,%r3,0,57
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
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L369
	fcmpu %cr5,%f1,%f2
	bng %cr5,.L372
	fsub %f1,%f1,%f2
	blr
	.p2align 4,,15
.L372:
	xxlxor %vs1,%vs1,%vs1
	blr
	.p2align 4,,15
.L369:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L377
	fcmpu %cr5,%f1,%f2
	bng %cr5,.L380
	fsubs %f1,%f1,%f2
	blr
	.p2align 4,,15
.L380:
	xxlxor %vs1,%vs1,%vs1
	blr
	.p2align 4,,15
.L377:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun %cr0,.L384
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L385
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L383
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr %cr6
.L385:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L383:
	xscmpgtdp %vs12,%vs2,%vs1
	xxsel %vs1,%vs1,%vs2,%vs12
	blr
	.p2align 4,,15
.L384:
	fmr %f1,%f2
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
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun %cr0,.L390
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L391
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r9,%vs12
	mfvsrwz %r10,%vs1
	rlwinm %r0,%r9,0,0,0
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq %cr5,.L389
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr %cr6
.L391:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L389:
	xscmpgtdp %vs3,%vs2,%vs0
	xxsel %vs1,%vs0,%vs2,%vs3
	blr
	.p2align 4,,15
.L390:
	fmr %f1,%f2
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
	fmr %f9,%f2
	fmr %f8,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fmr %f0,%f8
	fcmpu %cr0,%f0,%f0
	bun %cr0,.L400
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun %cr1,.L399
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L395
	cmpwi %cr7,%r0,0
	bne %cr7,.L400
.L399:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
	.p2align 4,,15
.L395:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt %cr6,.L400
	fmr %f11,%f2
	fmr %f10,%f1
.L400:
	fmr %f1,%f10
	fmr %f2,%f11
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
	fcmpu %cr0,%f1,%f1
	bun %cr0,.L404
	fcmpu %cr1,%f2,%f2
	bunlr %cr1
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L403
	cmpwi %cr6,%r0,0
	bnelr %cr6
.L404:
	fmr %f1,%f2
	blr
	.p2align 4,,15
.L403:
	xsmincdp %vs1,%vs1,%vs2
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
	fcmpu %cr0,%f1,%f1
	bun %cr0,.L410
	fcmpu %cr1,%f2,%f2
	bunlr %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r9,%vs0
	mfvsrwz %r10,%vs3
	rlwinm %r0,%r9,0,0,0
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq %cr5,.L409
	cmpwi %cr6,%r0,0
	bnelr %cr6
.L410:
	fmr %f1,%f2
	blr
	.p2align 4,,15
.L409:
	xsmincdp %vs1,%vs1,%vs2
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
	fmr %f0,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fcmpu %cr0,%f0,%f0
	bun %cr0,.L418
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr %cr1
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L415
	cmpwi %cr7,%r0,0
	bnelr %cr7
.L418:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
	.p2align 4,,15
.L415:
	fcmpu %cr6,%f1,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f2,%f11
	bltlr %cr6
	fmr %f1,%f10
	fmr %f2,%f11
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
	mr %r9,%r3
	addis %r3,%r2,.LANCHOR0@toc@ha
	cmpwi %cr0,%r9,0
	addi %r3,%r3,.LANCHOR0@toc@l
	beq %cr0,.L424
	addis %r7,%r2,.LANCHOR1@toc@ha
	mr %r10,%r3
	addi %r4,%r7,.LANCHOR1@toc@l
	.p2align 5
.L423:
	rldicl %r8,%r9,0,58
	srwi %r9,%r9,6
	cmpwi %cr1,%r9,0
	addi %r10,%r10,1
	lbzx %r0,%r4,%r8
	stb %r0,-1(%r10)
	bne %cr1,.L423
	li %r5,0
	stb %r5,0(%r10)
	blr
	.p2align 4,,15
.L424:
	mr %r10,%r3
	li %r5,0
	stb %r5,0(%r10)
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
	addi %r3,%r3,-1
	addis %r9,%r2,.LANCHOR0+8@toc@ha
	rldicl %r0,%r3,0,32
	std %r0,.LANCHOR0+8@toc@l(%r9)
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
	addis %r7,%r2,.LANCHOR0+8@toc@ha
	lis %r10,0x4c95
	lis %r8,0x5851
	ori %r0,%r10,0x7f2d
	ld %r9,.LANCHOR0+8@toc@l(%r7)
	ori %r3,%r8,0xf42d
	rldimi %r0,%r3,32,0
	mulld %r4,%r9,%r0
	addi %r5,%r4,1
	srdi %r3,%r5,33
	std %r5,.LANCHOR0+8@toc@l(%r7)
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
	cmpdi %cr0,%r4,0
	beq %cr0,.L434
	ld %r9,0(%r4)
	std %r4,8(%r3)
	std %r9,0(%r3)
	std %r3,0(%r4)
	ori %r2,%r2,0
	ld %r4,0(%r3)
	cmpdi %cr1,%r4,0
	beqlr %cr1
	std %r3,8(%r4)
	blr
	.p2align 4,,15
.L434:
	std %r4,8(%r3)
	std %r4,0(%r3)
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
	ld %r9,0(%r3)
	cmpdi %cr0,%r9,0
	beq %cr0,.L436
	ld %r10,8(%r3)
	std %r10,8(%r9)
.L436:
	ld %r3,8(%r3)
	cmpdi %cr1,%r3,0
	beqlr %cr1
	std %r9,0(%r3)
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
	mflr %r0
	std %r26,-48(%r1)
	.cfi_register 65, 0
	.cfi_offset 26, -48
	ld %r26,0(%r5)
	std %r23,-72(%r1)
	std %r24,-64(%r1)
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr %r23,%r4
	mr %r24,%r5
	std %r27,-40(%r1)
	std %r28,-32(%r1)
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	mr %r27,%r3
	mr %r28,%r6
	std %r25,-56(%r1)
	cmpdi %cr0,%r26,0
	std %r0,16(%r1)
	stdu %r1,-112(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset 25, -56
	.cfi_offset 65, 16
	std %r2,24(%r1)
	beq %cr0,.L445
	std %r29,88(%r1)
	.cfi_offset 29, -24
	std %r30,96(%r1)
	.cfi_offset 30, -16
	mr %r29,%r7
	li %r30,0
	std %r31,104(%r1)
	.cfi_offset 31, -8
	mr %r31,%r4
	b .L447
	.p2align 4,,15
.L459:
	beq %cr7,.L458
.L447:
	mtctr %r29
	mr %r4,%r31
	mr %r3,%r27
	mr %r12,%r29
	addi %r30,%r30,1
	mr %r25,%r31
	add %r31,%r31,%r28
	bctrl
	ld 2,24(1)
	cmpld %cr7,%r26,%r30
	cmpwi %cr1,%r3,0
	bne %cr1,.L459
	ld %r29,88(%r1)
	.cfi_restore 29
	ld %r30,96(%r1)
	.cfi_restore 30
	ld %r31,104(%r1)
	.cfi_restore 31
.L444:
	addi %r1,%r1,112
	.cfi_def_cfa_offset 0
	mr %r3,%r25
	ld %r4,16(%r1)
	ld %r23,-72(%r1)
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r28,-32(%r1)
	mtlr %r4
	.cfi_restore 65
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.p2align 4,,15
.L458:
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
	ld %r29,88(%r1)
	.cfi_restore 29
	ld %r30,96(%r1)
	.cfi_restore 30
	ld %r31,104(%r1)
	.cfi_restore 31
.L445:
	cmpdi %cr5,%r28,0
	addi %r9,%r26,1
	maddld %r25,%r28,%r26,%r23
	std %r9,0(%r24)
	beq %cr5,.L444
	mr %r5,%r28
	mr %r4,%r27
	mr %r3,%r25
	bl memmove
	nop
	addi %r1,%r1,112
	.cfi_def_cfa_offset 0
	mr %r3,%r25
	ld %r4,16(%r1)
	ld %r23,-72(%r1)
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r28,-32(%r1)
	mtlr %r4
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
	std %r26,-48(%r1)
	.cfi_offset 26, -48
	ld %r26,0(%r5)
	std %r25,-56(%r1)
	stdu %r1,-96(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	cmpdi %cr0,%r26,0
	beq %cr0,.L461
	mflr %r0
	.cfi_register 65, 0
	std %r27,56(%r1)
	.cfi_offset 27, -40
	std %r28,64(%r1)
	.cfi_offset 28, -32
	mr %r27,%r6
	std %r29,72(%r1)
	.cfi_offset 29, -24
	std %r30,80(%r1)
	.cfi_offset 30, -16
	mr %r28,%r3
	mr %r29,%r7
	std %r31,88(%r1)
	.cfi_offset 31, -8
	std %r2,24(%r1)
	mr %r31,%r4
	li %r30,0
	std %r0,112(%r1)
	.cfi_offset 65, 16
	b .L463
	.p2align 4,,15
.L471:
	beq %cr7,.L470
.L463:
	mtctr %r29
	mr %r4,%r31
	mr %r3,%r28
	mr %r12,%r29
	addi %r30,%r30,1
	mr %r25,%r31
	add %r31,%r31,%r27
	bctrl
	ld 2,24(1)
	cmpld %cr7,%r26,%r30
	cmpwi %cr1,%r3,0
	bne %cr1,.L471
	ld %r3,112(%r1)
	ld %r27,56(%r1)
	.cfi_remember_state
	.cfi_restore 27
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r29,72(%r1)
	.cfi_restore 29
	ld %r30,80(%r1)
	.cfi_restore 30
	ld %r31,88(%r1)
	.cfi_restore 31
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	mtlr %r3
	.cfi_restore 65
	ld %r26,-48(%r1)
	mr %r3,%r25
	ld %r25,-56(%r1)
	.cfi_restore 26
	.cfi_restore 25
	blr
	.p2align 4,,15
.L470:
	.cfi_restore_state
	ld %r0,112(%r1)
	ld %r27,56(%r1)
	.cfi_restore 27
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r29,72(%r1)
	.cfi_restore 29
	ld %r30,80(%r1)
	.cfi_restore 30
	ld %r31,88(%r1)
	.cfi_restore 31
	mtlr %r0
	.cfi_restore 65
.L461:
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	li %r25,0
	mr %r3,%r25
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
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
	srawi %r9,%r3,31
	xor %r3,%r9,%r3
	subf %r0,%r9,%r3
	extsw %r3,%r0
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
.L480:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq %cr0,.L474
	ble %cr7,.L474
	cmpwi %cr1,%r9,43
	beq %cr1,.L475
	cmpwi %cr6,%r9,45
	bne %cr6,.L495
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r9,-48
	cmplwi %cr0,%r4,9
	bgt %cr0,.L485
	li %r11,1
.L478:
	li %r8,0
	.p2align 5
.L482:
	addi %r7,%r9,-48
	mulli %r12,%r8,10
	lbzu %r9,1(%r3)
	addi %r6,%r9,-48
	subf %r8,%r7,%r12
	cmplwi %cr1,%r6,9
	ble %cr1,.L482
	cmpwi %cr5,%r11,0
	subf %r9,%r12,%r7
	isel %r3,%r9,%r8,22
.L481:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L474:
	addi %r3,%r3,1
	b .L480
	.p2align 4,,15
.L495:
	addi %r5,%r9,-48
	li %r11,0
	cmplwi %cr7,%r5,9
	ble %cr7,.L478
.L485:
	li %r3,0
	b .L481
	.p2align 4,,15
.L475:
	lbz %r9,1(%r3)
	li %r11,0
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	ble %cr5,.L478
	li %r3,0
	b .L481
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
.L503:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq %cr0,.L497
	ble %cr7,.L497
	cmpwi %cr1,%r9,43
	beq %cr1,.L498
	cmpwi %cr6,%r9,45
	bne %cr6,.L518
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r9,-48
	cmplwi %cr0,%r4,9
	bgt %cr0,.L508
	li %r8,1
.L501:
	li %r6,0
	.p2align 5
.L505:
	addi %r11,%r9,-48
	mulli %r7,%r6,10
	lbzu %r9,1(%r3)
	extsw %r12,%r11
	addi %r10,%r9,-48
	subf %r6,%r12,%r7
	cmplwi %cr1,%r10,9
	ble %cr1,.L505
	cmpwi %cr5,%r8,0
	subf %r3,%r7,%r12
	isel %r3,%r3,%r6,22
	blr
	.p2align 4,,15
.L497:
	addi %r3,%r3,1
	b .L503
	.p2align 4,,15
.L518:
	addi %r5,%r9,-48
	li %r8,0
	cmplwi %cr7,%r5,9
	ble %cr7,.L501
.L508:
	li %r3,0
	blr
	.p2align 4,,15
.L498:
	lbz %r9,1(%r3)
	li %r8,0
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	ble %cr5,.L501
	b .L508
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
.L524:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq %cr0,.L520
	ble %cr7,.L520
	cmpwi %cr1,%r9,43
	beq %cr1,.L521
	cmpwi %cr6,%r9,45
	beq %cr6,.L522
	addi %r4,%r9,-48
	li %r8,0
	cmplwi %cr7,%r4,9
	bgt %cr7,.L531
.L525:
	li %r6,0
	.p2align 5
.L528:
	addi %r11,%r9,-48
	mulli %r7,%r6,10
	lbzu %r9,1(%r3)
	extsw %r12,%r11
	addi %r10,%r9,-48
	subf %r6,%r12,%r7
	cmplwi %cr1,%r10,9
	ble %cr1,.L528
	cmpwi %cr5,%r8,0
	subf %r3,%r7,%r12
	isel %r3,%r3,%r6,22
	blr
	.p2align 4,,15
.L520:
	addi %r3,%r3,1
	b .L524
	.p2align 4,,15
.L522:
	lbz %r9,1(%r3)
	li %r8,1
	addi %r3,%r3,1
	addi %r5,%r9,-48
	cmplwi %cr0,%r5,9
	ble %cr0,.L525
.L531:
	li %r3,0
	blr
	.p2align 4,,15
.L521:
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	bgt %cr5,.L531
	li %r8,0
	b .L525
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
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	mr. %r31,%r5
	std %r29,-24(%r1)
	stdu %r1,-96(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -24
	beq %cr0,.L542
	mflr %r0
	.cfi_register 65, 0
	std %r25,40(%r1)
	.cfi_offset 25, -56
	std %r26,48(%r1)
	.cfi_offset 26, -48
	mr %r25,%r3
	std %r27,56(%r1)
	.cfi_offset 27, -40
	std %r28,64(%r1)
	.cfi_offset 28, -32
	mr %r27,%r4
	mr %r26,%r6
	std %r2,24(%r1)
	std %r30,80(%r1)
	.cfi_offset 30, -16
	mr %r28,%r7
	std %r0,112(%r1)
	.cfi_offset 65, 16
	b .L545
	.p2align 4,,15
.L554:
	beq %cr1,.L552
	cmpdi %cr5,%r31,0
	add %r27,%r29,%r26
	beq %cr5,.L553
.L545:
	mtctr %r28
	srdi %r30,%r31,1
	maddld %r29,%r30,%r26,%r27
	mr %r3,%r25
	mr %r12,%r28
	addi %r31,%r31,-1
	subf %r31,%r30,%r31
	mr %r4,%r29
	bctrl
	ld 2,24(1)
	cmpwi %cr1,%r3,0
	bge %cr1,.L554
	mr %r31,%r30
	cmpdi %cr5,%r31,0
	bne %cr5,.L545
.L553:
	ld %r3,112(%r1)
	ld %r25,40(%r1)
	.cfi_restore 25
	ld %r26,48(%r1)
	.cfi_restore 26
	ld %r27,56(%r1)
	.cfi_restore 27
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r30,80(%r1)
	.cfi_restore 30
	mtlr %r3
	.cfi_restore 65
.L542:
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	li %r29,0
	mr %r3,%r29
	ld %r29,-24(%r1)
	ld %r31,-8(%r1)
	.cfi_restore 31
	.cfi_restore 29
	blr
	.p2align 4,,15
.L552:
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld %r0,112(%r1)
	ld %r25,40(%r1)
	.cfi_restore 25
	ld %r26,48(%r1)
	.cfi_restore 26
	ld %r27,56(%r1)
	.cfi_restore 27
	mr %r3,%r29
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r30,80(%r1)
	.cfi_restore 30
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	mtlr %r0
	.cfi_restore 65
	ld %r29,-24(%r1)
	ld %r31,-8(%r1)
	.cfi_restore 31
	.cfi_restore 29
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
	cmpwi %cr0,%r5,0
	std %r24,-64(%r1)
	std %r25,-56(%r1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	mr %r24,%r8
	std %r26,-48(%r1)
	std %r27,-40(%r1)
	mr %r25,%r3
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr %r27,%r4
	std %r29,-24(%r1)
	std %r31,-8(%r1)
	mr %r26,%r6
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr %r31,%r5
	std %r30,-16(%r1)
	mr %r29,%r7
	stdu %r1,-96(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq %cr0,.L560
	mflr %r0
	.cfi_register 65, 0
	std %r2,24(%r1)
	std %r28,64(%r1)
	.cfi_offset 28, -32
	std %r0,112(%r1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L565:
	mtctr %r29
	srawi %r30,%r31,1
	maddld %r30,%r30,%r26,%r27
	mr %r5,%r24
	mr %r3,%r25
	mr %r12,%r29
	srawi %r28,%r31,1
	addi %r31,%r31,-1
	srawi %r31,%r31,1
	mr %r4,%r30
	bctrl
	ld 2,24(1)
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	beq %cr1,.L569
.L571:
	cmpwi %cr5,%r28,0
	ble %cr1,.L558
	add %r27,%r30,%r26
	bne %cr7,.L565
.L570:
	ld %r0,112(%r1)
	ld %r28,64(%r1)
	.cfi_restore 28
	mtlr %r0
	.cfi_restore 65
.L560:
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	li %r30,0
	mr %r3,%r30
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r29,-24(%r1)
	ld %r30,-16(%r1)
	ld %r31,-8(%r1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.p2align 4,,15
.L558:
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
	mr %r31,%r28
	beq %cr5,.L570
	mtctr %r29
	srawi %r30,%r31,1
	maddld %r30,%r30,%r26,%r27
	mr %r5,%r24
	mr %r3,%r25
	mr %r12,%r29
	srawi %r28,%r31,1
	addi %r31,%r31,-1
	srawi %r31,%r31,1
	mr %r4,%r30
	bctrl
	ld 2,24(1)
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	bne %cr1,.L571
.L569:
	ld %r3,112(%r1)
	ld %r28,64(%r1)
	.cfi_restore 28
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	mtlr %r3
	.cfi_restore 65
	ld %r29,-24(%r1)
	mr %r3,%r30
	ld %r31,-8(%r1)
	ld %r30,-16(%r1)
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
	divw %r9,%r3,%r4
	mullw %r4,%r9,%r4
	rldicl %r0,%r9,0,32
	subf %r3,%r4,%r3
	sldi %r5,%r3,32
	or %r3,%r0,%r5
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
	sradi %r9,%r3,63
	xor %r3,%r9,%r3
	subf %r3,%r9,%r3
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
	mr %r9,%r3
	divd %r3,%r3,%r4
	mulld %r4,%r3,%r4
	subf %r4,%r4,%r9
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
	sradi %r9,%r3,63
	xor %r3,%r9,%r3
	subf %r3,%r9,%r3
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
	mr %r9,%r3
	divd %r3,%r3,%r4
	mulld %r4,%r3,%r4
	subf %r4,%r4,%r9
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
	sradi %r9,%r3,63
	xor %r3,%r9,%r3
	subf %r3,%r9,%r3
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
	mr %r9,%r3
	divd %r3,%r3,%r4
	mulld %r4,%r3,%r4
	subf %r4,%r4,%r9
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
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq %cr0,.L583
	.p2align 5
.L580:
	cmpw %cr1,%r9,%r4
	beqlr %cr1
	lwzu %r9,4(%r3)
	cmpwi %cr5,%r9,0
	bne %cr5,.L580
.L583:
	li %r3,0
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
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr0,%r9,%r10
	beq %cr0,.L590
	b .L589
	.p2align 4,,15
.L591:
	lwzu %r9,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r9,%r0
	bne %cr0,.L589
.L590:
	cmpwi %cr7,%r9,0
	bne %cr7,.L591
.L589:
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
	li %r4,-1
	isel %r5,%r4,%r3,0
	extsw %r3,%r5
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
	addi %r4,%r4,-4
	addi %r10,%r3,-4
	.p2align 4,,15
.L595:
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	beqlr %cr0
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	bne %cr0,.L595
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
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq %cr0,.L601
	mr %r4,%r3
	.p2align 4,,15
.L600:
	lwzu %r10,4(%r4)
	cmpwi %cr1,%r10,0
	bne %cr1,.L600
	subf %r3,%r3,%r4
	sradi %r3,%r3,2
	blr
	.p2align 4,,15
.L601:
	li %r3,0
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
	cmpdi %cr0,%r5,0
	beq %cr0,.L613
	mtctr %r5
	b .L604
	.p2align 4,,15
.L616:
	beq %cr7,.L606
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L613
.L604:
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r9,%r10
	cmpwi %cr7,%r9,0
	beq %cr1,.L616
.L606:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	bge %cr5,.L608
	li %r4,-1
	extsw %r3,%r4
	blr
	.p2align 4,,15
.L608:
	mfcr %r4,4
	rlwinm %r4,%r4,22,1
	extsw %r3,%r4
	blr
	.p2align 4,,15
.L613:
	li %r4,0
	extsw %r3,%r4
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
	cmpdi %cr0,%r5,0
	beq %cr0,.L621
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne %cr0,.L638
.L624:
	srdi %r0,%r5,1
	mtctr %r0
.L618:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr %cr7
	addi %r3,%r3,4
	bdnz .L618
.L621:
	li %r3,0
	blr
	.p2align 4,,15
.L638:
	lwz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	bne %cr5,.L624
	b .L621
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
	cmpdi %cr0,%r5,0
	beq %cr0,.L645
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne %cr0,.L662
.L648:
	srdi %r0,%r5,1
	mtctr %r0
	b .L640
	.p2align 4,,15
.L642:
	lwz %r12,4(%r3)
	lwz %r9,4(%r4)
	addi %r3,%r7,4
	addi %r4,%r11,4
	cmpw %cr1,%r12,%r9
	bne %cr1,.L657
	bdz .L645
.L640:
	lwz %r5,0(%r3)
	lwz %r6,0(%r4)
	addi %r7,%r3,4
	addi %r11,%r4,4
	cmpw %cr1,%r5,%r6
	beq %cr1,.L642
.L657:
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	li %r4,-1
	isel %r8,%r4,%r3,4
	extsw %r3,%r8
	blr
	.p2align 4,,15
.L662:
	lwz %r8,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r8,%r10
	bne %cr1,.L657
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne %cr5,.L648
.L645:
	li %r8,0
	extsw %r3,%r8
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
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr %r31,%r3
	beq %cr0,.L664
	mflr %r0
	.cfi_register 65, 0
	sldi %r5,%r5,2
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L664:
	addi %r1,%r1,48
	.cfi_def_cfa_offset 0
	mr %r3,%r31
	ld %r31,-8(%r1)
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
	cmpld %cr0,%r3,%r4
	beqlr %cr0
	sldi %r9,%r5,2
	subf %r10,%r4,%r3
	cmpld %cr1,%r10,%r9
	addi %r11,%r5,-1
	bge %cr1,.L764
	cmpdi %cr5,%r5,0
	beqlr %cr5
	cmpldi %cr6,%r11,4
	ble %cr6,.L674
	addi %r6,%r9,-4
	addi %r12,%r9,-8
	add %r7,%r3,%r6
	add %r10,%r4,%r12
	subf %r8,%r10,%r7
	addi %r0,%r8,8
	cmpldi %cr7,%r0,8
	ble %cr7,.L674
	srdi %r6,%r5,2
	addi %r9,%r9,-16
	andi. %r0,%r6,0x3
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq %cr0,.L713
	cmpdi %cr1,%r0,1
	beq %cr1,.L729
	cmpdi %cr5,%r0,2
	beq %cr5,.L730
	lxv %vs7,0(%r8)
	mr %r6,%r12
	li %r10,-16
	stxv %vs7,0(%r9)
.L730:
	lxvx %vs8,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs8,%r9,%r10
	addi %r10,%r10,-16
.L729:
	lxvx %vs9,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvx %vs9,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L752
.L713:
	srdi %r0,%r7,2
	mtctr %r0
.L675:
	lxvx %vs10,%r8,%r10
	addi %r12,%r10,-16
	addi %r6,%r10,-32
	addi %r7,%r10,-48
	stxvx %vs10,%r9,%r10
	addi %r10,%r10,-64
	lxvx %vs11,%r8,%r12
	stxvx %vs11,%r9,%r12
	lxvx %vs12,%r8,%r6
	stxvx %vs12,%r9,%r6
	lxvx %vs13,%r8,%r7
	stxvx %vs13,%r9,%r7
	bdnz .L675
.L752:
	andi. %r9,%r5,0x3
	rldicr %r5,%r5,0,61
	subf %r11,%r5,%r11
	beqlr %cr0
	sldi %r8,%r11,2
	cmpdi %cr7,%r11,0
	lwzx %r9,%r4,%r8
	stwx %r9,%r3,%r8
	beqlr %cr7
	addi %r10,%r11,-1
	sldi %r12,%r10,2
	cmpdi %cr1,%r10,0
	lwzx %r0,%r4,%r12
	stwx %r0,%r3,%r12
	beqlr %cr1
	addi %r7,%r12,-4
	lwzx %r4,%r4,%r7
	stwx %r4,%r3,%r7
	blr
	.p2align 4,,15
.L764:
	cmpdi %cr5,%r5,0
	beqlr %cr5
	cmpldi %cr6,%r11,3
	ble %cr6,.L680
	addi %r0,%r4,4
	subf %r6,%r0,%r3
	cmpldi %cr7,%r6,8
	ble %cr7,.L680
	srdi %r8,%r5,2
	li %r9,0
	andi. %r7,%r8,0x3
	addi %r12,%r8,-1
	mr %r10,%r8
	beq %cr0,.L725
	cmpdi %cr1,%r7,1
	beq %cr1,.L731
	cmpdi %cr5,%r7,2
	beq %cr5,.L732
	lxv %vs0,0(%r4)
	mr %r8,%r12
	li %r9,16
	stxv %vs0,0(%r3)
.L732:
	lxvx %vs1,%r4,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r3,%r9
	addi %r9,%r9,16
.L731:
	lxvx %vs2,%r4,%r9
	cmpdi %cr6,%r8,1
	stxvx %vs2,%r3,%r9
	addi %r9,%r9,16
	beq %cr6,.L753
.L725:
	srdi %r0,%r10,2
	mtctr %r0
.L681:
	lxvx %vs3,%r4,%r9
	addi %r6,%r9,16
	addi %r7,%r9,32
	addi %r12,%r9,48
	stxvx %vs3,%r3,%r9
	addi %r9,%r9,64
	lxvx %vs4,%r4,%r6
	stxvx %vs4,%r3,%r6
	lxvx %vs5,%r4,%r7
	stxvx %vs5,%r3,%r7
	lxvx %vs6,%r4,%r12
	stxvx %vs6,%r3,%r12
	bdnz .L681
.L753:
	andi. %r9,%r5,0x3
	rldicr %r5,%r5,0,61
	sldi %r9,%r5,2
	subf %r11,%r5,%r11
	add %r8,%r4,%r9
	add %r10,%r3,%r9
	beqlr %cr0
	cmpdi %cr7,%r11,0
	lwzx %r4,%r4,%r9
	stwx %r4,%r3,%r9
	beqlr %cr7
	cmpldi %cr1,%r11,1
	lwz %r0,4(%r8)
	stw %r0,4(%r10)
	beqlr %cr1
	lwz %r6,8(%r8)
	stw %r6,8(%r10)
	blr
	.p2align 4,,15
.L674:
	andi. %r10,%r11,0x1
	add %r6,%r4,%r9
	add %r5,%r3,%r9
	bne %cr0,.L765
.L706:
	srdi %r11,%r11,1
	addi %r9,%r11,1
	mtctr %r9
	b .L678
	.p2align 4,,15
.L766:
	lwz %r0,-4(%r10)
	addi %r5,%r5,-8
	stw %r0,-4(%r7)
.L678:
	lwz %r12,-4(%r6)
	addi %r10,%r6,-4
	addi %r7,%r5,-4
	addi %r6,%r6,-8
	stw %r12,-4(%r5)
	bdnz .L766
	blr
.L765:
	lwzu %r8,-4(%r6)
	stwu %r8,-4(%r5)
	b .L706
	.p2align 4,,15
.L680:
	andi. %r9,%r11,0x1
	addi %r12,%r4,-4
	addi %r5,%r3,-4
	bne %cr0,.L767
.L718:
	srdi %r9,%r11,1
	addi %r11,%r9,1
	mtctr %r11
	b .L684
	.p2align 4,,15
.L768:
	lwz %r0,4(%r8)
	addi %r5,%r5,8
	stw %r0,4(%r4)
.L684:
	lwz %r10,4(%r12)
	addi %r8,%r12,4
	addi %r4,%r5,4
	addi %r12,%r12,8
	stw %r10,4(%r5)
	bdnz .L768
	blr
.L767:
	lwz %r7,0(%r4)
	mr %r12,%r4
	mr %r5,%r3
	stw %r7,0(%r3)
	b .L718
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
	cmpdi %cr0,%r5,0
	addi %r7,%r5,-1
	beqlr %cr0
	cmpldi %cr1,%r7,2
	ble %cr1,.L774
	srdi %r8,%r5,2
	mtvsrws %vs0,%r4
	mr %r12,%r3
	andi. %r6,%r8,0x3
	addi %r11,%r8,-1
	mr %r10,%r8
	beq %cr0,.L789
	cmpdi %cr5,%r6,1
	beq %cr5,.L793
	cmpdi %cr6,%r6,2
	beq %cr6,.L794
	stxv %vs0,0(%r3)
	mr %r8,%r11
	addi %r12,%r3,16
.L794:
	stxv %vs0,0(%r12)
	addi %r8,%r8,-1
	addi %r12,%r12,16
.L793:
	stxv %vs0,0(%r12)
	cmpdi %cr7,%r8,1
	addi %r12,%r12,16
	beq %cr7,.L803
.L789:
	srdi %r0,%r10,2
	mtctr %r0
.L772:
	stxv %vs0,0(%r12)
	addi %r12,%r12,64
	stxv %vs0,-48(%r12)
	stxv %vs0,-32(%r12)
	stxv %vs0,-16(%r12)
	bdnz .L772
.L803:
	andi. %r9,%r5,0x3
	beqlr %cr0
	rldicr %r5,%r5,0,61
	sldi %r9,%r5,2
	subf %r7,%r5,%r7
	add %r9,%r3,%r9
.L771:
	cmpdi %cr1,%r7,0
	stw %r4,0(%r9)
	beqlr %cr1
	cmpldi %cr5,%r7,1
	stw %r4,4(%r9)
	beqlr %cr5
	stw %r4,8(%r9)
	blr
.L774:
	mr %r9,%r3
	b .L771
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	cmpld %cr0,%r3,%r4
	bge %cr0,.L807
	cmpdi %cr6,%r5,0
	add %r12,%r3,%r5
	add %r11,%r4,%r5
	beqlr %cr6
	addi %r0,%r5,-1
	cmpldi %cr7,%r0,14
	ble %cr7,.L809
	addi %r7,%r5,-2
	add %r8,%r4,%r0
	add %r6,%r3,%r7
	subf %r10,%r6,%r8
	addi %r9,%r10,14
	cmpldi %cr1,%r9,14
	ble %cr1,.L809
	srdi %r8,%r5,4
	addi %r6,%r5,-16
	andi. %r7,%r8,0x3
	addi %r0,%r8,-1
	mr %r10,%r8
	add %r3,%r3,%r6
	add %r4,%r4,%r6
	li %r9,0
	beq %cr0,.L896
	cmpdi %cr5,%r7,1
	beq %cr5,.L912
	cmpdi %cr6,%r7,2
	beq %cr6,.L913
	lxv %vs7,0(%r3)
	mr %r8,%r0
	li %r9,-16
	stxv %vs7,0(%r4)
.L913:
	lxvx %vs8,%r3,%r9
	addi %r8,%r8,-1
	stxvx %vs8,%r4,%r9
	addi %r9,%r9,-16
.L912:
	lxvx %vs9,%r3,%r9
	cmpdi %cr7,%r8,1
	stxvx %vs9,%r4,%r9
	addi %r9,%r9,-16
	beq %cr7,.L960
.L896:
	srdi %r6,%r10,2
	mtctr %r6
.L810:
	lxvx %vs10,%r3,%r9
	addi %r0,%r9,-16
	addi %r7,%r9,-32
	addi %r10,%r9,-48
	stxvx %vs10,%r4,%r9
	addi %r9,%r9,-64
	lxvx %vs11,%r3,%r0
	stxvx %vs11,%r4,%r0
	lxvx %vs12,%r3,%r7
	stxvx %vs12,%r4,%r7
	lxvx %vs13,%r3,%r10
	stxvx %vs13,%r4,%r10
	bdnz .L810
.L960:
	andi. %r9,%r5,0xf
	rldicr %r3,%r5,0,59
	subf %r11,%r3,%r11
	subf %r12,%r3,%r12
	subf %r5,%r3,%r5
	beqlr %cr0
	cmpldi %cr1,%r5,1
	lbz %r4,-1(%r12)
	stb %r4,-1(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,2
	lbz %r8,-2(%r12)
	stb %r8,-2(%r11)
	beqlr %cr5
	cmpldi %cr6,%r5,3
	lbz %r9,-3(%r12)
	stb %r9,-3(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,4
	lbz %r6,-4(%r12)
	stb %r6,-4(%r11)
	beqlr %cr7
	cmpldi %cr0,%r5,5
	lbz %r0,-5(%r12)
	stb %r0,-5(%r11)
	beqlr %cr0
	cmpldi %cr1,%r5,6
	lbz %r10,-6(%r12)
	stb %r10,-6(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,7
	lbz %r7,-7(%r12)
	stb %r7,-7(%r11)
	beqlr %cr5
	cmpldi %cr6,%r5,8
	lbz %r3,-8(%r12)
	stb %r3,-8(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,9
	lbz %r4,-9(%r12)
	stb %r4,-9(%r11)
	beqlr %cr7
	cmpldi %cr0,%r5,10
	lbz %r8,-10(%r12)
	stb %r8,-10(%r11)
	beqlr %cr0
	cmpldi %cr1,%r5,11
	lbz %r9,-11(%r12)
	stb %r9,-11(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,12
	lbz %r6,-12(%r12)
	stb %r6,-12(%r11)
	beqlr %cr5
	cmpldi %cr6,%r5,13
	lbz %r0,-13(%r12)
	stb %r0,-13(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,14
	lbz %r5,-14(%r12)
	stb %r5,-14(%r11)
	beqlr %cr7
	lbz %r12,-15(%r12)
	stb %r12,-15(%r11)
	blr
	.p2align 4,,15
.L807:
	beqlr %cr0
	cmpdi %cr1,%r5,0
	beqlr %cr1
	addi %r9,%r5,-1
	cmpldi %cr5,%r9,14
	ble %cr5,.L814
	addi %r10,%r3,1
	subf %r0,%r10,%r4
	cmpldi %cr6,%r0,14
	ble %cr6,.L814
	srdi %r8,%r5,4
	li %r12,0
	andi. %r7,%r8,0x3
	addi %r6,%r8,-1
	mr %r11,%r8
	beq %cr0,.L908
	cmpdi %cr7,%r7,1
	beq %cr7,.L914
	cmpdi %cr1,%r7,2
	beq %cr1,.L915
	lxv %vs0,0(%r3)
	mr %r8,%r6
	li %r12,16
	stxv %vs0,0(%r4)
.L915:
	lxvx %vs1,%r3,%r12
	addi %r8,%r8,-1
	stxvx %vs1,%r4,%r12
	addi %r12,%r12,16
.L914:
	lxvx %vs2,%r3,%r12
	cmpdi %cr5,%r8,1
	stxvx %vs2,%r4,%r12
	addi %r12,%r12,16
	beq %cr5,.L961
.L908:
	srdi %r9,%r11,2
	mtctr %r9
.L815:
	lxvx %vs3,%r3,%r12
	addi %r10,%r12,16
	addi %r7,%r12,32
	addi %r0,%r12,48
	stxvx %vs3,%r4,%r12
	addi %r12,%r12,64
	lxvx %vs4,%r3,%r10
	stxvx %vs4,%r4,%r10
	lxvx %vs5,%r3,%r7
	stxvx %vs5,%r4,%r7
	lxvx %vs6,%r3,%r0
	stxvx %vs6,%r4,%r0
	bdnz .L815
.L961:
	andi. %r9,%r5,0xf
	rldicr %r6,%r5,0,59
	add %r11,%r4,%r6
	add %r12,%r3,%r6
	subf %r5,%r6,%r5
	beqlr %cr0
	cmpldi %cr6,%r5,1
	lbzx %r3,%r3,%r6
	stbx %r3,%r4,%r6
	beqlr %cr6
	cmpldi %cr7,%r5,2
	lbz %r4,1(%r12)
	stb %r4,1(%r11)
	beqlr %cr7
	cmpldi %cr1,%r5,3
	lbz %r8,2(%r12)
	stb %r8,2(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,4
	lbz %r9,3(%r12)
	stb %r9,3(%r11)
	beqlr %cr5
	cmpldi %cr0,%r5,5
	lbz %r10,4(%r12)
	stb %r10,4(%r11)
	beqlr %cr0
	cmpldi %cr6,%r5,6
	lbz %r0,5(%r12)
	stb %r0,5(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,7
	lbz %r7,6(%r12)
	stb %r7,6(%r11)
	beqlr %cr7
	cmpldi %cr1,%r5,8
	lbz %r6,7(%r12)
	stb %r6,7(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,9
	lbz %r3,8(%r12)
	stb %r3,8(%r11)
	beqlr %cr5
	cmpldi %cr0,%r5,10
	lbz %r4,9(%r12)
	stb %r4,9(%r11)
	beqlr %cr0
	cmpldi %cr6,%r5,11
	lbz %r8,10(%r12)
	stb %r8,10(%r11)
	beqlr %cr6
	cmpldi %cr7,%r5,12
	lbz %r9,11(%r12)
	stb %r9,11(%r11)
	beqlr %cr7
	cmpldi %cr1,%r5,13
	lbz %r10,12(%r12)
	stb %r10,12(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,13(%r12)
	stb %r5,13(%r11)
	beqlr %cr5
	lbz %r12,14(%r12)
	stb %r12,14(%r11)
	blr
	.p2align 4,,15
.L809:
	andi. %r9,%r0,0x1
	bne %cr0,.L971
.L889:
	srdi %r7,%r0,1
	addi %r3,%r7,1
	mtctr %r3
	b .L812
	.p2align 4,,15
.L972:
	lbz %r6,-1(%r9)
	addi %r11,%r11,-2
	stb %r6,-1(%r8)
.L812:
	lbz %r4,-1(%r12)
	addi %r9,%r12,-1
	addi %r8,%r11,-1
	addi %r12,%r12,-2
	stb %r4,-1(%r11)
	bdnz .L972
	blr
.L971:
	lbzu %r10,-1(%r12)
	stbu %r10,-1(%r11)
	b .L889
	.p2align 4,,15
.L814:
	andi. %r10,%r9,0x1
	addi %r11,%r3,-1
	addi %r8,%r4,-1
	bne %cr0,.L973
.L901:
	srdi %r7,%r9,1
	addi %r6,%r7,1
	mtctr %r6
	b .L818
	.p2align 4,,15
.L974:
	lbz %r9,1(%r4)
	addi %r8,%r8,2
	stb %r9,1(%r10)
.L818:
	lbz %r3,1(%r11)
	addi %r4,%r11,1
	addi %r10,%r8,1
	addi %r11,%r11,2
	stb %r3,1(%r8)
	bdnz .L974
	blr
.L973:
	lbz %r0,0(%r3)
	mr %r11,%r3
	mr %r8,%r4
	stb %r0,0(%r4)
	b .L901
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
	rotld %r3,%r3,%r4
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
	subfic %r4,%r4,64
	rotld %r3,%r3,%r4
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
	rotlw %r3,%r3,%r4
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
	subfic %r4,%r4,32
	rotlw %r3,%r3,%r4
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
	rotld %r3,%r3,%r4
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
	subfic %r4,%r4,64
	rotld %r3,%r3,%r4
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
	rlwinm %r4,%r4,0,28,31
	neg %r9,%r4
	slw %r0,%r3,%r4
	rlwinm %r5,%r9,0,28,31
	srw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xffff
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
	rlwinm %r4,%r4,0,28,31
	neg %r9,%r4
	srw %r0,%r3,%r4
	rlwinm %r5,%r9,0,28,31
	slw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xffff
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
	rlwinm %r4,%r4,0,29,31
	neg %r9,%r4
	slw %r0,%r3,%r4
	rlwinm %r5,%r9,0,29,31
	srw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xff
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
	rlwinm %r4,%r4,0,29,31
	neg %r9,%r4
	srw %r0,%r3,%r4
	rlwinm %r5,%r9,0,29,31
	slw %r3,%r3,%r5
	or %r6,%r0,%r3
	rlwinm %r3,%r6,0,0xff
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
	mr %r9,%r3
	rlwinm %r3,%r9,24,24,31
	rlwinm %r10,%r9,8,16,23
	or %r0,%r3,%r10
	rlwinm %r3,%r0,0,0xffff
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
	rotlwi %r9,%r3,24
	rlwimi %r9,%r3,8,8,15
	rlwimi %r9,%r3,8,24,31
	rldicl %r3,%r9,0,32
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
	mtvsrd %vs0,%r3
	xxbrd %vs1,%vs0
	mfvsrd %r3,%vs1
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
	li %r10,16
	li %r9,0
	mtctr %r10
	b .L991
	.p2align 4,,15
.L1000:
	addi %r9,%r9,1
	bne %cr0,.L990
	bdz .L999
.L991:
	srw %r8,%r3,%r9
	addi %r9,%r9,1
	rldicl %r4,%r8,0,63
	srw %r0,%r3,%r9
	cmpdi %cr7,%r4,0
	andi. %r10,%r0,0x1
	beq %cr7,.L1000
.L990:
	extsw %r3,%r9
	blr
	.p2align 4,,15
.L999:
	li %r9,0
	extsw %r3,%r9
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
	mr. %r9,%r3
	beq %cr0,.L1004
	andi. %r3,%r9,0x1
	bne %cr0,.L1002
	li %r3,1
	.p2align 4,,15
.L1003:
	srawi %r9,%r9,1
	addi %r3,%r3,1
	andi. %r10,%r9,0x1
	beq %cr0,.L1003
.L1002:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L1004:
	li %r3,0
	extsw %r3,%r3
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
	addis %r9,%r2,.LC4@toc@ha
	li %r0,1
	lfs %f0,.LC4@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L1008
	addis %r3,%r2,.LC5@toc@ha
	lfs %f2,.LC5@toc@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1008:
	rldicl %r3,%r0,0,63
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
	addis %r9,%r2,.LC8@toc@ha
	li %r0,1
	lfd %f0,.LC8@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L1011
	addis %r3,%r2,.LC9@toc@ha
	lfd %f2,.LC9@toc@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1011:
	rldicl %r3,%r0,0,63
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
	addis %r9,%r2,.LC12@toc@ha
	fmr %f0,%f1
	fmr %f1,%f2
	li %r0,1
	addi %r3,%r9,.LC12@toc@l
	lfd %f12,0(%r3)
	lfd %f13,8(%r3)
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	blt %cr0,.L1014
	addis %r4,%r2,.LC13@toc@ha
	addi %r5,%r4,.LC13@toc@l
	lfd %f12,0(%r5)
	lfd %f13,8(%r5)
	fcmpu %cr1,%f0,%f12
	bne %cr1,$+8
	fcmpu %cr1,%f1,%f13
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1014:
	rldicl %r3,%r0,0,63
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
	mtvsrd %vs0,%r4
	xxlxor %vs3,%vs3,%vs3
	stfd %f3,8(%r3)
	fcfid %f1,%f0
	stfd %f1,0(%r3)
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
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fadds %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr %cr1
	cmpwi %cr5,%r4,0
	blt %cr5,.L1030
	addis %r9,%r2,.LC16@toc@ha
	lfs %f2,.LC16@toc@l(%r9)
.L1019:
	andi. %r9,%r4,0x1
	beq %cr0,.L1020
	.p2align 4,,15
.L1021:
	fmuls %f1,%f1,%f2
.L1020:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr %cr0
	andi. %r9,%r4,0x1
	fmuls %f2,%f2,%f2
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1021
.L1031:
	extsw %r4,%r0
	fmuls %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1021
	b .L1031
	.p2align 4,,15
.L1030:
	addis %r3,%r2,.LC17@toc@ha
	lfs %f2,.LC17@toc@l(%r3)
	b .L1019
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
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fadd %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr %cr1
	cmpwi %cr5,%r4,0
	blt %cr5,.L1045
	addis %r9,%r2,.LC20@toc@ha
	lfd %f2,.LC20@toc@l(%r9)
.L1034:
	andi. %r9,%r4,0x1
	beq %cr0,.L1035
	.p2align 4,,15
.L1036:
	fmul %f1,%f1,%f2
.L1035:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr %cr0
	andi. %r9,%r4,0x1
	fmul %f2,%f2,%f2
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1036
.L1046:
	extsw %r4,%r0
	fmul %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1036
	b .L1046
	.p2align 4,,15
.L1045:
	addis %r3,%r2,.LC21@toc@ha
	lfd %f2,.LC21@toc@l(%r3)
	b .L1034
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
	stfd %f28,-32(%r1)
	stfd %f29,-24(%r1)
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr %f28,%f1
	fmr %f29,%f2
	stdu %r1,-80(%r1)
	.cfi_def_cfa_offset 80
	fmr %f0,%f28
	fcmpu %cr0,%f0,%f0
	bun %cr0,.L1048
	mflr %r0
	.cfi_register 65, 0
	fmr %f3,%f1
	fmr %f4,%f2
	std %r31,40(%r1)
	.cfi_offset 31, -40
	mr %r31,%r5
	std %r0,96(%r1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu %cr1,%f1,%f28
	bne %cr1,$+8
	fcmpu %cr1,%f2,%f29
	beq %cr1,.L1063
	cmpwi %cr5,%r31,0
	stfd %f30,64(%r1)
	.cfi_offset 62, -16
	stfd %f31,72(%r1)
	.cfi_offset 63, -8
	blt %cr5,.L1064
	addis %r9,%r2,.LC24@toc@ha
	addi %r3,%r9,.LC24@toc@l
	lfd %f30,0(%r3)
	lfd %f31,8(%r3)
.L1049:
	andi. %r9,%r31,0x1
	beq %cr0,.L1050
	.p2align 4,,15
.L1051:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul
	nop
	fmr %f29,%f2
	fmr %f28,%f1
.L1050:
	srawi %r31,%r31,1
	addze %r31,%r31
	extsw. %r31,%r31
	beq %cr0,.L1062
	fmr %f3,%f30
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	nop
	andi. %r9,%r31,0x1
	srawi %r0,%r31,1
	addze %r0,%r0
	fmr %f31,%f2
	fmr %f30,%f1
	bne %cr0,.L1051
.L1065:
	fmr %f3,%f30
	fmr %f4,%f31
	extsw %r31,%r0
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	nop
	andi. %r9,%r31,0x1
	srawi %r0,%r31,1
	addze %r0,%r0
	fmr %f31,%f2
	fmr %f30,%f1
	bne %cr0,.L1051
	b .L1065
	.p2align 4,,15
.L1062:
	lfd %f30,64(%r1)
	.cfi_restore 62
	lfd %f31,72(%r1)
	.cfi_restore 63
.L1063:
	ld %r6,96(%r1)
	ld %r31,40(%r1)
	.cfi_restore 31
	mtlr %r6
	.cfi_restore 65
.L1048:
	addi %r1,%r1,80
	.cfi_def_cfa_offset 0
	fmr %f1,%f28
	fmr %f2,%f29
	lfd %f28,-32(%r1)
	lfd %f29,-24(%r1)
	.cfi_restore 61
	.cfi_restore 60
	blr
	.p2align 4,,15
.L1064:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis %r4,%r2,.LC25@toc@ha
	addi %r5,%r4,.LC25@toc@l
	lfd %f30,0(%r5)
	lfd %f31,8(%r5)
	b .L1049
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
	cmpdi %cr0,%r5,0
	beqlr %cr0
	addi %r9,%r5,-1
	cmpldi %cr1,%r9,14
	ble %cr1,.L1071
	srdi %r10,%r5,4
	li %r7,0
	andi. %r8,%r10,0x1
	addi %r8,%r10,-1
	bne %cr0,.L1130
.L1106:
	srdi %r0,%r10,1
	mtctr %r0
.L1069:
	lxvx %vs2,%r3,%r7
	lxvx %vs3,%r4,%r7
	addi %r11,%r7,16
	lxvx %vs6,%r4,%r11
	xxlxor %vs4,%vs2,%vs3
	stxvx %vs4,%r3,%r7
	addi %r7,%r7,32
	lxvx %vs5,%r3,%r11
	xxlxor %vs7,%vs5,%vs6
	stxvx %vs7,%r3,%r11
	bdnz .L1069
.L1126:
	andi. %r9,%r5,0xf
	rldicr %r12,%r5,0,59
	add %r4,%r4,%r12
	add %r6,%r3,%r12
	subf %r5,%r12,%r5
	beqlr %cr0
.L1068:
	lbz %r9,0(%r6)
	lbz %r10,0(%r4)
	cmpldi %cr6,%r5,1
	xor %r8,%r9,%r10
	stb %r8,0(%r6)
	beqlr %cr6
	lbz %r0,1(%r6)
	lbz %r7,1(%r4)
	cmpldi %cr7,%r5,2
	xor %r11,%r7,%r0
	stb %r11,1(%r6)
	beqlr %cr7
	lbz %r9,2(%r6)
	lbz %r12,2(%r4)
	cmpldi %cr1,%r5,3
	xor %r10,%r12,%r9
	stb %r10,2(%r6)
	beqlr %cr1
	lbz %r8,3(%r6)
	lbz %r7,3(%r4)
	cmpldi %cr5,%r5,4
	xor %r0,%r7,%r8
	stb %r0,3(%r6)
	beqlr %cr5
	lbz %r12,4(%r6)
	lbz %r11,4(%r4)
	cmpldi %cr0,%r5,5
	xor %r9,%r11,%r12
	stb %r9,4(%r6)
	beqlr %cr0
	lbz %r7,5(%r6)
	lbz %r10,5(%r4)
	cmpldi %cr6,%r5,6
	xor %r8,%r10,%r7
	stb %r8,5(%r6)
	beqlr %cr6
	lbz %r11,6(%r6)
	lbz %r0,6(%r4)
	cmpldi %cr7,%r5,7
	xor %r12,%r0,%r11
	stb %r12,6(%r6)
	beqlr %cr7
	lbz %r10,7(%r6)
	lbz %r9,7(%r4)
	cmpldi %cr1,%r5,8
	xor %r7,%r9,%r10
	stb %r7,7(%r6)
	beqlr %cr1
	lbz %r8,8(%r6)
	lbz %r0,8(%r4)
	cmpldi %cr5,%r5,9
	xor %r11,%r0,%r8
	stb %r11,8(%r6)
	beqlr %cr5
	lbz %r9,9(%r6)
	lbz %r12,9(%r4)
	cmpldi %cr0,%r5,10
	xor %r10,%r12,%r9
	stb %r10,9(%r6)
	beqlr %cr0
	lbz %r0,10(%r6)
	lbz %r7,10(%r4)
	cmpldi %cr6,%r5,11
	xor %r8,%r7,%r0
	stb %r8,10(%r6)
	beqlr %cr6
	lbz %r12,11(%r6)
	lbz %r11,11(%r4)
	cmpldi %cr7,%r5,12
	xor %r9,%r11,%r12
	stb %r9,11(%r6)
	beqlr %cr7
	lbz %r7,12(%r6)
	lbz %r10,12(%r4)
	cmpldi %cr1,%r5,13
	xor %r0,%r10,%r7
	stb %r0,12(%r6)
	beqlr %cr1
	lbz %r8,13(%r6)
	lbz %r11,13(%r4)
	cmpldi %cr5,%r5,14
	xor %r5,%r11,%r8
	stb %r5,13(%r6)
	beqlr %cr5
	lbz %r12,14(%r6)
	lbz %r4,14(%r4)
	xor %r9,%r4,%r12
	stb %r9,14(%r6)
	blr
	.p2align 4,,15
.L1130:
	lxv %vs0,0(%r3)
	lxv %vs12,0(%r4)
	cmpdi %cr5,%r8,0
	li %r7,16
	xxlxor %vs1,%vs0,%vs12
	stxv %vs1,0(%r3)
	bne %cr5,.L1106
	b .L1126
.L1071:
	mr %r6,%r3
	b .L1068
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
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	mr %r9,%r3
	beq %cr0,.L1132
	.p2align 4,,15
.L1133:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne %cr1,.L1133
.L1132:
	cmpdi %cr5,%r5,0
	beq %cr5,.L1134
	andi. %r10,%r5,0x1
	addi %r12,%r4,-1
	addi %r7,%r5,-1
	bne %cr0,.L1157
.L1145:
	srdi %r0,%r5,1
	mtctr %r0
.L1135:
	lbz %r4,1(%r12)
	addi %r11,%r12,1
	addi %r5,%r9,1
	addi %r12,%r11,1
	rlwinm %r10,%r4,0,0xff
	stb %r4,0(%r9)
	cmpwi %cr1,%r10,0
	beqlr %cr1
	lbz %r8,1(%r11)
	rlwinm %r7,%r8,0,0xff
	stb %r8,1(%r9)
	addi %r9,%r5,1
	cmpwi %cr5,%r7,0
	beqlr %cr5
	bdnz .L1135
.L1134:
	li %r6,0
	stb %r6,0(%r9)
	blr
	.p2align 4,,15
.L1157:
	lbz %r8,0(%r4)
	mr %r12,%r4
	rlwinm %r6,%r8,0,0xff
	stb %r8,0(%r9)
	cmpwi %cr6,%r6,0
	beqlr %cr6
	cmpdi %cr7,%r7,0
	addi %r9,%r9,1
	bne %cr7,.L1145
	b .L1134
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
	cmpdi %cr0,%r4,0
	mr %r9,%r3
	li %r3,0
	beqlr %cr0
	andi. %r8,%r4,0x3
	mr %r10,%r4
	beq %cr0,.L1170
	cmpdi %cr1,%r8,1
	beq %cr1,.L1181
	cmpdi %cr5,%r8,2
	beq %cr5,.L1182
	lbz %r0,0(%r9)
	cmpwi %cr6,%r0,0
	beqlr %cr6
	li %r3,1
.L1182:
	lbzx %r5,%r9,%r3
	cmpwi %cr7,%r5,0
	beqlr %cr7
	addi %r3,%r3,1
.L1181:
	lbzx %r6,%r9,%r3
	cmpwi %cr0,%r6,0
	beqlr %cr0
	addi %r3,%r3,1
	cmpld %cr1,%r4,%r3
	beqlr %cr1
	.p2align 4,,15
.L1170:
	srdi %r10,%r10,2
.L1159:
	lbzx %r4,%r9,%r3
	cmpwi %cr5,%r4,0
	beqlr %cr5
	addi %r3,%r3,1
	mr %r7,%r3
	lbzx %r11,%r9,%r3
	cmpwi %cr6,%r11,0
	beqlr %cr6
	addi %r3,%r3,1
	lbzx %r12,%r9,%r3
	cmpwi %cr7,%r12,0
	beqlr %cr7
	addi %r3,%r7,2
	lbzx %r8,%r9,%r3
	cmpwi %cr0,%r8,0
	beqlr %cr0
	cmpdi %cr1,%r10,1
	addi %r3,%r7,3
	addi %r10,%r10,-1
	bne %cr1,.L1159
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
	lbz %r8,0(%r3)
	addi %r4,%r4,-1
	cmpwi %cr0,%r8,0
	beq %cr0,.L1196
.L1192:
	mr %r10,%r4
	b .L1195
	.p2align 4,,15
.L1194:
	beqlr %cr7
.L1195:
	lbzu %r9,1(%r10)
	cmpwi %cr1,%r9,0
	cmpw %cr7,%r9,%r8
	bne %cr1,.L1194
	lbzu %r8,1(%r3)
	cmpwi %cr5,%r8,0
	bne %cr5,.L1192
.L1196:
	li %r3,0
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
	mr %r9,%r3
	li %r3,0
	.p2align 4,,15
.L1202:
	lbz %r10,0(%r9)
	cmpwi %cr0,%r10,0
	cmpw %cr7,%r10,%r4
	isel %r3,%r9,%r3,30
	addi %r9,%r9,1
	beqlr %cr0
	lbz %r10,0(%r9)
	cmpwi %cr0,%r10,0
	cmpw %cr7,%r10,%r4
	isel %r3,%r9,%r3,30
	addi %r9,%r9,1
	bne %cr0,.L1202
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
	lbz %r11,0(%r4)
	mr %r8,%r3
	andi. %r5,%r11,0xff
	beq %cr0,.L1218
	mr %r9,%r4
	.p2align 4,,15
.L1207:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne %cr1,.L1207
	subf. %r6,%r4,%r9
	mr %r3,%r8
	beqlr %cr0
	addi %r3,%r6,-1
	b .L1226
	.p2align 4,,15
.L1229:
	cmpwi %cr6,%r12,0
	addi %r8,%r8,1
	beq %cr6,.L1228
.L1226:
	lbz %r12,0(%r8)
	cmpw %cr5,%r12,%r5
	bne %cr5,.L1229
	addi %r0,%r3,1
	mr %r6,%r4
	mtctr %r0
	mr %r10,%r11
	mr %r7,%r8
	b .L1209
	.p2align 4,,15
.L1231:
	bdz .L1211
	bne %cr7,.L1212
	lbzu %r12,1(%r7)
	cmpwi %cr1,%r12,0
	beq %cr1,.L1230
	lbzu %r10,1(%r6)
.L1209:
	andi. %r9,%r10,0xff
	cmpw %cr7,%r9,%r12
	bne %cr0,.L1231
.L1212:
	addi %r8,%r8,1
	b .L1226
	.p2align 4,,15
.L1228:
	li %r3,0
	blr
	.p2align 4,,15
.L1230:
	lbz %r9,1(%r6)
.L1211:
	cmpw %cr5,%r12,%r9
	bne %cr5,.L1212
.L1218:
	mr %r3,%r8
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
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L1242
	bnglr %cr0
	fcmpu %cr1,%f2,%f0
	bnllr %cr1
	fneg %f1,%f1
	blr
	.p2align 4,,15
.L1242:
	fcmpu %cr5,%f2,%f0
	bnglr %cr5
	fneg %f1,%f1
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
	cmpdi %cr0,%r6,0
	mr %r9,%r3
	beqlr %cr0
	cmpld %cr1,%r4,%r6
	blt %cr1,.L1251
	subf %r4,%r6,%r4
	add %r0,%r3,%r4
	cmpld %cr5,%r3,%r0
	bgt %cr5,.L1251
	lbz %r12,0(%r5)
	cmpldi %cr7,%r6,1
	addi %r11,%r3,-1
	b .L1248
	.p2align 4,,15
.L1245:
	cmpld %cr1,%r0,%r9
	blt %cr1,.L1251
.L1248:
	lbzu %r10,1(%r11)
	mr %r3,%r9
	addi %r9,%r9,1
	cmpw %cr6,%r10,%r12
	bne %cr6,.L1245
	beqlr %cr7
	subf %r8,%r11,%r9
	mr %r7,%r5
	add %r4,%r8,%r6
	mr %r8,%r11
	addi %r10,%r4,-2
	mtctr %r10
	.p2align 5
.L1246:
	lbzu %r4,1(%r8)
	lbzu %r10,1(%r7)
	cmpw %cr0,%r4,%r10
	bne %cr0,.L1245
	bdnz .L1246
	blr
	.p2align 4,,15
.L1251:
	li %r3,0
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
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	mr. %r31,%r5
	std %r30,-16(%r1)
	.cfi_offset 30, -16
	mr %r30,%r3
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	beq %cr0,.L1260
	mflr %r0
	.cfi_register 65, 0
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L1260:
	addi %r1,%r1,48
	.cfi_def_cfa_offset 0
	add %r3,%r30,%r31
	ld %r30,-16(%r1)
	ld %r31,-8(%r1)
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
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr7,%f1,%f0
	blt %cr7,.L1288
	addis %r9,%r2,.LC32@toc@ha
	li %r10,0
	lfd %f2,.LC32@toc@l(%r9)
	fcmpu %cr0,%f1,%f2
	cror 2,1,2
	bne %cr0,.L1289
.L1268:
	addis %r11,%r2,.LC21@toc@ha
	addis %r12,%r2,.LC32@toc@ha
	li %r8,0
	lfd %f7,.LC21@toc@l(%r11)
	lfd %f8,.LC32@toc@l(%r12)
	.p2align 5
.L1274:
	fmul %f1,%f1,%f7
	addi %r8,%r8,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq %cr0,.L1274
	cmpwi %cr1,%r10,0
	stw %r8,0(%r4)
	beqlr %cr1
.L1291:
	fneg %f1,%f1
	blr
	.p2align 4,,15
.L1289:
	addis %r3,%r2,.LC21@toc@ha
	lfd %f3,.LC21@toc@l(%r3)
	fcmpu %cr1,%f1,%f3
	bnl %cr1,.L1271
	bne %cr7,.L1280
.L1271:
	li %r0,0
	stw %r0,0(%r4)
	blr
	.p2align 4,,15
.L1288:
	addis %r5,%r2,.LC28@toc@ha
	fneg %f12,%f1
	lfd %f4,.LC28@toc@l(%r5)
	fcmpu %cr5,%f1,%f4
	cror 22,20,22
	bne %cr5,.L1290
	fmr %f1,%f12
	li %r10,1
	b .L1268
	.p2align 4,,15
.L1290:
	addis %r6,%r2,.LC30@toc@ha
	lfd %f5,.LC30@toc@l(%r6)
	fcmpu %cr6,%f1,%f5
	bng %cr6,.L1271
	li %r10,1
.L1269:
	addis %r7,%r2,.LC21@toc@ha
	fmr %f1,%f12
	li %r8,0
	lfd %f6,.LC21@toc@l(%r7)
	.p2align 4,,15
.L1276:
	fadd %f1,%f1,%f1
	addi %r8,%r8,-1
	fcmpu %cr7,%f1,%f6
	blt %cr7,.L1276
	cmpwi %cr1,%r10,0
	stw %r8,0(%r4)
	bne %cr1,.L1291
	blr
.L1280:
	fmr %f12,%f1
	b .L1269
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
	mr. %r10,%r3
	li %r3,0
	beqlr %cr0
	.p2align 4,,15
.L1294:
	rldicl %r9,%r10,0,63
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	sldi %r4,%r4,1
	beqlr %cr0
	rldicl %r9,%r10,0,63
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	sldi %r4,%r4,1
	bne %cr0,.L1294
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
	cmplw %cr0,%r4,%r3
	li %r8,16
	mtctr %r8
	li %r12,32
	li %r9,1
	blt %cr0,.L1299
	b .L1320
	.p2align 4,,15
.L1303:
	rldicl %r4,%r0,0,32
	slwi %r9,%r9,1
	ble %cr7,.L1301
	cmpwi %cr5,%r4,0
	slwi %r6,%r4,1
	cmplw %cr6,%r3,%r6
	blt %cr5,.L1304
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble %cr6,.L1301
	bdz .L1302
.L1299:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r12,-1
	cmplw %cr7,%r3,%r0
	addi %r12,%r10,-1
	bge %cr1,.L1303
.L1304:
	li %r12,0
	li %r11,1
	li %r10,0
	.p2align 4,,15
.L1305:
	cmplw %cr1,%r3,%r4
	subf %r8,%r4,%r3
	srdi %r4,%r4,1
	isel %r7,0,%r11,4
	cmpwi %cr5,%r7,0
	isel %r0,%r10,%r9,22
	srwi %r9,%r9,1
	cmpwi %cr7,%r9,0
	isel %r3,%r3,%r8,22
	or %r12,%r12,%r0
	rldicl %r3,%r3,0,32
	bne %cr7,.L1305
.L1302:
	cmpdi %cr6,%r5,0
	isel %r5,%r12,%r3,26
	rldicl %r3,%r5,0,32
	blr
	.p2align 4,,15
.L1301:
	cmpwi %cr0,%r9,0
	bne %cr0,.L1304
	li %r12,0
	b .L1302
	.p2align 4,,15
.L1320:
	isel %r9,0,%r9,1
	subf %r4,%r4,%r3
	andi. %r12,%r9,0xff
	isel %r3,%r3,%r4,2
	rldicl %r3,%r3,0,32
	b .L1302
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
	cmpdi %cr0,%r3,0
	beq %cr0,.L1325
	slwi %r3,%r3,8
	cntlzw %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
	.p2align 4,,15
.L1325:
	li %r0,7
	extsw %r3,%r0
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
	sradi %r9,%r3,63
	cmpd %cr0,%r3,%r9
	xor %r3,%r3,%r9
	beq %cr0,.L1328
	cntlzd %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
	.p2align 4,,15
.L1328:
	li %r0,63
	extsw %r3,%r0
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
	mr. %r10,%r3
	li %r3,0
	beq %cr0,.L1330
	.p2align 5
.L1331:
	rlwinm %r9,%r10,0,31,31
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	rldic %r4,%r4,1,32
	bne %cr0,.L1331
.L1330:
	rldicl %r3,%r3,0,32
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
	cmpld %cr0,%r3,%r4
	srwi %r9,%r5,3
	rlwinm %r12,%r5,0,0,28
	blt %cr0,.L1338
	add %r10,%r4,%r5
	cmpld %cr1,%r3,%r10
	ble %cr1,.L1517
.L1338:
	cmpwi %cr5,%r9,0
	addi %r7,%r4,-8
	addi %r8,%r3,-8
	beq %cr5,.L1451
	andi. %r10,%r9,0x1
	addi %r11,%r9,-1
	mr %r10,%r9
	bne %cr0,.L1518
.L1407:
	srdi %r10,%r10,1
	mtctr %r10
	cmpdi %cr7,%r10,2
	ble %cr7,.L1476
	addi %r10,%r10,-1
	mtctr %r10
	addi %r9,%r9,-2
	ld %r11,8(%r7)
	std %r11,8(%r8)
	addi %r6,%r7,8
	ld %r11,8(%r6)
	addi %r10,%r8,8
	std %r11,8(%r10)
.L1341:
	addi %r9,%r9,-2
	ld %r11,16(%r6)
	std %r11,16(%r10)
	addi %r6,%r6,16
	ld %r11,8(%r6)
	addi %r10,%r10,16
	std %r11,8(%r10)
	bdnz .L1341
.L1453:
	cmplw %cr1,%r12,%r5
	bgelr %cr1
	subf %r8,%r12,%r5
	rldicl %r10,%r12,0,32
	addi %r7,%r8,-1
	cmplwi %cr5,%r7,14
	ble %cr5,.L1343
	addi %r0,%r10,1
	add %r7,%r3,%r10
	add %r11,%r4,%r0
	subf %r6,%r11,%r7
	cmpldi %cr6,%r6,14
	ble %cr6,.L1343
	rldicl %r11,%r8,60,36
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	add %r10,%r4,%r10
	andi. %r0,%r11,0x3
	addi %r31,%r11,-1
	mr %r6,%r11
	beq %cr0,.L1402
	cmpdi %cr7,%r0,1
	beq %cr7,.L1422
	cmpdi %cr1,%r0,2
	bne %cr1,.L1519
.L1423:
	lxvx %vs8,%r10,%r9
	addi %r11,%r11,-1
	stxvx %vs8,%r7,%r9
	addi %r9,%r9,16
.L1422:
	lxvx %vs9,%r10,%r9
	cmpdi %cr5,%r11,1
	stxvx %vs9,%r7,%r9
	addi %r9,%r9,16
	beq %cr5,.L1459
.L1402:
	srdi %r0,%r6,2
	mtctr %r0
.L1344:
	lxvx %vs10,%r10,%r9
	addi %r31,%r9,16
	addi %r11,%r9,32
	addi %r6,%r9,48
	stxvx %vs10,%r7,%r9
	addi %r9,%r9,64
	lxvx %vs11,%r10,%r31
	stxvx %vs11,%r7,%r31
	lxvx %vs12,%r10,%r11
	stxvx %vs12,%r7,%r11
	lxvx %vs13,%r10,%r6
	stxvx %vs13,%r7,%r6
	bdnz .L1344
.L1459:
	andi. %r9,%r8,0xf
	rlwinm %r9,%r8,0,0,27
	add %r12,%r9,%r12
	beq %cr0,.L1513
	rldicl %r8,%r12,0,32
	addi %r10,%r12,1
	cmplw %cr6,%r10,%r5
	lbzx %r7,%r4,%r8
	stbx %r7,%r3,%r8
	bge %cr6,.L1513
	rldicl %r0,%r10,0,32
	addi %r31,%r12,2
	cmplw %cr7,%r31,%r5
	lbzx %r6,%r4,%r0
	stbx %r6,%r3,%r0
	bge %cr7,.L1513
	rldicl %r11,%r31,0,32
	addi %r9,%r12,3
	cmplw %cr1,%r9,%r5
	lbzx %r8,%r4,%r11
	stbx %r8,%r3,%r11
	bge %cr1,.L1513
	rldicl %r10,%r9,0,32
	addi %r0,%r12,4
	cmplw %cr5,%r0,%r5
	lbzx %r7,%r4,%r10
	stbx %r7,%r3,%r10
	bge %cr5,.L1513
	rldicl %r31,%r0,0,32
	addi %r6,%r12,5
	cmplw %cr0,%r6,%r5
	lbzx %r11,%r4,%r31
	stbx %r11,%r3,%r31
	bge %cr0,.L1513
	rldicl %r9,%r6,0,32
	addi %r8,%r12,6
	cmplw %cr6,%r8,%r5
	lbzx %r10,%r4,%r9
	stbx %r10,%r3,%r9
	bge %cr6,.L1513
	rldicl %r0,%r8,0,32
	addi %r31,%r12,7
	cmplw %cr7,%r31,%r5
	lbzx %r7,%r4,%r0
	stbx %r7,%r3,%r0
	bge %cr7,.L1513
	rldicl %r6,%r31,0,32
	addi %r11,%r12,8
	cmplw %cr1,%r11,%r5
	lbzx %r9,%r4,%r6
	stbx %r9,%r3,%r6
	bge %cr1,.L1513
	rldicl %r8,%r11,0,32
	addi %r10,%r12,9
	cmplw %cr5,%r10,%r5
	lbzx %r0,%r4,%r8
	stbx %r0,%r3,%r8
	bge %cr5,.L1513
	rldicl %r31,%r10,0,32
	addi %r6,%r12,10
	cmplw %cr0,%r6,%r5
	lbzx %r7,%r4,%r31
	stbx %r7,%r3,%r31
	bge %cr0,.L1513
	rldicl %r11,%r6,0,32
	addi %r9,%r12,11
	cmplw %cr6,%r9,%r5
	lbzx %r8,%r4,%r11
	stbx %r8,%r3,%r11
	bge %cr6,.L1513
	rldicl %r10,%r9,0,32
	addi %r0,%r12,12
	cmplw %cr7,%r0,%r5
	lbzx %r31,%r4,%r10
	stbx %r31,%r3,%r10
	bge %cr7,.L1513
	rldicl %r6,%r0,0,32
	addi %r11,%r12,13
	cmplw %cr1,%r11,%r5
	lbzx %r7,%r4,%r6
	stbx %r7,%r3,%r6
	bge %cr1,.L1513
	rldicl %r10,%r11,0,32
	addi %r12,%r12,14
	cmplw %cr5,%r12,%r5
	lbzx %r5,%r4,%r10
	stbx %r5,%r3,%r10
	bge %cr5,.L1513
	rldicl %r9,%r12,0,32
	lbzx %r4,%r4,%r9
	stbx %r4,%r3,%r9
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1476:
	ld %r0,8(%r7)
	mr %r11,%r7
	mr %r10,%r8
	addi %r9,%r9,-2
	addi %r7,%r7,16
	addi %r8,%r8,16
	std %r0,-8(%r8)
	ld %r6,16(%r11)
	std %r6,16(%r10)
	bdz .L1453
	ld %r0,8(%r7)
	mr %r11,%r7
	mr %r10,%r8
	addi %r9,%r9,-2
	addi %r7,%r7,16
	addi %r8,%r8,16
	std %r0,-8(%r8)
	ld %r6,16(%r11)
	std %r6,16(%r10)
	bdnz .L1476
	b .L1453
	.p2align 4,,15
.L1518:
	mr. %r9,%r11
	ld %r6,0(%r4)
	mr %r7,%r4
	mr %r8,%r3
	std %r6,0(%r3)
	bne %cr0,.L1407
	b .L1453
	.p2align 4,,15
.L1517:
	cmpdi %cr5,%r5,0
	addi %r0,%r5,-1
	rldicl %r9,%r0,0,32
	beqlr %cr5
	cmplwi %cr6,%r0,14
	ble %cr6,.L1348
	addi %r6,%r9,-1
	add %r8,%r3,%r9
	add %r7,%r4,%r6
	subf %r11,%r7,%r8
	addi %r12,%r11,14
	cmpldi %cr7,%r12,14
	ble %cr7,.L1348
	srdi %r6,%r5,4
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	addi %r31,%r9,-15
	andi. %r11,%r6,0x3
	add %r8,%r4,%r31
	add %r9,%r3,%r31
	addi %r12,%r6,-1
	mr %r7,%r6
	li %r10,0
	beq %cr0,.L1417
	cmpdi %cr1,%r11,1
	beq %cr1,.L1424
	cmpdi %cr5,%r11,2
	bne %cr5,.L1520
.L1425:
	lxvx %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1424:
	lxvx %vs2,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvx %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L1460
.L1417:
	srdi %r31,%r7,2
	mtctr %r31
.L1349:
	lxvx %vs3,%r8,%r10
	addi %r12,%r10,-16
	addi %r11,%r10,-32
	addi %r7,%r10,-48
	stxvx %vs3,%r9,%r10
	addi %r10,%r10,-64
	lxvx %vs4,%r8,%r12
	stxvx %vs4,%r9,%r12
	lxvx %vs5,%r8,%r11
	stxvx %vs5,%r9,%r11
	lxvx %vs6,%r8,%r7
	stxvx %vs6,%r9,%r7
	bdnz .L1349
.L1460:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r9,%r5,%r0
	beq %cr0,.L1513
	rldicl %r0,%r9,0,32
	cmpwi %cr7,%r9,0
	addi %r8,%r9,-1
	lbzx %r6,%r4,%r0
	rldicl %r10,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr7,.L1513
	cmpdi %cr1,%r10,0
	lbzx %r31,%r4,%r10
	addi %r12,%r9,-2
	rldicl %r11,%r12,0,32
	stbx %r31,%r3,%r10
	beq %cr1,.L1513
	cmpdi %cr5,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-3
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr5,.L1513
	cmpdi %cr6,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-4
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr6,.L1513
	cmpdi %cr0,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r9,-5
	rldicl %r11,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr0,.L1513
	cmpdi %cr7,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-6
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr7,.L1513
	cmpdi %cr1,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-7
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr1,.L1513
	cmpdi %cr5,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r9,-8
	rldicl %r11,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr5,.L1513
	cmpdi %cr6,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-9
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr6,.L1513
	cmpdi %cr0,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-10
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr0,.L1513
	cmpdi %cr7,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r9,-11
	rldicl %r11,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr7,.L1513
	cmpdi %cr1,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-12
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr1,.L1513
	cmpdi %cr5,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-13
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr5,.L1513
	cmpdi %cr6,%r31,0
	lbzx %r12,%r4,%r31
	addi %r9,%r9,-14
	rldicl %r11,%r9,0,32
	stbx %r12,%r3,%r31
	beq %cr6,.L1513
	lbzx %r4,%r4,%r11
	stbx %r4,%r3,%r11
	ld %r31,-8(%r1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1513:
	.cfi_restore_state
	ld %r31,-8(%r1)
	.cfi_restore 31
.L1334:
	blr
	.p2align 4,,15
.L1519:
	.cfi_offset 31, -8
	lxvx %vs7,%r10,%r9
	mr %r11,%r31
	stxvx %vs7,%r7,%r9
	addi %r9,%r9,16
	b .L1423
	.p2align 4,,15
.L1451:
	.cfi_restore 31
	cmpdi %cr6,%r5,0
	rldicl %r10,%r12,0,32
	mr %r8,%r5
	beqlr %cr6
.L1343:
	rldicl %r8,%r8,0,32
	addi %r0,%r10,-1
	andi. %r9,%r8,0x1
	add %r4,%r4,%r0
	add %r3,%r3,%r0
	addi %r6,%r8,-1
	beq %cr0,.L1395
	lbzu %r11,1(%r4)
	cmpdi %cr6,%r6,0
	stbu %r11,1(%r3)
	beqlr %cr6
.L1395:
	srdi %r9,%r8,1
	mtctr %r9
	cmpdi %cr7,%r9,2
	ble %cr7,.L1475
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,1(%r4)
	stb %r8,1(%r3)
	addi %r10,%r4,1
	lbz %r8,1(%r10)
	addi %r9,%r3,1
	stb %r8,1(%r9)
.L1346:
	lbz %r8,2(%r10)
	stb %r8,2(%r9)
	addi %r10,%r10,2
	lbz %r8,1(%r10)
	addi %r9,%r9,2
	stb %r8,1(%r9)
	bdnz .L1346
	blr
	.p2align 4,,15
.L1475:
	lbz %r7,1(%r4)
	mr %r10,%r4
	mr %r12,%r3
	addi %r4,%r4,2
	addi %r3,%r3,2
	stb %r7,-1(%r3)
	lbz %r5,2(%r10)
	stb %r5,2(%r12)
	bdnz .L1475
	blr
.L1520:
	.cfi_offset 31, -8
	lxv %vs0,0(%r8)
	mr %r6,%r12
	li %r10,-16
	stxv %vs0,0(%r9)
	b .L1425
.L1348:
	.cfi_restore 31
	andi. %r10,%r5,0x1
	addi %r10,%r9,1
	add %r9,%r3,%r10
	add %r4,%r4,%r10
	addi %r3,%r5,-1
	beq %cr0,.L1410
	lbzu %r7,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r7,-1(%r9)
	beqlr %cr7
.L1410:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1477
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1352:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1352
	blr
.L1477:
	lbz %r5,-1(%r4)
	mr %r6,%r4
	mr %r8,%r9
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	stb %r5,1(%r9)
	lbz %r0,-2(%r6)
	stb %r0,-2(%r8)
	bdnz .L1477
	blr
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
	cmpld %cr0,%r3,%r4
	srwi %r10,%r5,1
	blt %cr0,.L1525
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble %cr1,.L1650
.L1525:
	cmpwi %cr5,%r10,0
	beq %cr5,.L1524
	addi %r11,%r10,-1
	cmplwi %cr6,%r11,6
	ble %cr6,.L1528
	addi %r12,%r4,2
	subf %r9,%r12,%r3
	cmpldi %cr0,%r9,12
	ble %cr0,.L1528
	srdi %r6,%r5,4
	srwi %r8,%r5,4
	andi. %r11,%r6,0x3
	addi %r0,%r6,-1
	mr %r7,%r6
	li %r12,0
	beq %cr0,.L1583
	cmpdi %cr7,%r11,1
	beq %cr7,.L1599
	cmpdi %cr1,%r11,2
	bne %cr1,.L1651
.L1600:
	lxvx %vs8,%r4,%r12
	addi %r6,%r6,-1
	stxvx %vs8,%r3,%r12
	addi %r12,%r12,16
.L1599:
	lxvx %vs9,%r4,%r12
	cmpdi %cr5,%r6,1
	stxvx %vs9,%r3,%r12
	addi %r12,%r12,16
	beq %cr5,.L1631
.L1583:
	srdi %r9,%r7,2
	mtctr %r9
.L1529:
	lxvx %vs10,%r4,%r12
	addi %r0,%r12,16
	addi %r11,%r12,32
	addi %r7,%r12,48
	stxvx %vs10,%r3,%r12
	addi %r12,%r12,64
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r3,%r0
	lxvx %vs12,%r4,%r11
	stxvx %vs12,%r3,%r11
	lxvx %vs13,%r4,%r7
	stxvx %vs13,%r3,%r7
	bdnz .L1529
.L1631:
	slwi %r12,%r8,3
	cmplw %cr6,%r10,%r12
	beq %cr6,.L1524
	rlwinm %r9,%r12,1,0,27
	addi %r8,%r12,1
	cmplw %cr0,%r10,%r8
	lhzx %r6,%r4,%r9
	sthx %r6,%r3,%r9
	ble %cr0,.L1524
	rldic %r0,%r8,1,31
	addi %r7,%r12,2
	cmplw %cr7,%r10,%r7
	lhzx %r11,%r4,%r0
	sthx %r11,%r3,%r0
	ble %cr7,.L1524
	rldicl %r9,%r7,0,32
	addi %r0,%r12,3
	sldi %r8,%r9,1
	cmplw %cr1,%r10,%r0
	lhzx %r6,%r4,%r8
	sthx %r6,%r3,%r8
	ble %cr1,.L1524
	rldic %r7,%r0,1,31
	addi %r11,%r12,4
	cmplw %cr5,%r10,%r11
	lhzx %r9,%r4,%r7
	sthx %r9,%r3,%r7
	ble %cr5,.L1524
	rldicl %r0,%r11,0,32
	addi %r7,%r12,5
	sldi %r8,%r0,1
	cmplw %cr6,%r10,%r7
	lhzx %r6,%r4,%r8
	sthx %r6,%r3,%r8
	ble %cr6,.L1524
	rldic %r11,%r7,1,31
	addi %r12,%r12,6
	cmplw %cr0,%r10,%r12
	lhzx %r10,%r4,%r11
	sthx %r10,%r3,%r11
	ble %cr0,.L1524
	rldicl %r9,%r12,0,32
	sldi %r0,%r9,1
	lhzx %r7,%r4,%r0
	sthx %r7,%r3,%r0
.L1524:
	andi. %r9,%r5,0x1
	beqlr %cr0
	addi %r5,%r5,-1
	rldicl %r8,%r5,0,32
	lbzx %r4,%r4,%r8
	stbx %r4,%r3,%r8
	blr
	.p2align 4,,15
.L1650:
	cmpdi %cr5,%r5,0
	addi %r0,%r5,-1
	rldicl %r7,%r0,0,32
	beqlr %cr5
	cmplwi %cr6,%r0,14
	ble %cr6,.L1534
	addi %r6,%r7,-1
	add %r8,%r3,%r7
	add %r11,%r4,%r6
	subf %r12,%r11,%r8
	addi %r10,%r12,14
	cmpldi %cr7,%r10,14
	ble %cr7,.L1534
	srdi %r6,%r5,4
	addi %r9,%r7,-15
	andi. %r11,%r6,0x3
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq %cr0,.L1595
	cmpdi %cr1,%r11,1
	beq %cr1,.L1601
	cmpdi %cr5,%r11,2
	bne %cr5,.L1652
.L1602:
	lxvx %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1601:
	lxvx %vs2,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvx %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L1632
.L1595:
	srdi %r11,%r7,2
	mtctr %r11
.L1535:
	lxvx %vs3,%r8,%r10
	addi %r12,%r10,-16
	addi %r6,%r10,-32
	addi %r7,%r10,-48
	stxvx %vs3,%r9,%r10
	addi %r10,%r10,-64
	lxvx %vs4,%r8,%r12
	stxvx %vs4,%r9,%r12
	lxvx %vs5,%r8,%r6
	stxvx %vs5,%r9,%r6
	lxvx %vs6,%r8,%r7
	stxvx %vs6,%r9,%r7
	bdnz .L1535
.L1632:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r0
	beqlr %cr0
	rldicl %r0,%r11,0,32
	cmpwi %cr7,%r11,0
	addi %r9,%r11,-1
	lbzx %r8,%r4,%r0
	rldicl %r12,%r9,0,32
	stbx %r8,%r3,%r0
	beqlr %cr7
	cmpdi %cr1,%r12,0
	lbzx %r7,%r4,%r12
	addi %r10,%r11,-2
	rldicl %r6,%r10,0,32
	stbx %r7,%r3,%r12
	beqlr %cr1
	cmpdi %cr5,%r6,0
	lbzx %r5,%r4,%r6
	addi %r0,%r11,-3
	rldicl %r9,%r0,0,32
	stbx %r5,%r3,%r6
	beqlr %cr5
	cmpdi %cr6,%r9,0
	lbzx %r8,%r4,%r9
	addi %r12,%r11,-4
	rldicl %r7,%r12,0,32
	stbx %r8,%r3,%r9
	beqlr %cr6
	cmpdi %cr0,%r7,0
	lbzx %r10,%r4,%r7
	addi %r6,%r11,-5
	rldicl %r5,%r6,0,32
	stbx %r10,%r3,%r7
	beqlr %cr0
	cmpdi %cr7,%r5,0
	lbzx %r0,%r4,%r5
	addi %r9,%r11,-6
	rldicl %r12,%r9,0,32
	stbx %r0,%r3,%r5
	beqlr %cr7
	cmpdi %cr1,%r12,0
	lbzx %r8,%r4,%r12
	addi %r7,%r11,-7
	rldicl %r6,%r7,0,32
	stbx %r8,%r3,%r12
	beqlr %cr1
	cmpdi %cr5,%r6,0
	lbzx %r5,%r4,%r6
	addi %r10,%r11,-8
	rldicl %r0,%r10,0,32
	stbx %r5,%r3,%r6
	beqlr %cr5
	cmpdi %cr6,%r0,0
	lbzx %r12,%r4,%r0
	addi %r9,%r11,-9
	rldicl %r7,%r9,0,32
	stbx %r12,%r3,%r0
	beqlr %cr6
	cmpdi %cr0,%r7,0
	lbzx %r8,%r4,%r7
	addi %r6,%r11,-10
	rldicl %r5,%r6,0,32
	stbx %r8,%r3,%r7
	beqlr %cr0
	cmpdi %cr7,%r5,0
	lbzx %r10,%r4,%r5
	addi %r0,%r11,-11
	rldicl %r12,%r0,0,32
	stbx %r10,%r3,%r5
	beqlr %cr7
	cmpdi %cr1,%r12,0
	lbzx %r9,%r4,%r12
	addi %r7,%r11,-12
	rldicl %r6,%r7,0,32
	stbx %r9,%r3,%r12
	beqlr %cr1
	cmpdi %cr5,%r6,0
	lbzx %r5,%r4,%r6
	addi %r8,%r11,-13
	rldicl %r0,%r8,0,32
	stbx %r5,%r3,%r6
	beqlr %cr5
	cmpdi %cr6,%r0,0
	lbzx %r10,%r4,%r0
	addi %r11,%r11,-14
	rldicl %r12,%r11,0,32
	stbx %r10,%r3,%r0
	beqlr %cr6
	lbzx %r4,%r4,%r12
	stbx %r4,%r3,%r12
	blr
	.p2align 4,,15
.L1651:
	lxv %vs7,0(%r4)
	mr %r6,%r0
	li %r12,16
	stxv %vs7,0(%r3)
	b .L1600
	.p2align 4,,15
.L1528:
	andi. %r9,%r10,0x1
	addi %r8,%r4,-2
	addi %r6,%r10,-1
	addi %r9,%r3,-2
	beq %cr0,.L1576
	cmpdi %cr7,%r6,0
	lhz %r11,0(%r4)
	mr %r8,%r4
	mr %r9,%r3
	sth %r11,0(%r3)
	beq %cr7,.L1524
.L1576:
	srdi %r10,%r10,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1643
	addi %r10,%r10,-1
	mtctr %r10
	lhz %r6,2(%r8)
	sth %r6,2(%r9)
	addi %r7,%r8,2
	lhz %r6,2(%r7)
	addi %r10,%r9,2
	sth %r6,2(%r10)
.L1531:
	lhz %r6,4(%r7)
	sth %r6,4(%r10)
	addi %r7,%r7,4
	lhz %r6,2(%r7)
	addi %r10,%r10,4
	sth %r6,2(%r10)
	bdnz .L1531
	b .L1524
	.p2align 4,,15
.L1643:
	lhz %r12,2(%r8)
	mr %r7,%r8
	mr %r10,%r9
	addi %r8,%r8,4
	addi %r9,%r9,4
	sth %r12,-2(%r9)
	lhz %r0,4(%r7)
	sth %r0,4(%r10)
	bdnz .L1643
	b .L1524
.L1652:
	lxv %vs0,0(%r8)
	mr %r6,%r12
	li %r10,-16
	stxv %vs0,0(%r9)
	b .L1602
.L1534:
	andi. %r10,%r5,0x1
	addi %r9,%r7,1
	add %r4,%r4,%r9
	add %r9,%r3,%r9
	addi %r3,%r5,-1
	beq %cr0,.L1588
	lbzu %r7,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r7,-1(%r9)
	beqlr %cr7
.L1588:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1644
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1537:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1537
.L1521:
	blr
.L1644:
	lbz %r6,-1(%r4)
	mr %r5,%r4
	mr %r8,%r9
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	stb %r6,1(%r9)
	lbz %r0,-2(%r5)
	stb %r0,-2(%r8)
	bdnz .L1644
	blr
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
	cmpld %cr0,%r3,%r4
	srwi %r11,%r5,2
	rlwinm %r0,%r5,0,0,29
	blt %cr0,.L1658
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble %cr1,.L1853
.L1658:
	cmpwi %cr5,%r11,0
	beq %cr5,.L1854
	addi %r12,%r11,-1
	cmplwi %cr0,%r12,3
	ble %cr0,.L1660
	addi %r9,%r4,4
	subf %r10,%r9,%r3
	cmpldi %cr7,%r10,8
	ble %cr7,.L1660
	srdi %r7,%r5,4
	srwi %r10,%r5,4
	andi. %r6,%r7,0x3
	addi %r12,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq %cr0,.L1735
	cmpdi %cr1,%r6,1
	beq %cr1,.L1751
	cmpdi %cr5,%r6,2
	bne %cr5,.L1855
.L1752:
	lxvx %vs8,%r4,%r9
	addi %r7,%r7,-1
	stxvx %vs8,%r3,%r9
	addi %r9,%r9,16
.L1751:
	lxvx %vs9,%r4,%r9
	cmpdi %cr6,%r7,1
	stxvx %vs9,%r3,%r9
	addi %r9,%r9,16
	beq %cr6,.L1793
.L1735:
	srdi %r6,%r8,2
	mtctr %r6
.L1661:
	lxvx %vs10,%r4,%r9
	addi %r12,%r9,16
	addi %r7,%r9,32
	addi %r8,%r9,48
	stxvx %vs10,%r3,%r9
	addi %r9,%r9,64
	lxvx %vs11,%r4,%r12
	stxvx %vs11,%r3,%r12
	lxvx %vs12,%r4,%r7
	stxvx %vs12,%r3,%r7
	lxvx %vs13,%r4,%r8
	stxvx %vs13,%r3,%r8
	bdnz .L1661
.L1793:
	slwi %r9,%r10,2
	cmplw %cr7,%r11,%r9
	beq %cr7,.L1664
	rlwinm %r6,%r9,2,0,27
	addi %r10,%r9,1
	cmplw %cr0,%r11,%r10
	lwzx %r12,%r4,%r6
	stwx %r12,%r3,%r6
	ble %cr0,.L1664
	rldic %r7,%r10,2,31
	addi %r9,%r9,2
	cmplw %cr1,%r11,%r9
	lwzx %r11,%r4,%r7
	stwx %r11,%r3,%r7
	ble %cr1,.L1664
	rldicl %r8,%r9,0,32
	sldi %r6,%r8,2
	lwzx %r10,%r4,%r6
	stwx %r10,%r3,%r6
.L1664:
	cmplw %cr7,%r0,%r5
	bgelr %cr7
	subf %r9,%r0,%r5
	rldicl %r10,%r0,0,32
	addi %r8,%r9,-1
	cmplwi %cr1,%r8,14
	ble %cr1,.L1656
	addi %r11,%r10,1
	add %r7,%r3,%r10
	add %r6,%r4,%r11
	subf %r12,%r6,%r7
	cmpldi %cr0,%r12,14
	ble %cr0,.L1656
	rldicl %r11,%r9,60,36
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	add %r10,%r4,%r10
	andi. %r12,%r11,0x3
	addi %r31,%r11,-1
	mr %r6,%r11
	li %r8,0
	beq %cr0,.L1723
	cmpdi %cr5,%r12,1
	beq %cr5,.L1753
	cmpdi %cr6,%r12,2
	bne %cr6,.L1856
.L1754:
	lxvx %vs1,%r10,%r8
	addi %r11,%r11,-1
	stxvx %vs1,%r7,%r8
	addi %r8,%r8,16
.L1753:
	lxvx %vs2,%r10,%r8
	cmpdi %cr7,%r11,1
	stxvx %vs2,%r7,%r8
	addi %r8,%r8,16
	beq %cr7,.L1792
.L1723:
	srdi %r12,%r6,2
	mtctr %r12
.L1665:
	lxvx %vs3,%r10,%r8
	addi %r31,%r8,16
	addi %r11,%r8,32
	addi %r6,%r8,48
	stxvx %vs3,%r7,%r8
	addi %r8,%r8,64
	lxvx %vs4,%r10,%r31
	stxvx %vs4,%r7,%r31
	lxvx %vs5,%r10,%r11
	stxvx %vs5,%r7,%r11
	lxvx %vs6,%r10,%r6
	stxvx %vs6,%r7,%r6
	bdnz .L1665
.L1792:
	andi. %r10,%r9,0xf
	rlwinm %r9,%r9,0,0,27
	add %r12,%r9,%r0
	beq %cr0,.L1849
	rldicl %r0,%r12,0,32
	addi %r10,%r12,1
	cmplw %cr1,%r10,%r5
	lbzx %r7,%r4,%r0
	stbx %r7,%r3,%r0
	bge %cr1,.L1849
	rldicl %r31,%r10,0,32
	addi %r8,%r12,2
	cmplw %cr5,%r8,%r5
	lbzx %r6,%r4,%r31
	stbx %r6,%r3,%r31
	bge %cr5,.L1849
	rldicl %r11,%r8,0,32
	addi %r9,%r12,3
	cmplw %cr6,%r9,%r5
	lbzx %r0,%r4,%r11
	stbx %r0,%r3,%r11
	bge %cr6,.L1849
	rldicl %r10,%r9,0,32
	addi %r31,%r12,4
	cmplw %cr7,%r31,%r5
	lbzx %r7,%r4,%r10
	stbx %r7,%r3,%r10
	bge %cr7,.L1849
	rldicl %r8,%r31,0,32
	addi %r6,%r12,5
	cmplw %cr0,%r6,%r5
	lbzx %r11,%r4,%r8
	stbx %r11,%r3,%r8
	bge %cr0,.L1849
	rldicl %r9,%r6,0,32
	addi %r0,%r12,6
	cmplw %cr1,%r0,%r5
	lbzx %r10,%r4,%r9
	stbx %r10,%r3,%r9
	bge %cr1,.L1849
	rldicl %r31,%r0,0,32
	addi %r8,%r12,7
	cmplw %cr5,%r8,%r5
	lbzx %r7,%r4,%r31
	stbx %r7,%r3,%r31
	bge %cr5,.L1849
	rldicl %r6,%r8,0,32
	addi %r11,%r12,8
	cmplw %cr6,%r11,%r5
	lbzx %r9,%r4,%r6
	stbx %r9,%r3,%r6
	bge %cr6,.L1849
	rldicl %r0,%r11,0,32
	addi %r10,%r12,9
	cmplw %cr7,%r10,%r5
	lbzx %r31,%r4,%r0
	stbx %r31,%r3,%r0
	bge %cr7,.L1849
	rldicl %r6,%r10,0,32
	addi %r8,%r12,10
	cmplw %cr0,%r8,%r5
	lbzx %r7,%r4,%r6
	stbx %r7,%r3,%r6
	bge %cr0,.L1849
	rldicl %r11,%r8,0,32
	addi %r9,%r12,11
	cmplw %cr1,%r9,%r5
	lbzx %r0,%r4,%r11
	stbx %r0,%r3,%r11
	bge %cr1,.L1849
	rldicl %r10,%r9,0,32
	addi %r31,%r12,12
	cmplw %cr5,%r31,%r5
	lbzx %r6,%r4,%r10
	stbx %r6,%r3,%r10
	bge %cr5,.L1849
	rldicl %r8,%r31,0,32
	addi %r11,%r12,13
	cmplw %cr6,%r11,%r5
	lbzx %r7,%r4,%r8
	stbx %r7,%r3,%r8
	bge %cr6,.L1849
	rldicl %r0,%r11,0,32
	addi %r12,%r12,14
	cmplw %cr7,%r12,%r5
	lbzx %r5,%r4,%r0
	stbx %r5,%r3,%r0
	bge %cr7,.L1849
	rldicl %r9,%r12,0,32
	lbzx %r4,%r4,%r9
	stbx %r4,%r3,%r9
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1853:
	cmpdi %cr5,%r5,0
	addi %r0,%r5,-1
	rldicl %r7,%r0,0,32
	beqlr %cr5
	cmplwi %cr6,%r0,14
	ble %cr6,.L1669
	addi %r10,%r7,-1
	add %r8,%r3,%r7
	add %r6,%r4,%r10
	subf %r12,%r6,%r8
	addi %r11,%r12,14
	cmpldi %cr7,%r11,14
	ble %cr7,.L1669
	srdi %r6,%r5,4
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	addi %r31,%r7,-15
	andi. %r12,%r6,0x3
	add %r8,%r4,%r31
	add %r9,%r3,%r31
	addi %r11,%r6,-1
	mr %r7,%r6
	li %r10,0
	beq %cr0,.L1747
	cmpdi %cr1,%r12,1
	beq %cr1,.L1755
	cmpdi %cr5,%r12,2
	bne %cr5,.L1857
.L1756:
	lxvx %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1755:
	lxvx %vs2,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvx %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L1794
.L1747:
	srdi %r31,%r7,2
	mtctr %r31
.L1670:
	lxvx %vs3,%r8,%r10
	addi %r12,%r10,-16
	addi %r11,%r10,-32
	addi %r7,%r10,-48
	stxvx %vs3,%r9,%r10
	addi %r10,%r10,-64
	lxvx %vs4,%r8,%r12
	stxvx %vs4,%r9,%r12
	lxvx %vs5,%r8,%r11
	stxvx %vs5,%r9,%r11
	lxvx %vs6,%r8,%r7
	stxvx %vs6,%r9,%r7
	bdnz .L1670
.L1794:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r9,%r5,%r0
	beq %cr0,.L1849
	rldicl %r0,%r9,0,32
	cmpwi %cr7,%r9,0
	addi %r8,%r9,-1
	lbzx %r6,%r4,%r0
	rldicl %r10,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr7,.L1849
	cmpdi %cr1,%r10,0
	lbzx %r31,%r4,%r10
	addi %r12,%r9,-2
	rldicl %r11,%r12,0,32
	stbx %r31,%r3,%r10
	beq %cr1,.L1849
	cmpdi %cr5,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-3
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr5,.L1849
	cmpdi %cr6,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-4
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr6,.L1849
	cmpdi %cr0,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r9,-5
	rldicl %r11,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr0,.L1849
	cmpdi %cr7,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-6
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr7,.L1849
	cmpdi %cr1,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-7
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr1,.L1849
	cmpdi %cr5,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r9,-8
	rldicl %r11,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr5,.L1849
	cmpdi %cr6,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-9
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr6,.L1849
	cmpdi %cr0,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-10
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr0,.L1849
	cmpdi %cr7,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r9,-11
	rldicl %r11,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr7,.L1849
	cmpdi %cr1,%r11,0
	lbzx %r7,%r4,%r11
	addi %r5,%r9,-12
	rldicl %r0,%r5,0,32
	stbx %r7,%r3,%r11
	beq %cr1,.L1849
	cmpdi %cr5,%r0,0
	lbzx %r6,%r4,%r0
	addi %r8,%r9,-13
	rldicl %r31,%r8,0,32
	stbx %r6,%r3,%r0
	beq %cr5,.L1849
	cmpdi %cr6,%r31,0
	lbzx %r12,%r4,%r31
	addi %r9,%r9,-14
	rldicl %r11,%r9,0,32
	stbx %r12,%r3,%r31
	beq %cr6,.L1849
	lbzx %r4,%r4,%r11
	stbx %r4,%r3,%r11
	ld %r31,-8(%r1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1849:
	.cfi_restore_state
	ld %r31,-8(%r1)
	.cfi_restore 31
.L1653:
	blr
	.p2align 4,,15
.L1855:
	lxv %vs7,0(%r4)
	mr %r7,%r12
	li %r9,16
	stxv %vs7,0(%r3)
	b .L1752
	.p2align 4,,15
.L1856:
	.cfi_offset 31, -8
	lxv %vs0,0(%r10)
	mr %r11,%r31
	li %r8,16
	stxv %vs0,0(%r7)
	b .L1754
	.p2align 4,,15
.L1854:
	.cfi_restore 31
	cmpdi %cr6,%r5,0
	rldicl %r10,%r0,0,32
	mr %r9,%r5
	beqlr %cr6
.L1656:
	rldicl %r6,%r9,0,32
	addi %r10,%r10,-1
	andi. %r8,%r6,0x1
	add %r4,%r4,%r10
	add %r10,%r3,%r10
	addi %r3,%r6,-1
	beq %cr0,.L1716
	lbzu %r8,1(%r4)
	cmpdi %cr1,%r3,0
	stbu %r8,1(%r10)
	beqlr %cr1
.L1716:
	srdi %r9,%r6,1
	mtctr %r9
	cmpdi %cr5,%r9,2
	ble %cr5,.L1810
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r7,1(%r4)
	stb %r7,1(%r10)
	addi %r8,%r4,1
	lbz %r7,1(%r8)
	addi %r9,%r10,1
	stb %r7,1(%r9)
.L1667:
	lbz %r7,2(%r8)
	stb %r7,2(%r9)
	addi %r8,%r8,2
	lbz %r7,1(%r8)
	addi %r9,%r9,2
	stb %r7,1(%r9)
	bdnz .L1667
	blr
	.p2align 4,,15
.L1810:
	lbz %r11,1(%r4)
	mr %r7,%r4
	mr %r12,%r10
	addi %r4,%r4,2
	addi %r10,%r10,2
	stb %r11,-1(%r10)
	lbz %r0,2(%r7)
	stb %r0,2(%r12)
	bdnz .L1810
	blr
	.p2align 4,,15
.L1660:
	rldicl %r12,%r11,0,32
	addi %r8,%r4,-4
	andi. %r10,%r12,0x1
	addi %r7,%r12,-1
	addi %r10,%r3,-4
	beq %cr0,.L1728
	cmpdi %cr5,%r7,0
	lwz %r9,0(%r4)
	mr %r8,%r4
	mr %r10,%r3
	stw %r9,0(%r3)
	beq %cr5,.L1664
.L1728:
	srdi %r9,%r12,1
	mtctr %r9
	cmpdi %cr6,%r9,2
	ble %cr6,.L1811
	addi %r9,%r9,-1
	mtctr %r9
	lwz %r6,4(%r8)
	stw %r6,4(%r10)
	addi %r7,%r8,4
	lwz %r6,4(%r7)
	addi %r9,%r10,4
	stw %r6,4(%r9)
.L1663:
	lwz %r6,8(%r7)
	stw %r6,8(%r9)
	addi %r7,%r7,8
	lwz %r6,4(%r7)
	addi %r9,%r9,8
	stw %r6,4(%r9)
	bdnz .L1663
	b .L1664
	.p2align 4,,15
.L1811:
	lwz %r11,4(%r8)
	mr %r6,%r8
	mr %r12,%r10
	addi %r8,%r8,8
	addi %r10,%r10,8
	stw %r11,-4(%r10)
	lwz %r7,8(%r6)
	stw %r7,8(%r12)
	bdnz .L1811
	b .L1664
.L1857:
	.cfi_offset 31, -8
	lxv %vs0,0(%r8)
	mr %r6,%r11
	li %r10,-16
	stxv %vs0,0(%r9)
	b .L1756
.L1669:
	.cfi_restore 31
	andi. %r10,%r5,0x1
	addi %r10,%r7,1
	add %r9,%r3,%r10
	add %r4,%r4,%r10
	addi %r3,%r5,-1
	beq %cr0,.L1740
	lbzu %r7,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r7,-1(%r9)
	beqlr %cr7
.L1740:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1812
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1673:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1673
	blr
.L1812:
	lbz %r5,-1(%r4)
	mr %r6,%r4
	mr %r8,%r9
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	stb %r5,1(%r9)
	lbz %r0,-2(%r6)
	stb %r0,-2(%r8)
	bdnz .L1812
	blr
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
	divw %r9,%r3,%r4
	mullw %r0,%r9,%r4
	subf %r3,%r0,%r3
	extsw %r3,%r3
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
	mtvsrd %vs1,%r3
	fcfid %f1,%f1
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
	mtvsrd %vs1,%r3
	fcfids %f1,%f1
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
	mtvsrd %vs1,%r3
	fcfidu %f1,%f1
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
	mtvsrd %vs1,%r3
	fcfidus %f1,%f1
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
	divwu %r9,%r3,%r4
	mullw %r0,%r9,%r4
	subf %r3,%r0,%r3
	rldicl %r3,%r3,0,32
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
	srdi. %r9,%r3,15
	bne %cr0,.L1867
	srawi %r9,%r3,14
	cmpwi %cr1,%r9,0
	bne %cr1,.L1866
	srdi. %r9,%r3,13
	bne %cr0,.L1868
	srdi. %r9,%r3,12
	bne %cr0,.L1869
	srdi. %r9,%r3,11
	bne %cr0,.L1870
	srdi. %r9,%r3,10
	bne %cr0,.L1871
	srdi. %r9,%r3,9
	bne %cr0,.L1872
	srdi. %r9,%r3,8
	bne %cr0,.L1873
	srdi. %r9,%r3,7
	bne %cr0,.L1874
	srdi. %r9,%r3,6
	bne %cr0,.L1875
	srdi. %r9,%r3,5
	bne %cr0,.L1876
	srdi. %r9,%r3,4
	bne %cr0,.L1877
	srdi. %r9,%r3,3
	bne %cr0,.L1878
	srdi. %r9,%r3,2
	bne %cr0,.L1879
	srdi. %r9,%r3,1
	bne %cr0,.L1880
	cntlzd %r3,%r3
	srdi %r4,%r3,6
	addi %r9,%r4,15
.L1866:
	rldicl %r3,%r9,0,59
	blr
.L1867:
	li %r9,0
	b .L1866
.L1878:
	li %r9,12
	b .L1866
.L1868:
	li %r9,2
	b .L1866
.L1869:
	li %r9,3
	b .L1866
.L1870:
	li %r9,4
	b .L1866
.L1871:
	li %r9,5
	b .L1866
.L1872:
	li %r9,6
	b .L1866
.L1873:
	li %r9,7
	b .L1866
.L1874:
	li %r9,8
	b .L1866
.L1875:
	li %r9,9
	b .L1866
.L1876:
	li %r9,10
	b .L1866
.L1877:
	li %r9,11
	b .L1866
.L1879:
	li %r9,13
	b .L1866
.L1880:
	li %r9,14
	b .L1866
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
	andi. %r9,%r3,0x1
	bne %cr0,.L1885
	andi. %r9,%r3,0x2
	bne %cr0,.L1886
	andi. %r9,%r3,0x4
	bne %cr0,.L1887
	andi. %r9,%r3,0x8
	bne %cr0,.L1888
	andi. %r9,%r3,0x10
	bne %cr0,.L1889
	andi. %r9,%r3,0x20
	bne %cr0,.L1890
	andi. %r9,%r3,0x40
	bne %cr0,.L1891
	andi. %r9,%r3,0x80
	bne %cr0,.L1892
	andi. %r9,%r3,0x100
	bne %cr0,.L1893
	andi. %r9,%r3,0x200
	bne %cr0,.L1894
	andi. %r9,%r3,0x400
	bne %cr0,.L1895
	andi. %r9,%r3,0x800
	bne %cr0,.L1896
	andi. %r9,%r3,0x1000
	bne %cr0,.L1897
	andi. %r9,%r3,0x2000
	bne %cr0,.L1898
	andi. %r9,%r3,0x4000
	bne %cr0,.L1899
	srawi %r3,%r3,15
	cntlzw %r0,%r3
	srwi %r4,%r0,5
	addi %r5,%r4,15
.L1884:
	rldicl %r3,%r5,0,59
	blr
.L1885:
	li %r5,0
	b .L1884
.L1886:
	li %r5,1
	b .L1884
.L1897:
	li %r5,12
	b .L1884
.L1887:
	li %r5,2
	b .L1884
.L1888:
	li %r5,3
	b .L1884
.L1889:
	li %r5,4
	b .L1884
.L1890:
	li %r5,5
	b .L1884
.L1891:
	li %r5,6
	b .L1884
.L1892:
	li %r5,7
	b .L1884
.L1893:
	li %r5,8
	b .L1884
.L1894:
	li %r5,9
	b .L1884
.L1895:
	li %r5,10
	b .L1884
.L1896:
	li %r5,11
	b .L1884
.L1898:
	li %r5,13
	b .L1884
.L1899:
	li %r5,14
	b .L1884
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
	addis %r9,%r2,.LC38@toc@ha
	lfs %f0,.LC38@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne %cr0,.L1907
	fctidz %f1,%f1
	mfvsrd %r3,%vs1
	blr
	.p2align 4,,15
.L1907:
	fsubs %f2,%f1,%f0
	fctidz %f3,%f2
	mfvsrd %r3,%vs3
	addis %r4,%r3,0x1
	addi %r3,%r4,-32768
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
	mfvrsave %r11
	oris %r0,%r11,0xc03c
	stw %r11,-4(%r1)
	mtvrsave %r0
	vspltisw %v11,1
	xxspltib %vs0,0
	addis %r8,%r2,.LC40@toc@ha
	addis %r9,%r2,.LC41@toc@ha
	mtvsrws %vs32,%r3
	addi %r4,%r8,.LC40@toc@l
	addi %r5,%r9,.LC41@toc@l
	lwz %r0,-4(%r1)
	addis %r10,%r2,.LC42@toc@ha
	addis %r7,%r2,.LC43@toc@ha
	lxv %vs45,0(%r4)
	lxv %vs44,0(%r5)
	addi %r6,%r10,.LC42@toc@l
	addi %r12,%r7,.LC43@toc@l
	li %r3,0
	lxv %vs33,0(%r6)
	lxv %vs42,0(%r12)
	vsraw %v13,%v0,%v13
	vsraw %v12,%v0,%v12
	xxland %vs45,%vs45,%vs43
	xxland %vs44,%vs44,%vs43
	vsraw %v1,%v0,%v1
	vsraw %v0,%v0,%v10
	vadduwm %v10,%v13,%v12
	xxland %vs33,%vs33,%vs43
	xxland %vs43,%vs32,%vs43
	vadduwm %v13,%v1,%v10
	vadduwm %v12,%v11,%v13
	xxsldwi %vs33,%vs0,%vs44,2
	vadduwm %v10,%v1,%v12
	xxsldwi %vs32,%vs0,%vs42,3
	vadduwm %v11,%v0,%v10
	vextuwrx %r11,%r3,%v11
	rldicl %r3,%r11,0,63
	mtvrsave %r0
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
	mfvrsave %r11
	oris %r0,%r11,0xc03c
	stw %r11,-4(%r1)
	mtvrsave %r0
	vspltisw %v11,1
	xxspltib %vs0,0
	addis %r8,%r2,.LC40@toc@ha
	addis %r9,%r2,.LC41@toc@ha
	mtvsrws %vs32,%r3
	addi %r4,%r8,.LC40@toc@l
	addi %r5,%r9,.LC41@toc@l
	lwz %r0,-4(%r1)
	addis %r10,%r2,.LC42@toc@ha
	addis %r7,%r2,.LC43@toc@ha
	lxv %vs45,0(%r4)
	lxv %vs44,0(%r5)
	addi %r6,%r10,.LC42@toc@l
	addi %r12,%r7,.LC43@toc@l
	li %r3,0
	lxv %vs33,0(%r6)
	lxv %vs42,0(%r12)
	vsraw %v13,%v0,%v13
	vsraw %v12,%v0,%v12
	xxland %vs45,%vs45,%vs43
	xxland %vs44,%vs44,%vs43
	vsraw %v1,%v0,%v1
	vsraw %v0,%v0,%v10
	vadduwm %v10,%v13,%v12
	xxland %vs33,%vs33,%vs43
	xxland %vs43,%vs32,%vs43
	vadduwm %v13,%v1,%v10
	vadduwm %v12,%v11,%v13
	xxsldwi %vs33,%vs0,%vs44,2
	vadduwm %v10,%v1,%v12
	xxsldwi %vs32,%vs0,%vs42,3
	vadduwm %v11,%v0,%v10
	vextuwrx %r11,%r3,%v11
	extsw %r3,%r11
	mtvrsave %r0
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
	mr. %r10,%r3
	li %r3,0
	beq %cr0,.L1913
	.p2align 5
.L1914:
	rlwinm %r9,%r10,0,31,31
	srwi %r10,%r10,1
	cmpwi %cr1,%r10,0
	neg %r0,%r9
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	bne %cr1,.L1914
.L1913:
	rldicl %r3,%r3,0,32
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
	mr. %r10,%r3
	li %r3,0
	beq %cr0,.L1918
	cmpdi %cr1,%r4,0
	beq %cr1,.L1918
	.p2align 5
.L1919:
	rlwinm %r9,%r4,0,31,31
	srdi. %r4,%r4,1
	neg %r0,%r9
	and %r5,%r0,%r10
	add %r3,%r3,%r5
	rldic %r10,%r10,1,32
	bne %cr0,.L1919
.L1918:
	rldicl %r3,%r3,0,32
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
	cmplw %cr0,%r4,%r3
	li %r8,16
	mtctr %r8
	li %r12,32
	li %r9,1
	blt %cr0,.L1924
	b .L1945
	.p2align 4,,15
.L1928:
	rldicl %r4,%r0,0,32
	slwi %r9,%r9,1
	ble %cr7,.L1926
	cmpwi %cr5,%r4,0
	slwi %r6,%r4,1
	cmplw %cr6,%r3,%r6
	blt %cr5,.L1929
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble %cr6,.L1926
	bdz .L1927
.L1924:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r12,-1
	cmplw %cr7,%r3,%r0
	addi %r12,%r10,-1
	bge %cr1,.L1928
.L1929:
	li %r12,0
	li %r11,1
	li %r10,0
	.p2align 4,,15
.L1930:
	cmplw %cr1,%r3,%r4
	subf %r8,%r4,%r3
	srdi %r4,%r4,1
	isel %r7,0,%r11,4
	cmpwi %cr5,%r7,0
	isel %r0,%r10,%r9,22
	srwi %r9,%r9,1
	cmpwi %cr7,%r9,0
	isel %r3,%r3,%r8,22
	or %r12,%r12,%r0
	rldicl %r3,%r3,0,32
	bne %cr7,.L1930
.L1927:
	cmpdi %cr6,%r5,0
	isel %r5,%r12,%r3,26
	rldicl %r3,%r5,0,32
	blr
	.p2align 4,,15
.L1926:
	cmpwi %cr0,%r9,0
	bne %cr0,.L1929
	li %r12,0
	b .L1927
	.p2align 4,,15
.L1945:
	isel %r9,0,%r9,1
	subf %r4,%r4,%r3
	andi. %r12,%r9,0xff
	isel %r3,%r3,%r4,2
	rldicl %r3,%r3,0,32
	b .L1927
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
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	blt %cr0,.L1949
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1949:
	extsw %r3,%r3
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
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	blt %cr0,.L1952
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1952:
	extsw %r3,%r3
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
	mulld %r3,%r3,%r4
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
	mulld %r3,%r3,%r4
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
	cmpwi %cr0,%r4,0
	blt %cr0,.L1969
	cmpdi %cr1,%r4,0
	beq %cr1,.L1962
	li %r6,0
.L1958:
	li %r10,32
	li %r8,0
	b .L1961
	.p2align 4,,15
.L1970:
	beq %cr7,.L1960
.L1961:
	rlwinm %r9,%r4,0,31,31
	addi %r10,%r10,-1
	sradi. %r4,%r4,1
	neg %r0,%r9
	and %r11,%r0,%r3
	rlwinm %r7,%r10,0,0xff
	slwi %r5,%r3,1
	cmpwi %cr7,%r7,0
	extsw %r3,%r5
	add %r8,%r8,%r11
	bne %cr0,.L1970
.L1960:
	cmpwi %cr5,%r6,0
	neg %r12,%r8
	isel %r3,%r8,%r12,22
.L1959:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L1969:
	neg %r4,%r4
	li %r6,1
	extsw %r4,%r4
	b .L1958
.L1962:
	li %r3,0
	b .L1959
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
	cmpdi %cr0,%r3,0
	li %r9,1
	li %r11,0
	bge %cr0,.L1972
	neg %r3,%r3
	li %r9,0
	li %r11,1
.L1972:
	cmpdi %cr1,%r4,0
	bge %cr1,.L1973
	neg %r4,%r4
	mr %r11,%r9
.L1973:
	cmplw %cr5,%r3,%r4
	li %r10,16
	mtctr %r10
	li %r12,1
	bgt %cr5,.L1974
	b .L1999
	.p2align 4,,15
.L1978:
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr0,%r3,%r4
	cmpwi %cr7,%r4,0
	ble %cr0,.L1976
	blt %cr7,.L1995
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr0,%r3,%r4
	ble %cr0,.L1976
	bdz .L1986
.L1974:
	cmpwi %cr6,%r4,0
	bge %cr6,.L1978
.L1995:
	cmplw %cr0,%r3,%r4
	b .L1979
	.p2align 4,,15
.L1976:
	cmpwi %cr1,%r12,0
	beq %cr1,.L1986
.L1979:
	li %r0,0
	li %r5,1
	li %r6,0
	.p2align 4,,15
.L1980:
	isel %r7,0,%r5,0
	subf %r8,%r4,%r3
	cmpwi %cr5,%r7,0
	srwi %r4,%r4,1
	isel %r9,%r6,%r12,22
	srwi %r12,%r12,1
	cmpwi %cr6,%r12,0
	isel %r3,%r3,%r8,22
	cmplw %cr0,%r3,%r4
	or %r0,%r0,%r9
	bne %cr6,.L1980
.L1982:
	rldicl %r3,%r0,0,32
	cmpwi %cr7,%r11,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
	.p2align 4,,15
.L1986:
	cmpwi %cr7,%r11,0
	li %r3,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L1999:
	isel %r0,0,%r12,20
	b .L1982
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
	cmpdi %cr0,%r3,0
	li %r5,0
	bge %cr0,.L2004
	neg %r3,%r3
	li %r5,1
.L2004:
	sradi %r7,%r4,63
	li %r9,16
	mtctr %r9
	xor %r4,%r7,%r4
	subf %r0,%r7,%r4
	mr %r8,%r3
	cmplw %cr1,%r3,%r0
	li %r10,1
	mr %r11,%r0
	bgt %cr1,.L2005
	b .L2031
	.p2align 4,,15
.L2009:
	slwi %r11,%r11,1
	slwi %r10,%r10,1
	cmplw %cr6,%r8,%r11
	cmpwi %cr7,%r11,0
	ble %cr6,.L2007
	blt %cr7,.L2028
	slwi %r11,%r11,1
	slwi %r10,%r10,1
	cmplw %cr6,%r8,%r11
	ble %cr6,.L2007
	bdz .L2008
.L2005:
	cmpwi %cr5,%r11,0
	bge %cr5,.L2009
.L2028:
	cmplw %cr6,%r8,%r11
.L2010:
	li %r3,1
	.p2align 4,,15
.L2011:
	srwi %r10,%r10,1
	isel %r12,0,%r3,24
	cmpwi %cr1,%r10,0
	cmpwi %cr5,%r12,0
	subf %r7,%r11,%r8
	srwi %r11,%r11,1
	isel %r8,%r8,%r7,22
	cmplw %cr6,%r8,%r11
	bne %cr1,.L2011
.L2008:
	cmpwi %cr7,%r5,0
	rldicl %r4,%r8,0,32
	neg %r5,%r4
	isel %r3,%r4,%r5,30
	blr
	.p2align 4,,15
.L2007:
	cmpwi %cr0,%r10,0
	bne %cr0,.L2010
	b .L2008
	.p2align 4,,15
.L2031:
	subf %r6,%r0,%r3
	isel %r8,%r3,%r6,4
	b .L2008
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
	cmplw %cr0,%r4,%r3
	bge %cr0,.L2204
	andi. %r9,%r4,0x8000
	bne %cr0,.L2039
	rldic %r9,%r4,1,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2112
	andi. %r10,%r9,0x8000
	bne %cr0,.L2112
	rldic %r9,%r4,2,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2114
	andi. %r10,%r9,0x8000
	bne %cr0,.L2114
	rldic %r9,%r4,3,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2116
	andi. %r10,%r9,0x8000
	bne %cr0,.L2116
	rldic %r9,%r4,4,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2118
	andi. %r10,%r9,0x8000
	bne %cr0,.L2118
	rldic %r9,%r4,5,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2120
	andi. %r10,%r9,0x8000
	bne %cr0,.L2120
	rldic %r9,%r4,6,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2122
	andi. %r10,%r9,0x8000
	bne %cr0,.L2122
	rldic %r9,%r4,7,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2124
	andi. %r10,%r9,0x8000
	bne %cr0,.L2124
	rldic %r9,%r4,8,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2126
	andi. %r10,%r9,0x8000
	bne %cr0,.L2126
	rldic %r9,%r4,9,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2128
	andi. %r10,%r9,0x8000
	bne %cr0,.L2128
	rldic %r9,%r4,10,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2130
	andi. %r10,%r9,0x8000
	bne %cr0,.L2130
	rldic %r9,%r4,11,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2132
	andi. %r10,%r9,0x8000
	bne %cr0,.L2132
	rldic %r9,%r4,12,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2134
	andi. %r10,%r9,0x8000
	bne %cr0,.L2134
	rldic %r9,%r4,13,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2136
	andi. %r10,%r9,0x8000
	bne %cr0,.L2136
	rldic %r9,%r4,14,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2138
	andi. %r10,%r9,0x8000
	bne %cr0,.L2138
	rldic %r7,%r4,15,48
	cmplw %cr6,%r3,%r7
	ble %cr6,.L2139
	cmpdi %cr1,%r7,0
	li %r12,0
	bne %cr1,.L2205
.L2042:
	cmpdi %cr6,%r5,0
	beq %cr6,.L2101
	mr %r12,%r3
.L2101:
	rlwinm %r3,%r12,0,0xffff
	blr
.L2112:
	li %r8,2
	.p2align 4,,15
.L2041:
	subf %r0,%r9,%r3
	li %r6,0
	rlwinm %r4,%r0,0,0xffff
	isel %r3,%r3,%r4,28
	blt %cr7,.L2110
	mr %r6,%r8
.L2110:
	srdi %r7,%r9,1
	rldicl %r12,%r8,63,49
	cmplw %cr5,%r3,%r7
	subf %r11,%r7,%r3
	mtvsrwz %vs0,%r12
	rlwinm %r0,%r11,0,0xffff
	li %r10,0
	isel %r3,%r3,%r0,20
	blt %cr5,.L2046
	mfvsrwz %r10,%vs0
.L2046:
	srwi %r11,%r8,2
	or %r0,%r10,%r6
	cmpwi %cr7,%r11,0
	mr %r12,%r0
	srdi %r4,%r9,2
	beq %cr7,.L2042
	cmplw %cr0,%r3,%r4
	li %r6,1
	subf %r12,%r4,%r3
	li %r4,0
	isel %r10,0,%r6,0
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq %cr6,.L2050
	mr %r4,%r11
.L2050:
	srwi %r11,%r8,3
	or %r0,%r0,%r4
	cmpwi %cr1,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,3
	beq %cr1,.L2042
	cmplw %cr5,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,20
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr7,%r10,0
	isel %r3,%r3,%r7,30
	beq %cr7,.L2054
	mr %r4,%r11
.L2054:
	srwi %r11,%r8,4
	or %r0,%r0,%r4
	cmpwi %cr0,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,4
	beq %cr0,.L2042
	cmplw %cr6,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,24
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq %cr1,.L2058
	mr %r4,%r11
.L2058:
	srwi %r11,%r8,5
	or %r0,%r0,%r4
	cmpwi %cr5,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,5
	beq %cr5,.L2042
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,28
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr0,%r10,0
	isel %r3,%r3,%r7,2
	beq %cr0,.L2062
	mr %r4,%r11
.L2062:
	srwi %r11,%r8,6
	or %r0,%r0,%r4
	cmpwi %cr6,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,6
	beq %cr6,.L2042
	cmplw %cr1,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,4
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr5,%r10,0
	isel %r3,%r3,%r7,22
	beq %cr5,.L2066
	mr %r4,%r11
.L2066:
	srwi %r11,%r8,7
	or %r0,%r0,%r4
	cmpwi %cr7,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,7
	beq %cr7,.L2042
	cmplw %cr0,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,0
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq %cr6,.L2070
	mr %r4,%r11
.L2070:
	srwi %r11,%r8,8
	or %r0,%r0,%r4
	cmpwi %cr1,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,8
	beq %cr1,.L2042
	cmplw %cr5,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,20
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr7,%r10,0
	isel %r3,%r3,%r7,30
	beq %cr7,.L2074
	mr %r4,%r11
.L2074:
	srwi %r11,%r8,9
	or %r0,%r0,%r4
	cmpwi %cr0,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,9
	beq %cr0,.L2042
	cmplw %cr6,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,24
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq %cr1,.L2078
	mr %r4,%r11
.L2078:
	srwi %r11,%r8,10
	or %r0,%r0,%r4
	cmpwi %cr5,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,10
	beq %cr5,.L2042
	cmplw %cr7,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,28
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr0,%r10,0
	isel %r3,%r3,%r7,2
	beq %cr0,.L2082
	mr %r4,%r11
.L2082:
	srwi %r11,%r8,11
	or %r0,%r0,%r4
	cmpwi %cr6,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,11
	beq %cr6,.L2042
	cmplw %cr1,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,4
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr5,%r10,0
	isel %r3,%r3,%r7,22
	beq %cr5,.L2086
	mr %r4,%r11
.L2086:
	srwi %r11,%r8,12
	or %r0,%r0,%r4
	cmpwi %cr7,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,12
	beq %cr7,.L2042
	cmplw %cr0,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,0
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr6,%r10,0
	isel %r3,%r3,%r7,26
	beq %cr6,.L2090
	mr %r4,%r11
.L2090:
	srwi %r11,%r8,13
	or %r0,%r0,%r4
	cmpwi %cr1,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,13
	beq %cr1,.L2042
	cmplw %cr5,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,20
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr7,%r10,0
	isel %r3,%r3,%r7,30
	beq %cr7,.L2094
	mr %r4,%r11
.L2094:
	srwi %r11,%r8,14
	or %r0,%r0,%r4
	cmpwi %cr0,%r11,0
	mr %r12,%r0
	srdi %r10,%r9,14
	beq %cr0,.L2042
	cmplw %cr6,%r3,%r10
	li %r6,1
	subf %r12,%r10,%r3
	li %r4,0
	isel %r10,0,%r6,24
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr1,%r10,0
	isel %r3,%r3,%r7,6
	beq %cr1,.L2098
	mr %r4,%r11
.L2098:
	cmpwi %cr5,%r8,16384
	or %r8,%r0,%r4
	srdi %r9,%r9,15
	mr %r12,%r8
	beq %cr5,.L2042
	cmplw %cr7,%r3,%r9
	li %r0,1
	subf %r11,%r9,%r3
	isel %r6,0,%r0,28
	rlwinm %r10,%r11,0,0xffff
	cmpwi %cr0,%r6,0
	or %r12,%r8,%r6
	isel %r3,%r3,%r10,2
	b .L2042
.L2114:
	li %r8,4
	b .L2041
.L2116:
	li %r8,8
	b .L2041
.L2118:
	li %r8,16
	b .L2041
.L2128:
	li %r8,512
	b .L2041
.L2120:
	li %r8,32
	b .L2041
.L2122:
	li %r8,64
	b .L2041
.L2124:
	li %r8,128
	b .L2041
.L2126:
	li %r8,256
	b .L2041
.L2204:
	cmpd %cr1,%r4,%r3
	li %r10,0
	li %r6,1
	subf %r9,%r4,%r3
	isel %r12,%r6,%r10,6
	rlwinm %r0,%r9,0,0xffff
	cmpwi %cr5,%r12,0
	isel %r3,%r3,%r0,22
	b .L2042
.L2130:
	li %r8,1024
	b .L2041
.L2132:
	li %r8,2048
	b .L2041
.L2134:
	li %r8,4096
	b .L2041
.L2136:
	li %r8,8192
	b .L2041
.L2138:
	li %r8,16384
	b .L2041
.L2205:
	li %r10,-1
	li %r8,0
	cmplwi %cr7,%r3,32768
	ori %r8,%r8,0x8000
	rlwinm %r9,%r10,0,16,16
	b .L2041
.L2139:
	li %r11,-1
	li %r8,0
	cmplwi %cr7,%r3,32768
	rlwinm %r9,%r11,0,16,16
	ori %r8,%r8,0x8000
	b .L2041
.L2039:
	subf %r4,%r4,%r3
	li %r12,1
	rlwinm %r3,%r4,0,0xffff
	b .L2042
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
	cmpld %cr0,%r4,%r3
	li %r10,64
	mtctr %r10
	li %r9,1
	blt %cr0,.L2207
	b .L2229
	.p2align 4,,15
.L2211:
	sldi %r4,%r4,1
	sldi %r9,%r9,1
	cmpld %cr7,%r3,%r4
	ble %cr7,.L2209
	bdz .L2210
.L2207:
	andis. %r12,%r4,0x8000
	beq %cr0,.L2211
	cmpld %cr7,%r3,%r4
.L2212:
	li %r12,0
	li %r11,1
	li %r6,0
	.p2align 4,,15
.L2213:
	isel %r0,0,%r11,28
	subf %r7,%r4,%r3
	cmpwi %cr6,%r0,0
	srdi %r4,%r4,1
	isel %r10,%r6,%r9,26
	isel %r3,%r3,%r7,26
	srdi. %r9,%r9,1
	cmpld %cr7,%r3,%r4
	or %r12,%r12,%r10
	bne %cr0,.L2213
.L2210:
	cmpdi %cr1,%r5,0
	isel %r3,%r12,%r3,6
	blr
	.p2align 4,,15
.L2209:
	cmpdi %cr5,%r9,0
	bne %cr5,.L2212
	b .L2210
	.p2align 4,,15
.L2229:
	isel %r9,0,%r9,1
	subf %r4,%r4,%r3
	rlwinm %r8,%r9,0,0xff
	rlwinm %r12,%r9,0,0xff
	cmpwi %cr1,%r8,0
	isel %r3,%r3,%r4,6
	b .L2210
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
	andi. %r9,%r4,0x20
	mr %r10,%r3
	beq %cr0,.L2233
	addi %r4,%r4,-32
	li %r6,0
	slw %r5,%r3,%r4
	rldicl %r11,%r6,0,32
	sldi %r7,%r5,32
	or %r3,%r11,%r7
	blr
	.p2align 4,,15
.L2233:
	cmpdi %cr1,%r4,0
	beqlr %cr1
	subfic %r8,%r4,32
	sradi %r9,%r3,32
	srw %r0,%r3,%r8
	slw %r3,%r9,%r4
	or %r5,%r0,%r3
	slw %r6,%r10,%r4
	sldi %r7,%r5,32
	rldicl %r11,%r6,0,32
	or %r3,%r11,%r7
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
	andi. %r9,%r5,0x40
	beq %cr0,.L2239
	addi %r5,%r5,-64
	li %r9,0
	sld %r4,%r3,%r5
	mr %r3,%r9
	blr
	.p2align 4,,15
.L2239:
	cmpdi %cr1,%r5,0
	beqlr %cr1
	subfic %r10,%r5,64
	sld %r4,%r4,%r5
	srd %r0,%r3,%r10
	sld %r9,%r3,%r5
	or %r4,%r0,%r4
	mr %r3,%r9
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
	andi. %r10,%r4,0x20
	mr %r9,%r3
	beq %cr0,.L2244
	sradi %r7,%r3,32
	addi %r8,%r4,-32
	sraw %r6,%r7,%r8
	srawi %r4,%r7,31
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
	.p2align 4,,15
.L2244:
	cmpdi %cr1,%r4,0
	beqlr %cr1
	sradi %r3,%r3,32
	subfic %r10,%r4,32
	srw %r0,%r9,%r4
	slw %r5,%r3,%r10
	sraw %r4,%r3,%r4
	or %r6,%r5,%r0
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
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
	andi. %r9,%r5,0x40
	beq %cr0,.L2250
	addi %r5,%r5,-64
	sradi %r9,%r4,63
	srad %r3,%r4,%r5
	mr %r4,%r9
	blr
	.p2align 4,,15
.L2250:
	cmpdi %cr1,%r5,0
	beqlr %cr1
	subfic %r10,%r5,64
	srd %r3,%r3,%r5
	sld %r0,%r4,%r10
	srad %r9,%r4,%r5
	or %r3,%r0,%r3
	mr %r4,%r9
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
	mtvsrd %vs0,%r3
	xxbrd %vs1,%vs0
	mfvsrd %r3,%vs1
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
	rotlwi %r9,%r3,24
	rlwimi %r9,%r3,8,8,15
	rlwimi %r9,%r3,8,24,31
	rldicl %r3,%r9,0,32
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
	add %r11,%r10,%r8
	srw %r12,%r0,%r5
	rlwinm %r6,%r12,0,28,29
	cntlzw %r8,%r6
	srwi %r0,%r8,5
	slwi %r4,%r0,1
	subfic %r9,%r4,2
	add %r3,%r4,%r11
	srw %r10,%r12,%r9
	andi. %r8,%r10,0x2
	subfic %r5,%r10,2
	isel %r7,%r5,%r7,2
	add %r11,%r7,%r3
	extsw %r3,%r11
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
	cmpdi %cr0,%r4,0
	subfic %r9,%r4,0
	li %r10,0
	subfe %r9,%r9,%r9
	isel %r0,%r3,%r10,2
	and %r3,%r9,%r4
	cntlzd %r4,%r4
	or %r5,%r3,%r0
	cntlzd %r6,%r5
	srdi %r7,%r4,6
	sldi %r8,%r7,6
	add %r3,%r8,%r6
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
	sradi %r10,%r3,32
	sradi %r9,%r4,32
	cmpw %cr0,%r10,%r9
	blt %cr0,.L2260
	li %r0,2
	bgt %cr0,.L2259
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt %cr1,.L2259
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2259:
	rldicl %r3,%r0,0,62
	blr
	.p2align 4,,15
.L2260:
	li %r0,0
	rldicl %r3,%r0,0,62
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
	sradi %r10,%r3,32
	sradi %r9,%r4,32
	cmpw %cr0,%r10,%r9
	blt %cr0,.L2266
	li %r5,1
	bgt %cr0,.L2265
	cmplw %cr7,%r3,%r4
	cmplw %cr1,%r3,%r4
	li %r0,0
	li %r4,-1
	isel %r3,%r5,%r0,29
	isel %r5,%r4,%r3,4
.L2265:
	extsw %r3,%r5
	blr
	.p2align 4,,15
.L2266:
	li %r5,-1
	extsw %r3,%r5
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
	cmpd %cr0,%r4,%r6
	li %r0,0
	blt %cr0,.L2270
	li %r0,2
	bgt %cr0,.L2270
	cmpld %cr1,%r3,%r5
	li %r0,0
	blt %cr1,.L2270
	mfcr %r9,64
	rlwinm %r9,%r9,6,1
	addi %r0,%r9,1
.L2270:
	rldicl %r3,%r0,0,62
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
	add %r3,%r5,%r12
	rlwinm %r10,%r9,0,30,31
	cntlzw %r6,%r10
	srwi %r7,%r6,5
	slwi %r11,%r7,1
	srw %r12,%r9,%r11
	add %r8,%r11,%r3
	rlwinm %r0,%r12,0,30,31
	not %r4,%r0
	srwi %r5,%r0,1
	rlwinm %r3,%r4,0,31,31
	subfic %r9,%r5,2
	neg %r10,%r3
	and %r6,%r10,%r9
	add %r7,%r6,%r8
	extsw %r3,%r7
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
	cmpdi %cr0,%r3,0
	subfic %r9,%r3,0
	li %r10,0
	subfe %r9,%r9,%r9
	and %r0,%r9,%r3
	isel %r4,%r4,%r10,2
	cntlzd %r3,%r3
	or %r5,%r4,%r0
	cnttzd %r6,%r5
	srdi %r7,%r3,6
	sldi %r8,%r7,6
	add %r3,%r8,%r6
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
	cmpdi %cr0,%r3,0
	bne %cr0,.L2278
	cmpdi %cr1,%r4,0
	li %r0,0
	bne %cr1,.L2282
	rldicl %r3,%r0,0,32
	blr
	.p2align 4,,15
.L2278:
	cnttzd %r3,%r3
	addi %r0,%r3,1
	rldicl %r3,%r0,0,32
	blr
	.p2align 4,,15
.L2282:
	cnttzd %r4,%r4
	addi %r0,%r4,65
	rldicl %r3,%r0,0,32
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
	andi. %r10,%r4,0x20
	mr %r9,%r3
	beq %cr0,.L2284
	srdi %r7,%r3,32
	addi %r8,%r4,-32
	srw %r6,%r7,%r8
	li %r4,0
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
	.p2align 4,,15
.L2284:
	cmpdi %cr1,%r4,0
	beqlr %cr1
	srdi %r3,%r3,32
	subfic %r10,%r4,32
	srw %r0,%r9,%r4
	slw %r5,%r3,%r10
	srw %r4,%r3,%r4
	or %r6,%r5,%r0
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
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
	andi. %r9,%r5,0x40
	beq %cr0,.L2290
	addi %r5,%r5,-64
	li %r9,0
	srd %r3,%r4,%r5
	mr %r4,%r9
	blr
	.p2align 4,,15
.L2290:
	cmpdi %cr1,%r5,0
	beqlr %cr1
	subfic %r10,%r5,64
	srd %r3,%r3,%r5
	sld %r0,%r4,%r10
	srd %r9,%r4,%r5
	or %r3,%r0,%r3
	mr %r4,%r9
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
	rlwinm %r8,%r3,0,16,31
	rlwinm %r9,%r4,0,16,31
	mullw %r10,%r8,%r9
	srwi %r3,%r3,16
	srwi %r4,%r4,16
	srwi %r7,%r10,16
	maddld %r0,%r9,%r3,%r7
	rlwinm %r5,%r0,0,0xffff
	srwi %r6,%r0,16
	maddld %r11,%r8,%r4,%r5
	maddld %r12,%r3,%r4,%r6
	srwi %r8,%r11,16
	rlwimi %r10,%r11,16,0,31-16
	add %r9,%r12,%r8
	rldicl %r10,%r10,0,32
	sldi %r3,%r9,32
	or %r3,%r10,%r3
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
	rlwinm %r7,%r4,0,16,31
	rlwinm %r6,%r3,0,16,31
	mullw %r9,%r6,%r7
	srwi %r8,%r3,16
	sradi %r11,%r3,32
	mr %r10,%r3
	srwi %r5,%r4,16
	sradi %r0,%r4,32
	srwi %r3,%r9,16
	maddld %r12,%r7,%r8,%r3
	rlwinm %r3,%r12,0,0xffff
	srwi %r7,%r12,16
	maddld %r6,%r6,%r5,%r3
	maddld %r8,%r8,%r5,%r7
	srwi %r5,%r6,16
	rlwimi %r9,%r6,16,0,31-16
	add %r12,%r8,%r5
	rldicl %r9,%r9,0,32
	sldi %r3,%r12,32
	or %r3,%r9,%r3
	sradi %r7,%r3,32
	maddld %r10,%r10,%r0,%r7
	maddld %r4,%r4,%r11,%r10
	rldimi %r3,%r4,32,0
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
	rldicl %r10,%r4,0,32
	rldicl %r8,%r3,0,32
	mr %r9,%r3
	mulld %r3,%r8,%r10
	srdi %r0,%r9,32
	srdi %r4,%r4,32
	srdi %r7,%r3,32
	maddld %r5,%r10,%r0,%r7
	rldicl %r6,%r5,0,32
	srdi %r11,%r5,32
	maddld %r12,%r8,%r4,%r6
	maddld %r9,%r0,%r4,%r11
	srdi %r8,%r12,32
	rldimi %r3,%r12,32,0
	add %r4,%r9,%r8
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
	rldicl %r10,%r5,0,32
	rldicl %r7,%r3,0,32
	mr %r9,%r3
	mulld %r3,%r7,%r10
	srdi %r8,%r9,32
	srdi %r11,%r5,32
	srdi %r0,%r3,32
	maddld %r12,%r10,%r8,%r0
	rldicl %r0,%r12,0,32
	srdi %r10,%r12,32
	maddld %r7,%r7,%r11,%r0
	maddld %r8,%r8,%r11,%r10
	srdi %r11,%r7,32
	rldimi %r3,%r7,32,0
	add %r12,%r8,%r11
	maddld %r6,%r9,%r6,%r12
	maddld %r4,%r5,%r4,%r6
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
	neg %r3,%r3
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
	subfic %r3,%r3,0
	subfze %r4,%r4
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
	srdi %r10,%r3,32
	li %r8,27030
	xor %r0,%r10,%r3
	srwi %r9,%r0,16
	xor %r3,%r9,%r0
	srwi %r4,%r3,8
	xor %r5,%r4,%r3
	srwi %r6,%r5,4
	xor %r7,%r6,%r5
	rlwinm %r11,%r7,0,28,31
	sraw %r12,%r8,%r11
	rldicl %r3,%r12,0,63
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
	xor %r4,%r3,%r4
	li %r3,27030
	sradi %r10,%r4,32
	xor %r0,%r10,%r4
	srwi %r9,%r0,16
	xor %r5,%r9,%r0
	srwi %r6,%r5,8
	xor %r7,%r6,%r5
	srwi %r8,%r7,4
	xor %r11,%r8,%r7
	rlwinm %r12,%r11,0,28,31
	sraw %r4,%r3,%r12
	rldicl %r3,%r4,0,63
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
	srwi %r9,%r3,16
	li %r8,27030
	xor %r0,%r9,%r3
	srwi %r10,%r0,8
	xor %r3,%r10,%r0
	srwi %r4,%r3,4
	xor %r5,%r4,%r3
	rlwinm %r6,%r5,0,28,31
	sraw %r7,%r8,%r6
	rldicl %r3,%r7,0,63
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
	lis %r10,0x5555
	srdi %r9,%r3,1
	ori %r0,%r10,0x5555
	lis %r5,0x3333
	rldimi %r0,%r0,32,0
	ori %r6,%r5,0x3333
	and %r4,%r9,%r0
	rldimi %r6,%r6,32,0
	subf %r3,%r4,%r3
	lis %r10,0xf0f
	srdi %r8,%r3,2
	and %r11,%r3,%r6
	and %r7,%r8,%r6
	ori %r4,%r10,0xf0f
	add %r12,%r7,%r11
	rldimi %r4,%r4,32,0
	srdi %r0,%r12,4
	add %r9,%r0,%r12
	and %r5,%r9,%r4
	srdi %r3,%r5,32
	add %r6,%r3,%r5
	srwi %r8,%r6,16
	add %r7,%r8,%r6
	srwi %r11,%r7,8
	add %r12,%r11,%r7
	rldicl %r3,%r12,0,57
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
	rldicl %r3,%r7,0,58
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
	std %r30,-16(%r1)
	.cfi_offset 30, -16
	lis %r30,0x5555
	std %r31,-8(%r1)
	sldi %r5,%r4,63
	srdi %r6,%r3,1
	ori %r8,%r30,0x5555
	std %r28,-32(%r1)
	std %r29,-24(%r1)
	.cfi_offset 31, -8
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	lis %r31,0x5555
	or %r0,%r5,%r6
	rldimi %r8,%r8,32,0
	ori %r9,%r31,0x5555
	and %r10,%r8,%r0
	srdi %r7,%r4,1
	rldimi %r9,%r9,32,0
	subfc %r6,%r10,%r3
	and %r11,%r9,%r7
	lis %r28,0x3333
	subfe %r30,%r11,%r4
	srdi %r8,%r6,2
	sldi %r31,%r30,62
	ori %r12,%r28,0x3333
	lis %r29,0x3333
	or %r7,%r31,%r8
	rldimi %r12,%r12,32,0
	ori %r0,%r29,0x3333
	and %r10,%r6,%r12
	rldimi %r0,%r0,32,0
	srdi %r9,%r30,2
	and %r12,%r7,%r12
	and %r29,%r9,%r0
	and %r11,%r30,%r0
	addc %r0,%r12,%r10
	lis %r4,0xf0f
	adde %r30,%r29,%r11
	srdi %r6,%r0,4
	rldimi %r6,%r30,60,0
	lis %r3,0xf0f
	ori %r28,%r4,0xf0f
	ori %r5,%r3,0xf0f
	srdi %r4,%r30,4
	addc %r3,%r6,%r0
	adde %r31,%r4,%r30
	rldimi %r28,%r28,32,0
	ld %r30,-16(%r1)
	rldimi %r5,%r5,32,0
	and %r28,%r3,%r28
	and %r5,%r31,%r5
	ld %r31,-8(%r1)
	add %r8,%r5,%r28
	ld %r28,-32(%r1)
	srdi %r7,%r8,32
	add %r10,%r7,%r8
	srwi %r9,%r10,16
	add %r11,%r9,%r10
	srwi %r12,%r11,8
	add %r29,%r12,%r11
	rlwinm %r3,%r29,0,0xff
	ld %r29,-24(%r1)
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
	addis %r9,%r2,.LC32@toc@ha
	fmr %f0,%f1
	mr %r3,%r4
	lfd %f12,.LC32@toc@l(%r9)
	andi. %r9,%r4,0x1
	fmr %f1,%f12
	beq %cr0,.L2308
	.p2align 4,,15
.L2310:
	fmul %f1,%f1,%f0
.L2308:
	srawi %r0,%r3,1
	addze %r0,%r0
	extsw. %r3,%r0
	beq %cr0,.L2309
	andi. %r10,%r3,0x1
	fmul %f0,%f0,%f0
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2310
.L2314:
	extsw %r3,%r10
	fmul %f0,%f0,%f0
	andi. %r10,%r3,0x1
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2310
	b .L2314
	.p2align 4,,15
.L2309:
	cmpwi %cr1,%r4,0
	bgelr %cr1
	fdiv %f1,%f12,%f1
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
	addis %r9,%r2,.LC33@toc@ha
	fmr %f0,%f1
	mr %r3,%r4
	lfs %f12,.LC33@toc@l(%r9)
	andi. %r9,%r4,0x1
	fmr %f1,%f12
	beq %cr0,.L2316
	.p2align 4,,15
.L2318:
	fmuls %f1,%f1,%f0
.L2316:
	srawi %r0,%r3,1
	addze %r0,%r0
	extsw. %r3,%r0
	beq %cr0,.L2317
	andi. %r10,%r3,0x1
	fmuls %f0,%f0,%f0
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2318
.L2322:
	extsw %r3,%r10
	fmuls %f0,%f0,%f0
	andi. %r10,%r3,0x1
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2318
	b .L2322
	.p2align 4,,15
.L2317:
	cmpwi %cr1,%r4,0
	bgelr %cr1
	fdivs %f1,%f12,%f1
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
	srdi %r10,%r3,32
	srdi %r9,%r4,32
	cmplw %cr0,%r10,%r9
	blt %cr0,.L2325
	li %r0,2
	bgt %cr0,.L2324
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt %cr1,.L2324
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2324:
	rldicl %r3,%r0,0,62
	blr
	.p2align 4,,15
.L2325:
	li %r0,0
	rldicl %r3,%r0,0,62
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
	srdi %r10,%r3,32
	srdi %r9,%r4,32
	cmplw %cr0,%r10,%r9
	blt %cr0,.L2331
	li %r5,1
	bgt %cr0,.L2330
	cmplw %cr7,%r3,%r4
	cmplw %cr1,%r3,%r4
	li %r0,0
	li %r4,-1
	isel %r3,%r5,%r0,29
	isel %r5,%r4,%r3,4
.L2330:
	extsw %r3,%r5
	blr
	.p2align 4,,15
.L2331:
	li %r5,-1
	extsw %r3,%r5
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
	cmpld %cr0,%r4,%r6
	li %r0,0
	blt %cr0,.L2335
	li %r0,2
	bgt %cr0,.L2335
	cmpld %cr1,%r3,%r5
	li %r0,0
	blt %cr1,.L2335
	mfcr %r9,64
	rlwinm %r9,%r9,6,1
	addi %r0,%r9,1
.L2335:
	rldicl %r3,%r0,0,62
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
