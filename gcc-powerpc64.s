	.file	"mini-libc.c"
	.machine power10
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
	cmpdi %cr6,%r5,0
	add %r11,%r4,%r5
	add %r6,%r3,%r5
	beqlr- %cr6
	addi %r9,%r5,-1
	cmpldi %cr7,%r9,14
	ble- %cr7,.L7
	addi %r12,%r5,-2
	add %r10,%r4,%r12
	add %r8,%r3,%r9
	subf %r7,%r10,%r8
	addi %r0,%r7,14
	cmpldi %cr0,%r0,14
	ble- %cr0,.L7
	srdi %r7,%r5,4
	andi. %r0,%r7,0x3
	addi %r9,%r5,-16
	add %r4,%r4,%r9
	add %r10,%r3,%r9
	addi %r12,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq- %cr0,.L68
	cmpdi %cr1,%r0,1
	beq- %cr1,.L84
	cmpdi %cr5,%r0,2
	beq- %cr5,.L85
	mr %r7,%r12
	lxv %vs8,0(%r4)
	stxv %vs8,0(%r10)
	li %r9,-16
.L85:
	lxvx %vs9,%r4,%r9
	addi %r7,%r7,-1
	stxvx %vs9,%r10,%r9
	addi %r9,%r9,-16
.L84:
	cmpdi %cr6,%r7,1
	lxvx %vs10,%r4,%r9
	stxvx %vs10,%r10,%r9
	addi %r9,%r9,-16
	beq- %cr6,.L118
.L68:
	srdi %r8,%r8,2
	cmpdi %cr7,%r8,2
	mtctr %r8
	ble %cr7,.L133
	addi %r8,%r8,-1
	mtctr %r8
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r10,%r9
	addi %r8,%r9,-16
