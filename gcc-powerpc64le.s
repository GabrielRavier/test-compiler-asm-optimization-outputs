	.file	"mini-libc.c"
	.machine power10
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
	.localentry	make_ti,1
	mr %r2,%r3
	mr %r3,%r4
	mr %r4,%r2
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
	.localentry	make_tu,1
	mr %r2,%r3
	mr %r3,%r4
	mr %r4,%r2
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
	.localentry	memmove,1
	cmpld %cr0,%r3,%r4
	ble %cr0,.L5
	cmpdi %cr5,%r5,0
	add %r11,%r4,%r5
	add %r12,%r3,%r5
	beqlr %cr5
	addi %r9,%r5,-1
	cmpldi %cr6,%r9,14
	ble %cr6,.L7
	addi %r2,%r5,-2
	add %r10,%r3,%r9
	add %r0,%r4,%r2
	subf %r6,%r0,%r10
	addi %r7,%r6,14
	cmpldi %cr0,%r7,14
	ble %cr0,.L7
	srdi %r8,%r5,4
	addi %r9,%r5,-16
	andi. %r6,%r8,0x3
	add %r4,%r4,%r9
	addi %r0,%r8,-1
	mr %r10,%r8
	add %r9,%r3,%r9
	li %r2,0
	beq %cr0,.L68
	cmpdi %cr7,%r6,1
	beq %cr7,.L84
	cmpdi %cr1,%r6,2
	beq %cr1,.L85
	lxv %vs8,0(%r4)
	mr %r8,%r0
	li %r2,-16
	stxv %vs8,0(%r9)
.L85:
	lxvx %vs9,%r4,%r2
	addi %r8,%r8,-1
	stxvx %vs9,%r9,%r2
	addi %r2,%r2,-16
.L84:
	lxvx %vs10,%r4,%r2
	cmpdi %cr5,%r8,1
	stxvx %vs10,%r9,%r2
	addi %r2,%r2,-16
	beq %cr5,.L118
.L68:
	srdi %r7,%r10,2
	mtctr %r7
.L8:
	lxvx %vs11,%r4,%r2
	addi %r6,%r2,-16
	addi %r10,%r2,-32
	addi %r0,%r2,-48
	stxvx %vs11,%r9,%r2
	addi %r2,%r2,-64
	lxvx %vs12,%r4,%r6
	stxvx %vs12,%r9,%r6
	lxvx %vs13,%r4,%r10
	stxvx %vs13,%r9,%r10
	lxvx %vs0,%r4,%r0
	stxvx %vs0,%r9,%r0
	bdnz .L8
