	.file	"mini-libc.c"
	.machine power8
	.machine altivec
	.section	".text"
	.align 2
	.globl make_ti
	.section	".opd","aw"
	.align 3
make_ti:
	.quad	.L.make_ti,.TOC.@tocbase
	.previous
	.type	make_ti, @function
.L.make_ti:
.LFB0:
	.cfi_startproc
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE0:
	.size	make_ti,.-.L.make_ti
	.align 2
	.globl make_tu
	.section	".opd","aw"
	.align 3
make_tu:
	.quad	.L.make_tu,.TOC.@tocbase
	.previous
	.type	make_tu, @function
.L.make_tu:
.LFB1:
	.cfi_startproc
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE1:
	.size	make_tu,.-.L.make_tu
	.align 2
	.globl memmove
	.section	".opd","aw"
	.align 3
memmove:
	.quad	.L.memmove,.TOC.@tocbase
	.previous
	.type	memmove, @function
.L.memmove:
.LFB2:
	.cfi_startproc
	cmpld %cr0,%r3,%r4
	ble- %cr0,.L5
	cmpdi %cr7,%r5,0
	add %r11,%r4,%r5
	add %r6,%r3,%r5
	beqlr- %cr7
	addi %r12,%r5,-1
	cmpldi %cr1,%r12,14
	ble- %cr1,.L7
	addi %r8,%r5,-2
	add %r9,%r4,%r8
	add %r0,%r3,%r12
	subf %r7,%r9,%r0
	addi %r10,%r7,14
	cmpldi %cr5,%r10,14
	ble- %cr5,.L7
	srdi %r7,%r5,4
	andi. %r0,%r7,0x3
	addi %r9,%r5,-16
	add %r4,%r4,%r9
	add %r10,%r3,%r9
	addi %r12,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq- %cr0,.L94
	cmpdi %cr6,%r0,1
	beq- %cr6,.L110
	cmpdi %cr7,%r0,2
	beq- %cr7,.L111
	mr %r7,%r12
	lxvw4x %vs7,0,%r4
	stxvw4x %vs7,0,%r10
	li %r9,-16
.L111:
	lxvw4x %vs8,%r4,%r9
	addi %r7,%r7,-1
	stxvw4x %vs8,%r10,%r9
	addi %r9,%r9,-16
.L110:
	cmpdi %cr1,%r7,1
	lxvw4x %vs9,%r4,%r9
	stxvw4x %vs9,%r10,%r9
	addi %r9,%r9,-16
	beq- %cr1,.L158
.L94:
	srdi %r8,%r8,2
	cmpdi %cr5,%r8,2
	mtctr %r8
	ble %cr5,.L170
	addi %r8,%r8,-1
	mtctr %r8
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r10,%r9
	addi %r8,%r9,-16
