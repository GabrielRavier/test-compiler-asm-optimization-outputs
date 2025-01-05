	.file	"mini-libc.c"
	.machine power8
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
	add %r11,%r4,%r5
	add %r0,%r3,%r5
	beqlr %cr6
	addi %r12,%r5,-1
	cmpldi %cr7,%r12,14
	ble %cr7,.L7
	addi %r6,%r5,-2
	add %r8,%r3,%r12
	add %r9,%r4,%r6
	subf %r10,%r9,%r8
	addi %r7,%r10,14
	cmpldi %cr1,%r7,14
	ble %cr1,.L7
	srdi %r7,%r5,4
	addi %r9,%r5,-16
	andi. %r6,%r7,0x3
	add %r4,%r4,%r9
	add %r10,%r3,%r9
	addi %r12,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq %cr0,.L94
	cmpdi %cr5,%r6,1
	beq %cr5,.L110
	cmpdi %cr6,%r6,2
	beq %cr6,.L111
	lxvd2x %vs7,0,%r4
	mr %r7,%r12
	li %r9,-16
	stxvd2x %vs7,0,%r10
.L111:
	lxvd2x %vs8,%r4,%r9
	addi %r7,%r7,-1
	stxvd2x %vs8,%r10,%r9
	addi %r9,%r9,-16
.L110:
	lxvd2x %vs9,%r4,%r9
	cmpdi %cr7,%r7,1
	stxvd2x %vs9,%r10,%r9
	addi %r9,%r9,-16
	beq %cr7,.L158
.L94:
	srdi %r6,%r8,2
	mtctr %r6
.L8:
	lxvd2x %vs10,%r4,%r9
	addi %r12,%r9,-16
	addi %r7,%r9,-32
	addi %r8,%r9,-48
	stxvd2x %vs10,%r10,%r9
	addi %r9,%r9,-64
	lxvd2x %vs11,%r4,%r12
	stxvd2x %vs11,%r10,%r12
	lxvd2x %vs12,%r4,%r7
	stxvd2x %vs12,%r10,%r7
	lxvd2x %vs13,%r4,%r8
	stxvd2x %vs13,%r10,%r8
	bdnz .L8
.L158:
	andi. %r9,%r5,0xf
	rldicr %r4,%r5,0,59
	subf %r11,%r4,%r11
	subf %r9,%r4,%r0
	subf %r5,%r4,%r5
	beqlr %cr0
	cmpldi %cr1,%r5,1
	lbz %r0,-1(%r11)
	stb %r0,-1(%r9)
	beqlr %cr1
	cmpldi %cr5,%r5,2
	lbz %r10,-2(%r11)
	stb %r10,-2(%r9)
	beqlr %cr5
	cmpldi %cr6,%r5,3
	lbz %r6,-3(%r11)
	stb %r6,-3(%r9)
	beqlr %cr6
	cmpldi %cr7,%r5,4
	lbz %r12,-4(%r11)
	stb %r12,-4(%r9)
	beqlr %cr7
	cmpldi %cr0,%r5,5
	lbz %r8,-5(%r11)
	stb %r8,-5(%r9)
	beqlr %cr0
	cmpldi %cr1,%r5,6
	lbz %r7,-6(%r11)
	stb %r7,-6(%r9)
	beqlr %cr1
	cmpldi %cr5,%r5,7
	lbz %r4,-7(%r11)
	stb %r4,-7(%r9)
	beqlr %cr5
	cmpldi %cr6,%r5,8
	lbz %r0,-8(%r11)
	stb %r0,-8(%r9)
	beqlr %cr6
	cmpldi %cr7,%r5,9
	lbz %r10,-9(%r11)
	stb %r10,-9(%r9)
	beqlr %cr7
	cmpldi %cr0,%r5,10
	lbz %r6,-10(%r11)
	stb %r6,-10(%r9)
	beqlr %cr0
	cmpldi %cr1,%r5,11
	lbz %r12,-11(%r11)
	stb %r12,-11(%r9)
	beqlr %cr1
	cmpldi %cr5,%r5,12
	lbz %r8,-12(%r11)
	stb %r8,-12(%r9)
	beqlr %cr5
	cmpldi %cr6,%r5,13
	lbz %r7,-13(%r11)
	stb %r7,-13(%r9)
	beqlr %cr6
	cmpldi %cr7,%r5,14
	lbz %r5,-14(%r11)
	stb %r5,-14(%r9)
	beqlr %cr7
	lbz %r11,-15(%r11)
	stb %r11,-15(%r9)
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
	lxvd2x %vs0,0,%r4
	mr %r8,%r6
	li %r12,16
	stxvd2x %vs0,0,%r3
.L113:
	lxvd2x %vs1,%r4,%r12
	addi %r8,%r8,-1
	stxvd2x %vs1,%r3,%r12
	addi %r12,%r12,16
.L112:
	lxvd2x %vs2,%r4,%r12
	cmpdi %cr5,%r8,1
	stxvd2x %vs2,%r3,%r12
	addi %r12,%r12,16
	beq %cr5,.L159
.L106:
	srdi %r9,%r11,2
	mtctr %r9