.L118:
	andi. %r2,%r5,0xf
	rldicr %r4,%r5,0,59
	subf %r11,%r4,%r11
	subf %r12,%r4,%r12
	subf %r5,%r4,%r5
	beqlr %cr0
	cmpldi %cr6,%r5,1
	lbz %r9,-1(%r11)
	stb %r9,-1(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,2
	lbz %r8,-2(%r11)
	stb %r8,-2(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,3
	lbz %r2,-3(%r11)
	stb %r2,-3(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,4
	lbz %r7,-4(%r11)
	stb %r7,-4(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,5
	lbz %r6,-5(%r11)
	stb %r6,-5(%r12)
	beqlr %cr0
	cmpldi %cr6,%r5,6
	lbz %r0,-6(%r11)
	stb %r0,-6(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,7
	lbz %r10,-7(%r11)
	stb %r10,-7(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,8
	lbz %r4,-8(%r11)
	stb %r4,-8(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,9
	lbz %r9,-9(%r11)
	stb %r9,-9(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,10
	lbz %r8,-10(%r11)
	stb %r8,-10(%r12)
	beqlr %cr0
	cmpldi %cr6,%r5,11
	lbz %r2,-11(%r11)
	stb %r2,-11(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,12
	lbz %r7,-12(%r11)
	stb %r7,-12(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,13
	lbz %r6,-13(%r11)
	stb %r6,-13(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,-14(%r11)
	stb %r5,-14(%r12)
	beqlr %cr5
	lbz %r11,-15(%r11)
	stb %r11,-15(%r12)
	blr
	.p2align 4,,15
.L5:
	beqlr %cr0
	cmpdi %cr1,%r5,0
	beqlr %cr1
	addi %r2,%r4,1
	subf %r0,%r2,%r3
	cmpldi %cr5,%r0,14
	ble %cr5,.L12
	addi %r6,%r5,-1
	cmpldi %cr6,%r6,14
	ble %cr6,.L19
	srdi %r10,%r5,4
	li %r12,0
	andi. %r8,%r10,0x3
	addi %r11,%r10,-1
	mr %r9,%r10
	beq %cr0,.L80
	cmpdi %cr7,%r8,1
	beq %cr7,.L86
	cmpdi %cr1,%r8,2
	beq %cr1,.L87
	lxv %vs0,0(%r4)
	mr %r10,%r11
	li %r12,16
	stxv %vs0,0(%r3)
.L87:
	lxvx %vs1,%r4,%r12
	addi %r10,%r10,-1
	stxvx %vs1,%r3,%r12
	addi %r12,%r12,16
.L86:
	lxvx %vs2,%r4,%r12
	cmpdi %cr5,%r10,1
	stxvx %vs2,%r3,%r12
	addi %r12,%r12,16
	beq %cr5,.L119
.L80:
	srdi %r2,%r9,2
	mtctr %r2
.L14:
	lxvx %vs3,%r4,%r12
	addi %r0,%r12,16
	addi %r7,%r12,32
	addi %r6,%r12,48
	stxvx %vs3,%r3,%r12
	addi %r12,%r12,64
	lxvx %vs4,%r4,%r0
	stxvx %vs4,%r3,%r0
	lxvx %vs5,%r4,%r7
	stxvx %vs5,%r3,%r7
	lxvx %vs6,%r4,%r6
	stxvx %vs6,%r3,%r6
	bdnz .L14
.L119:
	andi. %r2,%r5,0xf
	rldicr %r7,%r5,0,59
	beqlr %cr0
.L13:
	subf %r5,%r7,%r5
	li %r8,16
	cmpldi %cr6,%r5,16
	add %r4,%r4,%r7
	add %r11,%r3,%r7
	isel %r9,%r8,%r5,25
	sldi %r10,%r9,56
	lxvl %vs7,%r4,%r10
	stxvl %vs7,%r11,%r10
	blr
	.p2align 4,,15
.L7:
	andi. %r2,%r9,0x1
	bne %cr0,.L133
.L61:
	srdi %r10,%r9,1
	addi %r4,%r10,1
	mtctr %r4
	b .L10
	.p2align 4,,15
.L134:
	lbz %r7,-1(%r9)
	addi %r12,%r12,-2
	stb %r7,-1(%r2)
.L10:
	lbz %r8,-1(%r11)
	addi %r9,%r11,-1
	addi %r2,%r12,-1
	addi %r11,%r11,-2
	stb %r8,-1(%r12)
	bdnz .L134
.L6:
	blr
.L133:
	lbzu %r0,-1(%r11)
	stbu %r0,-1(%r12)
	b .L61
	.p2align 4,,15
.L12:
	andi. %r2,%r5,0x1
	addi %r9,%r3,-1
	addi %r2,%r4,-1
	addi %r12,%r5,-1
	beq %cr0,.L73
	cmpdi %cr7,%r12,0
	lbz %r0,0(%r4)
	mr %r2,%r4
	mr %r9,%r3
	stb %r0,0(%r3)
	beqlr %cr7
.L73:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L127
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,1(%r2)
	stb %r7,1(%r9)
	addi %r8,%r2,1
	lbz %r7,1(%r8)
	addi %r10,%r9,1
	stb %r7,1(%r10)
.L17:
	lbz %r7,2(%r8)
	stb %r7,2(%r10)
	addi %r8,%r8,2
	lbz %r7,1(%r8)
	addi %r10,%r10,2
	stb %r7,1(%r10)
	bdnz .L17
	blr
	.p2align 4,,15
.L127:
	lbz %r6,1(%r2)
	mr %r7,%r2
	mr %r5,%r9
	addi %r2,%r2,2
	addi %r9,%r9,2
	stb %r6,-1(%r9)
	lbz %r8,2(%r7)
	stb %r8,2(%r5)
	bdnz .L127
	blr
.L19:
	li %r7,0
	b .L13
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
	.localentry	memccpy,1
	cmpdi %cr0,%r6,0
	rlwinm %r5,%r5,0,0xff
	beq %cr0,.L136
	andi. %r2,%r6,0x1
	addi %r10,%r6,-1
	addi %r2,%r4,-1
	bne %cr0,.L157
.L146:
	srdi %r0,%r6,1
	mtctr %r0
	b .L137
	.p2align 4,,15
.L139:
	lbz %r11,1(%r6)
	rlwinm %r12,%r11,0,0xff
	stbu %r11,1(%r3)
	cmpw %cr7,%r12,%r5
	beq %cr7,.L154
	addi %r3,%r3,1
	bdz .L136
.L137:
	lbz %r4,1(%r2)
	addi %r6,%r2,1
	addi %r2,%r6,1
	rlwinm %r7,%r4,0,0xff
	stb %r4,0(%r3)
	cmpw %cr6,%r7,%r5
	bne %cr6,.L139
.L154:
	addi %r3,%r3,1
	blr
	.p2align 4,,15
.L157:
	lbz %r9,0(%r4)
	mr %r2,%r4
	rlwinm %r8,%r9,0,0xff
	stb %r9,0(%r3)
	cmpw %cr1,%r8,%r5
	beq %cr1,.L154
	cmpdi %cr5,%r10,0
	addi %r3,%r3,1
	bne %cr5,.L146
.L136:
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
	.localentry	memchr,1
	cmpdi %cr0,%r5,0
	rlwinm %r4,%r4,0,0xff
	beq %cr0,.L162
	andi. %r2,%r5,0x1
	addi %r2,%r5,-1
	bne %cr0,.L179
.L165:
	srdi %r0,%r5,1
	mtctr %r0
.L159:
	lbz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr %cr6
	lbzu %r6,1(%r3)
	cmpw %cr7,%r6,%r4
	beqlr %cr7
	addi %r3,%r3,1
	bdnz .L159
.L162:
	li %r3,0
	blr
	.p2align 4,,15
.L179:
	lbz %r9,0(%r3)
	cmpw %cr1,%r9,%r4
	beqlr %cr1
	cmpdi %cr5,%r2,0
	addi %r3,%r3,1
	bne %cr5,.L165
	b .L162
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
	.localentry	memcmp,1
	cmpdi %cr0,%r5,0
	beq %cr0,.L185
	andi. %r2,%r5,0x1
	addi %r10,%r5,-1
	bne %cr0,.L202
.L188:
	srdi %r0,%r5,1
	mtctr %r0
	b .L181
	.p2align 4,,15
.L183:
	lbz %r9,1(%r3)
	lbz %r2,1(%r4)
	addi %r3,%r8,1
	addi %r4,%r5,1
	cmpw %cr7,%r9,%r2
	bne %cr7,.L197
	bdz .L185
.L181:
	lbz %r9,0(%r3)
	lbz %r2,0(%r4)
	addi %r8,%r3,1
	addi %r5,%r4,1
	cmpw %cr6,%r9,%r2
	beq %cr6,.L183
.L197:
	subf %r3,%r2,%r9
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L202:
	lbz %r9,0(%r3)
	lbz %r2,0(%r4)
	cmpw %cr1,%r9,%r2
	bne %cr1,.L197
	cmpdi %cr5,%r10,0
	addi %r3,%r3,1
	addi %r4,%r4,1
	bne %cr5,.L188
.L185:
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
	.localentry	memcpy,1
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr %r31,%r3
	beq %cr0,.L204
	mflr %r0
	.cfi_register 65, 0
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memcpy@notoc
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L204:
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
	.localentry	memrchr,1
	mr %r9,%r5
	addi %r5,%r5,-1
	andi. %r10,%r9,0x1
	add %r8,%r3,%r5
	rlwinm %r4,%r4,0,0xff
	beq %cr0,.L214
	mr %r3,%r8
	addi %r8,%r8,-1
	lbz %r10,0(%r3)
	cmpw %cr1,%r10,%r4
	beqlr %cr1
.L214:
	srdi %r3,%r9,1
	addi %r0,%r3,1
	mtctr %r0
	bdz .L222
	.p2align 4,,15
.L212:
	lbz %r6,0(%r8)
	mr %r3,%r8
	addi %r2,%r8,-1
	cmpw %cr5,%r6,%r4
	beqlr %cr5
	lbz %r7,0(%r2)
	mr %r3,%r2
	addi %r8,%r2,-1
	cmpw %cr6,%r7,%r4
	beqlr %cr6
	bdnz .L212
.L222:
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
	.localentry	memset,1
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr %r31,%r3
	beq %cr0,.L226
	mflr %r0
	.cfi_register 65, 0
	rlwinm %r4,%r4,0,0xff
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memset@notoc
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L226:
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
	.localentry	stpcpy,1
	lbz %r2,0(%r4)
	rlwinm %r9,%r2,0,0xff
	stb %r2,0(%r3)
	cmpwi %cr0,%r9,0
	beqlr %cr0
	.p2align 4,,15
.L230:
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	beqlr %cr1
	lbzu %r0,1(%r4)
	rlwinm %r5,%r0,0,0xff
	stbu %r0,1(%r3)
	cmpwi %cr1,%r5,0
	bne %cr1,.L230
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
	.localentry	strchrnul,1
	lbz %r2,0(%r3)
	rlwinm %r4,%r4,0,0xff
	cmpwi %cr0,%r2,0
	beqlr %cr0
	cmpw %cr1,%r2,%r4
	beqlr %cr1
	.p2align 5
.L241:
	lbzu %r2,1(%r3)
	cmpwi %cr5,%r2,0
	beqlr %cr5
	cmpw %cr1,%r2,%r4
	bne %cr1,.L241
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
	.localentry	strchr,1
	.p2align 5
.L244:
	lbz %r2,0(%r3)
	cmpw %cr0,%r2,%r4
	cmpwi %cr7,%r2,0
	beqlr %cr0
	addi %r3,%r3,1
	bne %cr7,.L244
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
	.localentry	strcmp,1
	lbz %r2,0(%r3)
	lbz %r9,0(%r4)
	mr %r10,%r4
	cmpw %cr0,%r2,%r9
	beq %cr0,.L249
	b .L248
	.p2align 4,,15
.L250:
	lbzu %r2,1(%r3)
	lbzu %r9,1(%r10)
	cmpw %cr5,%r2,%r9
	bne %cr5,.L248
.L249:
	cmpwi %cr1,%r2,0
	bne %cr1,.L250
.L248:
	subf %r3,%r9,%r2
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
	.localentry	strlen,1
	lbz %r2,0(%r3)
	cmpwi %cr0,%r2,0
	beq %cr0,.L258
	mr %r4,%r3
	.p2align 4,,15
.L257:
	lbzu %r9,1(%r4)
	cmpwi %cr1,%r9,0
	bne %cr1,.L257
	subf %r3,%r3,%r4
	blr
	.p2align 4,,15
.L258:
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
	.localentry	strncmp,1
	cmpdi %cr0,%r5,0
	beq %cr0,.L268
	lbz %r9,0(%r3)
	addi %r5,%r5,-1
	add %r0,%r3,%r5
	subf %r2,%r3,%r0
	cmpwi %cr1,%r9,0
	addi %r6,%r2,1
	mtctr %r6
	bne %cr1,.L264
	b .L273
	.p2align 4,,15
.L275:
	bdz .L263
	bne %cr7,.L263
	lbzu %r9,1(%r3)
	cmpwi %cr6,%r9,0
	beq %cr6,.L274
	mr %r4,%r10
.L264:
	lbz %r7,0(%r4)
	addi %r10,%r4,1
	cmpwi %cr5,%r7,0
	cmpw %cr7,%r7,%r9
	bne %cr5,.L275
.L263:
	subf %r3,%r7,%r9
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L268:
	li %r3,0
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L274:
	lbz %r7,1(%r4)
	b .L263
.L273:
	lbz %r7,0(%r4)
	b .L263
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
	.localentry	swab,1
	mfvrsave %r11
	oris %r0,%r11,0xc004
	stw %r11,-4(%r1)
	mtvrsave %r0
	cmpdi %cr0,%r5,1
	ble %cr0,.L276
	addi %r2,%r5,-2
	srdi %r10,%r5,1
	cmpldi %cr1,%r2,13
	ble %cr1,.L281
	srdi %r6,%r5,4
	plxv %vs45,.LC0@pcrel
	li %r7,0
	andi. %r9,%r6,0x1
	addi %r9,%r6,-1
	bne %cr0,.L292
.L284:
	srdi %r8,%r6,1
	mtctr %r8
.L279:
	addi %r12,%r7,16
	lxvx %vs33,%r3,%r7
	lxvx %vs0,%r3,%r12
	xxperm %vs33,%vs33,%vs45
	stxvx %vs33,%r4,%r7
	xxperm %vs0,%vs0,%vs45
	addi %r7,%r7,32
	stxvx %vs0,%r4,%r12
	bdnz .L279
.L288:
	sldi %r5,%r6,3
	cmpld %cr6,%r5,%r10
	beq %cr6,.L276
.L278:
	subf %r11,%r5,%r10
	li %r2,16
	sldi %r0,%r11,1
	sldi %r10,%r5,1
	cmpldi %cr7,%r0,16
	add %r3,%r3,%r10
	add %r4,%r4,%r10
	isel %r5,%r2,%r0,29
	sldi %r6,%r5,56
	lxvl %vs1,%r3,%r6
	xxperm %vs1,%vs1,%vs45
	stxvl %vs1,%r4,%r6
.L276:
	lwz %r9,-4(%r1)
	mtvrsave %r9
	blr
	.p2align 4,,15
.L292:
	lxv %vs32,0(%r3)
	cmpdi %cr5,%r9,0
	li %r7,16
	xxperm %vs32,%vs32,%vs45
	stxv %vs32,0(%r4)
	bne %cr5,.L284
	b .L288
.L281:
	plxv %vs45,.LC0@pcrel
	li %r5,0
	b .L278
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
	.localentry	isalpha,1
	ori %r3,%r3,0x20
	addi %r0,%r3,-97
	cmplwi %cr0,%r0,25
	setbcr %r3,1
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
	.localentry	isascii,1
	cmplwi %cr0,%r3,127
	setbcr %r3,1
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
	.localentry	isblank,1
	cmpwi %cr0,%r3,32
	beq %cr0,.L297
	cmpwi %cr1,%r3,9
	setbc %r3,6
	rldicl %r3,%r3,0,63
	blr
	.p2align 4,,15
.L297:
	li %r3,1
	rldicl %r3,%r3,0,63
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
	.localentry	iscntrl,1
	cmplwi %cr0,%r3,31
	ble %cr0,.L300
	cmpwi %cr1,%r3,127
	setbc %r3,6
	rldicl %r3,%r3,0,63
	blr
	.p2align 4,,15
.L300:
	li %r3,1
	rldicl %r3,%r3,0,63
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
	.localentry	isdigit,1
	addi %r3,%r3,-48
	cmplwi %cr0,%r3,9
	setbcr %r3,1
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
	.localentry	isgraph,1
	addi %r3,%r3,-33
	cmplwi %cr0,%r3,93
	setbcr %r3,1
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
	.localentry	islower,1
	addi %r3,%r3,-97
	cmplwi %cr0,%r3,25
	setbcr %r3,1
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
	.localentry	isprint,1
	addi %r3,%r3,-32
	cmplwi %cr0,%r3,94
	setbcr %r3,1
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
	.localentry	isspace,1
	cmpwi %cr0,%r3,32
	beq %cr0,.L307
	addi %r3,%r3,-9
	cmplwi %cr1,%r3,4
	setbcr %r0,5
	rldicl %r3,%r0,0,63
	blr
	.p2align 4,,15
.L307:
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
	.localentry	isupper,1
	addi %r3,%r3,-65
	cmplwi %cr0,%r3,25
	setbcr %r3,1
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
	.localentry	iswcntrl,1
	cmplwi %cr0,%r3,31
	li %r2,1
	ble %cr0,.L310
	addi %r9,%r3,-127
	li %r2,1
	cmplwi %cr1,%r9,32
	bgt %cr1,.L314
.L310:
	rldicl %r3,%r2,0,63
	blr
	.p2align 4,,15
.L314:
	addi %r0,%r3,-8232
	cmplwi %cr5,%r0,1
	ble %cr5,.L310
	paddi %r3,%r3,-65529
	cmplwi %cr6,%r3,2
	setbcr %r2,25
	rldicl %r3,%r2,0,63
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
	.localentry	iswdigit,1
	addi %r3,%r3,-48
	cmplwi %cr0,%r3,9
	setbcr %r3,1
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
	.localentry	iswprint,1
	cmplwi %cr0,%r3,254
	ble %cr0,.L323
	cmplwi %cr1,%r3,8231
	li %r6,1
	ble %cr1,.L318
	addi %r9,%r3,-8234
	cmplwi %cr5,%r9,47061
	ble %cr5,.L318
	paddi %r0,%r3,-57344
	cmplwi %cr6,%r0,8184
	ble %cr6,.L318
	paddi %r4,%r3,-65532
	pli %r2,1048579
	cmplw %cr7,%r4,%r2
	li %r6,0
	bgt %cr7,.L318
	rlwinm %r3,%r3,0,16,30
	pli %r5,65534
	cmpw %cr0,%r3,%r5
	setbcr %r6,2
.L318:
	rldicl %r3,%r6,0,63
	blr
	.p2align 4,,15
.L323:
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
	.size	iswprint,.-iswprint
	.align 2
	.p2align 4,,15
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	.localentry	iswxdigit,1
	addi %r2,%r3,-48
	cmplwi %cr0,%r2,9
	ble %cr0,.L326
	ori %r3,%r3,0x20
	addi %r0,%r3,-97
	cmplwi %cr1,%r0,5
	setbcr %r4,5
	rldicl %r3,%r4,0,63
	blr
	.p2align 4,,15
.L326:
	li %r4,1
	rldicl %r3,%r4,0,63
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
	.localentry	toascii,1
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
	.localentry	fdim,1
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L332
	fcmpu %cr5,%f1,%f2
	bng %cr5,.L335
	fsub %f1,%f1,%f2
	blr
	.p2align 4,,15
.L335:
	xxlxor %vs1,%vs1,%vs1
	blr
	.p2align 4,,15
.L332:
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
	.localentry	fdimf,1
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L340
	fcmpu %cr5,%f1,%f2
	bng %cr5,.L343
	fsubs %f1,%f1,%f2
	blr
	.p2align 4,,15
.L343:
	xxlxor %vs1,%vs1,%vs1
	blr
	.p2align 4,,15
.L340:
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
	.localentry	fmax,1
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun %cr0,.L347
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L348
	mfvsrd %r2,%vs1
	mfvsrd %r9,%vs2
	srdi %r0,%r2,63
	srdi %r3,%r9,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L346
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr %cr6
.L348:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L346:
	xscmpgtdp %vs12,%vs2,%vs1
	xxsel %vs1,%vs1,%vs2,%vs12
	blr
	.p2align 4,,15
.L347:
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
	.localentry	fmaxf,1
	fcmpu %cr0,%f1,%f1
	fmr %f0,%f1
	bun %cr0,.L353
	fcmpu %cr1,%f2,%f2
	bun %cr1,.L354
	xscvdpspn %vs12,%vs1
	xscvdpspn %vs1,%vs2
	mfvsrwz %r2,%vs12
	mfvsrwz %r9,%vs1
	rlwinm %r0,%r2,0,0,0
	rlwinm %r3,%r9,0,0,0
	cmpw %cr5,%r0,%r3
	beq %cr5,.L352
	cmpwi %cr6,%r0,0
	fmr %f1,%f2
	bnelr %cr6
.L354:
	fmr %f1,%f0
	blr
	.p2align 4,,15
.L352:
	xscmpgtdp %vs3,%vs2,%vs0
	xxsel %vs1,%vs0,%vs2,%vs3
	blr
	.p2align 4,,15
.L353:
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
	.localentry	fmaxl,1
	fmr %f9,%f2
	fmr %f8,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fmr %f0,%f8
	fcmpu %cr0,%f0,%f0
	bun %cr0,.L363
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bun %cr1,.L362
	mfvsrd %r2,%vs0
	mfvsrd %r9,%vs12
	srdi %r0,%r2,63
	srdi %r3,%r9,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L358
	cmpwi %cr7,%r0,0
	bne %cr7,.L363
.L362:
	fmr %f1,%f8
	fmr %f2,%f9
	blr
	.p2align 4,,15
.L358:
	fcmpu %cr6,%f8,%f10
	bne %cr6,$+8
	fcmpu %cr6,%f9,%f11
	blt %cr6,.L363
	fmr %f11,%f2
	fmr %f10,%f1
.L363:
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
	.localentry	fmin,1
	fcmpu %cr0,%f1,%f1
	bun %cr0,.L367
	fcmpu %cr1,%f2,%f2
	bunlr %cr1
	mfvsrd %r2,%vs1
	mfvsrd %r9,%vs2
	srdi %r0,%r2,63
	srdi %r3,%r9,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L366
	cmpwi %cr6,%r0,0
	bnelr %cr6
.L367:
	fmr %f1,%f2
	blr
	.p2align 4,,15
.L366:
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
	.localentry	fminf,1
	fcmpu %cr0,%f1,%f1
	bun %cr0,.L373
	fcmpu %cr1,%f2,%f2
	bunlr %cr1
	xscvdpspn %vs0,%vs1
	xscvdpspn %vs3,%vs2
	mfvsrwz %r2,%vs0
	mfvsrwz %r9,%vs3
	rlwinm %r0,%r2,0,0,0
	rlwinm %r3,%r9,0,0,0
	cmpw %cr5,%r0,%r3
	beq %cr5,.L372
	cmpwi %cr6,%r0,0
	bnelr %cr6
.L373:
	fmr %f1,%f2
	blr
	.p2align 4,,15
.L372:
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
	.localentry	fminl,1
	fmr %f0,%f1
	fmr %f11,%f4
	fmr %f10,%f3
	fcmpu %cr0,%f0,%f0
	bun %cr0,.L381
	fmr %f12,%f10
	fcmpu %cr1,%f12,%f12
	bunlr %cr1
	mfvsrd %r2,%vs0
	mfvsrd %r9,%vs12
	srdi %r0,%r2,63
	srdi %r3,%r9,63
	cmpw %cr5,%r0,%r3
	beq %cr5,.L378
	cmpwi %cr7,%r0,0
	bnelr %cr7
.L381:
	fmr %f1,%f10
	fmr %f2,%f11
	blr
	.p2align 4,,15
.L378:
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
	.localentry	l64a,1
	cmpwi %cr0,%r3,0
	pla %r2,.LANCHOR0@pcrel
	beq %cr0,.L385
	pla %r10,.LANCHOR1@pcrel
	.p2align 5
.L386:
	rldicl %r9,%r3,0,58
	srwi %r3,%r3,6
	cmpwi %cr1,%r3,0
	addi %r2,%r2,1
	lbzx %r0,%r10,%r9
	stb %r0,-1(%r2)
	bne %cr1,.L386
.L385:
	li %r4,0
	pla %r3,.LANCHOR0@pcrel
	stb %r4,0(%r2)
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
	.localentry	srand,1
	addi %r3,%r3,-1
	rldicl %r0,%r3,0,32
	pstd %r0,.LANCHOR0+8@pcrel
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
	.localentry	rand,1
	pld %r2,.LANCHOR0+8@pcrel
	pli %r10,1481765933
	pli %r9,1284865837
	rldimi %r9,%r10,32,0
	mulld %r3,%r2,%r9
	addi %r0,%r3,1
	srdi %r3,%r0,33
	pstd %r0,.LANCHOR0+8@pcrel
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
	.localentry	insque,1
	cmpdi %cr0,%r4,0
	beq %cr0,.L397
	ld %r2,0(%r4)
	std %r4,8(%r3)
	std %r2,0(%r3)
	std %r3,0(%r4)
	ori %r2,%r2,0
	ld %r4,0(%r3)
	cmpdi %cr1,%r4,0
	beqlr %cr1
	std %r3,8(%r4)
	blr
	.p2align 4,,15
.L397:
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
	.localentry	remque,1
	ld %r2,0(%r3)
	cmpdi %cr0,%r2,0
	beq %cr0,.L399
	ld %r9,8(%r3)
	std %r9,8(%r2)
.L399:
	ld %r3,8(%r3)
	cmpdi %cr1,%r3,0
	beqlr %cr1
	std %r2,0(%r3)
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
	.localentry	lsearch,1
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
	cmpdi %cr0,%r26,0
	std %r25,-56(%r1)
	std %r0,16(%r1)
	stdu %r1,-112(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset 25, -56
	.cfi_offset 65, 16
	beq %cr0,.L408
	std %r29,88(%r1)
	.cfi_offset 29, -24
	std %r30,96(%r1)
	.cfi_offset 30, -16
	mr %r29,%r7
	li %r30,0
	std %r31,104(%r1)
	.cfi_offset 31, -8
	mr %r31,%r4
	b .L410
	.p2align 4,,15
.L422:
	beq %cr7,.L421
.L410:
	mtctr %r29
	mr %r4,%r31
	mr %r3,%r27
	mr %r12,%r29
	addi %r30,%r30,1
	mr %r25,%r31
	add %r31,%r31,%r28
	bctrl
	cmpld %cr7,%r26,%r30
	cmpwi %cr1,%r3,0
	bne %cr1,.L422
	ld %r29,88(%r1)
	.cfi_restore 29
	ld %r30,96(%r1)
	.cfi_restore 30
	ld %r31,104(%r1)
	.cfi_restore 31
.L407:
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
.L421:
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
.L408:
	cmpdi %cr5,%r28,0
	addi %r2,%r26,1
	maddld %r25,%r28,%r26,%r23
	std %r2,0(%r24)
	beq %cr5,.L407
	mr %r5,%r28
	mr %r4,%r27
	mr %r3,%r25
	bl memmove@notoc
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
	.localentry	lfind,1
	std %r26,-48(%r1)
	.cfi_offset 26, -48
	ld %r26,0(%r5)
	std %r25,-56(%r1)
	stdu %r1,-96(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	cmpdi %cr0,%r26,0
	beq %cr0,.L424
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
	li %r30,0
	mr %r31,%r4
	std %r0,112(%r1)
	.cfi_offset 65, 16
	b .L426
	.p2align 4,,15
.L434:
	beq %cr7,.L433
.L426:
	mtctr %r29
	mr %r4,%r31
	mr %r3,%r28
	mr %r12,%r29
	addi %r30,%r30,1
	mr %r25,%r31
	add %r31,%r31,%r27
	bctrl
	cmpld %cr7,%r26,%r30
	cmpwi %cr1,%r3,0
	bne %cr1,.L434
	ld %r2,112(%r1)
	ld %r27,56(%r1)
	.cfi_remember_state
	.cfi_restore 27
	ld %r28,64(%r1)
	.cfi_restore 28
	ld %r29,72(%r1)
	.cfi_restore 29
	mr %r3,%r25
	ld %r30,80(%r1)
	.cfi_restore 30
	ld %r31,88(%r1)
	.cfi_restore 31
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	mtlr %r2
	.cfi_restore 65
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	.cfi_restore 26
	.cfi_restore 25
	blr
	.p2align 4,,15
.L433:
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
.L424:
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
	.localentry	abs,1
	srawi %r2,%r3,31
	xor %r3,%r2,%r3
	subf %r0,%r2,%r3
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
	.localentry	atoi,1
.L443:
	lbz %r2,0(%r3)
	cmpwi %cr0,%r2,32
	addi %r9,%r2,-9
	cmplwi %cr7,%r9,4
	beq %cr0,.L437
	ble %cr7,.L437
	cmpwi %cr1,%r2,43
	beq %cr1,.L438
	cmpwi %cr6,%r2,45
	bne %cr6,.L458
	lbz %r2,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r2,-48
	cmplwi %cr0,%r4,9
	bgt %cr0,.L448
	li %r6,1
.L441:
	li %r10,0
	.p2align 5
.L445:
	addi %r8,%r2,-48
	mulli %r11,%r10,10
	lbzu %r2,1(%r3)
	addi %r7,%r2,-48
	subf %r10,%r8,%r11
	cmplwi %cr1,%r7,9
	ble %cr1,.L445
	cmpwi %cr5,%r6,0
	subf %r12,%r11,%r8
	isel %r3,%r12,%r10,22
.L444:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L437:
	addi %r3,%r3,1
	b .L443
	.p2align 4,,15
.L458:
	addi %r5,%r2,-48
	li %r6,0
	cmplwi %cr7,%r5,9
	ble %cr7,.L441
.L448:
	li %r3,0
	b .L444
	.p2align 4,,15
.L438:
	lbz %r2,1(%r3)
	li %r6,0
	addi %r3,%r3,1
	addi %r0,%r2,-48
	cmplwi %cr5,%r0,9
	ble %cr5,.L441
	li %r3,0
	b .L444
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
	.localentry	atol,1
.L466:
	lbz %r2,0(%r3)
	cmpwi %cr0,%r2,32
	addi %r9,%r2,-9
	cmplwi %cr7,%r9,4
	beq %cr0,.L460
	ble %cr7,.L460
	cmpwi %cr1,%r2,43
	beq %cr1,.L461
	cmpwi %cr6,%r2,45
	bne %cr6,.L481
	lbz %r2,1(%r3)
	addi %r3,%r3,1
	addi %r4,%r2,-48
	cmplwi %cr0,%r4,9
	bgt %cr0,.L471
	li %r10,1
.L464:
	li %r7,0
	.p2align 5
.L468:
	addi %r6,%r2,-48
	mulli %r8,%r7,10
	lbzu %r2,1(%r3)
	extsw %r11,%r6
	addi %r12,%r2,-48
	subf %r7,%r11,%r8
	cmplwi %cr1,%r12,9
	ble %cr1,.L468
	cmpwi %cr5,%r10,0
	subf %r3,%r8,%r11
	isel %r3,%r3,%r7,22
	blr
	.p2align 4,,15
.L460:
	addi %r3,%r3,1
	b .L466
	.p2align 4,,15
.L481:
	addi %r5,%r2,-48
	li %r10,0
	cmplwi %cr7,%r5,9
	ble %cr7,.L464
.L471:
	li %r3,0
	blr
	.p2align 4,,15
.L461:
	lbz %r2,1(%r3)
	li %r10,0
	addi %r3,%r3,1
	addi %r0,%r2,-48
	cmplwi %cr5,%r0,9
	ble %cr5,.L464
	b .L471
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
	.localentry	atoll,1
.L487:
	lbz %r2,0(%r3)
	cmpwi %cr0,%r2,32
	addi %r9,%r2,-9
	cmplwi %cr7,%r9,4
	beq %cr0,.L483
	ble %cr7,.L483
	cmpwi %cr1,%r2,43
	beq %cr1,.L484
	cmpwi %cr6,%r2,45
	beq %cr6,.L485
	addi %r5,%r2,-48
	li %r10,0
	cmplwi %cr7,%r5,9
	bgt %cr7,.L494
.L488:
	li %r7,0
	.p2align 5
.L491:
	addi %r6,%r2,-48
	mulli %r8,%r7,10
	lbzu %r2,1(%r3)
	extsw %r11,%r6
	addi %r12,%r2,-48
	subf %r7,%r11,%r8
	cmplwi %cr1,%r12,9
	ble %cr1,.L491
	cmpwi %cr5,%r10,0
	subf %r3,%r8,%r11
	isel %r3,%r3,%r7,22
	blr
	.p2align 4,,15
.L483:
	addi %r3,%r3,1
	b .L487
	.p2align 4,,15
.L485:
	lbz %r2,1(%r3)
	li %r10,1
	addi %r3,%r3,1
	addi %r4,%r2,-48
	cmplwi %cr0,%r4,9
	ble %cr0,.L488
.L494:
	li %r3,0
	blr
	.p2align 4,,15
.L484:
	lbz %r2,1(%r3)
	addi %r3,%r3,1
	addi %r0,%r2,-48
	cmplwi %cr5,%r0,9
	bgt %cr5,.L494
	li %r10,0
	b .L488
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
	.localentry	bsearch,1
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	mr. %r31,%r5
	std %r29,-24(%r1)
	stdu %r1,-96(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -24
	beq %cr0,.L505
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
	std %r30,80(%r1)
	.cfi_offset 30, -16
	mr %r28,%r7
	std %r0,112(%r1)
	.cfi_offset 65, 16
	b .L508
	.p2align 4,,15
.L517:
	beq %cr1,.L515
	cmpdi %cr5,%r31,0
	add %r27,%r29,%r26
	beq %cr5,.L516
.L508:
	mtctr %r28
	srdi %r30,%r31,1
	maddld %r29,%r30,%r26,%r27
	mr %r3,%r25
	mr %r12,%r28
	addi %r31,%r31,-1
	subf %r31,%r30,%r31
	mr %r4,%r29
	bctrl
	cmpwi %cr1,%r3,0
	bge %cr1,.L517
	mr %r31,%r30
	cmpdi %cr5,%r31,0
	bne %cr5,.L508
.L516:
	ld %r2,112(%r1)
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
	mtlr %r2
	.cfi_restore 65
.L505:
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
.L515:
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
	.localentry	bsearch_r,1
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
	beq %cr0,.L523
	mflr %r0
	.cfi_register 65, 0
	std %r28,64(%r1)
	.cfi_offset 28, -32
	std %r0,112(%r1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L528:
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
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	beq %cr1,.L532
.L534:
	cmpwi %cr5,%r28,0
	ble %cr1,.L521
	add %r27,%r30,%r26
	bne %cr7,.L528
.L533:
	ld %r0,112(%r1)
	ld %r28,64(%r1)
	.cfi_restore 28
	mtlr %r0
	.cfi_restore 65
.L523:
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
.L521:
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
	beq %cr5,.L533
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
	cmpwi %cr7,%r31,0
	cmpwi %cr1,%r3,0
	bne %cr1,.L534
.L532:
	ld %r2,112(%r1)
	ld %r28,64(%r1)
	.cfi_restore 28
	addi %r1,%r1,96
	.cfi_def_cfa_offset 0
	mr %r3,%r30
	ld %r24,-64(%r1)
	ld %r25,-56(%r1)
	ld %r26,-48(%r1)
	ld %r27,-40(%r1)
	mtlr %r2
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
	.localentry	div,1
	divw %r2,%r3,%r4
	mullw %r4,%r2,%r4
	rldicl %r0,%r2,0,32
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
	.localentry	imaxabs,1
	sradi %r2,%r3,63
	xor %r3,%r2,%r3
	subf %r3,%r2,%r3
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
	.localentry	imaxdiv,1
	mr %r2,%r3
	divd %r3,%r3,%r4
	mulld %r4,%r3,%r4
	subf %r4,%r4,%r2
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
	.localentry	labs,1
	sradi %r2,%r3,63
	xor %r3,%r2,%r3
	subf %r3,%r2,%r3
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
	.localentry	ldiv,1
	mr %r2,%r3
	divd %r3,%r3,%r4
	mulld %r4,%r3,%r4
	subf %r4,%r4,%r2
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
	.localentry	llabs,1
	sradi %r2,%r3,63
	xor %r3,%r2,%r3
	subf %r3,%r2,%r3
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
	.localentry	lldiv,1
	mr %r2,%r3
	divd %r3,%r3,%r4
	mulld %r4,%r3,%r4
	subf %r4,%r4,%r2
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
	.localentry	wcschr,1
	lwz %r2,0(%r3)
	cmpwi %cr0,%r2,0
	beq %cr0,.L546
	.p2align 5
.L543:
	cmpw %cr1,%r2,%r4
	beqlr %cr1
	lwzu %r2,4(%r3)
	cmpwi %cr5,%r2,0
	bne %cr5,.L543
.L546:
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
	.localentry	wcscmp,1
	lwz %r2,0(%r3)
	lwz %r9,0(%r4)
	cmpw %cr0,%r2,%r9
	beq %cr0,.L553
	b .L552
	.p2align 4,,15
.L554:
	lwzu %r2,4(%r3)
	lwzu %r0,4(%r4)
	cmpw %cr0,%r2,%r0
	bne %cr0,.L552
.L553:
	cmpwi %cr7,%r2,0
	bne %cr7,.L554
.L552:
	setbc %r3,1
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
	.localentry	wcscpy,1
	addi %r4,%r4,-4
	addi %r9,%r3,-4
	.p2align 4,,15
.L558:
	lwzu %r2,4(%r4)
	cmpwi %cr0,%r2,0
	stwu %r2,4(%r9)
	beqlr %cr0
	lwzu %r2,4(%r4)
	cmpwi %cr0,%r2,0
	stwu %r2,4(%r9)
	bne %cr0,.L558
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
	.localentry	wcslen,1
	lwz %r2,0(%r3)
	cmpwi %cr0,%r2,0
	beq %cr0,.L564
	mr %r4,%r3
	.p2align 4,,15
.L563:
	lwzu %r9,4(%r4)
	cmpwi %cr1,%r9,0
	bne %cr1,.L563
	subf %r3,%r3,%r4
	sradi %r3,%r3,2
	blr
	.p2align 4,,15
.L564:
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
	.localentry	wcsncmp,1
	cmpdi %cr0,%r5,0
	beq %cr0,.L576
	mtctr %r5
	b .L567
	.p2align 4,,15
.L579:
	beq %cr7,.L569
	addi %r3,%r3,4
	addi %r4,%r4,4
	bdz .L576
.L567:
	lwz %r2,0(%r3)
	lwz %r9,0(%r4)
	cmpw %cr1,%r2,%r9
	cmpwi %cr7,%r2,0
	beq %cr1,.L579
.L569:
	lwz %r0,0(%r3)
	lwz %r3,0(%r4)
	cmpw %cr5,%r0,%r3
	bge %cr5,.L571
	li %r4,-1
	extsw %r3,%r4
	blr
	.p2align 4,,15
.L571:
	setbc %r4,21
	extsw %r3,%r4
	blr
	.p2align 4,,15
.L576:
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
	.localentry	wmemchr,1
	cmpdi %cr0,%r5,0
	beq %cr0,.L584
	andi. %r2,%r5,0x1
	addi %r2,%r5,-1
	bne %cr0,.L601
.L587:
	srdi %r0,%r5,1
	mtctr %r0
.L581:
	lwz %r5,0(%r3)
	cmpw %cr6,%r5,%r4
	beqlr %cr6
	lwzu %r6,4(%r3)
	cmpw %cr7,%r6,%r4
	beqlr %cr7
	addi %r3,%r3,4
	bdnz .L581
.L584:
	li %r3,0
	blr
	.p2align 4,,15
.L601:
	lwz %r9,0(%r3)
	cmpw %cr1,%r9,%r4
	beqlr %cr1
	cmpdi %cr5,%r2,0
	addi %r3,%r3,4
	bne %cr5,.L587
	b .L584
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
	.localentry	wmemcmp,1
	cmpdi %cr0,%r5,0
	beq %cr0,.L608
	andi. %r2,%r5,0x1
	addi %r2,%r5,-1
	bne %cr0,.L625
.L611:
	srdi %r0,%r5,1
	mtctr %r0
	b .L603
	.p2align 4,,15
.L605:
	lwz %r11,4(%r3)
	lwz %r12,4(%r4)
	addi %r3,%r8,4
	addi %r4,%r7,4
	cmpw %cr1,%r11,%r12
	bne %cr1,.L620
	bdz .L608
.L603:
	lwz %r5,0(%r3)
	lwz %r6,0(%r4)
	addi %r8,%r3,4
	addi %r7,%r4,4
	cmpw %cr1,%r5,%r6
	beq %cr1,.L605
.L620:
	setbc %r3,5
	li %r4,-1
	isel %r2,%r4,%r3,4
	extsw %r3,%r2
	blr
	.p2align 4,,15
.L625:
	lwz %r10,0(%r3)
	lwz %r9,0(%r4)
	cmpw %cr1,%r10,%r9
	bne %cr1,.L620
	cmpdi %cr5,%r2,0
	addi %r3,%r3,4
	addi %r4,%r4,4
	bne %cr5,.L611
.L608:
	li %r2,0
	extsw %r3,%r2
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
	.localentry	wmemcpy,1
	cmpdi %cr0,%r5,0
	std %r31,-8(%r1)
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr %r31,%r3
	beq %cr0,.L627
	mflr %r0
	.cfi_register 65, 0
	sldi %r5,%r5,2
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memcpy@notoc
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L627:
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
	.localentry	wmemmove,1
	cmpld %cr0,%r3,%r4
	beqlr %cr0
	sldi %r2,%r5,2
	subf %r9,%r4,%r3
	cmpld %cr1,%r9,%r2
	addi %r6,%r5,-1
	bge %cr1,.L727
	cmpdi %cr5,%r5,0
	beqlr %cr5
	cmpldi %cr6,%r6,4
	ble %cr6,.L637
	addi %r11,%r2,-4
	addi %r9,%r2,-8
	add %r0,%r3,%r11
	add %r7,%r4,%r9
	subf %r8,%r7,%r0
	addi %r12,%r8,8
	cmpldi %cr7,%r12,8
	ble %cr7,.L637
	srdi %r7,%r5,2
	addi %r2,%r2,-16
	andi. %r11,%r7,0x3
	add %r10,%r4,%r2
	add %r12,%r3,%r2
	addi %r0,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq %cr0,.L676
	cmpdi %cr1,%r11,1
	beq %cr1,.L692
	cmpdi %cr5,%r11,2
	beq %cr5,.L693
	lxv %vs7,0(%r10)
	mr %r7,%r0
	li %r9,-16
	stxv %vs7,0(%r12)
.L693:
	lxvx %vs8,%r10,%r9
	addi %r7,%r7,-1
	stxvx %vs8,%r12,%r9
	addi %r9,%r9,-16
.L692:
	lxvx %vs9,%r10,%r9
	cmpdi %cr6,%r7,1
	stxvx %vs9,%r12,%r9
	addi %r9,%r9,-16
	beq %cr6,.L715
.L676:
	srdi %r2,%r8,2
	mtctr %r2
.L638:
	lxvx %vs10,%r10,%r9
	addi %r0,%r9,-16
	addi %r11,%r9,-32
	addi %r8,%r9,-48
	stxvx %vs10,%r12,%r9
	addi %r9,%r9,-64
	lxvx %vs11,%r10,%r0
	stxvx %vs11,%r12,%r0
	lxvx %vs12,%r10,%r11
	stxvx %vs12,%r12,%r11
	lxvx %vs13,%r10,%r8
	stxvx %vs13,%r12,%r8
	bdnz .L638
.L715:
	andi. %r2,%r5,0x3
	rldicr %r5,%r5,0,61
	subf %r6,%r5,%r6
	beqlr %cr0
	sldi %r10,%r6,2
	cmpdi %cr7,%r6,0
	lwzx %r12,%r4,%r10
	stwx %r12,%r3,%r10
	beqlr %cr7
	addi %r7,%r6,-1
	sldi %r2,%r7,2
	cmpdi %cr1,%r7,0
	lwzx %r9,%r4,%r2
	stwx %r9,%r3,%r2
	beqlr %cr1
	addi %r0,%r2,-4
	lwzx %r4,%r4,%r0
	stwx %r4,%r3,%r0
	blr
	.p2align 4,,15
.L727:
	cmpdi %cr5,%r5,0
	beqlr %cr5
	cmpldi %cr6,%r6,3
	ble %cr6,.L643
	addi %r0,%r4,4
	subf %r7,%r0,%r3
	cmpldi %cr7,%r7,8
	ble %cr7,.L643
	srdi %r10,%r5,2
	li %r2,0
	andi. %r8,%r10,0x3
	addi %r11,%r10,-1
	mr %r12,%r10
	beq %cr0,.L688
	cmpdi %cr1,%r8,1
	beq %cr1,.L694
	cmpdi %cr5,%r8,2
	beq %cr5,.L695
	lxv %vs0,0(%r4)
	mr %r10,%r11
	li %r2,16
	stxv %vs0,0(%r3)
.L695:
	lxvx %vs1,%r4,%r2
	addi %r10,%r10,-1
	stxvx %vs1,%r3,%r2
	addi %r2,%r2,16
.L694:
	lxvx %vs2,%r4,%r2
	cmpdi %cr6,%r10,1
	stxvx %vs2,%r3,%r2
	addi %r2,%r2,16
	beq %cr6,.L716
.L688:
	srdi %r9,%r12,2
	mtctr %r9
.L644:
	lxvx %vs3,%r4,%r2
	addi %r0,%r2,16
	addi %r8,%r2,32
	addi %r7,%r2,48
	stxvx %vs3,%r3,%r2
	addi %r2,%r2,64
	lxvx %vs4,%r4,%r0
	stxvx %vs4,%r3,%r0
	lxvx %vs5,%r4,%r8
	stxvx %vs5,%r3,%r8
	lxvx %vs6,%r4,%r7
	stxvx %vs6,%r3,%r7
	bdnz .L644
.L716:
	andi. %r2,%r5,0x3
	rldicr %r5,%r5,0,61
	sldi %r11,%r5,2
	subf %r6,%r5,%r6
	add %r12,%r4,%r11
	add %r10,%r3,%r11
	beqlr %cr0
	cmpdi %cr7,%r6,0
	lwzx %r4,%r4,%r11
	stwx %r4,%r3,%r11
	beqlr %cr7
	cmpldi %cr1,%r6,1
	lwz %r2,4(%r12)
	stw %r2,4(%r10)
	beqlr %cr1
	lwz %r9,8(%r12)
	stw %r9,8(%r10)
	blr
	.p2align 4,,15
.L637:
	andi. %r9,%r6,0x1
	add %r11,%r4,%r2
	add %r5,%r3,%r2
	bne %cr0,.L728
.L669:
	srdi %r6,%r6,1
	addi %r10,%r6,1
	mtctr %r10
	b .L641
	.p2align 4,,15
.L729:
	lwz %r9,-4(%r7)
	addi %r5,%r5,-8
	stw %r9,-4(%r2)
.L641:
	lwz %r12,-4(%r11)
	addi %r7,%r11,-4
	addi %r2,%r5,-4
	addi %r11,%r11,-8
	stw %r12,-4(%r5)
	bdnz .L729
	blr
.L728:
	lwzu %r8,-4(%r11)
	stwu %r8,-4(%r5)
	b .L669
	.p2align 4,,15
.L643:
	andi. %r2,%r6,0x1
	addi %r5,%r4,-4
	addi %r11,%r3,-4
	bne %cr0,.L730
.L681:
	srdi %r7,%r6,1
	addi %r8,%r7,1
	mtctr %r8
	b .L647
	.p2align 4,,15
.L731:
	lwz %r10,4(%r12)
	addi %r11,%r11,8
	stw %r10,4(%r4)
.L647:
	lwz %r6,4(%r5)
	addi %r12,%r5,4
	addi %r4,%r11,4
	addi %r5,%r5,8
	stw %r6,4(%r11)
	bdnz .L731
	blr
.L730:
	lwz %r0,0(%r4)
	mr %r5,%r4
	mr %r11,%r3
	stw %r0,0(%r3)
	b .L681
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
	.localentry	wmemset,1
	cmpdi %cr0,%r5,0
	addi %r8,%r5,-1
	beqlr %cr0
	cmpldi %cr1,%r8,2
	ble %cr1,.L737
	srdi %r10,%r5,2
	mtvsrws %vs0,%r4
	mr %r11,%r3
	andi. %r7,%r10,0x3
	addi %r6,%r10,-1
	mr %r9,%r10
	beq %cr0,.L752
	cmpdi %cr5,%r7,1
	beq %cr5,.L756
	cmpdi %cr6,%r7,2
	beq %cr6,.L757
	stxv %vs0,0(%r3)
	mr %r10,%r6
	addi %r11,%r3,16
.L757:
	stxv %vs0,0(%r11)
	addi %r10,%r10,-1
	addi %r11,%r11,16
.L756:
	stxv %vs0,0(%r11)
	cmpdi %cr7,%r10,1
	addi %r11,%r11,16
	beq %cr7,.L766
.L752:
	srdi %r0,%r9,2
	mtctr %r0
.L735:
	stxv %vs0,0(%r11)
	addi %r11,%r11,64
	stxv %vs0,-48(%r11)
	stxv %vs0,-32(%r11)
	stxv %vs0,-16(%r11)
	bdnz .L735
.L766:
	andi. %r2,%r5,0x3
	beqlr %cr0
	rldicr %r5,%r5,0,61
	sldi %r12,%r5,2
	subf %r8,%r5,%r8
	add %r2,%r3,%r12
.L734:
	cmpdi %cr1,%r8,0
	stw %r4,0(%r2)
	beqlr %cr1
	cmpldi %cr5,%r8,1
	stw %r4,4(%r2)
	beqlr %cr5
	stw %r4,8(%r2)
	blr
.L737:
	mr %r2,%r3
	b .L734
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
	.localentry	bcopy,1
	cmpld %cr0,%r3,%r4
	bge %cr0,.L770
	cmpdi %cr5,%r5,0
	add %r10,%r3,%r5
	add %r12,%r4,%r5
	beqlr %cr5
	addi %r11,%r5,-1
	cmpldi %cr6,%r11,14
	ble %cr6,.L772
	addi %r2,%r5,-2
	add %r8,%r4,%r11
	add %r9,%r3,%r2
	subf %r6,%r9,%r8
	addi %r0,%r6,14
	cmpldi %cr0,%r0,14
	ble %cr0,.L772
	srdi %r8,%r5,4
	addi %r2,%r5,-16
	andi. %r7,%r8,0x3
	addi %r11,%r8,-1
	mr %r9,%r8
	add %r3,%r3,%r2
	add %r4,%r4,%r2
	li %r6,0
	beq %cr0,.L833
	cmpdi %cr7,%r7,1
	beq %cr7,.L849
	cmpdi %cr1,%r7,2
	beq %cr1,.L850
	lxv %vs8,0(%r3)
	mr %r8,%r11
	li %r6,-16
	stxv %vs8,0(%r4)
.L850:
	lxvx %vs9,%r3,%r6
	addi %r8,%r8,-1
	stxvx %vs9,%r4,%r6
	addi %r6,%r6,-16
.L849:
	lxvx %vs10,%r3,%r6
	cmpdi %cr5,%r8,1
	stxvx %vs10,%r4,%r6
	addi %r6,%r6,-16
	beq %cr5,.L883
.L833:
	srdi %r0,%r9,2
	mtctr %r0
.L773:
	lxvx %vs11,%r3,%r6
	addi %r2,%r6,-16
	addi %r7,%r6,-32
	addi %r11,%r6,-48
	stxvx %vs11,%r4,%r6
	addi %r6,%r6,-64
	lxvx %vs12,%r3,%r2
	stxvx %vs12,%r4,%r2
	lxvx %vs13,%r3,%r7
	stxvx %vs13,%r4,%r7
	lxvx %vs0,%r3,%r11
	stxvx %vs0,%r4,%r11
	bdnz .L773
.L883:
	andi. %r2,%r5,0xf
	rldicr %r9,%r5,0,59
	subf %r12,%r9,%r12
	subf %r10,%r9,%r10
	subf %r5,%r9,%r5
	beqlr %cr0
	cmpldi %cr6,%r5,1
	lbz %r3,-1(%r10)
	stb %r3,-1(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,2
	lbz %r4,-2(%r10)
	stb %r4,-2(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,3
	lbz %r8,-3(%r10)
	stb %r8,-3(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,4
	lbz %r6,-4(%r10)
	stb %r6,-4(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,5
	lbz %r0,-5(%r10)
	stb %r0,-5(%r12)
	beqlr %cr0
	cmpldi %cr6,%r5,6
	lbz %r2,-6(%r10)
	stb %r2,-6(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,7
	lbz %r11,-7(%r10)
	stb %r11,-7(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,8
	lbz %r7,-8(%r10)
	stb %r7,-8(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,9
	lbz %r9,-9(%r10)
	stb %r9,-9(%r12)
	beqlr %cr5
	cmpldi %cr0,%r5,10
	lbz %r3,-10(%r10)
	stb %r3,-10(%r12)
	beqlr %cr0
	cmpldi %cr6,%r5,11
	lbz %r4,-11(%r10)
	stb %r4,-11(%r12)
	beqlr %cr6
	cmpldi %cr7,%r5,12
	lbz %r8,-12(%r10)
	stb %r8,-12(%r12)
	beqlr %cr7
	cmpldi %cr1,%r5,13
	lbz %r6,-13(%r10)
	stb %r6,-13(%r12)
	beqlr %cr1
	cmpldi %cr5,%r5,14
	lbz %r5,-14(%r10)
	stb %r5,-14(%r12)
	beqlr %cr5
	lbz %r10,-15(%r10)
	stb %r10,-15(%r12)
	blr
	.p2align 4,,15
.L770:
	beqlr %cr0
	cmpdi %cr1,%r5,0
	beqlr %cr1
	addi %r2,%r3,1
	subf %r0,%r2,%r4
	cmpldi %cr5,%r0,14
	ble %cr5,.L777
	addi %r6,%r5,-1
	cmpldi %cr6,%r6,14
	ble %cr6,.L784
	srdi %r10,%r5,4
	li %r12,0
	andi. %r8,%r10,0x3
	addi %r11,%r10,-1
	mr %r9,%r10
	beq %cr0,.L845
	cmpdi %cr7,%r8,1
	beq %cr7,.L851
	cmpdi %cr1,%r8,2
	beq %cr1,.L852
	lxv %vs0,0(%r3)
	mr %r10,%r11
	li %r12,16
	stxv %vs0,0(%r4)
.L852:
	lxvx %vs1,%r3,%r12
	addi %r10,%r10,-1
	stxvx %vs1,%r4,%r12
	addi %r12,%r12,16
.L851:
	lxvx %vs2,%r3,%r12
	cmpdi %cr5,%r10,1
	stxvx %vs2,%r4,%r12
	addi %r12,%r12,16
	beq %cr5,.L884
.L845:
	srdi %r2,%r9,2
	mtctr %r2
.L779:
	lxvx %vs3,%r3,%r12
	addi %r0,%r12,16
	addi %r7,%r12,32
	addi %r6,%r12,48
	stxvx %vs3,%r4,%r12
	addi %r12,%r12,64
	lxvx %vs4,%r3,%r0
	stxvx %vs4,%r4,%r0
	lxvx %vs5,%r3,%r7
	stxvx %vs5,%r4,%r7
	lxvx %vs6,%r3,%r6
	stxvx %vs6,%r4,%r6
	bdnz .L779
.L884:
	andi. %r2,%r5,0xf
	rldicr %r7,%r5,0,59
	beqlr %cr0
.L778:
	subf %r5,%r7,%r5
	li %r8,16
	cmpldi %cr6,%r5,16
	add %r3,%r3,%r7
	add %r4,%r4,%r7
	isel %r11,%r8,%r5,25
	sldi %r9,%r11,56
	lxvl %vs7,%r3,%r9
	stxvl %vs7,%r4,%r9
	blr
	.p2align 4,,15
.L772:
	andi. %r2,%r11,0x1
	bne %cr0,.L898
.L826:
	srdi %r2,%r11,1
	addi %r11,%r2,1
	mtctr %r11
	b .L775
	.p2align 4,,15
.L899:
	lbz %r4,-1(%r9)
	addi %r12,%r12,-2
	stb %r4,-1(%r3)
.L775:
	lbz %r7,-1(%r10)
	addi %r9,%r10,-1
	addi %r3,%r12,-1
	addi %r10,%r10,-2
	stb %r7,-1(%r12)
	bdnz .L899
.L769:
	blr
.L898:
	lbzu %r0,-1(%r10)
	stbu %r0,-1(%r12)
	b .L826
	.p2align 4,,15
.L777:
	andi. %r2,%r5,0x1
	addi %r9,%r3,-1
	addi %r2,%r4,-1
	addi %r10,%r5,-1
	beq %cr0,.L838
	cmpdi %cr7,%r10,0
	lbz %r12,0(%r3)
	mr %r9,%r3
	mr %r2,%r4
	stb %r12,0(%r4)
	beqlr %cr7
.L838:
	srdi %r10,%r5,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L892
	addi %r10,%r10,-1
	mtctr %r10
	lbz %r7,1(%r9)
	stb %r7,1(%r2)
	addi %r8,%r9,1
	lbz %r7,1(%r8)
	addi %r10,%r2,1
	stb %r7,1(%r10)
.L782:
	lbz %r7,2(%r8)
	stb %r7,2(%r10)
	addi %r8,%r8,2
	lbz %r7,1(%r8)
	addi %r10,%r10,2
	stb %r7,1(%r10)
	bdnz .L782
	blr
	.p2align 4,,15
.L892:
	lbz %r0,1(%r9)
	mr %r6,%r9
	mr %r5,%r2
	addi %r9,%r9,2
	addi %r2,%r2,2
	stb %r0,-1(%r2)
	lbz %r7,2(%r6)
	stb %r7,2(%r5)
	bdnz .L892
	blr
.L784:
	li %r7,0
	b .L778
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
	.localentry	rotl64,1
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
	.localentry	rotr64,1
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
	.localentry	rotl32,1
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
	.localentry	rotr32,1
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
	.localentry	rotl_sz,1
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
	.localentry	rotr_sz,1
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
	.localentry	rotl16,1
	rlwinm %r4,%r4,0,28,31
	neg %r2,%r4
	slw %r0,%r3,%r4
	rlwinm %r5,%r2,0,28,31
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
	.localentry	rotr16,1
	rlwinm %r4,%r4,0,28,31
	neg %r2,%r4
	srw %r0,%r3,%r4
	rlwinm %r5,%r2,0,28,31
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
	.localentry	rotl8,1
	rlwinm %r4,%r4,0,29,31
	neg %r2,%r4
	slw %r0,%r3,%r4
	rlwinm %r5,%r2,0,29,31
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
	.localentry	rotr8,1
	rlwinm %r4,%r4,0,29,31
	neg %r2,%r4
	srw %r0,%r3,%r4
	rlwinm %r5,%r2,0,29,31
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
	.localentry	bswap_16,1
	brh %r3,%r3
	rlwinm %r3,%r3,0,0xffff
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
	.localentry	bswap_32,1
	brw %r2,%r3
	rldicl %r3,%r2,0,32
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
	.localentry	bswap_64,1
	brd %r3,%r3
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
	.localentry	ffs,1
	li %r9,16
	li %r2,0
	mtctr %r9
	b .L916
	.p2align 4,,15
.L925:
	addi %r2,%r2,1
	bne %cr0,.L915
	bdz .L924
.L916:
	srw %r10,%r3,%r2
	addi %r2,%r2,1
	rldicl %r4,%r10,0,63
	srw %r0,%r3,%r2
	cmpdi %cr7,%r4,0
	andi. %r9,%r0,0x1
	beq %cr7,.L925
.L915:
	extsw %r3,%r2
	blr
	.p2align 4,,15
.L924:
	li %r2,0
	extsw %r3,%r2
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
	.localentry	libiberty_ffs,1
	mr. %r2,%r3
	beq %cr0,.L929
	andi. %r3,%r2,0x1
	bne %cr0,.L927
	li %r3,1
	.p2align 4,,15
.L928:
	srawi %r2,%r2,1
	addi %r3,%r3,1
	andi. %r9,%r2,0x1
	beq %cr0,.L928
.L927:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L929:
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
	.localentry	gl_isinff,1
	xxspltidp %vs0,4286578687
	li %r3,1
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L933
	xxspltidp %vs2,2139095039
	fcmpu %cr1,%f1,%f2
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
.L933:
	rldicl %r3,%r3,0,63
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
	.localentry	gl_isinfd,1
	plfd %f0,.LC1@pcrel
	li %r3,1
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L936
	plfd %f2,.LC2@pcrel
	fcmpu %cr1,%f1,%f2
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
.L936:
	rldicl %r3,%r3,0,63
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
	.localentry	gl_isinfl,1
	fmr %f0,%f1
	fmr %f1,%f2
	plfd %f12,.LC3@pcrel
	plfd %f13,.LC3+8@pcrel
	li %r3,1
	fcmpu %cr0,%f0,%f12
	bne %cr0,$+8
	fcmpu %cr0,%f1,%f13
	blt %cr0,.L939
	plfd %f12,.LC4@pcrel
	plfd %f13,.LC4+8@pcrel
	fcmpu %cr1,%f0,%f12
	bne %cr1,$+8
	fcmpu %cr1,%f1,%f13
	mfcr %r3,64
	rlwinm %r3,%r3,6,1
.L939:
	rldicl %r3,%r3,0,63
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
	.localentry	_Qp_itoq,1
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
	.localentry	ldexpf,1
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fadds %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr %cr1
	cmpwi %cr5,%r4,0
	xxspltidp %vs2,1073741824
	bge %cr5,.L944
	xxspltidp %vs2,1056964608
.L944:
	andi. %r2,%r4,0x1
	beq %cr0,.L945
	.p2align 4,,15
.L946:
	fmuls %f1,%f1,%f2
.L945:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr %cr0
	andi. %r2,%r4,0x1
	fmuls %f2,%f2,%f2
	srawi %r2,%r4,1
	addze %r2,%r2
	bne %cr0,.L946
.L955:
	extsw %r4,%r2
	fmuls %f2,%f2,%f2
	andi. %r2,%r4,0x1
	srawi %r2,%r4,1
	addze %r2,%r2
	bne %cr0,.L946
	b .L955
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
	.localentry	ldexp,1
	fcmpu %cr0,%f1,%f1
	bunlr %cr0
	fadd %f0,%f1,%f1
	fcmpu %cr1,%f0,%f1
	beqlr %cr1
	cmpwi %cr5,%r4,0
	xxspltidp %vs2,1073741824
	bge %cr5,.L958
	xxspltidp %vs2,1056964608
.L958:
	andi. %r2,%r4,0x1
	beq %cr0,.L959
	.p2align 4,,15
.L960:
	fmul %f1,%f1,%f2
.L959:
	srawi %r4,%r4,1
	addze %r4,%r4
	extsw. %r4,%r4
	beqlr %cr0
	andi. %r2,%r4,0x1
	fmul %f2,%f2,%f2
	srawi %r2,%r4,1
	addze %r2,%r2
	bne %cr0,.L960
.L969:
	extsw %r4,%r2
	fmul %f2,%f2,%f2
	andi. %r2,%r4,0x1
	srawi %r2,%r4,1
	addze %r2,%r2
	bne %cr0,.L960
	b .L969
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
	.localentry	ldexpl,1
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
	bun %cr0,.L971
	mflr %r0
	.cfi_register 65, 0
	fmr %f3,%f1
	fmr %f4,%f2
	std %r31,40(%r1)
	.cfi_offset 31, -40
	mr %r31,%r5
	std %r0,96(%r1)
	.cfi_offset 65, 16
	bl __gcc_qadd@notoc
	fcmpu %cr1,%f1,%f28
	bne %cr1,$+8
	fcmpu %cr1,%f2,%f29
	beq %cr1,.L986
	cmpwi %cr5,%r31,0
	stfd %f30,64(%r1)
	.cfi_offset 62, -16
	stfd %f31,72(%r1)
	.cfi_offset 63, -8
	plfd %f30,.LC5@pcrel
	plfd %f31,.LC5+8@pcrel
	bge %cr5,.L972
	plfd %f30,.LC6@pcrel
	plfd %f31,.LC6+8@pcrel
.L972:
	andi. %r2,%r31,0x1
	beq %cr0,.L973
	.p2align 4,,15
.L974:
	fmr %f1,%f28
	fmr %f2,%f29
	fmr %f3,%f30
	fmr %f4,%f31
	bl __gcc_qmul@notoc
	fmr %f29,%f2
	fmr %f28,%f1
.L973:
	srawi %r31,%r31,1
	addze %r31,%r31
	extsw. %r31,%r31
	beq %cr0,.L985
	fmr %f3,%f30
	fmr %f4,%f31
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul@notoc
	andi. %r2,%r31,0x1
	srawi %r2,%r31,1
	addze %r2,%r2
	fmr %f31,%f2
	fmr %f30,%f1
	bne %cr0,.L974
.L987:
	fmr %f3,%f30
	fmr %f4,%f31
	extsw %r31,%r2
	fmr %f1,%f30
	fmr %f2,%f31
	bl __gcc_qmul@notoc
	andi. %r2,%r31,0x1
	srawi %r2,%r31,1
	addze %r2,%r2
	fmr %f31,%f2
	fmr %f30,%f1
	bne %cr0,.L974
	b .L987
	.p2align 4,,15
.L985:
	lfd %f30,64(%r1)
	.cfi_restore 62
	lfd %f31,72(%r1)
	.cfi_restore 63
.L986:
	ld %r0,96(%r1)
	ld %r31,40(%r1)
	.cfi_restore 31
	mtlr %r0
	.cfi_restore 65
.L971:
	addi %r1,%r1,80
	.cfi_def_cfa_offset 0
	fmr %f1,%f28
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
	.size	ldexpl,.-ldexpl
	.align 2
	.p2align 4,,15
	.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	.localentry	memxor,1
	cmpdi %cr0,%r5,0
	beqlr %cr0
	addi %r2,%r5,-1
	cmpldi %cr1,%r2,14
	ble %cr1,.L993
	srdi %r9,%r5,4
	li %r6,0
	andi. %r10,%r9,0x1
	addi %r10,%r9,-1
	bne %cr0,.L1010
.L1000:
	srdi %r7,%r9,1
	mtctr %r7
.L991:
	lxvx %vs2,%r3,%r6
	lxvx %vs3,%r4,%r6
	addi %r8,%r6,16
	lxvx %vs6,%r4,%r8
	xxlxor %vs4,%vs2,%vs3
	stxvx %vs4,%r3,%r6
	addi %r6,%r6,32
	lxvx %vs5,%r3,%r8
	xxlxor %vs7,%vs5,%vs6
	stxvx %vs7,%r3,%r8
	bdnz .L991
.L1006:
	andi. %r2,%r5,0xf
	rldicr %r0,%r5,0,59
	beqlr %cr0
.L990:
	subf %r5,%r0,%r5
	li %r11,16
	cmpldi %cr6,%r5,16
	add %r12,%r3,%r0
	add %r4,%r4,%r0
	isel %r2,%r11,%r5,25
	sldi %r0,%r2,56
	lxvl %vs8,%r4,%r0
	lxvl %vs9,%r12,%r0
	xxlxor %vs10,%vs8,%vs9
	stxvl %vs10,%r12,%r0
	blr
	.p2align 4,,15
.L1010:
	lxv %vs0,0(%r3)
	lxv %vs12,0(%r4)
	cmpdi %cr5,%r10,0
	li %r6,16
	xxlxor %vs1,%vs0,%vs12
	stxv %vs1,0(%r3)
	bne %cr5,.L1000
	b .L1006
.L993:
	li %r0,0
	b .L990
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
	.localentry	strncat,1
	lbz %r2,0(%r3)
	cmpwi %cr0,%r2,0
	mr %r2,%r3
	beq %cr0,.L1012
	.p2align 4,,15
.L1013:
	lbzu %r9,1(%r2)
	cmpwi %cr1,%r9,0
	bne %cr1,.L1013
.L1012:
	cmpdi %cr5,%r5,0
	beq %cr5,.L1014
	andi. %r9,%r5,0x1
	addi %r11,%r4,-1
	addi %r8,%r5,-1
	bne %cr0,.L1037
.L1025:
	srdi %r0,%r5,1
	mtctr %r0
.L1015:
	lbz %r4,1(%r11)
	addi %r5,%r11,1
	addi %r6,%r2,1
	addi %r11,%r5,1
	rlwinm %r12,%r4,0,0xff
	stb %r4,0(%r2)
	cmpwi %cr1,%r12,0
	beqlr %cr1
	lbz %r9,1(%r5)
	rlwinm %r8,%r9,0,0xff
	stb %r9,1(%r2)
	addi %r2,%r6,1
	cmpwi %cr5,%r8,0
	beqlr %cr5
	bdnz .L1015
.L1014:
	li %r10,0
	stb %r10,0(%r2)
	blr
	.p2align 4,,15
.L1037:
	lbz %r10,0(%r4)
	mr %r11,%r4
	rlwinm %r7,%r10,0,0xff
	stb %r10,0(%r2)
	cmpwi %cr6,%r7,0
	beqlr %cr6
	cmpdi %cr7,%r8,0
	addi %r2,%r2,1
	bne %cr7,.L1025
	b .L1014
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
	.localentry	strnlen,1
	cmpdi %cr0,%r4,0
	mr %r2,%r3
	li %r3,0
	beqlr %cr0
	andi. %r10,%r4,0x3
	mr %r9,%r4
	beq %cr0,.L1050
	cmpdi %cr1,%r10,1
	beq %cr1,.L1061
	cmpdi %cr5,%r10,2
	beq %cr5,.L1062
	lbz %r0,0(%r2)
	cmpwi %cr6,%r0,0
	beqlr %cr6
	li %r3,1
.L1062:
	lbzx %r5,%r2,%r3
	cmpwi %cr7,%r5,0
	beqlr %cr7
	addi %r3,%r3,1
.L1061:
	lbzx %r6,%r2,%r3
	cmpwi %cr0,%r6,0
	beqlr %cr0
	addi %r3,%r3,1
	cmpld %cr1,%r4,%r3
	beqlr %cr1
	.p2align 4,,15
.L1050:
	srdi %r9,%r9,2
.L1039:
	lbzx %r4,%r2,%r3
	cmpwi %cr5,%r4,0
	beqlr %cr5
	addi %r3,%r3,1
	mr %r8,%r3
	lbzx %r7,%r2,%r3
	cmpwi %cr6,%r7,0
	beqlr %cr6
	addi %r3,%r3,1
	lbzx %r11,%r2,%r3
	cmpwi %cr7,%r11,0
	beqlr %cr7
	addi %r3,%r8,2
	lbzx %r12,%r2,%r3
	cmpwi %cr0,%r12,0
	beqlr %cr0
	cmpdi %cr1,%r9,1
	addi %r3,%r8,3
	addi %r9,%r9,-1
	bne %cr1,.L1039
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
	.localentry	strpbrk,1
	lbz %r10,0(%r3)
	addi %r4,%r4,-1
	cmpwi %cr0,%r10,0
	beq %cr0,.L1076
.L1072:
	mr %r9,%r4
	b .L1075
	.p2align 4,,15
.L1074:
	beqlr %cr7
.L1075:
	lbzu %r2,1(%r9)
	cmpwi %cr1,%r2,0
	cmpw %cr7,%r2,%r10
	bne %cr1,.L1074
	lbzu %r10,1(%r3)
	cmpwi %cr5,%r10,0
	bne %cr5,.L1072
.L1076:
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
	.localentry	strrchr,1
	mr %r2,%r3
	li %r3,0
	.p2align 4,,15
.L1082:
	lbz %r9,0(%r2)
	cmpwi %cr0,%r9,0
	cmpw %cr7,%r9,%r4
	isel %r3,%r2,%r3,30
	addi %r2,%r2,1
	beqlr %cr0
	lbz %r9,0(%r2)
	cmpwi %cr0,%r9,0
	cmpw %cr7,%r9,%r4
	isel %r3,%r2,%r3,30
	addi %r2,%r2,1
	bne %cr0,.L1082
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
	.localentry	strstr,1
	lbz %r11,0(%r4)
	mr %r10,%r3
	andi. %r6,%r11,0xff
	beq %cr0,.L1098
	mr %r2,%r4
	.p2align 4,,15
.L1087:
	lbzu %r9,1(%r2)
	cmpwi %cr1,%r9,0
	bne %cr1,.L1087
	subf. %r5,%r4,%r2
	mr %r3,%r10
	addi %r2,%r5,-1
	bne %cr0,.L1106
	blr
	.p2align 4,,15
.L1110:
	cmpwi %cr6,%r0,0
	addi %r10,%r10,1
	beq %cr6,.L1109
.L1106:
	lbz %r0,0(%r10)
	cmpw %cr5,%r0,%r6
	bne %cr5,.L1110
	addi %r3,%r2,1
	mr %r7,%r4
	mtctr %r3
	mr %r9,%r11
	mr %r8,%r10
	b .L1089
	.p2align 4,,15
.L1112:
	bdz .L1091
	bne %cr7,.L1092
	lbzu %r0,1(%r8)
	cmpwi %cr1,%r0,0
	beq %cr1,.L1111
	lbzu %r9,1(%r7)
.L1089:
	andi. %r12,%r9,0xff
	cmpw %cr7,%r12,%r0
	bne %cr0,.L1112
.L1092:
	addi %r10,%r10,1
	b .L1106
	.p2align 4,,15
.L1109:
	li %r3,0
	blr
	.p2align 4,,15
.L1111:
	lbz %r12,1(%r7)
.L1091:
	cmpw %cr5,%r0,%r12
	bne %cr5,.L1092
.L1098:
	mr %r3,%r10
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
	.localentry	copysign,1
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr0,%f1,%f0
	blt %cr0,.L1123
	bnglr %cr0
	fcmpu %cr1,%f2,%f0
	bnllr %cr1
	fneg %f1,%f1
	blr
	.p2align 4,,15
.L1123:
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
	.localentry	memmem,1
	cmpdi %cr0,%r6,0
	mr %r2,%r3
	beqlr %cr0
	cmpld %cr1,%r4,%r6
	blt %cr1,.L1132
	subf %r4,%r6,%r4
	add %r11,%r3,%r4
	cmpld %cr5,%r3,%r11
	bgt %cr5,.L1132
	lbz %r0,0(%r5)
	cmpldi %cr7,%r6,1
	addi %r4,%r3,-1
	b .L1129
	.p2align 4,,15
.L1126:
	cmpld %cr1,%r11,%r2
	blt %cr1,.L1132
.L1129:
	lbzu %r9,1(%r4)
	mr %r3,%r2
	addi %r2,%r2,1
	cmpw %cr6,%r9,%r0
	bne %cr6,.L1126
	beqlr %cr7
	subf %r7,%r4,%r2
	mr %r8,%r5
	add %r12,%r7,%r6
	mr %r10,%r4
	addi %r9,%r12,-2
	mtctr %r9
	.p2align 5
.L1127:
	lbzu %r7,1(%r10)
	lbzu %r12,1(%r8)
	cmpw %cr0,%r7,%r12
	bne %cr0,.L1126
	bdnz .L1127
	blr
	.p2align 4,,15
.L1132:
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
	.localentry	mempcpy,1
	std %r31,-8(%r1)
	.cfi_offset 31, -8
	mr. %r31,%r5
	std %r30,-16(%r1)
	.cfi_offset 30, -16
	mr %r30,%r3
	stdu %r1,-48(%r1)
	.cfi_def_cfa_offset 48
	beq %cr0,.L1141
	mflr %r0
	.cfi_register 65, 0
	std %r0,64(%r1)
	.cfi_offset 65, 16
	bl memmove@notoc
	ld %r0,64(%r1)
	mtlr %r0
	.cfi_restore 65
.L1141:
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
	.localentry	frexp,1
	xxlxor %vs0,%vs0,%vs0
	fcmpu %cr7,%f1,%f0
	blt %cr7,.L1169
	xxspltidp %vs2,1065353216
	li %r9,0
	fcmpu %cr0,%f1,%f2
	cror 2,1,2
	bne %cr0,.L1170
.L1149:
	xxspltidp %vs7,1056964608
	xxspltidp %vs8,1065353216
	li %r3,0
	.p2align 5
.L1155:
	fmul %f1,%f1,%f7
	addi %r3,%r3,1
	fcmpu %cr0,%f1,%f8
	cror 2,1,2
	beq %cr0,.L1155
	cmpwi %cr1,%r9,0
	stw %r3,0(%r4)
	beqlr %cr1
.L1172:
	fneg %f1,%f1
	blr
	.p2align 4,,15
.L1170:
	xxspltidp %vs3,1056964608
	fcmpu %cr1,%f1,%f3
	bnl %cr1,.L1152
	bne %cr7,.L1161
.L1152:
	li %r2,0
	stw %r2,0(%r4)
	blr
	.p2align 4,,15
.L1169:
	xxspltidp %vs4,3212836864
	fneg %f12,%f1
	fcmpu %cr5,%f1,%f4
	cror 22,20,22
	bne %cr5,.L1171
	fmr %f1,%f12
	li %r9,1
	b .L1149
	.p2align 4,,15
.L1171:
	xxspltidp %vs5,3204448256
	fcmpu %cr6,%f1,%f5
	bng %cr6,.L1152
	li %r9,1
.L1150:
	fmr %f1,%f12
	xxspltidp %vs6,1056964608
	li %r3,0
	.p2align 4,,15
.L1157:
	fadd %f1,%f1,%f1
	addi %r3,%r3,-1
	fcmpu %cr7,%f1,%f6
	blt %cr7,.L1157
	cmpwi %cr1,%r9,0
	stw %r3,0(%r4)
	bne %cr1,.L1172
	blr
.L1161:
	fmr %f12,%f1
	b .L1150
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
	.localentry	__muldi3,1
	mr. %r9,%r3
	li %r3,0
	beqlr %cr0
	.p2align 4,,15
.L1175:
	rldicl %r2,%r9,0,63
	srdi. %r9,%r9,1
	neg %r0,%r2
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	sldi %r4,%r4,1
	beqlr %cr0
	rldicl %r2,%r9,0,63
	srdi. %r9,%r9,1
	neg %r0,%r2
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	sldi %r4,%r4,1
	bne %cr0,.L1175
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
	.localentry	udivmodsi4,1
	cmplw %cr0,%r4,%r3
	li %r10,16
	mtctr %r10
	li %r6,32
	li %r2,1
	blt %cr0,.L1180
	b .L1201
	.p2align 4,,15
.L1184:
	rldicl %r4,%r0,0,32
	slwi %r2,%r2,1
	ble %cr7,.L1182
	cmpwi %cr5,%r4,0
	slwi %r7,%r4,1
	cmplw %cr6,%r3,%r7
	blt %cr5,.L1185
	rldicl %r4,%r7,0,32
	slwi %r2,%r2,1
	ble %cr6,.L1182
	bdz .L1183
.L1180:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r9,%r6,-1
	cmplw %cr7,%r3,%r0
	addi %r6,%r9,-1
	bge %cr1,.L1184
.L1185:
	li %r6,0
	li %r11,0
	.p2align 4,,15
.L1186:
	cmplw %cr1,%r3,%r4
	subf %r8,%r4,%r3
	srdi %r4,%r4,1
	setbcr %r12,4
	cmpwi %cr5,%r12,0
	isel %r10,%r11,%r2,22
	srwi %r2,%r2,1
	cmpwi %cr7,%r2,0
	isel %r3,%r3,%r8,22
	or %r6,%r6,%r10
	rldicl %r3,%r3,0,32
	bne %cr7,.L1186
.L1183:
	cmpdi %cr6,%r5,0
	isel %r5,%r6,%r3,26
	rldicl %r3,%r5,0,32
	blr
	.p2align 4,,15
.L1182:
	cmpwi %cr0,%r2,0
	bne %cr0,.L1185
	li %r6,0
	b .L1183
	.p2align 4,,15
.L1201:
	subf %r4,%r4,%r3
	setbcr %r6,1
	isel %r3,%r3,%r4,1
	rldicl %r3,%r3,0,32
	b .L1183
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
	.localentry	__clrsbqi2,1
	cmpdi %cr0,%r3,0
	beq %cr0,.L1206
	slwi %r3,%r3,8
	cntlzw %r2,%r3
	addi %r0,%r2,-1
	extsw %r3,%r0
	blr
	.p2align 4,,15
.L1206:
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
	.localentry	__clrsbdi2,1
	sradi %r2,%r3,63
	cmpd %cr0,%r3,%r2
	xor %r3,%r3,%r2
	beq %cr0,.L1209
	cntlzd %r4,%r3
	addi %r0,%r4,-1
	extsw %r3,%r0
	blr
	.p2align 4,,15
.L1209:
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
	.localentry	__mulsi3,1
	mr. %r9,%r3
	li %r3,0
	beq %cr0,.L1211
	.p2align 5
.L1212:
	rlwinm %r2,%r9,0,31,31
	srdi. %r9,%r9,1
	neg %r0,%r2
	and %r5,%r0,%r4
	add %r3,%r3,%r5
	rldic %r4,%r4,1,32
	bne %cr0,.L1212
.L1211:
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
	.localentry	__cmovd,1
	cmpld %cr0,%r3,%r4
	srwi %r2,%r5,3
	rlwinm %r9,%r5,0,0,28
	blt %cr0,.L1219
	add %r10,%r4,%r5
	cmpld %cr1,%r3,%r10
	ble %cr1,.L1362
.L1219:
	cmpwi %cr5,%r2,0
	addi %r8,%r4,-8
	addi %r10,%r3,-8
	beq %cr5,.L1218
	andi. %r7,%r2,0x1
	addi %r0,%r2,-1
	bne %cr0,.L1363
.L1287:
	srdi %r2,%r2,1
	mtctr %r2
	cmpdi %cr7,%r2,2
	ble %cr7,.L1353
	addi %r2,%r2,-1
	mtctr %r2
	ld %r6,8(%r8)
	std %r6,8(%r10)
	addi %r7,%r8,8
	ld %r6,8(%r7)
	addi %r2,%r10,8
	std %r6,8(%r2)
.L1222:
	ld %r6,16(%r7)
	std %r6,16(%r2)
	addi %r7,%r7,16
	ld %r6,8(%r7)
	addi %r2,%r2,16
	std %r6,8(%r2)
	bdnz .L1222
.L1218:
	cmplw %cr1,%r9,%r5
	bgelr %cr1
	rldicl %r11,%r9,0,32
	addi %r8,%r11,1
	add %r10,%r3,%r11
	add %r0,%r4,%r8
	subf %r6,%r0,%r10
	cmpldi %cr5,%r6,14
	ble %cr5,.L1223
	subf %r9,%r9,%r5
	addi %r5,%r9,-1
	cmplwi %cr0,%r5,14
	ble %cr0,.L1235
	rldicl %r6,%r9,60,36
	add %r8,%r4,%r11
	andi. %r5,%r6,0x3
	addi %r0,%r6,-1
	mr %r7,%r6
	li %r2,0
	beq %cr0,.L1282
	cmpdi %cr6,%r5,1
	beq %cr6,.L1302
	cmpdi %cr7,%r5,2
	bne %cr7,.L1364
.L1303:
	lxvx %vs8,%r8,%r2
	addi %r6,%r6,-1
	stxvx %vs8,%r10,%r2
	addi %r2,%r2,16
.L1302:
	lxvx %vs9,%r8,%r2
	cmpdi %cr1,%r6,1
	stxvx %vs9,%r10,%r2
	addi %r2,%r2,16
	beq %cr1,.L1336
.L1282:
	srdi %r12,%r7,2
	mtctr %r12
.L1225:
	lxvx %vs10,%r8,%r2
	addi %r0,%r2,16
	addi %r5,%r2,32
	addi %r7,%r2,48
	stxvx %vs10,%r10,%r2
	addi %r2,%r2,64
	lxvx %vs11,%r8,%r0
	stxvx %vs11,%r10,%r0
	lxvx %vs12,%r8,%r5
	stxvx %vs12,%r10,%r5
	lxvx %vs13,%r8,%r7
	stxvx %vs13,%r10,%r7
	bdnz .L1225
.L1336:
	andi. %r2,%r9,0xf
	rlwinm %r12,%r9,0,0,27
	beqlr %cr0
.L1224:
	subf %r10,%r12,%r9
	rldicl %r8,%r12,0,32
	cmplwi %cr5,%r10,16
	rldicl %r9,%r10,0,32
	li %r6,16
	add %r11,%r8,%r11
	isel %r2,%r6,%r9,21
	add %r4,%r4,%r11
	sldi %r12,%r2,56
	add %r3,%r3,%r11
	lxvl %vs0,%r4,%r12
	stxvl %vs0,%r3,%r12
	blr
	.p2align 4,,15
.L1353:
	ld %r6,8(%r8)
	mr %r12,%r8
	mr %r2,%r10
	addi %r8,%r8,16
	addi %r10,%r10,16
	std %r6,-8(%r10)
	ld %r7,16(%r12)
	std %r7,16(%r2)
	bdz .L1218
	ld %r6,8(%r8)
	mr %r12,%r8
	mr %r2,%r10
	addi %r8,%r8,16
	addi %r10,%r10,16
	std %r6,-8(%r10)
	ld %r7,16(%r12)
	std %r7,16(%r2)
	bdnz .L1353
	b .L1218
	.p2align 4,,15
.L1363:
	cmpdi %cr6,%r0,0
	ld %r11,0(%r4)
	mr %r8,%r4
	mr %r10,%r3
	std %r11,0(%r3)
	bne %cr6,.L1287
	b .L1218
	.p2align 4,,15
.L1362:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r6,%r11,0,32
	beqlr %cr5
	cmplwi %cr6,%r11,14
	ble %cr6,.L1229
	addi %r9,%r6,-1
	add %r0,%r3,%r6
	add %r7,%r4,%r9
	subf %r8,%r7,%r0
	addi %r12,%r8,14
	cmpldi %cr7,%r12,14
	ble %cr7,.L1229
	srdi %r7,%r5,4
	addi %r2,%r6,-15
	andi. %r6,%r7,0x3
	add %r10,%r4,%r2
	add %r12,%r3,%r2
	addi %r0,%r7,-1
	mr %r8,%r7
	li %r9,0
	beq %cr0,.L1297
	cmpdi %cr1,%r6,1
	beq %cr1,.L1304
	cmpdi %cr5,%r6,2
	bne %cr5,.L1365
.L1305:
	lxvx %vs1,%r10,%r9
	addi %r7,%r7,-1
	stxvx %vs1,%r12,%r9
	addi %r9,%r9,-16
.L1304:
	lxvx %vs2,%r10,%r9
	cmpdi %cr6,%r7,1
	stxvx %vs2,%r12,%r9
	addi %r9,%r9,-16
	beq %cr6,.L1337
.L1297:
	srdi %r2,%r8,2
	mtctr %r2
.L1230:
	lxvx %vs3,%r10,%r9
	addi %r0,%r9,-16
	addi %r6,%r9,-32
	addi %r8,%r9,-48
	stxvx %vs3,%r12,%r9
	addi %r9,%r9,-64
	lxvx %vs4,%r10,%r0
	stxvx %vs4,%r12,%r0
	lxvx %vs5,%r10,%r6
	stxvx %vs5,%r12,%r6
	lxvx %vs6,%r10,%r8
	stxvx %vs6,%r12,%r8
	bdnz .L1230
.L1337:
	andi. %r2,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r11
	beqlr %cr0
	rldicl %r12,%r11,0,32
	cmpwi %cr7,%r11,0
	addi %r7,%r11,-1
	lbzx %r10,%r4,%r12
	rldicl %r2,%r7,0,32
	stbx %r10,%r3,%r12
	beqlr %cr7
	cmpdi %cr1,%r2,0
	lbzx %r0,%r4,%r2
	addi %r9,%r11,-2
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r2
	beqlr %cr1
	cmpdi %cr5,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-3
	rldicl %r12,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr5
	cmpdi %cr6,%r12,0
	lbzx %r7,%r4,%r12
	addi %r10,%r11,-4
	rldicl %r0,%r10,0,32
	stbx %r7,%r3,%r12
	beqlr %cr6
	cmpdi %cr0,%r0,0
	lbzx %r9,%r4,%r0
	addi %r2,%r11,-5
	rldicl %r8,%r2,0,32
	stbx %r9,%r3,%r0
	beqlr %cr0
	cmpdi %cr7,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-6
	rldicl %r12,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr7
	cmpdi %cr1,%r12,0
	lbzx %r7,%r4,%r12
	addi %r10,%r11,-7
	rldicl %r0,%r10,0,32
	stbx %r7,%r3,%r12
	beqlr %cr1
	cmpdi %cr5,%r0,0
	lbzx %r2,%r4,%r0
	addi %r9,%r11,-8
	rldicl %r8,%r9,0,32
	stbx %r2,%r3,%r0
	beqlr %cr5
	cmpdi %cr6,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-9
	rldicl %r12,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr6
	cmpdi %cr0,%r12,0
	lbzx %r7,%r4,%r12
	addi %r10,%r11,-10
	rldicl %r0,%r10,0,32
	stbx %r7,%r3,%r12
	beqlr %cr0
	cmpdi %cr7,%r0,0
	lbzx %r9,%r4,%r0
	addi %r2,%r11,-11
	rldicl %r8,%r2,0,32
	stbx %r9,%r3,%r0
	beqlr %cr7
	cmpdi %cr1,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-12
	rldicl %r12,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr1
	cmpdi %cr5,%r12,0
	lbzx %r7,%r4,%r12
	addi %r10,%r11,-13
	rldicl %r0,%r10,0,32
	stbx %r7,%r3,%r12
	beqlr %cr5
	cmpdi %cr6,%r0,0
	lbzx %r9,%r4,%r0
	addi %r11,%r11,-14
	rldicl %r2,%r11,0,32
	stbx %r9,%r3,%r0
	beqlr %cr6
	lbzx %r4,%r4,%r2
	stbx %r4,%r3,%r2
	blr
	.p2align 4,,15
.L1364:
	lxv %vs7,0(%r8)
	mr %r6,%r0
	li %r2,16
	stxv %vs7,0(%r10)
	b .L1303
.L1235:
	li %r12,0
	b .L1224
	.p2align 4,,15
.L1223:
	subf %r0,%r9,%r5
	addi %r7,%r11,-1
	rldicl %r5,%r0,0,32
	add %r4,%r4,%r7
	andi. %r2,%r5,0x1
	add %r11,%r3,%r7
	addi %r10,%r5,-1
	beq %cr0,.L1275
	lbzu %r8,1(%r4)
	cmpdi %cr6,%r10,0
	stbu %r8,1(%r11)
	beqlr %cr6
.L1275:
	srdi %r2,%r5,1
	mtctr %r2
	cmpdi %cr7,%r2,2
	ble %cr7,.L1352
	addi %r2,%r2,-1
	mtctr %r2
	lbz %r10,1(%r4)
	stb %r10,1(%r11)
	addi %r9,%r4,1
	lbz %r10,1(%r9)
	addi %r2,%r11,1
	stb %r10,1(%r2)
.L1227:
	lbz %r10,2(%r9)
	stb %r10,2(%r2)
	addi %r9,%r9,2
	lbz %r10,1(%r9)
	addi %r2,%r2,2
	stb %r10,1(%r2)
	bdnz .L1227
.L1215:
	blr
	.p2align 4,,15
.L1352:
	lbz %r6,1(%r4)
	mr %r9,%r4
	mr %r2,%r11
	addi %r4,%r4,2
	addi %r11,%r11,2
	stb %r6,-1(%r11)
	lbz %r12,2(%r9)
	stb %r12,2(%r2)
	bdnz .L1352
	blr
.L1365:
	lxv %vs0,0(%r10)
	mr %r7,%r0
	li %r9,-16
	stxv %vs0,0(%r12)
	b .L1305
.L1229:
	andi. %r9,%r5,0x1
	addi %r8,%r6,1
	add %r2,%r3,%r8
	add %r4,%r4,%r8
	addi %r3,%r5,-1
	beq %cr0,.L1290
	lbzu %r6,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r6,-1(%r2)
	beqlr %cr7
.L1290:
	srdi %r9,%r5,1
	mtctr %r9
	cmpdi %cr1,%r9,2
	ble %cr1,.L1354
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,-1(%r4)
	stb %r8,-1(%r2)
	addi %r10,%r4,-1
	lbz %r8,-1(%r10)
	addi %r9,%r2,-1
	stb %r8,-1(%r9)
.L1233:
	addi %r4,%r10,-1
	lbz %r8,-1(%r4)
	stb %r8,-2(%r9)
	addi %r10,%r4,-1
	lbz %r8,-1(%r10)
	addi %r9,%r9,-2
	stb %r8,-1(%r9)
	bdnz .L1233
	blr
.L1354:
	lbz %r5,-1(%r4)
	mr %r12,%r4
	mr %r7,%r2
	addi %r4,%r4,-2
	addi %r2,%r2,-2
	stb %r5,1(%r2)
	lbz %r10,-2(%r12)
	stb %r10,-2(%r7)
	bdnz .L1354
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	.localentry	__cmovh,1
	cmpld %cr0,%r3,%r4
	srwi %r9,%r5,1
	blt %cr0,.L1370
	add %r2,%r4,%r5
	cmpld %cr1,%r3,%r2
	ble %cr1,.L1497
.L1370:
	cmpwi %cr5,%r9,0
	beq %cr5,.L1369
	addi %r2,%r4,2
	subf %r0,%r2,%r3
	cmpldi %cr6,%r0,12
	ble %cr6,.L1373
	addi %r11,%r9,-1
	cmplwi %cr0,%r11,6
	ble %cr0,.L1385
	srdi %r7,%r5,4
	srwi %r10,%r5,4
	andi. %r6,%r7,0x3
	addi %r12,%r7,-1
	mr %r0,%r7
	li %r2,0
	beq %cr0,.L1430
	cmpdi %cr7,%r6,1
	beq %cr7,.L1446
	cmpdi %cr1,%r6,2
	bne %cr1,.L1498
.L1447:
	lxvx %vs8,%r4,%r2
	addi %r7,%r7,-1
	stxvx %vs8,%r3,%r2
	addi %r2,%r2,16
.L1446:
	lxvx %vs9,%r4,%r2
	cmpdi %cr5,%r7,1
	stxvx %vs9,%r3,%r2
	addi %r2,%r2,16
	beq %cr5,.L1478
.L1430:
	srdi %r11,%r0,2
	mtctr %r11
.L1375:
	lxvx %vs10,%r4,%r2
	addi %r8,%r2,16
	addi %r6,%r2,32
	addi %r12,%r2,48
	stxvx %vs10,%r3,%r2
	addi %r2,%r2,64
	lxvx %vs11,%r4,%r8
	stxvx %vs11,%r3,%r8
	lxvx %vs12,%r4,%r6
	stxvx %vs12,%r3,%r6
	lxvx %vs13,%r4,%r12
	stxvx %vs13,%r3,%r12
	bdnz .L1375
.L1478:
	slwi %r8,%r10,3
	cmplw %cr6,%r9,%r8
	beq %cr6,.L1369
.L1374:
	subf %r9,%r8,%r9
	li %r10,16
	rldic %r0,%r9,1,31
	rlwinm %r7,%r8,1,0,27
	cmpldi %cr0,%r0,16
	add %r11,%r4,%r7
	add %r2,%r3,%r7
	isel %r8,%r10,%r0,1
	sldi %r12,%r8,56
	lxvl %vs0,%r11,%r12
	stxvl %vs0,%r2,%r12
.L1369:
	andi. %r2,%r5,0x1
	beqlr %cr0
	addi %r5,%r5,-1
	rldicl %r10,%r5,0,32
	lbzx %r4,%r4,%r10
	stbx %r4,%r3,%r10
	blr
	.p2align 4,,15
.L1497:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r6,%r11,0,32
	beqlr %cr5
	cmplwi %cr6,%r11,14
	ble %cr6,.L1380
	addi %r0,%r6,-1
	add %r10,%r3,%r6
	add %r7,%r4,%r0
	subf %r8,%r7,%r10
	addi %r12,%r8,14
	cmpldi %cr7,%r12,14
	ble %cr7,.L1380
	srdi %r7,%r5,4
	addi %r9,%r6,-15
	andi. %r6,%r7,0x3
	add %r10,%r4,%r9
	add %r2,%r3,%r9
	addi %r0,%r7,-1
	mr %r8,%r7
	li %r12,0
	beq %cr0,.L1442
	cmpdi %cr1,%r6,1
	beq %cr1,.L1448
	cmpdi %cr5,%r6,2
	bne %cr5,.L1499
.L1449:
	lxvx %vs1,%r10,%r12
	addi %r7,%r7,-1
	stxvx %vs1,%r2,%r12
	addi %r12,%r12,-16
.L1448:
	lxvx %vs2,%r10,%r12
	cmpdi %cr6,%r7,1
	stxvx %vs2,%r2,%r12
	addi %r12,%r12,-16
	beq %cr6,.L1479
.L1442:
	srdi %r9,%r8,2
	mtctr %r9
.L1381:
	lxvx %vs3,%r10,%r12
	addi %r0,%r12,-16
	addi %r6,%r12,-32
	addi %r8,%r12,-48
	stxvx %vs3,%r2,%r12
	addi %r12,%r12,-64
	lxvx %vs4,%r10,%r0
	stxvx %vs4,%r2,%r0
	lxvx %vs5,%r10,%r6
	stxvx %vs5,%r2,%r6
	lxvx %vs6,%r10,%r8
	stxvx %vs6,%r2,%r8
	bdnz .L1381
.L1479:
	andi. %r2,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r11
	beqlr %cr0
	rldicl %r7,%r11,0,32
	cmpwi %cr7,%r11,0
	addi %r2,%r11,-1
	lbzx %r10,%r4,%r7
	rldicl %r12,%r2,0,32
	stbx %r10,%r3,%r7
	beqlr %cr7
	cmpdi %cr1,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-2
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr1
	cmpdi %cr5,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-3
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr5
	cmpdi %cr6,%r7,0
	lbzx %r2,%r4,%r7
	addi %r10,%r11,-4
	rldicl %r12,%r10,0,32
	stbx %r2,%r3,%r7
	beqlr %cr6
	cmpdi %cr0,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-5
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr0
	cmpdi %cr7,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-6
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr7
	cmpdi %cr1,%r7,0
	lbzx %r10,%r4,%r7
	addi %r2,%r11,-7
	rldicl %r12,%r2,0,32
	stbx %r10,%r3,%r7
	beqlr %cr1
	cmpdi %cr5,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-8
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr5
	cmpdi %cr6,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-9
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr6
	cmpdi %cr0,%r7,0
	lbzx %r10,%r4,%r7
	addi %r2,%r11,-10
	rldicl %r12,%r2,0,32
	stbx %r10,%r3,%r7
	beqlr %cr0
	cmpdi %cr7,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-11
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr7
	cmpdi %cr1,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-12
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr1
	cmpdi %cr5,%r7,0
	lbzx %r2,%r4,%r7
	addi %r10,%r11,-13
	rldicl %r12,%r10,0,32
	stbx %r2,%r3,%r7
	beqlr %cr5
	cmpdi %cr6,%r12,0
	lbzx %r0,%r4,%r12
	addi %r11,%r11,-14
	rldicl %r8,%r11,0,32
	stbx %r0,%r3,%r12
	beqlr %cr6
	lbzx %r4,%r4,%r8
	stbx %r4,%r3,%r8
	blr
	.p2align 4,,15
.L1498:
	lxv %vs7,0(%r4)
	mr %r7,%r12
	li %r2,16
	stxv %vs7,0(%r3)
	b .L1447
.L1385:
	li %r8,0
	b .L1374
	.p2align 4,,15
.L1373:
	andi. %r2,%r9,0x1
	addi %r10,%r4,-2
	addi %r6,%r9,-1
	addi %r2,%r3,-2
	beq %cr0,.L1423
	cmpdi %cr7,%r6,0
	lhz %r0,0(%r4)
	mr %r10,%r4
	mr %r2,%r3
	sth %r0,0(%r3)
	beq %cr7,.L1369
.L1423:
	srdi %r9,%r9,1
	mtctr %r9
	cmpdi %cr1,%r9,2
	ble %cr1,.L1490
	addi %r9,%r9,-1
	mtctr %r9
	lhz %r7,2(%r10)
	sth %r7,2(%r2)
	addi %r8,%r10,2
	lhz %r7,2(%r8)
	addi %r9,%r2,2
	sth %r7,2(%r9)
.L1377:
	lhz %r7,4(%r8)
	sth %r7,4(%r9)
	addi %r8,%r8,4
	lhz %r7,2(%r8)
	addi %r9,%r9,4
	sth %r7,2(%r9)
	bdnz .L1377
	b .L1369
	.p2align 4,,15
.L1490:
	lhz %r7,2(%r10)
	mr %r11,%r10
	mr %r9,%r2
	addi %r10,%r10,4
	addi %r2,%r2,4
	sth %r7,-2(%r2)
	lhz %r8,4(%r11)
	sth %r8,4(%r9)
	bdnz .L1490
	b .L1369
.L1499:
	lxv %vs0,0(%r10)
	mr %r7,%r0
	li %r12,-16
	stxv %vs0,0(%r2)
	b .L1449
.L1380:
	andi. %r9,%r5,0x1
	addi %r9,%r6,1
	add %r2,%r3,%r9
	add %r4,%r4,%r9
	addi %r3,%r5,-1
	beq %cr0,.L1435
	lbzu %r6,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r6,-1(%r2)
	beqlr %cr7
.L1435:
	srdi %r9,%r5,1
	mtctr %r9
	cmpdi %cr1,%r9,2
	ble %cr1,.L1491
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,-1(%r4)
	stb %r8,-1(%r2)
	addi %r10,%r4,-1
	lbz %r8,-1(%r10)
	addi %r9,%r2,-1
	stb %r8,-1(%r9)
.L1383:
	addi %r4,%r10,-1
	lbz %r8,-1(%r4)
	stb %r8,-2(%r9)
	addi %r10,%r4,-1
	lbz %r8,-1(%r10)
	addi %r9,%r9,-2
	stb %r8,-1(%r9)
	bdnz .L1383
.L1366:
	blr
.L1491:
	lbz %r5,-1(%r4)
	mr %r7,%r4
	mr %r10,%r2
	addi %r4,%r4,-2
	addi %r2,%r2,-2
	stb %r5,1(%r2)
	lbz %r12,-2(%r7)
	stb %r12,-2(%r10)
	bdnz .L1491
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
	.localentry	__cmovw,1
	cmpld %cr0,%r3,%r4
	srwi %r10,%r5,2
	rlwinm %r2,%r5,0,0,29
	blt %cr0,.L1504
	add %r9,%r4,%r5
	cmpld %cr1,%r3,%r9
	ble %cr1,.L1670
.L1504:
	cmpwi %cr5,%r10,0
	beq %cr5,.L1503
	addi %r0,%r4,4
	subf %r11,%r0,%r3
	cmpldi %cr6,%r11,8
	ble %cr6,.L1507
	addi %r8,%r10,-1
	cmplwi %cr0,%r8,2
	ble %cr0,.L1525
	srdi %r6,%r5,4
	srwi %r12,%r5,4
	andi. %r11,%r6,0x3
	addi %r0,%r6,-1
	mr %r7,%r6
	li %r8,0
	beq %cr0,.L1585
	cmpdi %cr7,%r11,1
	beq %cr7,.L1601
	cmpdi %cr1,%r11,2
	bne %cr1,.L1671
.L1602:
	lxvx %vs8,%r4,%r8
	addi %r6,%r6,-1
	stxvx %vs8,%r3,%r8
	addi %r8,%r8,16
.L1601:
	lxvx %vs9,%r4,%r8
	cmpdi %cr5,%r6,1
	stxvx %vs9,%r3,%r8
	addi %r8,%r8,16
	beq %cr5,.L1642
.L1585:
	srdi %r9,%r7,2
	mtctr %r9
.L1509:
	lxvx %vs10,%r4,%r8
	addi %r0,%r8,16
	addi %r11,%r8,32
	addi %r7,%r8,48
	stxvx %vs10,%r3,%r8
	addi %r8,%r8,64
	lxvx %vs11,%r4,%r0
	stxvx %vs11,%r3,%r0
	lxvx %vs12,%r4,%r11
	stxvx %vs12,%r3,%r11
	lxvx %vs13,%r4,%r7
	stxvx %vs13,%r3,%r7
	bdnz .L1509
.L1642:
	slwi %r9,%r12,2
	cmplw %cr6,%r10,%r9
	beq %cr6,.L1503
.L1508:
	subf %r10,%r9,%r10
	li %r12,16
	rldic %r6,%r10,2,30
	rlwinm %r8,%r9,2,0,27
	cmpldi %cr0,%r6,16
	add %r7,%r4,%r8
	add %r9,%r3,%r8
	isel %r0,%r12,%r6,1
	sldi %r11,%r0,56
	lxvl %vs0,%r7,%r11
	stxvl %vs0,%r9,%r11
.L1503:
	cmplw %cr5,%r2,%r5
	bgelr %cr5
	rldicl %r8,%r2,0,32
	subf %r2,%r2,%r5
	addi %r9,%r8,1
	add %r12,%r3,%r8
	add %r6,%r4,%r9
	subf %r0,%r6,%r12
	cmpldi %cr6,%r0,14
	ble %cr6,.L1513
	addi %r5,%r2,-1
	cmplwi %cr0,%r5,14
	ble %cr0,.L1526
	rldicl %r5,%r2,60,36
	add %r10,%r4,%r8
	andi. %r11,%r5,0x3
	addi %r0,%r5,-1
	mr %r6,%r5
	li %r9,0
	beq %cr0,.L1573
	cmpdi %cr7,%r11,1
	beq %cr7,.L1603
	cmpdi %cr1,%r11,2
	bne %cr1,.L1672
.L1604:
	lxvx %vs2,%r10,%r9
	addi %r5,%r5,-1
	stxvx %vs2,%r12,%r9
	addi %r9,%r9,16
.L1603:
	lxvx %vs3,%r10,%r9
	cmpdi %cr5,%r5,1
	stxvx %vs3,%r12,%r9
	addi %r9,%r9,16
	beq %cr5,.L1641
.L1573:
	srdi %r7,%r6,2
	mtctr %r7
.L1515:
	lxvx %vs4,%r10,%r9
	addi %r0,%r9,16
	addi %r11,%r9,32
	addi %r6,%r9,48
	stxvx %vs4,%r12,%r9
	addi %r9,%r9,64
	lxvx %vs5,%r10,%r0
	stxvx %vs5,%r12,%r0
	lxvx %vs6,%r10,%r11
	stxvx %vs6,%r12,%r11
	lxvx %vs7,%r10,%r6
	stxvx %vs7,%r12,%r6
	bdnz .L1515
.L1641:
	andi. %r9,%r2,0xf
	rlwinm %r7,%r2,0,0,27
	beqlr %cr0
.L1514:
	subf %r12,%r7,%r2
	rldicl %r5,%r7,0,32
	cmplwi %cr6,%r12,16
	rldicl %r2,%r12,0,32
	li %r10,16
	add %r8,%r5,%r8
	isel %r9,%r10,%r2,25
	add %r4,%r4,%r8
	sldi %r7,%r9,56
	add %r3,%r3,%r8
	lxvl %vs8,%r4,%r7
	stxvl %vs8,%r3,%r7
	blr
	.p2align 4,,15
.L1670:
	cmpdi %cr5,%r5,0
	addi %r11,%r5,-1
	rldicl %r2,%r11,0,32
	beqlr %cr5
	cmplwi %cr6,%r11,14
	ble %cr6,.L1519
	addi %r0,%r2,-1
	add %r6,%r3,%r2
	add %r7,%r4,%r0
	subf %r8,%r7,%r6
	addi %r12,%r8,14
	cmpldi %cr7,%r12,14
	ble %cr7,.L1519
	srdi %r7,%r5,4
	addi %r9,%r2,-15
	andi. %r6,%r7,0x3
	add %r10,%r4,%r9
	add %r2,%r3,%r9
	addi %r0,%r7,-1
	mr %r8,%r7
	li %r12,0
	beq %cr0,.L1597
	cmpdi %cr1,%r6,1
	beq %cr1,.L1605
	cmpdi %cr5,%r6,2
	bne %cr5,.L1673
.L1606:
	lxvx %vs1,%r10,%r12
	addi %r7,%r7,-1
	stxvx %vs1,%r2,%r12
	addi %r12,%r12,-16
.L1605:
	lxvx %vs2,%r10,%r12
	cmpdi %cr6,%r7,1
	stxvx %vs2,%r2,%r12
	addi %r12,%r12,-16
	beq %cr6,.L1643
.L1597:
	srdi %r9,%r8,2
	mtctr %r9
.L1520:
	lxvx %vs3,%r10,%r12
	addi %r0,%r12,-16
	addi %r6,%r12,-32
	addi %r8,%r12,-48
	stxvx %vs3,%r2,%r12
	addi %r12,%r12,-64
	lxvx %vs4,%r10,%r0
	stxvx %vs4,%r2,%r0
	lxvx %vs5,%r10,%r6
	stxvx %vs5,%r2,%r6
	lxvx %vs6,%r10,%r8
	stxvx %vs6,%r2,%r8
	bdnz .L1520
.L1643:
	andi. %r2,%r5,0xf
	rlwinm %r5,%r5,0,0,27
	subf %r11,%r5,%r11
	beqlr %cr0
	rldicl %r7,%r11,0,32
	cmpwi %cr7,%r11,0
	addi %r2,%r11,-1
	lbzx %r10,%r4,%r7
	rldicl %r12,%r2,0,32
	stbx %r10,%r3,%r7
	beqlr %cr7
	cmpdi %cr1,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-2
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr1
	cmpdi %cr5,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-3
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr5
	cmpdi %cr6,%r7,0
	lbzx %r2,%r4,%r7
	addi %r10,%r11,-4
	rldicl %r12,%r10,0,32
	stbx %r2,%r3,%r7
	beqlr %cr6
	cmpdi %cr0,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-5
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr0
	cmpdi %cr7,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-6
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr7
	cmpdi %cr1,%r7,0
	lbzx %r10,%r4,%r7
	addi %r2,%r11,-7
	rldicl %r12,%r2,0,32
	stbx %r10,%r3,%r7
	beqlr %cr1
	cmpdi %cr5,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-8
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr5
	cmpdi %cr6,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-9
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr6
	cmpdi %cr0,%r7,0
	lbzx %r10,%r4,%r7
	addi %r2,%r11,-10
	rldicl %r12,%r2,0,32
	stbx %r10,%r3,%r7
	beqlr %cr0
	cmpdi %cr7,%r12,0
	lbzx %r0,%r4,%r12
	addi %r9,%r11,-11
	rldicl %r8,%r9,0,32
	stbx %r0,%r3,%r12
	beqlr %cr7
	cmpdi %cr1,%r8,0
	lbzx %r6,%r4,%r8
	addi %r5,%r11,-12
	rldicl %r7,%r5,0,32
	stbx %r6,%r3,%r8
	beqlr %cr1
	cmpdi %cr5,%r7,0
	lbzx %r2,%r4,%r7
	addi %r10,%r11,-13
	rldicl %r12,%r10,0,32
	stbx %r2,%r3,%r7
	beqlr %cr5
	cmpdi %cr6,%r12,0
	lbzx %r0,%r4,%r12
	addi %r11,%r11,-14
	rldicl %r8,%r11,0,32
	stbx %r0,%r3,%r12
	beqlr %cr6
	lbzx %r4,%r4,%r8
	stbx %r4,%r3,%r8
	blr
	.p2align 4,,15
.L1671:
	lxv %vs7,0(%r4)
	mr %r6,%r0
	li %r8,16
	stxv %vs7,0(%r3)
	b .L1602
	.p2align 4,,15
.L1672:
	lxv %vs1,0(%r10)
	mr %r5,%r0
	li %r9,16
	stxv %vs1,0(%r12)
	b .L1604
.L1525:
	li %r9,0
	b .L1508
.L1526:
	li %r7,0
	b .L1514
	.p2align 4,,15
.L1513:
	rldicl %r6,%r2,0,32
	addi %r0,%r8,-1
	andi. %r9,%r6,0x1
	add %r4,%r4,%r0
	add %r8,%r3,%r0
	addi %r11,%r6,-1
	beq %cr0,.L1566
	lbzu %r12,1(%r4)
	cmpdi %cr7,%r11,0
	stbu %r12,1(%r8)
	beqlr %cr7
.L1566:
	srdi %r2,%r6,1
	mtctr %r2
	cmpdi %cr1,%r2,2
	ble %cr1,.L1659
	addi %r2,%r2,-1
	mtctr %r2
	lbz %r10,1(%r4)
	stb %r10,1(%r8)
	addi %r9,%r4,1
	lbz %r10,1(%r9)
	addi %r2,%r8,1
	stb %r10,1(%r2)
.L1517:
	lbz %r10,2(%r9)
	stb %r10,2(%r2)
	addi %r9,%r9,2
	lbz %r10,1(%r9)
	addi %r2,%r2,2
	stb %r10,1(%r2)
	bdnz .L1517
.L1500:
	blr
	.p2align 4,,15
.L1659:
	lbz %r5,1(%r4)
	mr %r10,%r4
	mr %r2,%r8
	addi %r4,%r4,2
	addi %r8,%r8,2
	stb %r5,-1(%r8)
	lbz %r9,2(%r10)
	stb %r9,2(%r2)
	bdnz .L1659
	blr
	.p2align 4,,15
.L1507:
	andi. %r9,%r10,0x1
	addi %r8,%r4,-4
	addi %r12,%r10,-1
	addi %r9,%r3,-4
	beq %cr0,.L1578
	cmpdi %cr7,%r12,0
	lwz %r6,0(%r4)
	mr %r8,%r4
	mr %r9,%r3
	stw %r6,0(%r3)
	beq %cr7,.L1503
.L1578:
	srdi %r10,%r10,1
	mtctr %r10
	cmpdi %cr1,%r10,2
	ble %cr1,.L1660
	addi %r10,%r10,-1
	mtctr %r10
	lwz %r6,4(%r8)
	stw %r6,4(%r9)
	addi %r7,%r8,4
	lwz %r6,4(%r7)
	addi %r10,%r9,4
	stw %r6,4(%r10)
.L1511:
	lwz %r6,8(%r7)
	stw %r6,8(%r10)
	addi %r7,%r7,8
	lwz %r6,4(%r7)
	addi %r10,%r10,8
	stw %r6,4(%r10)
	bdnz .L1511
	b .L1503
	.p2align 4,,15
.L1660:
	lwz %r0,4(%r8)
	mr %r7,%r8
	mr %r10,%r9
	addi %r8,%r8,8
	addi %r9,%r9,8
	stw %r0,-4(%r9)
	lwz %r11,8(%r7)
	stw %r11,8(%r10)
	bdnz .L1660
	b .L1503
.L1673:
	lxv %vs0,0(%r10)
	mr %r7,%r0
	li %r12,-16
	stxv %vs0,0(%r2)
	b .L1606
.L1519:
	andi. %r9,%r5,0x1
	addi %r9,%r2,1
	add %r2,%r3,%r9
	add %r4,%r4,%r9
	addi %r3,%r5,-1
	beq %cr0,.L1590
	lbzu %r6,-1(%r4)
	cmpdi %cr7,%r3,0
	stbu %r6,-1(%r2)
	beqlr %cr7
.L1590:
	srdi %r9,%r5,1
	mtctr %r9
	cmpdi %cr1,%r9,2
	ble %cr1,.L1661
	addi %r9,%r9,-1
	mtctr %r9
	lbz %r8,-1(%r4)
	stb %r8,-1(%r2)
	addi %r10,%r4,-1
	lbz %r8,-1(%r10)
	addi %r9,%r2,-1
	stb %r8,-1(%r9)
.L1523:
	addi %r4,%r10,-1
	lbz %r8,-1(%r4)
	stb %r8,-2(%r9)
	addi %r10,%r4,-1
	lbz %r8,-1(%r10)
	addi %r9,%r9,-2
	stb %r8,-1(%r9)
	bdnz .L1523
	blr
.L1661:
	lbz %r5,-1(%r4)
	mr %r7,%r4
	mr %r10,%r2
	addi %r4,%r4,-2
	addi %r2,%r2,-2
	stb %r5,1(%r2)
	lbz %r12,-2(%r7)
	stb %r12,-2(%r10)
	bdnz .L1661
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	.localentry	__modi,1
	divw %r2,%r3,%r4
	mullw %r0,%r2,%r4
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
	.localentry	__uitod,1
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
	.localentry	__uitof,1
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
	.localentry	__ulltod,1
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
	.localentry	__ulltof,1
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
	.localentry	__umodi,1
	divwu %r2,%r3,%r4
	mullw %r0,%r2,%r4
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
	.localentry	__clzhi2,1
	srdi. %r2,%r3,15
	bne %cr0,.L1683
	srawi %r0,%r3,14
	cmpwi %cr1,%r0,0
	bne %cr1,.L1682
	srdi. %r2,%r3,13
	bne %cr0,.L1684
	srdi. %r2,%r3,12
	bne %cr0,.L1685
	srdi. %r2,%r3,11
	bne %cr0,.L1686
	srdi. %r2,%r3,10
	bne %cr0,.L1687
	srdi. %r2,%r3,9
	bne %cr0,.L1688
	srdi. %r2,%r3,8
	bne %cr0,.L1689
	srdi. %r2,%r3,7
	bne %cr0,.L1690
	srdi. %r2,%r3,6
	bne %cr0,.L1691
	srdi. %r2,%r3,5
	bne %cr0,.L1692
	srdi. %r2,%r3,4
	bne %cr0,.L1693
	srdi. %r2,%r3,3
	bne %cr0,.L1694
	srdi. %r2,%r3,2
	bne %cr0,.L1695
	srdi. %r2,%r3,1
	bne %cr0,.L1696
	cmpdi %cr5,%r3,0
	li %r2,16
	li %r9,15
	isel %r0,%r2,%r9,22
.L1682:
	rldicl %r3,%r0,0,59
	blr
.L1683:
	li %r0,0
	b .L1682
.L1694:
	li %r0,12
	b .L1682
.L1684:
	li %r0,2
	b .L1682
.L1685:
	li %r0,3
	b .L1682
.L1686:
	li %r0,4
	b .L1682
.L1687:
	li %r0,5
	b .L1682
.L1688:
	li %r0,6
	b .L1682
.L1689:
	li %r0,7
	b .L1682
.L1690:
	li %r0,8
	b .L1682
.L1691:
	li %r0,9
	b .L1682
.L1692:
	li %r0,10
	b .L1682
.L1693:
	li %r0,11
	b .L1682
.L1695:
	li %r0,13
	b .L1682
.L1696:
	li %r0,14
	b .L1682
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
	.localentry	__ctzhi2,1
	andi. %r2,%r3,0x1
	bne %cr0,.L1701
	andi. %r2,%r3,0x2
	bne %cr0,.L1702
	andi. %r2,%r3,0x4
	bne %cr0,.L1703
	andi. %r2,%r3,0x8
	bne %cr0,.L1704
	andi. %r2,%r3,0x10
	bne %cr0,.L1705
	andi. %r2,%r3,0x20
	bne %cr0,.L1706
	andi. %r2,%r3,0x40
	bne %cr0,.L1707
	andi. %r2,%r3,0x80
	bne %cr0,.L1708
	andi. %r2,%r3,0x100
	bne %cr0,.L1709
	andi. %r2,%r3,0x200
	bne %cr0,.L1710
	andi. %r2,%r3,0x400
	bne %cr0,.L1711
	andi. %r2,%r3,0x800
	bne %cr0,.L1712
	andi. %r2,%r3,0x1000
	bne %cr0,.L1713
	andi. %r2,%r3,0x2000
	bne %cr0,.L1714
	andi. %r2,%r3,0x4000
	bne %cr0,.L1715
	srdi. %r3,%r3,15
	setbc %r3,2
	addi %r0,%r3,15
.L1700:
	rldicl %r3,%r0,0,59
	blr
.L1701:
	li %r0,0
	b .L1700
.L1702:
	li %r0,1
	b .L1700
.L1713:
	li %r0,12
	b .L1700
.L1703:
	li %r0,2
	b .L1700
.L1704:
	li %r0,3
	b .L1700
.L1705:
	li %r0,4
	b .L1700
.L1706:
	li %r0,5
	b .L1700
.L1707:
	li %r0,6
	b .L1700
.L1708:
	li %r0,7
	b .L1700
.L1709:
	li %r0,8
	b .L1700
.L1710:
	li %r0,9
	b .L1700
.L1711:
	li %r0,10
	b .L1700
.L1712:
	li %r0,11
	b .L1700
.L1714:
	li %r0,13
	b .L1700
.L1715:
	li %r0,14
	b .L1700
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
	.localentry	__fixunssfsi,1
	xxspltidp %vs0,1191182336
	fcmpu %cr0,%f1,%f0
	cror 2,0,3
	bne %cr0,.L1723
	fctidz %f1,%f1
	mfvsrd %r3,%vs1
	blr
	.p2align 4,,15
.L1723:
	fsubs %f2,%f1,%f0
	fctidz %f3,%f2
	mfvsrd %r3,%vs3
	paddi %r3,%r3,32768
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
	.localentry	__parityhi2,1
	mfvrsave %r11
	oris %r0,%r11,0xc03c
	stw %r11,-4(%r1)
	mtvrsave %r0
	plxv %vs45,.LC7@pcrel
	vspltisw %v11,1
	xxspltib %vs0,0
	plxv %vs44,.LC8@pcrel
	plxv %vs42,.LC10@pcrel
	mtvsrws %vs32,%r3
	li %r2,0
	plxv %vs33,.LC9@pcrel
	lwz %r12,-4(%r1)
	vsraw %v13,%v0,%v13
	vsraw %v12,%v0,%v12
	vsraw %v1,%v0,%v1
	vsraw %v0,%v0,%v10
	xxland %vs42,%vs45,%vs43
	xxland %vs45,%vs44,%vs43
	xxland %vs44,%vs33,%vs43
	xxland %vs43,%vs32,%vs43
	vadduwm %v1,%v10,%v13
	vadduwm %v0,%v12,%v1
	vadduwm %v10,%v11,%v0
	xxsldwi %vs45,%vs0,%vs42,2
	vadduwm %v12,%v13,%v10
	xxsldwi %vs43,%vs0,%vs44,3
	vadduwm %v1,%v11,%v12
	vextuwrx %r3,%r2,%v1
	rldicl %r3,%r3,0,63
	mtvrsave %r12
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
	.localentry	__popcounthi2,1
	mfvrsave %r11
	oris %r0,%r11,0xc03c
	stw %r11,-4(%r1)
	mtvrsave %r0
	plxv %vs45,.LC7@pcrel
	vspltisw %v11,1
	xxspltib %vs0,0
	plxv %vs44,.LC8@pcrel
	plxv %vs42,.LC10@pcrel
	mtvsrws %vs32,%r3
	li %r2,0
	plxv %vs33,.LC9@pcrel
	lwz %r12,-4(%r1)
	vsraw %v13,%v0,%v13
	vsraw %v12,%v0,%v12
	vsraw %v1,%v0,%v1
	vsraw %v0,%v0,%v10
	xxland %vs42,%vs45,%vs43
	xxland %vs45,%vs44,%vs43
	xxland %vs44,%vs33,%vs43
	xxland %vs43,%vs32,%vs43
	vadduwm %v1,%v10,%v13
	vadduwm %v0,%v12,%v1
	vadduwm %v10,%v11,%v0
	xxsldwi %vs45,%vs0,%vs42,2
	vadduwm %v12,%v13,%v10
	xxsldwi %vs43,%vs0,%vs44,3
	vadduwm %v1,%v11,%v12
	vextuwrx %r3,%r2,%v1
	extsw %r3,%r3
	mtvrsave %r12
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
	.localentry	__mulsi3_iq2000,1
	mr. %r9,%r3
	li %r3,0
	beq %cr0,.L1729
	.p2align 5
.L1730:
	rlwinm %r2,%r9,0,31,31
	srwi %r9,%r9,1
	cmpwi %cr1,%r9,0
	neg %r0,%r2
	and %r5,%r0,%r4
	slwi %r4,%r4,1
	add %r3,%r3,%r5
	bne %cr1,.L1730
.L1729:
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
	.localentry	__mulsi3_lm32,1
	mr. %r9,%r3
	li %r3,0
	beq %cr0,.L1734
	cmpdi %cr1,%r4,0
	beq %cr1,.L1734
	.p2align 5
.L1735:
	rlwinm %r2,%r4,0,31,31
	srdi. %r4,%r4,1
	neg %r0,%r2
	and %r5,%r0,%r9
	add %r3,%r3,%r5
	rldic %r9,%r9,1,32
	bne %cr0,.L1735
.L1734:
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
	.localentry	__udivmodsi4,1
	cmplw %cr0,%r4,%r3
	li %r10,16
	mtctr %r10
	li %r6,32
	li %r2,1
	blt %cr0,.L1740
	b .L1761
	.p2align 4,,15
.L1744:
	rldicl %r4,%r0,0,32
	slwi %r2,%r2,1
	ble %cr7,.L1742
	cmpwi %cr5,%r4,0
	slwi %r7,%r4,1
	cmplw %cr6,%r3,%r7
	blt %cr5,.L1745
	rldicl %r4,%r7,0,32
	slwi %r2,%r2,1
	ble %cr6,.L1742
	bdz .L1743
.L1740:
	cmpwi %cr1,%r4,0
	slwi %r0,%r4,1
	addi %r9,%r6,-1
	cmplw %cr7,%r3,%r0
	addi %r6,%r9,-1
	bge %cr1,.L1744
.L1745:
	li %r6,0
	li %r11,0
	.p2align 4,,15
.L1746:
	cmplw %cr1,%r3,%r4
	subf %r8,%r4,%r3
	srdi %r4,%r4,1
	setbcr %r12,4
	cmpwi %cr5,%r12,0
	isel %r10,%r11,%r2,22
	srwi %r2,%r2,1
	cmpwi %cr7,%r2,0
	isel %r3,%r3,%r8,22
	or %r6,%r6,%r10
	rldicl %r3,%r3,0,32
	bne %cr7,.L1746
.L1743:
	cmpdi %cr6,%r5,0
	isel %r5,%r6,%r3,26
	rldicl %r3,%r5,0,32
	blr
	.p2align 4,,15
.L1742:
	cmpwi %cr0,%r2,0
	bne %cr0,.L1745
	li %r6,0
	b .L1743
	.p2align 4,,15
.L1761:
	subf %r4,%r4,%r3
	setbcr %r6,1
	isel %r3,%r3,%r4,1
	rldicl %r3,%r3,0,32
	b .L1743
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
	.localentry	__mspabi_cmpf,1
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	blt %cr0,.L1765
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1765:
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
	.localentry	__mspabi_cmpd,1
	fcmpu %cr0,%f1,%f2
	li %r3,-1
	blt %cr0,.L1768
	mfcr %r3,128
	rlwinm %r3,%r3,2,1
.L1768:
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
	.localentry	__mspabi_mpysll,1
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
	.localentry	__mspabi_mpyull,1
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
	.localentry	__mulhi3,1
	cmpwi %cr0,%r4,0
	blt %cr0,.L1785
	cmpdi %cr1,%r4,0
	beq %cr1,.L1778
	li %r7,0
.L1774:
	li %r9,32
	li %r10,0
	b .L1777
	.p2align 4,,15
.L1786:
	beq %cr7,.L1776
.L1777:
	rlwinm %r2,%r4,0,31,31
	addi %r9,%r9,-1
	sradi. %r4,%r4,1
	neg %r0,%r2
	and %r6,%r0,%r3
	rlwinm %r8,%r9,0,0xff
	slwi %r5,%r3,1
	cmpwi %cr7,%r8,0
	extsw %r3,%r5
	add %r10,%r10,%r6
	bne %cr0,.L1786
.L1776:
	cmpwi %cr5,%r7,0
	neg %r11,%r10
	isel %r3,%r10,%r11,22
.L1775:
	extsw %r3,%r3
	blr
	.p2align 4,,15
.L1785:
	neg %r4,%r4
	li %r7,1
	extsw %r4,%r4
	b .L1774
.L1778:
	li %r3,0
	b .L1775
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
	.localentry	__divsi3,1
	cmpdi %cr0,%r3,0
	li %r2,1
	li %r6,0
	bge %cr0,.L1788
	neg %r3,%r3
	li %r2,0
	li %r6,1
.L1788:
	cmpdi %cr1,%r4,0
	bge %cr1,.L1789
	neg %r4,%r4
	mr %r6,%r2
.L1789:
	cmplw %cr5,%r3,%r4
	li %r9,16
	mtctr %r9
	li %r5,1
	bgt %cr5,.L1790
	b .L1815
	.p2align 4,,15
.L1794:
	slwi %r4,%r4,1
	slwi %r5,%r5,1
	cmplw %cr0,%r3,%r4
	cmpwi %cr7,%r4,0
	ble %cr0,.L1792
	blt %cr7,.L1811
	slwi %r4,%r4,1
	slwi %r5,%r5,1
	cmplw %cr0,%r3,%r4
	ble %cr0,.L1792
	bdz .L1802
.L1790:
	cmpwi %cr6,%r4,0
	bge %cr6,.L1794
.L1811:
	cmplw %cr0,%r3,%r4
	b .L1795
	.p2align 4,,15
.L1792:
	cmpwi %cr1,%r5,0
	beq %cr1,.L1802
.L1795:
	li %r0,0
	li %r7,0
	.p2align 4,,15
.L1796:
	setbcr %r8,0
	subf %r10,%r4,%r3
	cmpwi %cr5,%r8,0
	srwi %r4,%r4,1
	isel %r11,%r7,%r5,22
	srwi %r5,%r5,1
	cmpwi %cr6,%r5,0
	isel %r3,%r3,%r10,22
	cmplw %cr0,%r3,%r4
	or %r0,%r0,%r11
	bne %cr6,.L1796
.L1798:
	rldicl %r3,%r0,0,32
	cmpwi %cr7,%r6,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
	.p2align 4,,15
.L1802:
	cmpwi %cr7,%r6,0
	li %r3,0
	neg %r4,%r3
	isel %r3,%r3,%r4,30
	blr
.L1815:
	setbcr %r0,20
	b .L1798
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
	.localentry	__modsi3,1
	cmpdi %cr0,%r3,0
	li %r7,0
	bge %cr0,.L1820
	neg %r3,%r3
	li %r7,1
.L1820:
	sradi %r8,%r4,63
	li %r2,16
	mtctr %r2
	xor %r4,%r8,%r4
	subf %r0,%r8,%r4
	mr %r10,%r3
	cmplw %cr1,%r3,%r0
	li %r9,1
	mr %r6,%r0
	bgt %cr1,.L1821
	b .L1847
	.p2align 4,,15
.L1825:
	slwi %r6,%r6,1
	slwi %r9,%r9,1
	cmplw %cr6,%r10,%r6
	cmpwi %cr7,%r6,0
	ble %cr6,.L1823
	blt %cr7,.L1844
	slwi %r6,%r6,1
	slwi %r9,%r9,1
	cmplw %cr6,%r10,%r6
	ble %cr6,.L1823
	bdz .L1824
.L1821:
	cmpwi %cr5,%r6,0
	bge %cr5,.L1825
.L1844:
	srwi %r9,%r9,1
	cmplw %cr6,%r10,%r6
	cmpwi %cr1,%r9,0
	subf %r3,%r6,%r10
	isel %r10,%r10,%r3,24
	srwi %r6,%r6,1
	cmplw %cr6,%r10,%r6
	bne %cr1,.L1848
.L1824:
	rldicl %r11,%r10,0,32
	cmpwi %cr5,%r7,0
	neg %r12,%r11
	isel %r3,%r11,%r12,22
	blr
	.p2align 4,,15
.L1823:
	cmpwi %cr0,%r9,0
	beq %cr0,.L1824
	.p2align 5
.L1848:
	srwi %r9,%r9,1
	subf %r3,%r6,%r10
	cmpwi %cr1,%r9,0
	isel %r10,%r10,%r3,24
	srwi %r6,%r6,1
	cmplw %cr6,%r10,%r6
	bne %cr1,.L1848
	rldicl %r11,%r10,0,32
	cmpwi %cr5,%r7,0
	neg %r12,%r11
	isel %r3,%r11,%r12,22
	blr
.L1847:
	subf %r5,%r0,%r3
	isel %r10,%r3,%r5,4
	b .L1824
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
	.localentry	__udivmodhi4,1
	cmplw %cr0,%r4,%r3
	bge %cr0,.L2021
	andi. %r2,%r4,0x8000
	bne %cr0,.L1856
	rldic %r11,%r4,1,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1929
	andi. %r9,%r11,0x8000
	bne %cr0,.L1929
	rldic %r11,%r4,2,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1931
	andi. %r9,%r11,0x8000
	bne %cr0,.L1931
	rldic %r11,%r4,3,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1933
	andi. %r9,%r11,0x8000
	bne %cr0,.L1933
	rldic %r11,%r4,4,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1935
	andi. %r9,%r11,0x8000
	bne %cr0,.L1935
	rldic %r11,%r4,5,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1937
	andi. %r9,%r11,0x8000
	bne %cr0,.L1937
	rldic %r11,%r4,6,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1939
	andi. %r9,%r11,0x8000
	bne %cr0,.L1939
	rldic %r11,%r4,7,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1941
	andi. %r9,%r11,0x8000
	bne %cr0,.L1941
	rldic %r11,%r4,8,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1943
	andi. %r9,%r11,0x8000
	bne %cr0,.L1943
	rldic %r11,%r4,9,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1945
	andi. %r9,%r11,0x8000
	bne %cr0,.L1945
	rldic %r11,%r4,10,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1947
	andi. %r9,%r11,0x8000
	bne %cr0,.L1947
	rldic %r11,%r4,11,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1949
	andi. %r9,%r11,0x8000
	bne %cr0,.L1949
	rldic %r11,%r4,12,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1951
	andi. %r9,%r11,0x8000
	bne %cr0,.L1951
	rldic %r11,%r4,13,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1953
	andi. %r9,%r11,0x8000
	bne %cr0,.L1953
	rldic %r11,%r4,14,48
	cmplw %cr7,%r3,%r11
	ble %cr7,.L1955
	andi. %r9,%r11,0x8000
	bne %cr0,.L1955
	rldic %r6,%r4,15,48
	cmplw %cr1,%r3,%r6
	ble %cr1,.L1956
	cmpdi %cr5,%r6,0
	cmplwi %cr7,%r3,32768
	pli %r10,32768
	pli %r11,32768
	li %r7,0
	bne %cr5,.L1858
.L1859:
	cmpdi %cr0,%r5,0
	beq %cr0,.L1918
	mr %r7,%r3
.L1918:
	rlwinm %r3,%r7,0,0xffff
	blr
.L1929:
	li %r10,2
	.p2align 4,,15
.L1858:
	subf %r9,%r11,%r3
	li %r12,0
	rlwinm %r8,%r9,0,0xffff
	isel %r3,%r3,%r8,28
	blt %cr7,.L1927
	mr %r12,%r10
.L1927:
	srdi %r4,%r11,1
	rldicl %r2,%r10,63,49
	cmplw %cr6,%r3,%r4
	subf %r0,%r4,%r3
	mtvsrwz %vs0,%r2
	rlwinm %r7,%r0,0,0xffff
	li %r6,0
	isel %r3,%r3,%r7,24
	blt %cr6,.L1863
	mfvsrwz %r6,%vs0
.L1863:
	srwi %r4,%r10,2
	or %r9,%r6,%r12
	cmpwi %cr7,%r4,0
	mr %r7,%r9
	srdi %r8,%r11,2
	beq %cr7,.L1859
	cmplw %cr0,%r3,%r8
	subf %r12,%r8,%r3
	rlwinm %r2,%r12,0,0xffff
	li %r7,0
	setbcr %r0,0
	cmpwi %cr1,%r0,0
	isel %r3,%r3,%r2,6
	beq %cr1,.L1867
	mr %r7,%r4
.L1867:
	srwi %r4,%r10,3
	or %r9,%r9,%r7
	cmpwi %cr5,%r4,0
	mr %r7,%r9
	srdi %r6,%r11,3
	beq %cr5,.L1859
	cmplw %cr6,%r3,%r6
	subf %r8,%r6,%r3
	rlwinm %r12,%r8,0,0xffff
	li %r0,0
	setbcr %r2,24
	cmpwi %cr7,%r2,0
	isel %r3,%r3,%r12,30
	beq %cr7,.L1871
	mr %r0,%r4
.L1871:
	srwi %r4,%r10,4
	or %r9,%r9,%r0
	cmpwi %cr0,%r4,0
	mr %r7,%r9
	srdi %r6,%r11,4
	beq %cr0,.L1859
	cmplw %cr1,%r3,%r6
	subf %r7,%r6,%r3
	rlwinm %r8,%r7,0,0xffff
	li %r2,0
	setbcr %r12,4
	cmpwi %cr5,%r12,0
	isel %r3,%r3,%r8,22
	beq %cr5,.L1875
	mr %r2,%r4
.L1875:
	srwi %r4,%r10,5
	or %r0,%r9,%r2
	cmpwi %cr6,%r4,0
	mr %r7,%r0
	srdi %r9,%r11,5
	beq %cr6,.L1859
	cmplw %cr7,%r3,%r9
	subf %r6,%r9,%r3
	rlwinm %r8,%r6,0,0xffff
	li %r7,0
	setbcr %r12,28
	cmpwi %cr0,%r12,0
	isel %r3,%r3,%r8,2
	beq %cr0,.L1879
	mr %r7,%r4
.L1879:
	srwi %r4,%r10,6
	or %r2,%r0,%r7
	cmpwi %cr1,%r4,0
	mr %r7,%r2
	srdi %r0,%r11,6
	beq %cr1,.L1859
	cmplw %cr5,%r3,%r0
	subf %r9,%r0,%r3
	rlwinm %r8,%r9,0,0xffff
	li %r12,0
	setbcr %r6,20
	cmpwi %cr6,%r6,0
	isel %r3,%r3,%r8,26
	beq %cr6,.L1883
	mr %r12,%r4
.L1883:
	srwi %r4,%r10,7
	or %r2,%r2,%r12
	cmpwi %cr7,%r4,0
	mr %r7,%r2
	srdi %r0,%r11,7
	beq %cr7,.L1859
	cmplw %cr0,%r3,%r0
	subf %r7,%r0,%r3
	rlwinm %r9,%r7,0,0xffff
	li %r6,0
	setbcr %r8,0
	cmpwi %cr1,%r8,0
	isel %r3,%r3,%r9,6
	bne %cr1,.L2022
.L1887:
	srwi %r4,%r10,8
	or %r12,%r2,%r6
	cmpwi %cr5,%r4,0
	mr %r7,%r12
	srdi %r2,%r11,8
	beq %cr5,.L1859
	cmplw %cr6,%r3,%r2
	subf %r0,%r2,%r3
	rlwinm %r9,%r0,0,0xffff
	li %r7,0
	setbcr %r8,24
	cmpwi %cr7,%r8,0
	isel %r3,%r3,%r9,30
	bne %cr7,.L2023
.L1891:
	srwi %r4,%r10,9
	or %r12,%r12,%r7
	cmpwi %cr0,%r4,0
	mr %r7,%r12
	srdi %r6,%r11,9
	beq %cr0,.L1859
	cmplw %cr1,%r3,%r6
	subf %r2,%r6,%r3
	rlwinm %r0,%r2,0,0xffff
	li %r7,0
	setbcr %r9,4
	cmpwi %cr5,%r9,0
	isel %r3,%r3,%r0,22
	bne %cr5,.L2024
.L1895:
	srwi %r4,%r10,10
	or %r12,%r12,%r7
	cmpwi %cr6,%r4,0
	mr %r7,%r12
	srdi %r8,%r11,10
	beq %cr6,.L1859
	cmplw %cr7,%r3,%r8
	subf %r6,%r8,%r3
	rlwinm %r2,%r6,0,0xffff
	li %r9,0
	setbcr %r0,28
	cmpwi %cr0,%r0,0
	isel %r3,%r3,%r2,2
	bne %cr0,.L2025
.L1899:
	srwi %r4,%r10,11
	or %r12,%r12,%r9
	cmpwi %cr1,%r4,0
	mr %r7,%r12
	srdi %r8,%r11,11
	beq %cr1,.L1859
	cmplw %cr5,%r3,%r8
	subf %r7,%r8,%r3
	rlwinm %r2,%r7,0,0xffff
	li %r0,0
	setbcr %r6,20
	cmpwi %cr6,%r6,0
	isel %r3,%r3,%r2,26
	bne %cr6,.L2026
.L1903:
	srwi %r4,%r10,12
	or %r9,%r12,%r0
	cmpwi %cr7,%r4,0
	mr %r7,%r9
	srdi %r12,%r11,12
	beq %cr7,.L1859
	cmplw %cr0,%r3,%r12
	subf %r8,%r12,%r3
	rlwinm %r2,%r8,0,0xffff
	li %r7,0
	setbcr %r6,0
	cmpwi %cr1,%r6,0
	isel %r3,%r3,%r2,6
	bne %cr1,.L2027
	srwi %r4,%r10,13
	or %r0,%r9,%r7
	cmpwi %cr5,%r4,0
	mr %r7,%r0
	srdi %r9,%r11,13
	beq %cr5,.L1859
.L2028:
	cmplw %cr6,%r3,%r9
	subf %r12,%r9,%r3
	rlwinm %r8,%r12,0,0xffff
	li %r6,0
	setbcr %r2,24
	cmpwi %cr7,%r2,0
	isel %r3,%r3,%r8,30
	beq %cr7,.L1911
	mr %r6,%r4
.L1911:
	srwi %r4,%r10,14
	or %r0,%r0,%r6
	cmpwi %cr0,%r4,0
	mr %r7,%r0
	srdi %r9,%r11,14
	beq %cr0,.L1859
	cmplw %cr1,%r3,%r9
	subf %r7,%r9,%r3
	rlwinm %r12,%r7,0,0xffff
	li %r2,0
	setbcr %r8,4
	cmpwi %cr5,%r8,0
	isel %r3,%r3,%r12,22
	beq %cr5,.L1915
	mr %r2,%r4
.L1915:
	cmpwi %cr6,%r10,16384
	or %r10,%r0,%r2
	srdi %r11,%r11,15
	mr %r7,%r10
	beq %cr6,.L1859
	cmplw %cr7,%r3,%r11
	subf %r6,%r11,%r3
	rlwinm %r0,%r6,0,0xffff
	setbcr %r4,28
	isel %r3,%r3,%r0,28
	or %r7,%r10,%r4
	b .L1859
	.p2align 4,,15
.L2022:
	mr %r6,%r4
	b .L1887
	.p2align 4,,15
.L2023:
	mr %r7,%r4
	b .L1891
	.p2align 4,,15
.L2024:
	mr %r7,%r4
	b .L1895
	.p2align 4,,15
.L2025:
	mr %r9,%r4
	b .L1899
	.p2align 4,,15
.L2026:
	mr %r0,%r4
	b .L1903
	.p2align 4,,15
.L2027:
	mr %r7,%r4
	srwi %r4,%r10,13
	cmpwi %cr5,%r4,0
	or %r0,%r9,%r7
	mr %r7,%r0
	srdi %r9,%r11,13
	bne %cr5,.L2028
	b .L1859
.L1931:
	li %r10,4
	b .L1858
.L1933:
	li %r10,8
	b .L1858
.L1935:
	li %r10,16
	b .L1858
.L1945:
	li %r10,512
	b .L1858
.L1937:
	li %r10,32
	b .L1858
.L1939:
	li %r10,64
	b .L1858
.L1941:
	li %r10,128
	b .L1858
.L1943:
	li %r10,256
	b .L1858
.L2021:
	subf %r2,%r4,%r3
	setbc %r7,2
	rlwinm %r4,%r2,0,0xffff
	isel %r3,%r4,%r3,2
	b .L1859
.L1947:
	li %r10,1024
	b .L1858
.L1949:
	li %r10,2048
	b .L1858
.L1951:
	li %r10,4096
	b .L1858
.L1953:
	li %r10,8192
	b .L1858
.L1955:
	li %r10,16384
	b .L1858
.L1956:
	cmplwi %cr7,%r3,32768
	pli %r11,32768
	pli %r10,32768
	b .L1858
.L1856:
	subf %r0,%r4,%r3
	li %r7,1
	rlwinm %r3,%r0,0,0xffff
	b .L1859
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
	.localentry	__udivmodsi4_libgcc,1
	cmpld %cr0,%r4,%r3
	li %r9,64
	mtctr %r9
	li %r2,1
	blt %cr0,.L2030
	b .L2052
	.p2align 4,,15
.L2034:
	sldi %r4,%r4,1
	sldi %r2,%r2,1
	cmpld %cr7,%r3,%r4
	ble %cr7,.L2032
	bdz .L2033
.L2030:
	andis. %r6,%r4,0x8000
	beq %cr0,.L2034
	cmpld %cr7,%r3,%r4
.L2035:
	li %r6,0
	li %r7,0
	.p2align 4,,15
.L2036:
	setbcr %r10,28
	subf %r8,%r4,%r3
	cmpwi %cr5,%r10,0
	srdi %r4,%r4,1
	isel %r0,%r7,%r2,22
	isel %r3,%r3,%r8,22
	srdi. %r2,%r2,1
	cmpld %cr7,%r3,%r4
	or %r6,%r6,%r0
	bne %cr0,.L2036
.L2033:
	cmpdi %cr6,%r5,0
	isel %r3,%r6,%r3,26
	blr
	.p2align 4,,15
.L2032:
	cmpdi %cr1,%r2,0
	bne %cr1,.L2035
	b .L2033
	.p2align 4,,15
.L2052:
	subf %r4,%r4,%r3
	setbcr %r6,1
	isel %r3,%r3,%r4,1
	b .L2033
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
	.localentry	__ashldi3,1
	andi. %r2,%r4,0x20
	mr %r9,%r3
	beq %cr0,.L2056
	addi %r4,%r4,-32
	li %r6,0
	slw %r5,%r3,%r4
	rldicl %r8,%r6,0,32
	sldi %r7,%r5,32
	or %r3,%r8,%r7
	blr
	.p2align 4,,15
.L2056:
	cmpdi %cr1,%r4,0
	beqlr %cr1
	subfic %r10,%r4,32
	sradi %r2,%r3,32
	srw %r0,%r3,%r10
	slw %r3,%r2,%r4
	or %r5,%r0,%r3
	slw %r6,%r9,%r4
	sldi %r7,%r5,32
	rldicl %r8,%r6,0,32
	or %r3,%r8,%r7
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
	.localentry	__ashlti3,1
	andi. %r2,%r5,0x40
	beq %cr0,.L2062
	addi %r5,%r5,-64
	li %r2,0
	sld %r4,%r3,%r5
	mr %r3,%r2
	blr
	.p2align 4,,15
.L2062:
	cmpdi %cr1,%r5,0
	beqlr %cr1
	subfic %r9,%r5,64
	sld %r4,%r4,%r5
	srd %r0,%r3,%r9
	sld %r2,%r3,%r5
	or %r4,%r0,%r4
	mr %r3,%r2
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
	.localentry	__ashrdi3,1
	andi. %r9,%r4,0x20
	mr %r2,%r3
	beq %cr0,.L2067
	sradi %r7,%r3,32
	addi %r8,%r4,-32
	sraw %r6,%r7,%r8
	srawi %r4,%r7,31
	rldicl %r10,%r6,0,32
	sldi %r11,%r4,32
	or %r3,%r11,%r10
	blr
	.p2align 4,,15
.L2067:
	cmpdi %cr1,%r4,0
	beqlr %cr1
	sradi %r3,%r3,32
	subfic %r9,%r4,32
	srw %r0,%r2,%r4
	slw %r5,%r3,%r9
	sraw %r4,%r3,%r4
	or %r6,%r5,%r0
	rldicl %r10,%r6,0,32
	sldi %r11,%r4,32
	or %r3,%r11,%r10
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
	.localentry	__ashrti3,1
	andi. %r2,%r5,0x40
	beq %cr0,.L2073
	addi %r5,%r5,-64
	sradi %r2,%r4,63
	srad %r3,%r4,%r5
	mr %r4,%r2
	blr
	.p2align 4,,15
.L2073:
	cmpdi %cr1,%r5,0
	beqlr %cr1
	subfic %r9,%r5,64
	srd %r3,%r3,%r5
	sld %r0,%r4,%r9
	srad %r2,%r4,%r5
	or %r3,%r0,%r3
	mr %r4,%r2
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
	.localentry	__bswapdi2,1
	brd %r3,%r3
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
	.localentry	__bswapsi2,1
	brw %r2,%r3
	rldicl %r3,%r2,0,32
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
	.localentry	__clzsi2,1
	cmplwi %cr0,%r3,65535
	li %r8,0
	setbcr %r10,1
	slwi %r0,%r10,4
	subfic %r2,%r0,16
	srw %r3,%r3,%r2
	andi. %r9,%r3,0xff00
	setbc %r9,2
	slwi %r4,%r9,3
	subfic %r7,%r4,8
	add %r5,%r4,%r0
	srw %r6,%r3,%r7
	andi. %r9,%r6,0xf0
	setbc %r11,2
	slwi %r12,%r11,2
	subfic %r0,%r12,4
	add %r10,%r12,%r5
	srw %r2,%r6,%r0
	andi. %r9,%r2,0xc
	setbc %r3,2
	slwi %r9,%r3,1
	subfic %r4,%r9,2
	add %r7,%r9,%r10
	srw %r5,%r2,%r4
	andi. %r10,%r5,0x2
	subfic %r6,%r5,2
	isel %r8,%r6,%r8,2
	add %r11,%r8,%r7
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
	.localentry	__clzti2,1
	cmpdi %cr0,%r4,0
	li %r9,0
	setnbcr %r2,2
	isel %r0,%r3,%r9,2
	and %r4,%r2,%r4
	setbc %r3,2
	or %r5,%r4,%r0
	slwi %r6,%r3,6
	cntlzd %r7,%r5
	add %r8,%r6,%r7
	rldicl %r3,%r8,0,32
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
	.localentry	__cmpdi2,1
	sradi %r9,%r3,32
	sradi %r2,%r4,32
	cmpw %cr0,%r9,%r2
	blt %cr0,.L2083
	li %r0,2
	bgt %cr0,.L2082
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt %cr1,.L2082
	setbc %r3,5
	addi %r0,%r3,1
.L2082:
	rldicl %r3,%r0,0,62
	blr
	.p2align 4,,15
.L2083:
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
	.localentry	__aeabi_lcmp,1
	sradi %r9,%r3,32
	sradi %r2,%r4,32
	cmpw %cr0,%r9,%r2
	blt %cr0,.L2089
	li %r5,1
	bgt %cr0,.L2088
	cmplw %cr1,%r3,%r4
	li %r3,-1
	setbc %r0,5
	isel %r5,%r3,%r0,4
.L2088:
	extsw %r3,%r5
	blr
	.p2align 4,,15
.L2089:
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
	.localentry	__cmpti2,1
	cmpd %cr0,%r4,%r6
	li %r0,0
	blt %cr0,.L2093
	li %r0,2
	bgt %cr0,.L2093
	cmpld %cr1,%r3,%r5
	li %r0,0
	blt %cr1,.L2093
	setbc %r2,5
	addi %r0,%r2,1
.L2093:
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
	.localentry	__ctzsi2,1
	rlwinm %r2,%r3,0,16,31
	cmpwi %cr0,%r2,0
	setbc %r10,2
	slwi %r0,%r10,4
	srw %r3,%r3,%r0
	rlwinm %r9,%r3,0,24,31
	cmpwi %cr1,%r9,0
	setbc %r4,6
	slwi %r5,%r4,3
	srw %r6,%r3,%r5
	add %r7,%r5,%r0
	andi. %r9,%r6,0xf
	setbc %r8,2
	slwi %r11,%r8,2
	srw %r12,%r6,%r11
	add %r10,%r11,%r7
	andi. %r9,%r12,0x3
	setbc %r2,2
	slwi %r0,%r2,1
	srw %r3,%r12,%r0
	add %r9,%r0,%r10
	rlwinm %r4,%r3,0,30,31
	not %r5,%r4
	srwi %r6,%r4,1
	rlwinm %r7,%r5,0,31,31
	subfic %r8,%r6,2
	neg %r11,%r7
	and %r12,%r11,%r8
	add %r10,%r12,%r9
	extsw %r3,%r10
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
	.localentry	__ctzti2,1
	cmpdi %cr0,%r3,0
	li %r9,0
	setnbcr %r2,2
	isel %r4,%r4,%r9,2
	and %r0,%r2,%r3
	setbc %r3,2
	or %r5,%r4,%r0
	slwi %r6,%r3,6
	cnttzd %r7,%r5
	add %r8,%r6,%r7
	rldicl %r3,%r8,0,32
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
	.localentry	__ffsti2,1
	cmpdi %cr0,%r3,0
	bne %cr0,.L2101
	cmpdi %cr1,%r4,0
	li %r0,0
	bne %cr1,.L2105
	rldicl %r3,%r0,0,32
	blr
	.p2align 4,,15
.L2101:
	cnttzd %r3,%r3
	addi %r0,%r3,1
	rldicl %r3,%r0,0,32
	blr
	.p2align 4,,15
.L2105:
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
	.localentry	__lshrdi3,1
	andi. %r9,%r4,0x20
	mr %r2,%r3
	beq %cr0,.L2107
	srdi %r7,%r3,32
	addi %r8,%r4,-32
	srw %r6,%r7,%r8
	li %r4,0
	rldicl %r10,%r6,0,32
	sldi %r11,%r4,32
	or %r3,%r11,%r10
	blr
	.p2align 4,,15
.L2107:
	cmpdi %cr1,%r4,0
	beqlr %cr1
	srdi %r3,%r3,32
	subfic %r9,%r4,32
	srw %r0,%r2,%r4
	slw %r5,%r3,%r9
	srw %r4,%r3,%r4
	or %r6,%r5,%r0
	rldicl %r10,%r6,0,32
	sldi %r11,%r4,32
	or %r3,%r11,%r10
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
	.localentry	__lshrti3,1
	andi. %r2,%r5,0x40
	beq %cr0,.L2113
	addi %r5,%r5,-64
	li %r2,0
	srd %r3,%r4,%r5
	mr %r4,%r2
	blr
	.p2align 4,,15
.L2113:
	cmpdi %cr1,%r5,0
	beqlr %cr1
	subfic %r9,%r5,64
	srd %r3,%r3,%r5
	sld %r0,%r4,%r9
	srd %r2,%r4,%r5
	or %r3,%r0,%r3
	mr %r4,%r2
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
	.localentry	__muldsi3,1
	rlwinm %r10,%r3,0,16,31
	rlwinm %r2,%r4,0,16,31
	mullw %r9,%r10,%r2
	srwi %r3,%r3,16
	srwi %r4,%r4,16
	srwi %r8,%r9,16
	maddld %r0,%r2,%r3,%r8
	rlwinm %r5,%r0,0,0xffff
	srwi %r6,%r0,16
	maddld %r7,%r10,%r4,%r5
	maddld %r11,%r3,%r4,%r6
	srwi %r12,%r7,16
	rlwimi %r9,%r7,16,0,31-16
	add %r10,%r11,%r12
	rldicl %r2,%r9,0,32
	sldi %r9,%r10,32
	or %r3,%r2,%r9
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
	.localentry	__muldi3_compiler_rt,1
	rlwinm %r8,%r4,0,16,31
	rlwinm %r7,%r3,0,16,31
	mullw %r2,%r7,%r8
	srwi %r10,%r3,16
	sradi %r5,%r3,32
	mr %r9,%r3
	srwi %r6,%r4,16
	sradi %r11,%r4,32
	srwi %r3,%r2,16
	maddld %r0,%r8,%r10,%r3
	rlwinm %r12,%r0,0,0xffff
	srwi %r8,%r0,16
	maddld %r7,%r7,%r6,%r12
	maddld %r10,%r10,%r6,%r8
	srwi %r6,%r7,16
	rlwimi %r2,%r7,16,0,31-16
	add %r3,%r10,%r6
	rldicl %r2,%r2,0,32
	sldi %r0,%r3,32
	or %r3,%r2,%r0
	sradi %r12,%r3,32
	maddld %r9,%r9,%r11,%r12
	maddld %r4,%r4,%r5,%r9
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
	.localentry	__mulddi3,1
	rldicl %r9,%r4,0,32
	rldicl %r10,%r3,0,32
	mr %r2,%r3
	mulld %r3,%r10,%r9
	srdi %r0,%r2,32
	srdi %r4,%r4,32
	srdi %r8,%r3,32
	maddld %r5,%r9,%r0,%r8
	rldicl %r6,%r5,0,32
	srdi %r7,%r5,32
	maddld %r11,%r10,%r4,%r6
	maddld %r12,%r0,%r4,%r7
	srdi %r2,%r11,32
	rldimi %r3,%r11,32,0
	add %r4,%r12,%r2
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
	.localentry	__multi3,1
	rldicl %r9,%r5,0,32
	rldicl %r8,%r3,0,32
	mr %r2,%r3
	mulld %r3,%r8,%r9
	srdi %r10,%r2,32
	srdi %r7,%r5,32
	srdi %r11,%r3,32
	maddld %r0,%r9,%r10,%r11
	rldicl %r12,%r0,0,32
	srdi %r9,%r0,32
	maddld %r8,%r8,%r7,%r12
	maddld %r10,%r10,%r7,%r9
	srdi %r7,%r8,32
	rldimi %r3,%r8,32,0
	add %r11,%r10,%r7
	maddld %r6,%r2,%r6,%r11
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
	.localentry	__negdi2,1
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
	.localentry	__negti2,1
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
	.localentry	__paritydi2,1
	srdi %r9,%r3,32
	li %r10,27030
	xor %r0,%r9,%r3
	srwi %r2,%r0,16
	xor %r3,%r2,%r0
	srwi %r4,%r3,8
	xor %r5,%r4,%r3
	srwi %r6,%r5,4
	xor %r7,%r6,%r5
	rlwinm %r8,%r7,0,28,31
	sraw %r11,%r10,%r8
	rldicl %r3,%r11,0,63
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
	.localentry	__parityti2,1
	xor %r4,%r3,%r4
	li %r3,27030
	sradi %r9,%r4,32
	xor %r0,%r9,%r4
	srwi %r2,%r0,16
	xor %r5,%r2,%r0
	srwi %r6,%r5,8
	xor %r7,%r6,%r5
	srwi %r8,%r7,4
	xor %r10,%r8,%r7
	rlwinm %r11,%r10,0,28,31
	sraw %r12,%r3,%r11
	rldicl %r3,%r12,0,63
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
	.localentry	__paritysi2,1
	srwi %r2,%r3,16
	li %r10,27030
	xor %r0,%r2,%r3
	srwi %r9,%r0,8
	xor %r3,%r9,%r0
	srwi %r4,%r3,4
	xor %r5,%r4,%r3
	rlwinm %r6,%r5,0,28,31
	sraw %r7,%r10,%r6
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
	.localentry	__popcountdi2,1
	pli %r9,1431655765
	srdi %r2,%r3,1
	rldimi %r9,%r9,32,0
	pli %r10,858993459
	and %r0,%r2,%r9
	rldimi %r10,%r10,32,0
	subf %r3,%r0,%r3
	pli %r4,252645135
	srdi %r5,%r3,2
	and %r6,%r3,%r10
	and %r7,%r5,%r10
	rldimi %r4,%r4,32,0
	add %r11,%r7,%r6
	srdi %r12,%r11,4
	add %r9,%r12,%r11
	and %r2,%r9,%r4
	srdi %r10,%r2,32
	add %r0,%r10,%r2
	srwi %r3,%r0,16
	add %r4,%r3,%r0
	srwi %r5,%r4,8
	add %r6,%r5,%r4
	rldicl %r3,%r6,0,57
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
	.localentry	__popcountsi2,1
	srwi %r2,%r3,1
	pli %r9,1431655765
	and %r0,%r2,%r9
	pli %r10,858993459
	subf %r3,%r0,%r3
	pli %r8,252645135
	srwi %r4,%r3,2
	and %r5,%r3,%r10
	and %r6,%r4,%r10
	add %r7,%r6,%r5
	srwi %r11,%r7,4
	add %r12,%r11,%r7
	and %r10,%r12,%r8
	srwi %r9,%r10,16
	add %r2,%r9,%r10
	srwi %r8,%r2,8
	add %r0,%r8,%r2
	rldicl %r3,%r0,0,58
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
	.localentry	__popcountti2,1
	std %r30,-16(%r1)
	sldi %r0,%r4,63
	srdi %r8,%r3,1
	std %r31,-8(%r1)
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	pli %r30,1431655765
	or %r2,%r0,%r8
	std %r28,-32(%r1)
	std %r29,-24(%r1)
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	rldimi %r30,%r30,32,0
	pli %r31,1431655765
	mr %r5,%r3
	srdi %r9,%r4,1
	and %r3,%r2,%r30
	rldimi %r31,%r31,32,0
	subfc %r6,%r3,%r5
	and %r7,%r9,%r31
	subfe %r12,%r7,%r4
	srdi %r29,%r6,2
	sldi %r28,%r12,62
	pli %r10,858993459
	or %r0,%r28,%r29
	rldimi %r10,%r10,32,0
	pli %r11,858993459
	and %r8,%r6,%r10
	and %r2,%r0,%r10
	rldimi %r11,%r11,32,0
	srdi %r31,%r12,2
	addc %r3,%r2,%r8
	and %r30,%r12,%r11
	and %r9,%r31,%r11
	adde %r11,%r9,%r30
	srdi %r10,%r3,4
	rldimi %r10,%r11,60,0
	srdi %r7,%r11,4
	addc %r6,%r10,%r3
	pli %r4,252645135
	pli %r5,252645135
	adde %r12,%r7,%r11
	rldimi %r4,%r4,32,0
	rldimi %r5,%r5,32,0
	and %r4,%r6,%r4
	and %r5,%r12,%r5
	add %r28,%r5,%r4
	srdi %r29,%r28,32
	add %r0,%r29,%r28
	ld %r28,-32(%r1)
	ld %r29,-24(%r1)
	srwi %r8,%r0,16
	add %r30,%r8,%r0
	srwi %r31,%r30,8
	add %r2,%r31,%r30
	ld %r30,-16(%r1)
	ld %r31,-8(%r1)
	rlwinm %r3,%r2,0,0xff
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
	.localentry	__powidf2,1
	andi. %r2,%r4,0x1
	fmr %f0,%f1
	mr %r0,%r4
	xxspltidp %vs1,1065353216
	beq %cr0,.L2131
	.p2align 4,,15
.L2133:
	fmul %f1,%f1,%f0
.L2131:
	srawi %r2,%r0,1
	addze %r2,%r2
	extsw. %r0,%r2
	beq %cr0,.L2132
	andi. %r9,%r0,0x1
	fmul %f0,%f0,%f0
	srawi %r9,%r0,1
	addze %r9,%r9
	bne %cr0,.L2133
.L2137:
	extsw %r0,%r9
	fmul %f0,%f0,%f0
	andi. %r9,%r0,0x1
	srawi %r9,%r0,1
	addze %r9,%r9
	bne %cr0,.L2133
	b .L2137
	.p2align 4,,15
.L2132:
	cmpwi %cr1,%r4,0
	bgelr %cr1
	xxspltidp %vs2,1065353216
	fdiv %f1,%f2,%f1
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
	.localentry	__powisf2,1
	andi. %r2,%r4,0x1
	fmr %f0,%f1
	mr %r0,%r4
	xxspltidp %vs1,1065353216
	beq %cr0,.L2139
	.p2align 4,,15
.L2141:
	fmuls %f1,%f1,%f0
.L2139:
	srawi %r2,%r0,1
	addze %r2,%r2
	extsw. %r0,%r2
	beq %cr0,.L2140
	andi. %r9,%r0,0x1
	fmuls %f0,%f0,%f0
	srawi %r9,%r0,1
	addze %r9,%r9
	bne %cr0,.L2141
.L2145:
	extsw %r0,%r9
	fmuls %f0,%f0,%f0
	andi. %r9,%r0,0x1
	srawi %r9,%r0,1
	addze %r9,%r9
	bne %cr0,.L2141
	b .L2145
	.p2align 4,,15
.L2140:
	cmpwi %cr1,%r4,0
	bgelr %cr1
	xxspltidp %vs2,1065353216
	fdivs %f1,%f2,%f1
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
	.localentry	__ucmpdi2,1
	srdi %r9,%r3,32
	srdi %r2,%r4,32
	cmplw %cr0,%r9,%r2
	blt %cr0,.L2148
	li %r0,2
	bgt %cr0,.L2147
	cmplw %cr1,%r3,%r4
	li %r0,0
	blt %cr1,.L2147
	setbc %r3,5
	addi %r0,%r3,1
.L2147:
	rldicl %r3,%r0,0,62
	blr
	.p2align 4,,15
.L2148:
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
	.localentry	__aeabi_ulcmp,1
	srdi %r9,%r3,32
	srdi %r2,%r4,32
	cmplw %cr0,%r9,%r2
	blt %cr0,.L2154
	li %r5,1
	bgt %cr0,.L2153
	cmplw %cr1,%r3,%r4
	li %r3,-1
	setbc %r0,5
	isel %r5,%r3,%r0,4
.L2153:
	extsw %r3,%r5
	blr
	.p2align 4,,15
.L2154:
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
	.localentry	__ucmpti2,1
	cmpld %cr0,%r4,%r6
	li %r0,0
	blt %cr0,.L2158
	li %r0,2
	bgt %cr0,.L2158
	cmpld %cr1,%r3,%r5
	li %r0,0
	blt %cr1,.L2158
	setbc %r2,5
	addi %r0,%r2,1
.L2158:
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
	.set	.LC1,.LC3
	.set	.LC2,.LC4
	.align 4
.LC3:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC4:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.align 4
.LC5:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC6:
	.long	0
	.long	1071644672
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