.L8:
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r10,%r8
	addi %r7,%r8,-16
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r10,%r7
	addi %r8,%r9,-48
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r10,%r8
	addi %r9,%r9,-64
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r10,%r9
	addi %r8,%r9,-16
	bdnz .L8
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r10,%r8
	addi %r7,%r8,-16
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r10,%r7
	addi %r8,%r9,-48
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r10,%r8
.L158:
	andi. %r9,%r5,0xf
	rldicr %r4,%r5,0,59
	subf %r11,%r4,%r11
	subf %r6,%r4,%r6
	subf %r5,%r4,%r5
	beqlr- %cr0
	cmpldi %cr6,%r5,1
	lbz %r10,-1(%r11)
	stb %r10,-1(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,2
	lbz %r9,-2(%r11)
	stb %r9,-2(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,3
	lbz %r7,-3(%r11)
	stb %r7,-3(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,4
	lbz %r0,-4(%r11)
	stb %r0,-4(%r6)
	beqlr- %cr5
	cmpldi %cr0,%r5,5
	lbz %r12,-5(%r11)
	stb %r12,-5(%r6)
	beqlr- %cr0
	cmpldi %cr6,%r5,6
	lbz %r8,-6(%r11)
	stb %r8,-6(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,7
	lbz %r4,-7(%r11)
	stb %r4,-7(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,8
	lbz %r10,-8(%r11)
	stb %r10,-8(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,9
	lbz %r9,-9(%r11)
	stb %r9,-9(%r6)
	beqlr- %cr5
	cmpldi %cr0,%r5,10
	lbz %r7,-10(%r11)
	stb %r7,-10(%r6)
	beqlr- %cr0
	cmpldi %cr6,%r5,11
	lbz %r0,-11(%r11)
	stb %r0,-11(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,12
	lbz %r12,-12(%r11)
	stb %r12,-12(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,13
	lbz %r8,-13(%r11)
	stb %r8,-13(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,-14(%r11)
	stb %r5,-14(%r6)
	beqlr- %cr5
	lbz %r11,-15(%r11)
	stb %r11,-15(%r6)
	blr
.L5:
	beqlr- %cr0
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r5,-1
	cmpldi %cr5,%r9,14
	ble- %cr5,.L12
	addi %r10,%r4,1
	subf %r0,%r10,%r3
	cmpldi %cr6,%r0,14
	ble- %cr6,.L12
	srdi %r8,%r5,4
	andi. %r7,%r8,0x3
	addi %r6,%r8,-1
	mr %r11,%r8
	li %r9,0
	beq- %cr0,.L106
	cmpdi %cr7,%r7,1
	beq- %cr7,.L112
	cmpdi %cr1,%r7,2
	beq- %cr1,.L113
	mr %r8,%r6
	lxvw4x %vs0,0,%r4
	stxvw4x %vs0,0,%r3
	li %r9,16
.L113:
	lxvw4x %vs1,%r4,%r9
	addi %r8,%r8,-1
	stxvw4x %vs1,%r3,%r9
	addi %r9,%r9,16
.L112:
	cmpdi %cr5,%r8,1
	lxvw4x %vs2,%r4,%r9
	stxvw4x %vs2,%r3,%r9
	addi %r9,%r9,16
	beq- %cr5,.L159
.L106:
	srdi %r10,%r11,2
	cmpdi %cr6,%r10,2
	mtctr %r10
	ble %cr6,.L171
	addi %r10,%r10,-1
	mtctr %r10
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r10,%r9,16
.L13:
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r9,%r9,64
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r10,%r9,16
	bdnz .L13
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
.L159:
	andi. %r9,%r5,0xf
	rldicr %r6,%r5,0,59
	add %r11,%r4,%r6
	add %r9,%r3,%r6
	subf %r5,%r6,%r5
	beqlr- %cr0
	cmpldi %cr7,%r5,1
	lbzx %r4,%r4,%r6
	stbx %r4,%r3,%r6
	beqlr- %cr7
	cmpldi %cr1,%r5,2
	lbz %r7,1(%r11)
	stb %r7,1(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r5,3
	lbz %r8,2(%r11)
	stb %r8,2(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r5,4
	lbz %r12,3(%r11)
	stb %r12,3(%r9)
	beqlr- %cr6
	cmpldi %cr0,%r5,5
	lbz %r0,4(%r11)
	stb %r0,4(%r9)
	beqlr- %cr0
	cmpldi %cr7,%r5,6
	lbz %r10,5(%r11)
	stb %r10,5(%r9)
	beqlr- %cr7
	cmpldi %cr1,%r5,7
	lbz %r6,6(%r11)
	stb %r6,6(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r5,8
	lbz %r4,7(%r11)
	stb %r4,7(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r5,9
	lbz %r7,8(%r11)
	stb %r7,8(%r9)
	beqlr- %cr6
	cmpldi %cr0,%r5,10
	lbz %r8,9(%r11)
	stb %r8,9(%r9)
	beqlr- %cr0
	cmpldi %cr7,%r5,11
	lbz %r12,10(%r11)
	stb %r12,10(%r9)
	beqlr- %cr7
	cmpldi %cr1,%r5,12
	lbz %r0,11(%r11)
	stb %r0,11(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r5,13
	lbz %r10,12(%r11)
	stb %r10,12(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r5,14
	lbz %r5,13(%r11)
	stb %r5,13(%r9)
	beqlr- %cr6
	lbz %r11,14(%r11)
	stb %r11,14(%r9)
	blr
.L170:
	addi %r0,%r9,-16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r10,%r9
	addi %r12,%r9,-32
	lxvw4x %vs11,%r4,%r0
	stxvw4x %vs11,%r10,%r0
	addi %r8,%r9,-48
	lxvw4x %vs12,%r4,%r12
	stxvw4x %vs12,%r10,%r12
	addi %r9,%r9,-64
	lxvw4x %vs13,%r4,%r8
	stxvw4x %vs13,%r10,%r8
	bdz .L158
	addi %r0,%r9,-16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r10,%r9
	addi %r12,%r9,-32
	lxvw4x %vs11,%r4,%r0
	stxvw4x %vs11,%r10,%r0
	addi %r8,%r9,-48
	lxvw4x %vs12,%r4,%r12
	stxvw4x %vs12,%r10,%r12
	addi %r9,%r9,-64
	lxvw4x %vs13,%r4,%r8
	stxvw4x %vs13,%r10,%r8
	bdnz .L170
	b .L158
.L171:
	addi %r12,%r9,16
	lxvw4x %vs3,%r4,%r9
	stxvw4x %vs3,%r3,%r9
	addi %r0,%r9,32
	lxvw4x %vs4,%r4,%r12
	stxvw4x %vs4,%r3,%r12
	addi %r10,%r9,48
	lxvw4x %vs5,%r4,%r0
	stxvw4x %vs5,%r3,%r0
	addi %r9,%r9,64
	lxvw4x %vs6,%r4,%r10
	stxvw4x %vs6,%r3,%r10
	bdnz .L171
	b .L159
.L7:
	andi. %r10,%r12,0x1
	bne- %cr0,.L177
.L87:
	srdi %r10,%r12,1
	addi %r9,%r10,1
	mtctr %r9
	b .L10
.L178:
	lbz %r0,-1(%r12)
	addi %r11,%r11,-2
	addi %r6,%r6,-2
	stb %r0,-1(%r5)
.L10:
	lbz %r7,-1(%r11)
	addi %r12,%r11,-1
	addi %r5,%r6,-1
	stb %r7,-1(%r6)
	bdnz .L178
	blr
.L177:
	lbzu %r4,-1(%r11)
	stbu %r4,-1(%r6)
	b .L87
.L12:
	andi. %r10,%r9,0x1
	addi %r12,%r4,-1
	addi %r8,%r3,-1
	bne- %cr0,.L179
.L99:
	srdi %r9,%r9,1
	addi %r4,%r9,1
	mtctr %r4
	b .L16
.L180:
	lbz %r5,1(%r7)
	addi %r12,%r12,2
	addi %r8,%r8,2
	stb %r5,1(%r10)
.L16:
	lbz %r0,1(%r12)
	addi %r7,%r12,1
	addi %r10,%r8,1
	stb %r0,1(%r8)
	bdnz .L180
	blr
.L179:
	lbz %r6,0(%r4)
	mr %r12,%r4
	mr %r8,%r3
	stb %r6,0(%r3)
	b .L99
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE2:
	.size	memmove,.-.L.memmove
	.align 2
	.globl memccpy
	.section	".opd","aw"
	.align 3
memccpy:
	.quad	.L.memccpy,.TOC.@tocbase
	.previous
	.type	memccpy, @function
.L.memccpy:
.LFB3:
	.cfi_startproc
	cmpdi %cr0,%r6,0
	rlwinm %r5,%r5,0,0xff
	beq- %cr0,.L182
	andi. %r9,%r6,0x1
	addi %r8,%r6,-1
	addi %r9,%r4,-1
	bne- %cr0,.L203
.L192:
	srdi %r0,%r6,1
	mtctr %r0
	b .L183
.L185:
	lbz %r12,1(%r6)
	rlwinm %r8,%r12,0,0xff
	stbu %r12,1(%r3)
	cmpw %cr7,%r8,%r5
	beq- %cr7,.L200
	addi %r3,%r3,1
	bdz .L182
.L183:
	lbz %r4,1(%r9)
	addi %r6,%r9,1
	addi %r9,%r6,1
	rlwinm %r11,%r4,0,0xff
	stb %r4,0(%r3)
	cmpw %cr6,%r11,%r5
	bne+ %cr6,.L185
.L200:
	addi %r3,%r3,1
	blr
.L203:
	lbz %r10,0(%r4)
	mr %r9,%r4
	rlwinm %r7,%r10,0,0xff
	stb %r10,0(%r3)
	cmpw %cr1,%r7,%r5
	beq- %cr1,.L200
	cmpdi %cr5,%r8,0
	addi %r3,%r3,1
	bne+ %cr5,.L192
.L182:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE3:
	.size	memccpy,.-.L.memccpy
	.align 2
	.globl memchr
	.section	".opd","aw"
	.align 3
memchr:
	.quad	.L.memchr,.TOC.@tocbase
	.previous
	.type	memchr, @function
.L.memchr:
.LFB4:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	rlwinm %r4,%r4,0,0xff
	beq- %cr0,.L208
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L225
.L211:
	srdi %r0,%r5,1
	mtctr %r0
.L205:
	lbz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lbzu %r6,1(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,1
	bdnz .L205
.L208:
	li %r3,0
	blr
.L225:
	lbz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,1
	bne+ %cr5,.L211
	b .L208
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE4:
	.size	memchr,.-.L.memchr
	.align 2
	.globl memcmp
	.section	".opd","aw"
	.align 3
memcmp:
	.quad	.L.memcmp,.TOC.@tocbase
	.previous
	.type	memcmp, @function
.L.memcmp:
.LFB5:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	beq- %cr0,.L231
	andi. %r9,%r5,0x1
	addi %r8,%r5,-1
	bne- %cr0,.L248
.L234:
	srdi %r0,%r5,1
	mtctr %r0
	b .L227
.L229:
	lbz %r10,1(%r3)
	addi %r3,%r7,1
	lbz %r9,1(%r4)
	addi %r4,%r5,1
	cmpw %cr7,%r10,%r9
	bne- %cr7,.L243
	bdz .L231
.L227:
	lbz %r10,0(%r3)
	addi %r7,%r3,1
	lbz %r9,0(%r4)
	addi %r5,%r4,1
	cmpw %cr6,%r10,%r9
	beq+ %cr6,.L229
.L243:
	subf %r3,%r9,%r10
	extsw %r3,%r3
	blr
.L248:
	lbz %r10,0(%r3)
	lbz %r9,0(%r4)
	cmpw %cr1,%r10,%r9
	bne- %cr1,.L243
	cmpdi %cr5,%r8,0
	addi %r3,%r3,1
	addi %r4,%r4,1
	bne+ %cr5,.L234
.L231:
	li %r3,0
	extsw %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE5:
	.size	memcmp,.-.L.memcmp
	.align 2
	.globl memcpy
	.section	".opd","aw"
	.align 3
memcpy:
	.quad	.L.memcpy,.TOC.@tocbase
	.previous
	.type	memcpy, @function
.L.memcpy:
.LFB6:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-128(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr %r31,%r3
	beq- %cr0,.L250
	mflr %r0
	.cfi_register 65, 0
	std %r0,144(%r1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld %r0,144(%r1)
	mtlr %r0
	.cfi_restore 65
.L250:
	addi %r1,%r1,128
	.cfi_def_cfa_offset 0
	mr %r3,%r31
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE6:
	.size	memcpy,.-.L.memcpy
	.align 2
	.globl memrchr
	.section	".opd","aw"
	.align 3
memrchr:
	.quad	.L.memrchr,.TOC.@tocbase
	.previous
	.type	memrchr, @function
.L.memrchr:
.LFB7:
	.cfi_startproc
	mr %r10,%r5
	andi. %r9,%r10,0x1
	addi %r5,%r5,-1
	add %r11,%r3,%r5
	rlwinm %r4,%r4,0,0xff
	beq- %cr0,.L260
	lbz %r8,0(%r11)
	mr %r3,%r11
	addi %r11,%r11,-1
	cmpw %cr1,%r8,%r4
	beqlr- %cr1
.L260:
	srdi %r3,%r10,1
	addi %r0,%r3,1
	mtctr %r0
	bdz .L268
.L258:
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
	bdnz .L258
.L268:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE7:
	.size	memrchr,.-.L.memrchr
	.align 2
	.globl memset
	.section	".opd","aw"
	.align 3
memset:
	.quad	.L.memset,.TOC.@tocbase
	.previous
	.type	memset, @function
.L.memset:
.LFB8:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-128(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr %r31,%r3
	beq- %cr0,.L272
	mflr %r0
	.cfi_register 65, 0
	rlwinm %r4,%r4,0,0xff
	std %r0,144(%r1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld %r0,144(%r1)
	mtlr %r0
	.cfi_restore 65
.L272:
	addi %r1,%r1,128
	.cfi_def_cfa_offset 0
	mr %r3,%r31
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE8:
	.size	memset,.-.L.memset
	.align 2
	.globl stpcpy
	.section	".opd","aw"
	.align 3
stpcpy:
	.quad	.L.stpcpy,.TOC.@tocbase
	.previous
	.type	stpcpy, @function
.L.stpcpy:
.LFB9:
	.cfi_startproc
	lbz %r9,0(%r4)
	rlwinm %r10,%r9,0,0xff
	stb %r9,0(%r3)
	cmpwi %cr0,%r10,0
	beqlr- %cr0
.L276:
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	beqlr- %cr1
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	bne+ %cr1,.L276
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-.L.stpcpy
	.align 2
	.globl strchrnul
	.section	".opd","aw"
	.align 3
strchrnul:
	.quad	.L.strchrnul,.TOC.@tocbase
	.previous
	.type	strchrnul, @function
.L.strchrnul:
.LFB10:
	.cfi_startproc
	lbz %r9,0(%r3)
	rlwinm %r4,%r4,0,0xff
	cmpwi %cr0,%r9,0
	beqlr- %cr0
	cmpw %cr1,%r9,%r4
	beqlr- %cr1
.L287:
	lbzu %r9,1(%r3)
	cmpwi %cr5,%r9,0
	beqlr- %cr5
	cmpw %cr1,%r9,%r4
	bne+ %cr1,.L287
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-.L.strchrnul
	.align 2
	.globl strchr
	.section	".opd","aw"
	.align 3
strchr:
	.quad	.L.strchr,.TOC.@tocbase
	.previous
	.type	strchr, @function
.L.strchr:
.LFB11:
	.cfi_startproc
.L290:
	lbz %r9,0(%r3)
	cmpw %cr0,%r9,%r4
	cmpwi %cr7,%r9,0
	beqlr- %cr0
	addi %r3,%r3,1
	bne+ %cr7,.L290
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE11:
	.size	strchr,.-.L.strchr
	.align 2
	.globl strcmp
	.section	".opd","aw"
	.align 3
strcmp:
	.quad	.L.strcmp,.TOC.@tocbase
	.previous
	.type	strcmp, @function
.L.strcmp:
.LFB12:
	.cfi_startproc
	lbz %r9,0(%r3)
	lbz %r10,0(%r4)
	cmpw %cr0,%r9,%r10
	beq+ %cr0,.L295
	b .L294
.L296:
	lbzu %r9,1(%r3)
	lbzu %r10,1(%r4)
	cmpw %cr5,%r9,%r10
	bne- %cr5,.L294
.L295:
	cmpwi %cr1,%r9,0
	bne+ %cr1,.L296
.L294:
	subf %r3,%r10,%r9
	extsw %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE12:
	.size	strcmp,.-.L.strcmp
	.align 2
	.globl strlen
	.section	".opd","aw"
	.align 3
strlen:
	.quad	.L.strlen,.TOC.@tocbase
	.previous
	.type	strlen, @function
.L.strlen:
.LFB13:
	.cfi_startproc
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L304
	mr %r4,%r3
.L303:
	lbzu %r10,1(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L303
	subf %r3,%r3,%r4
	blr
.L304:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE13:
	.size	strlen,.-.L.strlen
	.align 2
	.globl strncmp
	.section	".opd","aw"
	.align 3
strncmp:
	.quad	.L.strncmp,.TOC.@tocbase
	.previous
	.type	strncmp, @function
.L.strncmp:
.LFB14:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	beq- %cr0,.L314
	lbz %r10,0(%r3)
	addi %r5,%r5,-1
	add %r0,%r3,%r5
	cmpwi %cr1,%r10,0
	subf %r6,%r3,%r0
	addi %r9,%r6,1
	mtctr %r9
	bne+ %cr1,.L310
	b .L319
.L321:
	bdz .L309
	bne- %cr7,.L309
	lbzu %r10,1(%r3)
	cmpwi %cr6,%r10,0
	beq- %cr6,.L320
	mr %r4,%r8
.L310:
	lbz %r7,0(%r4)
	addi %r8,%r4,1
	cmpwi %cr5,%r7,0
	cmpw %cr7,%r7,%r10
	bne+ %cr5,.L321
.L309:
	subf %r3,%r7,%r10
	extsw %r3,%r3
	blr
.L314:
	li %r3,0
	extsw %r3,%r3
	blr
.L320:
	lbz %r7,1(%r4)
	b .L309
.L319:
	lbz %r7,0(%r4)
	b .L309
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE14:
	.size	strncmp,.-.L.strncmp
	.align 2
	.globl swab
	.section	".opd","aw"
	.align 3
swab:
	.quad	.L.swab,.TOC.@tocbase
	.previous
	.type	swab, @function
.L.swab:
.LFB15:
	.cfi_startproc
	mfvrsave %r11
	oris %r0,%r11,0xc004
	stw %r11,-4(%r1)
	mtvrsave %r0
	cmpdi %cr0,%r5,1
	ble- %cr0,.L322
	addi %r9,%r5,-2
	cmpldi %cr1,%r9,13
	srdi %r7,%r5,1
	ble- %cr1,.L324
	srdi %r8,%r5,4
	andi. %r9,%r8,0x1
	addis %r6,%r2,.LC0@toc@ha
	addi %r12,%r6,.LC0@toc@l
	addi %r10,%r8,-1
	lxvw4x %vs45,0,%r12
	li %r11,0
	bne- %cr0,.L337
.L329:
	srdi %r0,%r8,1
	mtctr %r0
.L325:
	addi %r9,%r11,16
	lxvw4x %vs32,%r3,%r11
	vperm %v1,%v0,%v0,%v13
	lxvw4x %vs32,%r3,%r9
	stxvw4x %vs33,%r4,%r11
	vperm %v1,%v0,%v0,%v13
	addi %r11,%r11,32
	stxvw4x %vs33,%r4,%r9
	bdnz .L325
.L333:
	sldi %r6,%r8,3
	cmpld %cr6,%r7,%r6
	sldi %r7,%r8,4
	add %r4,%r4,%r7
	add %r3,%r3,%r7
	subf %r5,%r7,%r5
	beq- %cr6,.L322
.L324:
	cmpdi %cr7,%r5,3
	lhbrx %r12,0,%r3
	sth %r12,0(%r4)
	ble- %cr7,.L322
	addi %r10,%r3,2
	cmpdi %cr1,%r5,5
	lhbrx %r11,0,%r10
	sth %r11,2(%r4)
	ble- %cr1,.L322
	addi %r9,%r3,4
	cmpdi %cr0,%r5,7
	lhbrx %r0,0,%r9
	sth %r0,4(%r4)
	ble- %cr0,.L322
	addi %r6,%r3,6
	cmpdi %cr5,%r5,9
	lhbrx %r7,0,%r6
	sth %r7,6(%r4)
	ble- %cr5,.L322
	addi %r8,%r3,8
	cmpdi %cr6,%r5,11
	lhbrx %r12,0,%r8
	sth %r12,8(%r4)
	ble- %cr6,.L322
	cmpdi %cr7,%r5,13
	addi %r5,%r3,10
	lhbrx %r10,0,%r5
	sth %r10,10(%r4)
	ble- %cr7,.L322
	addi %r3,%r3,12
	lhbrx %r11,0,%r3
	sth %r11,12(%r4)
.L322:
	lwz %r4,-4(%r1)
	mtvrsave %r4
	blr
.L337:
	cmpdi %cr5,%r10,0
	lxvw4x %vs32,0,%r3
	vperm %v1,%v0,%v0,%v13
	li %r11,16
	stxvw4x %vs33,0,%r4
	bne+ %cr5,.L329
	b .L333
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE15:
	.size	swab,.-.L.swab
	.align 2
	.globl isalpha
	.section	".opd","aw"
	.align 3
isalpha:
	.quad	.L.isalpha,.TOC.@tocbase
	.previous
	.type	isalpha, @function
.L.isalpha:
.LFB16:
	.cfi_startproc
	ori %r3,%r3,0x20
	addi %r0,%r3,-97
	cmplwi %cr0,%r0,25
	li %r4,1
	isel %r3,0,%r4,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE16:
	.size	isalpha,.-.L.isalpha
	.align 2
	.globl isascii
	.section	".opd","aw"
	.align 3
isascii:
	.quad	.L.isascii,.TOC.@tocbase
	.previous
	.type	isascii, @function
.L.isascii:
.LFB17:
	.cfi_startproc
	cmplwi %cr0,%r3,127
	li %r3,1
	isel %r3,0,%r3,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE17:
	.size	isascii,.-.L.isascii
	.align 2
	.globl isblank
	.section	".opd","aw"
	.align 3
isblank:
	.quad	.L.isblank,.TOC.@tocbase
	.previous
	.type	isblank, @function
.L.isblank:
.LFB18:
	.cfi_startproc
	cmpwi %cr0,%r3,32
	beq- %cr0,.L342
	cmpwi %cr1,%r3,9
	li %r9,0
	li %r3,1
	isel %r0,%r3,%r9,6
	rldicl %r3,%r0,0,63
	blr
.L342:
	li %r0,1
	rldicl %r3,%r0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE18:
	.size	isblank,.-.L.isblank
	.align 2
	.globl iscntrl
	.section	".opd","aw"
	.align 3
iscntrl:
	.quad	.L.iscntrl,.TOC.@tocbase
	.previous
	.type	iscntrl, @function
.L.iscntrl:
.LFB19:
	.cfi_startproc
	cmplwi %cr0,%r3,31
	ble- %cr0,.L345
	cmpwi %cr1,%r3,127
	li %r9,0
	li %r3,1
	isel %r0,%r3,%r9,6
	rldicl %r3,%r0,0,63
	blr
.L345:
	li %r0,1
	rldicl %r3,%r0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-.L.iscntrl
	.align 2
	.globl isdigit
	.section	".opd","aw"
	.align 3
isdigit:
	.quad	.L.isdigit,.TOC.@tocbase
	.previous
	.type	isdigit, @function
.L.isdigit:
.LFB20:
	.cfi_startproc
	addi %r3,%r3,-48
	cmplwi %cr0,%r3,9
	li %r0,1
	isel %r3,0,%r0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE20:
	.size	isdigit,.-.L.isdigit
	.align 2
	.globl isgraph
	.section	".opd","aw"
	.align 3
isgraph:
	.quad	.L.isgraph,.TOC.@tocbase
	.previous
	.type	isgraph, @function
.L.isgraph:
.LFB21:
	.cfi_startproc
	addi %r3,%r3,-33
	cmplwi %cr0,%r3,93
	li %r0,1
	isel %r3,0,%r0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE21:
	.size	isgraph,.-.L.isgraph
	.align 2
	.globl islower
	.section	".opd","aw"
	.align 3
islower:
	.quad	.L.islower,.TOC.@tocbase
	.previous
	.type	islower, @function
.L.islower:
.LFB22:
	.cfi_startproc
	addi %r3,%r3,-97
	cmplwi %cr0,%r3,25
	li %r0,1
	isel %r3,0,%r0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE22:
	.size	islower,.-.L.islower
	.align 2
	.globl isprint
	.section	".opd","aw"
	.align 3
isprint:
	.quad	.L.isprint,.TOC.@tocbase
	.previous
	.type	isprint, @function
.L.isprint:
.LFB23:
	.cfi_startproc
	addi %r3,%r3,-32
	cmplwi %cr0,%r3,94
	li %r0,1
	isel %r3,0,%r0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE23:
	.size	isprint,.-.L.isprint
	.align 2
	.globl isspace
	.section	".opd","aw"
	.align 3
isspace:
	.quad	.L.isspace,.TOC.@tocbase
	.previous
	.type	isspace, @function
.L.isspace:
.LFB24:
	.cfi_startproc
	cmpwi %cr0,%r3,32
	beq- %cr0,.L352
	addi %r3,%r3,-9
	cmplwi %cr1,%r3,4
	li %r0,1
	isel %r4,0,%r0,5
	rldicl %r3,%r4,0,63
	blr
.L352:
	li %r4,1
	rldicl %r3,%r4,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE24:
	.size	isspace,.-.L.isspace
	.align 2
	.globl isupper
	.section	".opd","aw"
	.align 3
isupper:
	.quad	.L.isupper,.TOC.@tocbase
	.previous
	.type	isupper, @function
.L.isupper:
.LFB25:
	.cfi_startproc
	addi %r3,%r3,-65
	cmplwi %cr0,%r3,25
	li %r0,1
	isel %r3,0,%r0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE25:
	.size	isupper,.-.L.isupper
	.align 2
	.globl iswcntrl
	.section	".opd","aw"
	.align 3
iswcntrl:
	.quad	.L.iswcntrl,.TOC.@tocbase
	.previous
	.type	iswcntrl, @function
.L.iswcntrl:
.LFB26:
	.cfi_startproc
	cmplwi %cr0,%r3,31
	li %r10,1
	ble- %cr0,.L355
	addi %r9,%r3,-127
	cmplwi %cr1,%r9,32
	li %r10,1
	bgt- %cr1,.L359
.L355:
	rldicl %r3,%r10,0,63
	blr
.L359:
	addi %r0,%r3,-8232
	cmplwi %cr5,%r0,1
	ble- %cr5,.L355
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
	.size	iswcntrl,.-.L.iswcntrl
	.align 2
	.globl iswdigit
	.section	".opd","aw"
	.align 3
iswdigit:
	.quad	.L.iswdigit,.TOC.@tocbase
	.previous
	.type	iswdigit, @function
.L.iswdigit:
.LFB27:
	.cfi_startproc
	addi %r3,%r3,-48
	cmplwi %cr0,%r3,9
	li %r0,1
	isel %r3,0,%r0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE27:
	.size	iswdigit,.-.L.iswdigit
	.align 2
	.globl iswprint
	.section	".opd","aw"
	.align 3
iswprint:
	.quad	.L.iswprint,.TOC.@tocbase
	.previous
	.type	iswprint, @function
.L.iswprint:
.LFB28:
	.cfi_startproc
	cmplwi %cr0,%r3,254
	ble- %cr0,.L368
	cmplwi %cr1,%r3,8231
	li %r11,1
	ble- %cr1,.L363
	addi %r10,%r3,-8234
	cmplwi %cr5,%r10,47061
	ble- %cr5,.L363
	addis %r4,%r3,0xffff
	addi %r8,%r4,8192
	cmplwi %cr6,%r8,8184
	ble- %cr6,.L363
	lis %r9,0x10
	addi %r0,%r4,4
	ori %r5,%r9,0x3
	cmplw %cr7,%r0,%r5
	li %r11,0
	bgt- %cr7,.L363
	ori %r6,%r11,0xfffe
	rlwinm %r3,%r3,0,16,30
	cmpw %cr0,%r3,%r6
	li %r7,1
	isel %r11,0,%r7,2
.L363:
	rldicl %r3,%r11,0,63
	blr
.L368:
	addi %r12,%r3,1
	rlwinm %r10,%r12,0,25,31
	cmplwi %cr1,%r10,33
	li %r4,1
	isel %r11,0,%r4,4
	rldicl %r3,%r11,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE28:
	.size	iswprint,.-.L.iswprint
	.align 2
	.globl iswxdigit
	.section	".opd","aw"
	.align 3
iswxdigit:
	.quad	.L.iswxdigit,.TOC.@tocbase
	.previous
	.type	iswxdigit, @function
.L.iswxdigit:
.LFB29:
	.cfi_startproc
	addi %r9,%r3,-48
	cmplwi %cr0,%r9,9
	ble- %cr0,.L371
	ori %r3,%r3,0x20
	addi %r0,%r3,-97
	cmplwi %cr1,%r0,5
	li %r4,1
	isel %r5,0,%r4,5
	rldicl %r3,%r5,0,63
	blr
.L371:
	li %r5,1
	rldicl %r3,%r5,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-.L.iswxdigit
	.align 2
	.globl toascii
	.section	".opd","aw"
	.align 3
toascii:
	.quad	.L.toascii,.TOC.@tocbase
	.previous
	.type	toascii, @function
.L.toascii:
.LFB30:
	.cfi_startproc
	rldicl %r3,%r3,0,57
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE30:
	.size	toascii,.-.L.toascii
	.align 2
	.globl fdim
	.section	".opd","aw"
	.align 3
fdim:
	.quad	.L.fdim,.TOC.@tocbase
	.previous
	.type	fdim, @function
.L.fdim:
.LFB31:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L377
	fcmpu %cr5,%f1,%f2
	bng- %cr5,.L380
	fsub %f1,%f1,%f2
	blr
.L380:
	xxlxor %vs1,%vs1,%vs1
	blr
.L377:
	fmr %f1,%f2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE31:
	.size	fdim,.-.L.fdim
	.align 2
	.globl fdimf
	.section	".opd","aw"
	.align 3
fdimf:
	.quad	.L.fdimf,.TOC.@tocbase
	.previous
	.type	fdimf, @function
.L.fdimf:
.LFB32:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L385
	fcmpu %cr5,%f1,%f2
	bng- %cr5,.L388
	fsubs %f1,%f1,%f2
	blr
.L388:
	xxlxor %vs1,%vs1,%vs1
	blr
.L385:
	fmr %f1,%f2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE32:
	.size	fdimf,.-.L.fdimf
	.align 2
	.globl fmax
	.section	".opd","aw"
	.align 3
fmax:
	.quad	.L.fmax,.TOC.@tocbase
	.previous
	.type	fmax, @function
.L.fmax:
.LFB33:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun- %cr0,.L394
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L395
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L391
	cmpwi %cr7,%r0,0
	fmr %f1,%f2
	bnelr- %cr7
.L395:
	fmr %f1,%f0
	blr
.L391:
	fcmpu %cr6,%f1,%f2
	bnllr- %cr6
.L394:
	fmr %f1,%f2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE33:
	.size	fmax,.-.L.fmax
	.align 2
	.globl fmaxf
	.section	".opd","aw"
	.align 3
fmaxf:
	.quad	.L.fmaxf,.TOC.@tocbase
	.previous
	.type	fmaxf, @function
.L.fmaxf:
.LFB34:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun- %cr0,.L403
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L404
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r9,%vs12
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs1
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L400
	cmpwi %cr7,%r0,0
	fmr %f1,%f2
	bnelr- %cr7
.L404:
	fmr %f1,%f0
	blr
.L400:
	fcmpu %cr6,%f0,%f2
	fmr %f1,%f0
	bnllr- %cr6
.L403:
	fmr %f1,%f2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-.L.fmaxf
	.align 2
	.globl fmaxl
	.section	".opd","aw"
	.align 3
fmaxl:
	.quad	.L.fmaxl,.TOC.@tocbase
	.previous
	.type	fmaxl, @function
.L.fmaxl:
.LFB35:
	.cfi_startproc
	fmr %f9,%f2
	fmr %f8,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fmr %f0,%f8
	fcmpu %cr0,%f0,%f0
	bun- %cr0,.L414
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun- %cr1,.L413
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L409
	cmpwi %cr7,%r0,0
	bne- %cr7,.L414
.L413:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
.L409:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt- %cr6,.L414
	fmr %f11,%f2
	fmr %f10,%f1
.L414:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-.L.fmaxl
	.align 2
	.globl fmin
	.section	".opd","aw"
	.align 3
fmin:
	.quad	.L.fmin,.TOC.@tocbase
	.previous
	.type	fmin, @function
.L.fmin:
.LFB36:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	bun- %cr0,.L420
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	bne- %cr5,.L424
	fcmpu %cr6,%f1,%f2
	fmr %f0,%f2
	bnl- %cr6,.L419
	fmr %f0,%f1
.L419:
	fmr %f1,%f0
	blr
.L424:
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L420:
	fmr %f1,%f2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE36:
	.size	fmin,.-.L.fmin
	.align 2
	.globl fminf
	.section	".opd","aw"
	.align 3
fminf:
	.quad	.L.fminf,.TOC.@tocbase
	.previous
	.type	fminf, @function
.L.fminf:
.LFB37:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	bun- %cr0,.L430
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r9,%vs0
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs3
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	bne- %cr5,.L434
	fcmpu %cr6,%f1,%f2
	bnl- %cr6,.L429
	fmr %f2,%f1
.L429:
	fmr %f1,%f2
	blr
.L434:
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L430:
	fmr %f1,%f2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE37:
	.size	fminf,.-.L.fminf
	.align 2
	.globl fminl
	.section	".opd","aw"
	.align 3
fminl:
	.quad	.L.fminl,.TOC.@tocbase
	.previous
	.type	fminl, @function
.L.fminl:
.LFB38:
	.cfi_startproc
	fmr %f0,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fcmpu %cr0,%f0,%f0
	bun- %cr0,.L440
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr- %cr1
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L437
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L440:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
.L437:
	fcmpu %cr6,%f1,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f2,%f11
	bltlr- %cr6
	fmr %f1,%f10
	fmr %f2,%f11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-.L.fminl
	.align 2
	.globl l64a
	.section	".opd","aw"
	.align 3
l64a:
	.quad	.L.l64a,.TOC.@tocbase
	.previous
	.type	l64a, @function
.L.l64a:
.LFB39:
	.cfi_startproc
	mr %r9,%r3
	cmpwi %cr0,%r9,0
	addis %r3,%r2,.LANCHOR0@toc@ha
	addi %r3,%r3,.LANCHOR0@toc@l
	mr %r10,%r3
	beq- %cr0,.L444
	addis %r7,%r2,.LANCHOR1@toc@ha
	addi %r4,%r7,.LANCHOR1@toc@l
.L445:
	rldicl %r8,%r9,0,58
	srwi %r9,%r9,6
	lbzx %r0,%r4,%r8
	cmpwi %cr1,%r9,0
	stb %r0,0(%r10)
	addi %r10,%r10,1
	bne+ %cr1,.L445
.L444:
	li %r5,0
	stb %r5,0(%r10)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-.L.l64a
	.align 2
	.globl srand
	.section	".opd","aw"
	.align 3
srand:
	.quad	.L.srand,.TOC.@tocbase
	.previous
	.type	srand, @function
.L.srand:
.LFB40:
	.cfi_startproc
	addi %r3,%r3,-1
	rldicl %r0,%r3,0,32
	addis %r9,%r2,.LANCHOR0+8@toc@ha
	std %r0,.LANCHOR0+8@toc@l(%r9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE40:
	.size	srand,.-.L.srand
	.align 2
	.globl rand
	.section	".opd","aw"
	.align 3
rand:
	.quad	.L.rand,.TOC.@tocbase
	.previous
	.type	rand, @function
.L.rand:
.LFB41:
	.cfi_startproc
	addis %r7,%r2,.LANCHOR0+8@toc@ha
	ld %r10,.LANCHOR0+8@toc@l(%r7)
	sldi %r9,%r10,4
	subf %r0,%r10,%r9
	sldi %r8,%r0,6
	subf %r3,%r0,%r8
	sldi %r4,%r3,7
	add %r5,%r3,%r4
	sldi %r6,%r5,2
	add %r11,%r6,%r10
	sldi %r12,%r11,6
	subf %r9,%r11,%r12
	sldi %r0,%r9,7
	add %r8,%r0,%r10
	sldi %r3,%r8,2
	add %r4,%r3,%r10
	sldi %r5,%r4,3
	subf %r6,%r4,%r5
	sldi %r11,%r6,3
	subf %r12,%r6,%r11
	sldi %r9,%r12,6
	subf %r0,%r12,%r9
	sldi %r8,%r0,2
	subf %r3,%r10,%r8
	sldi %r4,%r3,7
	subf %r5,%r10,%r4
	sldi %r6,%r5,2
	add %r11,%r6,%r10
	sldi %r12,%r11,2
	subf %r9,%r10,%r12
	sldi %r0,%r9,2
	subf %r8,%r10,%r0
	sldi %r3,%r8,2
	add %r10,%r3,%r10
	addi %r4,%r10,1
	std %r4,.LANCHOR0+8@toc@l(%r7)
	srdi %r3,%r4,33
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE41:
	.size	rand,.-.L.rand
	.align 2
	.globl insque
	.section	".opd","aw"
	.align 3
insque:
	.quad	.L.insque,.TOC.@tocbase
	.previous
	.type	insque, @function
.L.insque:
.LFB42:
	.cfi_startproc
	cmpdi %cr0,%r4,0
	beq- %cr0,.L456
	ld %r9,0(%r4)
	std %r4,8(%r3)
	std %r9,0(%r3)
	std %r3,0(%r4)
	ld %r4,0(%r3)
	cmpdi %cr1,%r4,0
	beqlr- %cr1
	std %r3,8(%r4)
	blr
.L456:
	std %r4,8(%r3)
	std %r4,0(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE42:
	.size	insque,.-.L.insque
	.align 2
	.globl remque
	.section	".opd","aw"
	.align 3
remque:
	.quad	.L.remque,.TOC.@tocbase
	.previous
	.type	remque, @function
.L.remque:
.LFB43:
	.cfi_startproc
	ld %r9,0(%r3)
	cmpdi %cr0,%r9,0
	beq- %cr0,.L458
	ld %r10,8(%r3)
	std %r10,8(%r9)
.L458:
	ld %r3,8(%r3)
	cmpdi %cr1,%r3,0
	beqlr- %cr1
	std %r9,0(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE43:
	.size	remque,.-.L.remque
	.align 2
	.globl lsearch
	.section	".opd","aw"
	.align 3
lsearch:
	.quad	.L.lsearch,.TOC.@tocbase
	.previous
	.type	lsearch, @function
.L.lsearch:
.LFB44:
	.cfi_startproc
	std %r27,-40(%r1)
	.cfi_offset 27, -40
	ld %r27,0(%r5)
	mflr %r0
	cmpdi %cr0,%r27,0
	std %r23,-72(%r1)
	std %r24,-64(%r1)
	.cfi_register 65, 0
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr %r23,%r4
	std %r26,-48(%r1)
	mr %r24,%r5
	std %r28,-32(%r1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr %r26,%r3
	std %r0,16(%r1)
	mr %r28,%r6
	std %r25,-56(%r1)
	stdu %r1,-192(%r1)
	.cfi_def_cfa_offset 192
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	std %r2,40(%r1)
	beq- %cr0,.L467
	std %r29,168(%r1)
	.cfi_offset 29, -24
	li %r29,0
	std %r30,176(%r1)
	.cfi_offset 30, -16
	mr %r30,%r7
	std %r31,184(%r1)
	.cfi_offset 31, -8
	mr %r31,%r4
	b .L469
.L481:
	beq- %cr7,.L480
.L469:
	ld %r9,0(%r30)
	mr %r4,%r31
	ld %r11,16(%r30)
	mr %r3,%r26
	mtctr %r9
	addi %r29,%r29,1
	mr %r25,%r31
	add %r31,%r31,%r28
	ld 2,8(%r30)
	bctrl
	ld 2,40(1)
	cmpld %cr7,%r27,%r29
	cmpwi %cr1,%r3,0
	bne+ %cr1,.L481
	ld %r29,168(%r1)
	.cfi_restore 29
	ld %r30,176(%r1)
	.cfi_restore 30
	ld %r31,184(%r1)
	.cfi_restore 31
.L466:
	addi %r1,%r1,192
	.cfi_def_cfa_offset 0
	ld %r5,16(%r1)
	mr %r3,%r25
	ld %r23,-72(%r1)
	mtlr %r5
	.cfi_restore 65
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r28,-32(%r1)
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.L480:
	.cfi_def_cfa_offset 192
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
	ld %r29,168(%r1)
	.cfi_restore 29
	ld %r30,176(%r1)
	.cfi_restore 30
	ld %r31,184(%r1)
	.cfi_restore 31
.L467:
	mulld %r3,%r28,%r27
	cmpdi %cr5,%r28,0
	addi %r4,%r27,1
	std %r4,0(%r24)
	add %r25,%r23,%r3
	beq- %cr5,.L466
	mr %r5,%r28
	mr %r4,%r26
	mr %r3,%r25
	bl memmove
	nop
	addi %r1,%r1,192
	.cfi_def_cfa_offset 0
	ld %r5,16(%r1)
	mr %r3,%r25
	ld %r23,-72(%r1)
	mtlr %r5
	.cfi_restore 65
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	ld %r28,-32(%r1)
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
	.size	lsearch,.-.L.lsearch
	.align 2
	.globl lfind
	.section	".opd","aw"
	.align 3
lfind:
	.quad	.L.lfind,.TOC.@tocbase
	.previous
	.type	lfind, @function
.L.lfind:
.LFB45:
	.cfi_startproc
	std %r26,-48(%r1)
	.cfi_offset 26, -48
	ld %r26,0(%r5)
	std %r25,-56(%r1)
	cmpdi %cr0,%r26,0
	stdu %r1,-176(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	beq- %cr0,.L483
	mflr %r0
	.cfi_register 65, 0
	std %r27,136(%r1)
	.cfi_offset 27, -40
	mr %r27,%r6
	std %r28,144(%r1)
	.cfi_offset 28, -32
	mr %r28,%r3
	std %r29,152(%r1)
	.cfi_offset 29, -24
	li %r29,0
	std %r30,160(%r1)
	.cfi_offset 30, -16
	mr %r30,%r7
	std %r31,168(%r1)
	.cfi_offset 31, -8
	mr %r31,%r4
	std %r0,192(%r1)
	.cfi_offset 65, 16
	std %r2,40(%r1)
	b .L485
.L493:
	beq- %cr7,.L492
.L485:
	ld %r9,0(%r30)
	mr %r4,%r31
	ld %r11,16(%r30)
	mr %r3,%r28
	mtctr %r9
	addi %r29,%r29,1
	mr %r25,%r31
	add %r31,%r31,%r27
	ld 2,8(%r30)
	bctrl
	ld 2,40(1)
	cmpld %cr7,%r26,%r29
	cmpwi %cr1,%r3,0
	bne+ %cr1,.L493
	ld %r3,192(%r1)
	ld %r27,136(%r1)
	.cfi_remember_state
	.cfi_restore 27
	mtlr %r3
	.cfi_restore 65
	mr %r3,%r25
	ld %r28,144(%r1)
	.cfi_restore 28
	ld %r29,152(%r1)
	.cfi_restore 29
	ld %r30,160(%r1)
	.cfi_restore 30
	ld %r31,168(%r1)
	.cfi_restore 31
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	.cfi_restore 26
	.cfi_restore 25
	blr
.L492:
	.cfi_restore_state
	ld %r0,192(%r1)
	ld %r27,136(%r1)
	.cfi_restore 27
	mtlr %r0
	.cfi_restore 65
	ld %r28,144(%r1)
	.cfi_restore 28
	ld %r29,152(%r1)
	.cfi_restore 29
	ld %r30,160(%r1)
	.cfi_restore 30
	ld %r31,168(%r1)
	.cfi_restore 31
.L483:
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	li %r25,0
	ld %r26,-48(%r1)
	mr %r3,%r25
	ld %r25,-56(%r1)
	.cfi_restore 26
	.cfi_restore 25
	blr
	.long 0
	.byte 0,0,0,1,128,7,0,0
	.cfi_endproc
.LFE45:
	.size	lfind,.-.L.lfind
	.align 2
	.globl abs
	.section	".opd","aw"
	.align 3
abs:
	.quad	.L.abs,.TOC.@tocbase
	.previous
	.type	abs, @function
.L.abs:
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
	.size	abs,.-.L.abs
	.align 2
	.globl atoi
	.section	".opd","aw"
	.align 3
atoi:
	.quad	.L.atoi,.TOC.@tocbase
	.previous
	.type	atoi, @function
.L.atoi:
.LFB47:
	.cfi_startproc
.L502:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L496
	ble- %cr7,.L496
	cmpwi %cr1,%r10,43
	beq- %cr1,.L497
	cmpwi %cr6,%r10,45
	bne- %cr6,.L517
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L507
	li %r11,1
.L500:
	li %r0,0
.L504:
	addi %r7,%r10,-48
	lbzu %r10,1(%r3)
	slwi %r12,%r0,2
	addi %r6,%r10,-48
	cmplwi %cr1,%r6,9
	add %r8,%r12,%r0
	slwi %r9,%r8,1
	subf %r0,%r7,%r9
	ble+ %cr1,.L504
	cmpwi %cr5,%r11,0
	subf %r10,%r9,%r7
	isel %r3,%r10,%r0,22
.L503:
	extsw %r3,%r3
	blr
.L496:
	addi %r3,%r3,1
	b .L502
.L517:
	addi %r5,%r10,-48
	cmplwi %cr7,%r5,9
	li %r11,0
	ble+ %cr7,.L500
.L507:
	li %r3,0
	b .L503
.L497:
	lbz %r10,1(%r3)
	li %r11,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L500
	li %r3,0
	b .L503
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE47:
	.size	atoi,.-.L.atoi
	.align 2
	.globl atol
	.section	".opd","aw"
	.align 3
atol:
	.quad	.L.atol,.TOC.@tocbase
	.previous
	.type	atol, @function
.L.atol:
.LFB48:
	.cfi_startproc
.L525:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L519
	ble- %cr7,.L519
	cmpwi %cr1,%r10,43
	beq- %cr1,.L520
	cmpwi %cr6,%r10,45
	bne- %cr6,.L540
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L530
	li %r11,1
.L523:
	li %r4,0
.L527:
	addi %r8,%r10,-48
	lbzu %r10,1(%r3)
	sldi %r12,%r4,2
	addi %r6,%r10,-48
	cmplwi %cr1,%r6,9
	add %r7,%r12,%r4
	extsw %r0,%r8
	sldi %r9,%r7,1
	subf %r4,%r0,%r9
	ble+ %cr1,.L527
	cmpwi %cr5,%r11,0
	subf %r3,%r9,%r0
	isel %r3,%r3,%r4,22
	blr
.L519:
	addi %r3,%r3,1
	b .L525
.L540:
	addi %r5,%r10,-48
	cmplwi %cr7,%r5,9
	li %r11,0
	ble+ %cr7,.L523
.L530:
	li %r3,0
	blr
.L520:
	lbz %r10,1(%r3)
	li %r11,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L523
	b .L530
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE48:
	.size	atol,.-.L.atol
	.align 2
	.globl atoll
	.section	".opd","aw"
	.align 3
atoll:
	.quad	.L.atoll,.TOC.@tocbase
	.previous
	.type	atoll, @function
.L.atoll:
.LFB171:
	.cfi_startproc
.L546:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L542
	ble- %cr7,.L542
	cmpwi %cr1,%r10,43
	beq- %cr1,.L543
	cmpwi %cr6,%r10,45
	beq- %cr6,.L544
	addi %r5,%r10,-48
	cmplwi %cr7,%r5,9
	li %r11,0
	bgt- %cr7,.L553
.L547:
	li %r4,0
.L550:
	addi %r8,%r10,-48
	lbzu %r10,1(%r3)
	sldi %r12,%r4,2
	addi %r6,%r10,-48
	cmplwi %cr1,%r6,9
	add %r7,%r12,%r4
	extsw %r0,%r8
	sldi %r9,%r7,1
	subf %r4,%r0,%r9
	ble+ %cr1,.L550
	cmpwi %cr5,%r11,0
	subf %r3,%r9,%r0
	isel %r3,%r3,%r4,22
	blr
.L542:
	addi %r3,%r3,1
	b .L546
.L544:
	lbz %r10,1(%r3)
	li %r11,1
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	ble+ %cr0,.L547
.L553:
	li %r3,0
	blr
.L543:
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	bgt- %cr5,.L553
	li %r11,0
	b .L547
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE171:
	.size	atoll,.-.L.atoll
	.align 2
	.globl bsearch
	.section	".opd","aw"
	.align 3
bsearch:
	.quad	.L.bsearch,.TOC.@tocbase
	.previous
	.type	bsearch, @function
.L.bsearch:
.LFB50:
	.cfi_startproc
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	mr. %r31,%r5
	std %r30,-16(%r1)
	stdu %r1,-176(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- %cr0,.L564
	mflr %r0
	.cfi_register 65, 0
	std %r25,120(%r1)
	.cfi_offset 25, -56
	mr %r25,%r3
	std %r26,128(%r1)
	.cfi_offset 26, -48
	mr %r26,%r6
	std %r27,136(%r1)
	.cfi_offset 27, -40
	mr %r27,%r4
	std %r28,144(%r1)
	.cfi_offset 28, -32
	mr %r28,%r7
	std %r0,192(%r1)
	.cfi_offset 65, 16
	std %r2,40(%r1)
	std %r29,152(%r1)
	.cfi_offset 29, -24
	b .L567
.L576:
	beq- %cr1,.L574
	cmpdi %cr5,%r31,0
	add %r27,%r30,%r26
	beq- %cr5,.L575
.L567:
	srdi %r29,%r31,1
	ld %r9,0(%r28)
	mulld %r30,%r29,%r26
	ld %r11,16(%r28)
	mr %r3,%r25
	mtctr %r9
	addi %r31,%r31,-1
	subf %r31,%r29,%r31
	add %r30,%r27,%r30
	mr %r4,%r30
	ld 2,8(%r28)
	bctrl
	ld 2,40(1)
	cmpwi %cr1,%r3,0
	bge+ %cr1,.L576
	mr %r31,%r29
	cmpdi %cr5,%r31,0
	bne+ %cr5,.L567
.L575:
	ld %r3,192(%r1)
	ld %r25,120(%r1)
	.cfi_restore 25
	mtlr %r3
	.cfi_restore 65
	ld %r26,128(%r1)
	.cfi_restore 26
	ld %r27,136(%r1)
	.cfi_restore 27
	ld %r28,144(%r1)
	.cfi_restore 28
	ld %r29,152(%r1)
	.cfi_restore 29
.L564:
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	li %r30,0
	ld %r31,-8(%r1)
	mr %r3,%r30
	ld %r30,-16(%r1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L574:
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld %r0,192(%r1)
	mr %r3,%r30
	ld %r25,120(%r1)
	.cfi_restore 25
	ld %r26,128(%r1)
	.cfi_restore 26
	ld %r27,136(%r1)
	.cfi_restore 27
	ld %r28,144(%r1)
	.cfi_restore 28
	ld %r29,152(%r1)
	.cfi_restore 29
	addi %r1,%r1,176
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
	.size	bsearch,.-.L.bsearch
	.align 2
	.globl bsearch_r
	.section	".opd","aw"
	.align 3
bsearch_r:
	.quad	.L.bsearch_r,.TOC.@tocbase
	.previous
	.type	bsearch_r, @function
.L.bsearch_r:
.LFB51:
	.cfi_startproc
	cmpwi %cr0,%r5,0
	std %r24,-64(%r1)
	std %r25,-56(%r1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	mr %r24,%r8
	std %r26,-48(%r1)
	mr %r25,%r3
	std %r27,-40(%r1)
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr %r26,%r6
	std %r29,-24(%r1)
	mr %r27,%r4
	std %r31,-8(%r1)
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr %r29,%r7
	std %r30,-16(%r1)
	mr %r31,%r5
	stdu %r1,-176(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- %cr0,.L582
	mflr %r0
	.cfi_register 65, 0
	std %r2,40(%r1)
	std %r0,192(%r1)
	.cfi_offset 65, 16
	std %r28,144(%r1)
	.cfi_offset 28, -32
.L587:
	srawi %r30,%r31,1
	ld %r9,0(%r29)
	mulld %r0,%r30,%r26
	ld %r11,16(%r29)
	mr %r5,%r24
	mtctr %r9
	mr %r3,%r25
	srawi %r28,%r31,1
	addi %r31,%r31,-1
	srawi %r31,%r31,1
	add %r30,%r27,%r0
	mr %r4,%r30
	ld 2,8(%r29)
	bctrl
	ld 2,40(1)
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	beq- %cr1,.L591
	cmpwi %cr5,%r28,0
	ble- %cr1,.L580
	add %r27,%r30,%r26
	bne+ %cr7,.L587
.L592:
	ld %r3,192(%r1)
	ld %r28,144(%r1)
	.cfi_restore 28
	mtlr %r3
	.cfi_restore 65
.L582:
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	li %r30,0
	ld %r24,-64(%r1)
	mr %r3,%r30
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
.L580:
	.cfi_def_cfa_offset 176
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
	bne+ %cr5,.L587
	b .L592
.L591:
	ld %r4,192(%r1)
	mr %r3,%r30
	ld %r28,144(%r1)
	.cfi_restore 28
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	mtlr %r4
	.cfi_restore 65
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
	.long 0
	.byte 0,0,0,1,128,8,0,0
	.cfi_endproc
.LFE51:
	.size	bsearch_r,.-.L.bsearch_r
	.align 2
	.globl div
	.section	".opd","aw"
	.align 3
div:
	.quad	.L.div,.TOC.@tocbase
	.previous
	.type	div, @function
.L.div:
.LFB52:
	.cfi_startproc
	divw %r10,%r4,%r5
	mullw %r5,%r10,%r5
	stw %r10,0(%r3)
	subf %r4,%r5,%r4
	stw %r4,4(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE52:
	.size	div,.-.L.div
	.align 2
	.globl imaxabs
	.section	".opd","aw"
	.align 3
imaxabs:
	.quad	.L.imaxabs,.TOC.@tocbase
	.previous
	.type	imaxabs, @function
.L.imaxabs:
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
	.size	imaxabs,.-.L.imaxabs
	.align 2
	.globl imaxdiv
	.section	".opd","aw"
	.align 3
imaxdiv:
	.quad	.L.imaxdiv,.TOC.@tocbase
	.previous
	.type	imaxdiv, @function
.L.imaxdiv:
.LFB54:
	.cfi_startproc
	divd %r10,%r4,%r5
	mulld %r5,%r10,%r5
	std %r10,0(%r3)
	subf %r4,%r5,%r4
	std %r4,8(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-.L.imaxdiv
	.align 2
	.globl labs
	.section	".opd","aw"
	.align 3
labs:
	.quad	.L.labs,.TOC.@tocbase
	.previous
	.type	labs, @function
.L.labs:
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
	.size	labs,.-.L.labs
	.align 2
	.globl ldiv
	.section	".opd","aw"
	.align 3
ldiv:
	.quad	.L.ldiv,.TOC.@tocbase
	.previous
	.type	ldiv, @function
.L.ldiv:
.LFB56:
	.cfi_startproc
	divd %r10,%r4,%r5
	mulld %r5,%r10,%r5
	std %r10,0(%r3)
	subf %r4,%r5,%r4
	std %r4,8(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE56:
	.size	ldiv,.-.L.ldiv
	.align 2
	.globl llabs
	.section	".opd","aw"
	.align 3
llabs:
	.quad	.L.llabs,.TOC.@tocbase
	.previous
	.type	llabs, @function
.L.llabs:
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
	.size	llabs,.-.L.llabs
	.align 2
	.globl lldiv
	.section	".opd","aw"
	.align 3
lldiv:
	.quad	.L.lldiv,.TOC.@tocbase
	.previous
	.type	lldiv, @function
.L.lldiv:
.LFB58:
	.cfi_startproc
	divd %r10,%r4,%r5
	mulld %r5,%r10,%r5
	std %r10,0(%r3)
	subf %r4,%r5,%r4
	std %r4,8(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE58:
	.size	lldiv,.-.L.lldiv
	.align 2
	.globl wcschr
	.section	".opd","aw"
	.align 3
wcschr:
	.quad	.L.wcschr,.TOC.@tocbase
	.previous
	.type	wcschr, @function
.L.wcschr:
.LFB59:
	.cfi_startproc
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L604
.L601:
	cmpw %cr1,%r9,%r4
	beqlr- %cr1
	lwzu %r9,4(%r3)
	cmpwi %cr5,%r9,0
	bne+ %cr5,.L601
.L604:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE59:
	.size	wcschr,.-.L.wcschr
	.align 2
	.globl wcscmp
	.section	".opd","aw"
	.align 3
wcscmp:
	.quad	.L.wcscmp,.TOC.@tocbase
	.previous
	.type	wcscmp, @function
.L.wcscmp:
.LFB60:
	.cfi_startproc
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr0,%r9,%r10
	beq+ %cr0,.L611
	b .L610
.L612:
	lwzu %r9,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r9,%r0
	bne- %cr0,.L610
.L611:
	cmpwi %cr7,%r9,0
	bne+ %cr7,.L612
.L610:
	li %r4,-1
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
	isel %r5,%r4,%r3,0
	extsw %r3,%r5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-.L.wcscmp
	.align 2
	.globl wcscpy
	.section	".opd","aw"
	.align 3
wcscpy:
	.quad	.L.wcscpy,.TOC.@tocbase
	.previous
	.type	wcscpy, @function
.L.wcscpy:
.LFB61:
	.cfi_startproc
	addi %r4,%r4,-4
	addi %r10,%r3,-4
.L616:
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	beqlr- %cr0
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	bne+ %cr0,.L616
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-.L.wcscpy
	.align 2
	.globl wcslen
	.section	".opd","aw"
	.align 3
wcslen:
	.quad	.L.wcslen,.TOC.@tocbase
	.previous
	.type	wcslen, @function
.L.wcslen:
.LFB62:
	.cfi_startproc
	lwz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	beq- %cr0,.L622
	mr %r4,%r3
.L621:
	lwzu %r10,4(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L621
	subf %r3,%r3,%r4
	sradi %r3,%r3,2
	blr
.L622:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE62:
	.size	wcslen,.-.L.wcslen
	.align 2
	.globl wcsncmp
	.section	".opd","aw"
	.align 3
wcsncmp:
	.quad	.L.wcsncmp,.TOC.@tocbase
	.previous
	.type	wcsncmp, @function
.L.wcsncmp:
.LFB63:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	beq- %cr0,.L634
	mtctr %r5
	b .L625
.L637:
	beq- %cr7,.L627
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L634
.L625:
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpwi %cr7,%r9,0
	cmpw %cr1,%r9,%r10
	beq+ %cr1,.L637
.L627:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	bge- %cr5,.L629
	li %r4,-1
	extsw %r3,%r4
	blr
.L629:
	mfcr %r4,4
	rlwinm %r4,%r4,22,1
	extsw %r3,%r4
	blr
.L634:
	li %r4,0
	extsw %r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-.L.wcsncmp
	.align 2
	.globl wmemchr
	.section	".opd","aw"
	.align 3
wmemchr:
	.quad	.L.wmemchr,.TOC.@tocbase
	.previous
	.type	wmemchr, @function
.L.wmemchr:
.LFB64:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	beq- %cr0,.L642
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L659
.L645:
	srdi %r0,%r5,1
	mtctr %r0
.L639:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,4
	bdnz .L639
.L642:
	li %r3,0
	blr
.L659:
	lwz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	bne+ %cr5,.L645
	b .L642
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-.L.wmemchr
	.align 2
	.globl wmemcmp
	.section	".opd","aw"
	.align 3
wmemcmp:
	.quad	.L.wmemcmp,.TOC.@tocbase
	.previous
	.type	wmemcmp, @function
.L.wmemcmp:
.LFB65:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	beq- %cr0,.L666
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L683
.L669:
	srdi %r0,%r5,1
	mtctr %r0
	b .L661
.L663:
	lwz %r12,4(%r3)
	addi %r3,%r7,4
	lwz %r9,4(%r4)
	addi %r4,%r11,4
	cmpw %cr1,%r12,%r9
	bne- %cr1,.L678
	bdz .L666
.L661:
	lwz %r5,0(%r3)
	addi %r7,%r3,4
	lwz %r6,0(%r4)
	addi %r11,%r4,4
	cmpw %cr1,%r5,%r6
	beq+ %cr1,.L663
.L678:
	li %r4,-1
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	isel %r8,%r4,%r3,4
	extsw %r3,%r8
	blr
.L683:
	lwz %r8,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r8,%r10
	bne- %cr1,.L678
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne+ %cr5,.L669
.L666:
	li %r8,0
	extsw %r3,%r8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-.L.wmemcmp
	.align 2
	.globl wmemcpy
	.section	".opd","aw"
	.align 3
wmemcpy:
	.quad	.L.wmemcpy,.TOC.@tocbase
	.previous
	.type	wmemcpy, @function
.L.wmemcpy:
.LFB66:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-128(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr %r31,%r3
	beq- %cr0,.L685
	mflr %r0
	.cfi_register 65, 0
	sldi %r5,%r5,2
	std %r0,144(%r1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld %r0,144(%r1)
	mtlr %r0
	.cfi_restore 65
.L685:
	addi %r1,%r1,128
	.cfi_def_cfa_offset 0
	mr %r3,%r31
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-.L.wmemcpy
	.align 2
	.globl wmemmove
	.section	".opd","aw"
	.align 3
wmemmove:
	.quad	.L.wmemmove,.TOC.@tocbase
	.previous
	.type	wmemmove, @function
.L.wmemmove:
.LFB67:
	.cfi_startproc
	cmpld %cr0,%r3,%r4
	beqlr- %cr0
	sldi %r9,%r5,2
	subf %r10,%r4,%r3
	cmpld %cr1,%r10,%r9
	addi %r11,%r5,-1
	bge- %cr1,.L793
	cmpdi %cr6,%r5,0
	beqlr- %cr6
	cmpldi %cr7,%r11,4
	ble- %cr7,.L695
	addi %r0,%r9,-4
	addi %r6,%r9,-8
	add %r7,%r3,%r0
	add %r12,%r4,%r6
	subf %r10,%r12,%r7
	addi %r8,%r10,8
	cmpldi %cr1,%r8,8
	ble- %cr1,.L695
	srdi %r6,%r5,2
	andi. %r0,%r6,0x3
	addi %r9,%r9,-16
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L734
	cmpdi %cr5,%r0,1
	beq- %cr5,.L750
	cmpdi %cr6,%r0,2
	beq- %cr6,.L751
	mr %r6,%r12
	lxvw4x %vs7,0,%r8
	stxvw4x %vs7,0,%r9
	li %r10,-16
.L751:
	lxvw4x %vs8,%r8,%r10
	addi %r6,%r6,-1
	stxvw4x %vs8,%r9,%r10
	addi %r10,%r10,-16
.L750:
	cmpdi %cr7,%r6,1
	lxvw4x %vs9,%r8,%r10
	stxvw4x %vs9,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr7,.L773
.L734:
	srdi %r7,%r7,2
	cmpdi %cr1,%r7,2
	mtctr %r7
	ble %cr1,.L785
	addi %r7,%r7,-1
	mtctr %r7
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
.L696:
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L696
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
.L773:
	andi. %r9,%r5,0x3
	rldicr %r5,%r5,0,61
	subf %r11,%r5,%r11
	beqlr- %cr0
	cmpdi %cr5,%r11,0
	sldi %r8,%r11,2
	lwzx %r10,%r4,%r8
	stwx %r10,%r3,%r8
	beqlr- %cr5
	addi %r6,%r11,-1
	cmpdi %cr6,%r6,0
	sldi %r9,%r6,2
	lwzx %r0,%r4,%r9
	stwx %r0,%r3,%r9
	beqlr- %cr6
	addi %r12,%r9,-4
	lwzx %r4,%r4,%r12
	stwx %r4,%r3,%r12
	blr
.L793:
	cmpdi %cr5,%r5,0
	beqlr- %cr5
	cmpldi %cr6,%r11,3
	ble- %cr6,.L701
	addi %r0,%r4,4
	subf %r6,%r0,%r3
	cmpldi %cr7,%r6,8
	ble- %cr7,.L701
	srdi %r8,%r5,2
	andi. %r7,%r8,0x3
	addi %r12,%r8,-1
	mr %r10,%r8
	li %r9,0
	beq- %cr0,.L746
	cmpdi %cr1,%r7,1
	beq- %cr1,.L752
	cmpdi %cr5,%r7,2
	beq- %cr5,.L753
	mr %r8,%r12
	lxvw4x %vs0,0,%r4
	stxvw4x %vs0,0,%r3
	li %r9,16
.L753:
	lxvw4x %vs1,%r4,%r9
	addi %r8,%r8,-1
	stxvw4x %vs1,%r3,%r9
	addi %r9,%r9,16
.L752:
	cmpdi %cr6,%r8,1
	lxvw4x %vs2,%r4,%r9
	stxvw4x %vs2,%r3,%r9
	addi %r9,%r9,16
	beq- %cr6,.L774
.L746:
	srdi %r10,%r10,2
	cmpdi %cr7,%r10,2
	mtctr %r10
	ble %cr7,.L786
	addi %r10,%r10,-1
	mtctr %r10
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r10,%r9,16
.L702:
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r9,%r9,64
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r10,%r9,16
	bdnz .L702
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvw4x %vs0,%r4,%r8
	stxvw4x %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
.L774:
	andi. %r9,%r5,0x3
	rldicr %r5,%r5,0,61
	sldi %r9,%r5,2
	subf %r11,%r5,%r11
	add %r12,%r4,%r9
	add %r10,%r3,%r9
	beqlr- %cr0
	cmpdi %cr1,%r11,0
	lwzx %r4,%r4,%r9
	stwx %r4,%r3,%r9
	beqlr- %cr1
	cmpldi %cr5,%r11,1
	lwz %r8,4(%r12)
	stw %r8,4(%r10)
	beqlr- %cr5
	lwz %r0,8(%r12)
	stw %r0,8(%r10)
	blr
.L786:
	addi %r0,%r9,16
	lxvw4x %vs3,%r4,%r9
	stxvw4x %vs3,%r3,%r9
	addi %r6,%r9,32
	lxvw4x %vs4,%r4,%r0
	stxvw4x %vs4,%r3,%r0
	addi %r7,%r9,48
	lxvw4x %vs5,%r4,%r6
	stxvw4x %vs5,%r3,%r6
	addi %r9,%r9,64
	lxvw4x %vs6,%r4,%r7
	stxvw4x %vs6,%r3,%r7
	bdz .L774
	addi %r0,%r9,16
	lxvw4x %vs3,%r4,%r9
	stxvw4x %vs3,%r3,%r9
	addi %r6,%r9,32
	lxvw4x %vs4,%r4,%r0
	stxvw4x %vs4,%r3,%r0
	addi %r7,%r9,48
	lxvw4x %vs5,%r4,%r6
	stxvw4x %vs5,%r3,%r6
	addi %r9,%r9,64
	lxvw4x %vs6,%r4,%r7
	stxvw4x %vs6,%r3,%r7
	bdnz .L786
	b .L774
.L785:
	addi %r0,%r10,-16
	lxvw4x %vs10,%r8,%r10
	stxvw4x %vs10,%r9,%r10
	addi %r12,%r10,-32
	lxvw4x %vs11,%r8,%r0
	stxvw4x %vs11,%r9,%r0
	addi %r7,%r10,-48
	lxvw4x %vs12,%r8,%r12
	stxvw4x %vs12,%r9,%r12
	addi %r10,%r10,-64
	lxvw4x %vs13,%r8,%r7
	stxvw4x %vs13,%r9,%r7
	bdz .L773
	addi %r0,%r10,-16
	lxvw4x %vs10,%r8,%r10
	stxvw4x %vs10,%r9,%r10
	addi %r12,%r10,-32
	lxvw4x %vs11,%r8,%r0
	stxvw4x %vs11,%r9,%r0
	addi %r7,%r10,-48
	lxvw4x %vs12,%r8,%r12
	stxvw4x %vs12,%r9,%r12
	addi %r10,%r10,-64
	lxvw4x %vs13,%r8,%r7
	stxvw4x %vs13,%r9,%r7
	bdnz .L785
	b .L773
.L695:
	andi. %r10,%r11,0x1
	add %r5,%r4,%r9
	add %r6,%r3,%r9
	bne- %cr0,.L794
.L727:
	srdi %r11,%r11,1
	addi %r8,%r11,1
	mtctr %r8
	b .L699
.L795:
	lwz %r0,-4(%r12)
	addi %r5,%r5,-8
	addi %r6,%r6,-8
	stw %r0,-4(%r10)
.L699:
	lwz %r9,-4(%r5)
	addi %r12,%r5,-4
	addi %r10,%r6,-4
	stw %r9,-4(%r6)
	bdnz .L795
	blr
.L794:
	lwzu %r7,-4(%r5)
	stwu %r7,-4(%r6)
	b .L727
.L701:
	andi. %r9,%r11,0x1
	addi %r5,%r4,-4
	addi %r9,%r3,-4
	bne- %cr0,.L796
.L739:
	srdi %r7,%r11,1
	addi %r11,%r7,1
	mtctr %r11
	b .L705
.L797:
	lwz %r8,4(%r10)
	addi %r5,%r5,8
	addi %r9,%r9,8
	stw %r8,4(%r4)
.L705:
	lwz %r12,4(%r5)
	addi %r10,%r5,4
	addi %r4,%r9,4
	stw %r12,4(%r9)
	bdnz .L797
	blr
.L796:
	lwz %r6,0(%r4)
	mr %r5,%r4
	mr %r9,%r3
	stw %r6,0(%r3)
	b .L739
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-.L.wmemmove
	.align 2
	.globl wmemset
	.section	".opd","aw"
	.align 3
wmemset:
	.quad	.L.wmemset,.TOC.@tocbase
	.previous
	.type	wmemset, @function
.L.wmemset:
.LFB68:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	addi %r7,%r5,-1
	beqlr- %cr0
	cmpldi %cr1,%r7,2
	ble- %cr1,.L803
	srdi %r8,%r5,2
	mtvsrwz %vs0,%r4
	xxspltw %vs0,%vs0,1
	andi. %r6,%r8,0x3
	addi %r11,%r8,-1
	mr %r10,%r8
	mr %r9,%r3
	beq- %cr0,.L818
	cmpdi %cr5,%r6,1
	beq- %cr5,.L822
	cmpdi %cr6,%r6,2
	beq- %cr6,.L823
	mr %r8,%r11
	stxvw4x %vs0,0,%r3
	addi %r9,%r3,16
.L823:
	stxvw4x %vs0,0,%r9
	addi %r8,%r8,-1
	addi %r9,%r9,16
.L822:
	cmpdi %cr7,%r8,1
	stxvw4x %vs0,0,%r9
	addi %r9,%r9,16
	beq- %cr7,.L832
.L818:
	srdi %r10,%r10,2
	cmpdi %cr1,%r10,2
	mtctr %r10
	ble %cr1,.L837
	addi %r10,%r10,-1
	mtctr %r10
	addi %r8,%r9,48
.L801:
	stxvw4x %vs0,0,%r9
	addi %r10,%r9,16
	stxvw4x %vs0,0,%r10
	addi %r6,%r9,32
	stxvw4x %vs0,0,%r6
	stxvw4x %vs0,0,%r8
	addi %r9,%r9,64
	addi %r8,%r9,48
	bdnz .L801
	stxvw4x %vs0,0,%r9
	addi %r10,%r9,16
	stxvw4x %vs0,0,%r10
	addi %r6,%r9,32
	stxvw4x %vs0,0,%r6
	stxvw4x %vs0,0,%r8
.L832:
	andi. %r9,%r5,0x3
	beqlr- %cr0
	rldicr %r5,%r5,0,61
	sldi %r0,%r5,2
	subf %r7,%r5,%r7
	add %r9,%r3,%r0
.L800:
	cmpdi %cr5,%r7,0
	stw %r4,0(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r7,1
	stw %r4,4(%r9)
	beqlr- %cr6
	stw %r4,8(%r9)
	blr
.L837:
	addi %r12,%r9,16
	stxvw4x %vs0,0,%r9
	addi %r6,%r9,32
	stxvw4x %vs0,0,%r12
	addi %r11,%r9,48
	stxvw4x %vs0,0,%r6
	addi %r9,%r9,64
	stxvw4x %vs0,0,%r11
	bdz .L832
	addi %r12,%r9,16
	stxvw4x %vs0,0,%r9
	addi %r6,%r9,32
	stxvw4x %vs0,0,%r12
	addi %r11,%r9,48
	stxvw4x %vs0,0,%r6
	addi %r9,%r9,64
	stxvw4x %vs0,0,%r11
	bdnz .L837
	b .L832
.L803:
	mr %r9,%r3
	b .L800
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE68:
	.size	wmemset,.-.L.wmemset
	.align 2
	.globl bcopy
	.section	".opd","aw"
	.align 3
bcopy:
	.quad	.L.bcopy,.TOC.@tocbase
	.previous
	.type	bcopy, @function
.L.bcopy:
.LFB69:
	.cfi_startproc
	cmpld %cr0,%r3,%r4
	bge- %cr0,.L840
	cmpdi %cr7,%r5,0
	add %r11,%r3,%r5
	add %r6,%r4,%r5
	beqlr- %cr7
	addi %r0,%r5,-1
	cmpldi %cr1,%r0,14
	ble- %cr1,.L842
	addi %r10,%r5,-2
	add %r9,%r3,%r10
	add %r8,%r4,%r0
	subf %r12,%r9,%r8
	addi %r7,%r12,14
	cmpldi %cr5,%r7,14
	ble- %cr5,.L842
	srdi %r7,%r5,4
	andi. %r0,%r7,0x3
	addi %r10,%r5,-16
	add %r3,%r3,%r10
	addi %r12,%r7,-1
	mr %r8,%r7
	add %r10,%r4,%r10
	li %r9,0
	beq- %cr0,.L929
	cmpdi %cr6,%r0,1
	beq- %cr6,.L945
	cmpdi %cr7,%r0,2
	beq- %cr7,.L946
	mr %r7,%r12
	lxvw4x %vs7,0,%r3
	stxvw4x %vs7,0,%r10
	li %r9,-16
.L946:
	lxvw4x %vs8,%r3,%r9
	addi %r7,%r7,-1
	stxvw4x %vs8,%r10,%r9
	addi %r9,%r9,-16
.L945:
	cmpdi %cr1,%r7,1
	lxvw4x %vs9,%r3,%r9
	stxvw4x %vs9,%r10,%r9
	addi %r9,%r9,-16
	beq- %cr1,.L993
.L929:
	srdi %r8,%r8,2
	cmpdi %cr5,%r8,2
	mtctr %r8
	ble %cr5,.L1005
	addi %r8,%r8,-1
	mtctr %r8
	lxvw4x %vs0,%r3,%r9
	stxvw4x %vs0,%r10,%r9
	addi %r8,%r9,-16
.L843:
	lxvw4x %vs0,%r3,%r8
	stxvw4x %vs0,%r10,%r8
	addi %r7,%r8,-16
	lxvw4x %vs0,%r3,%r7
	stxvw4x %vs0,%r10,%r7
	addi %r8,%r9,-48
	lxvw4x %vs0,%r3,%r8
	stxvw4x %vs0,%r10,%r8
	addi %r9,%r9,-64
	lxvw4x %vs0,%r3,%r9
	stxvw4x %vs0,%r10,%r9
	addi %r8,%r9,-16
	bdnz .L843
	lxvw4x %vs0,%r3,%r8
	stxvw4x %vs0,%r10,%r8
	addi %r7,%r8,-16
	lxvw4x %vs0,%r3,%r7
	stxvw4x %vs0,%r10,%r7
	addi %r8,%r9,-48
	lxvw4x %vs0,%r3,%r8
	stxvw4x %vs0,%r10,%r8
.L993:
	andi. %r9,%r5,0xf
	rldicr %r3,%r5,0,59
	subf %r6,%r3,%r6
	subf %r11,%r3,%r11
	subf %r5,%r3,%r5
	beqlr- %cr0
	cmpldi %cr6,%r5,1
	lbz %r9,-1(%r11)
	stb %r9,-1(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,2
	lbz %r10,-2(%r11)
	stb %r10,-2(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,3
	lbz %r8,-3(%r11)
	stb %r8,-3(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,4
	lbz %r7,-4(%r11)
	stb %r7,-4(%r6)
	beqlr- %cr5
	cmpldi %cr0,%r5,5
	lbz %r4,-5(%r11)
	stb %r4,-5(%r6)
	beqlr- %cr0
	cmpldi %cr6,%r5,6
	lbz %r0,-6(%r11)
	stb %r0,-6(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,7
	lbz %r12,-7(%r11)
	stb %r12,-7(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,8
	lbz %r3,-8(%r11)
	stb %r3,-8(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,9
	lbz %r9,-9(%r11)
	stb %r9,-9(%r6)
	beqlr- %cr5
	cmpldi %cr0,%r5,10
	lbz %r10,-10(%r11)
	stb %r10,-10(%r6)
	beqlr- %cr0
	cmpldi %cr6,%r5,11
	lbz %r8,-11(%r11)
	stb %r8,-11(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,12
	lbz %r7,-12(%r11)
	stb %r7,-12(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,13
	lbz %r4,-13(%r11)
	stb %r4,-13(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,-14(%r11)
	stb %r5,-14(%r6)
	beqlr- %cr5
	lbz %r11,-15(%r11)
	stb %r11,-15(%r6)
	blr
.L840:
	beqlr- %cr0
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r5,-1
	cmpldi %cr5,%r9,14
	ble- %cr5,.L847
	addi %r10,%r3,1
	subf %r0,%r10,%r4
	cmpldi %cr6,%r0,14
	ble- %cr6,.L847
	srdi %r8,%r5,4
	andi. %r7,%r8,0x3
	addi %r6,%r8,-1
	mr %r11,%r8
	li %r9,0
	beq- %cr0,.L941
	cmpdi %cr7,%r7,1
	beq- %cr7,.L947
	cmpdi %cr1,%r7,2
	beq- %cr1,.L948
	mr %r8,%r6
	lxvw4x %vs0,0,%r3
	stxvw4x %vs0,0,%r4
	li %r9,16
.L948:
	lxvw4x %vs1,%r3,%r9
	addi %r8,%r8,-1
	stxvw4x %vs1,%r4,%r9
	addi %r9,%r9,16
.L947:
	cmpdi %cr5,%r8,1
	lxvw4x %vs2,%r3,%r9
	stxvw4x %vs2,%r4,%r9
	addi %r9,%r9,16
	beq- %cr5,.L994
.L941:
	srdi %r10,%r11,2
	cmpdi %cr6,%r10,2
	mtctr %r10
	ble %cr6,.L1006
	addi %r10,%r10,-1
	mtctr %r10
	lxvw4x %vs0,%r3,%r9
	stxvw4x %vs0,%r4,%r9
	addi %r10,%r9,16
.L848:
	lxvw4x %vs0,%r3,%r10
	stxvw4x %vs0,%r4,%r10
	addi %r8,%r10,16
	lxvw4x %vs0,%r3,%r8
	stxvw4x %vs0,%r4,%r8
	addi %r10,%r9,48
	lxvw4x %vs0,%r3,%r10
	stxvw4x %vs0,%r4,%r10
	addi %r9,%r9,64
	lxvw4x %vs0,%r3,%r9
	stxvw4x %vs0,%r4,%r9
	addi %r10,%r9,16
	bdnz .L848
	lxvw4x %vs0,%r3,%r10
	stxvw4x %vs0,%r4,%r10
	addi %r8,%r10,16
	lxvw4x %vs0,%r3,%r8
	stxvw4x %vs0,%r4,%r8
	addi %r10,%r9,48
	lxvw4x %vs0,%r3,%r10
	stxvw4x %vs0,%r4,%r10
.L994:
	andi. %r9,%r5,0xf
	rldicr %r6,%r5,0,59
	add %r9,%r4,%r6
	add %r11,%r3,%r6
	subf %r5,%r6,%r5
	beqlr- %cr0
	cmpldi %cr7,%r5,1
	lbzx %r3,%r3,%r6
	stbx %r3,%r4,%r6
	beqlr- %cr7
	cmpldi %cr1,%r5,2
	lbz %r4,1(%r11)
	stb %r4,1(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r5,3
	lbz %r7,2(%r11)
	stb %r7,2(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r5,4
	lbz %r8,3(%r11)
	stb %r8,3(%r9)
	beqlr- %cr6
	cmpldi %cr0,%r5,5
	lbz %r12,4(%r11)
	stb %r12,4(%r9)
	beqlr- %cr0
	cmpldi %cr7,%r5,6
	lbz %r0,5(%r11)
	stb %r0,5(%r9)
	beqlr- %cr7
	cmpldi %cr1,%r5,7
	lbz %r10,6(%r11)
	stb %r10,6(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r5,8
	lbz %r6,7(%r11)
	stb %r6,7(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r5,9
	lbz %r3,8(%r11)
	stb %r3,8(%r9)
	beqlr- %cr6
	cmpldi %cr0,%r5,10
	lbz %r4,9(%r11)
	stb %r4,9(%r9)
	beqlr- %cr0
	cmpldi %cr7,%r5,11
	lbz %r7,10(%r11)
	stb %r7,10(%r9)
	beqlr- %cr7
	cmpldi %cr1,%r5,12
	lbz %r8,11(%r11)
	stb %r8,11(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r5,13
	lbz %r12,12(%r11)
	stb %r12,12(%r9)
	beqlr- %cr5
	cmpldi %cr6,%r5,14
	lbz %r5,13(%r11)
	stb %r5,13(%r9)
	beqlr- %cr6
	lbz %r11,14(%r11)
	stb %r11,14(%r9)
	blr
.L1005:
	addi %r4,%r9,-16
	lxvw4x %vs10,%r3,%r9
	stxvw4x %vs10,%r10,%r9
	addi %r0,%r9,-32
	lxvw4x %vs11,%r3,%r4
	stxvw4x %vs11,%r10,%r4
	addi %r12,%r9,-48
	lxvw4x %vs12,%r3,%r0
	stxvw4x %vs12,%r10,%r0
	addi %r9,%r9,-64
	lxvw4x %vs13,%r3,%r12
	stxvw4x %vs13,%r10,%r12
	bdz .L993
	addi %r4,%r9,-16
	lxvw4x %vs10,%r3,%r9
	stxvw4x %vs10,%r10,%r9
	addi %r0,%r9,-32
	lxvw4x %vs11,%r3,%r4
	stxvw4x %vs11,%r10,%r4
	addi %r12,%r9,-48
	lxvw4x %vs12,%r3,%r0
	stxvw4x %vs12,%r10,%r0
	addi %r9,%r9,-64
	lxvw4x %vs13,%r3,%r12
	stxvw4x %vs13,%r10,%r12
	bdnz .L1005
	b .L993
.L1006:
	addi %r12,%r9,16
	lxvw4x %vs3,%r3,%r9
	stxvw4x %vs3,%r4,%r9
	addi %r0,%r9,32
	lxvw4x %vs4,%r3,%r12
	stxvw4x %vs4,%r4,%r12
	addi %r10,%r9,48
	lxvw4x %vs5,%r3,%r0
	stxvw4x %vs5,%r4,%r0
	addi %r9,%r9,64
	lxvw4x %vs6,%r3,%r10
	stxvw4x %vs6,%r4,%r10
	bdnz .L1006
	b .L994
.L842:
	andi. %r10,%r0,0x1
	bne- %cr0,.L1012
.L922:
	srdi %r3,%r0,1
	addi %r0,%r3,1
	mtctr %r0
	b .L845
.L1013:
	lbz %r7,-1(%r8)
	addi %r11,%r11,-2
	addi %r6,%r6,-2
	stb %r7,-1(%r9)
.L845:
	lbz %r10,-1(%r11)
	addi %r8,%r11,-1
	addi %r9,%r6,-1
	stb %r10,-1(%r6)
	bdnz .L1013
	blr
.L1012:
	lbzu %r12,-1(%r11)
	stbu %r12,-1(%r6)
	b .L922
.L847:
	andi. %r10,%r9,0x1
	addi %r8,%r4,-1
	addi %r10,%r3,-1
	bne- %cr0,.L1014
.L934:
	srdi %r9,%r9,1
	addi %r6,%r9,1
	mtctr %r6
	b .L851
.L1015:
	lbz %r7,1(%r4)
	addi %r10,%r10,2
	addi %r8,%r8,2
	stb %r7,1(%r12)
.L851:
	lbz %r3,1(%r10)
	addi %r4,%r10,1
	addi %r12,%r8,1
	stb %r3,1(%r8)
	bdnz .L1015
	blr
.L1014:
	lbz %r0,0(%r3)
	mr %r10,%r3
	mr %r8,%r4
	stb %r0,0(%r4)
	b .L934
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE69:
	.size	bcopy,.-.L.bcopy
	.align 2
	.globl rotl64
	.section	".opd","aw"
	.align 3
rotl64:
	.quad	.L.rotl64,.TOC.@tocbase
	.previous
	.type	rotl64, @function
.L.rotl64:
.LFB70:
	.cfi_startproc
	rotld %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE70:
	.size	rotl64,.-.L.rotl64
	.align 2
	.globl rotr64
	.section	".opd","aw"
	.align 3
rotr64:
	.quad	.L.rotr64,.TOC.@tocbase
	.previous
	.type	rotr64, @function
.L.rotr64:
.LFB71:
	.cfi_startproc
	subfic %r4,%r4,64
	rotld %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE71:
	.size	rotr64,.-.L.rotr64
	.align 2
	.globl rotl32
	.section	".opd","aw"
	.align 3
rotl32:
	.quad	.L.rotl32,.TOC.@tocbase
	.previous
	.type	rotl32, @function
.L.rotl32:
.LFB72:
	.cfi_startproc
	rotlw %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE72:
	.size	rotl32,.-.L.rotl32
	.align 2
	.globl rotr32
	.section	".opd","aw"
	.align 3
rotr32:
	.quad	.L.rotr32,.TOC.@tocbase
	.previous
	.type	rotr32, @function
.L.rotr32:
.LFB73:
	.cfi_startproc
	subfic %r4,%r4,32
	rotlw %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE73:
	.size	rotr32,.-.L.rotr32
	.align 2
	.globl rotl_sz
	.section	".opd","aw"
	.align 3
rotl_sz:
	.quad	.L.rotl_sz,.TOC.@tocbase
	.previous
	.type	rotl_sz, @function
.L.rotl_sz:
.LFB173:
	.cfi_startproc
	rotld %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE173:
	.size	rotl_sz,.-.L.rotl_sz
	.align 2
	.globl rotr_sz
	.section	".opd","aw"
	.align 3
rotr_sz:
	.quad	.L.rotr_sz,.TOC.@tocbase
	.previous
	.type	rotr_sz, @function
.L.rotr_sz:
.LFB175:
	.cfi_startproc
	subfic %r4,%r4,64
	rotld %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE175:
	.size	rotr_sz,.-.L.rotr_sz
	.align 2
	.globl rotl16
	.section	".opd","aw"
	.align 3
rotl16:
	.quad	.L.rotl16,.TOC.@tocbase
	.previous
	.type	rotl16, @function
.L.rotl16:
.LFB76:
	.cfi_startproc
	rlwinm %r4,%r4,0,28,31
	neg %r9,%r4
	rlwinm %r0,%r9,0,28,31
	srw %r5,%r3,%r0
	slw %r3,%r3,%r4
	or %r6,%r3,%r5
	rlwinm %r3,%r6,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE76:
	.size	rotl16,.-.L.rotl16
	.align 2
	.globl rotr16
	.section	".opd","aw"
	.align 3
rotr16:
	.quad	.L.rotr16,.TOC.@tocbase
	.previous
	.type	rotr16, @function
.L.rotr16:
.LFB77:
	.cfi_startproc
	rlwinm %r4,%r4,0,28,31
	neg %r9,%r4
	rlwinm %r0,%r9,0,28,31
	slw %r5,%r3,%r0
	srw %r3,%r3,%r4
	or %r6,%r3,%r5
	rlwinm %r3,%r6,0,0xffff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE77:
	.size	rotr16,.-.L.rotr16
	.align 2
	.globl rotl8
	.section	".opd","aw"
	.align 3
rotl8:
	.quad	.L.rotl8,.TOC.@tocbase
	.previous
	.type	rotl8, @function
.L.rotl8:
.LFB78:
	.cfi_startproc
	rlwinm %r4,%r4,0,29,31
	neg %r9,%r4
	rlwinm %r0,%r9,0,29,31
	srw %r5,%r3,%r0
	slw %r3,%r3,%r4
	or %r6,%r3,%r5
	rlwinm %r3,%r6,0,0xff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE78:
	.size	rotl8,.-.L.rotl8
	.align 2
	.globl rotr8
	.section	".opd","aw"
	.align 3
rotr8:
	.quad	.L.rotr8,.TOC.@tocbase
	.previous
	.type	rotr8, @function
.L.rotr8:
.LFB79:
	.cfi_startproc
	rlwinm %r4,%r4,0,29,31
	neg %r9,%r4
	rlwinm %r0,%r9,0,29,31
	slw %r5,%r3,%r0
	srw %r3,%r3,%r4
	or %r6,%r3,%r5
	rlwinm %r3,%r6,0,0xff
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE79:
	.size	rotr8,.-.L.rotr8
	.align 2
	.globl bswap_16
	.section	".opd","aw"
	.align 3
bswap_16:
	.quad	.L.bswap_16,.TOC.@tocbase
	.previous
	.type	bswap_16, @function
.L.bswap_16:
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
	.size	bswap_16,.-.L.bswap_16
	.align 2
	.globl bswap_32
	.section	".opd","aw"
	.align 3
bswap_32:
	.quad	.L.bswap_32,.TOC.@tocbase
	.previous
	.type	bswap_32, @function
.L.bswap_32:
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
	.size	bswap_32,.-.L.bswap_32
	.align 2
	.globl bswap_64
	.section	".opd","aw"
	.align 3
bswap_64:
	.quad	.L.bswap_64,.TOC.@tocbase
	.previous
	.type	bswap_64, @function
.L.bswap_64:
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
	.size	bswap_64,.-.L.bswap_64
	.align 2
	.globl ffs
	.section	".opd","aw"
	.align 3
ffs:
	.quad	.L.ffs,.TOC.@tocbase
	.previous
	.type	ffs, @function
.L.ffs:
.LFB83:
	.cfi_startproc
	li %r10,16
	mtctr %r10
	li %r9,0
	b .L1032
.L1041:
	addi %r9,%r9,1
	bne- %cr0,.L1031
	bdz .L1040
.L1032:
	srw %r0,%r3,%r9
	rldicl %r4,%r0,0,63
	cmpdi %cr7,%r4,0
	addi %r9,%r9,1
	srw %r5,%r3,%r9
	andi. %r10,%r5,0x1
	beq+ %cr7,.L1041
.L1031:
	extsw %r3,%r9
	blr
.L1040:
	li %r9,0
	extsw %r3,%r9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE83:
	.size	ffs,.-.L.ffs
	.align 2
	.globl libiberty_ffs
	.section	".opd","aw"
	.align 3
libiberty_ffs:
	.quad	.L.libiberty_ffs,.TOC.@tocbase
	.previous
	.type	libiberty_ffs, @function
.L.libiberty_ffs:
.LFB84:
	.cfi_startproc
	mr. %r9,%r3
	beq- %cr0,.L1045
	andi. %r3,%r9,0x1
	bne- %cr0,.L1043
	li %r3,1
.L1044:
	srawi %r9,%r9,1
	andi. %r10,%r9,0x1
	addi %r3,%r3,1
	beq+ %cr0,.L1044
.L1043:
	extsw %r3,%r3
	blr
.L1045:
	li %r3,0
	extsw %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-.L.libiberty_ffs
	.align 2
	.globl gl_isinff
	.section	".opd","aw"
	.align 3
gl_isinff:
	.quad	.L.gl_isinff,.TOC.@tocbase
	.previous
	.type	gl_isinff, @function
.L.gl_isinff:
.LFB85:
	.cfi_startproc
	addis %r9,%r2,.LC2@toc@ha
	lfs %f0,.LC2@toc@l(%r9)
	li %r0,1
	fcmpu %cr0,%f1,%f0
	blt- %cr0,.L1049
	addis %r3,%r2,.LC3@toc@ha
	lfs %f2,.LC3@toc@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1049:
	rldicl %r3,%r0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE85:
	.size	gl_isinff,.-.L.gl_isinff
	.align 2
	.globl gl_isinfd
	.section	".opd","aw"
	.align 3
gl_isinfd:
	.quad	.L.gl_isinfd,.TOC.@tocbase
	.previous
	.type	gl_isinfd, @function
.L.gl_isinfd:
.LFB86:
	.cfi_startproc
	addis %r9,%r2,.LC6@toc@ha
	lfd %f0,.LC6@toc@l(%r9)
	li %r0,1
	fcmpu %cr0,%f1,%f0
	blt- %cr0,.L1052
	addis %r3,%r2,.LC7@toc@ha
	lfd %f2,.LC7@toc@l(%r3)
	fcmpu %cr1,%f1,%f2
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1052:
	rldicl %r3,%r0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE86:
	.size	gl_isinfd,.-.L.gl_isinfd
	.align 2
	.globl gl_isinfl
	.section	".opd","aw"
	.align 3
gl_isinfl:
	.quad	.L.gl_isinfl,.TOC.@tocbase
	.previous
	.type	gl_isinfl, @function
.L.gl_isinfl:
.LFB87:
	.cfi_startproc
	addis %r9,%r2,.LC10@toc@ha
	fmr %f0,%f1
	addi %r3,%r9,.LC10@toc@l
	fmr %f1,%f2
	lfd %f12,0(%r3)
	li %r0,1
	lfd %f13,8(%r3)
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	blt- %cr0,.L1055
	addis %r4,%r2,.LC11@toc@ha
	addi %r5,%r4,.LC11@toc@l
	lfd %f12,0(%r5)
	lfd %f13,8(%r5)
	fcmpu %cr1,%f0,%f12
	bne %cr1,$+8
	fcmpu %cr1,%f1,%f13
	mfcr %r0,64
	rlwinm %r0,%r0,6,1
.L1055:
	rldicl %r3,%r0,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-.L.gl_isinfl
	.align 2
	.globl _Qp_itoq
	.section	".opd","aw"
	.align 3
_Qp_itoq:
	.quad	.L._Qp_itoq,.TOC.@tocbase
	.previous
	.type	_Qp_itoq, @function
.L._Qp_itoq:
.LFB88:
	.cfi_startproc
	mtvsrd %vs0,%r4
	fcfid %f1,%f0
	xxlxor %vs3,%vs3,%vs3
	stfd %f3,8(%r3)
	stfd %f1,0(%r3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq,.-.L._Qp_itoq
	.align 2
	.globl ldexpf
	.section	".opd","aw"
	.align 3
ldexpf:
	.quad	.L.ldexpf,.TOC.@tocbase
	.previous
	.type	ldexpf, @function
.L.ldexpf:
.LFB89:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fadds %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr- %cr1
	cmpwi %cr5,%r4,0
	blt- %cr5,.L1071
	addis %r9,%r2,.LC14@toc@ha
	lfs %f2,.LC14@toc@l(%r9)
.L1060:
	andi. %r9,%r4,0x1
	beq- %cr0,.L1061
.L1062:
	fmuls %f1,%f1,%f2
.L1061:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr- %cr0
	andi. %r9,%r4,0x1
	fmuls %f2,%f2,%f2
	srawi %r0,%r4,1
	addze %r0,%r0
	bne- %cr0,.L1062
.L1072:
	extsw %r4,%r0
	fmuls %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r0,%r4,1
	addze %r0,%r0
	bne- %cr0,.L1062
	b .L1072
.L1071:
	addis %r3,%r2,.LC15@toc@ha
	lfs %f2,.LC15@toc@l(%r3)
	b .L1060
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-.L.ldexpf
	.align 2
	.globl ldexp
	.section	".opd","aw"
	.align 3
ldexp:
	.quad	.L.ldexp,.TOC.@tocbase
	.previous
	.type	ldexp, @function
.L.ldexp:
.LFB90:
	.cfi_startproc
	fcmpu %cr0,%f1,%f1
	bunlr- %cr0
	fadd %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr- %cr1
	cmpwi %cr5,%r4,0
	blt- %cr5,.L1086
	addis %r9,%r2,.LC14@toc@ha
	lfs %f2,.LC14@toc@l(%r9)
.L1075:
	andi. %r9,%r4,0x1
	beq- %cr0,.L1076
.L1077:
	fmul %f1,%f1,%f2
.L1076:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr- %cr0
	andi. %r9,%r4,0x1
	fmul %f2,%f2,%f2
	srawi %r0,%r4,1
	addze %r0,%r0
	bne- %cr0,.L1077
.L1087:
	extsw %r4,%r0
	fmul %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r0,%r4,1
	addze %r0,%r0
	bne- %cr0,.L1077
	b .L1087
.L1086:
	addis %r3,%r2,.LC15@toc@ha
	lfs %f2,.LC15@toc@l(%r3)
	b .L1075
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE90:
	.size	ldexp,.-.L.ldexp
	.align 2
	.globl ldexpl
	.section	".opd","aw"
	.align 3
ldexpl:
	.quad	.L.ldexpl,.TOC.@tocbase
	.previous
	.type	ldexpl, @function
.L.ldexpl:
.LFB91:
	.cfi_startproc
	stfd %f28,-32(%r1)
	.cfi_offset 60, -32
	fmr %f28,%f1
	stfd %f29,-24(%r1)
	.cfi_offset 61, -24
	fmr %f29,%f2
	stdu %r1,-160(%r1)
	.cfi_def_cfa_offset 160
	fmr %f0,%f28
	fcmpu %cr0,%f0,%f0
	bun- %cr0,.L1089
	fmr %f3,%f1
	mflr %r0
	.cfi_register 65, 0
	fmr %f4,%f2
	std %r31,120(%r1)
	.cfi_offset 31, -40
	mr %r31,%r5
	std %r0,176(%r1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu %cr1,%f1,%f28
	bne %cr1,$+8
	fcmpu %cr1,%f2,%f29
	beq- %cr1,.L1104
	cmpwi %cr5,%r31,0
	stfd %f30,144(%r1)
	.cfi_offset 62, -16
	stfd %f31,152(%r1)
	.cfi_offset 63, -8
	blt- %cr5,.L1105
	addis %r9,%r2,.LC22@toc@ha
	addi %r3,%r9,.LC22@toc@l
	lfd %f30,0(%r3)
	lfd %f31,8(%r3)
.L1090:
	andi. %r9,%r31,0x1
	beq- %cr0,.L1091
.L1092:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul
	nop
	fmr %f29,%f2
	fmr %f28,%f1
.L1091:
	srawi %r31,%r31,1
	addze %r31,%r31
	extsw. %r31,%r31
	beq- %cr0,.L1103
	fmr %f3,%f30
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	nop
	andi. %r9,%r31,0x1
	fmr %f31,%f2
	srawi %r0,%r31,1
	addze %r0,%r0
	fmr %f30,%f1
	bne- %cr0,.L1092
.L1106:
	fmr %f3,%f30
	extsw %r31,%r0
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul
	nop
	andi. %r9,%r31,0x1
	fmr %f31,%f2
	srawi %r0,%r31,1
	addze %r0,%r0
	fmr %f30,%f1
	bne- %cr0,.L1092
	b .L1106
.L1103:
	lfd %f30,144(%r1)
	.cfi_restore 62
	lfd %f31,152(%r1)
	.cfi_restore 63
.L1104:
	ld %r6,176(%r1)
	ld %r31,120(%r1)
	.cfi_restore 31
	mtlr %r6
	.cfi_restore 65
.L1089:
	fmr %f1,%f28
	addi %r1,%r1,160
	.cfi_def_cfa_offset 0
	fmr %f2,%f29
	lfd %f28,-32(%r1)
	lfd %f29,-24(%r1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L1105:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis %r4,%r2,.LC23@toc@ha
	addi %r5,%r4,.LC23@toc@l
	lfd %f30,0(%r5)
	lfd %f31,8(%r5)
	b .L1090
	.long 0
	.byte 0,0,2,1,132,1,0,0
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-.L.ldexpl
	.align 2
	.globl memxor
	.section	".opd","aw"
	.align 3
memxor:
	.quad	.L.memxor,.TOC.@tocbase
	.previous
	.type	memxor, @function
.L.memxor:
.LFB92:
	.cfi_startproc
	cmpdi %cr0,%r5,0
	beqlr- %cr0
	addi %r9,%r5,-1
	cmpldi %cr1,%r9,14
	ble- %cr1,.L1112
	srdi %r7,%r5,4
	andi. %r10,%r7,0x1
	addi %r8,%r7,-1
	mr %r10,%r7
	li %r11,0
	bne- %cr0,.L1171
.L1147:
	srdi %r0,%r10,1
	mtctr %r0
.L1110:
	addi %r12,%r11,16
	lxvw4x %vs2,%r3,%r11
	lxvw4x %vs3,%r4,%r11
	lxvw4x %vs6,%r4,%r12
	xxlxor %vs4,%vs2,%vs3
	stxvw4x %vs4,%r3,%r11
	addi %r11,%r11,32
	lxvw4x %vs5,%r3,%r12
	xxlxor %vs7,%vs5,%vs6
	stxvw4x %vs7,%r3,%r12
	bdnz .L1110
.L1167:
	andi. %r9,%r5,0xf
	rldicr %r9,%r5,0,59
	add %r4,%r4,%r9
	add %r6,%r3,%r9
	subf %r5,%r9,%r5
	beqlr- %cr0
.L1109:
	cmpldi %cr6,%r5,1
	lbz %r7,0(%r6)
	lbz %r8,0(%r4)
	xor %r10,%r7,%r8
	stb %r10,0(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,2
	lbz %r0,1(%r6)
	lbz %r11,1(%r4)
	xor %r12,%r11,%r0
	stb %r12,1(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,3
	lbz %r7,2(%r6)
	lbz %r9,2(%r4)
	xor %r8,%r9,%r7
	stb %r8,2(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,4
	lbz %r11,3(%r6)
	lbz %r10,3(%r4)
	xor %r0,%r10,%r11
	stb %r0,3(%r6)
	beqlr- %cr5
	cmpldi %cr0,%r5,5
	lbz %r9,4(%r6)
	lbz %r12,4(%r4)
	xor %r7,%r12,%r9
	stb %r7,4(%r6)
	beqlr- %cr0
	cmpldi %cr6,%r5,6
	lbz %r8,5(%r6)
	lbz %r10,5(%r4)
	xor %r11,%r10,%r8
	stb %r11,5(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,7
	lbz %r12,6(%r6)
	lbz %r0,6(%r4)
	xor %r9,%r0,%r12
	stb %r9,6(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,8
	lbz %r10,7(%r6)
	lbz %r7,7(%r4)
	xor %r8,%r7,%r10
	stb %r8,7(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,9
	lbz %r0,8(%r6)
	lbz %r11,8(%r4)
	xor %r12,%r11,%r0
	stb %r12,8(%r6)
	beqlr- %cr5
	cmpldi %cr0,%r5,10
	lbz %r7,9(%r6)
	lbz %r9,9(%r4)
	xor %r10,%r9,%r7
	stb %r10,9(%r6)
	beqlr- %cr0
	cmpldi %cr6,%r5,11
	lbz %r8,10(%r6)
	lbz %r11,10(%r4)
	xor %r0,%r11,%r8
	stb %r0,10(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,12
	lbz %r9,11(%r6)
	lbz %r12,11(%r4)
	xor %r7,%r12,%r9
	stb %r7,11(%r6)
	beqlr- %cr7
	cmpldi %cr1,%r5,13
	lbz %r11,12(%r6)
	lbz %r10,12(%r4)
	xor %r8,%r10,%r11
	stb %r8,12(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,14
	lbz %r0,13(%r6)
	lbz %r5,13(%r4)
	xor %r12,%r5,%r0
	stb %r12,13(%r6)
	beqlr- %cr5
	lbz %r9,14(%r6)
	lbz %r4,14(%r4)
	xor %r7,%r4,%r9
	stb %r7,14(%r6)
	blr
.L1171:
	cmpdi %cr5,%r8,0
	lxvw4x %vs0,0,%r3
	lxvw4x %vs12,0,%r4
	li %r11,16
	xxlxor %vs1,%vs0,%vs12
	stxvw4x %vs1,0,%r3
	bne+ %cr5,.L1147
	b .L1167
.L1112:
	mr %r6,%r3
	b .L1109
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE92:
	.size	memxor,.-.L.memxor
	.align 2
	.globl strncat
	.section	".opd","aw"
	.align 3
strncat:
	.quad	.L.strncat,.TOC.@tocbase
	.previous
	.type	strncat, @function
.L.strncat:
.LFB93:
	.cfi_startproc
	lbz %r9,0(%r3)
	cmpwi %cr0,%r9,0
	mr %r9,%r3
	beq- %cr0,.L1173
.L1174:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1174
.L1173:
	cmpdi %cr5,%r5,0
	beq- %cr5,.L1175
	andi. %r10,%r5,0x1
	addi %r7,%r5,-1
	addi %r10,%r4,-1
	bne- %cr0,.L1198
.L1186:
	srdi %r0,%r5,1
	mtctr %r0
.L1176:
	lbz %r4,1(%r10)
	addi %r5,%r10,1
	addi %r11,%r9,1
	rlwinm %r12,%r4,0,0xff
	stb %r4,0(%r9)
	cmpwi %cr1,%r12,0
	addi %r10,%r5,1
	beqlr- %cr1
	lbz %r8,1(%r5)
	rlwinm %r7,%r8,0,0xff
	stb %r8,1(%r9)
	cmpwi %cr5,%r7,0
	addi %r9,%r11,1
	beqlr- %cr5
	bdnz .L1176
.L1175:
	li %r6,0
	stb %r6,0(%r9)
	blr
.L1198:
	lbz %r8,0(%r4)
	mr %r10,%r4
	rlwinm %r6,%r8,0,0xff
	stb %r8,0(%r9)
	cmpwi %cr6,%r6,0
	beqlr- %cr6
	cmpdi %cr7,%r7,0
	addi %r9,%r9,1
	bne+ %cr7,.L1186
	b .L1175
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE93:
	.size	strncat,.-.L.strncat
	.align 2
	.globl strnlen
	.section	".opd","aw"
	.align 3
strnlen:
	.quad	.L.strnlen,.TOC.@tocbase
	.previous
	.type	strnlen, @function
.L.strnlen:
.LFB94:
	.cfi_startproc
	cmpdi %cr0,%r4,0
	mr %r9,%r3
	li %r3,0
	beqlr- %cr0
	andi. %r8,%r4,0x3
	mr %r10,%r4
	beq- %cr0,.L1211
	cmpdi %cr1,%r8,1
	beq- %cr1,.L1222
	cmpdi %cr5,%r8,2
	beq- %cr5,.L1223
	lbz %r0,0(%r9)
	cmpwi %cr6,%r0,0
	beqlr+ %cr6
	li %r3,1
.L1223:
	lbzx %r5,%r9,%r3
	cmpwi %cr7,%r5,0
	beqlr+ %cr7
	addi %r3,%r3,1
.L1222:
	lbzx %r6,%r9,%r3
	cmpwi %cr0,%r6,0
	beqlr+ %cr0
	addi %r3,%r3,1
	cmpld %cr1,%r4,%r3
	beqlr- %cr1
.L1211:
	srdi %r10,%r10,2
.L1200:
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
	cmpdi %cr1,%r10,1
	addi %r3,%r7,3
	addi %r10,%r10,-1
	bne+ %cr1,.L1200
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE94:
	.size	strnlen,.-.L.strnlen
	.align 2
	.globl strpbrk
	.section	".opd","aw"
	.align 3
strpbrk:
	.quad	.L.strpbrk,.TOC.@tocbase
	.previous
	.type	strpbrk, @function
.L.strpbrk:
.LFB95:
	.cfi_startproc
	lbz %r8,0(%r3)
	addi %r4,%r4,-1
	cmpwi %cr0,%r8,0
	beq- %cr0,.L1237
.L1233:
	mr %r10,%r4
	b .L1236
.L1235:
	beqlr- %cr7
.L1236:
	lbzu %r9,1(%r10)
	cmpwi %cr1,%r9,0
	cmpw %cr7,%r9,%r8
	bne+ %cr1,.L1235
	lbzu %r8,1(%r3)
	cmpwi %cr5,%r8,0
	bne+ %cr5,.L1233
.L1237:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-.L.strpbrk
	.align 2
	.globl strrchr
	.section	".opd","aw"
	.align 3
strrchr:
	.quad	.L.strrchr,.TOC.@tocbase
	.previous
	.type	strrchr, @function
.L.strrchr:
.LFB96:
	.cfi_startproc
	mr %r9,%r3
	li %r3,0
.L1243:
	lbz %r10,0(%r9)
	cmpwi %cr0,%r10,0
	cmpw %cr7,%r10,%r4
	isel %r3,%r9,%r3,30
	addi %r9,%r9,1
	beqlr- %cr0
	lbz %r10,0(%r9)
	cmpw %cr7,%r10,%r4
	cmpwi %cr0,%r10,0
	isel %r3,%r9,%r3,30
	addi %r9,%r9,1
	bne+ %cr0,.L1243
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE96:
	.size	strrchr,.-.L.strrchr
	.align 2
	.globl strstr
	.section	".opd","aw"
	.align 3
strstr:
	.quad	.L.strstr,.TOC.@tocbase
	.previous
	.type	strstr, @function
.L.strstr:
.LFB97:
	.cfi_startproc
	lbz %r11,0(%r4)
	mr %r8,%r3
	andi. %r5,%r11,0xff
	beq- %cr0,.L1259
	mr %r9,%r4
.L1248:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1248
	subf. %r6,%r4,%r9
	mr %r3,%r8
	beqlr- %cr0
	addi %r3,%r6,-1
	b .L1267
.L1270:
	cmpwi %cr6,%r12,0
	addi %r8,%r8,1
	beq- %cr6,.L1269
.L1267:
	lbz %r12,0(%r8)
	cmpw %cr5,%r12,%r5
	bne+ %cr5,.L1270
	addi %r0,%r3,1
	mtctr %r0
	mr %r6,%r4
	mr %r10,%r11
	mr %r7,%r8
	b .L1250
.L1272:
	bdz .L1252
	bne- %cr7,.L1253
	lbzu %r12,1(%r7)
	cmpwi %cr1,%r12,0
	beq- %cr1,.L1271
	lbzu %r10,1(%r6)
.L1250:
	andi. %r9,%r10,0xff
	cmpw %cr7,%r9,%r12
	bne+ %cr0,.L1272
.L1253:
	addi %r8,%r8,1
	b .L1267
.L1269:
	li %r3,0
	blr
.L1271:
	lbz %r9,1(%r6)
.L1252:
	cmpw %cr5,%r12,%r9
	bne+ %cr5,.L1253
.L1259:
	mr %r3,%r8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE97:
	.size	strstr,.-.L.strstr
	.align 2
	.globl copysign
	.section	".opd","aw"
	.align 3
copysign:
	.quad	.L.copysign,.TOC.@tocbase
	.previous
	.type	copysign, @function
.L.copysign:
.LFB98:
	.cfi_startproc
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr0,%f1,%f0
	blt- %cr0,.L1283
	bnglr- %cr0
	fcmpu %cr1,%f2,%f0
	bnllr+ %cr1
	fneg %f1,%f1
	blr
.L1283:
	fcmpu %cr5,%f2,%f0
	bnglr+ %cr5
	fneg %f1,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE98:
	.size	copysign,.-.L.copysign
	.align 2
	.globl memmem
	.section	".opd","aw"
	.align 3
memmem:
	.quad	.L.memmem,.TOC.@tocbase
	.previous
	.type	memmem, @function
.L.memmem:
.LFB99:
	.cfi_startproc
	cmpdi %cr0,%r6,0
	mr %r9,%r3
	beqlr- %cr0
	cmpld %cr1,%r4,%r6
	blt- %cr1,.L1292
	subf %r4,%r6,%r4
	add %r0,%r3,%r4
	cmpld %cr5,%r3,%r0
	bgt- %cr5,.L1292
	cmpldi %cr7,%r6,1
	lbz %r12,0(%r5)
	addi %r11,%r3,-1
	b .L1289
.L1286:
	cmpld %cr1,%r0,%r9
	blt- %cr1,.L1292
.L1289:
	lbzu %r10,1(%r11)
	mr %r3,%r9
	addi %r9,%r9,1
	cmpw %cr6,%r10,%r12
	bne+ %cr6,.L1286
	beqlr- %cr7
	subf %r7,%r11,%r9
	add %r8,%r7,%r6
	addi %r4,%r8,-2
	mtctr %r4
	mr %r8,%r5
	mr %r10,%r11
.L1287:
	lbzu %r4,1(%r10)
	lbzu %r7,1(%r8)
	cmpw %cr0,%r4,%r7
	bne- %cr0,.L1286
	bdnz .L1287
	blr
.L1292:
	li %r3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE99:
	.size	memmem,.-.L.memmem
	.align 2
	.globl mempcpy
	.section	".opd","aw"
	.align 3
mempcpy:
	.quad	.L.mempcpy,.TOC.@tocbase
	.previous
	.type	mempcpy, @function
.L.mempcpy:
.LFB100:
	.cfi_startproc
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	mr. %r31,%r5
	std %r30,-16(%r1)
	.cfi_offset 30, -16
	mr %r30,%r3
	stdu %r1,-128(%r1)
	.cfi_def_cfa_offset 128
	beq- %cr0,.L1301
	mflr %r0
	.cfi_register 65, 0
	std %r0,144(%r1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld %r0,144(%r1)
	mtlr %r0
	.cfi_restore 65
.L1301:
	addi %r1,%r1,128
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
	.size	mempcpy,.-.L.mempcpy
	.align 2
	.globl frexp
	.section	".opd","aw"
	.align 3
frexp:
	.quad	.L.frexp,.TOC.@tocbase
	.previous
	.type	frexp, @function
.L.frexp:
.LFB101:
	.cfi_startproc
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr7,%f1,%f0
	blt- %cr7,.L1329
	addis %r9,%r2,.LC31@toc@ha
	lfs %f2,.LC31@toc@l(%r9)
	li %r10,0
	fcmpu %cr0,%f1,%f2
	cror 2,1,2
	bne- %cr0,.L1330
.L1309:
	addis %r8,%r2,.LC15@toc@ha
	addis %r12,%r2,.LC31@toc@ha
	lfs %f7,.LC15@toc@l(%r8)
	lfs %f8,.LC31@toc@l(%r12)
	li %r11,0
.L1315:
	fmul %f1,%f1,%f7
	addi %r11,%r11,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq+ %cr0,.L1315
	cmpwi %cr1,%r10,0
	stw %r11,0(%r4)
	beqlr- %cr1
.L1332:
	fneg %f1,%f1
	blr
.L1330:
	addis %r3,%r2,.LC15@toc@ha
	lfs %f3,.LC15@toc@l(%r3)
	fcmpu %cr1,%f1,%f3
	bnl- %cr1,.L1312
	bne- %cr7,.L1321
.L1312:
	li %r0,0
	stw %r0,0(%r4)
	blr
.L1329:
	addis %r5,%r2,.LC27@toc@ha
	fneg %f12,%f1
	lfs %f4,.LC27@toc@l(%r5)
	fcmpu %cr5,%f1,%f4
	cror 22,20,22
	bne- %cr5,.L1331
	fmr %f1,%f12
	li %r10,1
	b .L1309
.L1331:
	addis %r6,%r2,.LC29@toc@ha
	lfs %f5,.LC29@toc@l(%r6)
	fcmpu %cr6,%f1,%f5
	bng- %cr6,.L1312
	li %r10,1
.L1310:
	addis %r7,%r2,.LC15@toc@ha
	fmr %f1,%f12
	lfs %f6,.LC15@toc@l(%r7)
	li %r11,0
.L1317:
	fadd %f1,%f1,%f1
	addi %r11,%r11,-1
	fcmpu %cr7,%f1,%f6
	blt+ %cr7,.L1317
	cmpwi %cr1,%r10,0
	stw %r11,0(%r4)
	bne+ %cr1,.L1332
	blr
.L1321:
	fmr %f12,%f1
	b .L1310
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE101:
	.size	frexp,.-.L.frexp
	.align 2
	.globl __muldi3
	.section	".opd","aw"
	.align 3
__muldi3:
	.quad	.L.__muldi3,.TOC.@tocbase
	.previous
	.type	__muldi3, @function
.L.__muldi3:
.LFB102:
	.cfi_startproc
	mr. %r10,%r3
	li %r3,0
	beqlr- %cr0
.L1335:
	rldicl %r9,%r10,0,63
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	sldi %r4,%r4,1
	beqlr- %cr0
	rldicl %r9,%r10,0,63
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	sldi %r4,%r4,1
	bne+ %cr0,.L1335
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-.L.__muldi3
	.align 2
	.globl udivmodsi4
	.section	".opd","aw"
	.align 3
udivmodsi4:
	.quad	.L.udivmodsi4,.TOC.@tocbase
	.previous
	.type	udivmodsi4, @function
.L.udivmodsi4:
.LFB103:
	.cfi_startproc
	cmplw %cr0,%r4,%r3
	li %r8,16
	mtctr %r8
	li %r12,32
	li %r9,1
	blt+ %cr0,.L1340
	b .L1361
.L1344:
	rldicl %r4,%r0,0,32
	slwi %r6,%r4,1
	cmpwi %cr6,%r4,0
	cmplw %cr5,%r3,%r6
	slwi %r9,%r9,1
	ble- %cr7,.L1342
	blt- %cr6,.L1345
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble- %cr5,.L1342
	bdz .L1343
.L1340:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r12,-1
	cmplw %cr7,%r3,%r0
	addi %r12,%r10,-1
	bge+ %cr1,.L1344
.L1345:
	li %r12,0
	li %r11,1
	li %r10,0
.L1346:
	cmplw %cr1,%r3,%r4
	subf %r8,%r4,%r3
	srdi %r4,%r4,1
	isel %r7,0,%r11,4
	cmpwi %cr6,%r7,0
	isel %r0,%r10,%r9,26
	srwi %r9,%r9,1
	cmpwi %cr7,%r9,0
	isel %r3,%r3,%r8,26
	or %r12,%r12,%r0
	rldicl %r3,%r3,0,32
	bne+ %cr7,.L1346
.L1343:
	cmpdi %cr5,%r5,0
	isel %r5,%r12,%r3,22
	rldicl %r3,%r5,0,32
	blr
.L1342:
	cmpwi %cr0,%r9,0
	bne+ %cr0,.L1345
	li %r12,0
	b .L1343
.L1361:
	isel %r9,0,%r9,1
	andi. %r12,%r9,0xff
	subf %r4,%r4,%r3
	isel %r3,%r3,%r4,2
	rldicl %r3,%r3,0,32
	b .L1343
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-.L.udivmodsi4
	.align 2
	.globl __clrsbqi2
	.section	".opd","aw"
	.align 3
__clrsbqi2:
	.quad	.L.__clrsbqi2,.TOC.@tocbase
	.previous
	.type	__clrsbqi2, @function
.L.__clrsbqi2:
.LFB104:
	.cfi_startproc
	cmpdi %cr0,%r3,0
	beq- %cr0,.L1366
	slwi %r3,%r3,8
	cntlzw %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
.L1366:
	li %r0,7
	extsw %r3,%r0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-.L.__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.section	".opd","aw"
	.align 3
__clrsbdi2:
	.quad	.L.__clrsbdi2,.TOC.@tocbase
	.previous
	.type	__clrsbdi2, @function
.L.__clrsbdi2:
.LFB105:
	.cfi_startproc
	sradi %r9,%r3,63
	cmpd %cr0,%r3,%r9
	xor %r3,%r3,%r9
	beq- %cr0,.L1369
	cntlzd %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
.L1369:
	li %r0,63
	extsw %r3,%r0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-.L.__clrsbdi2
	.align 2
	.globl __mulsi3
	.section	".opd","aw"
	.align 3
__mulsi3:
	.quad	.L.__mulsi3,.TOC.@tocbase
	.previous
	.type	__mulsi3, @function
.L.__mulsi3:
.LFB106:
	.cfi_startproc
	mr. %r10,%r3
	li %r3,0
	beq- %cr0,.L1371
.L1372:
	rlwinm %r9,%r10,0,31,31
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	rldic %r4,%r4,1,32
	bne+ %cr0,.L1372
.L1371:
	rldicl %r3,%r3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-.L.__mulsi3
	.align 2
	.globl __cmovd
	.section	".opd","aw"
	.align 3
__cmovd:
	.quad	.L.__cmovd,.TOC.@tocbase
	.previous
	.type	__cmovd, @function
.L.__cmovd:
.LFB107:
	.cfi_startproc
	cmpld %cr0,%r3,%r4
	srwi %r9,%r5,3
	rlwinm %r0,%r5,0,0,28
	blt- %cr0,.L1379
	add %r10,%r4,%r5
	cmpld %cr1,%r3,%r10
	ble- %cr1,.L1566
.L1379:
	cmpwi %cr6,%r9,0
	addi %r7,%r4,-8
	addi %r8,%r3,-8
	beq- %cr6,.L1492
	andi. %r10,%r9,0x1
	addi %r11,%r9,-1
	mr %r12,%r9
	bne- %cr0,.L1567
.L1448:
	srdi %r10,%r12,1
	cmpdi %cr1,%r10,2
	mtctr %r10
	ble %cr1,.L1524
	addi %r10,%r10,-1
	mtctr %r10
	addi %r9,%r9,-2
	ld %r11,8(%r7)
	std %r11,8(%r8)
	addi %r6,%r7,8
	ld %r11,8(%r6)
	addi %r10,%r8,8
	std %r11,8(%r10)
.L1382:
	addi %r9,%r9,-2
	ld %r11,16(%r6)
	std %r11,16(%r10)
	addi %r6,%r6,16
	ld %r11,8(%r6)
	addi %r10,%r10,16
	std %r11,8(%r10)
	bdnz .L1382
.L1494:
	cmplw %cr5,%r0,%r5
	bgelr- %cr5
	subf %r7,%r0,%r5
	addi %r8,%r7,-1
	cmplwi %cr6,%r8,14
	rldicl %r10,%r0,0,32
	ble- %cr6,.L1384
	addi %r11,%r10,1
	add %r6,%r4,%r11
	add %r8,%r3,%r10
	subf %r12,%r6,%r8
	cmpldi %cr7,%r12,14
	ble- %cr7,.L1384
	rldicl %r11,%r7,60,36
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	andi. %r12,%r11,0x3
	add %r10,%r4,%r10
	addi %r31,%r11,-1
	mr %r6,%r11
	beq- %cr0,.L1443
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1463
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1568
.L1464:
	lxvw4x %vs8,%r10,%r9
	addi %r11,%r11,-1
	stxvw4x %vs8,%r8,%r9
	addi %r9,%r9,16
.L1463:
	cmpdi %cr6,%r11,1
	lxvw4x %vs9,%r10,%r9
	stxvw4x %vs9,%r8,%r9
	addi %r9,%r9,16
	beq- %cr6,.L1500
.L1443:
	srdi %r6,%r6,2
	cmpdi %cr7,%r6,2
	mtctr %r6
	ble %cr7,.L1523
	addi %r6,%r6,-1
	mtctr %r6
	lxvw4x %vs0,%r10,%r9
	stxvw4x %vs0,%r8,%r9
	addi %r6,%r9,16
.L1385:
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r8,%r6
	addi %r11,%r6,16
	lxvw4x %vs0,%r10,%r11
	stxvw4x %vs0,%r8,%r11
	addi %r6,%r9,48
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r8,%r6
	addi %r9,%r9,64
	lxvw4x %vs0,%r10,%r9
	stxvw4x %vs0,%r8,%r9
	addi %r6,%r9,16
	bdnz .L1385
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r8,%r6
	addi %r11,%r6,16
	lxvw4x %vs0,%r10,%r11
	stxvw4x %vs0,%r8,%r11
	addi %r6,%r9,48
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r8,%r6
.L1500:
	andi. %r9,%r7,0xf
	rlwinm %r9,%r7,0,0,27
	add %r11,%r9,%r0
	beq- %cr0,.L1562
	addi %r0,%r11,1
	rldicl %r8,%r11,0,32
	cmplw %cr1,%r0,%r5
	lbzx %r7,%r4,%r8
	stbx %r7,%r3,%r8
	bge- %cr1,.L1562
	addi %r12,%r11,2
	rldicl %r10,%r0,0,32
	cmplw %cr5,%r12,%r5
	lbzx %r31,%r4,%r10
	stbx %r31,%r3,%r10
	bge- %cr5,.L1562
	addi %r6,%r11,3
	rldicl %r9,%r12,0,32
	cmplw %cr6,%r6,%r5
	lbzx %r0,%r4,%r9
	stbx %r0,%r3,%r9
	bge- %cr6,.L1562
	addi %r8,%r11,4
	rldicl %r12,%r6,0,32
	cmplw %cr7,%r8,%r5
	lbzx %r7,%r4,%r12
	stbx %r7,%r3,%r12
	bge- %cr7,.L1562
	addi %r10,%r11,5
	rldicl %r31,%r8,0,32
	cmplw %cr0,%r10,%r5
	lbzx %r6,%r4,%r31
	stbx %r6,%r3,%r31
	bge- %cr0,.L1562
	addi %r9,%r11,6
	rldicl %r0,%r10,0,32
	cmplw %cr1,%r9,%r5
	lbzx %r8,%r4,%r0
	stbx %r8,%r3,%r0
	bge- %cr1,.L1562
	addi %r12,%r11,7
	rldicl %r10,%r9,0,32
	cmplw %cr5,%r12,%r5
	lbzx %r7,%r4,%r10
	stbx %r7,%r3,%r10
	bge- %cr5,.L1562
	addi %r31,%r11,8
	rldicl %r6,%r12,0,32
	cmplw %cr6,%r31,%r5
	lbzx %r9,%r4,%r6
	stbx %r9,%r3,%r6
	bge- %cr6,.L1562
	addi %r0,%r11,9
	rldicl %r8,%r31,0,32
	cmplw %cr7,%r0,%r5
	lbzx %r12,%r4,%r8
	stbx %r12,%r3,%r8
	bge- %cr7,.L1562
	addi %r31,%r11,10
	rldicl %r10,%r0,0,32
	cmplw %cr0,%r31,%r5
	lbzx %r7,%r4,%r10
	stbx %r7,%r3,%r10
	bge- %cr0,.L1562
	addi %r6,%r11,11
	rldicl %r9,%r31,0,32
	cmplw %cr1,%r6,%r5
	lbzx %r0,%r4,%r9
	stbx %r0,%r3,%r9
	bge- %cr1,.L1562
	addi %r8,%r11,12
	rldicl %r12,%r6,0,32
	cmplw %cr5,%r8,%r5
	lbzx %r31,%r4,%r12
	stbx %r31,%r3,%r12
	bge- %cr5,.L1562
	addi %r10,%r11,13
	rldicl %r6,%r8,0,32
	cmplw %cr6,%r10,%r5
	lbzx %r7,%r4,%r6
	stbx %r7,%r3,%r6
	bge- %cr6,.L1562
	addi %r11,%r11,14
	rldicl %r9,%r10,0,32
	cmplw %cr7,%r11,%r5
	lbzx %r5,%r4,%r9
	stbx %r5,%r3,%r9
	bge- %cr7,.L1562
	rldicl %r0,%r11,0,32
	lbzx %r4,%r4,%r0
	stbx %r4,%r3,%r0
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
.L1524:
	ld %r11,8(%r7)
	mr %r6,%r7
	mr %r12,%r8
	std %r11,8(%r8)
	addi %r9,%r9,-2
	addi %r7,%r7,16
	ld %r10,16(%r6)
	addi %r8,%r8,16
	std %r10,16(%r12)
	bdz .L1494
	ld %r11,8(%r7)
	mr %r6,%r7
	mr %r12,%r8
	std %r11,8(%r8)
	addi %r9,%r9,-2
	addi %r7,%r7,16
	ld %r10,16(%r6)
	addi %r8,%r8,16
	std %r10,16(%r12)
	bdnz .L1524
	b .L1494
.L1567:
	mr. %r9,%r11
	ld %r10,0(%r4)
	mr %r7,%r4
	std %r10,0(%r3)
	mr %r8,%r3
	bne+ %cr0,.L1448
	b .L1494
.L1566:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r9,%r11,0,32
	beqlr- %cr5
	cmplwi %cr6,%r11,14
	ble- %cr6,.L1389
	addi %r0,%r9,-1
	add %r6,%r4,%r0
	add %r8,%r3,%r9
	subf %r7,%r6,%r8
	addi %r12,%r7,14
	cmpldi %cr7,%r12,14
	ble- %cr7,.L1389
	srdi %r6,%r5,4
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	andi. %r0,%r6,0x3
	addi %r31,%r9,-15
	add %r8,%r4,%r31
	add %r9,%r3,%r31
	addi %r12,%r6,-1
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L1458
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1465
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1569
.L1466:
	lxvw4x %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvw4x %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1465:
	cmpdi %cr6,%r6,1
	lxvw4x %vs2,%r8,%r10
	stxvw4x %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr6,.L1501
.L1458:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1526
	addi %r7,%r7,-1
	mtctr %r7
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
.L1390:
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L1390
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
.L1501:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r11
	beq- %cr0,.L1562
	rldicl %r9,%r11,0,32
	cmpwi %cr1,%r11,0
	lbzx %r8,%r4,%r9
	addi %r10,%r11,-1
	stbx %r8,%r3,%r9
	rldicl %r6,%r10,0,32
	beq- %cr1,.L1562
	cmpdi %cr5,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-2
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr5,.L1562
	cmpdi %cr6,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-3
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr6,.L1562
	cmpdi %cr7,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-4
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr7,.L1562
	cmpdi %cr0,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-5
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr0,.L1562
	cmpdi %cr1,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-6
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr1,.L1562
	cmpdi %cr5,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-7
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr5,.L1562
	cmpdi %cr6,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-8
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr6,.L1562
	cmpdi %cr7,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-9
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr7,.L1562
	cmpdi %cr0,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-10
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr0,.L1562
	cmpdi %cr1,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-11
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr1,.L1562
	cmpdi %cr5,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-12
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr5,.L1562
	cmpdi %cr6,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-13
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr6,.L1562
	cmpdi %cr7,%r6,0
	lbzx %r7,%r4,%r6
	addi %r11,%r11,-14
	stbx %r7,%r3,%r6
	rldicl %r0,%r11,0,32
	beq- %cr7,.L1562
	lbzx %r4,%r4,%r0
	stbx %r4,%r3,%r0
	ld %r31,-8(%r1)
	.cfi_remember_state
	.cfi_restore 31
	blr
.L1523:
	.cfi_restore_state
	addi %r12,%r9,16
	lxvw4x %vs10,%r10,%r9
	stxvw4x %vs10,%r8,%r9
	addi %r31,%r9,32
	lxvw4x %vs11,%r10,%r12
	stxvw4x %vs11,%r8,%r12
	addi %r6,%r9,48
	lxvw4x %vs12,%r10,%r31
	stxvw4x %vs12,%r8,%r31
	addi %r9,%r9,64
	lxvw4x %vs13,%r10,%r6
	stxvw4x %vs13,%r8,%r6
	bdz .L1500
	addi %r12,%r9,16
	lxvw4x %vs10,%r10,%r9
	stxvw4x %vs10,%r8,%r9
	addi %r31,%r9,32
	lxvw4x %vs11,%r10,%r12
	stxvw4x %vs11,%r8,%r12
	addi %r6,%r9,48
	lxvw4x %vs12,%r10,%r31
	stxvw4x %vs12,%r8,%r31
	addi %r9,%r9,64
	lxvw4x %vs13,%r10,%r6
	stxvw4x %vs13,%r8,%r6
	bdnz .L1523
	b .L1500
.L1562:
	ld %r31,-8(%r1)
	.cfi_restore 31
.L1375:
	blr
.L1568:
	.cfi_offset 31, -8
	lxvw4x %vs7,%r10,%r9
	mr %r11,%r31
	stxvw4x %vs7,%r8,%r9
	addi %r9,%r9,16
	b .L1464
.L1526:
	addi %r0,%r10,-16
	lxvw4x %vs3,%r8,%r10
	stxvw4x %vs3,%r9,%r10
	addi %r31,%r10,-32
	lxvw4x %vs4,%r8,%r0
	stxvw4x %vs4,%r9,%r0
	addi %r12,%r10,-48
	lxvw4x %vs5,%r8,%r31
	stxvw4x %vs5,%r9,%r31
	addi %r10,%r10,-64
	lxvw4x %vs6,%r8,%r12
	stxvw4x %vs6,%r9,%r12
	bdnz .L1526
	b .L1501
.L1492:
	.cfi_restore 31
	cmpdi %cr7,%r5,0
	rldicl %r10,%r0,0,32
	mr %r7,%r5
	beqlr- %cr7
.L1384:
	rldicl %r8,%r7,0,32
	andi. %r9,%r8,0x1
	addi %r12,%r10,-1
	add %r4,%r4,%r12
	add %r3,%r3,%r12
	addi %r10,%r8,-1
	beq- %cr0,.L1436
	cmpdi %cr1,%r10,0
	lbzu %r6,1(%r4)
	stbu %r6,1(%r3)
	beqlr- %cr1
.L1436:
	srdi %r9,%r8,1
	cmpdi %cr5,%r9,2
	mtctr %r9
	ble %cr5,.L1522
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,1(%r4)
	stb %r8,1(%r3)
	addi %r10,%r4,1
	lbz %r8,1(%r10)
	addi %r9,%r3,1
	stb %r8,1(%r9)
.L1387:
	lbz %r8,2(%r10)
	stb %r8,2(%r9)
	addi %r10,%r10,2
	lbz %r8,1(%r10)
	addi %r9,%r9,2
	stb %r8,1(%r9)
	bdnz .L1387
	blr
.L1522:
	lbz %r7,1(%r4)
	mr %r11,%r4
	mr %r9,%r3
	stb %r7,1(%r3)
	addi %r4,%r4,2
	addi %r3,%r3,2
	lbz %r5,2(%r11)
	stb %r5,2(%r9)
	bdnz .L1522
	blr
.L1569:
	.cfi_offset 31, -8
	lxvw4x %vs0,0,%r8
	mr %r6,%r12
	stxvw4x %vs0,0,%r9
	li %r10,-16
	b .L1466
.L1389:
	.cfi_restore 31
	andi. %r10,%r5,0x1
	addi %r12,%r9,1
	add %r9,%r3,%r12
	add %r4,%r4,%r12
	addi %r3,%r5,-1
	beq- %cr0,.L1451
	cmpdi %cr1,%r3,0
	lbzu %r10,-1(%r4)
	stbu %r10,-1(%r9)
	beqlr- %cr1
.L1451:
	srdi %r10,%r5,1
	cmpdi %cr5,%r10,2
	mtctr %r10
	ble %cr5,.L1525
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1393:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1393
	blr
.L1525:
	lbz %r5,-1(%r4)
	mr %r8,%r4
	mr %r6,%r9
	stb %r5,-1(%r9)
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	lbz %r7,-2(%r8)
	stb %r7,-2(%r6)
	bdnz .L1525
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-.L.__cmovd
	.align 2
	.globl __cmovh
	.section	".opd","aw"
	.align 3
__cmovh:
	.quad	.L.__cmovh,.TOC.@tocbase
	.previous
	.type	__cmovh, @function
.L.__cmovh:
.LFB108:
	.cfi_startproc
	cmpld %cr0,%r3,%r4
	srwi %r10,%r5,1
	blt- %cr0,.L1574
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble- %cr1,.L1707
.L1574:
	cmpwi %cr6,%r10,0
	beq- %cr6,.L1573
	addi %r6,%r10,-1
	cmplwi %cr7,%r6,6
	ble- %cr7,.L1577
	addi %r11,%r4,2
	subf %r9,%r11,%r3
	cmpldi %cr0,%r9,12
	ble- %cr0,.L1577
	srdi %r6,%r5,4
	andi. %r12,%r6,0x3
	addi %r0,%r6,-1
	mr %r7,%r6
	srwi %r8,%r5,4
	li %r9,0
	beq- %cr0,.L1632
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1648
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1708
.L1649:
	lxvw4x %vs8,%r4,%r9
	addi %r6,%r6,-1
	stxvw4x %vs8,%r3,%r9
	addi %r9,%r9,16
.L1648:
	cmpdi %cr6,%r6,1
	lxvw4x %vs9,%r4,%r9
	stxvw4x %vs9,%r3,%r9
	addi %r9,%r9,16
	beq- %cr6,.L1680
.L1632:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1699
	addi %r7,%r7,-1
	mtctr %r7
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r7,%r9,16
.L1578:
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r3,%r7
	addi %r6,%r7,16
	lxvw4x %vs0,%r4,%r6
	stxvw4x %vs0,%r3,%r6
	addi %r7,%r9,48
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r3,%r7
	addi %r9,%r9,64
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r7,%r9,16
	bdnz .L1578
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r3,%r7
	addi %r6,%r7,16
	lxvw4x %vs0,%r4,%r6
	stxvw4x %vs0,%r3,%r6
	addi %r7,%r9,48
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r3,%r7
.L1680:
	slwi %r9,%r8,3
	cmplw %cr0,%r10,%r9
	beq- %cr0,.L1573
	addi %r7,%r9,1
	rlwinm %r8,%r9,1,0,27
	cmplw %cr1,%r10,%r7
	lhzx %r6,%r4,%r8
	sthx %r6,%r3,%r8
	ble- %cr1,.L1573
	addi %r11,%r9,2
	rldic %r12,%r7,1,31
	cmplw %cr5,%r10,%r11
	lhzx %r0,%r4,%r12
	sthx %r0,%r3,%r12
	ble- %cr5,.L1573
	rldicl %r8,%r11,0,32
	addi %r7,%r9,3
	sldi %r11,%r8,1
	cmplw %cr6,%r10,%r7
	lhzx %r6,%r4,%r11
	sthx %r6,%r3,%r11
	ble- %cr6,.L1573
	addi %r12,%r9,4
	rldic %r0,%r7,1,31
	cmplw %cr7,%r10,%r12
	lhzx %r8,%r4,%r0
	sthx %r8,%r3,%r0
	ble- %cr7,.L1573
	rldicl %r11,%r12,0,32
	addi %r7,%r9,5
	sldi %r12,%r11,1
	cmplw %cr0,%r10,%r7
	lhzx %r6,%r4,%r12
	sthx %r6,%r3,%r12
	ble- %cr0,.L1573
	addi %r9,%r9,6
	rldic %r0,%r7,1,31
	cmplw %cr1,%r10,%r9
	lhzx %r10,%r4,%r0
	sthx %r10,%r3,%r0
	ble- %cr1,.L1573
	rldicl %r8,%r9,0,32
	sldi %r11,%r8,1
	lhzx %r7,%r4,%r11
	sthx %r7,%r3,%r11
.L1573:
	andi. %r9,%r5,0x1
	beqlr- %cr0
	addi %r5,%r5,-1
	rldicl %r8,%r5,0,32
	lbzx %r4,%r4,%r8
	stbx %r4,%r3,%r8
	blr
.L1707:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r7,%r11,0,32
	beqlr- %cr5
	cmplwi %cr6,%r11,14
	ble- %cr6,.L1583
	addi %r10,%r7,-1
	add %r0,%r4,%r10
	add %r8,%r3,%r7
	subf %r6,%r0,%r8
	addi %r12,%r6,14
	cmpldi %cr7,%r12,14
	ble- %cr7,.L1583
	srdi %r6,%r5,4
	andi. %r0,%r6,0x3
	addi %r9,%r7,-15
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L1644
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1650
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1709
.L1651:
	lxvw4x %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvw4x %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1650:
	cmpdi %cr6,%r6,1
	lxvw4x %vs2,%r8,%r10
	stxvw4x %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr6,.L1681
.L1644:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1701
	addi %r7,%r7,-1
	mtctr %r7
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
.L1584:
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L1584
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
.L1681:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r11
	beqlr- %cr0
	cmpwi %cr1,%r11,0
	rldicl %r10,%r11,0,32
	lbzx %r8,%r4,%r10
	addi %r9,%r11,-1
	rldicl %r6,%r9,0,32
	stbx %r8,%r3,%r10
	beqlr- %cr1
	cmpdi %cr5,%r6,0
	lbzx %r0,%r4,%r6
	addi %r12,%r11,-2
	stbx %r0,%r3,%r6
	rldicl %r7,%r12,0,32
	beqlr- %cr5
	cmpdi %cr6,%r7,0
	lbzx %r5,%r4,%r7
	addi %r10,%r11,-3
	stbx %r5,%r3,%r7
	rldicl %r9,%r10,0,32
	beqlr- %cr6
	cmpdi %cr7,%r9,0
	lbzx %r8,%r4,%r9
	addi %r6,%r11,-4
	stbx %r8,%r3,%r9
	rldicl %r0,%r6,0,32
	beqlr- %cr7
	cmpdi %cr0,%r0,0
	lbzx %r12,%r4,%r0
	addi %r7,%r11,-5
	stbx %r12,%r3,%r0
	rldicl %r5,%r7,0,32
	beqlr- %cr0
	cmpdi %cr1,%r5,0
	lbzx %r9,%r4,%r5
	addi %r10,%r11,-6
	stbx %r9,%r3,%r5
	rldicl %r6,%r10,0,32
	beqlr- %cr1
	cmpdi %cr5,%r6,0
	lbzx %r8,%r4,%r6
	addi %r0,%r11,-7
	stbx %r8,%r3,%r6
	rldicl %r12,%r0,0,32
	beqlr- %cr5
	cmpdi %cr6,%r12,0
	lbzx %r7,%r4,%r12
	addi %r5,%r11,-8
	stbx %r7,%r3,%r12
	rldicl %r9,%r5,0,32
	beqlr- %cr6
	cmpdi %cr7,%r9,0
	lbzx %r6,%r4,%r9
	addi %r10,%r11,-9
	stbx %r6,%r3,%r9
	rldicl %r0,%r10,0,32
	beqlr- %cr7
	cmpdi %cr0,%r0,0
	lbzx %r8,%r4,%r0
	addi %r12,%r11,-10
	stbx %r8,%r3,%r0
	rldicl %r7,%r12,0,32
	beqlr- %cr0
	cmpdi %cr1,%r7,0
	lbzx %r5,%r4,%r7
	addi %r9,%r11,-11
	stbx %r5,%r3,%r7
	rldicl %r6,%r9,0,32
	beqlr- %cr1
	cmpdi %cr5,%r6,0
	lbzx %r0,%r4,%r6
	addi %r10,%r11,-12
	stbx %r0,%r3,%r6
	rldicl %r12,%r10,0,32
	beqlr- %cr5
	cmpdi %cr6,%r12,0
	lbzx %r8,%r4,%r12
	addi %r7,%r11,-13
	stbx %r8,%r3,%r12
	rldicl %r5,%r7,0,32
	beqlr- %cr6
	cmpdi %cr7,%r5,0
	lbzx %r6,%r4,%r5
	addi %r11,%r11,-14
	stbx %r6,%r3,%r5
	rldicl %r9,%r11,0,32
	beqlr- %cr7
	lbzx %r4,%r4,%r9
	stbx %r4,%r3,%r9
	blr
.L1699:
	addi %r11,%r9,16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r3,%r9
	addi %r12,%r9,32
	lxvw4x %vs11,%r4,%r11
	stxvw4x %vs11,%r3,%r11
	addi %r0,%r9,48
	lxvw4x %vs12,%r4,%r12
	stxvw4x %vs12,%r3,%r12
	addi %r9,%r9,64
	lxvw4x %vs13,%r4,%r0
	stxvw4x %vs13,%r3,%r0
	bdz .L1680
	addi %r11,%r9,16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r3,%r9
	addi %r12,%r9,32
	lxvw4x %vs11,%r4,%r11
	stxvw4x %vs11,%r3,%r11
	addi %r0,%r9,48
	lxvw4x %vs12,%r4,%r12
	stxvw4x %vs12,%r3,%r12
	addi %r9,%r9,64
	lxvw4x %vs13,%r4,%r0
	stxvw4x %vs13,%r3,%r0
	bdnz .L1699
	b .L1680
.L1708:
	lxvw4x %vs7,0,%r4
	mr %r6,%r0
	stxvw4x %vs7,0,%r3
	li %r9,16
	b .L1649
.L1701:
	addi %r0,%r10,-16
	lxvw4x %vs3,%r8,%r10
	stxvw4x %vs3,%r9,%r10
	addi %r12,%r10,-32
	lxvw4x %vs4,%r8,%r0
	stxvw4x %vs4,%r9,%r0
	addi %r7,%r10,-48
	lxvw4x %vs5,%r8,%r12
	stxvw4x %vs5,%r9,%r12
	addi %r10,%r10,-64
	lxvw4x %vs6,%r8,%r7
	stxvw4x %vs6,%r9,%r7
	bdnz .L1701
	b .L1681
.L1577:
	andi. %r9,%r10,0x1
	addi %r12,%r10,-1
	addi %r8,%r4,-2
	addi %r9,%r3,-2
	beq- %cr0,.L1625
	cmpdi %cr5,%r12,0
	lhz %r6,0(%r4)
	mr %r8,%r4
	sth %r6,0(%r3)
	mr %r9,%r3
	beq- %cr5,.L1573
.L1625:
	srdi %r10,%r10,1
	cmpdi %cr6,%r10,2
	mtctr %r10
	ble %cr6,.L1698
	addi %r10,%r10,-1
	mtctr %r10
	lhz %r6,2(%r8)
	sth %r6,2(%r9)
	addi %r7,%r8,2
	lhz %r6,2(%r7)
	addi %r10,%r9,2
	sth %r6,2(%r10)
.L1580:
	lhz %r6,4(%r7)
	sth %r6,4(%r10)
	addi %r7,%r7,4
	lhz %r6,2(%r7)
	addi %r10,%r10,4
	sth %r6,2(%r10)
	bdnz .L1580
	b .L1573
.L1698:
	lhz %r0,2(%r8)
	mr %r11,%r8
	mr %r10,%r9
	sth %r0,2(%r9)
	addi %r8,%r8,4
	addi %r9,%r9,4
	lhz %r7,4(%r11)
	sth %r7,4(%r10)
	bdnz .L1698
	b .L1573
.L1709:
	lxvw4x %vs0,0,%r8
	mr %r6,%r12
	stxvw4x %vs0,0,%r9
	li %r10,-16
	b .L1651
.L1583:
	andi. %r10,%r5,0x1
	addi %r0,%r7,1
	add %r9,%r3,%r0
	add %r4,%r4,%r0
	addi %r3,%r5,-1
	beq- %cr0,.L1637
	cmpdi %cr1,%r3,0
	lbzu %r10,-1(%r4)
	stbu %r10,-1(%r9)
	beqlr- %cr1
.L1637:
	srdi %r10,%r5,1
	cmpdi %cr5,%r10,2
	mtctr %r10
	ble %cr5,.L1700
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1586:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1586
.L1570:
	blr
.L1700:
	lbz %r12,-1(%r4)
	mr %r8,%r4
	mr %r5,%r9
	stb %r12,-1(%r9)
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	lbz %r7,-2(%r8)
	stb %r7,-2(%r5)
	bdnz .L1700
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-.L.__cmovh
	.align 2
	.globl __cmovw
	.section	".opd","aw"
	.align 3
__cmovw:
	.quad	.L.__cmovw,.TOC.@tocbase
	.previous
	.type	__cmovw, @function
.L.__cmovw:
.LFB109:
	.cfi_startproc
	cmpld %cr0,%r3,%r4
	srwi %r11,%r5,2
	rlwinm %r0,%r5,0,0,29
	blt- %cr0,.L1715
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble- %cr1,.L1922
.L1715:
	cmpwi %cr6,%r11,0
	beq- %cr6,.L1923
	addi %r9,%r11,-1
	cmplwi %cr0,%r9,3
	ble- %cr0,.L1717
	addi %r12,%r4,4
	subf %r10,%r12,%r3
	cmpldi %cr1,%r10,8
	ble- %cr1,.L1717
	srdi %r7,%r5,4
	andi. %r6,%r7,0x3
	addi %r12,%r7,-1
	mr %r10,%r7
	srwi %r8,%r5,4
	li %r9,0
	beq- %cr0,.L1792
	cmpdi %cr5,%r6,1
	beq- %cr5,.L1808
	cmpdi %cr6,%r6,2
	bne- %cr6,.L1924
.L1809:
	lxvw4x %vs8,%r4,%r9
	addi %r7,%r7,-1
	stxvw4x %vs8,%r3,%r9
	addi %r9,%r9,16
.L1808:
	cmpdi %cr7,%r7,1
	lxvw4x %vs9,%r4,%r9
	stxvw4x %vs9,%r3,%r9
	addi %r9,%r9,16
	beq- %cr7,.L1850
.L1792:
	srdi %r10,%r10,2
	cmpdi %cr1,%r10,2
	mtctr %r10
	ble %cr1,.L1879
	addi %r10,%r10,-1
	mtctr %r10
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r10,%r9,16
.L1718:
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r7,%r10,16
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r3,%r7
	addi %r10,%r9,48
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r9,%r9,64
	lxvw4x %vs0,%r4,%r9
	stxvw4x %vs0,%r3,%r9
	addi %r10,%r9,16
	bdnz .L1718
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
	addi %r7,%r10,16
	lxvw4x %vs0,%r4,%r7
	stxvw4x %vs0,%r3,%r7
	addi %r10,%r9,48
	lxvw4x %vs0,%r4,%r10
	stxvw4x %vs0,%r3,%r10
.L1850:
	slwi %r9,%r8,2
	cmplw %cr0,%r11,%r9
	beq- %cr0,.L1721
	addi %r6,%r9,1
	rlwinm %r8,%r9,2,0,27
	cmplw %cr5,%r11,%r6
	lwzx %r7,%r4,%r8
	stwx %r7,%r3,%r8
	ble- %cr5,.L1721
	addi %r12,%r9,2
	rldic %r10,%r6,2,31
	cmplw %cr6,%r11,%r12
	lwzx %r11,%r4,%r10
	stwx %r11,%r3,%r10
	ble- %cr6,.L1721
	rldicl %r9,%r12,0,32
	sldi %r6,%r9,2
	lwzx %r8,%r4,%r6
	stwx %r8,%r3,%r6
.L1721:
	cmplw %cr5,%r0,%r5
	bgelr- %cr5
	subf %r9,%r0,%r5
	addi %r8,%r9,-1
	cmplwi %cr6,%r8,14
	rldicl %r10,%r0,0,32
	ble- %cr6,.L1713
	addi %r7,%r10,1
	add %r11,%r4,%r7
	add %r7,%r3,%r10
	subf %r6,%r11,%r7
	cmpldi %cr0,%r6,14
	ble- %cr0,.L1713
	rldicl %r11,%r9,60,36
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	andi. %r12,%r11,0x3
	add %r10,%r4,%r10
	addi %r31,%r11,-1
	mr %r6,%r11
	li %r8,0
	beq- %cr0,.L1780
	cmpdi %cr7,%r12,1
	beq- %cr7,.L1810
	cmpdi %cr1,%r12,2
	bne- %cr1,.L1925
.L1811:
	lxvw4x %vs1,%r10,%r8
	addi %r11,%r11,-1
	stxvw4x %vs1,%r7,%r8
	addi %r8,%r8,16
.L1810:
	cmpdi %cr5,%r11,1
	lxvw4x %vs2,%r10,%r8
	stxvw4x %vs2,%r7,%r8
	addi %r8,%r8,16
	beq- %cr5,.L1849
.L1780:
	srdi %r6,%r6,2
	cmpdi %cr6,%r6,2
	mtctr %r6
	ble %cr6,.L1877
	addi %r6,%r6,-1
	mtctr %r6
	lxvw4x %vs0,%r10,%r8
	stxvw4x %vs0,%r7,%r8
	addi %r6,%r8,16
.L1722:
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r7,%r6
	addi %r11,%r6,16
	lxvw4x %vs0,%r10,%r11
	stxvw4x %vs0,%r7,%r11
	addi %r6,%r8,48
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r7,%r6
	addi %r8,%r8,64
	lxvw4x %vs0,%r10,%r8
	stxvw4x %vs0,%r7,%r8
	addi %r6,%r8,16
	bdnz .L1722
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r7,%r6
	addi %r11,%r6,16
	lxvw4x %vs0,%r10,%r11
	stxvw4x %vs0,%r7,%r11
	addi %r6,%r8,48
	lxvw4x %vs0,%r10,%r6
	stxvw4x %vs0,%r7,%r6
.L1849:
	andi. %r10,%r9,0xf
	rlwinm %r9,%r9,0,0,27
	add %r11,%r9,%r0
	beq- %cr0,.L1918
	addi %r0,%r11,1
	rldicl %r8,%r11,0,32
	cmplw %cr7,%r0,%r5
	lbzx %r10,%r4,%r8
	stbx %r10,%r3,%r8
	bge- %cr7,.L1918
	addi %r12,%r11,2
	rldicl %r31,%r0,0,32
	cmplw %cr1,%r12,%r5
	lbzx %r7,%r4,%r31
	stbx %r7,%r3,%r31
	bge- %cr1,.L1918
	addi %r6,%r11,3
	rldicl %r9,%r12,0,32
	cmplw %cr5,%r6,%r5
	lbzx %r0,%r4,%r9
	stbx %r0,%r3,%r9
	bge- %cr5,.L1918
	addi %r8,%r11,4
	rldicl %r10,%r6,0,32
	cmplw %cr6,%r8,%r5
	lbzx %r12,%r4,%r10
	stbx %r12,%r3,%r10
	bge- %cr6,.L1918
	addi %r31,%r11,5
	rldicl %r6,%r8,0,32
	cmplw %cr0,%r31,%r5
	lbzx %r7,%r4,%r6
	stbx %r7,%r3,%r6
	bge- %cr0,.L1918
	addi %r9,%r11,6
	rldicl %r0,%r31,0,32
	cmplw %cr7,%r9,%r5
	lbzx %r8,%r4,%r0
	stbx %r8,%r3,%r0
	bge- %cr7,.L1918
	addi %r10,%r11,7
	rldicl %r12,%r9,0,32
	cmplw %cr1,%r10,%r5
	lbzx %r31,%r4,%r12
	stbx %r31,%r3,%r12
	bge- %cr1,.L1918
	addi %r6,%r11,8
	rldicl %r9,%r10,0,32
	cmplw %cr5,%r6,%r5
	lbzx %r7,%r4,%r9
	stbx %r7,%r3,%r9
	bge- %cr5,.L1918
	addi %r0,%r11,9
	rldicl %r8,%r6,0,32
	cmplw %cr6,%r0,%r5
	lbzx %r10,%r4,%r8
	stbx %r10,%r3,%r8
	bge- %cr6,.L1918
	addi %r12,%r11,10
	rldicl %r31,%r0,0,32
	cmplw %cr0,%r12,%r5
	lbzx %r6,%r4,%r31
	stbx %r6,%r3,%r31
	bge- %cr0,.L1918
	addi %r9,%r11,11
	rldicl %r0,%r12,0,32
	cmplw %cr7,%r9,%r5
	lbzx %r7,%r4,%r0
	stbx %r7,%r3,%r0
	bge- %cr7,.L1918
	addi %r8,%r11,12
	rldicl %r10,%r9,0,32
	cmplw %cr1,%r8,%r5
	lbzx %r12,%r4,%r10
	stbx %r12,%r3,%r10
	bge- %cr1,.L1918
	addi %r31,%r11,13
	rldicl %r6,%r8,0,32
	cmplw %cr5,%r31,%r5
	lbzx %r9,%r4,%r6
	stbx %r9,%r3,%r6
	bge- %cr5,.L1918
	addi %r11,%r11,14
	rldicl %r0,%r31,0,32
	cmplw %cr6,%r11,%r5
	lbzx %r5,%r4,%r0
	stbx %r5,%r3,%r0
	bge- %cr6,.L1918
	rldicl %r7,%r11,0,32
	lbzx %r4,%r4,%r7
	stbx %r4,%r3,%r7
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
.L1922:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r7,%r11,0,32
	beqlr- %cr5
	cmplwi %cr6,%r11,14
	ble- %cr6,.L1726
	addi %r10,%r7,-1
	add %r0,%r4,%r10
	add %r8,%r3,%r7
	subf %r6,%r0,%r8
	addi %r12,%r6,14
	cmpldi %cr7,%r12,14
	ble- %cr7,.L1726
	srdi %r6,%r5,4
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	andi. %r0,%r6,0x3
	addi %r31,%r7,-15
	add %r8,%r4,%r31
	add %r9,%r3,%r31
	addi %r12,%r6,-1
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L1804
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1812
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1926
.L1813:
	lxvw4x %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvw4x %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1812:
	cmpdi %cr6,%r6,1
	lxvw4x %vs2,%r8,%r10
	stxvw4x %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr6,.L1851
.L1804:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1881
	addi %r7,%r7,-1
	mtctr %r7
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
.L1727:
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvw4x %vs0,%r8,%r10
	stxvw4x %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L1727
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvw4x %vs0,%r8,%r6
	stxvw4x %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvw4x %vs0,%r8,%r7
	stxvw4x %vs0,%r9,%r7
.L1851:
	andi. %r9,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r11
	beq- %cr0,.L1918
	rldicl %r9,%r11,0,32
	cmpwi %cr1,%r11,0
	lbzx %r8,%r4,%r9
	addi %r10,%r11,-1
	stbx %r8,%r3,%r9
	rldicl %r6,%r10,0,32
	beq- %cr1,.L1918
	cmpdi %cr5,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-2
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr5,.L1918
	cmpdi %cr6,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-3
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr6,.L1918
	cmpdi %cr7,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-4
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr7,.L1918
	cmpdi %cr0,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-5
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr0,.L1918
	cmpdi %cr1,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-6
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr1,.L1918
	cmpdi %cr5,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-7
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr5,.L1918
	cmpdi %cr6,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-8
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr6,.L1918
	cmpdi %cr7,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-9
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr7,.L1918
	cmpdi %cr0,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-10
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr0,.L1918
	cmpdi %cr1,%r6,0
	lbzx %r7,%r4,%r6
	addi %r0,%r11,-11
	stbx %r7,%r3,%r6
	rldicl %r31,%r0,0,32
	beq- %cr1,.L1918
	cmpdi %cr5,%r31,0
	lbzx %r12,%r4,%r31
	addi %r5,%r11,-12
	stbx %r12,%r3,%r31
	rldicl %r9,%r5,0,32
	beq- %cr5,.L1918
	cmpdi %cr6,%r9,0
	lbzx %r10,%r4,%r9
	addi %r8,%r11,-13
	stbx %r10,%r3,%r9
	rldicl %r6,%r8,0,32
	beq- %cr6,.L1918
	cmpdi %cr7,%r6,0
	lbzx %r7,%r4,%r6
	addi %r11,%r11,-14
	stbx %r7,%r3,%r6
	rldicl %r0,%r11,0,32
	beq- %cr7,.L1918
	lbzx %r4,%r4,%r0
	stbx %r4,%r3,%r0
	ld %r31,-8(%r1)
	.cfi_restore 31
	blr
.L1879:
	addi %r6,%r9,16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r3,%r9
	addi %r12,%r9,32
	lxvw4x %vs11,%r4,%r6
	stxvw4x %vs11,%r3,%r6
	addi %r10,%r9,48
	lxvw4x %vs12,%r4,%r12
	stxvw4x %vs12,%r3,%r12
	addi %r9,%r9,64
	lxvw4x %vs13,%r4,%r10
	stxvw4x %vs13,%r3,%r10
	bdz .L1850
	addi %r6,%r9,16
	lxvw4x %vs10,%r4,%r9
	stxvw4x %vs10,%r3,%r9
	addi %r12,%r9,32
	lxvw4x %vs11,%r4,%r6
	stxvw4x %vs11,%r3,%r6
	addi %r10,%r9,48
	lxvw4x %vs12,%r4,%r12
	stxvw4x %vs12,%r3,%r12
	addi %r9,%r9,64
	lxvw4x %vs13,%r4,%r10
	stxvw4x %vs13,%r3,%r10
	bdnz .L1879
	b .L1850
.L1877:
	.cfi_offset 31, -8
	addi %r12,%r8,16
	lxvw4x %vs3,%r10,%r8
	stxvw4x %vs3,%r7,%r8
	addi %r31,%r8,32
	lxvw4x %vs4,%r10,%r12
	stxvw4x %vs4,%r7,%r12
	addi %r6,%r8,48
	lxvw4x %vs5,%r10,%r31
	stxvw4x %vs5,%r7,%r31
	addi %r8,%r8,64
	lxvw4x %vs6,%r10,%r6
	stxvw4x %vs6,%r7,%r6
	bdz .L1849
	addi %r12,%r8,16
	lxvw4x %vs3,%r10,%r8
	stxvw4x %vs3,%r7,%r8
	addi %r31,%r8,32
	lxvw4x %vs4,%r10,%r12
	stxvw4x %vs4,%r7,%r12
	addi %r6,%r8,48
	lxvw4x %vs5,%r10,%r31
	stxvw4x %vs5,%r7,%r31
	addi %r8,%r8,64
	lxvw4x %vs6,%r10,%r6
	stxvw4x %vs6,%r7,%r6
	bdnz .L1877
	b .L1849
.L1918:
	ld %r31,-8(%r1)
	.cfi_restore 31
.L1710:
	blr
.L1924:
	lxvw4x %vs7,0,%r4
	mr %r7,%r12
	stxvw4x %vs7,0,%r3
	li %r9,16
	b .L1809
.L1925:
	.cfi_offset 31, -8
	lxvw4x %vs0,0,%r10
	mr %r11,%r31
	stxvw4x %vs0,0,%r7
	li %r8,16
	b .L1811
.L1881:
	addi %r0,%r10,-16
	lxvw4x %vs3,%r8,%r10
	stxvw4x %vs3,%r9,%r10
	addi %r31,%r10,-32
	lxvw4x %vs4,%r8,%r0
	stxvw4x %vs4,%r9,%r0
	addi %r12,%r10,-48
	lxvw4x %vs5,%r8,%r31
	stxvw4x %vs5,%r9,%r31
	addi %r10,%r10,-64
	lxvw4x %vs6,%r8,%r12
	stxvw4x %vs6,%r9,%r12
	bdnz .L1881
	b .L1851
.L1717:
	.cfi_restore 31
	rldicl %r12,%r11,0,32
	andi. %r10,%r12,0x1
	addi %r7,%r12,-1
	addi %r8,%r4,-4
	addi %r10,%r3,-4
	beq- %cr0,.L1785
	cmpdi %cr7,%r7,0
	lwz %r10,0(%r4)
	mr %r8,%r4
	stw %r10,0(%r3)
	mr %r10,%r3
	beq- %cr7,.L1721
.L1785:
	srdi %r9,%r12,1
	cmpdi %cr1,%r9,2
	mtctr %r9
	ble %cr1,.L1878
	addi %r9,%r9,-1
	mtctr %r9
	lwz %r6,4(%r8)
	stw %r6,4(%r10)
	addi %r7,%r8,4
	lwz %r6,4(%r7)
	addi %r9,%r10,4
	stw %r6,4(%r9)
.L1720:
	lwz %r6,8(%r7)
	stw %r6,8(%r9)
	addi %r7,%r7,8
	lwz %r6,4(%r7)
	addi %r9,%r9,8
	stw %r6,4(%r9)
	bdnz .L1720
	b .L1721
.L1878:
	lwz %r11,4(%r8)
	mr %r6,%r8
	mr %r9,%r10
	stw %r11,4(%r10)
	addi %r8,%r8,8
	addi %r10,%r10,8
	lwz %r12,8(%r6)
	stw %r12,8(%r9)
	bdnz .L1878
	b .L1721
.L1923:
	cmpdi %cr7,%r5,0
	rldicl %r10,%r0,0,32
	mr %r9,%r5
	beqlr- %cr7
.L1713:
	rldicl %r12,%r9,0,32
	andi. %r8,%r12,0x1
	addi %r8,%r10,-1
	add %r10,%r3,%r8
	add %r4,%r4,%r8
	addi %r3,%r12,-1
	beq- %cr0,.L1773
	cmpdi %cr7,%r3,0
	lbzu %r6,1(%r4)
	stbu %r6,1(%r10)
	beqlr- %cr7
.L1773:
	srdi %r9,%r12,1
	cmpdi %cr1,%r9,2
	mtctr %r9
	ble %cr1,.L1876
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r7,1(%r4)
	stb %r7,1(%r10)
	addi %r8,%r4,1
	lbz %r7,1(%r8)
	addi %r9,%r10,1
	stb %r7,1(%r9)
.L1724:
	lbz %r7,2(%r8)
	stb %r7,2(%r9)
	addi %r8,%r8,2
	lbz %r7,1(%r8)
	addi %r9,%r9,2
	stb %r7,1(%r9)
	bdnz .L1724
	blr
.L1876:
	lbz %r11,1(%r4)
	mr %r5,%r4
	mr %r9,%r10
	stb %r11,1(%r10)
	addi %r4,%r4,2
	addi %r10,%r10,2
	lbz %r0,2(%r5)
	stb %r0,2(%r9)
	bdnz .L1876
	blr
.L1926:
	.cfi_offset 31, -8
	lxvw4x %vs0,0,%r8
	mr %r6,%r12
	stxvw4x %vs0,0,%r9
	li %r10,-16
	b .L1813
.L1726:
	.cfi_restore 31
	andi. %r10,%r5,0x1
	addi %r12,%r7,1
	add %r9,%r3,%r12
	add %r4,%r4,%r12
	addi %r3,%r5,-1
	beq- %cr0,.L1797
	cmpdi %cr1,%r3,0
	lbzu %r10,-1(%r4)
	stbu %r10,-1(%r9)
	beqlr- %cr1
.L1797:
	srdi %r10,%r5,1
	cmpdi %cr5,%r10,2
	mtctr %r10
	ble %cr5,.L1880
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1730:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1730
	blr
.L1880:
	lbz %r5,-1(%r4)
	mr %r8,%r4
	mr %r6,%r9
	stb %r5,-1(%r9)
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	lbz %r7,-2(%r8)
	stb %r7,-2(%r6)
	bdnz .L1880
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,0
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-.L.__cmovw
	.align 2
	.globl __modi
	.section	".opd","aw"
	.align 3
__modi:
	.quad	.L.__modi,.TOC.@tocbase
	.previous
	.type	__modi, @function
.L.__modi:
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
	.size	__modi,.-.L.__modi
	.align 2
	.globl __uitod
	.section	".opd","aw"
	.align 3
__uitod:
	.quad	.L.__uitod,.TOC.@tocbase
	.previous
	.type	__uitod, @function
.L.__uitod:
.LFB111:
	.cfi_startproc
	mtvsrd %vs1,%r3
	fcfid %f1,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE111:
	.size	__uitod,.-.L.__uitod
	.align 2
	.globl __uitof
	.section	".opd","aw"
	.align 3
__uitof:
	.quad	.L.__uitof,.TOC.@tocbase
	.previous
	.type	__uitof, @function
.L.__uitof:
.LFB112:
	.cfi_startproc
	mtvsrd %vs1,%r3
	fcfids %f1,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE112:
	.size	__uitof,.-.L.__uitof
	.align 2
	.globl __ulltod
	.section	".opd","aw"
	.align 3
__ulltod:
	.quad	.L.__ulltod,.TOC.@tocbase
	.previous
	.type	__ulltod, @function
.L.__ulltod:
.LFB113:
	.cfi_startproc
	mtvsrd %vs1,%r3
	fcfidu %f1,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-.L.__ulltod
	.align 2
	.globl __ulltof
	.section	".opd","aw"
	.align 3
__ulltof:
	.quad	.L.__ulltof,.TOC.@tocbase
	.previous
	.type	__ulltof, @function
.L.__ulltof:
.LFB114:
	.cfi_startproc
	mtvsrd %vs1,%r3
	fcfidus %f1,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-.L.__ulltof
	.align 2
	.globl __umodi
	.section	".opd","aw"
	.align 3
__umodi:
	.quad	.L.__umodi,.TOC.@tocbase
	.previous
	.type	__umodi, @function
.L.__umodi:
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
	.size	__umodi,.-.L.__umodi
	.align 2
	.globl __clzhi2
	.section	".opd","aw"
	.align 3
__clzhi2:
	.quad	.L.__clzhi2,.TOC.@tocbase
	.previous
	.type	__clzhi2, @function
.L.__clzhi2:
.LFB116:
	.cfi_startproc
	srdi. %r9,%r3,15
	bne- %cr0,.L1936
	srawi %r9,%r3,14
	cmpwi %cr1,%r9,0
	bne- %cr1,.L1935
	srdi. %r9,%r3,13
	bne- %cr0,.L1937
	srdi. %r9,%r3,12
	bne- %cr0,.L1938
	srdi. %r9,%r3,11
	bne- %cr0,.L1939
	srdi. %r9,%r3,10
	bne- %cr0,.L1940
	srdi. %r9,%r3,9
	bne- %cr0,.L1941
	srdi. %r9,%r3,8
	bne- %cr0,.L1942
	srdi. %r9,%r3,7
	bne- %cr0,.L1943
	srdi. %r9,%r3,6
	bne- %cr0,.L1944
	srdi. %r9,%r3,5
	bne- %cr0,.L1945
	srdi. %r9,%r3,4
	bne- %cr0,.L1946
	srdi. %r9,%r3,3
	bne- %cr0,.L1947
	srdi. %r9,%r3,2
	bne- %cr0,.L1948
	srdi. %r9,%r3,1
	bne- %cr0,.L1949
	cntlzd %r3,%r3
	srdi %r4,%r3,6
	addi %r9,%r4,15
.L1935:
	rldicl %r3,%r9,0,59
	blr
.L1936:
	li %r9,0
	b .L1935
.L1947:
	li %r9,12
	b .L1935
.L1937:
	li %r9,2
	b .L1935
.L1938:
	li %r9,3
	b .L1935
.L1939:
	li %r9,4
	b .L1935
.L1940:
	li %r9,5
	b .L1935
.L1941:
	li %r9,6
	b .L1935
.L1942:
	li %r9,7
	b .L1935
.L1943:
	li %r9,8
	b .L1935
.L1944:
	li %r9,9
	b .L1935
.L1945:
	li %r9,10
	b .L1935
.L1946:
	li %r9,11
	b .L1935
.L1948:
	li %r9,13
	b .L1935
.L1949:
	li %r9,14
	b .L1935
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-.L.__clzhi2
	.align 2
	.globl __ctzhi2
	.section	".opd","aw"
	.align 3
__ctzhi2:
	.quad	.L.__ctzhi2,.TOC.@tocbase
	.previous
	.type	__ctzhi2, @function
.L.__ctzhi2:
.LFB117:
	.cfi_startproc
	andi. %r9,%r3,0x1
	bne- %cr0,.L1954
	andi. %r9,%r3,0x2
	bne- %cr0,.L1955
	andi. %r9,%r3,0x4
	bne- %cr0,.L1956
	andi. %r9,%r3,0x8
	bne- %cr0,.L1957
	andi. %r9,%r3,0x10
	bne- %cr0,.L1958
	andi. %r9,%r3,0x20
	bne- %cr0,.L1959
	andi. %r9,%r3,0x40
	bne- %cr0,.L1960
	andi. %r9,%r3,0x80
	bne- %cr0,.L1961
	andi. %r9,%r3,0x100
	bne- %cr0,.L1962
	andi. %r9,%r3,0x200
	bne- %cr0,.L1963
	andi. %r9,%r3,0x400
	bne- %cr0,.L1964
	andi. %r9,%r3,0x800
	bne- %cr0,.L1965
	andi. %r9,%r3,0x1000
	bne- %cr0,.L1966
	andi. %r9,%r3,0x2000
	bne- %cr0,.L1967
	andi. %r9,%r3,0x4000
	bne- %cr0,.L1968
	srawi %r3,%r3,15
	cntlzw %r0,%r3
	srwi %r4,%r0,5
	addi %r5,%r4,15
.L1953:
	rldicl %r3,%r5,0,59
	blr
.L1954:
	li %r5,0
	b .L1953
.L1955:
	li %r5,1
	b .L1953
.L1966:
	li %r5,12
	b .L1953
.L1956:
	li %r5,2
	b .L1953
.L1957:
	li %r5,3
	b .L1953
.L1958:
	li %r5,4
	b .L1953
.L1959:
	li %r5,5
	b .L1953
.L1960:
	li %r5,6
	b .L1953
.L1961:
	li %r5,7
	b .L1953
.L1962:
	li %r5,8
	b .L1953
.L1963:
	li %r5,9
	b .L1953
.L1964:
	li %r5,10
	b .L1953
.L1965:
	li %r5,11
	b .L1953
.L1967:
	li %r5,13
	b .L1953
.L1968:
	li %r5,14
	b .L1953
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE117:
	.size	__ctzhi2,.-.L.__ctzhi2
	.align 2
	.globl __fixunssfsi
	.section	".opd","aw"
	.align 3
__fixunssfsi:
	.quad	.L.__fixunssfsi,.TOC.@tocbase
	.previous
	.type	__fixunssfsi, @function
.L.__fixunssfsi:
.LFB118:
	.cfi_startproc
	addis %r9,%r2,.LC36@toc@ha
	lfs %f0,.LC36@toc@l(%r9)
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne- %cr0,.L1976
	fctidz %f1,%f1
	mfvsrd %r3,%vs1
	blr
.L1976:
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
	.size	__fixunssfsi,.-.L.__fixunssfsi
	.align 2
	.globl __parityhi2
	.section	".opd","aw"
	.align 3
__parityhi2:
	.quad	.L.__parityhi2,.TOC.@tocbase
	.previous
	.type	__parityhi2, @function
.L.__parityhi2:
.LFB119:
	.cfi_startproc
	mfvrsave %r11
	oris %r0,%r11,0xc03c
	stw %r11,-4(%r1)
	mtvrsave %r0
	vspltisw %v1,0
	addis %r9,%r2,.LC38@toc@ha
	mtvsrd %vs32,%r3
	lwz %r11,-4(%r1)
	addis %r4,%r2,.LC39@toc@ha
	xxspltw %vs32,%vs32,1
	addis %r10,%r2,.LC40@toc@ha
	addis %r7,%r2,.LC41@toc@ha
	vspltisw %v10,1
	addi %r3,%r9,.LC38@toc@l
	addi %r5,%r4,.LC39@toc@l
	lxvw4x %vs44,0,%r3
	vsraw %v11,%v0,%v12
	addi %r6,%r10,.LC40@toc@l
	xxland %vs44,%vs43,%vs42
	lxvw4x %vs45,0,%r5
	addi %r8,%r7,.LC41@toc@l
	vsraw %v11,%v0,%v13
	lxvw4x %vs45,0,%r6
	xxland %vs43,%vs43,%vs42
	vsraw %v13,%v0,%v13
	vadduwm %v12,%v12,%v11
	xxland %vs45,%vs45,%vs42
	lxvw4x %vs43,0,%r8
	vadduwm %v12,%v13,%v12
	vsraw %v0,%v0,%v11
	xxland %vs42,%vs32,%vs42
	vadduwm %v11,%v10,%v12
	xxsldwi %vs45,%vs43,%vs33,2
	vadduwm %v12,%v13,%v11
	xxsldwi %vs33,%vs44,%vs33,1
	vadduwm %v0,%v1,%v12
	vspltw %v10,%v0,0
	mfvsrwz %r12,%vs42
	rldicl %r3,%r12,0,63
	mtvrsave %r11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-.L.__parityhi2
	.align 2
	.globl __popcounthi2
	.section	".opd","aw"
	.align 3
__popcounthi2:
	.quad	.L.__popcounthi2,.TOC.@tocbase
	.previous
	.type	__popcounthi2, @function
.L.__popcounthi2:
.LFB120:
	.cfi_startproc
	mfvrsave %r11
	oris %r0,%r11,0xc03c
	stw %r11,-4(%r1)
	mtvrsave %r0
	vspltisw %v1,0
	addis %r9,%r2,.LC38@toc@ha
	mtvsrd %vs32,%r3
	lwz %r11,-4(%r1)
	addis %r4,%r2,.LC39@toc@ha
	xxspltw %vs32,%vs32,1
	addis %r10,%r2,.LC40@toc@ha
	addis %r7,%r2,.LC41@toc@ha
	vspltisw %v10,1
	addi %r3,%r9,.LC38@toc@l
	addi %r5,%r4,.LC39@toc@l
	lxvw4x %vs44,0,%r3
	vsraw %v11,%v0,%v12
	addi %r6,%r10,.LC40@toc@l
	xxland %vs44,%vs43,%vs42
	lxvw4x %vs45,0,%r5
	addi %r8,%r7,.LC41@toc@l
	vsraw %v11,%v0,%v13
	lxvw4x %vs45,0,%r6
	xxland %vs43,%vs43,%vs42
	vsraw %v13,%v0,%v13
	vadduwm %v12,%v12,%v11
	xxland %vs45,%vs45,%vs42
	lxvw4x %vs43,0,%r8
	vadduwm %v12,%v13,%v12
	vsraw %v0,%v0,%v11
	xxland %vs42,%vs32,%vs42
	vadduwm %v11,%v10,%v12
	xxsldwi %vs45,%vs43,%vs33,2
	vadduwm %v12,%v13,%v11
	xxsldwi %vs33,%vs44,%vs33,1
	vadduwm %v0,%v1,%v12
	vspltw %v10,%v0,0
	mfvsrwz %r12,%vs42
	extsw %r3,%r12
	mtvrsave %r11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-.L.__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.section	".opd","aw"
	.align 3
__mulsi3_iq2000:
	.quad	.L.__mulsi3_iq2000,.TOC.@tocbase
	.previous
	.type	__mulsi3_iq2000, @function
.L.__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	mr. %r10,%r3
	li %r3,0
	beq- %cr0,.L1982
.L1983:
	rlwinm %r9,%r10,0,31,31
	srwi %r10,%r10,1
	cmpwi %cr1,%r10,0
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	slwi %r4,%r4,1
	bne+ %cr1,.L1983
.L1982:
	rldicl %r3,%r3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000,.-.L.__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.section	".opd","aw"
	.align 3
__mulsi3_lm32:
	.quad	.L.__mulsi3_lm32,.TOC.@tocbase
	.previous
	.type	__mulsi3_lm32, @function
.L.__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr. %r10,%r3
	li %r3,0
	beq- %cr0,.L1987
	cmpdi %cr1,%r4,0
	beq- %cr1,.L1987
.L1988:
	rlwinm %r9,%r4,0,31,31
	srdi. %r4,%r4,1
	neg %r0,%r9
	and %r5,%r0,%r10
	add %r3,%r3,%r5
	rldic %r10,%r10,1,32
	bne+ %cr0,.L1988
.L1987:
	rldicl %r3,%r3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-.L.__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.section	".opd","aw"
	.align 3
__udivmodsi4:
	.quad	.L.__udivmodsi4,.TOC.@tocbase
	.previous
	.type	__udivmodsi4, @function
.L.__udivmodsi4:
.LFB123:
	.cfi_startproc
	cmplw %cr0,%r4,%r3
	li %r8,16
	mtctr %r8
	li %r12,32
	li %r9,1
	blt+ %cr0,.L1993
	b .L2014
.L1997:
	rldicl %r4,%r0,0,32
	slwi %r6,%r4,1
	cmpwi %cr6,%r4,0
	cmplw %cr5,%r3,%r6
	slwi %r9,%r9,1
	ble- %cr7,.L1995
	blt- %cr6,.L1998
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble- %cr5,.L1995
	bdz .L1996
.L1993:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r12,-1
	cmplw %cr7,%r3,%r0
	addi %r12,%r10,-1
	bge+ %cr1,.L1997
.L1998:
	li %r12,0
	li %r11,1
	li %r10,0
.L1999:
	cmplw %cr1,%r3,%r4
	subf %r8,%r4,%r3
	srdi %r4,%r4,1
	isel %r7,0,%r11,4
	cmpwi %cr6,%r7,0
	isel %r0,%r10,%r9,26
	srwi %r9,%r9,1
	cmpwi %cr7,%r9,0
	isel %r3,%r3,%r8,26
	or %r12,%r12,%r0
	rldicl %r3,%r3,0,32
	bne+ %cr7,.L1999
.L1996:
	cmpdi %cr5,%r5,0
	isel %r5,%r12,%r3,22
	rldicl %r3,%r5,0,32
	blr
.L1995:
	cmpwi %cr0,%r9,0
	bne+ %cr0,.L1998
	li %r12,0
	b .L1996
.L2014:
	isel %r9,0,%r9,1
	andi. %r12,%r9,0xff
	subf %r4,%r4,%r3
	isel %r3,%r3,%r4,2
	rldicl %r3,%r3,0,32
	b .L1996
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-.L.__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.section	".opd","aw"
	.align 3
__mspabi_cmpf:
	.quad	.L.__mspabi_cmpf,.TOC.@tocbase
	.previous
	.type	__mspabi_cmpf, @function
.L.__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	blt- %cr0,.L2018
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L2018:
	extsw %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-.L.__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.section	".opd","aw"
	.align 3
__mspabi_cmpd:
	.quad	.L.__mspabi_cmpd,.TOC.@tocbase
	.previous
	.type	__mspabi_cmpd, @function
.L.__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	blt- %cr0,.L2021
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L2021:
	extsw %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-.L.__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.section	".opd","aw"
	.align 3
__mspabi_mpysll:
	.quad	.L.__mspabi_mpysll,.TOC.@tocbase
	.previous
	.type	__mspabi_mpysll, @function
.L.__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mulld %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll,.-.L.__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.section	".opd","aw"
	.align 3
__mspabi_mpyull:
	.quad	.L.__mspabi_mpyull,.TOC.@tocbase
	.previous
	.type	__mspabi_mpyull, @function
.L.__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mulld %r3,%r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull,.-.L.__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.section	".opd","aw"
	.align 3
__mulhi3:
	.quad	.L.__mulhi3,.TOC.@tocbase
	.previous
	.type	__mulhi3, @function
.L.__mulhi3:
.LFB128:
	.cfi_startproc
	cmpwi %cr0,%r4,0
	blt- %cr0,.L2038
	cmpdi %cr1,%r4,0
	beq- %cr1,.L2031
	li %r6,0
.L2027:
	li %r10,32
	li %r8,0
	b .L2030
.L2039:
	beq- %cr7,.L2029
.L2030:
	rlwinm %r9,%r4,0,31,31
	sradi. %r4,%r4,1
	addi %r10,%r10,-1
	neg %r0,%r9
	and %r5,%r0,%r3
	rlwinm %r7,%r10,0,0xff
	slwi %r11,%r3,1
	cmpwi %cr7,%r7,0
	add %r8,%r8,%r5
	extsw %r3,%r11
	bne+ %cr0,.L2039
.L2029:
	cmpwi %cr5,%r6,0
	neg %r12,%r8
	isel %r3,%r8,%r12,22
.L2028:
	extsw %r3,%r3
	blr
.L2038:
	neg %r4,%r4
	extsw %r4,%r4
	li %r6,1
	b .L2027
.L2031:
	li %r3,0
	b .L2028
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE128:
	.size	__mulhi3,.-.L.__mulhi3
	.align 2
	.globl __divsi3
	.section	".opd","aw"
	.align 3
__divsi3:
	.quad	.L.__divsi3,.TOC.@tocbase
	.previous
	.type	__divsi3, @function
.L.__divsi3:
.LFB129:
	.cfi_startproc
	cmpdi %cr0,%r3,0
	li %r9,1
	li %r11,0
	bge+ %cr0,.L2041
	neg %r3,%r3
	li %r9,0
	li %r11,1
.L2041:
	cmpdi %cr1,%r4,0
	bge+ %cr1,.L2042
	neg %r4,%r4
	mr %r11,%r9
.L2042:
	cmplw %cr5,%r3,%r4
	li %r10,16
	mtctr %r10
	li %r12,1
	bgt+ %cr5,.L2043
	b .L2068
.L2047:
	slwi %r4,%r4,1
	cmplw %cr0,%r3,%r4
	cmpwi %cr7,%r4,0
	slwi %r12,%r12,1
	ble- %cr0,.L2045
	blt- %cr7,.L2064
	slwi %r4,%r4,1
	cmplw %cr0,%r3,%r4
	slwi %r12,%r12,1
	ble- %cr0,.L2045
	bdz .L2055
.L2043:
	cmpwi %cr6,%r4,0
	bge+ %cr6,.L2047
.L2064:
	cmplw %cr0,%r3,%r4
	b .L2048
.L2045:
	cmpwi %cr1,%r12,0
	beq- %cr1,.L2055
.L2048:
	li %r0,0
	li %r5,1
	li %r6,0
	b .L2049
.L2072:
	cmplw %cr0,%r3,%r4
.L2049:
	isel %r8,0,%r5,0
	cmpwi %cr5,%r8,0
	subf %r9,%r4,%r3
	srwi %r4,%r4,1
	isel %r7,%r6,%r12,22
	srwi %r12,%r12,1
	cmpwi %cr6,%r12,0
	or %r0,%r0,%r7
	isel %r3,%r3,%r9,22
	bne+ %cr6,.L2072
.L2051:
	cmpwi %cr7,%r11,0
	rldicl %r3,%r0,0,32
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L2055:
	cmpwi %cr7,%r11,0
	li %r3,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L2068:
	isel %r0,0,%r12,20
	b .L2051
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-.L.__divsi3
	.align 2
	.globl __modsi3
	.section	".opd","aw"
	.align 3
__modsi3:
	.quad	.L.__modsi3,.TOC.@tocbase
	.previous
	.type	__modsi3, @function
.L.__modsi3:
.LFB130:
	.cfi_startproc
	cmpdi %cr0,%r3,0
	li %r5,0
	bge+ %cr0,.L2074
	neg %r3,%r3
	li %r5,1
.L2074:
	sradi %r7,%r4,63
	xor %r4,%r7,%r4
	subf %r0,%r7,%r4
	cmplw %cr1,%r3,%r0
	li %r6,16
	mtctr %r6
	mr %r9,%r0
	mr %r11,%r3
	li %r10,1
	bgt+ %cr1,.L2075
	b .L2101
.L2079:
	slwi %r9,%r9,1
	cmplw %cr6,%r11,%r9
	cmpwi %cr7,%r9,0
	slwi %r10,%r10,1
	ble- %cr6,.L2077
	blt- %cr7,.L2098
	slwi %r9,%r9,1
	cmplw %cr6,%r11,%r9
	slwi %r10,%r10,1
	ble- %cr6,.L2077
	bdz .L2078
.L2075:
	cmpwi %cr5,%r9,0
	bge+ %cr5,.L2079
.L2098:
	cmplw %cr6,%r11,%r9
.L2080:
	li %r3,1
	b .L2081
.L2104:
	cmplw %cr6,%r11,%r9
.L2081:
	isel %r12,0,%r3,24
	srwi %r10,%r10,1
	cmpwi %cr1,%r12,0
	cmpwi %cr5,%r10,0
	subf %r7,%r9,%r11
	isel %r11,%r11,%r7,6
	srwi %r9,%r9,1
	bne+ %cr5,.L2104
.L2078:
	cmpwi %cr7,%r5,0
	rldicl %r5,%r11,0,32
	neg %r4,%r5
	isel %r3,%r5,%r4,30
	blr
.L2077:
	cmpwi %cr0,%r10,0
	bne+ %cr0,.L2080
	b .L2078
.L2101:
	subf %r8,%r0,%r3
	isel %r11,%r3,%r8,4
	b .L2078
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-.L.__modsi3
	.align 2
	.globl __udivmodhi4
	.section	".opd","aw"
	.align 3
__udivmodhi4:
	.quad	.L.__udivmodhi4,.TOC.@tocbase
	.previous
	.type	__udivmodhi4, @function
.L.__udivmodhi4:
.LFB131:
	.cfi_startproc
	cmplw %cr0,%r4,%r3
	bge- %cr0,.L2275
	andi. %r9,%r4,0x8000
	bne- %cr0,.L2110
	rldic %r12,%r4,1,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2183
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2183
	rldic %r12,%r4,2,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2185
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2185
	rldic %r12,%r4,3,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2187
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2187
	rldic %r12,%r4,4,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2189
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2189
	rldic %r12,%r4,5,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2191
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2191
	rldic %r12,%r4,6,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2193
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2193
	rldic %r12,%r4,7,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2195
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2195
	rldic %r12,%r4,8,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2197
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2197
	rldic %r12,%r4,9,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2199
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2199
	rldic %r12,%r4,10,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2201
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2201
	rldic %r12,%r4,11,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2203
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2203
	rldic %r12,%r4,12,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2205
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2205
	rldic %r12,%r4,13,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2207
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2207
	rldic %r12,%r4,14,48
	cmplw %cr7,%r3,%r12
	ble- %cr7,.L2209
	andi. %r10,%r12,0x8000
	bne- %cr0,.L2209
	rldic %r7,%r4,15,48
	cmplw %cr6,%r3,%r7
	ble- %cr6,.L2210
	cmpdi %cr1,%r7,0
	li %r11,0
	bne- %cr1,.L2276
.L2113:
	cmpdi %cr6,%r5,0
	beq+ %cr6,.L2172
	mr %r11,%r3
.L2172:
	rlwinm %r3,%r11,0,0xffff
	blr
.L2183:
	li %r8,2
.L2112:
	subf %r6,%r12,%r3
	rlwinm %r0,%r6,0,0xffff
	isel %r4,%r3,%r0,28
	li %r11,0
	blt- %cr7,.L2181
	mr %r11,%r8
.L2181:
	srdi %r3,%r12,1
	cmplw %cr5,%r4,%r3
	subf %r10,%r3,%r4
	rlwinm %r9,%r10,0,0xffff
	rldicl %r7,%r8,63,49
	isel %r3,%r4,%r9,20
	li %r0,0
	blt- %cr5,.L2117
	mr %r0,%r7
.L2117:
	srwi %r6,%r8,2
	cmpwi %cr7,%r6,0
	or %r10,%r0,%r11
	mr %r11,%r10
	srwi %r4,%r8,2
	srdi %r7,%r12,2
	beq- %cr7,.L2113
	cmplw %cr0,%r3,%r7
	li %r11,1
	subf %r9,%r7,%r3
	isel %r0,0,%r11,0
	cmpwi %cr6,%r0,0
	rlwinm %r7,%r9,0,0xffff
	li %r6,0
	isel %r3,%r3,%r7,26
	beq- %cr6,.L2121
	mr %r6,%r4
.L2121:
	srwi %r4,%r8,3
	cmpwi %cr1,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r9,%r12,3
	beq- %cr1,.L2113
	cmplw %cr5,%r3,%r9
	li %r11,1
	subf %r0,%r9,%r3
	isel %r7,0,%r11,20
	cmpwi %cr7,%r7,0
	rlwinm %r9,%r0,0,0xffff
	li %r6,0
	isel %r3,%r3,%r9,30
	beq- %cr7,.L2125
	mr %r6,%r4
.L2125:
	srwi %r4,%r8,4
	cmpwi %cr0,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r0,%r12,4
	beq- %cr0,.L2113
	cmplw %cr6,%r3,%r0
	li %r11,1
	subf %r7,%r0,%r3
	isel %r9,0,%r11,24
	cmpwi %cr1,%r9,0
	rlwinm %r0,%r7,0,0xffff
	li %r6,0
	isel %r3,%r3,%r0,6
	beq- %cr1,.L2129
	mr %r6,%r4
.L2129:
	srwi %r4,%r8,5
	cmpwi %cr5,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r7,%r12,5
	beq- %cr5,.L2113
	cmplw %cr7,%r3,%r7
	li %r11,1
	subf %r9,%r7,%r3
	isel %r0,0,%r11,28
	cmpwi %cr0,%r0,0
	rlwinm %r7,%r9,0,0xffff
	li %r6,0
	isel %r3,%r3,%r7,2
	beq- %cr0,.L2133
	mr %r6,%r4
.L2133:
	srwi %r4,%r8,6
	cmpwi %cr6,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r9,%r12,6
	beq- %cr6,.L2113
	cmplw %cr1,%r3,%r9
	li %r11,1
	subf %r0,%r9,%r3
	isel %r7,0,%r11,4
	cmpwi %cr5,%r7,0
	rlwinm %r9,%r0,0,0xffff
	li %r6,0
	isel %r3,%r3,%r9,22
	beq- %cr5,.L2137
	mr %r6,%r4
.L2137:
	srwi %r4,%r8,7
	cmpwi %cr7,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r0,%r12,7
	beq- %cr7,.L2113
	cmplw %cr0,%r3,%r0
	li %r11,1
	subf %r7,%r0,%r3
	isel %r9,0,%r11,0
	cmpwi %cr6,%r9,0
	rlwinm %r0,%r7,0,0xffff
	li %r6,0
	isel %r3,%r3,%r0,26
	beq- %cr6,.L2141
	mr %r6,%r4
.L2141:
	srwi %r4,%r8,8
	cmpwi %cr1,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r7,%r12,8
	beq- %cr1,.L2113
	cmplw %cr5,%r3,%r7
	li %r11,1
	subf %r9,%r7,%r3
	isel %r0,0,%r11,20
	cmpwi %cr7,%r0,0
	rlwinm %r7,%r9,0,0xffff
	li %r6,0
	isel %r3,%r3,%r7,30
	beq- %cr7,.L2145
	mr %r6,%r4
.L2145:
	srwi %r4,%r8,9
	cmpwi %cr0,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r9,%r12,9
	beq- %cr0,.L2113
	cmplw %cr6,%r3,%r9
	li %r11,1
	subf %r0,%r9,%r3
	isel %r7,0,%r11,24
	cmpwi %cr1,%r7,0
	rlwinm %r9,%r0,0,0xffff
	li %r6,0
	isel %r3,%r3,%r9,6
	beq- %cr1,.L2149
	mr %r6,%r4
.L2149:
	srwi %r4,%r8,10
	cmpwi %cr5,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r0,%r12,10
	beq- %cr5,.L2113
	cmplw %cr7,%r3,%r0
	li %r11,1
	subf %r7,%r0,%r3
	isel %r9,0,%r11,28
	cmpwi %cr0,%r9,0
	rlwinm %r0,%r7,0,0xffff
	li %r6,0
	isel %r3,%r3,%r0,2
	beq- %cr0,.L2153
	mr %r6,%r4
.L2153:
	srwi %r4,%r8,11
	cmpwi %cr6,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r7,%r12,11
	beq- %cr6,.L2113
	cmplw %cr1,%r3,%r7
	li %r11,1
	subf %r9,%r7,%r3
	isel %r0,0,%r11,4
	cmpwi %cr5,%r0,0
	rlwinm %r7,%r9,0,0xffff
	li %r6,0
	isel %r3,%r3,%r7,22
	beq- %cr5,.L2157
	mr %r6,%r4
.L2157:
	srwi %r4,%r8,12
	cmpwi %cr7,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r9,%r12,12
	beq- %cr7,.L2113
	cmplw %cr0,%r3,%r9
	li %r11,1
	subf %r0,%r9,%r3
	isel %r7,0,%r11,0
	cmpwi %cr6,%r7,0
	rlwinm %r9,%r0,0,0xffff
	li %r6,0
	isel %r3,%r3,%r9,26
	beq- %cr6,.L2161
	mr %r6,%r4
.L2161:
	srwi %r4,%r8,13
	cmpwi %cr1,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r0,%r12,13
	beq- %cr1,.L2113
	cmplw %cr5,%r3,%r0
	li %r11,1
	subf %r7,%r0,%r3
	isel %r9,0,%r11,20
	cmpwi %cr7,%r9,0
	rlwinm %r0,%r7,0,0xffff
	li %r6,0
	isel %r3,%r3,%r0,30
	beq- %cr7,.L2165
	mr %r6,%r4
.L2165:
	srwi %r4,%r8,14
	cmpwi %cr0,%r4,0
	or %r10,%r10,%r6
	mr %r11,%r10
	srdi %r7,%r12,14
	beq- %cr0,.L2113
	cmplw %cr6,%r3,%r7
	li %r11,1
	subf %r9,%r7,%r3
	isel %r0,0,%r11,24
	cmpwi %cr1,%r0,0
	rlwinm %r7,%r9,0,0xffff
	li %r6,0
	isel %r3,%r3,%r7,6
	beq- %cr1,.L2169
	mr %r6,%r4
.L2169:
	cmpwi %cr5,%r8,16384
	or %r8,%r10,%r6
	srdi %r12,%r12,15
	mr %r11,%r8
	beq- %cr5,.L2113
	cmplw %cr7,%r3,%r12
	li %r10,1
	subf %r4,%r12,%r3
	isel %r11,0,%r10,28
	cmpwi %cr0,%r11,0
	rlwinm %r9,%r4,0,0xffff
	or %r11,%r8,%r11
	isel %r3,%r3,%r9,2
	b .L2113
.L2185:
	li %r8,4
	b .L2112
.L2187:
	li %r8,8
	b .L2112
.L2189:
	li %r8,16
	b .L2112
.L2199:
	li %r8,512
	b .L2112
.L2191:
	li %r8,32
	b .L2112
.L2193:
	li %r8,64
	b .L2112
.L2195:
	li %r8,128
	b .L2112
.L2197:
	li %r8,256
	b .L2112
.L2275:
	cmpd %cr1,%r4,%r3
	li %r9,0
	li %r6,1
	isel %r11,%r6,%r9,6
	cmpwi %cr5,%r11,0
	subf %r0,%r4,%r3
	rlwinm %r4,%r0,0,0xffff
	isel %r3,%r3,%r4,22
	b .L2113
.L2201:
	li %r8,1024
	b .L2112
.L2203:
	li %r8,2048
	b .L2112
.L2205:
	li %r8,4096
	b .L2112
.L2207:
	li %r8,8192
	b .L2112
.L2209:
	li %r8,16384
	b .L2112
.L2276:
	li %r9,-1
	li %r8,0
	cmplwi %cr7,%r3,32768
	rlwinm %r12,%r9,0,16,16
	ori %r8,%r8,0x8000
	b .L2112
.L2210:
	li %r10,-1
	li %r8,0
	cmplwi %cr7,%r3,32768
	rlwinm %r12,%r10,0,16,16
	ori %r8,%r8,0x8000
	b .L2112
.L2110:
	subf %r3,%r4,%r3
	rlwinm %r3,%r3,0,0xffff
	li %r11,1
	b .L2113
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-.L.__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.section	".opd","aw"
	.align 3
__udivmodsi4_libgcc:
	.quad	.L.__udivmodsi4_libgcc,.TOC.@tocbase
	.previous
	.type	__udivmodsi4_libgcc, @function
.L.__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	cmpld %cr0,%r4,%r3
	li %r10,64
	mtctr %r10
	li %r9,1
	blt+ %cr0,.L2278
	b .L2300
.L2282:
	sldi %r4,%r4,1
	cmpld %cr6,%r3,%r4
	sldi %r9,%r9,1
	ble- %cr6,.L2280
	bdz .L2281
.L2278:
	andis. %r12,%r4,0x8000
	beq+ %cr0,.L2282
	cmpld %cr6,%r3,%r4
.L2283:
	li %r12,0
	li %r11,1
	li %r6,0
	b .L2284
.L2303:
	cmpld %cr6,%r3,%r4
.L2284:
	isel %r8,0,%r11,24
	cmpwi %cr5,%r8,0
	subf %r10,%r4,%r3
	srdi %r4,%r4,1
	isel %r7,%r6,%r9,22
	srdi. %r9,%r9,1
	or %r12,%r12,%r7
	isel %r3,%r3,%r10,22
	bne+ %cr0,.L2303
.L2281:
	cmpdi %cr1,%r5,0
	isel %r3,%r12,%r3,6
	blr
.L2280:
	cmpdi %cr7,%r9,0
	bne+ %cr7,.L2283
	b .L2281
.L2300:
	isel %r9,0,%r9,1
	rlwinm %r0,%r9,0,0xff
	cmpwi %cr1,%r0,0
	subf %r4,%r4,%r3
	rlwinm %r12,%r9,0,0xff
	isel %r3,%r3,%r4,6
	b .L2281
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-.L.__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.section	".opd","aw"
	.align 3
__ashldi3:
	.quad	.L.__ashldi3,.TOC.@tocbase
	.previous
	.type	__ashldi3, @function
.L.__ashldi3:
.LFB133:
	.cfi_startproc
	andi. %r9,%r4,0x20
	mr %r9,%r3
	beq- %cr0,.L2305
	addi %r6,%r4,-32
	slw %r5,%r3,%r6
	li %r4,0
	sldi %r7,%r5,32
	or %r3,%r4,%r7
	blr
.L2305:
	cmpdi %cr1,%r4,0
	beqlr- %cr1
	subfic %r10,%r4,32
	sradi %r8,%r3,32
	srw %r0,%r3,%r10
	slw %r3,%r8,%r4
	or %r5,%r0,%r3
	slw %r4,%r9,%r4
	sldi %r7,%r5,32
	or %r3,%r4,%r7
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-.L.__ashldi3
	.align 2
	.globl __ashlti3
	.section	".opd","aw"
	.align 3
__ashlti3:
	.quad	.L.__ashlti3,.TOC.@tocbase
	.previous
	.type	__ashlti3, @function
.L.__ashlti3:
.LFB134:
	.cfi_startproc
	andi. %r9,%r5,0x40
	beq- %cr0,.L2311
	addi %r5,%r5,-64
	sld %r3,%r4,%r5
	li %r4,0
	blr
.L2311:
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	subfic %r9,%r5,64
	srd %r0,%r4,%r9
	sld %r3,%r3,%r5
	or %r3,%r0,%r3
	sld %r4,%r4,%r5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-.L.__ashlti3
	.align 2
	.globl __ashrdi3
	.section	".opd","aw"
	.align 3
__ashrdi3:
	.quad	.L.__ashrdi3,.TOC.@tocbase
	.previous
	.type	__ashrdi3, @function
.L.__ashrdi3:
.LFB135:
	.cfi_startproc
	andi. %r9,%r4,0x20
	mr %r9,%r3
	beq- %cr0,.L2316
	sradi %r7,%r3,32
	addi %r8,%r4,-32
	sraw %r6,%r7,%r8
	srawi %r4,%r7,31
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
.L2316:
	cmpdi %cr1,%r4,0
	beqlr- %cr1
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
	.size	__ashrdi3,.-.L.__ashrdi3
	.align 2
	.globl __ashrti3
	.section	".opd","aw"
	.align 3
__ashrti3:
	.quad	.L.__ashrti3,.TOC.@tocbase
	.previous
	.type	__ashrti3, @function
.L.__ashrti3:
.LFB136:
	.cfi_startproc
	andi. %r9,%r5,0x40
	beq- %cr0,.L2322
	addi %r5,%r5,-64
	srad %r4,%r3,%r5
	sradi %r3,%r3,63
	blr
.L2322:
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	subfic %r9,%r5,64
	sld %r0,%r3,%r9
	srd %r4,%r4,%r5
	or %r4,%r0,%r4
	srad %r3,%r3,%r5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-.L.__ashrti3
	.align 2
	.globl __bswapdi2
	.section	".opd","aw"
	.align 3
__bswapdi2:
	.quad	.L.__bswapdi2,.TOC.@tocbase
	.previous
	.type	__bswapdi2, @function
.L.__bswapdi2:
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
	.size	__bswapdi2,.-.L.__bswapdi2
	.align 2
	.globl __bswapsi2
	.section	".opd","aw"
	.align 3
__bswapsi2:
	.quad	.L.__bswapsi2,.TOC.@tocbase
	.previous
	.type	__bswapsi2, @function
.L.__bswapsi2:
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
	.size	__bswapsi2,.-.L.__bswapsi2
	.align 2
	.globl __clzsi2
	.section	".opd","aw"
	.align 3
__clzsi2:
	.quad	.L.__clzsi2,.TOC.@tocbase
	.previous
	.type	__clzsi2, @function
.L.__clzsi2:
.LFB139:
	.cfi_startproc
	cmplwi %cr0,%r3,65535
	li %r6,1
	li %r5,0
	isel %r0,0,%r6,1
	slwi %r11,%r0,4
	subfic %r9,%r11,16
	srw %r3,%r3,%r9
	rlwinm %r7,%r3,0,16,23
	cntlzw %r4,%r7
	srwi %r8,%r4,5
	slwi %r12,%r8,3
	subfic %r10,%r12,8
	srw %r6,%r3,%r10
	rlwinm %r0,%r6,0,24,27
	cntlzw %r9,%r0
	srwi %r3,%r9,5
	slwi %r8,%r3,2
	subfic %r7,%r8,4
	srw %r6,%r6,%r7
	rlwinm %r4,%r6,0,28,29
	cntlzw %r10,%r4
	srwi %r0,%r10,5
	slwi %r3,%r0,1
	subfic %r9,%r3,2
	srw %r6,%r6,%r9
	andi. %r4,%r6,0x2
	add %r11,%r12,%r11
	add %r12,%r8,%r11
	subfic %r8,%r6,2
	add %r7,%r3,%r12
	isel %r5,%r8,%r5,2
	add %r4,%r5,%r7
	extsw %r3,%r4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-.L.__clzsi2
	.align 2
	.globl __clzti2
	.section	".opd","aw"
	.align 3
__clzti2:
	.quad	.L.__clzti2,.TOC.@tocbase
	.previous
	.type	__clzti2, @function
.L.__clzti2:
.LFB140:
	.cfi_startproc
	cmpdi %cr0,%r3,0
	subfic %r9,%r3,0
	li %r10,0
	subfe %r9,%r9,%r9
	and %r0,%r9,%r3
	isel %r4,%r4,%r10,2
	cntlzd %r3,%r3
	srdi %r6,%r3,6
	or %r5,%r0,%r4
	cntlzd %r7,%r5
	sldi %r8,%r6,6
	add %r3,%r8,%r7
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-.L.__clzti2
	.align 2
	.globl __cmpdi2
	.section	".opd","aw"
	.align 3
__cmpdi2:
	.quad	.L.__cmpdi2,.TOC.@tocbase
	.previous
	.type	__cmpdi2, @function
.L.__cmpdi2:
.LFB141:
	.cfi_startproc
	sradi %r10,%r3,32
	sradi %r9,%r4,32
	cmpw %cr0,%r10,%r9
	blt- %cr0,.L2332
	li %r0,2
	bgt- %cr0,.L2331
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt- %cr1,.L2331
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2331:
	rldicl %r3,%r0,0,62
	blr
.L2332:
	li %r0,0
	rldicl %r3,%r0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE141:
	.size	__cmpdi2,.-.L.__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.section	".opd","aw"
	.align 3
__aeabi_lcmp:
	.quad	.L.__aeabi_lcmp,.TOC.@tocbase
	.previous
	.type	__aeabi_lcmp, @function
.L.__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	sradi %r10,%r3,32
	sradi %r9,%r4,32
	cmpw %cr0,%r10,%r9
	blt- %cr0,.L2338
	li %r5,1
	bgt- %cr0,.L2337
	cmplw %cr7,%r3,%r4
	cmplw %cr1,%r3,%r4
	li %r0,0
	isel %r3,%r5,%r0,29
	li %r4,-1
	isel %r5,%r4,%r3,4
.L2337:
	extsw %r3,%r5
	blr
.L2338:
	li %r5,-1
	extsw %r3,%r5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-.L.__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.section	".opd","aw"
	.align 3
__cmpti2:
	.quad	.L.__cmpti2,.TOC.@tocbase
	.previous
	.type	__cmpti2, @function
.L.__cmpti2:
.LFB143:
	.cfi_startproc
	cmpd %cr0,%r3,%r5
	blt- %cr0,.L2343
	li %r0,2
	bgt- %cr0,.L2342
	cmpld %cr1,%r4,%r6
	li %r0,0
	blt- %cr1,.L2342
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2342:
	rldicl %r3,%r0,0,62
	blr
.L2343:
	li %r0,0
	rldicl %r3,%r0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-.L.__cmpti2
	.align 2
	.globl __ctzsi2
	.section	".opd","aw"
	.align 3
__ctzsi2:
	.quad	.L.__ctzsi2,.TOC.@tocbase
	.previous
	.type	__ctzsi2, @function
.L.__ctzsi2:
.LFB144:
	.cfi_startproc
	rlwinm %r6,%r3,0,16,31
	cntlzw %r0,%r6
	srwi %r4,%r0,5
	slwi %r5,%r4,4
	srw %r9,%r3,%r5
	rlwinm %r7,%r9,0,24,31
	cntlzw %r3,%r7
	srwi %r8,%r3,5
	slwi %r11,%r8,3
	srw %r10,%r9,%r11
	rlwinm %r12,%r10,0,28,31
	cntlzw %r6,%r12
	srwi %r0,%r6,5
	slwi %r4,%r0,2
	srw %r9,%r10,%r4
	rlwinm %r7,%r9,0,30,31
	cntlzw %r3,%r7
	srwi %r8,%r3,5
	slwi %r10,%r8,1
	srw %r12,%r9,%r10
	rlwinm %r6,%r12,0,30,31
	not %r0,%r6
	add %r5,%r11,%r5
	srwi %r9,%r6,1
	rlwinm %r11,%r0,0,31,31
	subfic %r3,%r9,2
	add %r4,%r4,%r5
	neg %r7,%r11
	add %r8,%r10,%r4
	and %r10,%r7,%r3
	add %r12,%r10,%r8
	extsw %r3,%r12
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE144:
	.size	__ctzsi2,.-.L.__ctzsi2
	.align 2
	.globl __ctzti2
	.section	".opd","aw"
	.align 3
__ctzti2:
	.quad	.L.__ctzti2,.TOC.@tocbase
	.previous
	.type	__ctzti2, @function
.L.__ctzti2:
.LFB145:
	.cfi_startproc
	cmpdi %cr0,%r4,0
	subfic %r9,%r4,0
	subfe %r10,%r10,%r10
	li %r9,0
	isel %r0,%r3,%r9,2
	and %r3,%r10,%r4
	or %r5,%r0,%r3
	cntlzd %r4,%r4
	srdi %r6,%r4,6
	addi %r7,%r5,-1
	sldi %r8,%r6,6
	andc %r11,%r7,%r5
	popcntd %r12,%r11
	add %r3,%r8,%r12
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-.L.__ctzti2
	.align 2
	.globl __ffsti2
	.section	".opd","aw"
	.align 3
__ffsti2:
	.quad	.L.__ffsti2,.TOC.@tocbase
	.previous
	.type	__ffsti2, @function
.L.__ffsti2:
.LFB146:
	.cfi_startproc
	cmpdi %cr0,%r4,0
	bne- %cr0,.L2350
	cmpdi %cr1,%r3,0
	li %r4,0
	bne- %cr1,.L2354
	rldicl %r3,%r4,0,32
	blr
.L2350:
	addi %r9,%r4,-1
	andc %r0,%r9,%r4
	popcntd %r3,%r0
	addi %r4,%r3,1
	rldicl %r3,%r4,0,32
	blr
.L2354:
	addi %r5,%r3,-1
	andc %r6,%r5,%r3
	popcntd %r7,%r6
	addi %r4,%r7,65
	rldicl %r3,%r4,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-.L.__ffsti2
	.align 2
	.globl __lshrdi3
	.section	".opd","aw"
	.align 3
__lshrdi3:
	.quad	.L.__lshrdi3,.TOC.@tocbase
	.previous
	.type	__lshrdi3, @function
.L.__lshrdi3:
.LFB147:
	.cfi_startproc
	andi. %r9,%r4,0x20
	mr %r9,%r3
	beq- %cr0,.L2356
	srdi %r7,%r3,32
	addi %r8,%r4,-32
	srw %r6,%r7,%r8
	li %r4,0
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
.L2356:
	cmpdi %cr1,%r4,0
	beqlr- %cr1
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
	.size	__lshrdi3,.-.L.__lshrdi3
	.align 2
	.globl __lshrti3
	.section	".opd","aw"
	.align 3
__lshrti3:
	.quad	.L.__lshrti3,.TOC.@tocbase
	.previous
	.type	__lshrti3, @function
.L.__lshrti3:
.LFB148:
	.cfi_startproc
	andi. %r9,%r5,0x40
	beq- %cr0,.L2362
	addi %r5,%r5,-64
	srd %r4,%r3,%r5
	li %r3,0
	blr
.L2362:
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	subfic %r9,%r5,64
	sld %r0,%r3,%r9
	srd %r4,%r4,%r5
	or %r4,%r0,%r4
	srd %r3,%r3,%r5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-.L.__lshrti3
	.align 2
	.globl __muldsi3
	.section	".opd","aw"
	.align 3
__muldsi3:
	.quad	.L.__muldsi3,.TOC.@tocbase
	.previous
	.type	__muldsi3, @function
.L.__muldsi3:
.LFB149:
	.cfi_startproc
	rlwinm %r8,%r3,0,16,31
	rlwinm %r9,%r4,0,16,31
	mullw %r7,%r8,%r9
	srwi %r3,%r3,16
	srwi %r4,%r4,16
	mullw %r0,%r9,%r3
	srwi %r10,%r7,16
	mullw %r5,%r8,%r4
	add %r11,%r0,%r10
	rlwinm %r6,%r11,0,0xffff
	srwi %r12,%r11,16
	mullw %r9,%r3,%r4
	add %r8,%r5,%r6
	rlwimi %r7,%r8,16,0,31-16
	srwi %r4,%r8,16
	rldicl %r3,%r7,0,32
	add %r7,%r12,%r9
	add %r0,%r7,%r4
	sldi %r10,%r0,32
	or %r3,%r3,%r10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE149:
	.size	__muldsi3,.-.L.__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.section	".opd","aw"
	.align 3
__muldi3_compiler_rt:
	.quad	.L.__muldi3_compiler_rt,.TOC.@tocbase
	.previous
	.type	__muldi3_compiler_rt, @function
.L.__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	rlwinm %r9,%r4,0,16,31
	rlwinm %r8,%r3,0,16,31
	mullw %r10,%r8,%r9
	srwi %r7,%r3,16
	srwi %r6,%r4,16
	sradi %r11,%r4,32
	sradi %r5,%r3,32
	mullw %r12,%r9,%r7
	srwi %r0,%r10,16
	mullw %r8,%r8,%r6
	add %r9,%r12,%r0
	rlwinm %r12,%r9,0,0xffff
	srwi %r0,%r9,16
	mullw %r7,%r7,%r6
	add %r8,%r8,%r12
	rlwimi %r10,%r8,16,0,31-16
	rldicl %r12,%r10,0,32
	srwi %r6,%r8,16
	mullw %r10,%r3,%r11
	add %r3,%r0,%r7
	add %r11,%r3,%r6
	sldi %r9,%r11,32
	or %r3,%r12,%r9
	sradi %r0,%r3,32
	mullw %r4,%r4,%r5
	add %r5,%r10,%r0
	add %r7,%r5,%r4
	rldimi %r3,%r7,32,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-.L.__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.section	".opd","aw"
	.align 3
__mulddi3:
	.quad	.L.__mulddi3,.TOC.@tocbase
	.previous
	.type	__mulddi3, @function
.L.__mulddi3:
.LFB151:
	.cfi_startproc
	rldicl %r10,%r3,0,32
	rldicl %r9,%r4,0,32
	mr %r8,%r4
	mulld %r4,%r10,%r9
	srdi %r3,%r3,32
	srdi %r0,%r8,32
	mulld %r5,%r9,%r3
	srdi %r7,%r4,32
	mulld %r6,%r10,%r0
	add %r11,%r5,%r7
	rldicl %r12,%r11,0,32
	srdi %r9,%r11,32
	mulld %r3,%r3,%r0
	add %r10,%r6,%r12
	srdi %r8,%r10,32
	rldimi %r4,%r10,32,0
	add %r0,%r9,%r3
	add %r3,%r0,%r8
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE151:
	.size	__mulddi3,.-.L.__mulddi3
	.align 2
	.globl __multi3
	.section	".opd","aw"
	.align 3
__multi3:
	.quad	.L.__multi3,.TOC.@tocbase
	.previous
	.type	__multi3, @function
.L.__multi3:
.LFB152:
	.cfi_startproc
	rldicl %r9,%r6,0,32
	mulld %r3,%r6,%r3
	rldicl %r8,%r4,0,32
	mr %r10,%r4
	srdi %r7,%r4,32
	srdi %r11,%r6,32
	mulld %r4,%r8,%r9
	mulld %r12,%r9,%r7
	srdi %r0,%r4,32
	mulld %r8,%r8,%r11
	add %r9,%r12,%r0
	rldicl %r12,%r9,0,32
	srdi %r0,%r9,32
	mulld %r7,%r7,%r11
	add %r8,%r8,%r12
	srdi %r11,%r8,32
	rldimi %r4,%r8,32,0
	mulld %r5,%r10,%r5
	add %r10,%r0,%r7
	add %r9,%r10,%r11
	add %r6,%r5,%r9
	add %r3,%r6,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE152:
	.size	__multi3,.-.L.__multi3
	.align 2
	.globl __negdi2
	.section	".opd","aw"
	.align 3
__negdi2:
	.quad	.L.__negdi2,.TOC.@tocbase
	.previous
	.type	__negdi2, @function
.L.__negdi2:
.LFB153:
	.cfi_startproc
	neg %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE153:
	.size	__negdi2,.-.L.__negdi2
	.align 2
	.globl __negti2
	.section	".opd","aw"
	.align 3
__negti2:
	.quad	.L.__negti2,.TOC.@tocbase
	.previous
	.type	__negti2, @function
.L.__negti2:
.LFB154:
	.cfi_startproc
	subfic %r4,%r4,0
	subfze %r3,%r3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE154:
	.size	__negti2,.-.L.__negti2
	.align 2
	.globl __paritydi2
	.section	".opd","aw"
	.align 3
__paritydi2:
	.quad	.L.__paritydi2,.TOC.@tocbase
	.previous
	.type	__paritydi2, @function
.L.__paritydi2:
.LFB155:
	.cfi_startproc
	srdi %r9,%r3,32
	xor %r3,%r9,%r3
	srwi %r0,%r3,16
	xor %r4,%r0,%r3
	srwi %r5,%r4,8
	xor %r6,%r5,%r4
	srwi %r7,%r6,4
	xor %r8,%r7,%r6
	rlwinm %r10,%r8,0,28,31
	li %r11,27030
	sraw %r12,%r11,%r10
	rldicl %r3,%r12,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE155:
	.size	__paritydi2,.-.L.__paritydi2
	.align 2
	.globl __parityti2
	.section	".opd","aw"
	.align 3
__parityti2:
	.quad	.L.__parityti2,.TOC.@tocbase
	.previous
	.type	__parityti2, @function
.L.__parityti2:
.LFB156:
	.cfi_startproc
	xor %r4,%r4,%r3
	sradi %r10,%r4,32
	xor %r0,%r10,%r4
	srwi %r9,%r0,16
	xor %r3,%r9,%r0
	srwi %r5,%r3,8
	xor %r6,%r5,%r3
	srwi %r7,%r6,4
	xor %r8,%r7,%r6
	rlwinm %r11,%r8,0,28,31
	li %r12,27030
	sraw %r4,%r12,%r11
	rldicl %r3,%r4,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-.L.__parityti2
	.align 2
	.globl __paritysi2
	.section	".opd","aw"
	.align 3
__paritysi2:
	.quad	.L.__paritysi2,.TOC.@tocbase
	.previous
	.type	__paritysi2, @function
.L.__paritysi2:
.LFB157:
	.cfi_startproc
	srwi %r9,%r3,16
	xor %r0,%r9,%r3
	srwi %r3,%r0,8
	xor %r4,%r3,%r0
	srwi %r5,%r4,4
	xor %r6,%r5,%r4
	rlwinm %r7,%r6,0,28,31
	li %r8,27030
	sraw %r10,%r8,%r7
	rldicl %r3,%r10,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE157:
	.size	__paritysi2,.-.L.__paritysi2
	.align 2
	.globl __popcountdi2
	.section	".opd","aw"
	.align 3
__popcountdi2:
	.quad	.L.__popcountdi2,.TOC.@tocbase
	.previous
	.type	__popcountdi2, @function
.L.__popcountdi2:
.LFB158:
	.cfi_startproc
	lis %r10,0x5555
	ori %r0,%r10,0x5555
	srdi %r9,%r3,1
	rldimi %r0,%r0,32,0
	and %r4,%r9,%r0
	lis %r5,0x3333
	subf %r3,%r4,%r3
	ori %r6,%r5,0x3333
	srdi %r8,%r3,2
	rldimi %r6,%r6,32,0
	and %r7,%r8,%r6
	and %r11,%r3,%r6
	add %r12,%r7,%r11
	lis %r10,0xf0f
	srdi %r0,%r12,4
	ori %r4,%r10,0xf0f
	add %r9,%r0,%r12
	rldimi %r4,%r4,32,0
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
	.size	__popcountdi2,.-.L.__popcountdi2
	.align 2
	.globl __popcountsi2
	.section	".opd","aw"
	.align 3
__popcountsi2:
	.quad	.L.__popcountsi2,.TOC.@tocbase
	.previous
	.type	__popcountsi2, @function
.L.__popcountsi2:
.LFB159:
	.cfi_startproc
	lis %r10,0x5555
	srwi %r9,%r3,1
	ori %r0,%r10,0x5555
	and %r4,%r9,%r0
	subf %r3,%r4,%r3
	lis %r5,0x3333
	ori %r7,%r5,0x3333
	srwi %r6,%r3,2
	and %r8,%r6,%r7
	and %r11,%r3,%r7
	add %r12,%r8,%r11
	srwi %r10,%r12,4
	lis %r0,0xf0f
	add %r9,%r10,%r12
	ori %r4,%r0,0xf0f
	and %r3,%r9,%r4
	srwi %r5,%r3,16
	add %r6,%r5,%r3
	srwi %r7,%r6,8
	add %r8,%r7,%r6
	rldicl %r3,%r8,0,58
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE159:
	.size	__popcountsi2,.-.L.__popcountsi2
	.align 2
	.globl __popcountti2
	.section	".opd","aw"
	.align 3
__popcountti2:
	.quad	.L.__popcountti2,.TOC.@tocbase
	.previous
	.type	__popcountti2, @function
.L.__popcountti2:
.LFB160:
	.cfi_startproc
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	lis %r31,0x5555
	std %r30,-16(%r1)
	.cfi_offset 30, -16
	sldi %r5,%r3,63
	srdi %r7,%r4,1
	lis %r30,0x5555
	ori %r9,%r31,0x5555
	or %r0,%r5,%r7
	ori %r8,%r30,0x5555
	rldimi %r9,%r9,32,0
	and %r11,%r9,%r0
	srdi %r6,%r3,1
	rldimi %r8,%r8,32,0
	subfc %r12,%r11,%r4
	and %r10,%r8,%r6
	subfe %r3,%r10,%r3
	lis %r8,0x3333
	sldi %r4,%r3,62
	srdi %r5,%r12,2
	lis %r6,0x3333
	ori %r31,%r8,0x3333
	or %r7,%r4,%r5
	rldimi %r31,%r31,32,0
	ori %r30,%r6,0x3333
	and %r11,%r7,%r31
	srdi %r0,%r3,2
	rldimi %r30,%r30,32,0
	and %r9,%r12,%r31
	addc %r12,%r11,%r9
	and %r10,%r0,%r30
	and %r3,%r3,%r30
	adde %r4,%r10,%r3
	srdi %r5,%r12,4
	rldimi %r5,%r4,60,0
	lis %r30,0xf0f
	lis %r31,0xf0f
	addc %r7,%r5,%r12
	srdi %r0,%r4,4
	ori %r8,%r30,0xf0f
	ld %r30,-16(%r1)
	ori %r10,%r31,0xf0f
	ld %r31,-8(%r1)
	adde %r6,%r0,%r4
	rldimi %r8,%r8,32,0
	rldimi %r10,%r10,32,0
	and %r3,%r7,%r10
	and %r11,%r6,%r8
	add %r9,%r11,%r3
	srdi %r12,%r9,32
	add %r4,%r12,%r9
	srwi %r5,%r4,16
	add %r7,%r5,%r4
	srwi %r0,%r7,8
	add %r6,%r0,%r7
	rlwinm %r3,%r6,0,0xff
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,0,0,2,0,0
	.cfi_endproc
.LFE160:
	.size	__popcountti2,.-.L.__popcountti2
	.align 2
	.globl __powidf2
	.section	".opd","aw"
	.align 3
__powidf2:
	.quad	.L.__powidf2,.TOC.@tocbase
	.previous
	.type	__powidf2, @function
.L.__powidf2:
.LFB161:
	.cfi_startproc
	addis %r9,%r2,.LC31@toc@ha
	fmr %f0,%f1
	lfs %f12,.LC31@toc@l(%r9)
	andi. %r9,%r4,0x1
	mr %r3,%r4
	fmr %f1,%f12
	beq- %cr0,.L2380
.L2382:
	fmul %f1,%f1,%f0
.L2380:
	srawi %r0,%r3,1
	addze %r0,%r0
	extsw. %r3,%r0
	beq- %cr0,.L2381
	andi. %r10,%r3,0x1
	fmul %f0,%f0,%f0
	srawi %r10,%r3,1
	addze %r10,%r10
	bne- %cr0,.L2382
.L2386:
	extsw %r3,%r10
	fmul %f0,%f0,%f0
	andi. %r10,%r3,0x1
	srawi %r10,%r3,1
	addze %r10,%r10
	bne- %cr0,.L2382
	b .L2386
.L2381:
	cmpwi %cr1,%r4,0
	bgelr+ %cr1
	fdiv %f1,%f12,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-.L.__powidf2
	.align 2
	.globl __powisf2
	.section	".opd","aw"
	.align 3
__powisf2:
	.quad	.L.__powisf2,.TOC.@tocbase
	.previous
	.type	__powisf2, @function
.L.__powisf2:
.LFB162:
	.cfi_startproc
	addis %r9,%r2,.LC31@toc@ha
	fmr %f0,%f1
	lfs %f12,.LC31@toc@l(%r9)
	andi. %r9,%r4,0x1
	mr %r3,%r4
	fmr %f1,%f12
	beq- %cr0,.L2388
.L2390:
	fmuls %f1,%f1,%f0
.L2388:
	srawi %r0,%r3,1
	addze %r0,%r0
	extsw. %r3,%r0
	beq- %cr0,.L2389
	andi. %r10,%r3,0x1
	fmuls %f0,%f0,%f0
	srawi %r10,%r3,1
	addze %r10,%r10
	bne- %cr0,.L2390
.L2394:
	extsw %r3,%r10
	fmuls %f0,%f0,%f0
	andi. %r10,%r3,0x1
	srawi %r10,%r3,1
	addze %r10,%r10
	bne- %cr0,.L2390
	b .L2394
.L2389:
	cmpwi %cr1,%r4,0
	bgelr+ %cr1
	fdivs %f1,%f12,%f1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-.L.__powisf2
	.align 2
	.globl __ucmpdi2
	.section	".opd","aw"
	.align 3
__ucmpdi2:
	.quad	.L.__ucmpdi2,.TOC.@tocbase
	.previous
	.type	__ucmpdi2, @function
.L.__ucmpdi2:
.LFB163:
	.cfi_startproc
	srdi %r10,%r3,32
	srdi %r9,%r4,32
	cmplw %cr0,%r10,%r9
	blt- %cr0,.L2397
	li %r0,2
	bgt- %cr0,.L2396
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt- %cr1,.L2396
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2396:
	rldicl %r3,%r0,0,62
	blr
.L2397:
	li %r0,0
	rldicl %r3,%r0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2,.-.L.__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.section	".opd","aw"
	.align 3
__aeabi_ulcmp:
	.quad	.L.__aeabi_ulcmp,.TOC.@tocbase
	.previous
	.type	__aeabi_ulcmp, @function
.L.__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	srdi %r10,%r3,32
	srdi %r9,%r4,32
	cmplw %cr0,%r10,%r9
	blt- %cr0,.L2403
	li %r5,1
	bgt- %cr0,.L2402
	cmplw %cr7,%r3,%r4
	cmplw %cr1,%r3,%r4
	li %r0,0
	isel %r3,%r5,%r0,29
	li %r4,-1
	isel %r5,%r4,%r3,4
.L2402:
	extsw %r3,%r5
	blr
.L2403:
	li %r5,-1
	extsw %r3,%r5
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-.L.__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.section	".opd","aw"
	.align 3
__ucmpti2:
	.quad	.L.__ucmpti2,.TOC.@tocbase
	.previous
	.type	__ucmpti2, @function
.L.__ucmpti2:
.LFB165:
	.cfi_startproc
	cmpld %cr0,%r3,%r5
	blt- %cr0,.L2408
	li %r0,2
	bgt- %cr0,.L2407
	cmpld %cr1,%r4,%r6
	li %r0,0
	blt- %cr1,.L2407
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
	addi %r0,%r3,1
.L2407:
	rldicl %r3,%r0,0,62
	blr
.L2408:
	li %r0,0
	rldicl %r3,%r0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
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
	.set	.LC14,.LC22
	.section	.rodata.cst4
	.align 2
.LC15:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC22:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC23:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC27:
	.long	-1082130432
	.align 2
.LC29:
	.long	-1090519040
	.align 2
.LC31:
	.long	1065353216
	.align 2
.LC36:
	.long	1191182336
	.section	.rodata.cst16
	.align 4
.LC38:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC39:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC40:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC41:
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