.L13:
	lxvd2x %vs3,%r4,%r12
	addi %r0,%r12,16
	addi %r7,%r12,32
	addi %r10,%r12,48
	stxvd2x %vs3,%r3,%r12
	addi %r12,%r12,64
	lxvd2x %vs4,%r4,%r0
	stxvd2x %vs4,%r3,%r0
	lxvd2x %vs5,%r4,%r7
	stxvd2x %vs5,%r3,%r7
	lxvd2x %vs6,%r4,%r10
	stxvd2x %vs6,%r3,%r10
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
	lbz %r0,3(%r11)
	stb %r0,3(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,5
	lbz %r10,4(%r11)
	stb %r10,4(%r12)
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
	lbz %r0,10(%r11)
	stb %r0,10(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,12
	lbz %r10,11(%r11)
	stb %r10,11(%r12)
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
	andi. %r9,%r12,0x1
	mr %r9,%r0
	bne %cr0,.L169
.L87:
	srdi %r10,%r12,1
	addi %r0,%r10,1
	mtctr %r0
	b .L10
	.p2align 4,,15
.L170:
	lbz %r7,-1(%r12)
	addi %r9,%r9,-2
	stb %r7,-1(%r8)
.L10:
	lbz %r6,-1(%r11)
	addi %r12,%r11,-1
	addi %r8,%r9,-1
	addi %r11,%r11,-2
	stb %r6,-1(%r9)
	bdnz .L170
	blr
.L169:
	lbzu %r4,-1(%r11)
	stbu %r4,-1(%r9)
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
	lbz %r5,1(%r10)
	addi %r8,%r8,2
	stb %r5,1(%r7)
.L16:
	lbz %r0,1(%r12)
	addi %r10,%r12,1
	addi %r7,%r8,1
	addi %r12,%r12,2
	stb %r0,1(%r8)
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
	addis %r6,%r2,.LC1@toc@ha
	andi. %r10,%r8,0x1
	addi %r12,%r6,.LC1@toc@l
	addi %r10,%r8,-1
	li %r11,0
	lxvd2x %vs45,0,%r12
	bne %cr0,.L329
.L321:
	srdi %r0,%r8,1
	mtctr %r0
.L317:
	addi %r9,%r11,16
	lxvd2x %vs33,%r3,%r11
	lxvd2x %vs32,%r3,%r9
	vperm %v1,%v1,%v1,%v13
	stxvd2x %vs33,%r4,%r11
	vperm %v0,%v0,%v0,%v13
	addi %r11,%r11,32
	stxvd2x %vs32,%r4,%r9
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
	lxvd2x %vs32,0,%r3
	cmpdi %cr5,%r10,0
	li %r11,16
	vperm %v1,%v0,%v0,%v13
	stxvd2x %vs33,0,%r4
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
	bun %cr0,.L386
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L387
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L383
	cmpwi %cr7,%r0,0
	fmr %f1,%f2
	bnelr %cr7
.L387:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L383:
	fcmpu %cr6,%f1,%f2
	bnllr %cr6
.L386:
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
	bun %cr0,.L395
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L396
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r9,%vs12
	mfvsrwz %r10,%vs1
	rlwinm %r0,%r9,0,0,0
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq %cr5,.L392
	cmpwi %cr7,%r0,0
	fmr %f1,%f2
	bnelr %cr7
.L396:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L392:
	fcmpu %cr6,%f0,%f2
	fmr %f1,%f0
	bnllr %cr6
.L395:
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
	bun %cr0,.L406
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun %cr1,.L405
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L401
	cmpwi %cr7,%r0,0
	bne %cr7,.L406
.L405:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
	.p2align 4,,15
.L401:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt %cr6,.L406
	fmr %f11,%f2
	fmr %f10,%f1
.L406:
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
	bun %cr0,.L412
	fcmpu %cr1,%f2,%f2
	bunlr %cr1
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	bne %cr5,.L416
	fcmpu %cr6,%f1,%f2
	fmr %f0,%f2
	bnl %cr6,.L411
	fmr %f0,%f1
.L411:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L416:
	cmpwi %cr7,%r0,0
	bnelr %cr7
.L412:
	fmr %f1,%f2
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
	bun %cr0,.L422
	fcmpu %cr1,%f2,%f2
	bunlr %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r9,%vs0
	mfvsrwz %r10,%vs3
	rlwinm %r0,%r9,0,0,0
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	bne %cr5,.L426
	fcmpu %cr6,%f1,%f2
	bnl %cr6,.L421
	fmr %f2,%f1
.L421:
	fmr %f1,%f2
	blr
	.p2align 4,,15
.L426:
	cmpwi %cr7,%r0,0
	bnelr %cr7
.L422:
	fmr %f1,%f2
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
	bun %cr0,.L432
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr %cr1
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L429
	cmpwi %cr7,%r0,0
	bnelr %cr7
.L432:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
	.p2align 4,,15
.L429:
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
	beq %cr0,.L438
	addis %r7,%r2,.LANCHOR1@toc@ha
	mr %r10,%r3
	addi %r4,%r7,.LANCHOR1@toc@l
	.p2align 5
.L437:
	rldicl %r8,%r9,0,58
	srwi %r9,%r9,6
	cmpwi %cr1,%r9,0
	addi %r10,%r10,1
	lbzx %r0,%r4,%r8
	stb %r0,-1(%r10)
	bne %cr1,.L437
	li %r5,0
	stb %r5,0(%r10)
	blr
	.p2align 4,,15
.L438:
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
	beq %cr0,.L448
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
.L448:
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
	beq %cr0,.L450
	ld %r10,8(%r3)
	std %r10,8(%r9)
.L450:
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
	std %r27,-40(%r1)
	.cfi_register 65, 0
	.cfi_offset 27, -40
	ld %r27,0(%r5)
	std %r23,-72(%r1)
	std %r24,-64(%r1)
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr %r23,%r4
	mr %r24,%r5
	std %r26,-48(%r1)
	std %r28,-32(%r1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr %r26,%r3
	mr %r28,%r6
	std %r25,-56(%r1)
	cmpdi %cr0,%r27,0
	std %r0,16(%r1)
	stdu %r1,-112(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset 25, -56
	.cfi_offset 65, 16
	std %r2,24(%r1)
	beq %cr0,.L459
	std %r29,88(%r1)
	.cfi_offset 29, -24
	std %r30,96(%r1)
	.cfi_offset 30, -16
	mr %r29,%r7
	li %r30,0
	std %r31,104(%r1)
	.cfi_offset 31, -8
	mr %r31,%r4
	b .L461
	.p2align 4,,15
.L473:
	beq %cr7,.L472
.L461:
	mtctr %r29
	mr %r4,%r31
	mr %r3,%r26
	mr %r12,%r29
	addi %r30,%r30,1
	mr %r25,%r31
	add %r31,%r31,%r28
	bctrl
	ld 2,24(1)
	cmpld %cr7,%r27,%r30
	cmpwi %cr1,%r3,0
	bne %cr1,.L473
	ld %r29,88(%r1)
	.cfi_restore 29
	ld %r30,96(%r1)
	.cfi_restore 30
	ld %r31,104(%r1)
	.cfi_restore 31
.L458:
	addi %r1,%r1,112
	.cfi_def_cfa_offset 0
	mr %r3,%r25
	ld %r5,16(%r1)
	ld %r23,-72(%r1)
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r28,-32(%r1)
	mtlr %r5
	.cfi_restore 65
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.p2align 4,,15
.L472:
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
.L459:
	mulld %r3,%r28,%r27
	cmpdi %cr5,%r28,0
	addi %r4,%r27,1
	std %r4,0(%r24)
	add %r25,%r23,%r3
	beq %cr5,.L458
	mr %r5,%r28
	mr %r4,%r26
	mr %r3,%r25
	bl memmove
	nop
	addi %r1,%r1,112
	.cfi_def_cfa_offset 0
	mr %r3,%r25
	ld %r5,16(%r1)
	ld %r23,-72(%r1)
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r28,-32(%r1)
	mtlr %r5
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
	beq %cr0,.L475
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
	b .L477
	.p2align 4,,15
.L485:
	beq %cr7,.L484
.L477:
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
	bne %cr1,.L485
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
.L484:
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
.L475:
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
.L494:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq %cr0,.L488
	ble %cr7,.L488
	cmpwi %cr1,%r9,43
	beq %cr1,.L489
	cmpwi %cr6,%r9,45
	bne %cr6,.L509
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r9,-48
	cmplwi %cr0,%r4,9
	bgt %cr0,.L499
	li %r11,1
.L492:
	li %r8,0
	.p2align 5
.L496:
	addi %r7,%r9,-48
	mulli %r12,%r8,10
	lbzu %r9,1(%r3)
	addi %r6,%r9,-48
	subf %r8,%r7,%r12
	cmplwi %cr1,%r6,9
	ble %cr1,.L496
	cmpwi %cr5,%r11,0
	subf %r9,%r12,%r7
	isel %r3,%r9,%r8,22
.L495:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L488:
	addi %r3,%r3,1
	b .L494
	.p2align 4,,15
.L509:
	addi %r5,%r9,-48
	li %r11,0
	cmplwi %cr7,%r5,9
	ble %cr7,.L492
.L499:
	li %r3,0
	b .L495
	.p2align 4,,15
.L489:
	lbz %r9,1(%r3)
	li %r11,0
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	ble %cr5,.L492
	li %r3,0
	b .L495
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
.L517:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq %cr0,.L511
	ble %cr7,.L511
	cmpwi %cr1,%r9,43
	beq %cr1,.L512
	cmpwi %cr6,%r9,45
	bne %cr6,.L532
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r9,-48
	cmplwi %cr0,%r4,9
	bgt %cr0,.L522
	li %r8,1
.L515:
	li %r6,0
	.p2align 5
.L519:
	addi %r11,%r9,-48
	mulli %r7,%r6,10
	lbzu %r9,1(%r3)
	extsw %r12,%r11
	addi %r10,%r9,-48
	subf %r6,%r12,%r7
	cmplwi %cr1,%r10,9
	ble %cr1,.L519
	cmpwi %cr5,%r8,0
	subf %r3,%r7,%r12
	isel %r3,%r3,%r6,22
	blr
	.p2align 4,,15
.L511:
	addi %r3,%r3,1
	b .L517
	.p2align 4,,15
.L532:
	addi %r5,%r9,-48
	li %r8,0
	cmplwi %cr7,%r5,9
	ble %cr7,.L515
.L522:
	li %r3,0
	blr
	.p2align 4,,15
.L512:
	lbz %r9,1(%r3)
	li %r8,0
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	ble %cr5,.L515
	b .L522
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
.L538:
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,32
	addi %r10,%r9,-9
	cmplwi %cr7,%r10,4
	beq %cr0,.L534
	ble %cr7,.L534
	cmpwi %cr1,%r9,43
	beq %cr1,.L535
	cmpwi %cr6,%r9,45
	beq %cr6,.L536
	addi %r4,%r9,-48
	li %r8,0
	cmplwi %cr7,%r4,9
	bgt %cr7,.L545
.L539:
	li %r6,0
	.p2align 5
.L542:
	addi %r11,%r9,-48
	mulli %r7,%r6,10
	lbzu %r9,1(%r3)
	extsw %r12,%r11
	addi %r10,%r9,-48
	subf %r6,%r12,%r7
	cmplwi %cr1,%r10,9
	ble %cr1,.L542
	cmpwi %cr5,%r8,0
	subf %r3,%r7,%r12
	isel %r3,%r3,%r6,22
	blr
	.p2align 4,,15
.L534:
	addi %r3,%r3,1
	b .L538
	.p2align 4,,15
.L536:
	lbz %r9,1(%r3)
	li %r8,1
	addi %r3,%r3,1
	addi %r5,%r9,-48
	cmplwi %cr0,%r5,9
	ble %cr0,.L539
.L545:
	li %r3,0
	blr
	.p2align 4,,15
.L535:
	lbz %r9,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r9,-48
	cmplwi %cr5,%r0,9
	bgt %cr5,.L545
	li %r8,0
	b .L539
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
	std %r30,-16(%r1)
	stdu %r1,-96(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq %cr0,.L556
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
	std %r29,72(%r1)
	.cfi_offset 29, -24
	mr %r28,%r7
	std %r0,112(%r1)
	.cfi_offset 65, 16
	b .L559
	.p2align 4,,15
.L568:
	beq %cr1,.L566
	cmpdi %cr5,%r31,0
	add %r27,%r30,%r26
	beq %cr5,.L567
.L559:
	mtctr %r28
	srdi %r29,%r31,1
	mulld %r30,%r29,%r26
	mr %r3,%r25
	mr %r12,%r28
	addi %r31,%r31,-1
	subf %r31,%r29,%r31
	add %r30,%r27,%r30
	mr %r4,%r30
	bctrl
	ld 2,24(1)
	cmpwi %cr1,%r3,0
	bge %cr1,.L568
	mr %r31,%r29
	cmpdi %cr5,%r31,0
	bne %cr5,.L559
.L567:
	ld %r3,112(%r1)
	ld %r25,40(%r1)
	.cfi_restore 25
	ld %r26,48(%r1)
	.cfi_restore 26
	ld %r27,56(%r1)
	.cfi_restore 27
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r29,72(%r1)
	.cfi_restore 29
	mtlr %r3
	.cfi_restore 65
.L556:
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	li %r30,0
	mr %r3,%r30
	ld %r30,-16(%r1)
	ld %r31,-8(%r1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.p2align 4,,15
.L566:
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
	mr %r3,%r30
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r29,72(%r1)
	.cfi_restore 29
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	mtlr %r0
	.cfi_restore 65
	ld %r30,-16(%r1)
	ld %r31,-8(%r1)
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
	beq %cr0,.L574
	mflr %r0
	.cfi_register 65, 0
	std %r2,24(%r1)
	std %r28,64(%r1)
	.cfi_offset 28, -32
	std %r0,112(%r1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L579:
	mtctr %r29
	srawi %r30,%r31,1
	mulld %r0,%r30,%r26
	mr %r5,%r24
	mr %r3,%r25
	mr %r12,%r29
	srawi %r28,%r31,1
	addi %r31,%r31,-1
	srawi %r31,%r31,1
	add %r30,%r27,%r0
	mr %r4,%r30
	bctrl
	ld 2,24(1)
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	beq %cr1,.L583
.L585:
	cmpwi %cr5,%r28,0
	ble %cr1,.L572
	add %r27,%r30,%r26
	bne %cr7,.L579
.L584:
	ld %r3,112(%r1)
	ld %r28,64(%r1)
	.cfi_restore 28
	mtlr %r3
	.cfi_restore 65
.L574:
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
.L572:
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
	beq %cr5,.L584
	mtctr %r29
	srawi %r30,%r31,1
	mulld %r0,%r30,%r26
	mr %r5,%r24
	mr %r3,%r25
	mr %r12,%r29
	srawi %r28,%r31,1
	addi %r31,%r31,-1
	srawi %r31,%r31,1
	add %r30,%r27,%r0
	mr %r4,%r30
	bctrl
	ld 2,24(1)
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	bne %cr1,.L585
.L583:
	ld %r4,112(%r1)
	ld %r28,64(%r1)
	.cfi_restore 28
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	mr %r3,%r30
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	mtlr %r4
	.cfi_restore 65
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
	beq %cr0,.L597
	.p2align 5
.L594:
	cmpw %cr1,%r9,%r4
	beqlr %cr1
	lwzu %r9,4(%r3)
	cmpwi %cr5,%r9,0
	bne %cr5,.L594
.L597:
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
	beq %cr0,.L604
	b .L603
	.p2align 4,,15
.L605:
	lwzu %r9,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r9,%r0
	bne %cr0,.L603
.L604:
	cmpwi %cr7,%r9,0
	bne %cr7,.L605
.L603:
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
.L609:
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	beqlr %cr0
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	bne %cr0,.L609
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
	beq %cr0,.L615
	mr %r4,%r3
	.p2align 4,,15
.L614:
	lwzu %r10,4(%r4)
	cmpwi %cr1,%r10,0
	bne %cr1,.L614
	subf %r3,%r3,%r4
	sradi %r3,%r3,2
	blr
	.p2align 4,,15
.L615:
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
	beq %cr0,.L627
	mtctr %r5
	b .L618
	.p2align 4,,15
.L630:
	beq %cr7,.L620
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L627
.L618:
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r9,%r10
	cmpwi %cr7,%r9,0
	beq %cr1,.L630
.L620:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	bge %cr5,.L622
	li %r4,-1
	extsw %r3,%r4
	blr
	.p2align 4,,15
.L622:
	mfcr %r4,4
	rlwinm %r4,%r4,22,1
	extsw %r3,%r4
	blr
	.p2align 4,,15
.L627:
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
	beq %cr0,.L635
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne %cr0,.L652
.L638:
	srdi %r0,%r5,1
	mtctr %r0
.L632:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr %cr7
	addi %r3,%r3,4
	bdnz .L632
.L635:
	li %r3,0
	blr
	.p2align 4,,15
.L652:
	lwz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	bne %cr5,.L638
	b .L635
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
	beq %cr0,.L659
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne %cr0,.L676
.L662:
	srdi %r0,%r5,1
	mtctr %r0
	b .L654
	.p2align 4,,15
.L656:
	lwz %r12,4(%r3)
	lwz %r9,4(%r4)
	addi %r3,%r7,4
	addi %r4,%r11,4
	cmpw %cr1,%r12,%r9
	bne %cr1,.L671
	bdz .L659
.L654:
	lwz %r5,0(%r3)
	lwz %r6,0(%r4)
	addi %r7,%r3,4
	addi %r11,%r4,4
	cmpw %cr1,%r5,%r6
	beq %cr1,.L656
.L671:
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	li %r4,-1
	isel %r8,%r4,%r3,4
	extsw %r3,%r8
	blr
	.p2align 4,,15
.L676:
	lwz %r8,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r8,%r10
	bne %cr1,.L671
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne %cr5,.L662
.L659:
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
	beq %cr0,.L678
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
.L678:
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
	bge %cr1,.L778
	cmpdi %cr5,%r5,0
	beqlr %cr5
	cmpldi %cr6,%r11,4
	ble %cr6,.L688
	addi %r6,%r9,-4
	addi %r12,%r9,-8
	add %r7,%r3,%r6
	add %r10,%r4,%r12
	subf %r8,%r10,%r7
	addi %r0,%r8,8
	cmpldi %cr7,%r0,8
	ble %cr7,.L688
	srdi %r6,%r5,2
	addi %r9,%r9,-16
	andi. %r0,%r6,0x3
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq %cr0,.L727
	cmpdi %cr1,%r0,1
	beq %cr1,.L743
	cmpdi %cr5,%r0,2
	beq %cr5,.L744
	lxvd2x %vs7,0,%r8
	mr %r6,%r12
	li %r10,-16
	stxvd2x %vs7,0,%r9
.L744:
	lxvd2x %vs8,%r8,%r10
	addi %r6,%r6,-1
	stxvd2x %vs8,%r9,%r10
	addi %r10,%r10,-16
.L743:
	lxvd2x %vs9,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvd2x %vs9,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L766
.L727:
	srdi %r0,%r7,2
	mtctr %r0
.L689:
	lxvd2x %vs10,%r8,%r10
	addi %r12,%r10,-16
	addi %r6,%r10,-32
	addi %r7,%r10,-48
	stxvd2x %vs10,%r9,%r10
	addi %r10,%r10,-64
	lxvd2x %vs11,%r8,%r12
	stxvd2x %vs11,%r9,%r12
	lxvd2x %vs12,%r8,%r6
	stxvd2x %vs12,%r9,%r6
	lxvd2x %vs13,%r8,%r7
	stxvd2x %vs13,%r9,%r7
	bdnz .L689
.L766:
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
.L778:
	cmpdi %cr5,%r5,0
	beqlr %cr5
	cmpldi %cr6,%r11,3
	ble %cr6,.L694
	addi %r0,%r4,4
	subf %r6,%r0,%r3
	cmpldi %cr7,%r6,8
	ble %cr7,.L694
	srdi %r8,%r5,2
	li %r9,0
	andi. %r7,%r8,0x3
	addi %r12,%r8,-1
	mr %r10,%r8
	beq %cr0,.L739
	cmpdi %cr1,%r7,1
	beq %cr1,.L745
	cmpdi %cr5,%r7,2
	beq %cr5,.L746
	lxvd2x %vs0,0,%r4
	mr %r8,%r12
	li %r9,16
	stxvd2x %vs0,0,%r3
.L746:
	lxvd2x %vs1,%r4,%r9
	addi %r8,%r8,-1
	stxvd2x %vs1,%r3,%r9
	addi %r9,%r9,16
.L745:
	lxvd2x %vs2,%r4,%r9
	cmpdi %cr6,%r8,1
	stxvd2x %vs2,%r3,%r9
	addi %r9,%r9,16
	beq %cr6,.L767
.L739:
	srdi %r0,%r10,2
	mtctr %r0
.L695:
	lxvd2x %vs3,%r4,%r9
	addi %r6,%r9,16
	addi %r7,%r9,32
	addi %r12,%r9,48
	stxvd2x %vs3,%r3,%r9
	addi %r9,%r9,64
	lxvd2x %vs4,%r4,%r6
	stxvd2x %vs4,%r3,%r6
	lxvd2x %vs5,%r4,%r7
	stxvd2x %vs5,%r3,%r7
	lxvd2x %vs6,%r4,%r12
	stxvd2x %vs6,%r3,%r12
	bdnz .L695
.L767:
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
.L688:
	andi. %r10,%r11,0x1
	add %r6,%r4,%r9
	add %r5,%r3,%r9
	bne %cr0,.L779
.L720:
	srdi %r11,%r11,1
	addi %r9,%r11,1
	mtctr %r9
	b .L692
	.p2align 4,,15
.L780:
	lwz %r0,-4(%r10)
	addi %r5,%r5,-8
	stw %r0,-4(%r7)
.L692:
	lwz %r12,-4(%r6)
	addi %r10,%r6,-4
	addi %r7,%r5,-4
	addi %r6,%r6,-8
	stw %r12,-4(%r5)
	bdnz .L780
	blr
.L779:
	lwzu %r8,-4(%r6)
	stwu %r8,-4(%r5)
	b .L720
	.p2align 4,,15
.L694:
	andi. %r9,%r11,0x1
	addi %r12,%r4,-4
	addi %r5,%r3,-4
	bne %cr0,.L781
.L732:
	srdi %r9,%r11,1
	addi %r11,%r9,1
	mtctr %r11
	b .L698
	.p2align 4,,15
.L782:
	lwz %r0,4(%r8)
	addi %r5,%r5,8
	stw %r0,4(%r4)
.L698:
	lwz %r10,4(%r12)
	addi %r8,%r12,4
	addi %r4,%r5,4
	addi %r12,%r12,8
	stw %r10,4(%r5)
	bdnz .L782
	blr
.L781:
	lwz %r7,0(%r4)
	mr %r12,%r4
	mr %r5,%r3
	stw %r7,0(%r3)
	b .L732
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
	ble %cr1,.L788
	srdi %r8,%r5,2
	mtvsrwz %vs0,%r4
	mr %r9,%r3
	andi. %r6,%r8,0x3
	addi %r11,%r8,-1
	mr %r10,%r8
	xxspltw %vs0,%vs0,1
	beq %cr0,.L803
	cmpdi %cr5,%r6,1
	beq %cr5,.L807
	cmpdi %cr6,%r6,2
	beq %cr6,.L808
	stxvd2x %vs0,0,%r3
	mr %r8,%r11
	addi %r9,%r3,16
.L808:
	stxvd2x %vs0,0,%r9
	addi %r8,%r8,-1
	addi %r9,%r9,16
.L807:
	stxvd2x %vs0,0,%r9
	cmpdi %cr7,%r8,1
	addi %r9,%r9,16
	beq %cr7,.L817
.L803:
	srdi %r10,%r10,2
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L822
	addi %r10,%r10,-1
	mtctr %r10
	addi %r8,%r9,16
	addi %r6,%r8,16
.L786:
	stxvd2x %vs0,0,%r9
	mr %r10,%r9
	stxvd2x %vs0,0,%r8
	addi %r9,%r9,64
	addi %r10,%r10,48
	stxvd2x %vs0,0,%r6
	addi %r8,%r9,16
	stxvd2x %vs0,0,%r10
	addi %r6,%r8,16
	bdnz .L786
	stxvd2x %vs0,0,%r9
	stxvd2x %vs0,0,%r8
	addi %r10,%r9,48
	stxvd2x %vs0,0,%r6
	stxvd2x %vs0,0,%r10
.L817:
	andi. %r9,%r5,0x3
	beqlr %cr0
	rldicr %r5,%r5,0,61
	sldi %r0,%r5,2
	subf %r7,%r5,%r7
	add %r9,%r3,%r0
.L785:
	cmpdi %cr5,%r7,0
	stw %r4,0(%r9)
	beqlr %cr5
	cmpldi %cr6,%r7,1
	stw %r4,4(%r9)
	beqlr %cr6
	stw %r4,8(%r9)
	blr
	.p2align 4,,15
.L822:
	stxvd2x %vs0,0,%r9
	addi %r12,%r9,16
	addi %r11,%r9,48
	addi %r6,%r9,32
	addi %r9,%r9,64
	stxvd2x %vs0,0,%r12
	stxvd2x %vs0,0,%r6
	stxvd2x %vs0,0,%r11
	bdz .L817
	stxvd2x %vs0,0,%r9
	addi %r12,%r9,16
	addi %r11,%r9,48
	addi %r6,%r9,32
	addi %r9,%r9,64
	stxvd2x %vs0,0,%r12
	stxvd2x %vs0,0,%r6
	stxvd2x %vs0,0,%r11
	bdnz .L822
	b .L817
.L788:
	mr %r9,%r3
	b .L785
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
	bge %cr0,.L825
	cmpdi %cr6,%r5,0
	add %r12,%r3,%r5
	add %r11,%r4,%r5
	beqlr %cr6
	addi %r0,%r5,-1
	cmpldi %cr7,%r0,14
	ble %cr7,.L827
	addi %r10,%r5,-2
	add %r7,%r4,%r0
	add %r6,%r3,%r10
	subf %r8,%r6,%r7
	addi %r9,%r8,14
	cmpldi %cr1,%r9,14
	ble %cr1,.L827
	srdi %r8,%r5,4
	addi %r6,%r5,-16
	andi. %r7,%r8,0x3
	addi %r0,%r8,-1
	mr %r10,%r8
	add %r3,%r3,%r6
	add %r4,%r4,%r6
	li %r9,0
	beq %cr0,.L914
	cmpdi %cr5,%r7,1
	beq %cr5,.L930
	cmpdi %cr6,%r7,2
	beq %cr6,.L931
	lxvd2x %vs7,0,%r3
	mr %r8,%r0
	li %r9,-16
	stxvd2x %vs7,0,%r4
.L931:
	lxvd2x %vs8,%r3,%r9
	addi %r8,%r8,-1
	stxvd2x %vs8,%r4,%r9
	addi %r9,%r9,-16
.L930:
	lxvd2x %vs9,%r3,%r9
	cmpdi %cr7,%r8,1
	stxvd2x %vs9,%r4,%r9
	addi %r9,%r9,-16
	beq %cr7,.L978
.L914:
	srdi %r6,%r10,2
	mtctr %r6
.L828:
	lxvd2x %vs10,%r3,%r9
	addi %r0,%r9,-16
	addi %r7,%r9,-32
	addi %r10,%r9,-48
	stxvd2x %vs10,%r4,%r9
	addi %r9,%r9,-64
	lxvd2x %vs11,%r3,%r0
	stxvd2x %vs11,%r4,%r0
	lxvd2x %vs12,%r3,%r7
	stxvd2x %vs12,%r4,%r7
	lxvd2x %vs13,%r3,%r10
	stxvd2x %vs13,%r4,%r10
	bdnz .L828
.L978:
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
.L825:
	beqlr %cr0
	cmpdi %cr1,%r5,0
	beqlr %cr1
	addi %r9,%r5,-1
	cmpldi %cr5,%r9,14
	ble %cr5,.L832
	addi %r10,%r3,1
	subf %r0,%r10,%r4
	cmpldi %cr6,%r0,14
	ble %cr6,.L832
	srdi %r8,%r5,4
	li %r12,0
	andi. %r7,%r8,0x3
	addi %r6,%r8,-1
	mr %r11,%r8
	beq %cr0,.L926
	cmpdi %cr7,%r7,1
	beq %cr7,.L932
	cmpdi %cr1,%r7,2
	beq %cr1,.L933
	lxvd2x %vs0,0,%r3
	mr %r8,%r6
	li %r12,16
	stxvd2x %vs0,0,%r4
.L933:
	lxvd2x %vs1,%r3,%r12
	addi %r8,%r8,-1
	stxvd2x %vs1,%r4,%r12
	addi %r12,%r12,16
.L932:
	lxvd2x %vs2,%r3,%r12
	cmpdi %cr5,%r8,1
	stxvd2x %vs2,%r4,%r12
	addi %r12,%r12,16
	beq %cr5,.L979
.L926:
	srdi %r9,%r11,2
	mtctr %r9
.L833:
	lxvd2x %vs3,%r3,%r12
	addi %r0,%r12,16
	addi %r7,%r12,32
	addi %r10,%r12,48
	stxvd2x %vs3,%r4,%r12
	addi %r12,%r12,64
	lxvd2x %vs4,%r3,%r0
	stxvd2x %vs4,%r4,%r0
	lxvd2x %vs5,%r3,%r7
	stxvd2x %vs5,%r4,%r7
	lxvd2x %vs6,%r3,%r10
	stxvd2x %vs6,%r4,%r10
	bdnz .L833
.L979:
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
	lbz %r0,4(%r12)
	stb %r0,4(%r11)
	beqlr %cr0
	cmpldi %cr6,%r5,6
	lbz %r10,5(%r12)
	stb %r10,5(%r11)
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
	lbz %r0,12(%r12)
	stb %r0,12(%r11)
	beqlr %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,13(%r12)
	stb %r5,13(%r11)
	beqlr %cr5
	lbz %r12,14(%r12)
	stb %r12,14(%r11)
	blr
	.p2align 4,,15
.L827:
	andi. %r9,%r0,0x1
	bne %cr0,.L989
.L907:
	srdi %r7,%r0,1
	addi %r3,%r7,1
	mtctr %r3
	b .L830
	.p2align 4,,15
.L990:
	lbz %r6,-1(%r9)
	addi %r11,%r11,-2
	stb %r6,-1(%r8)
.L830:
	lbz %r4,-1(%r12)
	addi %r9,%r12,-1
	addi %r8,%r11,-1
	addi %r12,%r12,-2
	stb %r4,-1(%r11)
	bdnz .L990
	blr
.L989:
	lbzu %r10,-1(%r12)
	stbu %r10,-1(%r11)
	b .L907
	.p2align 4,,15
.L832:
	andi. %r10,%r9,0x1
	addi %r11,%r3,-1
	addi %r10,%r4,-1
	bne %cr0,.L991
.L919:
	srdi %r6,%r9,1
	addi %r3,%r6,1
	mtctr %r3
	b .L836
	.p2align 4,,15
.L992:
	lbz %r9,1(%r8)
	addi %r10,%r10,2
	stb %r9,1(%r5)
.L836:
	lbz %r4,1(%r11)
	addi %r8,%r11,1
	addi %r5,%r10,1
	addi %r11,%r11,2
	stb %r4,1(%r10)
	bdnz .L992
	blr
.L991:
	lbz %r7,0(%r3)
	mr %r11,%r3
	mr %r10,%r4
	stb %r7,0(%r4)
	b .L919
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
	rlwinm %r9,%r3,24,24,31
	rlwinm %r10,%r3,8,16,23
	or %r0,%r9,%r10
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
	rotlwi %r10,%r3,24
	srdi %r9,%r3,32
	rlwimi %r10,%r3,8,8,15
	rlwimi %r10,%r3,8,24,31
	rotlwi %r3,%r9,24
	rlwimi %r3,%r9,8,8,15
	rlwimi %r3,%r9,8,24,31
	rldimi %r3,%r10,32,0
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
	b .L1009
	.p2align 4,,15
.L1018:
	addi %r9,%r9,1
	bne %cr0,.L1008
	bdz .L1017
.L1009:
	srw %r8,%r3,%r9
	addi %r9,%r9,1
	rldicl %r4,%r8,0,63
	srw %r0,%r3,%r9
	cmpdi %cr7,%r4,0
	andi. %r10,%r0,0x1
	beq %cr7,.L1018
.L1008:
	extsw %r3,%r9
	blr
	.p2align 4,,15
.L1017:
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
	beq %cr0,.L1022
	andi. %r3,%r9,0x1
	bne %cr0,.L1020
	li %r3,1
	.p2align 4,,15
.L1021:
	srawi %r9,%r9,1
	addi %r3,%r3,1
	andi. %r10,%r9,0x1
	beq %cr0,.L1021
.L1020:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L1022:
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
	addis %r9,%r2,.LC6@toc@ha
	li %r0,1
	lfs %f0,.LC6@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L1026
	addis %r3,%r2,.LC7@toc@ha
	lfs %f2,.LC7@toc@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1026:
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
	addis %r9,%r2,.LC10@toc@ha
	li %r0,1
	lfd %f0,.LC10@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L1029
	addis %r3,%r2,.LC11@toc@ha
	lfd %f2,.LC11@toc@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1029:
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
	addis %r9,%r2,.LC14@toc@ha
	fmr %f0,%f1
	fmr %f1,%f2
	li %r0,1
	addi %r3,%r9,.LC14@toc@l
	lfd %f12,0(%r3)
	lfd %f13,8(%r3)
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	blt %cr0,.L1032
	addis %r4,%r2,.LC15@toc@ha
	addi %r5,%r4,.LC15@toc@l
	lfd %f12,0(%r5)
	lfd %f13,8(%r5)
	fcmpu %cr1,%f0,%f12
	bne %cr1,$+8
	fcmpu %cr1,%f1,%f13
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1032:
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
	blt %cr5,.L1048
	addis %r9,%r2,.LC18@toc@ha
	lfs %f2,.LC18@toc@l(%r9)
.L1037:
	andi. %r9,%r4,0x1
	beq %cr0,.L1038
	.p2align 4,,15
.L1039:
	fmuls %f1,%f1,%f2
.L1038:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr %cr0
	andi. %r9,%r4,0x1
	fmuls %f2,%f2,%f2
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1039
.L1049:
	extsw %r4,%r0
	fmuls %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1039
	b .L1049
	.p2align 4,,15
.L1048:
	addis %r3,%r2,.LC19@toc@ha
	lfs %f2,.LC19@toc@l(%r3)
	b .L1037
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
	blt %cr5,.L1063
	addis %r9,%r2,.LC22@toc@ha
	lfd %f2,.LC22@toc@l(%r9)
.L1052:
	andi. %r9,%r4,0x1
	beq %cr0,.L1053
	.p2align 4,,15
.L1054:
	fmul %f1,%f1,%f2
.L1053:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr %cr0
	andi. %r9,%r4,0x1
	fmul %f2,%f2,%f2
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1054
.L1064:
	extsw %r4,%r0
	fmul %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r0,%r4,1
	addze %r0,%r0
	bne %cr0,.L1054
	b .L1064
	.p2align 4,,15
.L1063:
	addis %r3,%r2,.LC23@toc@ha
	lfd %f2,.LC23@toc@l(%r3)
	b .L1052
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
	bun %cr0,.L1066
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
	beq %cr1,.L1081
	cmpwi %cr5,%r31,0
	stfd %f30,64(%r1)
	.cfi_offset 62, -16
	stfd %f31,72(%r1)
	.cfi_offset 63, -8
	blt %cr5,.L1082
	addis %r9,%r2,.LC26@toc@ha
	addi %r3,%r9,.LC26@toc@l
	lfd %f30,0(%r3)
	lfd %f31,8(%r3)
.L1067:
	andi. %r9,%r31,0x1
	beq %cr0,.L1068
	.p2align 4,,15
.L1069:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul
	nop
	fmr %f29,%f2
	fmr %f28,%f1
.L1068:
	srawi %r31,%r31,1
	addze %r31,%r31
	extsw. %r31,%r31
	beq %cr0,.L1080
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
	bne %cr0,.L1069
.L1083:
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
	bne %cr0,.L1069
	b .L1083
	.p2align 4,,15
.L1080:
	lfd %f30,64(%r1)
	.cfi_restore 62
	lfd %f31,72(%r1)
	.cfi_restore 63
.L1081:
	ld %r6,96(%r1)
	ld %r31,40(%r1)
	.cfi_restore 31
	mtlr %r6
	.cfi_restore 65
.L1066:
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
.L1082:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis %r4,%r2,.LC27@toc@ha
	addi %r5,%r4,.LC27@toc@l
	lfd %f30,0(%r5)
	lfd %f31,8(%r5)
	b .L1067
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
	ble %cr1,.L1089
	srdi %r10,%r5,4
	li %r7,0
	andi. %r8,%r10,0x1
	addi %r8,%r10,-1
	bne %cr0,.L1148
.L1124:
	srdi %r0,%r10,1
	mtctr %r0
.L1087:
	lxvd2x %vs2,%r3,%r7
	lxvd2x %vs11,%r4,%r7
	addi %r11,%r7,16
	lxvd2x %vs3,%r4,%r11
	xxlxor %vs4,%vs2,%vs11
	stxvd2x %vs4,%r3,%r7
	addi %r7,%r7,32
	lxvd2x %vs5,%r3,%r11
	xxlxor %vs6,%vs5,%vs3
	stxvd2x %vs6,%r3,%r11
	bdnz .L1087
.L1144:
	andi. %r9,%r5,0xf
	rldicr %r12,%r5,0,59
	add %r4,%r4,%r12
	add %r6,%r3,%r12
	subf %r5,%r12,%r5
	beqlr %cr0
.L1086:
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
.L1148:
	lxvd2x %vs0,0,%r3
	lxvd2x %vs12,0,%r4
	cmpdi %cr5,%r8,0
	li %r7,16
	xxlxor %vs1,%vs0,%vs12
	stxvd2x %vs1,0,%r3
	bne %cr5,.L1124
	b .L1144
.L1089:
	mr %r6,%r3
	b .L1086
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
	beq %cr0,.L1150
	.p2align 4,,15
.L1151:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne %cr1,.L1151
.L1150:
	cmpdi %cr5,%r5,0
	beq %cr5,.L1152
	andi. %r10,%r5,0x1
	addi %r12,%r4,-1
	addi %r7,%r5,-1
	bne %cr0,.L1175
.L1163:
	srdi %r0,%r5,1
	mtctr %r0
.L1153:
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
	bdnz .L1153
.L1152:
	li %r6,0
	stb %r6,0(%r9)
	blr
	.p2align 4,,15
.L1175:
	lbz %r8,0(%r4)
	mr %r12,%r4
	rlwinm %r6,%r8,0,0xff
	stb %r8,0(%r9)
	cmpwi %cr6,%r6,0
	beqlr %cr6
	cmpdi %cr7,%r7,0
	addi %r9,%r9,1
	bne %cr7,.L1163
	b .L1152
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
	beq %cr0,.L1188
	cmpdi %cr1,%r8,1
	beq %cr1,.L1199
	cmpdi %cr5,%r8,2
	beq %cr5,.L1200
	lbz %r0,0(%r9)
	cmpwi %cr6,%r0,0
	beqlr %cr6
	li %r3,1
.L1200:
	lbzx %r5,%r9,%r3
	cmpwi %cr7,%r5,0
	beqlr %cr7
	addi %r3,%r3,1
.L1199:
	lbzx %r6,%r9,%r3
	cmpwi %cr0,%r6,0
	beqlr %cr0
	addi %r3,%r3,1
	cmpld %cr1,%r4,%r3
	beqlr %cr1
	.p2align 4,,15
.L1188:
	srdi %r10,%r10,2
.L1177:
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
	bne %cr1,.L1177
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
	beq %cr0,.L1214
.L1210:
	mr %r10,%r4
	b .L1213
	.p2align 4,,15
.L1212:
	beqlr %cr7
.L1213:
	lbzu %r9,1(%r10)
	cmpwi %cr1,%r9,0
	cmpw %cr7,%r9,%r8
	bne %cr1,.L1212
	lbzu %r8,1(%r3)
	cmpwi %cr5,%r8,0
	bne %cr5,.L1210
.L1214:
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
.L1220:
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
	bne %cr0,.L1220
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
	beq %cr0,.L1236
	mr %r9,%r4
	.p2align 4,,15
.L1225:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne %cr1,.L1225
	subf. %r6,%r4,%r9
	mr %r3,%r8
	beqlr %cr0
	addi %r3,%r6,-1
	b .L1244
	.p2align 4,,15
.L1247:
	cmpwi %cr6,%r12,0
	addi %r8,%r8,1
	beq %cr6,.L1246
.L1244:
	lbz %r12,0(%r8)
	cmpw %cr5,%r12,%r5
	bne %cr5,.L1247
	addi %r0,%r3,1
	mr %r6,%r4
	mtctr %r0
	mr %r10,%r11
	mr %r7,%r8
	b .L1227
	.p2align 4,,15
.L1249:
	bdz .L1229
	bne %cr7,.L1230
	lbzu %r12,1(%r7)
	cmpwi %cr1,%r12,0
	beq %cr1,.L1248
	lbzu %r10,1(%r6)
.L1227:
	andi. %r9,%r10,0xff
	cmpw %cr7,%r9,%r12
	bne %cr0,.L1249
.L1230:
	addi %r8,%r8,1
	b .L1244
	.p2align 4,,15
.L1246:
	li %r3,0
	blr
	.p2align 4,,15
.L1248:
	lbz %r9,1(%r6)
.L1229:
	cmpw %cr5,%r12,%r9
	bne %cr5,.L1230
.L1236:
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
	blt %cr0,.L1260
	bnglr %cr0
	fcmpu %cr1,%f2,%f0
	bnllr %cr1
	fneg %f1,%f1
	blr
	.p2align 4,,15
.L1260:
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
	blt %cr1,.L1269
	subf %r4,%r6,%r4
	add %r0,%r3,%r4
	cmpld %cr5,%r3,%r0
	bgt %cr5,.L1269
	lbz %r12,0(%r5)
	cmpldi %cr7,%r6,1
	addi %r11,%r3,-1
	b .L1266
	.p2align 4,,15
.L1263:
	cmpld %cr1,%r0,%r9
	blt %cr1,.L1269
.L1266:
	lbzu %r10,1(%r11)
	mr %r3,%r9
	addi %r9,%r9,1
	cmpw %cr6,%r10,%r12
	bne %cr6,.L1263
	beqlr %cr7
	subf %r8,%r11,%r9
	mr %r7,%r5
	add %r4,%r8,%r6
	mr %r8,%r11
	addi %r10,%r4,-2
	mtctr %r10
	.p2align 5
.L1264:
	lbzu %r4,1(%r8)
	lbzu %r10,1(%r7)
	cmpw %cr0,%r4,%r10
	bne %cr0,.L1263
	bdnz .L1264
	blr
	.p2align 4,,15
.L1269:
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
	beq %cr0,.L1278
	mflr %r0
	.cfi_register 65, 0
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L1278:
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
	blt %cr7,.L1306
	addis %r9,%r2,.LC34@toc@ha
	li %r10,0
	lfd %f2,.LC34@toc@l(%r9)
	fcmpu %cr0,%f1,%f2
	cror 2,1,2
	bne %cr0,.L1307
.L1286:
	addis %r11,%r2,.LC23@toc@ha
	addis %r12,%r2,.LC34@toc@ha
	li %r8,0
	lfd %f7,.LC23@toc@l(%r11)
	lfd %f8,.LC34@toc@l(%r12)
	.p2align 5
.L1292:
	fmul %f1,%f1,%f7
	addi %r8,%r8,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq %cr0,.L1292
	cmpwi %cr1,%r10,0
	stw %r8,0(%r4)
	beqlr %cr1
.L1309:
	fneg %f1,%f1
	blr
	.p2align 4,,15
.L1307:
	addis %r3,%r2,.LC23@toc@ha
	lfd %f3,.LC23@toc@l(%r3)
	fcmpu %cr1,%f1,%f3
	bnl %cr1,.L1289
	bne %cr7,.L1298
.L1289:
	li %r0,0
	stw %r0,0(%r4)
	blr
	.p2align 4,,15
.L1306:
	addis %r5,%r2,.LC30@toc@ha
	fneg %f12,%f1
	lfd %f4,.LC30@toc@l(%r5)
	fcmpu %cr5,%f1,%f4
	cror 22,20,22
	bne %cr5,.L1308
	fmr %f1,%f12
	li %r10,1
	b .L1286
	.p2align 4,,15
.L1308:
	addis %r6,%r2,.LC32@toc@ha
	lfd %f5,.LC32@toc@l(%r6)
	fcmpu %cr6,%f1,%f5
	bng %cr6,.L1289
	li %r10,1
.L1287:
	addis %r7,%r2,.LC23@toc@ha
	fmr %f1,%f12
	li %r8,0
	lfd %f6,.LC23@toc@l(%r7)
	.p2align 4,,15
.L1294:
	fadd %f1,%f1,%f1
	addi %r8,%r8,-1
	fcmpu %cr7,%f1,%f6
	blt %cr7,.L1294
	cmpwi %cr1,%r10,0
	stw %r8,0(%r4)
	bne %cr1,.L1309
	blr
.L1298:
	fmr %f12,%f1
	b .L1287
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
.L1312:
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
	bne %cr0,.L1312
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
	blt %cr0,.L1317
	b .L1338
	.p2align 4,,15
.L1321:
	rldicl %r4,%r0,0,32
	slwi %r9,%r9,1
	ble %cr7,.L1319
	cmpwi %cr5,%r4,0
	slwi %r6,%r4,1
	cmplw %cr6,%r3,%r6
	blt %cr5,.L1322
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble %cr6,.L1319
	bdz .L1320
.L1317:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r12,-1
	cmplw %cr7,%r3,%r0
	addi %r12,%r10,-1
	bge %cr1,.L1321
.L1322:
	li %r12,0
	li %r11,1
	li %r10,0
	.p2align 4,,15
.L1323:
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
	bne %cr7,.L1323
.L1320:
	cmpdi %cr6,%r5,0
	isel %r5,%r12,%r3,26
	rldicl %r3,%r5,0,32
	blr
	.p2align 4,,15
.L1319:
	cmpwi %cr0,%r9,0
	bne %cr0,.L1322
	li %r12,0
	b .L1320
	.p2align 4,,15
.L1338:
	isel %r9,0,%r9,1
	subf %r4,%r4,%r3
	andi. %r12,%r9,0xff
	isel %r3,%r3,%r4,2
	rldicl %r3,%r3,0,32
	b .L1320
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
	beq %cr0,.L1343
	slwi %r3,%r3,8
	cntlzw %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
	.p2align 4,,15
.L1343:
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
	beq %cr0,.L1346
	cntlzd %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
	.p2align 4,,15
.L1346:
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
	beq %cr0,.L1348
	.p2align 5
.L1349:
	rlwinm %r9,%r10,0,31,31
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	rldic %r4,%r4,1,32
	bne %cr0,.L1349
.L1348:
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
	blt %cr0,.L1356
	add %r10,%r4,%r5
	cmpld %cr1,%r3,%r10
	ble %cr1,.L1535
.L1356:
	cmpwi %cr5,%r9,0
	addi %r7,%r4,-8
	addi %r8,%r3,-8
	beq %cr5,.L1469
	andi. %r10,%r9,0x1
	addi %r6,%r9,-1
	mr %r10,%r9
	bne %cr0,.L1536
.L1425:
	srdi %r10,%r10,1
	mtctr %r10
	cmpdi %cr7,%r10,2
	ble %cr7,.L1494
	addi %r10,%r10,-1
	mtctr %r10
	addi %r9,%r9,-2
	ld %r11,8(%r7)
	std %r11,8(%r8)
	addi %r6,%r7,8
	ld %r11,8(%r6)
	addi %r10,%r8,8
	std %r11,8(%r10)
.L1359:
	addi %r9,%r9,-2
	ld %r11,16(%r6)
	std %r11,16(%r10)
	addi %r6,%r6,16
	ld %r11,8(%r6)
	addi %r10,%r10,16
	std %r11,8(%r10)
	bdnz .L1359
.L1471:
	cmplw %cr1,%r12,%r5
	bgelr %cr1
	subf %r8,%r12,%r5
	rldicl %r10,%r12,0,32
	addi %r7,%r8,-1
	cmplwi %cr5,%r7,14
	ble %cr5,.L1361
	addi %r0,%r10,1
	add %r7,%r3,%r10
	add %r6,%r4,%r0
	subf %r11,%r6,%r7
	cmpldi %cr6,%r11,14
	ble %cr6,.L1361
	rldicl %r11,%r8,60,36
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	add %r10,%r4,%r10
	andi. %r0,%r11,0x3
	addi %r31,%r11,-1
	mr %r6,%r11
	beq %cr0,.L1420
	cmpdi %cr7,%r0,1
	beq %cr7,.L1440
	cmpdi %cr1,%r0,2
	bne %cr1,.L1537
.L1441:
	lxvd2x %vs8,%r10,%r9
	addi %r11,%r11,-1
	stxvd2x %vs8,%r7,%r9
	addi %r9,%r9,16
.L1440:
	lxvd2x %vs9,%r10,%r9
	cmpdi %cr5,%r11,1
	stxvd2x %vs9,%r7,%r9
	addi %r9,%r9,16
	beq %cr5,.L1477
.L1420:
	srdi %r0,%r6,2
	mtctr %r0
.L1362:
	lxvd2x %vs10,%r10,%r9
	addi %r31,%r9,16
	addi %r11,%r9,32
	addi %r6,%r9,48
	stxvd2x %vs10,%r7,%r9
	addi %r9,%r9,64
	lxvd2x %vs11,%r10,%r31
	stxvd2x %vs11,%r7,%r31
	lxvd2x %vs12,%r10,%r11
	stxvd2x %vs12,%r7,%r11
	lxvd2x %vs13,%r10,%r6
	stxvd2x %vs13,%r7,%r6
	bdnz .L1362
.L1477:
	andi. %r9,%r8,0xf
	rlwinm %r9,%r8,0,0,27
	add %r12,%r9,%r12
	beq %cr0,.L1531
	rldicl %r8,%r12,0,32
	addi %r10,%r12,1
	cmplw %cr6,%r10,%r5
	lbzx %r7,%r4,%r8
	stbx %r7,%r3,%r8
	bge %cr6,.L1531
	rldicl %r0,%r10,0,32
	addi %r31,%r12,2
	cmplw %cr7,%r31,%r5
	lbzx %r6,%r4,%r0
	stbx %r6,%r3,%r0
	bge %cr7,.L1531
	rldicl %r11,%r31,0,32
	addi %r9,%r12,3
	cmplw %cr1,%r9,%r5
	lbzx %r8,%r4,%r11
	stbx %r8,%r3,%r11
	bge %cr1,.L1531
	rldicl %r10,%r9,0,32
	addi %r0,%r12,4
	cmplw %cr5,%r0,%r5
	lbzx %r7,%r4,%r10
	stbx %r7,%r3,%r10
	bge %cr5,.L1531
	rldicl %r31,%r0,0,32
	addi %r6,%r12,5
	cmplw %cr0,%r6,%r5
	lbzx %r11,%r4,%r31
	stbx %r11,%r3,%r31
	bge %cr0,.L1531
	rldicl %r9,%r6,0,32
	addi %r8,%r12,6
	cmplw %cr6,%r8,%r5
	lbzx %r10,%r4,%r9
	stbx %r10,%r3,%r9
	bge %cr6,.L1531
	rldicl %r0,%r8,0,32
	addi %r31,%r12,7
	cmplw %cr7,%r31,%r5
	lbzx %r7,%r4,%r0
	stbx %r7,%r3,%r0
	bge %cr7,.L1531
	rldicl %r6,%r31,0,32
	addi %r11,%r12,8
	cmplw %cr1,%r11,%r5
	lbzx %r9,%r4,%r6
	stbx %r9,%r3,%r6
	bge %cr1,.L1531
	rldicl %r8,%r11,0,32
	addi %r10,%r12,9
	cmplw %cr5,%r10,%r5
	lbzx %r0,%r4,%r8
	stbx %r0,%r3,%r8
	bge %cr5,.L1531
	rldicl %r31,%r10,0,32
	addi %r6,%r12,10
	cmplw %cr0,%r6,%r5
	lbzx %r7,%r4,%r31
	stbx %r7,%r3,%r31
	bge %cr0,.L1531
	rldicl %r11,%r6,0,32
	addi %r9,%r12,11
	cmplw %cr6,%r9,%r5
	lbzx %r8,%r4,%r11
	stbx %r8,%r3,%r11
	bge %cr6,.L1531
	rldicl %r10,%r9,0,32
	addi %r0,%r12,12
	cmplw %cr7,%r0,%r5
	lbzx %r31,%r4,%r10
	stbx %r31,%r3,%r10
	bge %cr7,.L1531
	rldicl %r6,%r0,0,32
	addi %r11,%r12,13
	cmplw %cr1,%r11,%r5
	lbzx %r7,%r4,%r6
	stbx %r7,%r3,%r6
	bge %cr1,.L1531
	rldicl %r10,%r11,0,32
	addi %r12,%r12,14
	cmplw %cr5,%r12,%r5
	lbzx %r5,%r4,%r10
	stbx %r5,%r3,%r10
	bge %cr5,.L1531
	rldicl %r9,%r12,0,32
	lbzx %r4,%r4,%r9
	stbx %r4,%r3,%r9
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1494:
	ld %r0,8(%r7)
	mr %r6,%r7
	mr %r10,%r8
	addi %r9,%r9,-2
	addi %r7,%r7,16
	addi %r8,%r8,16
	std %r0,-8(%r8)
	ld %r11,16(%r6)
	std %r11,16(%r10)
	bdz .L1471
	ld %r0,8(%r7)
	mr %r6,%r7
	mr %r10,%r8
	addi %r9,%r9,-2
	addi %r7,%r7,16
	addi %r8,%r8,16
	std %r0,-8(%r8)
	ld %r11,16(%r6)
	std %r11,16(%r10)
	bdnz .L1494
	b .L1471
	.p2align 4,,15
.L1536:
	mr. %r9,%r6
	ld %r11,0(%r4)
	mr %r7,%r4
	mr %r8,%r3
	std %r11,0(%r3)
	bne %cr0,.L1425
	b .L1471
	.p2align 4,,15
.L1535:
	cmpdi %cr5,%r5,0
	addi %r0,%r5,-1
	rldicl %r9,%r0,0,32
	beqlr %cr5
	cmplwi %cr6,%r0,14
	ble %cr6,.L1366
	addi %r6,%r9,-1
	add %r8,%r3,%r9
	add %r7,%r4,%r6
	subf %r11,%r7,%r8
	addi %r12,%r11,14
	cmpldi %cr7,%r12,14
	ble %cr7,.L1366
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
	beq %cr0,.L1435
	cmpdi %cr1,%r11,1
	beq %cr1,.L1442
	cmpdi %cr5,%r11,2
	bne %cr5,.L1538
.L1443:
	lxvd2x %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvd2x %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1442:
	lxvd2x %vs2,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvd2x %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L1478
.L1435:
	srdi %r31,%r7,2
	mtctr %r31
.L1367:
	lxvd2x %vs3,%r8,%r10
	addi %r12,%r10,-16
	addi %r11,%r10,-32
	addi %r7,%r10,-48
	stxvd2x %vs3,%r9,%r10
	addi %r10,%r10,-64
	lxvd2x %vs4,%r8,%r12
	stxvd2x %vs4,%r9,%r12
	lxvd2x %vs5,%r8,%r11
	stxvd2x %vs5,%r9,%r11
	lxvd2x %vs6,%r8,%r7
	stxvd2x %vs6,%r9,%r7
	bdnz .L1367
.L1478:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r6,%r5,%r0
	beq %cr0,.L1531
	rldicl %r0,%r6,0,32
	cmpwi %cr7,%r6,0
	addi %r9,%r6,-1
	lbzx %r8,%r4,%r0
	rldicl %r31,%r9,0,32
	stbx %r8,%r3,%r0
	beq %cr7,.L1531
	cmpdi %cr1,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-2
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr1,.L1531
	cmpdi %cr5,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-3
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr5,.L1531
	cmpdi %cr6,%r0,0
	lbzx %r9,%r4,%r0
	addi %r8,%r6,-4
	rldicl %r31,%r8,0,32
	stbx %r9,%r3,%r0
	beq %cr6,.L1531
	cmpdi %cr0,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-5
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr0,.L1531
	cmpdi %cr7,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-6
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr7,.L1531
	cmpdi %cr1,%r0,0
	lbzx %r8,%r4,%r0
	addi %r9,%r6,-7
	rldicl %r31,%r9,0,32
	stbx %r8,%r3,%r0
	beq %cr1,.L1531
	cmpdi %cr5,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-8
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr5,.L1531
	cmpdi %cr6,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-9
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr6,.L1531
	cmpdi %cr0,%r0,0
	lbzx %r8,%r4,%r0
	addi %r9,%r6,-10
	rldicl %r31,%r9,0,32
	stbx %r8,%r3,%r0
	beq %cr0,.L1531
	cmpdi %cr7,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-11
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr7,.L1531
	cmpdi %cr1,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-12
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr1,.L1531
	cmpdi %cr5,%r0,0
	lbzx %r9,%r4,%r0
	addi %r8,%r6,-13
	rldicl %r31,%r8,0,32
	stbx %r9,%r3,%r0
	beq %cr5,.L1531
	cmpdi %cr6,%r31,0
	lbzx %r12,%r4,%r31
	addi %r6,%r6,-14
	rldicl %r7,%r6,0,32
	stbx %r12,%r3,%r31
	beq %cr6,.L1531
	lbzx %r4,%r4,%r7
	stbx %r4,%r3,%r7
	ld %r31,-8(%r1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1531:
	.cfi_restore_state
	ld %r31,-8(%r1)
	.cfi_restore 31
.L1352:
	blr
	.p2align 4,,15
.L1537:
	.cfi_offset 31, -8
	lxvd2x %vs7,%r10,%r9
	mr %r11,%r31
	stxvd2x %vs7,%r7,%r9
	addi %r9,%r9,16
	b .L1441
	.p2align 4,,15
.L1469:
	.cfi_restore 31
	cmpdi %cr6,%r5,0
	rldicl %r10,%r12,0,32
	mr %r8,%r5
	beqlr %cr6
.L1361:
	rldicl %r8,%r8,0,32
	addi %r0,%r10,-1
	andi. %r9,%r8,0x1
	add %r4,%r4,%r0
	add %r3,%r3,%r0
	addi %r6,%r8,-1
	beq %cr0,.L1413
	lbzu %r11,1(%r4)
	cmpdi %cr6,%r6,0
	stbu %r11,1(%r3)
	beqlr %cr6
.L1413:
	srdi %r9,%r8,1
	mtctr %r9
	cmpdi %cr7,%r9,2
	ble %cr7,.L1493
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,1(%r4)
	stb %r8,1(%r3)
	addi %r10,%r4,1
	lbz %r8,1(%r10)
	addi %r9,%r3,1
	stb %r8,1(%r9)
.L1364:
	lbz %r8,2(%r10)
	stb %r8,2(%r9)
	addi %r10,%r10,2
	lbz %r8,1(%r10)
	addi %r9,%r9,2
	stb %r8,1(%r9)
	bdnz .L1364
	blr
	.p2align 4,,15
.L1493:
	lbz %r7,1(%r4)
	mr %r10,%r4
	mr %r12,%r3
	addi %r4,%r4,2
	addi %r3,%r3,2
	stb %r7,-1(%r3)
	lbz %r5,2(%r10)
	stb %r5,2(%r12)
	bdnz .L1493
	blr
.L1538:
	.cfi_offset 31, -8
	lxvd2x %vs0,0,%r8
	mr %r6,%r12
	li %r10,-16
	stxvd2x %vs0,0,%r9
	b .L1443
.L1366:
	.cfi_restore 31
	andi. %r10,%r5,0x1
	addi %r10,%r9,1
	add %r9,%r3,%r10
	add %r4,%r4,%r10
	addi %r3,%r5,-1
	beq %cr0,.L1428
	lbzu %r11,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r11,-1(%r9)
	beqlr %cr7
.L1428:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1495
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1370:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1370
	blr
.L1495:
	lbz %r5,-1(%r4)
	mr %r8,%r4
	mr %r12,%r9
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	stb %r5,1(%r9)
	lbz %r0,-2(%r8)
	stb %r0,-2(%r12)
	bdnz .L1495
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
	blt %cr0,.L1543
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble %cr1,.L1668
.L1543:
	cmpwi %cr5,%r10,0
	beq %cr5,.L1542
	addi %r11,%r10,-1
	cmplwi %cr6,%r11,6
	ble %cr6,.L1546
	addi %r12,%r4,2
	subf %r9,%r12,%r3
	cmpldi %cr0,%r9,12
	ble %cr0,.L1546
	srdi %r6,%r5,4
	srwi %r8,%r5,4
	andi. %r11,%r6,0x3
	addi %r0,%r6,-1
	mr %r7,%r6
	li %r12,0
	beq %cr0,.L1601
	cmpdi %cr7,%r11,1
	beq %cr7,.L1617
	cmpdi %cr1,%r11,2
	bne %cr1,.L1669
.L1618:
	lxvd2x %vs8,%r4,%r12
	addi %r6,%r6,-1
	stxvd2x %vs8,%r3,%r12
	addi %r12,%r12,16
.L1617:
	lxvd2x %vs9,%r4,%r12
	cmpdi %cr5,%r6,1
	stxvd2x %vs9,%r3,%r12
	addi %r12,%r12,16
	beq %cr5,.L1649
.L1601:
	srdi %r9,%r7,2
	mtctr %r9
.L1547:
	lxvd2x %vs10,%r4,%r12
	addi %r0,%r12,16
	addi %r11,%r12,32
	addi %r7,%r12,48
	stxvd2x %vs10,%r3,%r12
	addi %r12,%r12,64
	lxvd2x %vs11,%r4,%r0
	stxvd2x %vs11,%r3,%r0
	lxvd2x %vs12,%r4,%r11
	stxvd2x %vs12,%r3,%r11
	lxvd2x %vs13,%r4,%r7
	stxvd2x %vs13,%r3,%r7
	bdnz .L1547
.L1649:
	slwi %r12,%r8,3
	cmplw %cr6,%r10,%r12
	beq %cr6,.L1542
	rlwinm %r9,%r12,1,0,27
	addi %r8,%r12,1
	cmplw %cr0,%r10,%r8
	lhzx %r6,%r4,%r9
	sthx %r6,%r3,%r9
	ble %cr0,.L1542
	rldic %r0,%r8,1,31
	addi %r7,%r12,2
	cmplw %cr7,%r10,%r7
	lhzx %r11,%r4,%r0
	sthx %r11,%r3,%r0
	ble %cr7,.L1542
	rldicl %r9,%r7,0,32
	addi %r0,%r12,3
	sldi %r8,%r9,1
	cmplw %cr1,%r10,%r0
	lhzx %r6,%r4,%r8
	sthx %r6,%r3,%r8
	ble %cr1,.L1542
	rldic %r7,%r0,1,31
	addi %r11,%r12,4
	cmplw %cr5,%r10,%r11
	lhzx %r9,%r4,%r7
	sthx %r9,%r3,%r7
	ble %cr5,.L1542
	rldicl %r0,%r11,0,32
	addi %r7,%r12,5
	sldi %r8,%r0,1
	cmplw %cr6,%r10,%r7
	lhzx %r6,%r4,%r8
	sthx %r6,%r3,%r8
	ble %cr6,.L1542
	rldic %r11,%r7,1,31
	addi %r12,%r12,6
	cmplw %cr0,%r10,%r12
	lhzx %r10,%r4,%r11
	sthx %r10,%r3,%r11
	ble %cr0,.L1542
	rldicl %r9,%r12,0,32
	sldi %r0,%r9,1
	lhzx %r7,%r4,%r0
	sthx %r7,%r3,%r0
.L1542:
	andi. %r9,%r5,0x1
	beqlr %cr0
	addi %r5,%r5,-1
	rldicl %r8,%r5,0,32
	lbzx %r4,%r4,%r8
	stbx %r4,%r3,%r8
	blr
	.p2align 4,,15
.L1668:
	cmpdi %cr5,%r5,0
	addi %r0,%r5,-1
	rldicl %r7,%r0,0,32
	beqlr %cr5
	cmplwi %cr6,%r0,14
	ble %cr6,.L1552
	addi %r6,%r7,-1
	add %r8,%r3,%r7
	add %r11,%r4,%r6
	subf %r12,%r11,%r8
	addi %r10,%r12,14
	cmpldi %cr7,%r10,14
	ble %cr7,.L1552
	srdi %r6,%r5,4
	addi %r9,%r7,-15
	andi. %r11,%r6,0x3
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq %cr0,.L1613
	cmpdi %cr1,%r11,1
	beq %cr1,.L1619
	cmpdi %cr5,%r11,2
	bne %cr5,.L1670
.L1620:
	lxvd2x %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvd2x %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1619:
	lxvd2x %vs2,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvd2x %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L1650
.L1613:
	srdi %r11,%r7,2
	mtctr %r11
.L1553:
	lxvd2x %vs3,%r8,%r10
	addi %r12,%r10,-16
	addi %r6,%r10,-32
	addi %r7,%r10,-48
	stxvd2x %vs3,%r9,%r10
	addi %r10,%r10,-64
	lxvd2x %vs4,%r8,%r12
	stxvd2x %vs4,%r9,%r12
	lxvd2x %vs5,%r8,%r6
	stxvd2x %vs5,%r9,%r6
	lxvd2x %vs6,%r8,%r7
	stxvd2x %vs6,%r9,%r7
	bdnz .L1553
.L1650:
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
.L1669:
	lxvd2x %vs7,0,%r4
	mr %r6,%r0
	li %r12,16
	stxvd2x %vs7,0,%r3
	b .L1618
	.p2align 4,,15
.L1546:
	andi. %r9,%r10,0x1
	addi %r8,%r4,-2
	addi %r6,%r10,-1
	addi %r9,%r3,-2
	beq %cr0,.L1594
	cmpdi %cr7,%r6,0
	lhz %r11,0(%r4)
	mr %r8,%r4
	mr %r9,%r3
	sth %r11,0(%r3)
	beq %cr7,.L1542
.L1594:
	srdi %r10,%r10,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1661
	addi %r10,%r10,-1
	mtctr %r10
	lhz %r6,2(%r8)
	sth %r6,2(%r9)
	addi %r7,%r8,2
	lhz %r6,2(%r7)
	addi %r10,%r9,2
	sth %r6,2(%r10)
.L1549:
	lhz %r6,4(%r7)
	sth %r6,4(%r10)
	addi %r7,%r7,4
	lhz %r6,2(%r7)
	addi %r10,%r10,4
	sth %r6,2(%r10)
	bdnz .L1549
	b .L1542
	.p2align 4,,15
.L1661:
	lhz %r12,2(%r8)
	mr %r7,%r8
	mr %r10,%r9
	addi %r8,%r8,4
	addi %r9,%r9,4
	sth %r12,-2(%r9)
	lhz %r0,4(%r7)
	sth %r0,4(%r10)
	bdnz .L1661
	b .L1542
.L1670:
	lxvd2x %vs0,0,%r8
	mr %r6,%r12
	li %r10,-16
	stxvd2x %vs0,0,%r9
	b .L1620
.L1552:
	andi. %r10,%r5,0x1
	addi %r9,%r7,1
	add %r4,%r4,%r9
	add %r9,%r3,%r9
	addi %r3,%r5,-1
	beq %cr0,.L1606
	lbzu %r7,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r7,-1(%r9)
	beqlr %cr7
.L1606:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1662
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1555:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1555
.L1539:
	blr
.L1662:
	lbz %r6,-1(%r4)
	mr %r5,%r4
	mr %r8,%r9
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	stb %r6,1(%r9)
	lbz %r0,-2(%r5)
	stb %r0,-2(%r8)
	bdnz .L1662
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
	blt %cr0,.L1676
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble %cr1,.L1871
.L1676:
	cmpwi %cr5,%r11,0
	beq %cr5,.L1872
	addi %r9,%r11,-1
	cmplwi %cr0,%r9,3
	ble %cr0,.L1678
	addi %r6,%r4,4
	subf %r7,%r6,%r3
	cmpldi %cr7,%r7,8
	ble %cr7,.L1678
	srdi %r7,%r5,4
	srwi %r8,%r5,4
	andi. %r6,%r7,0x3
	addi %r12,%r7,-1
	mr %r10,%r7
	li %r9,0
	beq %cr0,.L1753
	cmpdi %cr1,%r6,1
	beq %cr1,.L1769
	cmpdi %cr5,%r6,2
	bne %cr5,.L1873
.L1770:
	lxvd2x %vs8,%r4,%r9
	addi %r7,%r7,-1
	stxvd2x %vs8,%r3,%r9
	addi %r9,%r9,16
.L1769:
	lxvd2x %vs9,%r4,%r9
	cmpdi %cr6,%r7,1
	stxvd2x %vs9,%r3,%r9
	addi %r9,%r9,16
	beq %cr6,.L1811
.L1753:
	srdi %r6,%r10,2
	mtctr %r6
.L1679:
	lxvd2x %vs10,%r4,%r9
	addi %r12,%r9,16
	addi %r7,%r9,32
	addi %r10,%r9,48
	stxvd2x %vs10,%r3,%r9
	addi %r9,%r9,64
	lxvd2x %vs11,%r4,%r12
	stxvd2x %vs11,%r3,%r12
	lxvd2x %vs12,%r4,%r7
	stxvd2x %vs12,%r3,%r7
	lxvd2x %vs13,%r4,%r10
	stxvd2x %vs13,%r3,%r10
	bdnz .L1679
.L1811:
	slwi %r9,%r8,2
	cmplw %cr7,%r11,%r9
	beq %cr7,.L1682
	rlwinm %r8,%r9,2,0,27
	addi %r6,%r9,1
	cmplw %cr0,%r11,%r6
	lwzx %r12,%r4,%r8
	stwx %r12,%r3,%r8
	ble %cr0,.L1682
	rldic %r10,%r6,2,31
	addi %r7,%r9,2
	cmplw %cr1,%r11,%r7
	lwzx %r11,%r4,%r10
	stwx %r11,%r3,%r10
	ble %cr1,.L1682
	rldicl %r9,%r7,0,32
	sldi %r8,%r9,2
	lwzx %r6,%r4,%r8
	stwx %r6,%r3,%r8
.L1682:
	cmplw %cr7,%r0,%r5
	bgelr %cr7
	subf %r9,%r0,%r5
	rldicl %r6,%r0,0,32
	addi %r10,%r9,-1
	cmplwi %cr1,%r10,14
	ble %cr1,.L1674
	addi %r8,%r6,1
	add %r7,%r3,%r6
	add %r11,%r4,%r8
	subf %r12,%r11,%r7
	cmpldi %cr0,%r12,14
	ble %cr0,.L1674
	rldicl %r11,%r9,60,36
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	add %r10,%r4,%r6
	andi. %r12,%r11,0x3
	addi %r31,%r11,-1
	mr %r6,%r11
	li %r8,0
	beq %cr0,.L1741
	cmpdi %cr5,%r12,1
	beq %cr5,.L1771
	cmpdi %cr6,%r12,2
	bne %cr6,.L1874
.L1772:
	lxvd2x %vs1,%r10,%r8
	addi %r11,%r11,-1
	stxvd2x %vs1,%r7,%r8
	addi %r8,%r8,16
.L1771:
	lxvd2x %vs2,%r10,%r8
	cmpdi %cr7,%r11,1
	stxvd2x %vs2,%r7,%r8
	addi %r8,%r8,16
	beq %cr7,.L1810
.L1741:
	srdi %r12,%r6,2
	mtctr %r12
.L1683:
	lxvd2x %vs3,%r10,%r8
	addi %r31,%r8,16
	addi %r11,%r8,32
	addi %r6,%r8,48
	stxvd2x %vs3,%r7,%r8
	addi %r8,%r8,64
	lxvd2x %vs4,%r10,%r31
	stxvd2x %vs4,%r7,%r31
	lxvd2x %vs5,%r10,%r11
	stxvd2x %vs5,%r7,%r11
	lxvd2x %vs6,%r10,%r6
	stxvd2x %vs6,%r7,%r6
	bdnz .L1683
.L1810:
	andi. %r10,%r9,0xf
	rlwinm %r9,%r9,0,0,27
	add %r12,%r9,%r0
	beq %cr0,.L1867
	rldicl %r0,%r12,0,32
	addi %r10,%r12,1
	cmplw %cr1,%r10,%r5
	lbzx %r7,%r4,%r0
	stbx %r7,%r3,%r0
	bge %cr1,.L1867
	rldicl %r31,%r10,0,32
	addi %r8,%r12,2
	cmplw %cr5,%r8,%r5
	lbzx %r6,%r4,%r31
	stbx %r6,%r3,%r31
	bge %cr5,.L1867
	rldicl %r11,%r8,0,32
	addi %r9,%r12,3
	cmplw %cr6,%r9,%r5
	lbzx %r0,%r4,%r11
	stbx %r0,%r3,%r11
	bge %cr6,.L1867
	rldicl %r10,%r9,0,32
	addi %r31,%r12,4
	cmplw %cr7,%r31,%r5
	lbzx %r7,%r4,%r10
	stbx %r7,%r3,%r10
	bge %cr7,.L1867
	rldicl %r8,%r31,0,32
	addi %r6,%r12,5
	cmplw %cr0,%r6,%r5
	lbzx %r11,%r4,%r8
	stbx %r11,%r3,%r8
	bge %cr0,.L1867
	rldicl %r9,%r6,0,32
	addi %r0,%r12,6
	cmplw %cr1,%r0,%r5
	lbzx %r10,%r4,%r9
	stbx %r10,%r3,%r9
	bge %cr1,.L1867
	rldicl %r31,%r0,0,32
	addi %r8,%r12,7
	cmplw %cr5,%r8,%r5
	lbzx %r7,%r4,%r31
	stbx %r7,%r3,%r31
	bge %cr5,.L1867
	rldicl %r6,%r8,0,32
	addi %r11,%r12,8
	cmplw %cr6,%r11,%r5
	lbzx %r9,%r4,%r6
	stbx %r9,%r3,%r6
	bge %cr6,.L1867
	rldicl %r0,%r11,0,32
	addi %r10,%r12,9
	cmplw %cr7,%r10,%r5
	lbzx %r31,%r4,%r0
	stbx %r31,%r3,%r0
	bge %cr7,.L1867
	rldicl %r6,%r10,0,32
	addi %r8,%r12,10
	cmplw %cr0,%r8,%r5
	lbzx %r7,%r4,%r6
	stbx %r7,%r3,%r6
	bge %cr0,.L1867
	rldicl %r11,%r8,0,32
	addi %r9,%r12,11
	cmplw %cr1,%r9,%r5
	lbzx %r0,%r4,%r11
	stbx %r0,%r3,%r11
	bge %cr1,.L1867
	rldicl %r10,%r9,0,32
	addi %r31,%r12,12
	cmplw %cr5,%r31,%r5
	lbzx %r6,%r4,%r10
	stbx %r6,%r3,%r10
	bge %cr5,.L1867
	rldicl %r8,%r31,0,32
	addi %r11,%r12,13
	cmplw %cr6,%r11,%r5
	lbzx %r7,%r4,%r8
	stbx %r7,%r3,%r8
	bge %cr6,.L1867
	rldicl %r0,%r11,0,32
	addi %r12,%r12,14
	cmplw %cr7,%r12,%r5
	lbzx %r5,%r4,%r0
	stbx %r5,%r3,%r0
	bge %cr7,.L1867
	rldicl %r9,%r12,0,32
	lbzx %r4,%r4,%r9
	stbx %r4,%r3,%r9
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1871:
	cmpdi %cr5,%r5,0
	addi %r0,%r5,-1
	rldicl %r7,%r0,0,32
	beqlr %cr5
	cmplwi %cr6,%r0,14
	ble %cr6,.L1687
	addi %r10,%r7,-1
	add %r8,%r3,%r7
	add %r6,%r4,%r10
	subf %r12,%r6,%r8
	addi %r11,%r12,14
	cmpldi %cr7,%r11,14
	ble %cr7,.L1687
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
	beq %cr0,.L1765
	cmpdi %cr1,%r12,1
	beq %cr1,.L1773
	cmpdi %cr5,%r12,2
	bne %cr5,.L1875
.L1774:
	lxvd2x %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvd2x %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1773:
	lxvd2x %vs2,%r8,%r10
	cmpdi %cr6,%r6,1
	stxvd2x %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq %cr6,.L1812
.L1765:
	srdi %r31,%r7,2
	mtctr %r31
.L1688:
	lxvd2x %vs3,%r8,%r10
	addi %r12,%r10,-16
	addi %r11,%r10,-32
	addi %r7,%r10,-48
	stxvd2x %vs3,%r9,%r10
	addi %r10,%r10,-64
	lxvd2x %vs4,%r8,%r12
	stxvd2x %vs4,%r9,%r12
	lxvd2x %vs5,%r8,%r11
	stxvd2x %vs5,%r9,%r11
	lxvd2x %vs6,%r8,%r7
	stxvd2x %vs6,%r9,%r7
	bdnz .L1688
.L1812:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r6,%r5,%r0
	beq %cr0,.L1867
	rldicl %r0,%r6,0,32
	cmpwi %cr7,%r6,0
	addi %r9,%r6,-1
	lbzx %r8,%r4,%r0
	rldicl %r31,%r9,0,32
	stbx %r8,%r3,%r0
	beq %cr7,.L1867
	cmpdi %cr1,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-2
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr1,.L1867
	cmpdi %cr5,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-3
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr5,.L1867
	cmpdi %cr6,%r0,0
	lbzx %r9,%r4,%r0
	addi %r8,%r6,-4
	rldicl %r31,%r8,0,32
	stbx %r9,%r3,%r0
	beq %cr6,.L1867
	cmpdi %cr0,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-5
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr0,.L1867
	cmpdi %cr7,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-6
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr7,.L1867
	cmpdi %cr1,%r0,0
	lbzx %r8,%r4,%r0
	addi %r9,%r6,-7
	rldicl %r31,%r9,0,32
	stbx %r8,%r3,%r0
	beq %cr1,.L1867
	cmpdi %cr5,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-8
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr5,.L1867
	cmpdi %cr6,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-9
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr6,.L1867
	cmpdi %cr0,%r0,0
	lbzx %r8,%r4,%r0
	addi %r9,%r6,-10
	rldicl %r31,%r9,0,32
	stbx %r8,%r3,%r0
	beq %cr0,.L1867
	cmpdi %cr7,%r31,0
	lbzx %r12,%r4,%r31
	addi %r10,%r6,-11
	rldicl %r7,%r10,0,32
	stbx %r12,%r3,%r31
	beq %cr7,.L1867
	cmpdi %cr1,%r7,0
	lbzx %r11,%r4,%r7
	addi %r5,%r6,-12
	rldicl %r0,%r5,0,32
	stbx %r11,%r3,%r7
	beq %cr1,.L1867
	cmpdi %cr5,%r0,0
	lbzx %r9,%r4,%r0
	addi %r8,%r6,-13
	rldicl %r31,%r8,0,32
	stbx %r9,%r3,%r0
	beq %cr5,.L1867
	cmpdi %cr6,%r31,0
	lbzx %r12,%r4,%r31
	addi %r6,%r6,-14
	rldicl %r7,%r6,0,32
	stbx %r12,%r3,%r31
	beq %cr6,.L1867
	lbzx %r4,%r4,%r7
	stbx %r4,%r3,%r7
	ld %r31,-8(%r1)
	.cfi_remember_state
	.cfi_restore 31
	blr
	.p2align 4,,15
.L1867:
	.cfi_restore_state
	ld %r31,-8(%r1)
	.cfi_restore 31
.L1671:
	blr
	.p2align 4,,15
.L1873:
	lxvd2x %vs7,0,%r4
	mr %r7,%r12
	li %r9,16
	stxvd2x %vs7,0,%r3
	b .L1770
	.p2align 4,,15
.L1874:
	.cfi_offset 31, -8
	lxvd2x %vs0,0,%r10
	mr %r11,%r31
	li %r8,16
	stxvd2x %vs0,0,%r7
	b .L1772
	.p2align 4,,15
.L1872:
	.cfi_restore 31
	cmpdi %cr6,%r5,0
	rldicl %r6,%r0,0,32
	mr %r9,%r5
	beqlr %cr6
.L1674:
	rldicl %r11,%r9,0,32
	addi %r10,%r6,-1
	andi. %r8,%r11,0x1
	add %r4,%r4,%r10
	add %r10,%r3,%r10
	addi %r3,%r11,-1
	beq %cr0,.L1734
	lbzu %r6,1(%r4)
	cmpdi %cr1,%r3,0
	stbu %r6,1(%r10)
	beqlr %cr1
.L1734:
	srdi %r9,%r11,1
	mtctr %r9
	cmpdi %cr5,%r9,2
	ble %cr5,.L1828
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r7,1(%r4)
	stb %r7,1(%r10)
	addi %r8,%r4,1
	lbz %r7,1(%r8)
	addi %r9,%r10,1
	stb %r7,1(%r9)
.L1685:
	lbz %r7,2(%r8)
	stb %r7,2(%r9)
	addi %r8,%r8,2
	lbz %r7,1(%r8)
	addi %r9,%r9,2
	stb %r7,1(%r9)
	bdnz .L1685
	blr
	.p2align 4,,15
.L1828:
	lbz %r7,1(%r4)
	mr %r8,%r4
	mr %r12,%r10
	addi %r4,%r4,2
	addi %r10,%r10,2
	stb %r7,-1(%r10)
	lbz %r0,2(%r8)
	stb %r0,2(%r12)
	bdnz .L1828
	blr
	.p2align 4,,15
.L1678:
	rldicl %r12,%r11,0,32
	addi %r8,%r4,-4
	andi. %r10,%r12,0x1
	addi %r7,%r12,-1
	addi %r10,%r3,-4
	beq %cr0,.L1746
	cmpdi %cr5,%r7,0
	lwz %r11,0(%r4)
	mr %r8,%r4
	mr %r10,%r3
	stw %r11,0(%r3)
	beq %cr5,.L1682
.L1746:
	srdi %r9,%r12,1
	mtctr %r9
	cmpdi %cr6,%r9,2
	ble %cr6,.L1829
	addi %r9,%r9,-1
	mtctr %r9
	lwz %r6,4(%r8)
	stw %r6,4(%r10)
	addi %r7,%r8,4
	lwz %r6,4(%r7)
	addi %r9,%r10,4
	stw %r6,4(%r9)
.L1681:
	lwz %r6,8(%r7)
	stw %r6,8(%r9)
	addi %r7,%r7,8
	lwz %r6,4(%r7)
	addi %r9,%r9,8
	stw %r6,4(%r9)
	bdnz .L1681
	b .L1682
	.p2align 4,,15
.L1829:
	lwz %r6,4(%r8)
	mr %r12,%r8
	mr %r9,%r10
	addi %r8,%r8,8
	addi %r10,%r10,8
	stw %r6,-4(%r10)
	lwz %r7,8(%r12)
	stw %r7,8(%r9)
	bdnz .L1829
	b .L1682
.L1875:
	.cfi_offset 31, -8
	lxvd2x %vs0,0,%r8
	mr %r6,%r11
	li %r10,-16
	stxvd2x %vs0,0,%r9
	b .L1774
.L1687:
	.cfi_restore 31
	andi. %r10,%r5,0x1
	addi %r10,%r7,1
	add %r9,%r3,%r10
	add %r4,%r4,%r10
	addi %r3,%r5,-1
	beq %cr0,.L1758
	lbzu %r11,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r11,-1(%r9)
	beqlr %cr7
.L1758:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1830
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1691:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1691
	blr
.L1830:
	lbz %r5,-1(%r4)
	mr %r8,%r4
	mr %r12,%r9
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	stb %r5,1(%r9)
	lbz %r0,-2(%r8)
	stb %r0,-2(%r12)
	bdnz .L1830
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
	bne %cr0,.L1885
	srawi %r9,%r3,14
	cmpwi %cr1,%r9,0
	bne %cr1,.L1884
	srdi. %r9,%r3,13
	bne %cr0,.L1886
	srdi. %r9,%r3,12
	bne %cr0,.L1887
	srdi. %r9,%r3,11
	bne %cr0,.L1888
	srdi. %r9,%r3,10
	bne %cr0,.L1889
	srdi. %r9,%r3,9
	bne %cr0,.L1890
	srdi. %r9,%r3,8
	bne %cr0,.L1891
	srdi. %r9,%r3,7
	bne %cr0,.L1892
	srdi. %r9,%r3,6
	bne %cr0,.L1893
	srdi. %r9,%r3,5
	bne %cr0,.L1894
	srdi. %r9,%r3,4
	bne %cr0,.L1895
	srdi. %r9,%r3,3
	bne %cr0,.L1896
	srdi. %r9,%r3,2
	bne %cr0,.L1897
	srdi. %r9,%r3,1
	bne %cr0,.L1898
	cntlzd %r3,%r3
	srdi %r4,%r3,6
	addi %r9,%r4,15
.L1884:
	rldicl %r3,%r9,0,59
	blr
.L1885:
	li %r9,0
	b .L1884
.L1896:
	li %r9,12
	b .L1884
.L1886:
	li %r9,2
	b .L1884
.L1887:
	li %r9,3
	b .L1884
.L1888:
	li %r9,4
	b .L1884
.L1889:
	li %r9,5
	b .L1884
.L1890:
	li %r9,6
	b .L1884
.L1891:
	li %r9,7
	b .L1884
.L1892:
	li %r9,8
	b .L1884
.L1893:
	li %r9,9
	b .L1884
.L1894:
	li %r9,10
	b .L1884
.L1895:
	li %r9,11
	b .L1884
.L1897:
	li %r9,13
	b .L1884
.L1898:
	li %r9,14
	b .L1884
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
	bne %cr0,.L1903
	andi. %r9,%r3,0x2
	bne %cr0,.L1904
	andi. %r9,%r3,0x4
	bne %cr0,.L1905
	andi. %r9,%r3,0x8
	bne %cr0,.L1906
	andi. %r9,%r3,0x10
	bne %cr0,.L1907
	andi. %r9,%r3,0x20
	bne %cr0,.L1908
	andi. %r9,%r3,0x40
	bne %cr0,.L1909
	andi. %r9,%r3,0x80
	bne %cr0,.L1910
	andi. %r9,%r3,0x100
	bne %cr0,.L1911
	andi. %r9,%r3,0x200
	bne %cr0,.L1912
	andi. %r9,%r3,0x400
	bne %cr0,.L1913
	andi. %r9,%r3,0x800
	bne %cr0,.L1914
	andi. %r9,%r3,0x1000
	bne %cr0,.L1915
	andi. %r9,%r3,0x2000
	bne %cr0,.L1916
	andi. %r9,%r3,0x4000
	bne %cr0,.L1917
	srawi %r3,%r3,15
	cntlzw %r0,%r3
	srwi %r4,%r0,5
	addi %r5,%r4,15
.L1902:
	rldicl %r3,%r5,0,59
	blr
.L1903:
	li %r5,0
	b .L1902
.L1904:
	li %r5,1
	b .L1902
.L1915:
	li %r5,12
	b .L1902
.L1905:
	li %r5,2
	b .L1902
.L1906:
	li %r5,3
	b .L1902
.L1907:
	li %r5,4
	b .L1902
.L1908:
	li %r5,5
	b .L1902
.L1909:
	li %r5,6
	b .L1902
.L1910:
	li %r5,7
	b .L1902
.L1911:
	li %r5,8
	b .L1902
.L1912:
	li %r5,9
	b .L1902
.L1913:
	li %r5,10
	b .L1902
.L1914:
	li %r5,11
	b .L1902
.L1916:
	li %r5,13
	b .L1902
.L1917:
	li %r5,14
	b .L1902
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
	addis %r9,%r2,.LC40@toc@ha
	lfs %f0,.LC40@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne %cr0,.L1925
	fctidz %f1,%f1
	mfvsrd %r3,%vs1
	blr
	.p2align 4,,15
.L1925:
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
	oris %r0,%r11,0xc07c
	stw %r11,-4(%r1)
	mtvrsave %r0
	vspltisw %v10,1
	vspltisw %v1,0
	addis %r8,%r2,.LC42@toc@ha
	addis %r9,%r2,.LC43@toc@ha
	mtvsrd %vs32,%r3
	addi %r4,%r8,.LC42@toc@l
	addi %r5,%r9,.LC43@toc@l
	lwz %r11,-4(%r1)
	addis %r10,%r2,.LC44@toc@ha
	addis %r3,%r2,.LC45@toc@ha
	lvx %v12,0,%r4
	lvx %v11,0,%r5
	addi %r6,%r10,.LC44@toc@l
	addi %r7,%r3,.LC45@toc@l
	lvx %v13,0,%r6
	xxspltw %vs32,%vs32,1
	lvx %v9,0,%r7
	vsraw %v12,%v0,%v12
	vsraw %v11,%v0,%v11
	xxland %vs44,%vs44,%vs42
	xxland %vs43,%vs43,%vs42
	vsraw %v13,%v0,%v13
	vsraw %v0,%v0,%v9
	vadduwm %v9,%v12,%v11
	xxland %vs45,%vs45,%vs42
	xxland %vs42,%vs32,%vs42
	vadduwm %v12,%v13,%v9
	vadduwm %v11,%v10,%v12
	xxsldwi %vs45,%vs33,%vs43,2
	vadduwm %v9,%v13,%v11
	xxsldwi %vs33,%vs33,%vs41,3
	vadduwm %v0,%v1,%v9
	vspltw %v10,%v0,3
	mfvsrwz %r12,%vs42
	rldicl %r3,%r12,0,63
	mtvrsave %r11
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
	oris %r0,%r11,0xc07c
	stw %r11,-4(%r1)
	mtvrsave %r0
	vspltisw %v10,1
	vspltisw %v1,0
	addis %r8,%r2,.LC42@toc@ha
	addis %r9,%r2,.LC43@toc@ha
	mtvsrd %vs32,%r3
	addi %r4,%r8,.LC42@toc@l
	addi %r5,%r9,.LC43@toc@l
	lwz %r11,-4(%r1)
	addis %r10,%r2,.LC44@toc@ha
	addis %r3,%r2,.LC45@toc@ha
	lvx %v12,0,%r4
	lvx %v11,0,%r5
	addi %r6,%r10,.LC44@toc@l
	addi %r7,%r3,.LC45@toc@l
	lvx %v13,0,%r6
	xxspltw %vs32,%vs32,1
	lvx %v9,0,%r7
	vsraw %v12,%v0,%v12
	vsraw %v11,%v0,%v11
	xxland %vs44,%vs44,%vs42
	xxland %vs43,%vs43,%vs42
	vsraw %v13,%v0,%v13
	vsraw %v0,%v0,%v9
	vadduwm %v9,%v12,%v11
	xxland %vs45,%vs45,%vs42
	xxland %vs42,%vs32,%vs42
	vadduwm %v12,%v13,%v9
	vadduwm %v11,%v10,%v12
	xxsldwi %vs45,%vs33,%vs43,2
	vadduwm %v9,%v13,%v11
	xxsldwi %vs33,%vs33,%vs41,3
	vadduwm %v0,%v1,%v9
	vspltw %v10,%v0,3
	mfvsrwz %r12,%vs42
	extsw %r3,%r12
	mtvrsave %r11
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
	beq %cr0,.L1931
	.p2align 5
.L1932:
	rlwinm %r9,%r10,0,31,31
	srwi %r10,%r10,1
	cmpwi %cr1,%r10,0
	neg %r0,%r9
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	bne %cr1,.L1932
.L1931:
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
	beq %cr0,.L1936
	cmpdi %cr1,%r4,0
	beq %cr1,.L1936
	.p2align 5
.L1937:
	rlwinm %r9,%r4,0,31,31
	srdi. %r4,%r4,1
	neg %r0,%r9
	and %r5,%r0,%r10
	add %r3,%r3,%r5
	rldic %r10,%r10,1,32
	bne %cr0,.L1937
.L1936:
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
	blt %cr0,.L1942
	b .L1963
	.p2align 4,,15
.L1946:
	rldicl %r4,%r0,0,32
	slwi %r9,%r9,1
	ble %cr7,.L1944
	cmpwi %cr5,%r4,0
	slwi %r6,%r4,1
	cmplw %cr6,%r3,%r6
	blt %cr5,.L1947
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble %cr6,.L1944
	bdz .L1945
.L1942:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r12,-1
	cmplw %cr7,%r3,%r0
	addi %r12,%r10,-1
	bge %cr1,.L1946
.L1947:
	li %r12,0
	li %r11,1
	li %r10,0
	.p2align 4,,15
.L1948:
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
	bne %cr7,.L1948
.L1945:
	cmpdi %cr6,%r5,0
	isel %r5,%r12,%r3,26
	rldicl %r3,%r5,0,32
	blr
	.p2align 4,,15
.L1944:
	cmpwi %cr0,%r9,0
	bne %cr0,.L1947
	li %r12,0
	b .L1945
	.p2align 4,,15
.L1963:
	isel %r9,0,%r9,1
	subf %r4,%r4,%r3
	andi. %r12,%r9,0xff
	isel %r3,%r3,%r4,2
	rldicl %r3,%r3,0,32
	b .L1945
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
	blt %cr0,.L1967
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1967:
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
	blt %cr0,.L1970
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1970:
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
	blt %cr0,.L1987
	cmpdi %cr1,%r4,0
	beq %cr1,.L1980
	li %r6,0
.L1976:
	li %r10,32
	li %r8,0
	b .L1979
	.p2align 4,,15
.L1988:
	beq %cr7,.L1978
.L1979:
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
	bne %cr0,.L1988
.L1978:
	cmpwi %cr5,%r6,0
	neg %r12,%r8
	isel %r3,%r8,%r12,22
.L1977:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L1987:
	neg %r4,%r4
	li %r6,1
	extsw %r4,%r4
	b .L1976
.L1980:
	li %r3,0
	b .L1977
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
	bge %cr0,.L1990
	neg %r3,%r3
	li %r9,0
	li %r11,1
.L1990:
	cmpdi %cr1,%r4,0
	bge %cr1,.L1991
	neg %r4,%r4
	mr %r11,%r9
.L1991:
	cmplw %cr5,%r3,%r4
	li %r10,16
	mtctr %r10
	li %r12,1
	bgt %cr5,.L1992
	b .L2017
	.p2align 4,,15
.L1996:
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr0,%r3,%r4
	cmpwi %cr7,%r4,0
	ble %cr0,.L1994
	blt %cr7,.L2013
	slwi %r4,%r4,1
	slwi %r12,%r12,1
	cmplw %cr0,%r3,%r4
	ble %cr0,.L1994
	bdz .L2004
.L1992:
	cmpwi %cr6,%r4,0
	bge %cr6,.L1996
.L2013:
	cmplw %cr0,%r3,%r4
	b .L1997
	.p2align 4,,15
.L1994:
	cmpwi %cr1,%r12,0
	beq %cr1,.L2004
.L1997:
	li %r0,0
	li %r5,1
	li %r6,0
	.p2align 4,,15
.L1998:
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
	bne %cr6,.L1998
.L2000:
	rldicl %r3,%r0,0,32
	cmpwi %cr7,%r11,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
	.p2align 4,,15
.L2004:
	cmpwi %cr7,%r11,0
	li %r3,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L2017:
	isel %r0,0,%r12,20
	b .L2000
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
	bge %cr0,.L2022
	neg %r3,%r3
	li %r5,1
.L2022:
	sradi %r7,%r4,63
	li %r9,16
	mtctr %r9
	xor %r4,%r7,%r4
	subf %r0,%r7,%r4
	mr %r8,%r3
	cmplw %cr1,%r3,%r0
	li %r10,1
	mr %r11,%r0
	bgt %cr1,.L2023
	b .L2049
	.p2align 4,,15
.L2027:
	slwi %r11,%r11,1
	slwi %r10,%r10,1
	cmplw %cr6,%r8,%r11
	cmpwi %cr7,%r11,0
	ble %cr6,.L2025
	blt %cr7,.L2046
	slwi %r11,%r11,1
	slwi %r10,%r10,1
	cmplw %cr6,%r8,%r11
	ble %cr6,.L2025
	bdz .L2026
.L2023:
	cmpwi %cr5,%r11,0
	bge %cr5,.L2027
.L2046:
	cmplw %cr6,%r8,%r11
.L2028:
	li %r3,1
	.p2align 4,,15
.L2029:
	srwi %r10,%r10,1
	isel %r12,0,%r3,24
	cmpwi %cr1,%r10,0
	cmpwi %cr5,%r12,0
	subf %r7,%r11,%r8
	srwi %r11,%r11,1
	isel %r8,%r8,%r7,22
	cmplw %cr6,%r8,%r11
	bne %cr1,.L2029
.L2026:
	cmpwi %cr7,%r5,0
	rldicl %r4,%r8,0,32
	neg %r5,%r4
	isel %r3,%r4,%r5,30
	blr
	.p2align 4,,15
.L2025:
	cmpwi %cr0,%r10,0
	bne %cr0,.L2028
	b .L2026
	.p2align 4,,15
.L2049:
	subf %r6,%r0,%r3
	isel %r8,%r3,%r6,4
	b .L2026
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
	bge %cr0,.L2222
	andi. %r9,%r4,0x8000
	bne %cr0,.L2057
	rldic %r9,%r4,1,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2130
	andi. %r10,%r9,0x8000
	bne %cr0,.L2130
	rldic %r9,%r4,2,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2132
	andi. %r10,%r9,0x8000
	bne %cr0,.L2132
	rldic %r9,%r4,3,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2134
	andi. %r10,%r9,0x8000
	bne %cr0,.L2134
	rldic %r9,%r4,4,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2136
	andi. %r10,%r9,0x8000
	bne %cr0,.L2136
	rldic %r9,%r4,5,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2138
	andi. %r10,%r9,0x8000
	bne %cr0,.L2138
	rldic %r9,%r4,6,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2140
	andi. %r10,%r9,0x8000
	bne %cr0,.L2140
	rldic %r9,%r4,7,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2142
	andi. %r10,%r9,0x8000
	bne %cr0,.L2142
	rldic %r9,%r4,8,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2144
	andi. %r10,%r9,0x8000
	bne %cr0,.L2144
	rldic %r9,%r4,9,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2146
	andi. %r10,%r9,0x8000
	bne %cr0,.L2146
	rldic %r9,%r4,10,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2148
	andi. %r10,%r9,0x8000
	bne %cr0,.L2148
	rldic %r9,%r4,11,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2150
	andi. %r10,%r9,0x8000
	bne %cr0,.L2150
	rldic %r9,%r4,12,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2152
	andi. %r10,%r9,0x8000
	bne %cr0,.L2152
	rldic %r9,%r4,13,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2154
	andi. %r10,%r9,0x8000
	bne %cr0,.L2154
	rldic %r9,%r4,14,48
	cmplw %cr7,%r3,%r9
	ble %cr7,.L2156
	andi. %r10,%r9,0x8000
	bne %cr0,.L2156
	rldic %r7,%r4,15,48
	cmplw %cr6,%r3,%r7
	ble %cr6,.L2157
	cmpdi %cr1,%r7,0
	li %r12,0
	bne %cr1,.L2223
.L2060:
	cmpdi %cr6,%r5,0
	beq %cr6,.L2119
	mr %r12,%r3
.L2119:
	rlwinm %r3,%r12,0,0xffff
	blr
.L2130:
	li %r8,2
	.p2align 4,,15
.L2059:
	subf %r0,%r9,%r3
	li %r6,0
	rlwinm %r4,%r0,0,0xffff
	isel %r3,%r3,%r4,28
	blt %cr7,.L2128
	mr %r6,%r8
.L2128:
	srdi %r7,%r9,1
	rldicl %r12,%r8,63,49
	cmplw %cr5,%r3,%r7
	subf %r11,%r7,%r3
	rlwinm %r0,%r11,0,0xffff
	li %r4,0
	isel %r3,%r3,%r0,20
	blt %cr5,.L2064
	mr %r4,%r12
.L2064:
	srwi %r11,%r8,2
	or %r10,%r4,%r6
	cmpwi %cr7,%r11,0
	mr %r12,%r10
	srdi %r7,%r9,2
	beq %cr7,.L2060
	cmplw %cr0,%r3,%r7
	li %r6,1
	subf %r12,%r7,%r3
	li %r4,0
	isel %r0,0,%r6,0
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr6,%r0,0
	isel %r3,%r3,%r7,26
	beq %cr6,.L2068
	mr %r4,%r11
.L2068:
	srwi %r11,%r8,3
	or %r10,%r10,%r4
	cmpwi %cr1,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,3
	beq %cr1,.L2060
	cmplw %cr5,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,20
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr7,%r0,0
	isel %r3,%r3,%r7,30
	beq %cr7,.L2072
	mr %r4,%r11
.L2072:
	srwi %r11,%r8,4
	or %r10,%r10,%r4
	cmpwi %cr0,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,4
	beq %cr0,.L2060
	cmplw %cr6,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,24
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr1,%r0,0
	isel %r3,%r3,%r7,6
	beq %cr1,.L2076
	mr %r4,%r11
.L2076:
	srwi %r11,%r8,5
	or %r10,%r10,%r4
	cmpwi %cr5,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,5
	beq %cr5,.L2060
	cmplw %cr7,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,28
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr0,%r0,0
	isel %r3,%r3,%r7,2
	beq %cr0,.L2080
	mr %r4,%r11
.L2080:
	srwi %r11,%r8,6
	or %r10,%r10,%r4
	cmpwi %cr6,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,6
	beq %cr6,.L2060
	cmplw %cr1,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,4
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr5,%r0,0
	isel %r3,%r3,%r7,22
	beq %cr5,.L2084
	mr %r4,%r11
.L2084:
	srwi %r11,%r8,7
	or %r10,%r10,%r4
	cmpwi %cr7,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,7
	beq %cr7,.L2060
	cmplw %cr0,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,0
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr6,%r0,0
	isel %r3,%r3,%r7,26
	beq %cr6,.L2088
	mr %r4,%r11
.L2088:
	srwi %r11,%r8,8
	or %r10,%r10,%r4
	cmpwi %cr1,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,8
	beq %cr1,.L2060
	cmplw %cr5,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,20
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr7,%r0,0
	isel %r3,%r3,%r7,30
	beq %cr7,.L2092
	mr %r4,%r11
.L2092:
	srwi %r11,%r8,9
	or %r10,%r10,%r4
	cmpwi %cr0,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,9
	beq %cr0,.L2060
	cmplw %cr6,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,24
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr1,%r0,0
	isel %r3,%r3,%r7,6
	beq %cr1,.L2096
	mr %r4,%r11
.L2096:
	srwi %r11,%r8,10
	or %r10,%r10,%r4
	cmpwi %cr5,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,10
	beq %cr5,.L2060
	cmplw %cr7,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,28
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr0,%r0,0
	isel %r3,%r3,%r7,2
	beq %cr0,.L2100
	mr %r4,%r11
.L2100:
	srwi %r11,%r8,11
	or %r10,%r10,%r4
	cmpwi %cr6,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,11
	beq %cr6,.L2060
	cmplw %cr1,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,4
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr5,%r0,0
	isel %r3,%r3,%r7,22
	beq %cr5,.L2104
	mr %r4,%r11
.L2104:
	srwi %r11,%r8,12
	or %r10,%r10,%r4
	cmpwi %cr7,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,12
	beq %cr7,.L2060
	cmplw %cr0,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,0
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr6,%r0,0
	isel %r3,%r3,%r7,26
	beq %cr6,.L2108
	mr %r4,%r11
.L2108:
	srwi %r11,%r8,13
	or %r10,%r10,%r4
	cmpwi %cr1,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,13
	beq %cr1,.L2060
	cmplw %cr5,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,20
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr7,%r0,0
	isel %r3,%r3,%r7,30
	beq %cr7,.L2112
	mr %r4,%r11
.L2112:
	srwi %r11,%r8,14
	or %r10,%r10,%r4
	cmpwi %cr0,%r11,0
	mr %r12,%r10
	srdi %r0,%r9,14
	beq %cr0,.L2060
	cmplw %cr6,%r3,%r0
	li %r6,1
	subf %r12,%r0,%r3
	li %r4,0
	isel %r0,0,%r6,24
	rlwinm %r7,%r12,0,0xffff
	cmpwi %cr1,%r0,0
	isel %r3,%r3,%r7,6
	beq %cr1,.L2116
	mr %r4,%r11
.L2116:
	cmpwi %cr5,%r8,16384
	or %r8,%r10,%r4
	srdi %r9,%r9,15
	mr %r12,%r8
	beq %cr5,.L2060
	cmplw %cr7,%r3,%r9
	li %r10,1
	subf %r11,%r9,%r3
	isel %r6,0,%r10,28
	rlwinm %r0,%r11,0,0xffff
	cmpwi %cr0,%r6,0
	or %r12,%r8,%r6
	isel %r3,%r3,%r0,2
	b .L2060
.L2132:
	li %r8,4
	b .L2059
.L2134:
	li %r8,8
	b .L2059
.L2136:
	li %r8,16
	b .L2059
.L2146:
	li %r8,512
	b .L2059
.L2138:
	li %r8,32
	b .L2059
.L2140:
	li %r8,64
	b .L2059
.L2142:
	li %r8,128
	b .L2059
.L2144:
	li %r8,256
	b .L2059
.L2222:
	cmpd %cr1,%r4,%r3
	li %r10,0
	li %r6,1
	subf %r9,%r4,%r3
	isel %r12,%r6,%r10,6
	rlwinm %r0,%r9,0,0xffff
	cmpwi %cr5,%r12,0
	isel %r3,%r3,%r0,22
	b .L2060
.L2148:
	li %r8,1024
	b .L2059
.L2150:
	li %r8,2048
	b .L2059
.L2152:
	li %r8,4096
	b .L2059
.L2154:
	li %r8,8192
	b .L2059
.L2156:
	li %r8,16384
	b .L2059
.L2223:
	li %r10,-1
	li %r8,0
	cmplwi %cr7,%r3,32768
	ori %r8,%r8,0x8000
	rlwinm %r9,%r10,0,16,16
	b .L2059
.L2157:
	li %r11,-1
	li %r8,0
	cmplwi %cr7,%r3,32768
	rlwinm %r9,%r11,0,16,16
	ori %r8,%r8,0x8000
	b .L2059
.L2057:
	subf %r4,%r4,%r3
	li %r12,1
	rlwinm %r3,%r4,0,0xffff
	b .L2060
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
	blt %cr0,.L2225
	b .L2247
	.p2align 4,,15
.L2229:
	sldi %r4,%r4,1
	sldi %r9,%r9,1
	cmpld %cr7,%r3,%r4
	ble %cr7,.L2227
	bdz .L2228
.L2225:
	andis. %r12,%r4,0x8000
	beq %cr0,.L2229
	cmpld %cr7,%r3,%r4
.L2230:
	li %r12,0
	li %r11,1
	li %r6,0
	.p2align 4,,15
.L2231:
	isel %r0,0,%r11,28
	subf %r7,%r4,%r3
	cmpwi %cr6,%r0,0
	srdi %r4,%r4,1
	isel %r10,%r6,%r9,26
	isel %r3,%r3,%r7,26
	srdi. %r9,%r9,1
	cmpld %cr7,%r3,%r4
	or %r12,%r12,%r10
	bne %cr0,.L2231
.L2228:
	cmpdi %cr1,%r5,0
	isel %r3,%r12,%r3,6
	blr
	.p2align 4,,15
.L2227:
	cmpdi %cr5,%r9,0
	bne %cr5,.L2230
	b .L2228
	.p2align 4,,15
.L2247:
	isel %r9,0,%r9,1
	subf %r4,%r4,%r3
	rlwinm %r8,%r9,0,0xff
	rlwinm %r12,%r9,0,0xff
	cmpwi %cr1,%r8,0
	isel %r3,%r3,%r4,6
	b .L2228
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
	beq %cr0,.L2251
	addi %r4,%r4,-32
	li %r6,0
	slw %r5,%r3,%r4
	rldicl %r11,%r6,0,32
	sldi %r7,%r5,32
	or %r3,%r11,%r7
	blr
	.p2align 4,,15
.L2251:
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
	beq %cr0,.L2257
	addi %r5,%r5,-64
	li %r9,0
	sld %r4,%r3,%r5
	mr %r3,%r9
	blr
	.p2align 4,,15
.L2257:
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
	beq %cr0,.L2262
	sradi %r7,%r3,32
	addi %r8,%r4,-32
	sraw %r6,%r7,%r8
	srawi %r4,%r7,31
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
	.p2align 4,,15
.L2262:
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
	beq %cr0,.L2268
	addi %r5,%r5,-64
	sradi %r9,%r4,63
	srad %r3,%r4,%r5
	mr %r4,%r9
	blr
	.p2align 4,,15
.L2268:
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
	rotlwi %r10,%r3,24
	srdi %r9,%r3,32
	rlwimi %r10,%r3,8,8,15
	rlwimi %r10,%r3,8,24,31
	rotlwi %r3,%r9,24
	rlwimi %r3,%r9,8,8,15
	rlwimi %r3,%r9,8,24,31
	rldimi %r3,%r10,32,0
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
	blt %cr0,.L2278
	li %r0,2
	bgt %cr0,.L2277
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt %cr1,.L2277
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2277:
	rldicl %r3,%r0,0,62
	blr
	.p2align 4,,15
.L2278:
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
	blt %cr0,.L2284
	li %r5,1
	bgt %cr0,.L2283
	cmplw %cr7,%r3,%r4
	cmplw %cr1,%r3,%r4
	li %r0,0
	li %r4,-1
	isel %r3,%r5,%r0,29
	isel %r5,%r4,%r3,4
.L2283:
	extsw %r3,%r5
	blr
	.p2align 4,,15
.L2284:
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
	blt %cr0,.L2288
	li %r0,2
	bgt %cr0,.L2288
	cmpld %cr1,%r3,%r5
	li %r0,0
	blt %cr1,.L2288
	mfcr %r9,64
	rlwinm %r9,%r9,6,1
	addi %r0,%r9,1
.L2288:
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
	or %r5,%r4,%r0
	cntlzd %r3,%r3
	addi %r6,%r5,-1
	andc %r7,%r6,%r5
	srdi %r8,%r3,6
	popcntd %r11,%r7
	sldi %r12,%r8,6
	add %r3,%r12,%r11
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
	mr. %r9,%r3
	bne %cr0,.L2296
	cmpdi %cr1,%r4,0
	bne %cr1,.L2300
	rldicl %r3,%r3,0,32
	blr
	.p2align 4,,15
.L2296:
	addi %r3,%r9,-1
	andc %r0,%r3,%r9
	popcntd %r4,%r0
	addi %r3,%r4,1
	rldicl %r3,%r3,0,32
	blr
	.p2align 4,,15
.L2300:
	addi %r5,%r4,-1
	andc %r6,%r5,%r4
	popcntd %r7,%r6
	addi %r3,%r7,65
	rldicl %r3,%r3,0,32
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
	beq %cr0,.L2302
	srdi %r7,%r3,32
	addi %r8,%r4,-32
	srw %r6,%r7,%r8
	li %r4,0
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
	.p2align 4,,15
.L2302:
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
	beq %cr0,.L2308
	addi %r5,%r5,-64
	li %r9,0
	srd %r3,%r4,%r5
	mr %r4,%r9
	blr
	.p2align 4,,15
.L2308:
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
	rlwinm %r10,%r3,0,16,31
	rlwinm %r9,%r4,0,16,31
	mullw %r8,%r10,%r9
	srwi %r3,%r3,16
	mullw %r0,%r9,%r3
	srwi %r4,%r4,16
	mullw %r5,%r10,%r4
	mullw %r6,%r3,%r4
	srwi %r7,%r8,16
	add %r11,%r0,%r7
	rlwinm %r12,%r11,0,0xffff
	srwi %r9,%r11,16
	add %r10,%r5,%r12
	add %r3,%r9,%r6
	srwi %r0,%r10,16
	rlwimi %r8,%r10,16,0,31-16
	add %r4,%r3,%r0
	rldicl %r8,%r8,0,32
	sldi %r5,%r4,32
	or %r3,%r8,%r5
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
	rlwinm %r7,%r3,0,16,31
	rlwinm %r9,%r4,0,16,31
	mullw %r8,%r7,%r9
	srwi %r10,%r3,16
	mullw %r0,%r9,%r10
	srwi %r6,%r4,16
	mullw %r12,%r7,%r6
	sradi %r7,%r4,32
	mullw %r6,%r10,%r6
	sradi %r5,%r3,32
	srwi %r11,%r8,16
	mullw %r10,%r3,%r7
	add %r3,%r0,%r11
	mullw %r4,%r4,%r5
	rlwinm %r0,%r3,0,0xffff
	srwi %r9,%r3,16
	add %r12,%r12,%r0
	add %r7,%r9,%r6
	srwi %r6,%r12,16
	rlwimi %r8,%r12,16,0,31-16
	add %r5,%r7,%r6
	rldicl %r8,%r8,0,32
	sldi %r11,%r5,32
	or %r3,%r8,%r11
	sradi %r0,%r3,32
	add %r10,%r10,%r0
	add %r4,%r10,%r4
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
	rldicl %r9,%r4,0,32
	rldicl %r8,%r3,0,32
	srdi %r10,%r3,32
	mulld %r3,%r8,%r9
	mulld %r0,%r9,%r10
	srdi %r4,%r4,32
	mulld %r5,%r8,%r4
	mulld %r6,%r10,%r4
	srdi %r7,%r3,32
	add %r11,%r0,%r7
	rldicl %r12,%r11,0,32
	srdi %r8,%r11,32
	add %r9,%r5,%r12
	add %r0,%r8,%r6
	srdi %r10,%r9,32
	rldimi %r3,%r9,32,0
	add %r4,%r0,%r10
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
	rldicl %r9,%r5,0,32
	rldicl %r8,%r3,0,32
	srdi %r7,%r3,32
	mr %r10,%r3
	mulld %r3,%r8,%r9
	mulld %r0,%r9,%r7
	srdi %r11,%r5,32
	mulld %r10,%r10,%r6
	mulld %r12,%r8,%r11
	mulld %r7,%r7,%r11
	mulld %r4,%r5,%r4
	srdi %r8,%r3,32
	add %r9,%r0,%r8
	rldicl %r6,%r9,0,32
	srdi %r5,%r9,32
	add %r0,%r12,%r6
	add %r11,%r5,%r7
	srdi %r12,%r0,32
	rldimi %r3,%r0,32,0
	add %r7,%r11,%r12
	add %r8,%r10,%r7
	add %r4,%r8,%r4
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
	addis %r9,%r2,.LC34@toc@ha
	fmr %f0,%f1
	mr %r3,%r4
	lfd %f12,.LC34@toc@l(%r9)
	andi. %r9,%r4,0x1
	fmr %f1,%f12
	beq %cr0,.L2326
	.p2align 4,,15
.L2328:
	fmul %f1,%f1,%f0
.L2326:
	srawi %r0,%r3,1
	addze %r0,%r0
	extsw. %r3,%r0
	beq %cr0,.L2327
	andi. %r10,%r3,0x1
	fmul %f0,%f0,%f0
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2328
.L2332:
	extsw %r3,%r10
	fmul %f0,%f0,%f0
	andi. %r10,%r3,0x1
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2328
	b .L2332
	.p2align 4,,15
.L2327:
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
	addis %r9,%r2,.LC35@toc@ha
	fmr %f0,%f1
	mr %r3,%r4
	lfs %f12,.LC35@toc@l(%r9)
	andi. %r9,%r4,0x1
	fmr %f1,%f12
	beq %cr0,.L2334
	.p2align 4,,15
.L2336:
	fmuls %f1,%f1,%f0
.L2334:
	srawi %r0,%r3,1
	addze %r0,%r0
	extsw. %r3,%r0
	beq %cr0,.L2335
	andi. %r10,%r3,0x1
	fmuls %f0,%f0,%f0
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2336
.L2340:
	extsw %r3,%r10
	fmuls %f0,%f0,%f0
	andi. %r10,%r3,0x1
	srawi %r10,%r3,1
	addze %r10,%r10
	bne %cr0,.L2336
	b .L2340
	.p2align 4,,15
.L2335:
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
	blt %cr0,.L2343
	li %r0,2
	bgt %cr0,.L2342
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt %cr1,.L2342
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2342:
	rldicl %r3,%r0,0,62
	blr
	.p2align 4,,15
.L2343:
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
	blt %cr0,.L2349
	li %r5,1
	bgt %cr0,.L2348
	cmplw %cr7,%r3,%r4
	cmplw %cr1,%r3,%r4
	li %r0,0
	li %r4,-1
	isel %r3,%r5,%r0,29
	isel %r5,%r4,%r3,4
.L2348:
	extsw %r3,%r5
	blr
	.p2align 4,,15
.L2349:
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
	blt %cr0,.L2353
	li %r0,2
	bgt %cr0,.L2353
	cmpld %cr1,%r3,%r5
	li %r0,0
	blt %cr1,.L2353
	mfcr %r9,64
	rlwinm %r9,%r9,6,1
	addi %r0,%r9,1
.L2353:
	rldicl %r3,%r0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC1:
	.byte	22
	.byte	23
	.byte	20
	.byte	21
	.byte	18
	.byte	19
	.byte	16
	.byte	17
	.byte	30
	.byte	31
	.byte	28
	.byte	29
	.byte	26
	.byte	27
	.byte	24
	.byte	25
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.long	-8388609
	.align 2
.LC7:
	.long	2139095039
	.set	.LC10,.LC14
	.set	.LC11,.LC15
	.section	.rodata.cst16
	.align 4
.LC14:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC15:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC18,.LC26+4
	.section	.rodata.cst4
	.align 2
.LC19:
	.long	1056964608
	.set	.LC22,.LC26
	.set	.LC23,.LC27
	.section	.rodata.cst16
	.align 4
.LC26:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC27:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC30:
	.long	0
	.long	-1074790400
	.align 3
.LC32:
	.long	0
	.long	-1075838976
	.align 3
.LC34:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC35:
	.long	1065353216
	.align 2
.LC40:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC42:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC43:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC44:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC45:
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