.L8:
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r10,%r8
	addi %r7,%r8,-16
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r10,%r7
	addi %r8,%r9,-48
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r10,%r8
	addi %r9,%r9,-64
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r10,%r9
	addi %r8,%r9,-16
	bdnz .L8
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r10,%r8
	addi %r7,%r8,-16
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r10,%r7
	addi %r8,%r9,-48
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r10,%r8
.L118:
	andi. %r9,%r5,0xf
	rldicr %r4,%r5,0,59
	subf %r11,%r4,%r11
	subf %r6,%r4,%r6
	subf %r5,%r4,%r5
	beqlr- %cr0
	cmpldi %cr1,%r5,1
	lbz %r10,-1(%r11)
	stb %r10,-1(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,2
	lbz %r9,-2(%r11)
	stb %r9,-2(%r6)
	beqlr- %cr5
	cmpldi %cr6,%r5,3
	lbz %r7,-3(%r11)
	stb %r7,-3(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,4
	lbz %r0,-4(%r11)
	stb %r0,-4(%r6)
	beqlr- %cr7
	cmpldi %cr0,%r5,5
	lbz %r12,-5(%r11)
	stb %r12,-5(%r6)
	beqlr- %cr0
	cmpldi %cr1,%r5,6
	lbz %r8,-6(%r11)
	stb %r8,-6(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,7
	lbz %r4,-7(%r11)
	stb %r4,-7(%r6)
	beqlr- %cr5
	cmpldi %cr6,%r5,8
	lbz %r10,-8(%r11)
	stb %r10,-8(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,9
	lbz %r9,-9(%r11)
	stb %r9,-9(%r6)
	beqlr- %cr7
	cmpldi %cr0,%r5,10
	lbz %r7,-10(%r11)
	stb %r7,-10(%r6)
	beqlr- %cr0
	cmpldi %cr1,%r5,11
	lbz %r0,-11(%r11)
	stb %r0,-11(%r6)
	beqlr- %cr1
	cmpldi %cr5,%r5,12
	lbz %r12,-12(%r11)
	stb %r12,-12(%r6)
	beqlr- %cr5
	cmpldi %cr6,%r5,13
	lbz %r8,-13(%r11)
	stb %r8,-13(%r6)
	beqlr- %cr6
	cmpldi %cr7,%r5,14
	lbz %r5,-14(%r11)
	stb %r5,-14(%r6)
	beqlr- %cr7
	lbz %r11,-15(%r11)
	stb %r11,-15(%r6)
	blr
.L5:
	beqlr- %cr0
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r4,1
	subf %r0,%r9,%r3
	cmpldi %cr5,%r0,14
	ble- %cr5,.L12
	addi %r6,%r5,-1
	cmpldi %cr6,%r6,14
	ble- %cr6,.L19
	srdi %r8,%r5,4
	andi. %r11,%r8,0x3
	addi %r12,%r8,-1
	mr %r10,%r8
	li %r9,0
	beq- %cr0,.L80
	cmpdi %cr7,%r11,1
	beq- %cr7,.L86
	cmpdi %cr1,%r11,2
	beq- %cr1,.L87
	mr %r8,%r12
	lxv %vs0,0(%r4)
	stxv %vs0,0(%r3)
	li %r9,16
.L87:
	lxvx %vs1,%r4,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r3,%r9
	addi %r9,%r9,16
.L86:
	cmpdi %cr5,%r8,1
	lxvx %vs2,%r4,%r9
	stxvx %vs2,%r3,%r9
	addi %r9,%r9,16
	beq- %cr5,.L119
.L80:
	srdi %r10,%r10,2
	cmpdi %cr6,%r10,2
	mtctr %r10
	ble %cr6,.L135
	addi %r10,%r10,-1
	mtctr %r10
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r3,%r9
	addi %r10,%r9,16
.L14:
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r9,%r9,64
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r3,%r9
	addi %r10,%r9,16
	bdnz .L14
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
.L119:
	andi. %r9,%r5,0xf
	rldicr %r7,%r5,0,59
	beqlr- %cr0
.L13:
	subf %r5,%r7,%r5
	cmpldi %cr7,%r5,16
	li %r9,16
	add %r4,%r4,%r7
	isel %r11,%r9,%r5,29
	sldi %r10,%r11,56
	add %r12,%r3,%r7
	lxvl %vs7,%r4,%r10
	stxvl %vs7,%r12,%r10
	blr
.L133:
	addi %r0,%r9,-16
	lxvx %vs11,%r4,%r9
	stxvx %vs11,%r10,%r9
	addi %r12,%r9,-32
	lxvx %vs12,%r4,%r0
	stxvx %vs12,%r10,%r0
	addi %r8,%r9,-48
	lxvx %vs13,%r4,%r12
	stxvx %vs13,%r10,%r12
	addi %r9,%r9,-64
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r10,%r8
	bdz .L118
	addi %r0,%r9,-16
	lxvx %vs11,%r4,%r9
	stxvx %vs11,%r10,%r9
	addi %r12,%r9,-32
	lxvx %vs12,%r4,%r0
	stxvx %vs12,%r10,%r0
	addi %r8,%r9,-48
	lxvx %vs13,%r4,%r12
	stxvx %vs13,%r10,%r12
	addi %r9,%r9,-64
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r10,%r8
	bdnz .L133
	b .L118
.L135:
	addi %r0,%r9,16
	lxvx %vs3,%r4,%r9
	stxvx %vs3,%r3,%r9
	addi %r6,%r9,32
	lxvx %vs4,%r4,%r0
	stxvx %vs4,%r3,%r0
	addi %r7,%r9,48
	lxvx %vs5,%r4,%r6
	stxvx %vs5,%r3,%r6
	addi %r9,%r9,64
	lxvx %vs6,%r4,%r7
	stxvx %vs6,%r3,%r7
	bdnz .L135
	b .L119
.L7:
	andi. %r10,%r9,0x1
	bne- %cr0,.L141
.L61:
	srdi %r10,%r9,1
	addi %r9,%r10,1
	mtctr %r9
	b .L10
.L142:
	lbz %r0,-1(%r12)
	addi %r11,%r11,-2
	addi %r6,%r6,-2
	stb %r0,-1(%r5)
.L10:
	lbz %r7,-1(%r11)
	addi %r12,%r11,-1
	addi %r5,%r6,-1
	stb %r7,-1(%r6)
	bdnz .L142
.L6:
	blr
.L141:
	lbzu %r4,-1(%r11)
	stbu %r4,-1(%r6)
	b .L61
.L12:
	andi. %r9,%r5,0x1
	addi %r10,%r3,-1
	addi %r9,%r4,-1
	addi %r8,%r5,-1
	beq- %cr0,.L73
	cmpdi %cr1,%r8,0
	lbz %r0,0(%r4)
	mr %r9,%r4
	stb %r0,0(%r3)
	mr %r10,%r3
	beqlr- %cr1
.L73:
	srdi %r8,%r5,1
	cmpdi %cr5,%r8,2
	mtctr %r8
	ble %cr5,.L134
	addi %r8,%r8,-1
	mtctr %r8
	lbz %r6,1(%r9)
	stb %r6,1(%r10)
	addi %r7,%r9,1
	lbz %r6,1(%r7)
	addi %r8,%r10,1
	stb %r6,1(%r8)
.L17:
	lbz %r6,2(%r7)
	stb %r6,2(%r8)
	addi %r7,%r7,2
	lbz %r6,1(%r7)
	addi %r8,%r8,2
	stb %r6,1(%r8)
	bdnz .L17
	blr
.L134:
	lbz %r6,1(%r9)
	mr %r7,%r9
	mr %r5,%r10
	stb %r6,1(%r10)
	addi %r9,%r9,2
	addi %r10,%r10,2
	lbz %r4,2(%r7)
	stb %r4,2(%r5)
	bdnz .L134
	blr
.L19:
	li %r7,0
	b .L13
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
	beq- %cr0,.L144
	andi. %r9,%r6,0x1
	addi %r8,%r6,-1
	addi %r9,%r4,-1
	bne- %cr0,.L165
.L154:
	srdi %r0,%r6,1
	mtctr %r0
	b .L145
.L147:
	lbz %r12,1(%r6)
	rlwinm %r8,%r12,0,0xff
	stbu %r12,1(%r3)
	cmpw %cr7,%r8,%r5
	beq- %cr7,.L162
	addi %r3,%r3,1
	bdz .L144
.L145:
	lbz %r4,1(%r9)
	addi %r6,%r9,1
	addi %r9,%r6,1
	rlwinm %r11,%r4,0,0xff
	stb %r4,0(%r3)
	cmpw %cr6,%r11,%r5
	bne+ %cr6,.L147
.L162:
	addi %r3,%r3,1
	blr
.L165:
	lbz %r10,0(%r4)
	mr %r9,%r4
	rlwinm %r7,%r10,0,0xff
	stb %r10,0(%r3)
	cmpw %cr1,%r7,%r5
	beq- %cr1,.L162
	cmpdi %cr5,%r8,0
	addi %r3,%r3,1
	bne+ %cr5,.L154
.L144:
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
	beq- %cr0,.L170
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L187
.L173:
	srdi %r0,%r5,1
	mtctr %r0
.L167:
	lbz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lbzu %r6,1(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,1
	bdnz .L167
.L170:
	li %r3,0
	blr
.L187:
	lbz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,1
	bne+ %cr5,.L173
	b .L170
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
	beq- %cr0,.L193
	andi. %r9,%r5,0x1
	addi %r8,%r5,-1
	bne- %cr0,.L210
.L196:
	srdi %r0,%r5,1
	mtctr %r0
	b .L189
.L191:
	lbz %r10,1(%r3)
	addi %r3,%r7,1
	lbz %r9,1(%r4)
	addi %r4,%r5,1
	cmpw %cr7,%r10,%r9
	bne- %cr7,.L205
	bdz .L193
.L189:
	lbz %r10,0(%r3)
	addi %r7,%r3,1
	lbz %r9,0(%r4)
	addi %r5,%r4,1
	cmpw %cr6,%r10,%r9
	beq+ %cr6,.L191
.L205:
	subf %r3,%r9,%r10
	extsw %r3,%r3
	blr
.L210:
	lbz %r10,0(%r3)
	lbz %r9,0(%r4)
	cmpw %cr1,%r10,%r9
	bne- %cr1,.L205
	cmpdi %cr5,%r8,0
	addi %r3,%r3,1
	addi %r4,%r4,1
	bne+ %cr5,.L196
.L193:
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
	beq- %cr0,.L212
	mflr %r0
	.cfi_register 65, 0
	std %r0,144(%r1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld %r0,144(%r1)
	mtlr %r0
	.cfi_restore 65
.L212:
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
	beq- %cr0,.L222
	lbz %r8,0(%r11)
	mr %r3,%r11
	addi %r11,%r11,-1
	cmpw %cr1,%r8,%r4
	beqlr- %cr1
.L222:
	srdi %r3,%r10,1
	addi %r0,%r3,1
	mtctr %r0
	bdz .L230
.L220:
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
	bdnz .L220
.L230:
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
	beq- %cr0,.L234
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
.L234:
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
.L238:
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	beqlr- %cr1
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	bne+ %cr1,.L238
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
.L249:
	lbzu %r9,1(%r3)
	cmpwi %cr5,%r9,0
	beqlr- %cr5
	cmpw %cr1,%r9,%r4
	bne+ %cr1,.L249
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
.L252:
	lbz %r9,0(%r3)
	cmpw %cr0,%r9,%r4
	cmpwi %cr7,%r9,0
	beqlr- %cr0
	addi %r3,%r3,1
	bne+ %cr7,.L252
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
	beq+ %cr0,.L257
	b .L256
.L258:
	lbzu %r9,1(%r3)
	lbzu %r10,1(%r4)
	cmpw %cr5,%r9,%r10
	bne- %cr5,.L256
.L257:
	cmpwi %cr1,%r9,0
	bne+ %cr1,.L258
.L256:
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
	beq- %cr0,.L266
	mr %r4,%r3
.L265:
	lbzu %r10,1(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L265
	subf %r3,%r3,%r4
	blr
.L266:
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
	beq- %cr0,.L276
	lbz %r10,0(%r3)
	addi %r5,%r5,-1
	add %r0,%r3,%r5
	cmpwi %cr1,%r10,0
	subf %r6,%r3,%r0
	addi %r9,%r6,1
	mtctr %r9
	bne+ %cr1,.L272
	b .L281
.L283:
	bdz .L271
	bne- %cr7,.L271
	lbzu %r10,1(%r3)
	cmpwi %cr6,%r10,0
	beq- %cr6,.L282
	mr %r4,%r8
.L272:
	lbz %r7,0(%r4)
	addi %r8,%r4,1
	cmpwi %cr5,%r7,0
	cmpw %cr7,%r7,%r10
	bne+ %cr5,.L283
.L271:
	subf %r3,%r7,%r10
	extsw %r3,%r3
	blr
.L276:
	li %r3,0
	extsw %r3,%r3
	blr
.L282:
	lbz %r7,1(%r4)
	b .L271
.L281:
	lbz %r7,0(%r4)
	b .L271
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
	ble- %cr0,.L284
	addi %r9,%r5,-2
	cmpldi %cr1,%r9,13
	srdi %r8,%r5,1
	ble- %cr1,.L289
	srdi %r6,%r5,4
	plxv %vs45,.LC0@pcrel
	andi. %r9,%r6,0x1
	addi %r10,%r6,-1
	li %r7,0
	bne- %cr0,.L300
.L292:
	srdi %r12,%r6,1
	mtctr %r12
.L287:
	addi %r11,%r7,16
	lxvx %vs33,%r3,%r7
	xxperm %vs33,%vs33,%vs45
	lxvx %vs0,%r3,%r11
	stxvx %vs33,%r4,%r7
	xxperm %vs0,%vs0,%vs45
	addi %r7,%r7,32
	stxvx %vs0,%r4,%r11
	bdnz .L287
.L296:
	sldi %r5,%r6,3
	cmpld %cr6,%r5,%r8
	beq- %cr6,.L284
.L286:
	subf %r0,%r5,%r8
	sldi %r8,%r0,1
	cmpldi %cr7,%r8,16
	li %r9,16
	sldi %r5,%r5,1
	isel %r6,%r9,%r8,29
	sldi %r10,%r6,56
	add %r3,%r3,%r5
	add %r4,%r4,%r5
	lxvl %vs1,%r3,%r10
	xxperm %vs1,%vs1,%vs45
	stxvl %vs1,%r4,%r10
.L284:
	lwz %r7,-4(%r1)
	mtvrsave %r7
	blr
.L300:
	cmpdi %cr5,%r10,0
	lxv %vs32,0(%r3)
	xxperm %vs32,%vs32,%vs45
	li %r7,16
	stxv %vs32,0(%r4)
	bne+ %cr5,.L292
	b .L296
.L289:
	li %r5,0
	plxv %vs45,.LC0@pcrel
	b .L286
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
	setbcr %r3,1
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
	setbcr %r3,1
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
	beq- %cr0,.L305
	cmpwi %cr1,%r3,9
	setbc %r3,6
	rldicl %r3,%r3,0,63
	blr
.L305:
	li %r3,1
	rldicl %r3,%r3,0,63
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
	ble- %cr0,.L308
	cmpwi %cr1,%r3,127
	setbc %r3,6
	rldicl %r3,%r3,0,63
	blr
.L308:
	li %r3,1
	rldicl %r3,%r3,0,63
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
	setbcr %r3,1
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
	setbcr %r3,1
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
	setbcr %r3,1
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
	setbcr %r3,1
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
	beq- %cr0,.L315
	addi %r3,%r3,-9
	cmplwi %cr1,%r3,4
	setbcr %r0,5
	rldicl %r3,%r0,0,63
	blr
.L315:
	li %r0,1
	rldicl %r3,%r0,0,63
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
	setbcr %r3,1
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
	li %r0,1
	ble- %cr0,.L318
	addi %r9,%r3,-127
	cmplwi %cr1,%r9,32
	li %r0,1
	bgt- %cr1,.L322
.L318:
	rldicl %r3,%r0,0,63
	blr
.L322:
	addi %r10,%r3,-8232
	cmplwi %cr5,%r10,1
	ble- %cr5,.L318
	paddi %r3,%r3,-65529
	cmplwi %cr6,%r3,2
	setbcr %r0,25
	rldicl %r3,%r0,0,63
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
	setbcr %r3,1
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
	ble- %cr0,.L331
	cmplwi %cr1,%r3,8231
	li %r6,1
	ble- %cr1,.L326
	addi %r10,%r3,-8234
	cmplwi %cr5,%r10,47061
	ble- %cr5,.L326
	paddi %r0,%r3,-57344
	cmplwi %cr6,%r0,8184
	ble- %cr6,.L326
	paddi %r4,%r3,-65532
	pli %r9,1048579
	cmplw %cr7,%r4,%r9
	li %r6,0
	bgt- %cr7,.L326
	rlwinm %r3,%r3,0,16,30
	pli %r5,65534
	cmpw %cr0,%r3,%r5
	setbcr %r6,2
.L326:
	rldicl %r3,%r6,0,63
	blr
.L331:
	addi %r7,%r3,1
	rlwinm %r8,%r7,0,25,31
	cmplwi %cr1,%r8,32
	setbc %r6,5
	rldicl %r3,%r6,0,63
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
	ble- %cr0,.L334
	ori %r3,%r3,0x20
	addi %r0,%r3,-97
	cmplwi %cr1,%r0,5
	setbcr %r4,5
	rldicl %r3,%r4,0,63
	blr
.L334:
	li %r4,1
	rldicl %r3,%r4,0,63
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
	bun- %cr1,.L340
	fcmpu %cr5,%f1,%f2
	bng- %cr5,.L343
	fsub %f1,%f1,%f2
	blr
.L343:
	xxlxor %vs1,%vs1,%vs1
	blr
.L340:
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
	bun- %cr1,.L348
	fcmpu %cr5,%f1,%f2
	bng- %cr5,.L351
	fsubs %f1,%f1,%f2
	blr
.L351:
	xxlxor %vs1,%vs1,%vs1
	blr
.L348:
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
	bun- %cr0,.L355
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L356
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L354
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr- %cr6
.L356:
	fmr %f1,%f0
	blr
.L354:
	xscmpgtdp %vs12,%vs2,%vs1
	xxsel %vs1,%vs1,%vs2,%vs12
	blr
.L355:
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
	bun- %cr0,.L361
	fcmpu %cr1,%f2,%f2
	bun- %cr1,.L362
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r9,%vs12
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs1
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L360
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr- %cr6
.L362:
	fmr %f1,%f0
	blr
.L360:
	xscmpgtdp %vs3,%vs2,%vs0
	xxsel %vs1,%vs0,%vs2,%vs3
	blr
.L361:
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
	bun- %cr0,.L371
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun- %cr1,.L370
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L366
	cmpwi %cr7,%r0,0
	bne- %cr7,.L371
.L370:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
.L366:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt- %cr6,.L371
	fmr %f11,%f2
	fmr %f10,%f1
.L371:
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
	bun- %cr0,.L375
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	mfvsrd %r9,%vs1
	mfvsrd %r10,%vs2
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L374
	cmpwi %cr6,%r0,0
	bnelr- %cr6
.L375:
	fmr %f1,%f2
	blr
.L374:
	xsmincdp %vs1,%vs1,%vs2
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
	bun- %cr0,.L381
	fcmpu %cr1,%f2,%f2
	bunlr- %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r9,%vs0
	rlwinm %r0,%r9,0,0,0
	mfvsrwz %r10,%vs3
	rlwinm %r3,%r10,0,0,0
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L380
	cmpwi %cr6,%r0,0
	bnelr- %cr6
.L381:
	fmr %f1,%f2
	blr
.L380:
	xsmincdp %vs1,%vs1,%vs2
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
	bun- %cr0,.L389
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr- %cr1
	mfvsrd %r9,%vs0
	mfvsrd %r10,%vs12
	srdi %r0,%r9,63
	srdi %r3,%r10,63
	cmpw %cr5,%r0,%r3
	beq- %cr5,.L386
	cmpwi %cr7,%r0,0
	bnelr- %cr7
.L389:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
.L386:
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
	cmpwi %cr0,%r3,0
	pla %r9,.LANCHOR0@pcrel
	beq- %cr0,.L393
	pla %r8,.LANCHOR1@pcrel
.L394:
	rldicl %r10,%r3,0,58
	srwi %r3,%r3,6
	lbzx %r0,%r8,%r10
	cmpwi %cr1,%r3,0
	stb %r0,0(%r9)
	addi %r9,%r9,1
	bne+ %cr1,.L394
.L393:
	li %r3,0
	stb %r3,0(%r9)
	pla %r3,.LANCHOR0@pcrel
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
	pstd %r0,.LANCHOR0+8@pcrel
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
	pld %r10,.LANCHOR0+8@pcrel
	sldi %r9,%r10,4
	subf %r0,%r10,%r9
	sldi %r8,%r0,6
	subf %r3,%r0,%r8
	sldi %r4,%r3,7
	add %r5,%r3,%r4
	sldi %r6,%r5,2
	add %r7,%r6,%r10
	sldi %r11,%r7,6
	subf %r12,%r7,%r11
	sldi %r9,%r12,7
	add %r0,%r9,%r10
	sldi %r8,%r0,2
	add %r3,%r8,%r10
	sldi %r4,%r3,3
	subf %r5,%r3,%r4
	sldi %r6,%r5,3
	subf %r7,%r5,%r6
	sldi %r11,%r7,6
	subf %r12,%r7,%r11
	sldi %r9,%r12,2
	subf %r0,%r10,%r9
	sldi %r8,%r0,7
	subf %r3,%r10,%r8
	sldi %r4,%r3,2
	add %r5,%r4,%r10
	sldi %r6,%r5,2
	subf %r7,%r10,%r6
	sldi %r11,%r7,2
	subf %r12,%r10,%r11
	sldi %r9,%r12,2
	add %r10,%r9,%r10
	addi %r0,%r10,1
	pstd %r0,.LANCHOR0+8@pcrel
	srdi %r3,%r0,33
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
	beq- %cr0,.L405
	ld %r9,0(%r4)
	std %r4,8(%r3)
	std %r9,0(%r3)
	std %r3,0(%r4)
	ld %r4,0(%r3)
	cmpdi %cr1,%r4,0
	beqlr- %cr1
	std %r3,8(%r4)
	blr
.L405:
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
	beq- %cr0,.L407
	ld %r10,8(%r3)
	std %r10,8(%r9)
.L407:
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
	beq- %cr0,.L416
	std %r29,168(%r1)
	.cfi_offset 29, -24
	li %r29,0
	std %r30,176(%r1)
	.cfi_offset 30, -16
	mr %r30,%r7
	std %r31,184(%r1)
	.cfi_offset 31, -8
	mr %r31,%r4
	b .L418
.L430:
	beq- %cr7,.L429
.L418:
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
	bne+ %cr1,.L430
	ld %r29,168(%r1)
	.cfi_restore 29
	ld %r30,176(%r1)
	.cfi_restore 30
	ld %r31,184(%r1)
	.cfi_restore 31
.L415:
	addi %r1,%r1,192
	.cfi_def_cfa_offset 0
	ld %r4,16(%r1)
	mr %r3,%r25
	ld %r23,-72(%r1)
	mtlr %r4
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
.L429:
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
.L416:
	cmpdi %cr5,%r28,0
	maddld %r25,%r28,%r27,%r23
	addi %r3,%r27,1
	std %r3,0(%r24)
	beq- %cr5,.L415
	mr %r5,%r28
	mr %r4,%r26
	mr %r3,%r25
	bl memmove
	nop
	addi %r1,%r1,192
	.cfi_def_cfa_offset 0
	ld %r4,16(%r1)
	mr %r3,%r25
	ld %r23,-72(%r1)
	mtlr %r4
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
	beq- %cr0,.L432
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
	b .L434
.L442:
	beq- %cr7,.L441
.L434:
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
	bne+ %cr1,.L442
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
.L441:
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
.L432:
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
.L451:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L445
	ble- %cr7,.L445
	cmpwi %cr1,%r10,43
	beq- %cr1,.L446
	cmpwi %cr6,%r10,45
	bne- %cr6,.L466
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L456
	li %r11,1
.L449:
	li %r0,0
.L453:
	addi %r7,%r10,-48
	lbzu %r10,1(%r3)
	slwi %r12,%r0,2
	addi %r6,%r10,-48
	cmplwi %cr1,%r6,9
	add %r8,%r12,%r0
	slwi %r9,%r8,1
	subf %r0,%r7,%r9
	ble+ %cr1,.L453
	cmpwi %cr5,%r11,0
	subf %r10,%r9,%r7
	isel %r3,%r10,%r0,22
.L452:
	extsw %r3,%r3
	blr
.L445:
	addi %r3,%r3,1
	b .L451
.L466:
	addi %r5,%r10,-48
	cmplwi %cr7,%r5,9
	li %r11,0
	ble+ %cr7,.L449
.L456:
	li %r3,0
	b .L452
.L446:
	lbz %r10,1(%r3)
	li %r11,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L449
	li %r3,0
	b .L452
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
.L474:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L468
	ble- %cr7,.L468
	cmpwi %cr1,%r10,43
	beq- %cr1,.L469
	cmpwi %cr6,%r10,45
	bne- %cr6,.L489
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	bgt- %cr0,.L479
	li %r11,1
.L472:
	li %r4,0
.L476:
	addi %r8,%r10,-48
	lbzu %r10,1(%r3)
	sldi %r12,%r4,2
	addi %r6,%r10,-48
	cmplwi %cr1,%r6,9
	add %r7,%r12,%r4
	extsw %r0,%r8
	sldi %r9,%r7,1
	subf %r4,%r0,%r9
	ble+ %cr1,.L476
	cmpwi %cr5,%r11,0
	subf %r3,%r9,%r0
	isel %r3,%r3,%r4,22
	blr
.L468:
	addi %r3,%r3,1
	b .L474
.L489:
	addi %r5,%r10,-48
	cmplwi %cr7,%r5,9
	li %r11,0
	ble+ %cr7,.L472
.L479:
	li %r3,0
	blr
.L469:
	lbz %r10,1(%r3)
	li %r11,0
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	ble+ %cr5,.L472
	b .L479
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
.L495:
	lbz %r10,0(%r3)
	cmpwi %cr0,%r10,32
	addi %r9,%r10,-9
	cmplwi %cr7,%r9,4
	beq- %cr0,.L491
	ble- %cr7,.L491
	cmpwi %cr1,%r10,43
	beq- %cr1,.L492
	cmpwi %cr6,%r10,45
	beq- %cr6,.L493
	addi %r5,%r10,-48
	cmplwi %cr7,%r5,9
	li %r11,0
	bgt- %cr7,.L502
.L496:
	li %r4,0
.L499:
	addi %r8,%r10,-48
	lbzu %r10,1(%r3)
	sldi %r12,%r4,2
	addi %r6,%r10,-48
	cmplwi %cr1,%r6,9
	add %r7,%r12,%r4
	extsw %r0,%r8
	sldi %r9,%r7,1
	subf %r4,%r0,%r9
	ble+ %cr1,.L499
	cmpwi %cr5,%r11,0
	subf %r3,%r9,%r0
	isel %r3,%r3,%r4,22
	blr
.L491:
	addi %r3,%r3,1
	b .L495
.L493:
	lbz %r10,1(%r3)
	li %r11,1
	addi %r3,%r3,1
	addi %r4,%r10,-48
	cmplwi %cr0,%r4,9
	ble+ %cr0,.L496
.L502:
	li %r3,0
	blr
.L492:
	lbz %r10,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r10,-48
	cmplwi %cr5,%r0,9
	bgt- %cr5,.L502
	li %r11,0
	b .L496
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
	std %r28,-32(%r1)
	stdu %r1,-176(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset 28, -32
	beq- %cr0,.L513
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
	std %r29,152(%r1)
	.cfi_offset 29, -24
	mr %r29,%r7
	std %r0,192(%r1)
	.cfi_offset 65, 16
	std %r2,40(%r1)
	std %r30,160(%r1)
	.cfi_offset 30, -16
	b .L516
.L525:
	beq- %cr1,.L523
	cmpdi %cr5,%r31,0
	add %r27,%r28,%r26
	beq- %cr5,.L524
.L516:
	srdi %r30,%r31,1
	ld %r9,0(%r29)
	maddld %r28,%r30,%r26,%r27
	ld %r11,16(%r29)
	mr %r3,%r25
	mtctr %r9
	addi %r31,%r31,-1
	subf %r31,%r30,%r31
	mr %r4,%r28
	ld 2,8(%r29)
	bctrl
	ld 2,40(1)
	cmpwi %cr1,%r3,0
	bge+ %cr1,.L525
	mr %r31,%r30
	cmpdi %cr5,%r31,0
	bne+ %cr5,.L516
.L524:
	ld %r3,192(%r1)
	ld %r25,120(%r1)
	.cfi_restore 25
	mtlr %r3
	.cfi_restore 65
	ld %r26,128(%r1)
	.cfi_restore 26
	ld %r27,136(%r1)
	.cfi_restore 27
	ld %r29,152(%r1)
	.cfi_restore 29
	ld %r30,160(%r1)
	.cfi_restore 30
.L513:
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	li %r28,0
	ld %r31,-8(%r1)
	mr %r3,%r28
	ld %r28,-32(%r1)
	.cfi_restore 31
	.cfi_restore 28
	blr
.L523:
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
	mr %r3,%r28
	ld %r25,120(%r1)
	.cfi_restore 25
	ld %r26,128(%r1)
	.cfi_restore 26
	ld %r27,136(%r1)
	.cfi_restore 27
	ld %r29,152(%r1)
	.cfi_restore 29
	ld %r30,160(%r1)
	.cfi_restore 30
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	mtlr %r0
	.cfi_restore 65
	ld %r28,-32(%r1)
	ld %r31,-8(%r1)
	.cfi_restore 31
	.cfi_restore 28
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
	beq- %cr0,.L531
	mflr %r0
	.cfi_register 65, 0
	std %r2,40(%r1)
	std %r0,192(%r1)
	.cfi_offset 65, 16
	std %r28,144(%r1)
	.cfi_offset 28, -32
.L536:
	srawi %r30,%r31,1
	ld %r9,0(%r29)
	maddld %r30,%r30,%r26,%r27
	ld %r11,16(%r29)
	mr %r5,%r24
	mtctr %r9
	mr %r3,%r25
	srawi %r28,%r31,1
	addi %r31,%r31,-1
	srawi %r31,%r31,1
	mr %r4,%r30
	ld 2,8(%r29)
	bctrl
	ld 2,40(1)
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	beq- %cr1,.L540
	cmpwi %cr5,%r28,0
	ble- %cr1,.L529
	add %r27,%r30,%r26
	bne+ %cr7,.L536
.L541:
	ld %r0,192(%r1)
	ld %r28,144(%r1)
	.cfi_restore 28
	mtlr %r0
	.cfi_restore 65
.L531:
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
.L529:
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
	bne+ %cr5,.L536
	b .L541
.L540:
	ld %r3,192(%r1)
	ld %r28,144(%r1)
	.cfi_restore 28
	addi %r1,%r1,176
	.cfi_def_cfa_offset 0
	mtlr %r3
	.cfi_restore 65
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
	beq- %cr0,.L553
.L550:
	cmpw %cr1,%r9,%r4
	beqlr- %cr1
	lwzu %r9,4(%r3)
	cmpwi %cr5,%r9,0
	bne+ %cr5,.L550
.L553:
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
	beq+ %cr0,.L560
	b .L559
.L561:
	lwzu %r9,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r9,%r0
	bne- %cr0,.L559
.L560:
	cmpwi %cr7,%r9,0
	bne+ %cr7,.L561
.L559:
	setbc %r3,1
	li %r4,-1
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
.L565:
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	beqlr- %cr0
	lwzu %r9,4(%r4)
	cmpwi %cr0,%r9,0
	stwu %r9,4(%r10)
	bne+ %cr0,.L565
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
	beq- %cr0,.L571
	mr %r4,%r3
.L570:
	lwzu %r10,4(%r4)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L570
	subf %r3,%r3,%r4
	sradi %r3,%r3,2
	blr
.L571:
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
	beq- %cr0,.L583
	mtctr %r5
	b .L574
.L586:
	beq- %cr7,.L576
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L583
.L574:
	lwz %r9,0(%r3)
	lwz %r10,0(%r4)
	cmpwi %cr7,%r9,0
	cmpw %cr1,%r9,%r10
	beq+ %cr1,.L586
.L576:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	bge- %cr5,.L578
	li %r4,-1
	extsw %r3,%r4
	blr
.L578:
	setbc %r4,21
	extsw %r3,%r4
	blr
.L583:
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
	beq- %cr0,.L591
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L608
.L594:
	srdi %r0,%r5,1
	mtctr %r0
.L588:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr- %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr- %cr7
	addi %r3,%r3,4
	bdnz .L588
.L591:
	li %r3,0
	blr
.L608:
	lwz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr- %cr1
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	bne+ %cr5,.L594
	b .L591
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
	beq- %cr0,.L615
	andi. %r9,%r5,0x1
	addi %r9,%r5,-1
	bne- %cr0,.L632
.L618:
	srdi %r0,%r5,1
	mtctr %r0
	b .L610
.L612:
	lwz %r12,4(%r3)
	addi %r3,%r7,4
	lwz %r9,4(%r4)
	addi %r4,%r11,4
	cmpw %cr1,%r12,%r9
	bne- %cr1,.L627
	bdz .L615
.L610:
	lwz %r5,0(%r3)
	addi %r7,%r3,4
	lwz %r6,0(%r4)
	addi %r11,%r4,4
	cmpw %cr1,%r5,%r6
	beq+ %cr1,.L612
.L627:
	setbc %r3,5
	li %r4,-1
	isel %r8,%r4,%r3,4
	extsw %r3,%r8
	blr
.L632:
	lwz %r8,0(%r3)
	lwz %r10,0(%r4)
	cmpw %cr1,%r8,%r10
	bne- %cr1,.L627
	cmpdi %cr5,%r9,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne+ %cr5,.L618
.L615:
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
	beq- %cr0,.L634
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
.L634:
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
	bge- %cr1,.L742
	cmpdi %cr6,%r5,0
	beqlr- %cr6
	cmpldi %cr7,%r11,4
	ble- %cr7,.L644
	addi %r0,%r9,-4
	addi %r6,%r9,-8
	add %r7,%r3,%r0
	add %r12,%r4,%r6
	subf %r10,%r12,%r7
	addi %r8,%r10,8
	cmpldi %cr1,%r8,8
	ble- %cr1,.L644
	srdi %r6,%r5,2
	andi. %r0,%r6,0x3
	addi %r9,%r9,-16
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L683
	cmpdi %cr5,%r0,1
	beq- %cr5,.L699
	cmpdi %cr6,%r0,2
	beq- %cr6,.L700
	mr %r6,%r12
	lxv %vs7,0(%r8)
	stxv %vs7,0(%r9)
	li %r10,-16
.L700:
	lxvx %vs8,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs8,%r9,%r10
	addi %r10,%r10,-16
.L699:
	cmpdi %cr7,%r6,1
	lxvx %vs9,%r8,%r10
	stxvx %vs9,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr7,.L722
.L683:
	srdi %r7,%r7,2
	cmpdi %cr1,%r7,2
	mtctr %r7
	ble %cr1,.L734
	addi %r7,%r7,-1
	mtctr %r7
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
.L645:
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L645
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
.L722:
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
.L742:
	cmpdi %cr5,%r5,0
	beqlr- %cr5
	cmpldi %cr6,%r11,3
	ble- %cr6,.L650
	addi %r0,%r4,4
	subf %r6,%r0,%r3
	cmpldi %cr7,%r6,8
	ble- %cr7,.L650
	srdi %r8,%r5,2
	andi. %r7,%r8,0x3
	addi %r12,%r8,-1
	mr %r10,%r8
	li %r9,0
	beq- %cr0,.L695
	cmpdi %cr1,%r7,1
	beq- %cr1,.L701
	cmpdi %cr5,%r7,2
	beq- %cr5,.L702
	mr %r8,%r12
	lxv %vs0,0(%r4)
	stxv %vs0,0(%r3)
	li %r9,16
.L702:
	lxvx %vs1,%r4,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r3,%r9
	addi %r9,%r9,16
.L701:
	cmpdi %cr6,%r8,1
	lxvx %vs2,%r4,%r9
	stxvx %vs2,%r3,%r9
	addi %r9,%r9,16
	beq- %cr6,.L723
.L695:
	srdi %r10,%r10,2
	cmpdi %cr7,%r10,2
	mtctr %r10
	ble %cr7,.L735
	addi %r10,%r10,-1
	mtctr %r10
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r3,%r9
	addi %r10,%r9,16
.L651:
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r9,%r9,64
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r3,%r9
	addi %r10,%r9,16
	bdnz .L651
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r8,%r10,16
	lxvx %vs0,%r4,%r8
	stxvx %vs0,%r3,%r8
	addi %r10,%r9,48
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
.L723:
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
.L735:
	addi %r0,%r9,16
	lxvx %vs3,%r4,%r9
	stxvx %vs3,%r3,%r9
	addi %r6,%r9,32
	lxvx %vs4,%r4,%r0
	stxvx %vs4,%r3,%r0
	addi %r7,%r9,48
	lxvx %vs5,%r4,%r6
	stxvx %vs5,%r3,%r6
	addi %r9,%r9,64
	lxvx %vs6,%r4,%r7
	stxvx %vs6,%r3,%r7
	bdz .L723
	addi %r0,%r9,16
	lxvx %vs3,%r4,%r9
	stxvx %vs3,%r3,%r9
	addi %r6,%r9,32
	lxvx %vs4,%r4,%r0
	stxvx %vs4,%r3,%r0
	addi %r7,%r9,48
	lxvx %vs5,%r4,%r6
	stxvx %vs5,%r3,%r6
	addi %r9,%r9,64
	lxvx %vs6,%r4,%r7
	stxvx %vs6,%r3,%r7
	bdnz .L735
	b .L723
.L734:
	addi %r0,%r10,-16
	lxvx %vs10,%r8,%r10
	stxvx %vs10,%r9,%r10
	addi %r12,%r10,-32
	lxvx %vs11,%r8,%r0
	stxvx %vs11,%r9,%r0
	addi %r7,%r10,-48
	lxvx %vs12,%r8,%r12
	stxvx %vs12,%r9,%r12
	addi %r10,%r10,-64
	lxvx %vs13,%r8,%r7
	stxvx %vs13,%r9,%r7
	bdz .L722
	addi %r0,%r10,-16
	lxvx %vs10,%r8,%r10
	stxvx %vs10,%r9,%r10
	addi %r12,%r10,-32
	lxvx %vs11,%r8,%r0
	stxvx %vs11,%r9,%r0
	addi %r7,%r10,-48
	lxvx %vs12,%r8,%r12
	stxvx %vs12,%r9,%r12
	addi %r10,%r10,-64
	lxvx %vs13,%r8,%r7
	stxvx %vs13,%r9,%r7
	bdnz .L734
	b .L722
.L644:
	andi. %r10,%r11,0x1
	add %r5,%r4,%r9
	add %r6,%r3,%r9
	bne- %cr0,.L743
.L676:
	srdi %r11,%r11,1
	addi %r8,%r11,1
	mtctr %r8
	b .L648
.L744:
	lwz %r0,-4(%r12)
	addi %r5,%r5,-8
	addi %r6,%r6,-8
	stw %r0,-4(%r10)
.L648:
	lwz %r9,-4(%r5)
	addi %r12,%r5,-4
	addi %r10,%r6,-4
	stw %r9,-4(%r6)
	bdnz .L744
	blr
.L743:
	lwzu %r7,-4(%r5)
	stwu %r7,-4(%r6)
	b .L676
.L650:
	andi. %r9,%r11,0x1
	addi %r5,%r4,-4
	addi %r9,%r3,-4
	bne- %cr0,.L745
.L688:
	srdi %r7,%r11,1
	addi %r11,%r7,1
	mtctr %r11
	b .L654
.L746:
	lwz %r8,4(%r10)
	addi %r5,%r5,8
	addi %r9,%r9,8
	stw %r8,4(%r4)
.L654:
	lwz %r12,4(%r5)
	addi %r10,%r5,4
	addi %r4,%r9,4
	stw %r12,4(%r9)
	bdnz .L746
	blr
.L745:
	lwz %r6,0(%r4)
	mr %r5,%r4
	mr %r9,%r3
	stw %r6,0(%r3)
	b .L688
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
	ble- %cr1,.L752
	srdi %r8,%r5,2
	mtvsrws %vs0,%r4
	andi. %r6,%r8,0x3
	addi %r11,%r8,-1
	mr %r10,%r8
	mr %r12,%r3
	beq- %cr0,.L767
	cmpdi %cr5,%r6,1
	beq- %cr5,.L771
	cmpdi %cr6,%r6,2
	beq- %cr6,.L772
	mr %r8,%r11
	stxv %vs0,0(%r3)
	addi %r12,%r3,16
.L772:
	stxv %vs0,0(%r12)
	addi %r8,%r8,-1
	addi %r12,%r12,16
.L771:
	cmpdi %cr7,%r8,1
	stxv %vs0,0(%r12)
	addi %r12,%r12,16
	beq- %cr7,.L781
.L767:
	srdi %r0,%r10,2
	mtctr %r0
.L750:
	stxv %vs0,0(%r12)
	stxv %vs0,16(%r12)
	stxv %vs0,32(%r12)
	stxv %vs0,48(%r12)
	addi %r12,%r12,64
	bdnz .L750
.L781:
	andi. %r9,%r5,0x3
	beqlr- %cr0
	rldicr %r5,%r5,0,61
	sldi %r9,%r5,2
	subf %r7,%r5,%r7
	add %r9,%r3,%r9
.L749:
	cmpdi %cr1,%r7,0
	stw %r4,0(%r9)
	beqlr- %cr1
	cmpldi %cr5,%r7,1
	stw %r4,4(%r9)
	beqlr- %cr5
	stw %r4,8(%r9)
	blr
.L752:
	mr %r9,%r3
	b .L749
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
	bge- %cr0,.L785
	cmpdi %cr6,%r5,0
	add %r6,%r3,%r5
	add %r7,%r4,%r5
	beqlr- %cr6
	addi %r9,%r5,-1
	cmpldi %cr7,%r9,14
	ble- %cr7,.L787
	addi %r10,%r5,-2
	add %r11,%r3,%r10
	add %r12,%r4,%r9
	subf %r8,%r11,%r12
	addi %r0,%r8,14
	cmpldi %cr0,%r0,14
	ble- %cr0,.L787
	srdi %r8,%r5,4
	andi. %r11,%r8,0x3
	addi %r9,%r5,-16
	add %r3,%r3,%r9
	add %r4,%r4,%r9
	addi %r12,%r8,-1
	mr %r10,%r8
	li %r9,0
	beq- %cr0,.L848
	cmpdi %cr1,%r11,1
	beq- %cr1,.L864
	cmpdi %cr5,%r11,2
	beq- %cr5,.L865
	mr %r8,%r12
	lxv %vs8,0(%r3)
	stxv %vs8,0(%r4)
	li %r9,-16
.L865:
	lxvx %vs9,%r3,%r9
	addi %r8,%r8,-1
	stxvx %vs9,%r4,%r9
	addi %r9,%r9,-16
.L864:
	cmpdi %cr6,%r8,1
	lxvx %vs10,%r3,%r9
	stxvx %vs10,%r4,%r9
	addi %r9,%r9,-16
	beq- %cr6,.L898
.L848:
	srdi %r10,%r10,2
	cmpdi %cr7,%r10,2
	mtctr %r10
	ble %cr7,.L913
	addi %r10,%r10,-1
	mtctr %r10
	lxvx %vs0,%r3,%r9
	stxvx %vs0,%r4,%r9
	addi %r10,%r9,-16
.L788:
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
	addi %r8,%r10,-16
	lxvx %vs0,%r3,%r8
	stxvx %vs0,%r4,%r8
	addi %r10,%r9,-48
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
	addi %r9,%r9,-64
	lxvx %vs0,%r3,%r9
	stxvx %vs0,%r4,%r9
	addi %r10,%r9,-16
	bdnz .L788
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
	addi %r8,%r10,-16
	lxvx %vs0,%r3,%r8
	stxvx %vs0,%r4,%r8
	addi %r10,%r9,-48
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
.L898:
	andi. %r9,%r5,0xf
	rldicr %r4,%r5,0,59
	subf %r7,%r4,%r7
	subf %r6,%r4,%r6
	subf %r5,%r4,%r5
	beqlr- %cr0
	cmpldi %cr1,%r5,1
	lbz %r3,-1(%r6)
	stb %r3,-1(%r7)
	beqlr- %cr1
	cmpldi %cr5,%r5,2
	lbz %r9,-2(%r6)
	stb %r9,-2(%r7)
	beqlr- %cr5
	cmpldi %cr6,%r5,3
	lbz %r10,-3(%r6)
	stb %r10,-3(%r7)
	beqlr- %cr6
	cmpldi %cr7,%r5,4
	lbz %r8,-4(%r6)
	stb %r8,-4(%r7)
	beqlr- %cr7
	cmpldi %cr0,%r5,5
	lbz %r0,-5(%r6)
	stb %r0,-5(%r7)
	beqlr- %cr0
	cmpldi %cr1,%r5,6
	lbz %r11,-6(%r6)
	stb %r11,-6(%r7)
	beqlr- %cr1
	cmpldi %cr5,%r5,7
	lbz %r12,-7(%r6)
	stb %r12,-7(%r7)
	beqlr- %cr5
	cmpldi %cr6,%r5,8
	lbz %r4,-8(%r6)
	stb %r4,-8(%r7)
	beqlr- %cr6
	cmpldi %cr7,%r5,9
	lbz %r3,-9(%r6)
	stb %r3,-9(%r7)
	beqlr- %cr7
	cmpldi %cr0,%r5,10
	lbz %r9,-10(%r6)
	stb %r9,-10(%r7)
	beqlr- %cr0
	cmpldi %cr1,%r5,11
	lbz %r10,-11(%r6)
	stb %r10,-11(%r7)
	beqlr- %cr1
	cmpldi %cr5,%r5,12
	lbz %r8,-12(%r6)
	stb %r8,-12(%r7)
	beqlr- %cr5
	cmpldi %cr6,%r5,13
	lbz %r0,-13(%r6)
	stb %r0,-13(%r7)
	beqlr- %cr6
	cmpldi %cr7,%r5,14
	lbz %r5,-14(%r6)
	stb %r5,-14(%r7)
	beqlr- %cr7
	lbz %r6,-15(%r6)
	stb %r6,-15(%r7)
	blr
.L785:
	beqlr- %cr0
	cmpdi %cr1,%r5,0
	beqlr- %cr1
	addi %r9,%r3,1
	subf %r0,%r9,%r4
	cmpldi %cr5,%r0,14
	ble- %cr5,.L792
	addi %r6,%r5,-1
	cmpldi %cr6,%r6,14
	ble- %cr6,.L799
	srdi %r8,%r5,4
	andi. %r11,%r8,0x3
	addi %r12,%r8,-1
	mr %r10,%r8
	li %r9,0
	beq- %cr0,.L860
	cmpdi %cr7,%r11,1
	beq- %cr7,.L866
	cmpdi %cr1,%r11,2
	beq- %cr1,.L867
	mr %r8,%r12
	lxv %vs0,0(%r3)
	stxv %vs0,0(%r4)
	li %r9,16
.L867:
	lxvx %vs1,%r3,%r9
	addi %r8,%r8,-1
	stxvx %vs1,%r4,%r9
	addi %r9,%r9,16
.L866:
	cmpdi %cr5,%r8,1
	lxvx %vs2,%r3,%r9
	stxvx %vs2,%r4,%r9
	addi %r9,%r9,16
	beq- %cr5,.L899
.L860:
	srdi %r10,%r10,2
	cmpdi %cr6,%r10,2
	mtctr %r10
	ble %cr6,.L915
	addi %r10,%r10,-1
	mtctr %r10
	lxvx %vs0,%r3,%r9
	stxvx %vs0,%r4,%r9
	addi %r10,%r9,16
.L794:
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
	addi %r8,%r10,16
	lxvx %vs0,%r3,%r8
	stxvx %vs0,%r4,%r8
	addi %r10,%r9,48
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
	addi %r9,%r9,64
	lxvx %vs0,%r3,%r9
	stxvx %vs0,%r4,%r9
	addi %r10,%r9,16
	bdnz .L794
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
	addi %r8,%r10,16
	lxvx %vs0,%r3,%r8
	stxvx %vs0,%r4,%r8
	addi %r10,%r9,48
	lxvx %vs0,%r3,%r10
	stxvx %vs0,%r4,%r10
.L899:
	andi. %r9,%r5,0xf
	rldicr %r7,%r5,0,59
	beqlr- %cr0
.L793:
	subf %r5,%r7,%r5
	cmpldi %cr7,%r5,16
	li %r9,16
	add %r3,%r3,%r7
	isel %r11,%r9,%r5,29
	sldi %r12,%r11,56
	add %r4,%r4,%r7
	lxvl %vs7,%r3,%r12
	stxvl %vs7,%r4,%r12
	blr
.L913:
	addi %r0,%r9,-16
	lxvx %vs11,%r3,%r9
	stxvx %vs11,%r4,%r9
	addi %r11,%r9,-32
	lxvx %vs12,%r3,%r0
	stxvx %vs12,%r4,%r0
	addi %r12,%r9,-48
	lxvx %vs13,%r3,%r11
	stxvx %vs13,%r4,%r11
	addi %r9,%r9,-64
	lxvx %vs0,%r3,%r12
	stxvx %vs0,%r4,%r12
	bdz .L898
	addi %r0,%r9,-16
	lxvx %vs11,%r3,%r9
	stxvx %vs11,%r4,%r9
	addi %r11,%r9,-32
	lxvx %vs12,%r3,%r0
	stxvx %vs12,%r4,%r0
	addi %r12,%r9,-48
	lxvx %vs13,%r3,%r11
	stxvx %vs13,%r4,%r11
	addi %r9,%r9,-64
	lxvx %vs0,%r3,%r12
	stxvx %vs0,%r4,%r12
	bdnz .L913
	b .L898
.L915:
	addi %r0,%r9,16
	lxvx %vs3,%r3,%r9
	stxvx %vs3,%r4,%r9
	addi %r6,%r9,32
	lxvx %vs4,%r3,%r0
	stxvx %vs4,%r4,%r0
	addi %r7,%r9,48
	lxvx %vs5,%r3,%r6
	stxvx %vs5,%r4,%r6
	addi %r9,%r9,64
	lxvx %vs6,%r3,%r7
	stxvx %vs6,%r4,%r7
	bdnz .L915
	b .L899
.L787:
	andi. %r10,%r9,0x1
	bne- %cr0,.L921
.L841:
	srdi %r12,%r9,1
	addi %r4,%r12,1
	mtctr %r4
	b .L790
.L922:
	lbz %r8,-1(%r10)
	addi %r6,%r6,-2
	addi %r7,%r7,-2
	stb %r8,-1(%r9)
.L790:
	lbz %r3,-1(%r6)
	addi %r10,%r6,-1
	addi %r9,%r7,-1
	stb %r3,-1(%r7)
	bdnz .L922
.L784:
	blr
.L921:
	lbzu %r11,-1(%r6)
	stbu %r11,-1(%r7)
	b .L841
.L792:
	andi. %r9,%r5,0x1
	addi %r10,%r3,-1
	addi %r9,%r4,-1
	addi %r8,%r5,-1
	beq- %cr0,.L853
	cmpdi %cr1,%r8,0
	lbz %r0,0(%r3)
	mr %r10,%r3
	stb %r0,0(%r4)
	mr %r9,%r4
	beqlr- %cr1
.L853:
	srdi %r8,%r5,1
	cmpdi %cr5,%r8,2
	mtctr %r8
	ble %cr5,.L914
	addi %r8,%r8,-1
	mtctr %r8
	lbz %r6,1(%r10)
	stb %r6,1(%r9)
	addi %r7,%r10,1
	lbz %r6,1(%r7)
	addi %r8,%r9,1
	stb %r6,1(%r8)
.L797:
	lbz %r6,2(%r7)
	stb %r6,2(%r8)
	addi %r7,%r7,2
	lbz %r6,1(%r7)
	addi %r8,%r8,2
	stb %r6,1(%r8)
	bdnz .L797
	blr
.L914:
	lbz %r6,1(%r10)
	mr %r7,%r10
	mr %r5,%r9
	stb %r6,1(%r9)
	addi %r10,%r10,2
	addi %r9,%r9,2
	lbz %r3,2(%r7)
	stb %r3,2(%r5)
	bdnz .L914
	blr
.L799:
	li %r7,0
	b .L793
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
	brh %r3,%r3
	rlwinm %r3,%r3,0,0xffff
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
	brw %r9,%r3
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
	brd %r3,%r3
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
	b .L939
.L948:
	addi %r9,%r9,1
	bne- %cr0,.L938
	bdz .L947
.L939:
	srw %r0,%r3,%r9
	rldicl %r4,%r0,0,63
	cmpdi %cr7,%r4,0
	addi %r9,%r9,1
	srw %r5,%r3,%r9
	andi. %r10,%r5,0x1
	beq+ %cr7,.L948
.L938:
	extsw %r3,%r9
	blr
.L947:
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
	beq- %cr0,.L952
	andi. %r3,%r9,0x1
	bne- %cr0,.L950
	li %r3,1
.L951:
	srawi %r9,%r9,1
	andi. %r10,%r9,0x1
	addi %r3,%r3,1
	beq+ %cr0,.L951
.L950:
	extsw %r3,%r3
	blr
.L952:
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
	xxspltidp %vs0,4286578687
	fcmpu %cr0,%f1,%f0
	li %r3,1
	blt- %cr0,.L956
	xxspltidp %vs2,2139095039
	fcmpu %cr1,%f1,%f2
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
.L956:
	rldicl %r3,%r3,0,63
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
	plfd %f0,.LC1@pcrel
	li %r3,1
	fcmpu %cr0,%f1,%f0
	blt- %cr0,.L959
	plfd %f2,.LC2@pcrel
	fcmpu %cr1,%f1,%f2
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
.L959:
	rldicl %r3,%r3,0,63
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
	fmr %f0,%f1
	plfd %f12,.LC3@pcrel
	li %r3,1
	fmr %f1,%f2
	plfd %f13,.LC3+8@pcrel
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	blt- %cr0,.L962
	plfd %f12,.LC4@pcrel
	plfd %f13,.LC4+8@pcrel
	fcmpu %cr1,%f0,%f12
	bne %cr1,$+8
	fcmpu %cr1,%f1,%f13
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
.L962:
	rldicl %r3,%r3,0,63
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
	xxspltidp %vs2,1073741824
	bge+ %cr5,.L967
	xxspltidp %vs2,1056964608
.L967:
	andi. %r9,%r4,0x1
	beq- %cr0,.L968
.L969:
	fmuls %f1,%f1,%f2
.L968:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr- %cr0
	andi. %r9,%r4,0x1
	fmuls %f2,%f2,%f2
	srawi %r9,%r4,1
	addze %r9,%r9
	bne- %cr0,.L969
.L978:
	extsw %r4,%r9
	fmuls %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r9,%r4,1
	addze %r9,%r9
	bne- %cr0,.L969
	b .L978
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
	xxspltidp %vs2,1073741824
	bge+ %cr5,.L981
	xxspltidp %vs2,1056964608
.L981:
	andi. %r9,%r4,0x1
	beq- %cr0,.L982
.L983:
	fmul %f1,%f1,%f2
.L982:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr- %cr0
	andi. %r9,%r4,0x1
	fmul %f2,%f2,%f2
	srawi %r9,%r4,1
	addze %r9,%r9
	bne- %cr0,.L983
.L992:
	extsw %r4,%r9
	fmul %f2,%f2,%f2
	andi. %r9,%r4,0x1
	srawi %r9,%r4,1
	addze %r9,%r9
	bne- %cr0,.L983
	b .L992
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
	bun- %cr0,.L994
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
	beq- %cr1,.L1009
	cmpwi %cr5,%r31,0
	pld %r9,.LC6@pcrel
	pld %r10,.LC6+8@pcrel
	stfd %f30,144(%r1)
	.cfi_offset 62, -16
	mtvsrd %vs30,%r9
	stfd %f31,152(%r1)
	.cfi_offset 63, -8
	mtvsrd %vs31,%r10
	bge+ %cr5,.L995
	plfd %f30,.LC5@pcrel
	plfd %f31,.LC5+8@pcrel
.L995:
	andi. %r9,%r31,0x1
	beq- %cr0,.L996
.L997:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul
	nop
	fmr %f29,%f2
	fmr %f28,%f1
.L996:
	srawi %r31,%r31,1
	addze %r31,%r31
	extsw. %r31,%r31
	beq- %cr0,.L1008
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
	bne- %cr0,.L997
.L1010:
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
	bne- %cr0,.L997
	b .L1010
.L1008:
	lfd %f30,144(%r1)
	.cfi_restore 62
	lfd %f31,152(%r1)
	.cfi_restore 63
.L1009:
	ld %r3,176(%r1)
	ld %r31,120(%r1)
	.cfi_restore 31
	mtlr %r3
	.cfi_restore 65
.L994:
	fmr %f1,%f28
	addi %r1,%r1,160
	.cfi_def_cfa_offset 0
	fmr %f2,%f29
	lfd %f28,-32(%r1)
	lfd %f29,-24(%r1)
	.cfi_restore 61
	.cfi_restore 60
	blr
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
	ble- %cr1,.L1016
	srdi %r6,%r5,4
	andi. %r10,%r6,0x1
	addi %r8,%r6,-1
	mr %r10,%r6
	li %r7,0
	bne- %cr0,.L1033
.L1023:
	srdi %r11,%r10,1
	mtctr %r11
.L1014:
	addi %r12,%r7,16
	lxvx %vs2,%r3,%r7
	lxvx %vs3,%r4,%r7
	lxvx %vs6,%r4,%r12
	xxlxor %vs4,%vs2,%vs3
	stxvx %vs4,%r3,%r7
	addi %r7,%r7,32
	lxvx %vs5,%r3,%r12
	xxlxor %vs7,%vs5,%vs6
	stxvx %vs7,%r3,%r12
	bdnz .L1014
.L1029:
	andi. %r9,%r5,0xf
	rldicr %r0,%r5,0,59
	beqlr- %cr0
.L1013:
	subf %r5,%r0,%r5
	cmpldi %cr6,%r5,16
	li %r9,16
	add %r8,%r3,%r0
	isel %r6,%r9,%r5,25
	add %r4,%r4,%r0
	sldi %r0,%r6,56
	lxvl %vs8,%r4,%r0
	lxvl %vs9,%r8,%r0
	xxlxor %vs10,%vs8,%vs9
	stxvl %vs10,%r8,%r0
	blr
.L1033:
	cmpdi %cr5,%r8,0
	lxv %vs0,0(%r3)
	lxv %vs12,0(%r4)
	li %r7,16
	xxlxor %vs1,%vs0,%vs12
	stxv %vs1,0(%r3)
	bne+ %cr5,.L1023
	b .L1029
.L1016:
	li %r0,0
	b .L1013
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
	beq- %cr0,.L1035
.L1036:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1036
.L1035:
	cmpdi %cr5,%r5,0
	beq- %cr5,.L1037
	andi. %r10,%r5,0x1
	addi %r7,%r5,-1
	addi %r10,%r4,-1
	bne- %cr0,.L1060
.L1048:
	srdi %r0,%r5,1
	mtctr %r0
.L1038:
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
	bdnz .L1038
.L1037:
	li %r6,0
	stb %r6,0(%r9)
	blr
.L1060:
	lbz %r8,0(%r4)
	mr %r10,%r4
	rlwinm %r6,%r8,0,0xff
	stb %r8,0(%r9)
	cmpwi %cr6,%r6,0
	beqlr- %cr6
	cmpdi %cr7,%r7,0
	addi %r9,%r9,1
	bne+ %cr7,.L1048
	b .L1037
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
	beq- %cr0,.L1073
	cmpdi %cr1,%r8,1
	beq- %cr1,.L1084
	cmpdi %cr5,%r8,2
	beq- %cr5,.L1085
	lbz %r0,0(%r9)
	cmpwi %cr6,%r0,0
	beqlr+ %cr6
	li %r3,1
.L1085:
	lbzx %r5,%r9,%r3
	cmpwi %cr7,%r5,0
	beqlr+ %cr7
	addi %r3,%r3,1
.L1084:
	lbzx %r6,%r9,%r3
	cmpwi %cr0,%r6,0
	beqlr+ %cr0
	addi %r3,%r3,1
	cmpld %cr1,%r4,%r3
	beqlr- %cr1
.L1073:
	srdi %r10,%r10,2
.L1062:
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
	bne+ %cr1,.L1062
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
	beq- %cr0,.L1099
.L1095:
	mr %r10,%r4
	b .L1098
.L1097:
	beqlr- %cr7
.L1098:
	lbzu %r9,1(%r10)
	cmpwi %cr1,%r9,0
	cmpw %cr7,%r9,%r8
	bne+ %cr1,.L1097
	lbzu %r8,1(%r3)
	cmpwi %cr5,%r8,0
	bne+ %cr5,.L1095
.L1099:
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
.L1105:
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
	bne+ %cr0,.L1105
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
	beq- %cr0,.L1121
	mr %r9,%r4
.L1110:
	lbzu %r10,1(%r9)
	cmpwi %cr1,%r10,0
	bne+ %cr1,.L1110
	subf. %r6,%r4,%r9
	mr %r3,%r8
	beqlr- %cr0
	addi %r3,%r6,-1
	b .L1129
.L1132:
	cmpwi %cr6,%r12,0
	addi %r8,%r8,1
	beq- %cr6,.L1131
.L1129:
	lbz %r12,0(%r8)
	cmpw %cr5,%r12,%r5
	bne+ %cr5,.L1132
	addi %r0,%r3,1
	mtctr %r0
	mr %r6,%r4
	mr %r10,%r11
	mr %r7,%r8
	b .L1112
.L1134:
	bdz .L1114
	bne- %cr7,.L1115
	lbzu %r12,1(%r7)
	cmpwi %cr1,%r12,0
	beq- %cr1,.L1133
	lbzu %r10,1(%r6)
.L1112:
	andi. %r9,%r10,0xff
	cmpw %cr7,%r9,%r12
	bne+ %cr0,.L1134
.L1115:
	addi %r8,%r8,1
	b .L1129
.L1131:
	li %r3,0
	blr
.L1133:
	lbz %r9,1(%r6)
.L1114:
	cmpw %cr5,%r12,%r9
	bne+ %cr5,.L1115
.L1121:
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
	blt- %cr0,.L1145
	bnglr- %cr0
	fcmpu %cr1,%f2,%f0
	bnllr+ %cr1
	fneg %f1,%f1
	blr
.L1145:
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
	blt- %cr1,.L1154
	subf %r4,%r6,%r4
	add %r0,%r3,%r4
	cmpld %cr5,%r3,%r0
	bgt- %cr5,.L1154
	cmpldi %cr7,%r6,1
	lbz %r12,0(%r5)
	addi %r11,%r3,-1
	b .L1151
.L1148:
	cmpld %cr1,%r0,%r9
	blt- %cr1,.L1154
.L1151:
	lbzu %r10,1(%r11)
	mr %r3,%r9
	addi %r9,%r9,1
	cmpw %cr6,%r10,%r12
	bne+ %cr6,.L1148
	beqlr- %cr7
	subf %r7,%r11,%r9
	add %r8,%r7,%r6
	addi %r4,%r8,-2
	mtctr %r4
	mr %r8,%r5
	mr %r10,%r11
.L1149:
	lbzu %r4,1(%r10)
	lbzu %r7,1(%r8)
	cmpw %cr0,%r4,%r7
	bne- %cr0,.L1148
	bdnz .L1149
	blr
.L1154:
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
	beq- %cr0,.L1163
	mflr %r0
	.cfi_register 65, 0
	std %r0,144(%r1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld %r0,144(%r1)
	mtlr %r0
	.cfi_restore 65
.L1163:
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
	blt- %cr7,.L1191
	xxspltidp %vs2,1065353216
	fcmpu %cr0,%f1,%f2
	li %r10,0
	cror 2,1,2
	bne- %cr0,.L1192
.L1171:
	li %r3,0
	xxspltidp %vs7,1056964608
	xxspltidp %vs8,1065353216
.L1177:
	fmul %f1,%f1,%f7
	addi %r3,%r3,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq+ %cr0,.L1177
	cmpwi %cr1,%r10,0
	stw %r3,0(%r4)
	beqlr- %cr1
.L1194:
	fneg %f1,%f1
	blr
.L1192:
	xxspltidp %vs3,1056964608
	fcmpu %cr1,%f1,%f3
	bnl- %cr1,.L1174
	bne- %cr7,.L1183
.L1174:
	li %r9,0
	stw %r9,0(%r4)
	blr
.L1191:
	xxspltidp %vs5,3212836864
	fcmpu %cr5,%f1,%f5
	fneg %f4,%f1
	cror 22,20,22
	bne- %cr5,.L1193
	fmr %f1,%f4
	li %r10,1
	b .L1171
.L1193:
	xxspltidp %vs12,3204448256
	fcmpu %cr6,%f1,%f12
	bng- %cr6,.L1174
	li %r10,1
.L1172:
	fmr %f1,%f4
	li %r3,0
	xxspltidp %vs6,1056964608
.L1179:
	fadd %f1,%f1,%f1
	addi %r3,%r3,-1
	fcmpu %cr7,%f1,%f6
	blt+ %cr7,.L1179
	cmpwi %cr1,%r10,0
	stw %r3,0(%r4)
	bne+ %cr1,.L1194
	blr
.L1183:
	fmr %f4,%f1
	b .L1172
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
.L1197:
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
	bne+ %cr0,.L1197
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
	li %r11,32
	li %r9,1
	blt+ %cr0,.L1202
	b .L1223
.L1206:
	rldicl %r4,%r0,0,32
	slwi %r6,%r4,1
	cmpwi %cr6,%r4,0
	cmplw %cr5,%r3,%r6
	slwi %r9,%r9,1
	ble- %cr7,.L1204
	blt- %cr6,.L1207
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble- %cr5,.L1204
	bdz .L1205
.L1202:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r11,-1
	cmplw %cr7,%r3,%r0
	addi %r11,%r10,-1
	bge+ %cr1,.L1206
.L1207:
	li %r11,0
	li %r12,0
.L1208:
	cmplw %cr1,%r3,%r4
	subf %r7,%r4,%r3
	srdi %r4,%r4,1
	setbcr %r8,4
	cmpwi %cr6,%r8,0
	isel %r0,%r12,%r9,26
	srwi %r9,%r9,1
	cmpwi %cr7,%r9,0
	isel %r3,%r3,%r7,26
	or %r11,%r11,%r0
	rldicl %r3,%r3,0,32
	bne+ %cr7,.L1208
.L1205:
	cmpdi %cr5,%r5,0
	isel %r5,%r11,%r3,22
	rldicl %r3,%r5,0,32
	blr
.L1204:
	cmpwi %cr0,%r9,0
	bne+ %cr0,.L1207
	li %r11,0
	b .L1205
.L1223:
	subf %r4,%r4,%r3
	isel %r3,%r3,%r4,1
	rldicl %r3,%r3,0,32
	setbcr %r11,1
	b .L1205
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
	beq- %cr0,.L1228
	slwi %r3,%r3,8
	cntlzw %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
.L1228:
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
	beq- %cr0,.L1231
	cntlzd %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
.L1231:
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
	beq- %cr0,.L1233
.L1234:
	rlwinm %r9,%r10,0,31,31
	srdi. %r10,%r10,1
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	rldic %r4,%r4,1,32
	bne+ %cr0,.L1234
.L1233:
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
	rlwinm %r10,%r5,0,0,28
	blt- %cr0,.L1241
	add %r8,%r4,%r5
	cmpld %cr1,%r3,%r8
	ble- %cr1,.L1392
.L1241:
	cmpwi %cr6,%r9,0
	addi %r7,%r4,-8
	addi %r8,%r3,-8
	beq- %cr6,.L1240
	andi. %r6,%r9,0x1
	addi %r6,%r9,-1
	bne- %cr0,.L1393
.L1309:
	srdi %r9,%r9,1
	cmpdi %cr1,%r9,2
	mtctr %r9
	ble %cr1,.L1382
	addi %r9,%r9,-1
	mtctr %r9
	ld %r11,8(%r7)
	std %r11,8(%r8)
	addi %r6,%r7,8
	ld %r11,8(%r6)
	addi %r9,%r8,8
	std %r11,8(%r9)
.L1244:
	ld %r11,16(%r6)
	std %r11,16(%r9)
	addi %r6,%r6,16
	ld %r11,8(%r6)
	addi %r9,%r9,16
	std %r11,8(%r9)
	bdnz .L1244
.L1240:
	cmplw %cr5,%r10,%r5
	bgelr- %cr5
	rldicl %r11,%r10,0,32
	addi %r8,%r11,1
	add %r7,%r4,%r8
	add %r8,%r3,%r11
	subf %r0,%r7,%r8
	cmpldi %cr6,%r0,14
	ble- %cr6,.L1245
	subf %r10,%r10,%r5
	addi %r5,%r10,-1
	cmplwi %cr0,%r5,14
	ble- %cr0,.L1257
	rldicl %r5,%r10,60,36
	andi. %r0,%r5,0x3
	addi %r12,%r5,-1
	mr %r6,%r5
	add %r7,%r4,%r11
	li %r9,0
	beq- %cr0,.L1304
	cmpdi %cr7,%r0,1
	beq- %cr7,.L1324
	cmpdi %cr1,%r0,2
	bne- %cr1,.L1394
.L1325:
	lxvx %vs8,%r7,%r9
	addi %r5,%r5,-1
	stxvx %vs8,%r8,%r9
	addi %r9,%r9,16
.L1324:
	cmpdi %cr5,%r5,1
	lxvx %vs9,%r7,%r9
	stxvx %vs9,%r8,%r9
	addi %r9,%r9,16
	beq- %cr5,.L1358
.L1304:
	srdi %r6,%r6,2
	cmpdi %cr6,%r6,2
	mtctr %r6
	ble %cr6,.L1381
	addi %r6,%r6,-1
	mtctr %r6
	lxvx %vs0,%r7,%r9
	stxvx %vs0,%r8,%r9
	addi %r6,%r9,16
.L1247:
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
	addi %r5,%r6,16
	lxvx %vs0,%r7,%r5
	stxvx %vs0,%r8,%r5
	addi %r6,%r9,48
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
	addi %r9,%r9,64
	lxvx %vs0,%r7,%r9
	stxvx %vs0,%r8,%r9
	addi %r6,%r9,16
	bdnz .L1247
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
	addi %r5,%r6,16
	lxvx %vs0,%r7,%r5
	stxvx %vs0,%r8,%r5
	addi %r6,%r9,48
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
.L1358:
	andi. %r9,%r10,0xf
	rlwinm %r12,%r10,0,0,27
	beqlr- %cr0
.L1246:
	subf %r10,%r12,%r10
	cmplwi %cr7,%r10,16
	rldicl %r9,%r12,0,32
	rldicl %r7,%r10,0,32
	li %r8,16
	add %r11,%r9,%r11
	isel %r5,%r8,%r7,29
	sldi %r0,%r5,56
	add %r4,%r4,%r11
	add %r3,%r3,%r11
	lxvl %vs0,%r4,%r0
	stxvl %vs0,%r3,%r0
	blr
.L1382:
	ld %r0,8(%r7)
	mr %r12,%r7
	mr %r9,%r8
	std %r0,8(%r8)
	addi %r7,%r7,16
	addi %r8,%r8,16
	ld %r6,16(%r12)
	std %r6,16(%r9)
	bdz .L1240
	ld %r0,8(%r7)
	mr %r12,%r7
	mr %r9,%r8
	std %r0,8(%r8)
	addi %r7,%r7,16
	addi %r8,%r8,16
	ld %r6,16(%r12)
	std %r6,16(%r9)
	bdnz .L1382
	b .L1240
.L1393:
	cmpdi %cr7,%r6,0
	ld %r11,0(%r4)
	mr %r7,%r4
	std %r11,0(%r3)
	mr %r8,%r3
	bne+ %cr7,.L1309
	b .L1240
.L1392:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r7,%r11,0,32
	beqlr- %cr5
	cmplwi %cr6,%r11,14
	ble- %cr6,.L1251
	addi %r10,%r7,-1
	add %r0,%r4,%r10
	add %r6,%r3,%r7
	subf %r12,%r0,%r6
	addi %r9,%r12,14
	cmpldi %cr7,%r9,14
	ble- %cr7,.L1251
	srdi %r6,%r5,4
	andi. %r0,%r6,0x3
	addi %r7,%r7,-15
	add %r8,%r4,%r7
	add %r9,%r3,%r7
	addi %r12,%r6,-1
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L1319
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1326
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1395
.L1327:
	lxvx %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1326:
	cmpdi %cr6,%r6,1
	lxvx %vs2,%r8,%r10
	stxvx %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr6,.L1359
.L1319:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1384
	addi %r7,%r7,-1
	mtctr %r7
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
.L1252:
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L1252
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
.L1359:
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
.L1381:
	addi %r0,%r9,16
	lxvx %vs10,%r7,%r9
	stxvx %vs10,%r8,%r9
	addi %r12,%r9,32
	lxvx %vs11,%r7,%r0
	stxvx %vs11,%r8,%r0
	addi %r6,%r9,48
	lxvx %vs12,%r7,%r12
	stxvx %vs12,%r8,%r12
	addi %r9,%r9,64
	lxvx %vs13,%r7,%r6
	stxvx %vs13,%r8,%r6
	bdz .L1358
	addi %r0,%r9,16
	lxvx %vs10,%r7,%r9
	stxvx %vs10,%r8,%r9
	addi %r12,%r9,32
	lxvx %vs11,%r7,%r0
	stxvx %vs11,%r8,%r0
	addi %r6,%r9,48
	lxvx %vs12,%r7,%r12
	stxvx %vs12,%r8,%r12
	addi %r9,%r9,64
	lxvx %vs13,%r7,%r6
	stxvx %vs13,%r8,%r6
	bdnz .L1381
	b .L1358
.L1394:
	lxv %vs7,0(%r7)
	mr %r5,%r12
	stxv %vs7,0(%r8)
	li %r9,16
	b .L1325
.L1257:
	li %r12,0
	b .L1246
.L1384:
	addi %r0,%r10,-16
	lxvx %vs3,%r8,%r10
	stxvx %vs3,%r9,%r10
	addi %r12,%r10,-32
	lxvx %vs4,%r8,%r0
	stxvx %vs4,%r9,%r0
	addi %r7,%r10,-48
	lxvx %vs5,%r8,%r12
	stxvx %vs5,%r9,%r12
	addi %r10,%r10,-64
	lxvx %vs6,%r8,%r7
	stxvx %vs6,%r9,%r7
	bdnz .L1384
	b .L1359
.L1245:
	subf %r12,%r10,%r5
	rldicl %r6,%r12,0,32
	andi. %r9,%r6,0x1
	addi %r10,%r11,-1
	add %r4,%r4,%r10
	add %r11,%r3,%r10
	addi %r9,%r6,-1
	beq- %cr0,.L1297
	cmpdi %cr1,%r9,0
	lbzu %r7,1(%r4)
	stbu %r7,1(%r11)
	beqlr- %cr1
.L1297:
	srdi %r9,%r6,1
	cmpdi %cr5,%r9,2
	mtctr %r9
	ble %cr5,.L1380
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,1(%r4)
	stb %r8,1(%r11)
	addi %r10,%r4,1
	lbz %r8,1(%r10)
	addi %r9,%r11,1
	stb %r8,1(%r9)
.L1249:
	lbz %r8,2(%r10)
	stb %r8,2(%r9)
	addi %r10,%r10,2
	lbz %r8,1(%r10)
	addi %r9,%r9,2
	stb %r8,1(%r9)
	bdnz .L1249
.L1237:
	blr
.L1380:
	lbz %r8,1(%r4)
	mr %r5,%r4
	mr %r3,%r11
	stb %r8,1(%r11)
	addi %r4,%r4,2
	addi %r11,%r11,2
	lbz %r0,2(%r5)
	stb %r0,2(%r3)
	bdnz .L1380
	blr
.L1395:
	lxv %vs0,0(%r8)
	mr %r6,%r12
	stxv %vs0,0(%r9)
	li %r10,-16
	b .L1327
.L1251:
	andi. %r10,%r5,0x1
	addi %r0,%r7,1
	add %r9,%r3,%r0
	add %r4,%r4,%r0
	addi %r3,%r5,-1
	beq- %cr0,.L1312
	cmpdi %cr1,%r3,0
	lbzu %r10,-1(%r4)
	stbu %r10,-1(%r9)
	beqlr- %cr1
.L1312:
	srdi %r10,%r5,1
	cmpdi %cr5,%r10,2
	mtctr %r10
	ble %cr5,.L1383
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1255:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1255
	blr
.L1383:
	lbz %r12,-1(%r4)
	mr %r8,%r4
	mr %r5,%r9
	stb %r12,-1(%r9)
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	lbz %r7,-2(%r8)
	stb %r7,-2(%r5)
	bdnz .L1383
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	blt- %cr0,.L1400
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble- %cr1,.L1535
.L1400:
	cmpwi %cr6,%r10,0
	beq- %cr6,.L1399
	addi %r6,%r4,2
	subf %r11,%r6,%r3
	cmpldi %cr7,%r11,12
	ble- %cr7,.L1403
	addi %r9,%r10,-1
	cmplwi %cr0,%r9,6
	ble- %cr0,.L1415
	srdi %r6,%r5,4
	andi. %r12,%r6,0x3
	addi %r11,%r6,-1
	mr %r7,%r6
	srwi %r8,%r5,4
	li %r9,0
	beq- %cr0,.L1460
	cmpdi %cr1,%r12,1
	beq- %cr1,.L1476
	cmpdi %cr5,%r12,2
	bne- %cr5,.L1536
.L1477:
	lxvx %vs8,%r4,%r9
	addi %r6,%r6,-1
	stxvx %vs8,%r3,%r9
	addi %r9,%r9,16
.L1476:
	cmpdi %cr6,%r6,1
	lxvx %vs9,%r4,%r9
	stxvx %vs9,%r3,%r9
	addi %r9,%r9,16
	beq- %cr6,.L1508
.L1460:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1527
	addi %r7,%r7,-1
	mtctr %r7
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r3,%r9
	addi %r7,%r9,16
.L1405:
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
	addi %r6,%r7,16
	lxvx %vs0,%r4,%r6
	stxvx %vs0,%r3,%r6
	addi %r7,%r9,48
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
	addi %r9,%r9,64
	lxvx %vs0,%r4,%r9
	stxvx %vs0,%r3,%r9
	addi %r7,%r9,16
	bdnz .L1405
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
	addi %r6,%r7,16
	lxvx %vs0,%r4,%r6
	stxvx %vs0,%r3,%r6
	addi %r7,%r9,48
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
.L1508:
	slwi %r0,%r8,3
	cmplw %cr0,%r10,%r0
	beq- %cr0,.L1399
.L1404:
	subf %r10,%r0,%r10
	rldic %r8,%r10,1,31
	cmpldi %cr1,%r8,16
	li %r7,16
	rlwinm %r9,%r0,1,0,27
	isel %r6,%r7,%r8,5
	sldi %r0,%r6,56
	add %r12,%r4,%r9
	add %r11,%r3,%r9
	lxvl %vs0,%r12,%r0
	stxvl %vs0,%r11,%r0
.L1399:
	andi. %r9,%r5,0x1
	beqlr- %cr0
	addi %r5,%r5,-1
	rldicl %r8,%r5,0,32
	lbzx %r4,%r4,%r8
	stbx %r4,%r3,%r8
	blr
.L1535:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r7,%r11,0,32
	beqlr- %cr5
	cmplwi %cr6,%r11,14
	ble- %cr6,.L1410
	addi %r10,%r7,-1
	add %r0,%r4,%r10
	add %r8,%r3,%r7
	subf %r6,%r0,%r8
	addi %r12,%r6,14
	cmpldi %cr7,%r12,14
	ble- %cr7,.L1410
	srdi %r6,%r5,4
	andi. %r0,%r6,0x3
	addi %r9,%r7,-15
	add %r8,%r4,%r9
	addi %r12,%r6,-1
	add %r9,%r3,%r9
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L1472
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1478
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1537
.L1479:
	lxvx %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1478:
	cmpdi %cr6,%r6,1
	lxvx %vs2,%r8,%r10
	stxvx %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr6,.L1509
.L1472:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1529
	addi %r7,%r7,-1
	mtctr %r7
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
.L1411:
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L1411
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
.L1509:
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
.L1527:
	addi %r0,%r9,16
	lxvx %vs10,%r4,%r9
	stxvx %vs10,%r3,%r9
	addi %r12,%r9,32
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r3,%r0
	addi %r11,%r9,48
	lxvx %vs12,%r4,%r12
	stxvx %vs12,%r3,%r12
	addi %r9,%r9,64
	lxvx %vs13,%r4,%r11
	stxvx %vs13,%r3,%r11
	bdz .L1508
	addi %r0,%r9,16
	lxvx %vs10,%r4,%r9
	stxvx %vs10,%r3,%r9
	addi %r12,%r9,32
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r3,%r0
	addi %r11,%r9,48
	lxvx %vs12,%r4,%r12
	stxvx %vs12,%r3,%r12
	addi %r9,%r9,64
	lxvx %vs13,%r4,%r11
	stxvx %vs13,%r3,%r11
	bdnz .L1527
	b .L1508
.L1536:
	lxv %vs7,0(%r4)
	mr %r6,%r11
	stxv %vs7,0(%r3)
	li %r9,16
	b .L1477
.L1415:
	li %r0,0
	b .L1404
.L1529:
	addi %r0,%r10,-16
	lxvx %vs3,%r8,%r10
	stxvx %vs3,%r9,%r10
	addi %r12,%r10,-32
	lxvx %vs4,%r8,%r0
	stxvx %vs4,%r9,%r0
	addi %r7,%r10,-48
	lxvx %vs5,%r8,%r12
	stxvx %vs5,%r9,%r12
	addi %r10,%r10,-64
	lxvx %vs6,%r8,%r7
	stxvx %vs6,%r9,%r7
	bdnz .L1529
	b .L1509
.L1403:
	andi. %r9,%r10,0x1
	addi %r7,%r10,-1
	addi %r8,%r4,-2
	addi %r9,%r3,-2
	beq- %cr0,.L1453
	cmpdi %cr5,%r7,0
	lhz %r9,0(%r4)
	mr %r8,%r4
	sth %r9,0(%r3)
	mr %r9,%r3
	beq- %cr5,.L1399
.L1453:
	srdi %r10,%r10,1
	cmpdi %cr6,%r10,2
	mtctr %r10
	ble %cr6,.L1526
	addi %r10,%r10,-1
	mtctr %r10
	lhz %r6,2(%r8)
	sth %r6,2(%r9)
	addi %r7,%r8,2
	lhz %r6,2(%r7)
	addi %r10,%r9,2
	sth %r6,2(%r10)
.L1407:
	lhz %r6,4(%r7)
	sth %r6,4(%r10)
	addi %r7,%r7,4
	lhz %r6,2(%r7)
	addi %r10,%r10,4
	sth %r6,2(%r10)
	bdnz .L1407
	b .L1399
.L1526:
	lhz %r6,2(%r8)
	mr %r12,%r8
	mr %r10,%r9
	sth %r6,2(%r9)
	addi %r8,%r8,4
	addi %r9,%r9,4
	lhz %r0,4(%r12)
	sth %r0,4(%r10)
	bdnz .L1526
	b .L1399
.L1537:
	lxv %vs0,0(%r8)
	mr %r6,%r12
	stxv %vs0,0(%r9)
	li %r10,-16
	b .L1479
.L1410:
	andi. %r10,%r5,0x1
	addi %r0,%r7,1
	add %r9,%r3,%r0
	add %r4,%r4,%r0
	addi %r3,%r5,-1
	beq- %cr0,.L1465
	cmpdi %cr1,%r3,0
	lbzu %r10,-1(%r4)
	stbu %r10,-1(%r9)
	beqlr- %cr1
.L1465:
	srdi %r10,%r5,1
	cmpdi %cr5,%r10,2
	mtctr %r10
	ble %cr5,.L1528
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1413:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1413
.L1396:
	blr
.L1528:
	lbz %r12,-1(%r4)
	mr %r8,%r4
	mr %r5,%r9
	stb %r12,-1(%r9)
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	lbz %r7,-2(%r8)
	stb %r7,-2(%r5)
	bdnz .L1528
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
	srwi %r8,%r5,2
	rlwinm %r9,%r5,0,0,29
	blt- %cr0,.L1542
	add %r10,%r4,%r5
	cmpld %cr1,%r3,%r10
	ble- %cr1,.L1720
.L1542:
	cmpwi %cr6,%r8,0
	beq- %cr6,.L1541
	addi %r6,%r4,4
	subf %r11,%r6,%r3
	cmpldi %cr7,%r11,8
	ble- %cr7,.L1545
	addi %r0,%r8,-1
	cmplwi %cr0,%r0,2
	ble- %cr0,.L1563
	srdi %r11,%r5,4
	andi. %r0,%r11,0x3
	addi %r12,%r11,-1
	mr %r7,%r11
	srwi %r6,%r5,4
	li %r10,0
	beq- %cr0,.L1623
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1639
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1721
.L1640:
	lxvx %vs8,%r4,%r10
	addi %r11,%r11,-1
	stxvx %vs8,%r3,%r10
	addi %r10,%r10,16
.L1639:
	cmpdi %cr6,%r11,1
	lxvx %vs9,%r4,%r10
	stxvx %vs9,%r3,%r10
	addi %r10,%r10,16
	beq- %cr6,.L1680
.L1623:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1709
	addi %r7,%r7,-1
	mtctr %r7
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r7,%r10,16
.L1547:
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
	addi %r11,%r7,16
	lxvx %vs0,%r4,%r11
	stxvx %vs0,%r3,%r11
	addi %r7,%r10,48
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
	addi %r10,%r10,64
	lxvx %vs0,%r4,%r10
	stxvx %vs0,%r3,%r10
	addi %r7,%r10,16
	bdnz .L1547
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
	addi %r11,%r7,16
	lxvx %vs0,%r4,%r11
	stxvx %vs0,%r3,%r11
	addi %r7,%r10,48
	lxvx %vs0,%r4,%r7
	stxvx %vs0,%r3,%r7
.L1680:
	slwi %r10,%r6,2
	cmplw %cr0,%r8,%r10
	beq- %cr0,.L1541
.L1546:
	subf %r8,%r10,%r8
	rldic %r6,%r8,2,30
	cmpldi %cr1,%r6,16
	li %r11,16
	rlwinm %r10,%r10,2,0,27
	isel %r0,%r11,%r6,5
	sldi %r12,%r0,56
	add %r7,%r4,%r10
	add %r8,%r3,%r10
	lxvl %vs0,%r7,%r12
	stxvl %vs0,%r8,%r12
.L1541:
	cmplw %cr7,%r9,%r5
	bgelr- %cr7
	rldicl %r11,%r9,0,32
	addi %r10,%r11,1
	add %r7,%r4,%r10
	add %r8,%r3,%r11
	subf %r0,%r7,%r8
	cmpldi %cr1,%r0,14
	subf %r9,%r9,%r5
	ble- %cr1,.L1551
	addi %r5,%r9,-1
	cmplwi %cr0,%r5,14
	ble- %cr0,.L1564
	rldicl %r5,%r9,60,36
	andi. %r0,%r5,0x3
	addi %r12,%r5,-1
	mr %r6,%r5
	add %r7,%r4,%r11
	li %r10,0
	beq- %cr0,.L1611
	cmpdi %cr5,%r0,1
	beq- %cr5,.L1641
	cmpdi %cr6,%r0,2
	bne- %cr6,.L1722
.L1642:
	lxvx %vs2,%r7,%r10
	addi %r5,%r5,-1
	stxvx %vs2,%r8,%r10
	addi %r10,%r10,16
.L1641:
	cmpdi %cr7,%r5,1
	lxvx %vs3,%r7,%r10
	stxvx %vs3,%r8,%r10
	addi %r10,%r10,16
	beq- %cr7,.L1679
.L1611:
	srdi %r6,%r6,2
	cmpdi %cr1,%r6,2
	mtctr %r6
	ble %cr1,.L1707
	addi %r6,%r6,-1
	mtctr %r6
	lxvx %vs0,%r7,%r10
	stxvx %vs0,%r8,%r10
	addi %r6,%r10,16
.L1553:
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
	addi %r5,%r6,16
	lxvx %vs0,%r7,%r5
	stxvx %vs0,%r8,%r5
	addi %r6,%r10,48
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
	addi %r10,%r10,64
	lxvx %vs0,%r7,%r10
	stxvx %vs0,%r8,%r10
	addi %r6,%r10,16
	bdnz .L1553
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
	addi %r5,%r6,16
	lxvx %vs0,%r7,%r5
	stxvx %vs0,%r8,%r5
	addi %r6,%r10,48
	lxvx %vs0,%r7,%r6
	stxvx %vs0,%r8,%r6
.L1679:
	andi. %r10,%r9,0xf
	rlwinm %r12,%r9,0,0,27
	beqlr- %cr0
.L1552:
	subf %r9,%r12,%r9
	cmplwi %cr5,%r9,16
	rldicl %r10,%r12,0,32
	rldicl %r7,%r9,0,32
	li %r8,16
	add %r11,%r10,%r11
	isel %r5,%r8,%r7,21
	sldi %r0,%r5,56
	add %r4,%r4,%r11
	add %r3,%r3,%r11
	lxvl %vs8,%r4,%r0
	stxvl %vs8,%r3,%r0
	blr
.L1720:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r9,%r11,0,32
	beqlr- %cr5
	cmplwi %cr6,%r11,14
	ble- %cr6,.L1557
	addi %r0,%r9,-1
	add %r6,%r4,%r0
	add %r8,%r3,%r9
	subf %r7,%r6,%r8
	addi %r12,%r7,14
	cmpldi %cr7,%r12,14
	ble- %cr7,.L1557
	srdi %r6,%r5,4
	andi. %r0,%r6,0x3
	addi %r10,%r9,-15
	add %r8,%r4,%r10
	add %r9,%r3,%r10
	addi %r12,%r6,-1
	mr %r7,%r6
	li %r10,0
	beq- %cr0,.L1635
	cmpdi %cr1,%r0,1
	beq- %cr1,.L1643
	cmpdi %cr5,%r0,2
	bne- %cr5,.L1723
.L1644:
	lxvx %vs1,%r8,%r10
	addi %r6,%r6,-1
	stxvx %vs1,%r9,%r10
	addi %r10,%r10,-16
.L1643:
	cmpdi %cr6,%r6,1
	lxvx %vs2,%r8,%r10
	stxvx %vs2,%r9,%r10
	addi %r10,%r10,-16
	beq- %cr6,.L1681
.L1635:
	srdi %r7,%r7,2
	cmpdi %cr7,%r7,2
	mtctr %r7
	ble %cr7,.L1711
	addi %r7,%r7,-1
	mtctr %r7
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
.L1558:
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r10,%r10,-64
	lxvx %vs0,%r8,%r10
	stxvx %vs0,%r9,%r10
	addi %r7,%r10,-16
	bdnz .L1558
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
	addi %r6,%r7,-16
	lxvx %vs0,%r8,%r6
	stxvx %vs0,%r9,%r6
	addi %r7,%r10,-48
	lxvx %vs0,%r8,%r7
	stxvx %vs0,%r9,%r7
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
.L1709:
	addi %r0,%r10,16
	lxvx %vs10,%r4,%r10
	stxvx %vs10,%r3,%r10
	addi %r12,%r10,32
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r3,%r0
	addi %r7,%r10,48
	lxvx %vs12,%r4,%r12
	stxvx %vs12,%r3,%r12
	addi %r10,%r10,64
	lxvx %vs13,%r4,%r7
	stxvx %vs13,%r3,%r7
	bdz .L1680
	addi %r0,%r10,16
	lxvx %vs10,%r4,%r10
	stxvx %vs10,%r3,%r10
	addi %r12,%r10,32
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r3,%r0
	addi %r7,%r10,48
	lxvx %vs12,%r4,%r12
	stxvx %vs12,%r3,%r12
	addi %r10,%r10,64
	lxvx %vs13,%r4,%r7
	stxvx %vs13,%r3,%r7
	bdnz .L1709
	b .L1680
.L1707:
	addi %r0,%r10,16
	lxvx %vs4,%r7,%r10
	stxvx %vs4,%r8,%r10
	addi %r12,%r10,32
	lxvx %vs5,%r7,%r0
	stxvx %vs5,%r8,%r0
	addi %r6,%r10,48
	lxvx %vs6,%r7,%r12
	stxvx %vs6,%r8,%r12
	addi %r10,%r10,64
	lxvx %vs7,%r7,%r6
	stxvx %vs7,%r8,%r6
	bdz .L1679
	addi %r0,%r10,16
	lxvx %vs4,%r7,%r10
	stxvx %vs4,%r8,%r10
	addi %r12,%r10,32
	lxvx %vs5,%r7,%r0
	stxvx %vs5,%r8,%r0
	addi %r6,%r10,48
	lxvx %vs6,%r7,%r12
	stxvx %vs6,%r8,%r12
	addi %r10,%r10,64
	lxvx %vs7,%r7,%r6
	stxvx %vs7,%r8,%r6
	bdnz .L1707
	b .L1679
.L1721:
	lxv %vs7,0(%r4)
	mr %r11,%r12
	stxv %vs7,0(%r3)
	li %r10,16
	b .L1640
.L1722:
	lxv %vs1,0(%r7)
	mr %r5,%r12
	stxv %vs1,0(%r8)
	li %r10,16
	b .L1642
.L1564:
	li %r12,0
	b .L1552
.L1563:
	li %r10,0
	b .L1546
.L1711:
	addi %r0,%r10,-16
	lxvx %vs3,%r8,%r10
	stxvx %vs3,%r9,%r10
	addi %r12,%r10,-32
	lxvx %vs4,%r8,%r0
	stxvx %vs4,%r9,%r0
	addi %r7,%r10,-48
	lxvx %vs5,%r8,%r12
	stxvx %vs5,%r9,%r12
	addi %r10,%r10,-64
	lxvx %vs6,%r8,%r7
	stxvx %vs6,%r9,%r7
	bdnz .L1711
	b .L1681
.L1545:
	andi. %r10,%r8,0x1
	addi %r6,%r8,-1
	addi %r7,%r4,-4
	addi %r10,%r3,-4
	beq- %cr0,.L1616
	cmpdi %cr5,%r6,0
	lwz %r11,0(%r4)
	mr %r7,%r4
	stw %r11,0(%r3)
	mr %r10,%r3
	beq- %cr5,.L1541
.L1616:
	srdi %r8,%r8,1
	cmpdi %cr6,%r8,2
	mtctr %r8
	ble %cr6,.L1708
	addi %r8,%r8,-1
	mtctr %r8
	lwz %r11,4(%r7)
	stw %r11,4(%r10)
	addi %r6,%r7,4
	lwz %r11,4(%r6)
	addi %r8,%r10,4
	stw %r11,4(%r8)
.L1549:
	lwz %r11,8(%r6)
	stw %r11,8(%r8)
	addi %r6,%r6,8
	lwz %r11,4(%r6)
	addi %r8,%r8,8
	stw %r11,4(%r8)
	bdnz .L1549
	b .L1541
.L1708:
	lwz %r0,4(%r7)
	mr %r12,%r7
	mr %r8,%r10
	stw %r0,4(%r10)
	addi %r7,%r7,8
	addi %r10,%r10,8
	lwz %r6,8(%r12)
	stw %r6,8(%r8)
	bdnz .L1708
	b .L1541
.L1551:
	rldicl %r12,%r9,0,32
	andi. %r10,%r12,0x1
	addi %r6,%r11,-1
	add %r4,%r4,%r6
	add %r10,%r3,%r6
	addi %r9,%r12,-1
	beq- %cr0,.L1604
	cmpdi %cr6,%r9,0
	lbzu %r7,1(%r4)
	stbu %r7,1(%r10)
	beqlr- %cr6
.L1604:
	srdi %r9,%r12,1
	cmpdi %cr7,%r9,2
	mtctr %r9
	ble %cr7,.L1706
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r7,1(%r4)
	stb %r7,1(%r10)
	addi %r8,%r4,1
	lbz %r7,1(%r8)
	addi %r9,%r10,1
	stb %r7,1(%r9)
.L1555:
	lbz %r7,2(%r8)
	stb %r7,2(%r9)
	addi %r8,%r8,2
	lbz %r7,1(%r8)
	addi %r9,%r9,2
	stb %r7,1(%r9)
	bdnz .L1555
.L1538:
	blr
.L1706:
	lbz %r11,1(%r4)
	mr %r8,%r4
	mr %r5,%r10
	stb %r11,1(%r10)
	addi %r4,%r4,2
	addi %r10,%r10,2
	lbz %r3,2(%r8)
	stb %r3,2(%r5)
	bdnz .L1706
	blr
.L1723:
	lxv %vs0,0(%r8)
	mr %r6,%r12
	stxv %vs0,0(%r9)
	li %r10,-16
	b .L1644
.L1557:
	andi. %r10,%r5,0x1
	addi %r0,%r9,1
	add %r9,%r3,%r0
	add %r4,%r4,%r0
	addi %r3,%r5,-1
	beq- %cr0,.L1628
	cmpdi %cr1,%r3,0
	lbzu %r10,-1(%r4)
	stbu %r10,-1(%r9)
	beqlr- %cr1
.L1628:
	srdi %r10,%r5,1
	cmpdi %cr5,%r10,2
	mtctr %r10
	ble %cr5,.L1710
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,-1(%r4)
	stb %r7,-1(%r9)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r9,-1
	stb %r7,-1(%r10)
.L1561:
	addi %r4,%r8,-1
	lbz %r7,-1(%r4)
	stb %r7,-2(%r10)
	addi %r8,%r4,-1
	lbz %r7,-1(%r8)
	addi %r10,%r10,-2
	stb %r7,-1(%r10)
	bdnz .L1561
	blr
.L1710:
	lbz %r12,-1(%r4)
	mr %r8,%r4
	mr %r5,%r9
	stb %r12,-1(%r9)
	addi %r4,%r4,-2
	addi %r9,%r9,-2
	lbz %r7,-2(%r8)
	stb %r7,-2(%r5)
	bdnz .L1710
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	bne- %cr0,.L1733
	srawi %r0,%r3,14
	cmpwi %cr1,%r0,0
	bne- %cr1,.L1732
	srdi. %r9,%r3,13
	bne- %cr0,.L1734
	srdi. %r9,%r3,12
	bne- %cr0,.L1735
	srdi. %r9,%r3,11
	bne- %cr0,.L1736
	srdi. %r9,%r3,10
	bne- %cr0,.L1737
	srdi. %r9,%r3,9
	bne- %cr0,.L1738
	srdi. %r9,%r3,8
	bne- %cr0,.L1739
	srdi. %r9,%r3,7
	bne- %cr0,.L1740
	srdi. %r9,%r3,6
	bne- %cr0,.L1741
	srdi. %r9,%r3,5
	bne- %cr0,.L1742
	srdi. %r9,%r3,4
	bne- %cr0,.L1743
	srdi. %r9,%r3,3
	bne- %cr0,.L1744
	srdi. %r9,%r3,2
	bne- %cr0,.L1745
	srdi. %r9,%r3,1
	bne- %cr0,.L1746
	cmpdi %cr5,%r3,0
	li %r9,16
	li %r10,15
	isel %r0,%r9,%r10,22
.L1732:
	rldicl %r3,%r0,0,59
	blr
.L1733:
	li %r0,0
	b .L1732
.L1744:
	li %r0,12
	b .L1732
.L1734:
	li %r0,2
	b .L1732
.L1735:
	li %r0,3
	b .L1732
.L1736:
	li %r0,4
	b .L1732
.L1737:
	li %r0,5
	b .L1732
.L1738:
	li %r0,6
	b .L1732
.L1739:
	li %r0,7
	b .L1732
.L1740:
	li %r0,8
	b .L1732
.L1741:
	li %r0,9
	b .L1732
.L1742:
	li %r0,10
	b .L1732
.L1743:
	li %r0,11
	b .L1732
.L1745:
	li %r0,13
	b .L1732
.L1746:
	li %r0,14
	b .L1732
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
	bne- %cr0,.L1751
	andi. %r9,%r3,0x2
	bne- %cr0,.L1752
	andi. %r9,%r3,0x4
	bne- %cr0,.L1753
	andi. %r9,%r3,0x8
	bne- %cr0,.L1754
	andi. %r9,%r3,0x10
	bne- %cr0,.L1755
	andi. %r9,%r3,0x20
	bne- %cr0,.L1756
	andi. %r9,%r3,0x40
	bne- %cr0,.L1757
	andi. %r9,%r3,0x80
	bne- %cr0,.L1758
	andi. %r9,%r3,0x100
	bne- %cr0,.L1759
	andi. %r9,%r3,0x200
	bne- %cr0,.L1760
	andi. %r9,%r3,0x400
	bne- %cr0,.L1761
	andi. %r9,%r3,0x800
	bne- %cr0,.L1762
	andi. %r9,%r3,0x1000
	bne- %cr0,.L1763
	andi. %r9,%r3,0x2000
	bne- %cr0,.L1764
	andi. %r9,%r3,0x4000
	bne- %cr0,.L1765
	srdi. %r3,%r3,15
	setbc %r3,2
	addi %r0,%r3,15
.L1750:
	rldicl %r3,%r0,0,59
	blr
.L1751:
	li %r0,0
	b .L1750
.L1752:
	li %r0,1
	b .L1750
.L1763:
	li %r0,12
	b .L1750
.L1753:
	li %r0,2
	b .L1750
.L1754:
	li %r0,3
	b .L1750
.L1755:
	li %r0,4
	b .L1750
.L1756:
	li %r0,5
	b .L1750
.L1757:
	li %r0,6
	b .L1750
.L1758:
	li %r0,7
	b .L1750
.L1759:
	li %r0,8
	b .L1750
.L1760:
	li %r0,9
	b .L1750
.L1761:
	li %r0,10
	b .L1750
.L1762:
	li %r0,11
	b .L1750
.L1764:
	li %r0,13
	b .L1750
.L1765:
	li %r0,14
	b .L1750
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
	xxspltidp %vs0,1191182336
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne- %cr0,.L1773
	fctidz %f1,%f1
	mfvsrd %r3,%vs1
	blr
.L1773:
	fsubs %f2,%f1,%f0
	fctidz %f3,%f2
	mfvsrd %r3,%vs3
	paddi %r3,%r3,32768
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
	oris %r0,%r11,0xc01c
	stw %r11,-4(%r1)
	mtvrsave %r0
	xxspltib %vs0,0
	plxv %vs45,.LC7@pcrel
	vspltisw %v11,1
	lwz %r12,-4(%r1)
	mtvsrws %vs32,%r3
	li %r9,0
	plxv %vs44,.LC8@pcrel
	plxv %vs33,.LC9@pcrel
	vsraw %v13,%v0,%v13
	vsraw %v12,%v0,%v12
	xxland %vs45,%vs45,%vs43
	xxland %vs44,%vs44,%vs43
	vsraw %v1,%v0,%v1
	vadduwm %v13,%v13,%v12
	xxland %vs33,%vs33,%vs43
	plxv %vs44,.LC10@pcrel
	vadduwm %v13,%v1,%v13
	vsraw %v0,%v0,%v12
	xxland %vs43,%vs32,%vs43
	vadduwm %v12,%v11,%v13
	xxsldwi %vs33,%vs44,%vs0,2
	vadduwm %v13,%v1,%v12
	xxsldwi %vs32,%vs45,%vs0,1
	vadduwm %v11,%v0,%v13
	vextuwlx %r3,%r9,%v11
	rldicl %r3,%r3,0,63
	mtvrsave %r12
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
	oris %r0,%r11,0xc01c
	stw %r11,-4(%r1)
	mtvrsave %r0
	xxspltib %vs0,0
	plxv %vs45,.LC7@pcrel
	vspltisw %v11,1
	lwz %r12,-4(%r1)
	mtvsrws %vs32,%r3
	li %r9,0
	plxv %vs44,.LC8@pcrel
	plxv %vs33,.LC9@pcrel
	vsraw %v13,%v0,%v13
	vsraw %v12,%v0,%v12
	xxland %vs45,%vs45,%vs43
	xxland %vs44,%vs44,%vs43
	vsraw %v1,%v0,%v1
	vadduwm %v13,%v13,%v12
	xxland %vs33,%vs33,%vs43
	plxv %vs44,.LC10@pcrel
	vadduwm %v13,%v1,%v13
	vsraw %v0,%v0,%v12
	xxland %vs43,%vs32,%vs43
	vadduwm %v12,%v11,%v13
	xxsldwi %vs33,%vs44,%vs0,2
	vadduwm %v13,%v1,%v12
	xxsldwi %vs32,%vs45,%vs0,1
	vadduwm %v11,%v0,%v13
	vextuwlx %r3,%r9,%v11
	extsw %r3,%r3
	mtvrsave %r12
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
	beq- %cr0,.L1779
.L1780:
	rlwinm %r9,%r10,0,31,31
	srwi %r10,%r10,1
	cmpwi %cr1,%r10,0
	neg %r0,%r9
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	slwi %r4,%r4,1
	bne+ %cr1,.L1780
.L1779:
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
	beq- %cr0,.L1784
	cmpdi %cr1,%r4,0
	beq- %cr1,.L1784
.L1785:
	rlwinm %r9,%r4,0,31,31
	srdi. %r4,%r4,1
	neg %r0,%r9
	and %r5,%r0,%r10
	add %r3,%r3,%r5
	rldic %r10,%r10,1,32
	bne+ %cr0,.L1785
.L1784:
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
	li %r11,32
	li %r9,1
	blt+ %cr0,.L1790
	b .L1811
.L1794:
	rldicl %r4,%r0,0,32
	slwi %r6,%r4,1
	cmpwi %cr6,%r4,0
	cmplw %cr5,%r3,%r6
	slwi %r9,%r9,1
	ble- %cr7,.L1792
	blt- %cr6,.L1795
	rldicl %r4,%r6,0,32
	slwi %r9,%r9,1
	ble- %cr5,.L1792
	bdz .L1793
.L1790:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r10,%r11,-1
	cmplw %cr7,%r3,%r0
	addi %r11,%r10,-1
	bge+ %cr1,.L1794
.L1795:
	li %r11,0
	li %r12,0
.L1796:
	cmplw %cr1,%r3,%r4
	subf %r7,%r4,%r3
	srdi %r4,%r4,1
	setbcr %r8,4
	cmpwi %cr6,%r8,0
	isel %r0,%r12,%r9,26
	srwi %r9,%r9,1
	cmpwi %cr7,%r9,0
	isel %r3,%r3,%r7,26
	or %r11,%r11,%r0
	rldicl %r3,%r3,0,32
	bne+ %cr7,.L1796
.L1793:
	cmpdi %cr5,%r5,0
	isel %r5,%r11,%r3,22
	rldicl %r3,%r5,0,32
	blr
.L1792:
	cmpwi %cr0,%r9,0
	bne+ %cr0,.L1795
	li %r11,0
	b .L1793
.L1811:
	subf %r4,%r4,%r3
	isel %r3,%r3,%r4,1
	rldicl %r3,%r3,0,32
	setbcr %r11,1
	b .L1793
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
	blt- %cr0,.L1815
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1815:
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
	blt- %cr0,.L1818
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1818:
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
	blt- %cr0,.L1835
	cmpdi %cr1,%r4,0
	beq- %cr1,.L1828
	li %r6,0
.L1824:
	li %r10,32
	li %r8,0
	b .L1827
.L1836:
	beq- %cr7,.L1826
.L1827:
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
	bne+ %cr0,.L1836
.L1826:
	cmpwi %cr5,%r6,0
	neg %r12,%r8
	isel %r3,%r8,%r12,22
.L1825:
	extsw %r3,%r3
	blr
.L1835:
	neg %r4,%r4
	extsw %r4,%r4
	li %r6,1
	b .L1824
.L1828:
	li %r3,0
	b .L1825
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
	li %r5,0
	bge+ %cr0,.L1838
	neg %r3,%r3
	li %r9,0
	li %r5,1
.L1838:
	cmpdi %cr1,%r4,0
	bge+ %cr1,.L1839
	neg %r4,%r4
	mr %r5,%r9
.L1839:
	cmplw %cr5,%r3,%r4
	li %r10,16
	mtctr %r10
	li %r11,1
	bgt+ %cr5,.L1840
	b .L1865
.L1844:
	slwi %r4,%r4,1
	cmplw %cr0,%r3,%r4
	cmpwi %cr7,%r4,0
	slwi %r11,%r11,1
	ble- %cr0,.L1842
	blt- %cr7,.L1861
	slwi %r4,%r4,1
	cmplw %cr0,%r3,%r4
	slwi %r11,%r11,1
	ble- %cr0,.L1842
	bdz .L1852
.L1840:
	cmpwi %cr6,%r4,0
	bge+ %cr6,.L1844
.L1861:
	cmplw %cr0,%r3,%r4
	b .L1845
.L1842:
	cmpwi %cr1,%r11,0
	beq- %cr1,.L1852
.L1845:
	li %r0,0
	li %r6,0
	b .L1846
.L1869:
	cmplw %cr0,%r3,%r4
.L1846:
	setbcr %r8,0
	cmpwi %cr5,%r8,0
	subf %r12,%r4,%r3
	srwi %r4,%r4,1
	isel %r7,%r6,%r11,22
	srwi %r11,%r11,1
	cmpwi %cr6,%r11,0
	or %r0,%r0,%r7
	isel %r3,%r3,%r12,22
	bne+ %cr6,.L1869
.L1848:
	cmpwi %cr7,%r5,0
	rldicl %r3,%r0,0,32
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L1852:
	cmpwi %cr7,%r5,0
	li %r3,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L1865:
	setbcr %r0,20
	b .L1848
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
	li %r6,0
	bge+ %cr0,.L1871
	neg %r3,%r3
	li %r6,1
.L1871:
	sradi %r7,%r4,63
	xor %r4,%r7,%r4
	subf %r0,%r7,%r4
	cmplw %cr1,%r3,%r0
	li %r5,16
	mtctr %r5
	mr %r9,%r0
	mr %r11,%r3
	li %r10,1
	bgt+ %cr1,.L1872
	b .L1898
.L1876:
	slwi %r9,%r9,1
	cmplw %cr6,%r11,%r9
	cmpwi %cr7,%r9,0
	slwi %r10,%r10,1
	ble- %cr6,.L1874
	blt- %cr7,.L1902
	slwi %r9,%r9,1
	cmplw %cr6,%r11,%r9
	slwi %r10,%r10,1
	ble- %cr6,.L1874
	bdz .L1875
.L1872:
	cmpwi %cr5,%r9,0
	bge+ %cr5,.L1876
.L1902:
	cmplw %cr6,%r11,%r9
.L1899:
	srwi %r10,%r10,1
	cmpwi %cr1,%r10,0
	subf %r3,%r9,%r11
	isel %r11,%r11,%r3,24
	srwi %r9,%r9,1
	bne+ %cr1,.L1902
.L1875:
	cmpwi %cr5,%r6,0
	rldicl %r12,%r11,0,32
	neg %r6,%r12
	isel %r3,%r12,%r6,22
	blr
.L1874:
	cmpwi %cr0,%r10,0
	bne+ %cr0,.L1899
	b .L1875
.L1898:
	subf %r8,%r0,%r3
	isel %r11,%r3,%r8,4
	b .L1875
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
	bge- %cr0,.L2073
	andi. %r9,%r4,0x8000
	bne- %cr0,.L1908
	rldic %r0,%r4,1,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1981
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1981
	rldic %r0,%r4,2,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1983
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1983
	rldic %r0,%r4,3,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1985
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1985
	rldic %r0,%r4,4,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1987
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1987
	rldic %r0,%r4,5,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1989
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1989
	rldic %r0,%r4,6,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1991
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1991
	rldic %r0,%r4,7,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1993
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1993
	rldic %r0,%r4,8,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1995
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1995
	rldic %r0,%r4,9,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1997
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1997
	rldic %r0,%r4,10,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L1999
	andi. %r10,%r0,0x8000
	bne- %cr0,.L1999
	rldic %r0,%r4,11,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2001
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2001
	rldic %r0,%r4,12,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2003
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2003
	rldic %r0,%r4,13,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2005
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2005
	rldic %r0,%r4,14,48
	cmplw %cr7,%r3,%r0
	ble- %cr7,.L2007
	andi. %r10,%r0,0x8000
	bne- %cr0,.L2007
	rldic %r7,%r4,15,48
	cmplw %cr1,%r3,%r7
	ble- %cr1,.L2008
	cmpdi %cr5,%r7,0
	cmplwi %cr7,%r3,32768
	pli %r8,32768
	pli %r0,32768
	li %r6,0
	bne- %cr5,.L1910
.L1911:
	cmpdi %cr0,%r5,0
	beq+ %cr0,.L1970
	mr %r6,%r3
.L1970:
	rlwinm %r3,%r6,0,0xffff
	blr
.L1981:
	li %r8,2
.L1910:
	subf %r10,%r0,%r3
	rlwinm %r11,%r10,0,0xffff
	isel %r12,%r3,%r11,28
	li %r9,0
	blt- %cr7,.L1979
	mr %r9,%r8
.L1979:
	srdi %r3,%r0,1
	cmplw %cr6,%r12,%r3
	subf %r6,%r3,%r12
	rldicl %r4,%r8,63,49
	rlwinm %r7,%r6,0,0xffff
	mtvsrwz %vs0,%r4
	isel %r3,%r12,%r7,24
	li %r10,0
	blt- %cr6,.L1915
	mfvsrwz %r10,%vs0
.L1915:
	srwi %r11,%r8,2
	cmpwi %cr7,%r11,0
	or %r12,%r10,%r9
	mr %r6,%r12
	srwi %r9,%r8,2
	srdi %r4,%r0,2
	beq- %cr7,.L1911
	cmplw %cr0,%r3,%r4
	subf %r6,%r4,%r3
	rlwinm %r7,%r6,0,0xffff
	setbcr %r10,0
	cmpwi %cr1,%r10,0
	li %r4,0
	isel %r3,%r3,%r7,6
	beq- %cr1,.L1919
	mr %r4,%r9
.L1919:
	srwi %r11,%r8,3
	cmpwi %cr5,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,3
	beq- %cr5,.L1911
	cmplw %cr6,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,24
	cmpwi %cr7,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,30
	beq- %cr7,.L1923
	mr %r4,%r11
.L1923:
	srwi %r11,%r8,4
	cmpwi %cr0,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,4
	beq- %cr0,.L1911
	cmplw %cr1,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,4
	cmpwi %cr5,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1927
	mr %r4,%r11
.L1927:
	srwi %r11,%r8,5
	cmpwi %cr6,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,5
	beq- %cr6,.L1911
	cmplw %cr7,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,28
	cmpwi %cr0,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,2
	beq- %cr0,.L1931
	mr %r4,%r11
.L1931:
	srwi %r11,%r8,6
	cmpwi %cr1,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,6
	beq- %cr1,.L1911
	cmplw %cr5,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,20
	cmpwi %cr6,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,26
	beq- %cr6,.L1935
	mr %r4,%r11
.L1935:
	srwi %r11,%r8,7
	cmpwi %cr7,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,7
	beq- %cr7,.L1911
	cmplw %cr0,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,0
	cmpwi %cr1,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,6
	bne- %cr1,.L2074
.L1939:
	srwi %r11,%r8,8
	cmpwi %cr5,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,8
	beq- %cr5,.L1911
	cmplw %cr6,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,24
	cmpwi %cr7,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,30
	bne- %cr7,.L2075
.L1943:
	srwi %r11,%r8,9
	cmpwi %cr0,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,9
	beq- %cr0,.L1911
	cmplw %cr1,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,4
	cmpwi %cr5,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,22
	bne- %cr5,.L2076
.L1947:
	srwi %r11,%r8,10
	cmpwi %cr6,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,10
	beq- %cr6,.L1911
	cmplw %cr7,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,28
	cmpwi %cr0,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,2
	bne- %cr0,.L2077
.L1951:
	srwi %r11,%r8,11
	cmpwi %cr1,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,11
	beq- %cr1,.L1911
	cmplw %cr5,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,20
	cmpwi %cr6,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,26
	bne- %cr6,.L2078
.L1955:
	srwi %r11,%r8,12
	cmpwi %cr7,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,12
	beq- %cr7,.L1911
	cmplw %cr0,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,0
	cmpwi %cr1,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,6
	bne- %cr1,.L2079
	srwi %r11,%r8,13
	cmpwi %cr5,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,13
	beq- %cr5,.L1911
.L2080:
	cmplw %cr6,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,24
	cmpwi %cr7,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,30
	beq- %cr7,.L1963
	mr %r4,%r11
.L1963:
	srwi %r11,%r8,14
	cmpwi %cr0,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,14
	beq- %cr0,.L1911
	cmplw %cr1,%r3,%r7
	subf %r6,%r7,%r3
	rlwinm %r10,%r6,0,0xffff
	setbcr %r4,4
	cmpwi %cr5,%r4,0
	li %r4,0
	isel %r3,%r3,%r10,22
	beq- %cr5,.L1967
	mr %r4,%r11
.L1967:
	cmpwi %cr6,%r8,16384
	or %r8,%r12,%r4
	srdi %r0,%r0,15
	mr %r6,%r8
	beq- %cr6,.L1911
	cmplw %cr7,%r3,%r0
	subf %r11,%r0,%r3
	rlwinm %r12,%r11,0,0xffff
	setbcr %r9,28
	isel %r3,%r3,%r12,28
	or %r6,%r8,%r9
	b .L1911
.L2074:
	mr %r4,%r11
	b .L1939
.L2075:
	mr %r4,%r11
	b .L1943
.L2076:
	mr %r4,%r11
	b .L1947
.L2077:
	mr %r4,%r11
	b .L1951
.L2078:
	mr %r4,%r11
	b .L1955
.L2079:
	mr %r4,%r11
	srwi %r11,%r8,13
	cmpwi %cr5,%r11,0
	or %r12,%r12,%r4
	mr %r6,%r12
	srdi %r7,%r0,13
	bne+ %cr5,.L2080
	b .L1911
.L1983:
	li %r8,4
	b .L1910
.L1985:
	li %r8,8
	b .L1910
.L1987:
	li %r8,16
	b .L1910
.L1997:
	li %r8,512
	b .L1910
.L1989:
	li %r8,32
	b .L1910
.L1991:
	li %r8,64
	b .L1910
.L1993:
	li %r8,128
	b .L1910
.L1995:
	li %r8,256
	b .L1910
.L2073:
	subf %r9,%r4,%r3
	rlwinm %r4,%r9,0,0xffff
	setbc %r6,2
	isel %r3,%r4,%r3,2
	b .L1911
.L1999:
	li %r8,1024
	b .L1910
.L2001:
	li %r8,2048
	b .L1910
.L2003:
	li %r8,4096
	b .L1910
.L2005:
	li %r8,8192
	b .L1910
.L2007:
	li %r8,16384
	b .L1910
.L2008:
	cmplwi %cr7,%r3,32768
	pli %r0,32768
	pli %r8,32768
	b .L1910
.L1908:
	subf %r3,%r4,%r3
	rlwinm %r3,%r3,0,0xffff
	li %r6,1
	b .L1911
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
	blt+ %cr0,.L2082
	b .L2104
.L2086:
	sldi %r4,%r4,1
	cmpld %cr5,%r3,%r4
	sldi %r9,%r9,1
	ble- %cr5,.L2084
	bdz .L2085
.L2082:
	andis. %r11,%r4,0x8000
	beq+ %cr0,.L2086
	cmpld %cr5,%r3,%r4
.L2087:
	li %r11,0
	li %r6,0
	b .L2088
.L2107:
	cmpld %cr5,%r3,%r4
.L2088:
	setbcr %r8,20
	cmpwi %cr1,%r8,0
	subf %r0,%r4,%r3
	srdi %r4,%r4,1
	isel %r7,%r6,%r9,6
	srdi. %r9,%r9,1
	or %r11,%r11,%r7
	isel %r3,%r3,%r0,6
	bne+ %cr0,.L2107
.L2085:
	cmpdi %cr6,%r5,0
	isel %r3,%r11,%r3,26
	blr
.L2084:
	cmpdi %cr7,%r9,0
	bne+ %cr7,.L2087
	b .L2085
.L2104:
	subf %r4,%r4,%r3
	isel %r3,%r3,%r4,1
	setbcr %r11,1
	b .L2085
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
	beq- %cr0,.L2109
	addi %r6,%r4,-32
	slw %r5,%r3,%r6
	li %r4,0
	sldi %r7,%r5,32
	or %r3,%r4,%r7
	blr
.L2109:
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
	beq- %cr0,.L2115
	addi %r5,%r5,-64
	sld %r3,%r4,%r5
	li %r4,0
	blr
.L2115:
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
	beq- %cr0,.L2120
	sradi %r7,%r3,32
	addi %r8,%r4,-32
	sraw %r6,%r7,%r8
	srawi %r4,%r7,31
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
.L2120:
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
	beq- %cr0,.L2126
	addi %r5,%r5,-64
	srad %r4,%r3,%r5
	sradi %r3,%r3,63
	blr
.L2126:
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
	brd %r3,%r3
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
	brw %r9,%r3
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
	li %r7,0
	setbcr %r8,1
	slwi %r0,%r8,4
	subfic %r9,%r0,16
	srw %r3,%r3,%r9
	andi. %r10,%r3,0xff00
	setbc %r10,2
	slwi %r4,%r10,3
	subfic %r6,%r4,8
	srw %r5,%r3,%r6
	andi. %r6,%r5,0xf0
	add %r11,%r4,%r0
	setbc %r12,2
	slwi %r8,%r12,2
	subfic %r0,%r8,4
	srw %r9,%r5,%r0
	andi. %r6,%r9,0xc
	add %r3,%r8,%r11
	setbc %r10,2
	slwi %r4,%r10,1
	subfic %r6,%r4,2
	srw %r5,%r9,%r6
	andi. %r6,%r5,0x2
	subfic %r11,%r5,2
	add %r12,%r4,%r3
	isel %r7,%r11,%r7,2
	add %r8,%r7,%r12
	extsw %r3,%r8
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
	li %r10,0
	setnbcr %r9,2
	and %r0,%r9,%r3
	isel %r4,%r4,%r10,2
	setbc %r3,2
	or %r5,%r0,%r4
	slwi %r7,%r3,6
	cntlzd %r6,%r5
	add %r8,%r7,%r6
	rldicl %r3,%r8,0,32
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
	blt- %cr0,.L2136
	li %r0,2
	bgt- %cr0,.L2135
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt- %cr1,.L2135
	setbc %r3,5
	addi %r0,%r3,1
.L2135:
	rldicl %r3,%r0,0,62
	blr
.L2136:
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
	blt- %cr0,.L2142
	li %r5,1
	bgt- %cr0,.L2141
	cmplw %cr1,%r3,%r4
	li %r3,-1
	setbc %r0,5
	isel %r5,%r3,%r0,4
.L2141:
	extsw %r3,%r5
	blr
.L2142:
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
	blt- %cr0,.L2147
	li %r0,2
	bgt- %cr0,.L2146
	cmpld %cr1,%r4,%r6
	li %r0,0
	blt- %cr1,.L2146
	setbc %r3,5
	addi %r0,%r3,1
.L2146:
	rldicl %r3,%r0,0,62
	blr
.L2147:
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
	andi. %r7,%r6,0xf
	add %r11,%r5,%r0
	setbc %r7,2
	slwi %r12,%r7,2
	srw %r9,%r6,%r12
	andi. %r7,%r9,0x3
	add %r8,%r12,%r11
	setbc %r0,2
	slwi %r4,%r0,1
	srw %r3,%r9,%r4
	rlwinm %r10,%r3,0,30,31
	not %r5,%r10
	rlwinm %r6,%r5,0,31,31
	srwi %r11,%r10,1
	neg %r7,%r6
	subfic %r12,%r11,2
	add %r9,%r4,%r8
	and %r8,%r7,%r12
	add %r0,%r8,%r9
	extsw %r3,%r0
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
	li %r9,0
	setnbcr %r10,2
	isel %r0,%r3,%r9,2
	and %r3,%r10,%r4
	or %r4,%r0,%r3
	setbc %r5,2
	cnttzd %r6,%r4
	slwi %r7,%r5,6
	add %r8,%r7,%r6
	rldicl %r3,%r8,0,32
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
	bne- %cr0,.L2154
	cmpdi %cr1,%r3,0
	li %r0,0
	bne- %cr1,.L2158
	rldicl %r3,%r0,0,32
	blr
.L2154:
	cnttzd %r4,%r4
	addi %r0,%r4,1
	rldicl %r3,%r0,0,32
	blr
.L2158:
	cnttzd %r3,%r3
	addi %r0,%r3,65
	rldicl %r3,%r0,0,32
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
	beq- %cr0,.L2160
	srdi %r7,%r3,32
	addi %r8,%r4,-32
	srw %r6,%r7,%r8
	li %r4,0
	rldicl %r11,%r6,0,32
	sldi %r12,%r4,32
	or %r3,%r12,%r11
	blr
.L2160:
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
	beq- %cr0,.L2166
	addi %r5,%r5,-64
	srd %r4,%r3,%r5
	li %r3,0
	blr
.L2166:
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
	mullw %r10,%r8,%r9
	srwi %r3,%r3,16
	srwi %r4,%r4,16
	srwi %r7,%r10,16
	maddld %r0,%r9,%r3,%r7
	rlwinm %r5,%r0,0,0xffff
	maddld %r6,%r8,%r4,%r5
	srwi %r11,%r0,16
	maddld %r12,%r3,%r4,%r11
	rlwimi %r10,%r6,16,0,31-16
	srwi %r8,%r6,16
	rldicl %r9,%r10,0,32
	add %r10,%r12,%r8
	sldi %r3,%r10,32
	or %r3,%r9,%r3
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
	maddld %r6,%r6,%r5,%r3
	srwi %r7,%r12,16
	maddld %r8,%r8,%r5,%r7
	srwi %r5,%r6,16
	rlwimi %r9,%r6,16,0,31-16
	rldicl %r9,%r9,0,32
	add %r12,%r8,%r5
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
	rldicl %r8,%r3,0,32
	rldicl %r9,%r4,0,32
	mr %r10,%r4
	mulld %r4,%r8,%r9
	srdi %r3,%r3,32
	srdi %r0,%r10,32
	srdi %r7,%r4,32
	maddld %r5,%r9,%r3,%r7
	rldicl %r6,%r5,0,32
	maddld %r11,%r8,%r0,%r6
	srdi %r12,%r5,32
	maddld %r10,%r3,%r0,%r12
	srdi %r8,%r11,32
	rldimi %r4,%r11,32,0
	add %r3,%r10,%r8
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
	rldicl %r10,%r6,0,32
	rldicl %r7,%r4,0,32
	mr %r9,%r4
	mulld %r4,%r7,%r10
	srdi %r8,%r9,32
	srdi %r11,%r6,32
	srdi %r0,%r4,32
	maddld %r12,%r10,%r8,%r0
	rldicl %r0,%r12,0,32
	maddld %r7,%r7,%r11,%r0
	srdi %r10,%r12,32
	maddld %r8,%r8,%r11,%r10
	srdi %r11,%r7,32
	rldimi %r4,%r7,32,0
	add %r12,%r8,%r11
	maddld %r5,%r9,%r5,%r12
	maddld %r3,%r6,%r3,%r5
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
	pli %r10,1431655765
	srdi %r9,%r3,1
	rldimi %r10,%r10,32,0
	and %r0,%r9,%r10
	subf %r3,%r0,%r3
	pli %r4,858993459
	srdi %r5,%r3,2
	rldimi %r4,%r4,32,0
	and %r6,%r5,%r4
	and %r7,%r3,%r4
	add %r11,%r6,%r7
	srdi %r12,%r11,4
	pli %r8,252645135
	add %r10,%r12,%r11
	rldimi %r8,%r8,32,0
	and %r9,%r10,%r8
	srdi %r0,%r9,32
	add %r3,%r0,%r9
	srwi %r4,%r3,16
	add %r5,%r4,%r3
	srwi %r6,%r5,8
	add %r7,%r6,%r5
	rldicl %r3,%r7,0,57
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
	srwi %r9,%r3,1
	pli %r10,1431655765
	and %r0,%r9,%r10
	subf %r3,%r0,%r3
	srwi %r4,%r3,2
	pli %r5,858993459
	and %r6,%r4,%r5
	and %r7,%r3,%r5
	add %r8,%r6,%r7
	srwi %r11,%r8,4
	add %r12,%r11,%r8
	pli %r9,252645135
	and %r0,%r12,%r9
	srwi %r10,%r0,16
	add %r4,%r10,%r0
	srwi %r3,%r4,8
	add %r5,%r3,%r4
	rldicl %r3,%r5,0,58
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
	sldi %r5,%r3,63
	srdi %r7,%r4,1
	std %r30,-16(%r1)
	.cfi_offset 31, -8
	.cfi_offset 30, -16
	pli %r31,1431655765
	or %r0,%r5,%r7
	rldimi %r31,%r31,32,0
	pli %r30,1431655765
	and %r9,%r31,%r0
	srdi %r6,%r3,1
	rldimi %r30,%r30,32,0
	subfc %r12,%r9,%r4
	and %r8,%r30,%r6
	subfe %r3,%r8,%r3
	sldi %r4,%r3,62
	srdi %r11,%r12,2
	pli %r5,858993459
	or %r7,%r4,%r11
	rldimi %r5,%r5,32,0
	pli %r0,858993459
	and %r30,%r7,%r5
	srdi %r10,%r3,2
	rldimi %r0,%r0,32,0
	and %r8,%r12,%r5
	addc %r12,%r30,%r8
	and %r6,%r10,%r0
	and %r31,%r3,%r0
	adde %r3,%r6,%r31
	srdi %r9,%r12,4
	rldimi %r9,%r3,60,0
	addc %r4,%r9,%r12
	srdi %r11,%r3,4
	pli %r10,252645135
	pli %r0,252645135
	adde %r7,%r11,%r3
	rldimi %r10,%r10,32,0
	rldimi %r0,%r0,32,0
	and %r6,%r4,%r0
	and %r5,%r7,%r10
	add %r30,%r5,%r6
	srdi %r31,%r30,32
	add %r8,%r31,%r30
	ld %r30,-16(%r1)
	srwi %r12,%r8,16
	ld %r31,-8(%r1)
	add %r9,%r12,%r8
	srwi %r3,%r9,8
	add %r4,%r3,%r9
	rlwinm %r3,%r4,0,0xff
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
	andi. %r9,%r4,0x1
	fmr %f0,%f1
	xxspltidp %vs1,1065353216
	mr %r0,%r4
	beq- %cr0,.L2184
.L2186:
	fmul %f1,%f1,%f0
.L2184:
	srawi %r9,%r0,1
	addze %r9,%r9
	extsw. %r0,%r9
	beq- %cr0,.L2185
	andi. %r10,%r0,0x1
	fmul %f0,%f0,%f0
	srawi %r10,%r0,1
	addze %r10,%r10
	bne- %cr0,.L2186
.L2190:
	extsw %r0,%r10
	fmul %f0,%f0,%f0
	andi. %r10,%r0,0x1
	srawi %r10,%r0,1
	addze %r10,%r10
	bne- %cr0,.L2186
	b .L2190
.L2185:
	cmpwi %cr1,%r4,0
	bgelr+ %cr1
	xxspltidp %vs2,1065353216
	fdiv %f1,%f2,%f1
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
	andi. %r9,%r4,0x1
	fmr %f0,%f1
	xxspltidp %vs1,1065353216
	mr %r0,%r4
	beq- %cr0,.L2192
.L2194:
	fmuls %f1,%f1,%f0
.L2192:
	srawi %r9,%r0,1
	addze %r9,%r9
	extsw. %r0,%r9
	beq- %cr0,.L2193
	andi. %r10,%r0,0x1
	fmuls %f0,%f0,%f0
	srawi %r10,%r0,1
	addze %r10,%r10
	bne- %cr0,.L2194
.L2198:
	extsw %r0,%r10
	fmuls %f0,%f0,%f0
	andi. %r10,%r0,0x1
	srawi %r10,%r0,1
	addze %r10,%r10
	bne- %cr0,.L2194
	b .L2198
.L2193:
	cmpwi %cr1,%r4,0
	bgelr+ %cr1
	xxspltidp %vs2,1065353216
	fdivs %f1,%f2,%f1
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
	blt- %cr0,.L2201
	li %r0,2
	bgt- %cr0,.L2200
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt- %cr1,.L2200
	setbc %r3,5
	addi %r0,%r3,1
.L2200:
	rldicl %r3,%r0,0,62
	blr
.L2201:
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
	blt- %cr0,.L2207
	li %r5,1
	bgt- %cr0,.L2206
	cmplw %cr1,%r3,%r4
	li %r3,-1
	setbc %r0,5
	isel %r5,%r3,%r0,4
.L2206:
	extsw %r3,%r5
	blr
.L2207:
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
	blt- %cr0,.L2212
	li %r0,2
	bgt- %cr0,.L2211
	cmpld %cr1,%r4,%r6
	li %r0,0
	blt- %cr1,.L2211
	setbc %r3,5
	addi %r0,%r3,1
.L2211:
	rldicl %r3,%r0,0,62
	blr
.L2212:
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
	.set	.LC1,.LC3
	.set	.LC2,.LC4
	.align 4
.LC3:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC4:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.align 4
.LC5:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.align 4
.LC6:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC7:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
.LC8:
	.long	4
	.long	5
	.long	6
	.long	7
	.align 4
.LC9:
	.long	8
	.long	9
	.long	10
	.long	11
	.align 4
.LC10:
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
