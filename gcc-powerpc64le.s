	.file	"mini-libc.c"
	.machine ppc64
	.abiversion 2
	.section	".text"
	.align 2
	.p2align 4,,15
	.globl make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	mr 9,3
	mr 3,4
	mr 4,9
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
	mr 9,3
	mr 3,4
	mr 4,9
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
	cmpld 0,3,4
	ble 0,.L5
	cmpdi 0,5,0
	add 4,4,5
	add 9,3,5
	beqlr 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq 0,.L40
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr 0
.L40:
	srdi 10,5,1
	mtctr 10
	cmpdi 0,10,2
	ble 0,.L75
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L7:
	lbz 7,-2(8)
	stb 7,-2(10)
	addi 8,8,-2
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L7
.L6:
	blr
	.p2align 4,,15
.L5:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 9,5,-1
	cmpldi 0,9,6
	ble 0,.L8
	or 10,4,3
	andi. 10,10,0x7
	bne 0,.L8
	addi 10,4,1
	subf 10,10,3
	subfic 10,10,6
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq 0,.L8
	srdi 9,5,3
	addi 8,4,-8
	andi. 10,9,0x1
	addi 7,9,-1
	addi 10,3,-8
	beq 0,.L46
	cmpdi 0,7,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq 0,.L65
.L46:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L76
	addi 9,9,-1
	mtctr 9
	ld 6,8(8)
	std 6,8(10)
	addi 7,8,8
	ld 6,8(7)
	addi 9,10,8
	std 6,8(9)
.L9:
	ld 6,16(7)
	std 6,16(9)
	addi 7,7,16
	ld 6,8(7)
	addi 9,9,16
	std 6,8(9)
	bdnz .L9
.L65:
	andi. 9,5,0x7
	rldicr 9,5,0,60
	add 8,4,9
	add 10,3,9
	subf 5,9,5
	beqlr 0
	cmpldi 0,5,1
	lbzx 7,4,9
	stbx 7,3,9
	beqlr 0
	cmpldi 0,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr 0
	cmpldi 0,5,3
	lbz 9,2(8)
	stb 9,2(10)
	beqlr 0
	cmpldi 0,5,4
	lbz 9,3(8)
	stb 9,3(10)
	beqlr 0
	cmpldi 0,5,5
	lbz 9,4(8)
	stb 9,4(10)
	beqlr 0
	cmpldi 0,5,6
	lbz 9,5(8)
	stb 9,5(10)
	beqlr 0
	lbz 9,6(8)
	stb 9,6(10)
	blr
	.p2align 4,,15
.L75:
	lbz 7,-1(4)
	mr 8,4
	mr 10,9
	addi 4,4,-2
	addi 9,9,-2
	stb 7,1(9)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdz .L6
	lbz 7,-1(4)
	mr 8,4
	mr 10,9
	addi 4,4,-2
	addi 9,9,-2
	stb 7,1(9)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdnz .L75
	blr
	.p2align 4,,15
.L76:
	ld 6,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 6,-8(10)
	ld 6,16(7)
	std 6,16(9)
	bdz .L65
	ld 6,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 6,-8(10)
	ld 6,16(7)
	std 6,16(9)
	bdnz .L76
	b .L65
	.p2align 4,,15
.L8:
	andi. 10,9,0x1
	addi 8,3,-1
	addi 10,4,-1
	bne 0,.L81
.L43:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L12
	.p2align 4,,15
.L82:
	lbz 9,1(9)
	addi 8,8,2
	stb 9,1(7)
.L12:
	lbz 6,1(10)
	addi 9,10,1
	addi 7,8,1
	addi 10,10,2
	stb 6,1(8)
	bdnz .L82
	blr
.L81:
	lbz 7,0(4)
	mr 10,4
	mr 8,3
	stb 7,0(3)
	b .L43
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
	cmpdi 0,6,0
	rlwinm 5,5,0,0xff
	beq 0,.L84
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne 0,.L105
.L94:
	srdi 10,6,1
	mtctr 10
	b .L85
	.p2align 4,,15
.L87:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq 0,.L102
	addi 3,3,1
	bdz .L84
.L85:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne 0,.L87
.L102:
	addi 3,3,1
	blr
	.p2align 4,,15
.L105:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq 0,.L102
	cmpdi 0,8,0
	addi 3,3,1
	bne 0,.L94
.L84:
	li 3,0
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
	cmpdi 0,5,0
	rlwinm 4,4,0,0xff
	beq 0,.L110
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L127
.L113:
	srdi 9,5,1
	mtctr 9
.L107:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,1
	bdnz .L107
.L110:
	li 3,0
	blr
	.p2align 4,,15
.L127:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr 0
	cmpdi 0,9,0
	addi 3,3,1
	bne 0,.L113
	b .L110
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
	cmpdi 0,5,0
	beq 0,.L133
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L150
.L136:
	srdi 9,5,1
	mtctr 9
	b .L129
	.p2align 4,,15
.L131:
	lbz 10,1(3)
	lbz 9,1(4)
	addi 3,7,1
	addi 4,8,1
	cmpw 0,10,9
	bne 0,.L145
	bdz .L133
.L129:
	lbz 10,0(3)
	lbz 9,0(4)
	addi 7,3,1
	addi 8,4,1
	cmpw 0,10,9
	beq 0,.L131
.L145:
	subf 3,9,10
	extsw 3,3
	blr
	.p2align 4,,15
.L150:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L145
	cmpdi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne 0,.L136
.L133:
	li 3,0
	extsw 3,3
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L152
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L152:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
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
	mr 10,5
	addi 5,5,-1
	andi. 8,10,0x1
	add 9,3,5
	rlwinm 4,4,0,0xff
	beq 0,.L162
	mr 3,9
	addi 9,9,-1
	lbz 8,0(3)
	cmpw 0,8,4
	beqlr 0
.L162:
	srdi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L170
	.p2align 4,,15
.L160:
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr 0
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr 0
	bdnz .L160
.L170:
	li 3,0
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L174
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	std 0,64(1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L174:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
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
	lbz 9,0(4)
	rlwinm 10,9,0,0xff
	stb 9,0(3)
	cmpwi 0,10,0
	beqlr 0
	.p2align 4,,15
.L178:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne 0,.L178
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
	lbz 9,0(3)
	rlwinm 4,4,0,0xff
	cmpwi 0,9,0
	beqlr 0
	cmpw 0,9,4
	beqlr 0
	.p2align 5
.L189:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr 0
	cmpw 0,9,4
	bne 0,.L189
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
.L192:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr 0
	addi 3,3,1
	bne 7,.L192
	li 3,0
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
	lbz 9,0(3)
	lbz 10,0(4)
	mr 8,4
	cmpw 0,9,10
	beq 0,.L197
	b .L196
	.p2align 4,,15
.L198:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 0,9,10
	bne 0,.L196
.L197:
	cmpwi 0,9,0
	bne 0,.L198
.L196:
	subf 3,10,9
	extsw 3,3
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
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L206
	mr 9,3
	.p2align 4,,15
.L205:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L205
	subf 3,3,9
	blr
	.p2align 4,,15
.L206:
	li 3,0
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
	cmpdi 0,5,0
	beq 0,.L216
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	subf 5,3,5
	cmpwi 0,10,0
	addi 9,5,1
	mtctr 9
	bne 0,.L212
	b .L221
	.p2align 4,,15
.L223:
	bdz .L211
	bne 7,.L211
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq 0,.L222
	mr 4,8
.L212:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne 0,.L223
.L211:
	subf 3,9,10
	extsw 3,3
	blr
	.p2align 4,,15
.L216:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L222:
	lbz 9,1(4)
	b .L211
.L221:
	lbz 9,0(4)
	b .L211
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
	cmpdi 0,5,1
	blelr 0
	srdi 5,5,1
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L239
.L229:
	srdi 9,5,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L237
	addi 9,9,-1
	mtctr 9
	mr 9,3
	lbz 11,2(3)
	lbz 5,0(3)
	lbz 6,1(3)
	addi 3,3,4
	lbz 7,3(9)
	addi 8,4,2
.L226:
	mr 10,4
	mr 9,3
	stb 6,0(4)
	stb 5,1(4)
	addi 4,8,2
	stb 7,2(10)
	stb 11,1(8)
	lbz 11,2(3)
	lbz 5,0(3)
	lbz 6,1(3)
	addi 3,3,4
	lbz 7,3(9)
	addi 8,4,2
	bdnz .L226
	stb 6,0(4)
	stb 5,1(4)
	stb 7,2(4)
	stb 11,1(8)
.L224:
	blr
	.p2align 4,,15
.L237:
	mr 9,3
	lbz 6,1(3)
	lbz 5,0(3)
	lbz 11,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 7,3(9)
	stb 6,-4(4)
	stb 5,-3(4)
	stb 11,-1(4)
	stb 7,-2(4)
	bdz .L224
	mr 9,3
	lbz 6,1(3)
	lbz 5,0(3)
	lbz 11,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 7,3(9)
	stb 6,-4(4)
	stb 5,-3(4)
	stb 11,-1(4)
	stb 7,-2(4)
	bdnz .L237
	blr
	.p2align 4,,15
.L239:
	cmpdi 0,9,0
	lbz 10,1(3)
	lbz 9,0(3)
	addi 4,4,2
	addi 3,3,2
	stb 10,-2(4)
	stb 9,-1(4)
	bne 0,.L229
	blr
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
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
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
	rldicl 3,3,0,32
	subfic 3,3,127
	srdi 3,3,63
	xori 3,3,0x1
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
	cmpwi 0,3,32
	beq 0,.L244
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L244:
	li 3,1
	rldicl 3,3,0,63
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
	cmplwi 0,3,31
	ble 0,.L247
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L247:
	li 3,1
	rldicl 3,3,0,63
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
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
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
	addi 3,3,-33
	rldicl 3,3,0,32
	subfic 3,3,93
	srdi 3,3,63
	xori 3,3,0x1
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
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
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
	addi 3,3,-32
	rldicl 3,3,0,32
	subfic 3,3,94
	srdi 3,3,63
	xori 3,3,0x1
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
	cmpwi 0,3,32
	beq 0,.L254
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L254:
	li 3,1
	rldicl 3,3,0,63
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
	addi 3,3,-65
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
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
	cmplwi 0,3,31
	li 9,1
	ble 0,.L257
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	bgt 0,.L261
.L257:
	rldicl 3,9,0,63
	blr
	.p2align 4,,15
.L261:
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L257
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
	rldicl 3,9,0,63
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
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
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
	cmplwi 0,3,254
	ble 0,.L270
	cmplwi 0,3,8231
	li 9,1
	ble 0,.L265
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L265
	addis 10,3,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	ble 0,.L265
	lis 8,0x10
	addi 10,10,4
	ori 8,8,0x3
	li 9,0
	cmplw 0,10,8
	bgt 0,.L265
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
.L265:
	rldicl 3,9,0,63
	blr
	.p2align 4,,15
.L270:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
	rldicl 3,9,0,63
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
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L273
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L273:
	li 3,1
	rldicl 3,3,0,63
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
	rldicl 3,3,0,57
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
.LCF31:
0:	addis 2,12,.TOC.-.LCF31@ha
	addi 2,2,.TOC.-.LCF31@l
	.localentry	fdim,.-fdim
	fcmpu 0,1,1
	bunlr 0
	fcmpu 0,2,2
	bun 0,.L279
	fcmpu 0,1,2
	bng 0,.L282
	fsub 1,1,2
	blr
	.p2align 4,,15
.L282:
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	blr
	.p2align 4,,15
.L279:
	fmr 1,2
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
.LCF32:
0:	addis 2,12,.TOC.-.LCF32@ha
	addi 2,2,.TOC.-.LCF32@l
	.localentry	fdimf,.-fdimf
	fcmpu 0,1,1
	bunlr 0
	fcmpu 0,2,2
	bun 0,.L287
	fcmpu 0,1,2
	bng 0,.L290
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L290:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
	.p2align 4,,15
.L287:
	fmr 1,2
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
	fcmpu 0,1,1
	fmr 0,1
	bun 0,.L296
	fcmpu 0,2,2
	bun 0,.L297
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L293
	cmpwi 0,9,0
	fmr 1,2
	bnelr 0
.L297:
	fmr 1,0
	blr
	.p2align 4,,15
.L293:
	fcmpu 0,1,2
	bnllr 0
.L296:
	fmr 1,2
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
	fcmpu 0,1,1
	stfs 1,-16(1)
	stfs 2,-12(1)
	bun 0,.L305
	fcmpu 0,2,2
	bunlr 0
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L302
	cmpwi 0,9,0
	fmr 1,2
	bnelr 0
	lfs 1,-16(1)
	blr
	.p2align 4,,15
.L302:
	fcmpu 0,1,2
	bnllr 0
	fmr 1,2
	blr
	.p2align 4,,15
.L305:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L316
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L311
	cmpwi 0,9,0
	beqlr 0
.L316:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L311:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr 0
	fmr 1,3
	fmr 2,4
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
	fcmpu 0,1,1
	bun 0,.L323
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	bne 0,.L327
	fcmpu 0,1,2
	fmr 0,2
	bnl 0,.L322
	fmr 0,1
.L322:
	fmr 1,0
	blr
	.p2align 4,,15
.L327:
	cmpwi 0,9,0
	bnelr 0
.L323:
	fmr 1,2
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
	fcmpu 0,1,1
	stfs 1,-16(1)
	stfs 2,-12(1)
	bun 0,.L333
	fcmpu 0,2,2
	fmr 0,2
	bunlr 0
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	bne 0,.L338
	fcmpu 0,1,2
	fmr 0,1
	fmr 1,2
	bnllr 0
	fmr 1,0
	blr
	.p2align 4,,15
.L338:
	cmpwi 0,9,0
	bnelr 0
	fmr 1,0
	blr
	.p2align 4,,15
.L333:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L344
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L341
	cmpwi 0,9,0
	bnelr 0
.L344:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L341:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bltlr 0
	fmr 1,3
	fmr 2,4
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
	mr 9,3
	addis 3,2,.LANCHOR0@toc@ha
	cmpwi 0,9,0
	addi 3,3,.LANCHOR0@toc@l
	beq 0,.L350
	addis 7,2,.LANCHOR1@toc@ha
	mr 10,3
	addi 7,7,.LANCHOR1@toc@l
	.p2align 5
.L349:
	rldicl 8,9,0,58
	srwi 9,9,6
	cmpwi 0,9,0
	addi 10,10,1
	lbzx 8,7,8
	stb 8,-1(10)
	bne 0,.L349
	li 9,0
	stb 9,0(10)
	blr
	.p2align 4,,15
.L350:
	mr 10,3
	li 9,0
	stb 9,0(10)
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
	addi 3,3,-1
	addis 9,2,.LANCHOR0+8@toc@ha
	rldicl 3,3,0,32
	std 3,.LANCHOR0+8@toc@l(9)
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
	addis 7,2,.LANCHOR0+8@toc@ha
	lis 10,0x4c95
	lis 8,0x5851
	ori 10,10,0x7f2d
	ld 9,.LANCHOR0+8@toc@l(7)
	ori 8,8,0xf42d
	rldimi 10,8,32,0
	mulld 9,9,10
	addi 9,9,1
	srdi 3,9,33
	std 9,.LANCHOR0+8@toc@l(7)
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
	cmpdi 0,4,0
	beq 0,.L360
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ori 2,2,0
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
	.p2align 4,,15
.L360:
	std 4,8(3)
	std 4,0(3)
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
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L362
	ld 10,8(3)
	std 10,8(9)
.L362:
	ld 10,8(3)
	cmpdi 0,10,0
	beqlr 0
	std 9,0(10)
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
	mflr 0
	std 27,-40(1)
	.cfi_register 65, 0
	.cfi_offset 27, -40
	ld 27,0(5)
	std 23,-72(1)
	std 24,-64(1)
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr 23,4
	mr 24,5
	std 26,-48(1)
	std 28,-32(1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr 26,3
	mr 28,6
	std 25,-56(1)
	cmpdi 0,27,0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 25, -56
	.cfi_offset 65, 16
	std 2,24(1)
	beq 0,.L371
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	mr 29,7
	li 30,0
	std 31,104(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L373
	.p2align 4,,15
.L385:
	beq 7,.L384
.L373:
	mtctr 29
	mr 4,31
	mr 3,26
	mr 12,29
	addi 30,30,1
	mr 25,31
	add 31,31,28
	bctrl
	ld 2,24(1)
	cmpld 7,27,30
	cmpwi 0,3,0
	bne 0,.L385
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L370:
	addi 1,1,112
	.cfi_def_cfa_offset 0
	mr 3,25
	ld 0,16(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	mtlr 0
	.cfi_restore 65
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.p2align 4,,15
.L384:
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
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L371:
	mulld 25,28,27
	cmpdi 0,28,0
	addi 27,27,1
	std 27,0(24)
	add 25,23,25
	beq 0,.L370
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	addi 1,1,112
	.cfi_def_cfa_offset 0
	mr 3,25
	ld 0,16(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	mtlr 0
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
	std 26,-48(1)
	.cfi_offset 26, -48
	ld 26,0(5)
	std 25,-56(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	cmpdi 0,26,0
	beq 0,.L387
	mflr 0
	.cfi_register 65, 0
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 27,6
	std 29,72(1)
	.cfi_offset 29, -24
	std 30,80(1)
	.cfi_offset 30, -16
	mr 28,3
	mr 29,7
	std 31,88(1)
	.cfi_offset 31, -8
	std 2,24(1)
	mr 31,4
	li 30,0
	std 0,112(1)
	.cfi_offset 65, 16
	b .L389
	.p2align 4,,15
.L397:
	beq 7,.L396
.L389:
	mtctr 29
	mr 4,31
	mr 3,28
	mr 12,29
	addi 30,30,1
	mr 25,31
	add 31,31,27
	bctrl
	ld 2,24(1)
	cmpld 7,26,30
	cmpwi 0,3,0
	bne 0,.L397
	ld 0,112(1)
	ld 27,56(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	mr 3,25
	ld 30,80(1)
	.cfi_restore 30
	ld 31,88(1)
	.cfi_restore 31
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 25,-56(1)
	ld 26,-48(1)
	.cfi_restore 26
	.cfi_restore 25
	blr
	.p2align 4,,15
.L396:
	.cfi_restore_state
	ld 0,112(1)
	ld 27,56(1)
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	ld 30,80(1)
	.cfi_restore 30
	ld 31,88(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L387:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 25,0
	mr 3,25
	ld 25,-56(1)
	ld 26,-48(1)
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
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	extsw 3,3
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
.L406:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L400
	ble 7,.L400
	cmpwi 0,9,43
	beq 0,.L401
	cmpwi 0,9,45
	bne 0,.L421
	lbz 9,1(3)
	addi 10,3,1
	addi 8,9,-48
	cmplwi 0,8,9
	bgt 0,.L411
	li 5,1
.L404:
	li 3,0
	.p2align 5
.L408:
	addi 7,9,-48
	mulli 8,3,10
	lbzu 9,1(10)
	addi 6,9,-48
	subf 3,7,8
	cmplwi 0,6,9
	ble 0,.L408
	cmpwi 0,5,0
	bne 0,.L407
	subf 3,8,7
.L407:
	extsw 3,3
	blr
	.p2align 4,,15
.L400:
	addi 3,3,1
	b .L406
	.p2align 4,,15
.L421:
	addi 8,9,-48
	mr 10,3
	cmplwi 0,8,9
	li 5,0
	ble 0,.L404
.L411:
	li 3,0
	b .L407
	.p2align 4,,15
.L401:
	lbz 9,1(3)
	addi 10,3,1
	li 5,0
	addi 8,9,-48
	cmplwi 0,8,9
	ble 0,.L404
	li 3,0
	b .L407
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
.L429:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L423
	ble 7,.L423
	cmpwi 0,9,43
	beq 0,.L424
	cmpwi 0,9,45
	bne 0,.L444
	lbz 9,1(3)
	addi 8,3,1
	addi 10,9,-48
	cmplwi 0,10,9
	bgt 0,.L434
	li 5,1
.L427:
	li 3,0
	.p2align 5
.L431:
	addi 10,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 10,10
	addi 6,9,-48
	subf 3,10,7
	cmplwi 0,6,9
	ble 0,.L431
	cmpwi 0,5,0
	bnelr 0
	subf 3,7,10
	blr
	.p2align 4,,15
.L423:
	addi 3,3,1
	b .L429
	.p2align 4,,15
.L444:
	addi 10,9,-48
	mr 8,3
	cmplwi 0,10,9
	li 5,0
	ble 0,.L427
.L434:
	li 3,0
	blr
	.p2align 4,,15
.L424:
	lbz 9,1(3)
	addi 8,3,1
	li 5,0
	addi 10,9,-48
	cmplwi 0,10,9
	ble 0,.L427
	b .L434
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
.L450:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L446
	ble 7,.L446
	cmpwi 0,9,43
	beq 0,.L447
	cmpwi 0,9,45
	beq 0,.L448
	addi 10,9,-48
	mr 8,3
	cmplwi 0,10,9
	li 5,0
	bgt 0,.L457
.L451:
	li 3,0
	.p2align 5
.L454:
	addi 10,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 10,10
	addi 6,9,-48
	subf 3,10,7
	cmplwi 0,6,9
	ble 0,.L454
	cmpwi 0,5,0
	bnelr 0
	subf 3,7,10
	blr
	.p2align 4,,15
.L446:
	addi 3,3,1
	b .L450
	.p2align 4,,15
.L448:
	lbz 9,1(3)
	addi 8,3,1
	li 5,1
	addi 10,9,-48
	cmplwi 0,10,9
	ble 0,.L451
.L457:
	li 3,0
	blr
	.p2align 4,,15
.L447:
	lbz 9,1(3)
	addi 8,3,1
	addi 10,9,-48
	cmplwi 0,10,9
	bgt 0,.L457
	li 5,0
	b .L451
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq 0,.L468
	mflr 0
	.cfi_register 65, 0
	std 25,40(1)
	.cfi_offset 25, -56
	std 26,48(1)
	.cfi_offset 26, -48
	mr 25,3
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 27,4
	mr 26,6
	std 2,24(1)
	std 29,72(1)
	.cfi_offset 29, -24
	mr 28,7
	std 0,112(1)
	.cfi_offset 65, 16
	b .L471
	.p2align 4,,15
.L480:
	beq 0,.L478
	cmpdi 0,31,0
	add 27,30,26
	beq 0,.L479
.L471:
	mtctr 28
	srdi 29,31,1
	mulld 30,29,26
	mr 3,25
	mr 12,28
	addi 31,31,-1
	subf 31,29,31
	add 30,27,30
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	bge 0,.L480
	mr 31,29
	cmpdi 0,31,0
	bne 0,.L471
.L479:
	ld 0,112(1)
	ld 25,40(1)
	.cfi_restore 25
	ld 26,48(1)
	.cfi_restore 26
	ld 27,56(1)
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L468:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.p2align 4,,15
.L478:
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 0,112(1)
	ld 25,40(1)
	.cfi_restore 25
	ld 26,48(1)
	.cfi_restore 26
	ld 27,56(1)
	.cfi_restore 27
	mr 3,30
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
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
	cmpwi 0,5,0
	std 24,-64(1)
	std 25,-56(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	mr 24,8
	std 26,-48(1)
	std 27,-40(1)
	mr 25,3
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr 27,4
	std 29,-24(1)
	std 31,-8(1)
	mr 26,6
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,5
	std 30,-16(1)
	mr 29,7
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq 0,.L486
	mflr 0
	.cfi_register 65, 0
	std 2,24(1)
	std 28,64(1)
	.cfi_offset 28, -32
	std 0,112(1)
	.cfi_offset 65, 16
	.p2align 4,,15
.L491:
	mtctr 29
	srawi 30,31,1
	mulld 30,30,26
	mr 5,24
	mr 3,25
	mr 12,29
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,30
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 7,31,0
	cmpwi 0,3,0
	beq 0,.L495
.L497:
	cmpwi 5,28,0
	ble 0,.L484
	add 27,30,26
	bne 7,.L491
.L496:
	ld 0,112(1)
	ld 28,64(1)
	.cfi_restore 28
	mtlr 0
	.cfi_restore 65
.L486:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.p2align 4,,15
.L484:
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
	mr 31,28
	beq 5,.L496
	mtctr 29
	srawi 30,31,1
	mulld 30,30,26
	mr 5,24
	mr 3,25
	mr 12,29
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,30
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 7,31,0
	cmpwi 0,3,0
	bne 0,.L497
.L495:
	ld 0,112(1)
	ld 28,64(1)
	.cfi_restore 28
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mr 3,30
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	mtlr 0
	.cfi_restore 65
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
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
	divw 9,3,4
	mullw 4,9,4
	rldicl 9,9,0,32
	subf 3,4,3
	sldi 3,3,32
	or 3,9,3
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
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
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
	mr 9,3
	divd 3,3,4
	mulld 4,3,4
	subf 4,4,9
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
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
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
	mr 9,3
	divd 3,3,4
	mulld 4,3,4
	subf 4,4,9
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
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
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
	mr 9,3
	divd 3,3,4
	mulld 4,3,4
	subf 4,4,9
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
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L509
	.p2align 5
.L506:
	cmpw 0,9,4
	beqlr 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne 0,.L506
.L509:
	li 3,0
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
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	beq 0,.L516
	b .L515
	.p2align 4,,15
.L517:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne 0,.L515
.L516:
	cmpwi 7,9,0
	bne 7,.L517
.L515:
	li 3,-1
	blt 0,.L518
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L518:
	extsw 3,3
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
	addi 4,4,-4
	addi 10,3,-4
	.p2align 4,,15
.L521:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L521
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
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L527
	mr 9,3
	.p2align 4,,15
.L526:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L526
	subf 3,3,9
	sradi 3,3,2
	blr
	.p2align 4,,15
.L527:
	li 3,0
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
	cmpdi 0,5,0
	beq 0,.L539
	mtctr 5
	b .L530
	.p2align 4,,15
.L542:
	beq 7,.L532
	addi 3,3,4
	addi 4,4,4
	bdz .L539
.L530:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	cmpwi 7,9,0
	beq 0,.L542
.L532:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bge 0,.L534
	li 3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L534:
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
	.p2align 4,,15
.L539:
	li 3,0
	extsw 3,3
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
	cmpdi 0,5,0
	beq 0,.L547
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L564
.L550:
	srdi 9,5,1
	mtctr 9
.L544:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,4
	bdnz .L544
.L547:
	li 3,0
	blr
	.p2align 4,,15
.L564:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr 0
	cmpdi 0,9,0
	addi 3,3,4
	bne 0,.L550
	b .L547
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
	cmpdi 0,5,0
	beq 0,.L571
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L588
.L574:
	srdi 9,5,1
	mtctr 9
	b .L566
	.p2align 4,,15
.L568:
	lwz 9,4(3)
	lwz 10,4(4)
	addi 3,7,4
	addi 4,8,4
	cmpw 0,9,10
	bne 0,.L583
	bdz .L571
.L566:
	lwz 9,0(3)
	lwz 10,0(4)
	addi 7,3,4
	addi 8,4,4
	cmpw 0,9,10
	beq 0,.L568
.L583:
	blt 0,.L589
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
	.p2align 4,,15
.L588:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne 0,.L583
	cmpdi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne 0,.L574
.L571:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L589:
	li 3,-1
	extsw 3,3
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L591
	mflr 0
	.cfi_register 65, 0
	sldi 5,5,2
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L591:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
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
	cmpld 0,3,4
	beqlr 0
	sldi 9,5,2
	subf 10,4,3
	cmpld 0,10,9
	bge 0,.L633
	cmpdi 0,5,0
	beqlr 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne 0,.L634
.L610:
	srdi 10,5,1
	mtctr 10
	cmpdi 0,10,2
	ble 0,.L629
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L601:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L601
.L604:
	blr
	.p2align 4,,15
.L633:
	cmpdi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne 0,.L635
.L613:
	srdi 8,5,1
	mtctr 8
	cmpdi 0,8,2
	ble 0,.L630
	addi 8,8,-1
	mtctr 8
	lwz 6,4(9)
	stw 6,4(10)
	addi 7,9,4
	lwz 6,4(7)
	addi 8,10,4
	stw 6,4(8)
.L602:
	addi 9,7,4
	lwz 6,4(9)
	stw 6,8(8)
	addi 7,9,4
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L602
	blr
	.p2align 4,,15
.L629:
	lwz 7,-4(4)
	mr 8,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 7,-8(8)
	stw 7,-8(10)
	bdz .L604
	lwz 7,-4(4)
	mr 8,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 7,-8(8)
	stw 7,-8(10)
	bdnz .L629
	blr
	.p2align 4,,15
.L630:
	lwz 6,4(9)
	mr 7,9
	mr 8,10
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(8)
	bdz .L604
	lwz 6,4(9)
	mr 7,9
	mr 8,10
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(8)
	bdnz .L630
	blr
	.p2align 4,,15
.L634:
	cmpdi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne 0,.L610
	blr
	.p2align 4,,15
.L635:
	cmpdi 0,8,0
	lwz 8,0(4)
	mr 9,4
	mr 10,3
	stw 8,0(3)
	bne 0,.L613
	blr
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
	cmpdi 0,5,0
	addi 7,5,-1
	beqlr 0
	cmpldi 0,7,5
	rldicl 9,3,62,63
	ble 0,.L642
	cmpdi 0,9,0
	mr 11,3
	beq 0,.L639
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
.L639:
	subf 5,9,5
	sldi 9,9,2
	srdi 6,5,1
	addi 9,9,-8
	andi. 0,6,0x3
	mr 10,4
	add 9,3,9
	addi 12,6,-1
	mr 8,6
	rldimi 10,4,32,0
	beq 0,.L664
	cmpdi 0,0,1
	beq 0,.L668
	cmpdi 0,0,2
	beq 0,.L669
	stdu 10,8(9)
	mr 6,12
.L669:
	stdu 10,8(9)
	addi 6,6,-1
.L668:
	cmpdi 0,6,1
	stdu 10,8(9)
	beq 0,.L682
.L664:
	srdi 8,8,2
	mtctr 8
.L640:
	std 10,8(9)
	std 10,16(9)
	addi 9,9,32
	std 10,-8(9)
	std 10,0(9)
	bdnz .L640
.L682:
	andi. 9,5,0x1
	beqlr 0
	rldicr 5,5,0,62
	sldi 9,5,2
	subf 7,5,7
	add 9,11,9
.L638:
	cmpdi 0,7,0
	stw 4,0(9)
	beqlr 0
	cmpldi 0,7,1
	stw 4,4(9)
	beqlr 0
	cmpldi 0,7,2
	stw 4,8(9)
	beqlr 0
	cmpldi 0,7,3
	stw 4,12(9)
	beqlr 0
	cmpldi 0,7,4
	stw 4,16(9)
	beqlr 0
	stw 4,20(9)
	blr
.L642:
	mr 9,3
	b .L638
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
	cmpld 0,3,4
	bge 0,.L686
	cmpdi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq 0,.L721
	cmpdi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr 0
.L721:
	srdi 9,5,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L756
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L688:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L688
.L685:
	blr
	.p2align 4,,15
.L686:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 9,5,-1
	cmpldi 0,9,6
	ble 0,.L689
	or 10,4,3
	andi. 10,10,0x7
	bne 0,.L689
	addi 10,3,1
	subf 10,10,4
	subfic 10,10,6
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq 0,.L689
	srdi 9,5,3
	addi 8,3,-8
	andi. 10,9,0x1
	addi 7,9,-1
	addi 10,4,-8
	beq 0,.L727
	cmpdi 0,7,0
	ld 7,0(3)
	mr 8,3
	mr 10,4
	std 7,0(4)
	beq 0,.L746
.L727:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L757
	addi 9,9,-1
	mtctr 9
	ld 6,8(8)
	std 6,8(10)
	addi 7,8,8
	ld 6,8(7)
	addi 9,10,8
	std 6,8(9)
.L690:
	ld 6,16(7)
	std 6,16(9)
	addi 7,7,16
	ld 6,8(7)
	addi 9,9,16
	std 6,8(9)
	bdnz .L690
.L746:
	andi. 9,5,0x7
	rldicr 9,5,0,60
	add 10,4,9
	add 8,3,9
	subf 5,9,5
	beqlr 0
	cmpldi 0,5,1
	lbzx 7,3,9
	stbx 7,4,9
	beqlr 0
	cmpldi 0,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr 0
	cmpldi 0,5,3
	lbz 9,2(8)
	stb 9,2(10)
	beqlr 0
	cmpldi 0,5,4
	lbz 9,3(8)
	stb 9,3(10)
	beqlr 0
	cmpldi 0,5,5
	lbz 9,4(8)
	stb 9,4(10)
	beqlr 0
	cmpldi 0,5,6
	lbz 9,5(8)
	stb 9,5(10)
	beqlr 0
	lbz 9,6(8)
	stb 9,6(10)
	blr
	.p2align 4,,15
.L756:
	lbz 8,-1(3)
	mr 10,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L685
	lbz 8,-1(3)
	mr 10,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L756
	blr
	.p2align 4,,15
.L757:
	ld 6,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 6,-8(10)
	ld 6,16(7)
	std 6,16(9)
	bdz .L746
	ld 6,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 6,-8(10)
	ld 6,16(7)
	std 6,16(9)
	bdnz .L757
	b .L746
	.p2align 4,,15
.L689:
	andi. 10,9,0x1
	addi 8,4,-1
	addi 10,3,-1
	bne 0,.L762
.L724:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L693
	.p2align 4,,15
.L763:
	lbz 9,1(9)
	addi 8,8,2
	stb 9,1(7)
.L693:
	lbz 6,1(10)
	addi 9,10,1
	addi 7,8,1
	addi 10,10,2
	stb 6,1(8)
	bdnz .L763
	blr
.L762:
	lbz 7,0(3)
	mr 10,3
	mr 8,4
	stb 7,0(4)
	b .L724
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
	rotld 3,3,4
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
	subfic 4,4,64
	rotld 3,3,4
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
	rotlw 3,3,4
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
	subfic 4,4,32
	rotlw 3,3,4
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
	rotld 3,3,4
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
	subfic 4,4,64
	rotld 3,3,4
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
	rlwinm 4,4,0,28,31
	neg 9,4
	slw 4,3,4
	rlwinm 9,9,0,28,31
	srw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xffff
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
	rlwinm 4,4,0,28,31
	neg 9,4
	srw 4,3,4
	rlwinm 9,9,0,28,31
	slw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xffff
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
	rlwinm 4,4,0,29,31
	neg 9,4
	slw 4,3,4
	rlwinm 9,9,0,29,31
	srw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xff
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
	rlwinm 4,4,0,29,31
	neg 9,4
	srw 4,3,4
	rlwinm 9,9,0,29,31
	slw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xff
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
	rlwinm 10,3,8,16,23
	rlwinm 9,3,24,24,31
	or 9,9,10
	rlwinm 3,9,0,0xffff
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
	rotlwi 9,3,24
	rlwimi 9,3,8,8,15
	rlwimi 9,3,8,24,31
	rldicl 3,9,0,32
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
	rotlwi 10,3,24
	srdi 9,3,32
	rlwimi 10,3,8,8,15
	rlwimi 10,3,8,24,31
	rotlwi 3,9,24
	rlwimi 3,9,8,8,15
	rlwimi 3,9,8,24,31
	rldimi 3,10,32,0
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
	li 10,16
	li 9,0
	mtctr 10
	b .L780
	.p2align 4,,15
.L789:
	addi 9,9,1
	bne 0,.L779
	bdz .L788
.L780:
	srw 8,3,9
	addi 9,9,1
	rldicl 8,8,0,63
	srw 10,3,9
	cmpdi 7,8,0
	andi. 10,10,0x1
	beq 7,.L789
.L779:
	extsw 3,9
	blr
	.p2align 4,,15
.L788:
	li 9,0
	extsw 3,9
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
	mr. 9,3
	beq 0,.L793
	andi. 3,9,0x1
	bne 0,.L791
	li 3,1
	.p2align 4,,15
.L792:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L792
.L791:
	extsw 3,3
	blr
	.p2align 4,,15
.L793:
	li 3,0
	extsw 3,3
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
	addis 9,2,.LC6@toc@ha
	li 3,1
	lfs 0,.LC6@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L797
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L797:
	rldicl 3,3,0,63
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
	addis 9,2,.LC10@toc@ha
	li 3,1
	lfd 0,.LC10@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L800
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L800:
	rldicl 3,3,0,63
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
	addis 9,2,.LC14@toc@ha
	li 3,1
	addi 9,9,.LC14@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L803
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L803:
	rldicl 3,3,0,63
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
.LCF88:
0:	addis 2,12,.TOC.-.LCF88@ha
	addi 2,2,.TOC.-.LCF88@l
	.localentry	_Qp_itoq,.-_Qp_itoq
	std 4,-16(1)
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	ori 2,2,0
	lfd 0,-16(1)
	stfd 1,8(3)
	fcfid 0,0
	stfd 0,0(3)
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
	fcmpu 0,1,1
	bunlr 0
	fadds 0,1,1
	fcmpu 0,0,1
	beqlr 0
	cmpwi 0,4,0
	blt 0,.L819
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
.L808:
	andi. 9,4,0x1
	beq 0,.L809
	.p2align 4,,15
.L810:
	fmuls 1,1,0
.L809:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 0,0,0
	srawi 9,4,1
	addze 9,9
	bne 0,.L810
.L820:
	extsw 4,9
	fmuls 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne 0,.L810
	b .L820
	.p2align 4,,15
.L819:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L808
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
	fcmpu 0,1,1
	bunlr 0
	fadd 0,1,1
	fcmpu 0,0,1
	beqlr 0
	cmpwi 0,4,0
	blt 0,.L834
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
.L823:
	andi. 9,4,0x1
	beq 0,.L824
	.p2align 4,,15
.L825:
	fmul 1,1,0
.L824:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 0,0,0
	srawi 9,4,1
	addze 9,9
	bne 0,.L825
.L835:
	extsw 4,9
	fmul 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne 0,.L825
	b .L835
	.p2align 4,,15
.L834:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L823
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
	stfd 28,-32(1)
	stfd 29,-24(1)
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 28,1
	fmr 29,2
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	fmr 0,28
	fcmpu 0,0,0
	bun 0,.L837
	mflr 0
	.cfi_register 65, 0
	fmr 3,1
	fmr 4,2
	std 31,40(1)
	.cfi_offset 31, -40
	mr 31,5
	std 0,96(1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq 0,.L852
	cmpwi 0,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 0,.L853
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
.L838:
	andi. 9,31,0x1
	beq 0,.L839
	.p2align 4,,15
.L840:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L839:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L851
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	srawi 9,31,1
	addze 9,9
	fmr 31,2
	fmr 30,1
	bne 0,.L840
.L854:
	fmr 3,30
	fmr 4,31
	extsw 31,9
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	srawi 9,31,1
	addze 9,9
	fmr 31,2
	fmr 30,1
	bne 0,.L840
	b .L854
	.p2align 4,,15
.L851:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L852:
	ld 0,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L837:
	addi 1,1,80
	.cfi_def_cfa_offset 0
	fmr 1,28
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
	.p2align 4,,15
.L853:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L838
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
	cmpdi 0,5,0
	beqlr 0
	addi 9,5,-1
	cmpldi 0,9,6
	ble 0,.L857
	or 10,3,4
	andi. 10,10,0x7
	bne 0,.L857
	srdi 9,5,3
	addi 6,4,-8
	andi. 10,9,0x1
	addi 7,9,-1
	addi 10,3,-8
	bne 0,.L903
.L884:
	srdi 9,9,1
	mtctr 9
.L858:
	ld 11,8(10)
	ld 7,8(6)
	addi 9,10,8
	mr 8,6
	addi 10,10,16
	addi 6,6,16
	ld 8,16(8)
	xor 7,7,11
	std 7,-8(10)
	ld 7,8(9)
	xor 8,8,7
	std 8,8(9)
	bdnz .L858
.L898:
	andi. 9,5,0x7
	rldicr 10,5,0,60
	add 9,3,10
	add 8,4,10
	subf 5,10,5
	beqlr 0
	lbzx 7,3,10
	lbzx 6,4,10
	cmpldi 0,5,1
	xor 7,7,6
	stbx 7,3,10
	beqlr 0
	lbz 7,1(9)
	lbz 10,1(8)
	cmpldi 0,5,2
	xor 10,10,7
	stb 10,1(9)
	beqlr 0
	lbz 7,2(9)
	lbz 10,2(8)
	cmpldi 0,5,3
	xor 10,10,7
	stb 10,2(9)
	beqlr 0
	lbz 7,3(9)
	lbz 10,3(8)
	cmpldi 0,5,4
	xor 10,10,7
	stb 10,3(9)
	beqlr 0
	lbz 7,4(9)
	lbz 10,4(8)
	cmpldi 0,5,5
	xor 10,10,7
	stb 10,4(9)
	beqlr 0
	lbz 7,5(9)
	lbz 10,5(8)
	cmpldi 0,5,6
	xor 10,10,7
	stb 10,5(9)
	beqlr 0
	lbz 10,6(8)
	lbz 8,6(9)
	xor 10,10,8
	stb 10,6(9)
	blr
	.p2align 4,,15
.L903:
	ld 11,0(3)
	ld 8,0(4)
	cmpdi 0,7,0
	mr 6,4
	mr 10,3
	xor 8,8,11
	std 8,0(3)
	bne 0,.L884
	b .L898
	.p2align 4,,15
.L857:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 10,3,-1
	beq 0,.L881
	lbz 6,0(3)
	lbz 8,0(4)
	mr 7,4
	mr 10,3
	xor 8,8,6
	stb 8,0(3)
.L881:
	srdi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L860
	.p2align 4,,15
.L904:
	lbz 9,1(6)
	lbz 6,1(8)
	addi 10,10,2
	xor 9,9,6
	stb 9,1(8)
.L860:
	lbz 9,1(7)
	lbz 5,1(10)
	addi 6,7,1
	addi 8,10,1
	addi 7,7,2
	xor 9,9,5
	stb 9,1(10)
	bdnz .L904
	blr
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
	lbz 9,0(3)
	cmpwi 0,9,0
	mr 9,3
	beq 0,.L906
	.p2align 4,,15
.L907:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L907
.L906:
	cmpdi 0,5,0
	beq 0,.L908
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne 0,.L931
.L919:
	srdi 8,5,1
	mtctr 8
.L909:
	lbz 8,1(10)
	addi 7,10,1
	addi 5,9,1
	addi 10,7,1
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr 0
	lbz 8,1(7)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	addi 9,5,1
	cmpwi 0,7,0
	beqlr 0
	bdnz .L909
.L908:
	li 10,0
	stb 10,0(9)
	blr
	.p2align 4,,15
.L931:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr 0
	cmpdi 0,7,0
	addi 9,9,1
	bne 0,.L919
	b .L908
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
	cmpdi 0,4,0
	mr 9,3
	li 3,0
	beqlr 0
	andi. 8,4,0x3
	mr 10,4
	beq 0,.L944
	cmpdi 0,8,1
	beq 0,.L955
	cmpdi 0,8,2
	beq 0,.L956
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr 0
	li 3,1
.L956:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
.L955:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr 0
	.p2align 4,,15
.L944:
	srdi 10,10,2
.L933:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	mr 7,3
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,7,2
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	cmpdi 0,10,1
	addi 3,7,3
	addi 10,10,-1
	bne 0,.L933
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
	lbz 8,0(3)
	addi 4,4,-1
	cmpwi 0,8,0
	beq 0,.L970
.L966:
	mr 10,4
	b .L969
	.p2align 4,,15
.L968:
	beqlr 7
.L969:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne 0,.L968
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne 0,.L966
.L970:
	li 3,0
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
	mr 9,3
	li 3,0
	.p2align 5
.L977:
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	bne 7,.L976
	mr 3,9
.L976:
	addi 9,9,1
	bne 0,.L977
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
	lbz 11,0(4)
	mr 8,3
	andi. 5,11,0xff
	beq 0,.L993
	mr 9,4
	.p2align 4,,15
.L982:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L982
	subf. 9,4,9
	mr 3,8
	beqlr 0
	addi 3,9,-1
	b .L1001
	.p2align 4,,15
.L1004:
	cmpwi 0,9,0
	addi 8,8,1
	beq 0,.L1003
.L1001:
	lbz 9,0(8)
	cmpw 0,9,5
	bne 0,.L1004
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 10,11
	mr 7,8
	b .L984
	.p2align 4,,15
.L1006:
	bdz .L986
	bne 7,.L987
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq 0,.L1005
	lbzu 10,1(6)
.L984:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne 0,.L1006
.L987:
	addi 8,8,1
	b .L1001
	.p2align 4,,15
.L1003:
	li 3,0
	blr
	.p2align 4,,15
.L1005:
	lbz 10,1(6)
.L986:
	cmpw 0,9,10
	bne 0,.L987
.L993:
	mr 3,8
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
.LCF98:
0:	addis 2,12,.TOC.-.LCF98@ha
	addi 2,2,.TOC.-.LCF98@l
	.localentry	copysign,.-copysign
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L1017
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	fneg 1,1
	blr
	.p2align 4,,15
.L1017:
	fcmpu 0,2,0
	bnglr 0
	fneg 1,1
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
	cmpdi 0,6,0
	mr 9,3
	beqlr 0
	cmpld 0,4,6
	blt 0,.L1026
	subf 4,6,4
	add 0,3,4
	cmpld 0,3,0
	bgt 0,.L1026
	lbz 12,0(5)
	cmpldi 7,6,1
	addi 11,3,-1
	b .L1023
	.p2align 4,,15
.L1020:
	cmpld 0,0,9
	blt 0,.L1026
.L1023:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 0,10,12
	bne 0,.L1020
	beqlr 7
	subf 10,11,9
	mr 7,5
	add 10,10,6
	mr 8,11
	addi 10,10,-2
	mtctr 10
	.p2align 5
.L1021:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne 0,.L1020
	bdnz .L1021
	blr
	.p2align 4,,15
.L1026:
	li 3,0
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 30,3
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	beq 0,.L1035
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L1035:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	add 3,30,31
	ld 30,-16(1)
	ld 31,-8(1)
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
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 7,1,0
	blt 7,.L1063
	addis 9,2,.LC36@toc@ha
	li 10,0
	lfd 0,.LC36@toc@l(9)
	fcmpu 0,1,0
	cror 2,1,2
	bne 0,.L1064
.L1043:
	addis 9,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(9)
	addis 9,2,.LC36@toc@ha
	lfd 0,.LC36@toc@l(9)
	li 9,0
	.p2align 5
.L1049:
	fmul 1,1,12
	addi 9,9,1
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L1049
	cmpwi 0,10,0
	stw 9,0(4)
	beqlr 0
.L1066:
	fneg 1,1
	blr
	.p2align 4,,15
.L1064:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L1046
	bne 7,.L1055
.L1046:
	li 9,0
	stw 9,0(4)
	blr
	.p2align 4,,15
.L1063:
	addis 9,2,.LC32@toc@ha
	fneg 12,1
	lfd 0,.LC32@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,2
	bne 0,.L1065
	fmr 1,12
	li 10,1
	b .L1043
	.p2align 4,,15
.L1065:
	addis 9,2,.LC34@toc@ha
	lfd 0,.LC34@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L1046
	li 10,1
.L1044:
	fmr 1,12
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	li 9,0
	.p2align 4,,15
.L1051:
	fadd 1,1,1
	addi 9,9,-1
	fcmpu 0,1,0
	blt 0,.L1051
	cmpwi 0,10,0
	stw 9,0(4)
	bne 0,.L1066
	blr
.L1055:
	fmr 12,1
	b .L1044
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
	mr. 10,3
	li 3,0
	beqlr 0
	.p2align 4,,15
.L1069:
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	beqlr 0
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	bne 0,.L1069
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
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 10,32
	li 9,1
	blt 0,.L1074
	b .L1075
	.p2align 4,,15
.L1078:
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1076
	cmpwi 0,4,0
	slwi 8,4,1
	cmplw 7,3,8
	blt 0,.L1075
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1076
	bdz .L1077
.L1074:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge 0,.L1078
.L1075:
	li 10,0
	.p2align 4,,15
.L1080:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt 0,.L1079
	rldicl 3,8,0,32
	or 10,10,9
.L1079:
	srwi 9,9,1
	cmpwi 0,9,0
	bne 0,.L1080
.L1077:
	cmpdi 0,5,0
	beq 0,.L1081
	mr 10,3
.L1081:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L1076:
	cmpwi 0,9,0
	bne 0,.L1075
	li 10,0
	b .L1077
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
	cmpdi 0,3,0
	beq 0,.L1096
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L1096:
	li 3,7
	extsw 3,3
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
	sradi 9,3,63
	cmpd 0,3,9
	xor 3,3,9
	beq 0,.L1099
	cntlzd 3,3
	addi 3,3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L1099:
	li 3,63
	extsw 3,3
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
	mr. 10,3
	li 3,0
	beq 0,.L1101
	.p2align 5
.L1102:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	bne 0,.L1102
.L1101:
	rldicl 3,3,0,32
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
	cmpld 0,3,4
	srwi 9,5,3
	rlwinm 0,5,0,0,28
	blt 0,.L1109
	add 8,4,5
	mr 10,5
	cmpld 0,3,8
	ble 0,.L1189
.L1109:
	cmpwi 0,9,0
	addi 8,4,-8
	addi 10,3,-8
	beq 0,.L1155
	andi. 7,9,0x1
	addi 7,9,-1
	bne 0,.L1190
.L1141:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1181
	addi 9,9,-1
	mtctr 9
	ld 6,8(8)
	std 6,8(10)
	addi 7,8,8
	ld 6,8(7)
	addi 9,10,8
	std 6,8(9)
.L1112:
	ld 6,16(7)
	std 6,16(9)
	addi 7,7,16
	ld 6,8(7)
	addi 9,9,16
	std 6,8(9)
	bdnz .L1112
.L1158:
	cmplw 0,0,5
	bgelr 0
	subf 10,0,5
	addi 9,10,-1
	cmplwi 0,9,6
	rldicl 9,0,0,32
	ble 0,.L1114
	addi 8,9,1
	add 6,3,9
	add 8,4,8
	add 11,4,9
	subf 8,8,6
	subfic 8,8,6
	subfe 8,8,8
	neg 8,8
	rlwinm 8,8,0,0xff
	cmpwi 0,8,0
	beq 0,.L1114
	or 8,11,6
	andi. 8,8,0x7
	bne 0,.L1114
	rldicl 9,10,61,35
	addi 7,11,-8
	andi. 8,9,0x1
	addi 12,9,-1
	addi 8,6,-8
	beq 0,.L1138
	cmpdi 0,12,0
	mr 8,6
	ld 6,0(11)
	mr 7,11
	std 6,0(8)
	beq 0,.L1162
.L1138:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1180
	addi 9,9,-1
	mtctr 9
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 9,8,8
	std 11,8(9)
.L1115:
	ld 11,16(6)
	std 11,16(9)
	addi 6,6,16
	ld 11,8(6)
	addi 9,9,16
	std 11,8(9)
	bdnz .L1115
.L1162:
	andi. 9,10,0x7
	rlwinm 10,10,0,0,28
	add 10,10,0
	beqlr 0
	rldicl 8,10,0,32
	addi 9,10,1
	cmplw 0,9,5
	lbzx 7,4,8
	stbx 7,3,8
	bgelr 0
	rldicl 9,9,0,32
	addi 8,10,2
	cmplw 0,8,5
	lbzx 7,4,9
	stbx 7,3,9
	bgelr 0
	rldicl 8,8,0,32
	addi 9,10,3
	cmplw 0,9,5
	lbzx 7,4,8
	stbx 7,3,8
	bgelr 0
	rldicl 9,9,0,32
	addi 8,10,4
	cmplw 0,8,5
	lbzx 7,4,9
	stbx 7,3,9
	bgelr 0
	rldicl 8,8,0,32
	addi 9,10,5
	cmplw 0,9,5
	lbzx 7,4,8
	stbx 7,3,8
	bgelr 0
	rldicl 9,9,0,32
	addi 10,10,6
	cmplw 0,10,5
	lbzx 8,4,9
	stbx 8,3,9
	bgelr 0
	rldicl 10,10,0,32
	lbzx 9,4,10
	stbx 9,3,10
	blr
	.p2align 4,,15
.L1181:
	ld 6,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 6,-8(10)
	ld 6,16(7)
	std 6,16(9)
	bdz .L1158
	ld 6,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 6,-8(10)
	ld 6,16(7)
	std 6,16(9)
	bdnz .L1181
	b .L1158
	.p2align 4,,15
.L1180:
	ld 11,8(7)
	mr 6,7
	mr 9,8
	addi 7,7,16
	addi 8,8,16
	std 11,-8(8)
	ld 11,16(6)
	std 11,16(9)
	bdz .L1162
	ld 11,8(7)
	mr 6,7
	mr 9,8
	addi 7,7,16
	addi 8,8,16
	std 11,-8(8)
	ld 11,16(6)
	std 11,16(9)
	bdnz .L1180
	b .L1162
	.p2align 4,,15
.L1190:
	cmpdi 0,7,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	bne 0,.L1141
	b .L1158
	.p2align 4,,15
.L1189:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq 0,.L1144
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	beqlr 0
.L1144:
	srdi 9,10,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1182
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1119:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1119
.L1105:
	blr
	.p2align 4,,15
.L1182:
	lbz 8,-1(4)
	mr 10,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L1105
	lbz 8,-1(4)
	mr 10,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L1182
	blr
	.p2align 4,,15
.L1155:
	cmpdi 0,5,0
	rldicl 9,0,0,32
	mr 10,5
	beqlr 0
.L1114:
	rldicl 10,10,0,32
	addi 9,9,-1
	andi. 8,10,0x1
	add 4,4,9
	addi 8,10,-1
	add 9,3,9
	beq 0,.L1135
	cmpdi 0,8,0
	lbzu 8,1(4)
	stbu 8,1(9)
	beqlr 0
.L1135:
	srdi 10,10,1
	mtctr 10
	cmpdi 0,10,2
	ble 0,.L1179
	addi 10,10,-1
	mtctr 10
	lbz 7,1(4)
	stb 7,1(9)
	addi 8,4,1
	lbz 7,1(8)
	addi 10,9,1
	stb 7,1(10)
.L1117:
	lbz 7,2(8)
	stb 7,2(10)
	addi 8,8,2
	lbz 7,1(8)
	addi 10,10,2
	stb 7,1(10)
	bdnz .L1117
	blr
	.p2align 4,,15
.L1179:
	lbz 7,1(4)
	mr 8,4
	mr 10,9
	addi 4,4,2
	addi 9,9,2
	stb 7,-1(9)
	lbz 7,2(8)
	stb 7,2(10)
	bdnz .L1179
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
	cmpld 0,3,4
	srwi 6,5,1
	blt 0,.L1195
	add 10,4,5
	mr 9,5
	cmpld 0,3,10
	ble 0,.L1253
.L1195:
	cmpwi 0,6,0
	beq 0,.L1194
	addi 9,6,-1
	cmplwi 0,9,4
	ble 0,.L1198
	or 9,4,3
	andi. 9,9,0x7
	bne 0,.L1198
	addi 9,4,2
	subf 9,9,3
	subfic 9,9,4
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L1198
	srdi 9,5,3
	srwi 0,5,3
	andi. 10,9,0x1
	addi 7,9,-1
	addi 8,4,-8
	addi 10,3,-8
	beq 0,.L1219
	cmpdi 0,7,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq 0,.L1234
.L1219:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1248
	addi 9,9,-1
	mtctr 9
	ld 11,8(8)
	std 11,8(10)
	addi 7,8,8
	ld 11,8(7)
	addi 9,10,8
	std 11,8(9)
.L1199:
	ld 11,16(7)
	std 11,16(9)
	addi 7,7,16
	ld 11,8(7)
	addi 9,9,16
	std 11,8(9)
	bdnz .L1199
.L1234:
	slwi 9,0,2
	cmplw 0,6,9
	beq 0,.L1194
	rlwinm 8,9,1,0,28
	addi 10,9,1
	cmplw 0,6,10
	lhzx 7,4,8
	sthx 7,3,8
	ble 0,.L1194
	rldic 10,10,1,31
	addi 9,9,2
	cmplw 0,6,9
	lhzx 8,4,10
	sthx 8,3,10
	ble 0,.L1194
	rldicl 9,9,0,32
	sldi 9,9,1
	lhzx 10,4,9
	sthx 10,3,9
.L1194:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
	.p2align 4,,15
.L1248:
	ld 11,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 11,-8(10)
	ld 11,16(7)
	std 11,16(9)
	bdz .L1234
	ld 11,8(8)
	mr 7,8
	mr 9,10
	addi 8,8,16
	addi 10,10,16
	std 11,-8(10)
	ld 11,16(7)
	std 11,16(9)
	bdnz .L1248
	b .L1234
	.p2align 4,,15
.L1253:
	cmpdi 0,5,0
	addi 10,5,-1
	rldicl 10,10,0,32
	addi 10,10,1
	add 4,4,10
	add 3,3,10
	beqlr 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq 0,.L1222
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(3)
	beqlr 0
.L1222:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1249
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1204:
	addi 4,10,-1
	lbz 8,-1(4)
	addi 3,9,-1
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
	bdnz .L1204
.L1191:
	blr
	.p2align 4,,15
.L1249:
	lbz 8,-1(4)
	mr 10,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L1191
	lbz 8,-1(4)
	mr 10,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L1249
	blr
	.p2align 4,,15
.L1198:
	andi. 9,6,0x1
	addi 10,4,-2
	addi 8,6,-1
	addi 9,3,-2
	beq 0,.L1216
	cmpdi 0,8,0
	lhz 8,0(4)
	mr 10,4
	mr 9,3
	sth 8,0(3)
	beq 0,.L1194
.L1216:
	srdi 8,6,1
	mtctr 8
	cmpdi 0,8,2
	ble 0,.L1247
	addi 8,8,-1
	mtctr 8
	lhz 6,2(10)
	sth 6,2(9)
	addi 7,10,2
	lhz 6,2(7)
	addi 8,9,2
	sth 6,2(8)
.L1201:
	lhz 6,4(7)
	sth 6,4(8)
	addi 7,7,4
	lhz 6,2(7)
	addi 8,8,4
	sth 6,2(8)
	bdnz .L1201
	b .L1194
	.p2align 4,,15
.L1247:
	lhz 6,2(10)
	mr 7,10
	mr 8,9
	addi 10,10,4
	addi 9,9,4
	sth 6,-2(9)
	lhz 6,4(7)
	sth 6,4(8)
	bdnz .L1247
	b .L1194
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
	cmpld 0,3,4
	srwi 9,5,2
	rlwinm 0,5,0,0,29
	blt 0,.L1258
	add 8,4,5
	mr 10,5
	cmpld 0,3,8
	ble 0,.L1338
.L1258:
	cmpwi 0,9,0
	addi 8,4,-4
	addi 10,3,-4
	beq 0,.L1304
	andi. 7,9,0x1
	addi 7,9,-1
	bne 0,.L1339
.L1290:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1330
	addi 9,9,-1
	mtctr 9
	lwz 6,4(8)
	stw 6,4(10)
	addi 7,8,4
	lwz 6,4(7)
	addi 9,10,4
	stw 6,4(9)
.L1261:
	lwz 6,8(7)
	stw 6,8(9)
	addi 7,7,8
	lwz 6,4(7)
	addi 9,9,8
	stw 6,4(9)
	bdnz .L1261
.L1307:
	cmplw 0,0,5
	bgelr 0
	subf 10,0,5
	addi 9,10,-1
	cmplwi 0,9,6
	rldicl 9,0,0,32
	ble 0,.L1263
	addi 8,9,1
	add 6,3,9
	add 8,4,8
	add 11,4,9
	subf 8,8,6
	subfic 8,8,6
	subfe 8,8,8
	neg 8,8
	rlwinm 8,8,0,0xff
	cmpwi 0,8,0
	beq 0,.L1263
	or 8,11,6
	andi. 8,8,0x7
	bne 0,.L1263
	rldicl 9,10,61,35
	addi 7,11,-8
	andi. 8,9,0x1
	addi 12,9,-1
	addi 8,6,-8
	beq 0,.L1287
	cmpdi 0,12,0
	mr 8,6
	ld 6,0(11)
	mr 7,11
	std 6,0(8)
	beq 0,.L1311
.L1287:
	srdi 9,9,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1329
	addi 9,9,-1
	mtctr 9
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 9,8,8
	std 11,8(9)
.L1264:
	ld 11,16(6)
	std 11,16(9)
	addi 6,6,16
	ld 11,8(6)
	addi 9,9,16
	std 11,8(9)
	bdnz .L1264
.L1311:
	andi. 9,10,0x7
	rlwinm 10,10,0,0,28
	add 10,10,0
	beqlr 0
	rldicl 8,10,0,32
	addi 9,10,1
	cmplw 0,9,5
	lbzx 7,4,8
	stbx 7,3,8
	bgelr 0
	rldicl 9,9,0,32
	addi 8,10,2
	cmplw 0,8,5
	lbzx 7,4,9
	stbx 7,3,9
	bgelr 0
	rldicl 8,8,0,32
	addi 9,10,3
	cmplw 0,9,5
	lbzx 7,4,8
	stbx 7,3,8
	bgelr 0
	rldicl 9,9,0,32
	addi 8,10,4
	cmplw 0,8,5
	lbzx 7,4,9
	stbx 7,3,9
	bgelr 0
	rldicl 8,8,0,32
	addi 9,10,5
	cmplw 0,9,5
	lbzx 7,4,8
	stbx 7,3,8
	bgelr 0
	rldicl 9,9,0,32
	addi 10,10,6
	cmplw 0,10,5
	lbzx 8,4,9
	stbx 8,3,9
	bgelr 0
	rldicl 10,10,0,32
	lbzx 9,4,10
	stbx 9,3,10
	blr
	.p2align 4,,15
.L1330:
	lwz 6,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(9)
	bdz .L1307
	lwz 6,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(9)
	bdnz .L1330
	b .L1307
	.p2align 4,,15
.L1329:
	ld 11,8(7)
	mr 6,7
	mr 9,8
	addi 7,7,16
	addi 8,8,16
	std 11,-8(8)
	ld 11,16(6)
	std 11,16(9)
	bdz .L1311
	ld 11,8(7)
	mr 6,7
	mr 9,8
	addi 7,7,16
	addi 8,8,16
	std 11,-8(8)
	ld 11,16(6)
	std 11,16(9)
	bdnz .L1329
	b .L1311
	.p2align 4,,15
.L1339:
	cmpdi 0,7,0
	lwz 7,0(4)
	mr 8,4
	mr 10,3
	stw 7,0(3)
	bne 0,.L1290
	b .L1307
	.p2align 4,,15
.L1338:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq 0,.L1293
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	beqlr 0
.L1293:
	srdi 9,10,1
	mtctr 9
	cmpdi 0,9,2
	ble 0,.L1331
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1268:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1268
.L1254:
	blr
	.p2align 4,,15
.L1331:
	lbz 8,-1(4)
	mr 10,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L1254
	lbz 8,-1(4)
	mr 10,4
	mr 9,3
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L1331
	blr
	.p2align 4,,15
.L1304:
	cmpdi 0,5,0
	rldicl 9,0,0,32
	mr 10,5
	beqlr 0
.L1263:
	rldicl 10,10,0,32
	addi 9,9,-1
	andi. 8,10,0x1
	add 4,4,9
	addi 8,10,-1
	add 9,3,9
	beq 0,.L1284
	cmpdi 0,8,0
	lbzu 8,1(4)
	stbu 8,1(9)
	beqlr 0
.L1284:
	srdi 10,10,1
	mtctr 10
	cmpdi 0,10,2
	ble 0,.L1328
	addi 10,10,-1
	mtctr 10
	lbz 7,1(4)
	stb 7,1(9)
	addi 8,4,1
	lbz 7,1(8)
	addi 10,9,1
	stb 7,1(10)
.L1266:
	lbz 7,2(8)
	stb 7,2(10)
	addi 8,8,2
	lbz 7,1(8)
	addi 10,10,2
	stb 7,1(10)
	bdnz .L1266
	blr
	.p2align 4,,15
.L1328:
	lbz 7,1(4)
	mr 8,4
	mr 10,9
	addi 4,4,2
	addi 9,9,2
	stb 7,-1(9)
	lbz 7,2(8)
	stb 7,2(10)
	bdnz .L1328
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
	divw 9,3,4
	mullw 9,9,4
	subf 3,9,3
	extsw 3,3
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
	std 3,-16(1)
	ori 2,2,0
	lfd 1,-16(1)
	fcfid 1,1
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
	std 3,-16(1)
	ori 2,2,0
	lfd 1,-16(1)
	fcfid 0,1
	frsp 1,0
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
	cmpdi 0,3,0
	blt 0,.L1346
	std 3,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 1,0
	blr
	.p2align 4,,15
.L1346:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 1,0
	fadd 1,1,1
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
	cmpdi 0,3,0
	blt 0,.L1349
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	blt 0,.L1352
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L1352:
	mr 9,3
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L1349:
	srdi 9,3,1
	rldicl 3,3,0,63
	srdi 10,9,53
	or 3,3,9
	addi 10,10,1
	rldicl 9,3,0,53
	cmpldi 0,10,2
	addi 9,9,2047
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L1351
	mr 9,3
.L1351:
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	fadds 1,1,1
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
	divwu 9,3,4
	mullw 9,9,4
	subf 3,9,3
	rldicl 3,3,0,32
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
	srdi. 9,3,15
	bne 0,.L1357
	srawi 9,3,14
	cmpwi 0,9,0
	bne 0,.L1356
	srdi. 9,3,13
	bne 0,.L1358
	srdi. 9,3,12
	bne 0,.L1359
	srdi. 9,3,11
	bne 0,.L1360
	srdi. 9,3,10
	bne 0,.L1361
	srdi. 9,3,9
	bne 0,.L1362
	srdi. 9,3,8
	bne 0,.L1363
	srdi. 9,3,7
	bne 0,.L1364
	srdi. 9,3,6
	bne 0,.L1365
	srdi. 9,3,5
	bne 0,.L1366
	srdi. 9,3,4
	bne 0,.L1367
	srdi. 9,3,3
	bne 0,.L1368
	srdi. 9,3,2
	bne 0,.L1369
	srdi. 9,3,1
	bne 0,.L1370
	cntlzd 3,3
	srdi 3,3,6
	addi 9,3,15
.L1356:
	rldicl 3,9,0,59
	blr
.L1357:
	li 9,0
	b .L1356
.L1368:
	li 9,12
	b .L1356
.L1358:
	li 9,2
	b .L1356
.L1359:
	li 9,3
	b .L1356
.L1360:
	li 9,4
	b .L1356
.L1361:
	li 9,5
	b .L1356
.L1362:
	li 9,6
	b .L1356
.L1363:
	li 9,7
	b .L1356
.L1364:
	li 9,8
	b .L1356
.L1365:
	li 9,9
	b .L1356
.L1366:
	li 9,10
	b .L1356
.L1367:
	li 9,11
	b .L1356
.L1369:
	li 9,13
	b .L1356
.L1370:
	li 9,14
	b .L1356
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
	andi. 9,3,0x1
	bne 0,.L1375
	andi. 9,3,0x2
	bne 0,.L1376
	andi. 9,3,0x4
	bne 0,.L1377
	andi. 9,3,0x8
	bne 0,.L1378
	andi. 9,3,0x10
	bne 0,.L1379
	andi. 9,3,0x20
	bne 0,.L1380
	andi. 9,3,0x40
	bne 0,.L1381
	andi. 9,3,0x80
	bne 0,.L1382
	andi. 9,3,0x100
	bne 0,.L1383
	andi. 9,3,0x200
	bne 0,.L1384
	andi. 9,3,0x400
	bne 0,.L1385
	andi. 9,3,0x800
	bne 0,.L1386
	andi. 9,3,0x1000
	bne 0,.L1387
	andi. 9,3,0x2000
	bne 0,.L1388
	andi. 9,3,0x4000
	bne 0,.L1389
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
.L1374:
	rldicl 3,3,0,59
	blr
.L1375:
	li 3,0
	b .L1374
.L1376:
	li 3,1
	b .L1374
.L1387:
	li 3,12
	b .L1374
.L1377:
	li 3,2
	b .L1374
.L1378:
	li 3,3
	b .L1374
.L1379:
	li 3,4
	b .L1374
.L1380:
	li 3,5
	b .L1374
.L1381:
	li 3,6
	b .L1374
.L1382:
	li 3,7
	b .L1374
.L1383:
	li 3,8
	b .L1374
.L1384:
	li 3,9
	b .L1374
.L1385:
	li 3,10
	b .L1374
.L1386:
	li 3,11
	b .L1374
.L1388:
	li 3,13
	b .L1374
.L1389:
	li 3,14
	b .L1374
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
	addis 9,2,.LC43@toc@ha
	lfs 0,.LC43@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1397
	fctidz 0,1
	stfd 0,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1397:
	fsubs 1,1,0
	fctidz 0,1
	stfd 0,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	addis 3,3,0x1
	addi 3,3,-32768
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
	rlwinm 10,3,0,31,31
	rlwinm 9,3,31,31,31
	add 9,9,10
	rlwinm 10,3,30,31,31
	add 9,9,10
	rlwinm 10,3,29,31,31
	add 9,9,10
	rlwinm 10,3,28,31,31
	add 9,9,10
	rlwinm 10,3,27,31,31
	add 9,9,10
	rlwinm 10,3,26,31,31
	add 9,9,10
	rlwinm 10,3,25,31,31
	add 9,9,10
	rlwinm 10,3,24,31,31
	add 9,9,10
	rlwinm 10,3,23,31,31
	add 9,9,10
	rlwinm 10,3,22,31,31
	add 9,9,10
	rlwinm 10,3,21,31,31
	add 9,9,10
	rlwinm 10,3,20,31,31
	add 9,9,10
	rlwinm 10,3,19,31,31
	add 9,9,10
	rlwinm 10,3,18,31,31
	add 9,9,10
	srawi 3,3,15
	add 3,9,3
	rldicl 3,3,0,63
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
	rlwinm 10,3,0,31,31
	rlwinm 9,3,31,31,31
	add 9,9,10
	rlwinm 10,3,30,31,31
	add 9,9,10
	rlwinm 10,3,29,31,31
	add 9,9,10
	rlwinm 10,3,28,31,31
	add 9,9,10
	rlwinm 10,3,27,31,31
	add 9,9,10
	rlwinm 10,3,26,31,31
	add 9,9,10
	rlwinm 10,3,25,31,31
	add 9,9,10
	rlwinm 10,3,24,31,31
	add 9,9,10
	rlwinm 10,3,23,31,31
	add 9,9,10
	rlwinm 10,3,22,31,31
	add 9,9,10
	rlwinm 10,3,21,31,31
	add 9,9,10
	rlwinm 10,3,20,31,31
	add 9,9,10
	rlwinm 10,3,19,31,31
	add 9,9,10
	rlwinm 10,3,18,31,31
	add 9,9,10
	srawi 3,3,15
	add 3,9,3
	rldicl 3,3,0,32
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
	mr. 10,3
	li 3,0
	beq 0,.L1401
	.p2align 5
.L1402:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 0,10,0
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	bne 0,.L1402
.L1401:
	rldicl 3,3,0,32
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
	mr. 10,3
	li 3,0
	beq 0,.L1406
	cmpdi 0,4,0
	beq 0,.L1406
	.p2align 5
.L1407:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	bne 0,.L1407
.L1406:
	rldicl 3,3,0,32
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
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 10,32
	li 9,1
	blt 0,.L1412
	b .L1413
	.p2align 4,,15
.L1416:
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1414
	cmpwi 0,4,0
	slwi 8,4,1
	cmplw 7,3,8
	blt 0,.L1413
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1414
	bdz .L1415
.L1412:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge 0,.L1416
.L1413:
	li 10,0
	.p2align 4,,15
.L1418:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt 0,.L1417
	rldicl 3,8,0,32
	or 10,10,9
.L1417:
	srwi 9,9,1
	cmpwi 0,9,0
	bne 0,.L1418
.L1415:
	cmpdi 0,5,0
	beq 0,.L1419
	mr 10,3
.L1419:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L1414:
	cmpwi 0,9,0
	bne 0,.L1413
	li 10,0
	b .L1415
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
	fcmpu 0,1,2
	li 3,-1
	blt 0,.L1433
	mfcr 3
	rlwinm 3,3,2,1
.L1433:
	extsw 3,3
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
	fcmpu 0,1,2
	li 3,-1
	blt 0,.L1436
	mfcr 3
	rlwinm 3,3,2,1
.L1436:
	extsw 3,3
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
	mulld 3,3,4
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
	mulld 3,3,4
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
	cmpwi 0,4,0
	blt 0,.L1454
	cmpdi 0,4,0
	beq 0,.L1446
	li 6,0
.L1442:
	li 10,32
	li 8,0
	b .L1445
	.p2align 4,,15
.L1455:
	beq 7,.L1444
.L1445:
	rlwinm 9,4,0,31,31
	addi 10,10,-1
	sradi. 4,4,1
	rlwinm 7,10,0,0xff
	neg 9,9
	and 9,9,3
	cmpwi 7,7,0
	slwi 7,3,1
	add 8,8,9
	extsw 3,7
	bne 0,.L1455
.L1444:
	cmpwi 0,6,0
	beq 0,.L1443
	neg 8,8
.L1443:
	extsw 3,8
	blr
	.p2align 4,,15
.L1454:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1442
.L1446:
	li 8,0
	b .L1443
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
	cmpdi 0,3,0
	li 9,1
	li 8,0
	bge 0,.L1457
	neg 3,3
	li 9,0
	li 8,1
.L1457:
	cmpdi 0,4,0
	bge 0,.L1458
	neg 4,4
	mr 8,9
.L1458:
	cmplw 0,3,4
	li 10,16
	mtctr 10
	li 9,1
	bgt 0,.L1459
	b .L1460
	.p2align 4,,15
.L1463:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	cmpwi 7,4,0
	ble 0,.L1461
	blt 7,.L1479
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L1461
	bdz .L1470
.L1459:
	cmpwi 0,4,0
	bge 0,.L1463
.L1479:
	cmplw 0,3,4
.L1460:
	li 10,0
	.p2align 5
.L1465:
	blt 0,.L1464
	subf 3,4,3
	or 10,10,9
.L1464:
	srwi 9,9,1
	srwi 4,4,1
	cmpwi 7,9,0
	cmplw 0,3,4
	bne 7,.L1465
	cmpwi 0,8,0
	rldicl 3,10,0,32
	beqlr 0
.L1486:
	neg 3,3
	blr
	.p2align 4,,15
.L1461:
	cmpwi 7,9,0
	bne 7,.L1460
	.p2align 4,,15
.L1470:
	cmpwi 0,8,0
	li 3,0
	beqlr 0
	b .L1486
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
	cmpdi 0,3,0
	li 7,0
	bge 0,.L1488
	neg 3,3
	li 7,1
.L1488:
	sradi 9,4,63
	li 6,16
	mtctr 6
	xor 4,9,4
	subf 9,9,4
	mr 8,3
	cmplw 0,3,9
	li 10,1
	bgt 0,.L1489
	b .L1515
	.p2align 4,,15
.L1493:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	cmpwi 7,9,0
	ble 0,.L1491
	blt 7,.L1512
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1491
	bdz .L1492
.L1489:
	cmpwi 0,9,0
	bge 0,.L1493
.L1512:
	cmplw 0,8,9
	.p2align 5
.L1515:
	srwi 10,10,1
	blt 0,.L1494
	subf 8,9,8
.L1494:
	cmpwi 7,10,0
	srwi 9,9,1
	cmplw 0,8,9
	bne 7,.L1515
.L1492:
	cmpwi 0,7,0
	rldicl 3,8,0,32
	beqlr 0
	neg 3,3
	blr
	.p2align 4,,15
.L1491:
	cmpwi 7,10,0
	bne 7,.L1515
	b .L1492
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
	cmplw 0,4,3
	bge 0,.L1634
	andi. 9,4,0x8000
	bne 0,.L1520
	rldic 9,4,1,48
	cmplw 0,3,9
	ble 0,.L1521
	andi. 10,9,0x8000
	bne 0,.L1522
	rldic 9,4,2,48
	cmplw 0,3,9
	ble 0,.L1523
	andi. 10,9,0x8000
	bne 0,.L1524
	rldic 9,4,3,48
	cmplw 0,3,9
	ble 0,.L1525
	andi. 10,9,0x8000
	bne 0,.L1526
	rldic 9,4,4,48
	cmplw 0,3,9
	ble 0,.L1527
	andi. 10,9,0x8000
	bne 0,.L1528
	rldic 9,4,5,48
	cmplw 0,3,9
	ble 0,.L1529
	andi. 10,9,0x8000
	bne 0,.L1530
	rldic 9,4,6,48
	cmplw 0,3,9
	ble 0,.L1531
	andi. 10,9,0x8000
	bne 0,.L1532
	rldic 9,4,7,48
	cmplw 0,3,9
	ble 0,.L1533
	andi. 10,9,0x8000
	bne 0,.L1534
	rldic 9,4,8,48
	cmplw 0,3,9
	ble 0,.L1535
	andi. 10,9,0x8000
	bne 0,.L1536
	rldic 9,4,9,48
	cmplw 0,3,9
	ble 0,.L1537
	andi. 10,9,0x8000
	bne 0,.L1538
	rldic 9,4,10,48
	cmplw 0,3,9
	ble 0,.L1539
	andi. 10,9,0x8000
	bne 0,.L1540
	rldic 9,4,11,48
	cmplw 0,3,9
	ble 0,.L1541
	andi. 10,9,0x8000
	bne 0,.L1542
	rldic 9,4,12,48
	cmplw 0,3,9
	ble 0,.L1543
	andi. 10,9,0x8000
	bne 0,.L1544
	rldic 9,4,13,48
	cmplw 0,3,9
	ble 0,.L1545
	andi. 10,9,0x8000
	bne 0,.L1546
	rldic 9,4,14,48
	cmplw 0,3,9
	ble 0,.L1547
	andi. 10,9,0x8000
	bne 0,.L1548
	rldic 4,4,15,48
	cmplw 0,3,4
	ble 0,.L1549
	cmpdi 0,4,0
	li 7,0
	bne 0,.L1635
.L1550:
	cmpdi 0,5,0
	beq 0,.L1568
	mr 7,3
.L1568:
	rlwinm 3,7,0,0xffff
	blr
.L1537:
	blt 0,.L1584
	subf 3,9,3
	li 7,512
	rlwinm 3,3,0,0xffff
	li 8,512
	.p2align 4,,15
.L1552:
	srwi 10,8,2
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,2
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1553
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1553:
	srwi 10,8,3
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,3
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1554
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1554:
	srwi 10,8,4
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,4
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1555
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1555:
	srwi 10,8,5
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,5
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1556
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1556:
	srwi 10,8,6
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,6
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1557
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1557:
	srwi 10,8,7
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,7
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1558
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1558:
	srwi 10,8,8
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,8
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1559
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1559:
	srwi 10,8,9
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,9
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1560
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1560:
	srwi 10,8,10
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,10
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1561
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1561:
	srwi 10,8,11
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,11
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1562
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1562:
	srwi 10,8,12
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,12
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1563
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1563:
	srwi 10,8,13
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,13
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1564
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1564:
	srwi 10,8,14
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,14
	beq 0,.L1550
	cmplw 0,3,10
	blt 0,.L1565
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1565:
	cmpwi 0,8,16384
	srdi 9,9,15
	beq 0,.L1550
	cmplw 0,3,9
	blt 0,.L1573
	subf 9,9,3
	ori 7,7,0x1
	rlwinm 3,9,0,0xffff
	b .L1550
.L1573:
	li 3,0
	b .L1550
.L1634:
	li 7,0
	bne 0,.L1550
	li 7,1
	li 3,0
	b .L1550
.L1520:
	subf 4,4,3
	li 7,1
	rlwinm 3,4,0,0xffff
	b .L1550
.L1521:
	blt 0,.L1576
	subf 3,9,3
	li 7,2
	rlwinm 3,3,0,0xffff
	li 8,2
	b .L1552
.L1522:
	subf 3,9,3
	rldicl 4,4,0,49
	rlwinm 3,3,0,0xffff
	li 10,1
	li 7,2
	li 8,2
	.p2align 4,,15
.L1570:
	cmplw 0,3,4
	blt 0,.L1552
	subf 4,4,3
	or 7,7,10
	rlwinm 3,4,0,0xffff
	b .L1552
.L1523:
	blt 0,.L1577
	subf 3,9,3
	li 7,4
	rlwinm 3,3,0,0xffff
	li 8,4
	b .L1552
.L1524:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2
	li 7,4
	li 8,4
	b .L1570
.L1525:
	blt 0,.L1578
	subf 3,9,3
	li 7,8
	rlwinm 3,3,0,0xffff
	li 8,8
	b .L1552
.L1526:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4
	li 7,8
	li 8,8
	b .L1570
.L1527:
	blt 0,.L1579
	subf 3,9,3
	li 7,16
	rlwinm 3,3,0,0xffff
	li 8,16
	b .L1552
.L1528:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8
	li 7,16
	li 8,16
	b .L1570
.L1529:
	blt 0,.L1580
	subf 3,9,3
	li 7,32
	rlwinm 3,3,0,0xffff
	li 8,32
	b .L1552
.L1530:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,16
	li 7,32
	li 8,32
	b .L1570
.L1531:
	blt 0,.L1581
	subf 3,9,3
	li 7,64
	rlwinm 3,3,0,0xffff
	li 8,64
	b .L1552
.L1532:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,32
	li 7,64
	li 8,64
	b .L1570
.L1533:
	blt 0,.L1582
	subf 3,9,3
	li 7,128
	rlwinm 3,3,0,0xffff
	li 8,128
	b .L1552
.L1534:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,64
	li 7,128
	li 8,128
	b .L1570
.L1536:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,128
	li 7,256
	li 8,256
	b .L1570
.L1538:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,256
	li 7,512
	li 8,512
	b .L1570
.L1576:
	li 8,2
	.p2align 4,,15
.L1569:
	rldicl 10,8,63,49
	srdi 4,9,1
	li 7,0
	b .L1570
.L1540:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,512
	li 7,1024
	li 8,1024
	b .L1570
.L1542:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1570
.L1577:
	li 8,4
	b .L1569
.L1578:
	li 8,8
	b .L1569
.L1544:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1570
.L1546:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1570
.L1579:
	li 8,16
	b .L1569
.L1548:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1570
.L1580:
	li 8,32
	b .L1569
.L1581:
	li 8,64
	b .L1569
.L1549:
	andi. 9,3,0x8000
	li 9,-1
	bne 0,.L1575
	li 8,0
	rlwinm 9,9,0,16,16
	ori 8,8,0x8000
	b .L1569
.L1635:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1570
.L1582:
	li 8,128
	b .L1569
.L1535:
	blt 0,.L1583
	subf 3,9,3
	li 7,256
	rlwinm 3,3,0,0xffff
	li 8,256
	b .L1552
.L1575:
	rlwinm 9,9,0,16,16
	li 7,-32768
	li 3,0
	mr 8,9
	b .L1552
.L1583:
	li 8,256
	b .L1569
.L1539:
	blt 0,.L1585
	subf 3,9,3
	li 7,1024
	rlwinm 3,3,0,0xffff
	li 8,1024
	b .L1552
.L1547:
	blt 0,.L1589
	subf 3,9,3
	li 7,16384
	rlwinm 3,3,0,0xffff
	li 8,16384
	b .L1552
.L1585:
	li 8,1024
	b .L1569
.L1589:
	li 8,16384
	b .L1569
.L1584:
	li 8,512
	b .L1569
.L1545:
	blt 0,.L1588
	subf 3,9,3
	li 7,8192
	rlwinm 3,3,0,0xffff
	li 8,8192
	b .L1552
.L1543:
	blt 0,.L1587
	subf 3,9,3
	li 7,4096
	rlwinm 3,3,0,0xffff
	li 8,4096
	b .L1552
.L1541:
	blt 0,.L1586
	subf 3,9,3
	li 7,2048
	rlwinm 3,3,0,0xffff
	li 8,2048
	b .L1552
.L1588:
	li 8,8192
	b .L1569
.L1587:
	li 8,4096
	b .L1569
.L1586:
	li 8,2048
	b .L1569
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
	cmpld 0,4,3
	li 8,64
	mtctr 8
	mr 10,3
	li 9,1
	blt 0,.L1637
	b .L1659
	.p2align 4,,15
.L1641:
	sldi 4,4,1
	sldi 9,9,1
	cmpld 7,10,4
	ble 7,.L1639
	bdz .L1640
.L1637:
	andis. 3,4,0x8000
	beq 0,.L1641
.L1659:
	cmpld 7,10,4
	li 3,0
	.p2align 5
.L1643:
	blt 7,.L1642
	subf 10,4,10
	or 3,3,9
.L1642:
	srdi. 9,9,1
	srdi 4,4,1
	cmpld 7,10,4
	bne 0,.L1643
.L1640:
	cmpdi 0,5,0
	beqlr 0
	mr 3,10
	blr
	.p2align 4,,15
.L1639:
	cmpdi 0,9,0
	beq 0,.L1640
	li 3,0
	b .L1643
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
	andi. 9,4,0x20
	beq 0,.L1661
	addi 4,4,-32
	li 9,0
	slw 8,3,4
	rldicl 3,9,0,32
	sldi 10,8,32
	or 3,3,10
	blr
	.p2align 4,,15
.L1661:
	cmpdi 0,4,0
	beqlr 0
	sradi 9,3,32
	subfic 8,4,32
	slw 9,9,4
	srw 8,3,8
	or 8,8,9
	slw 9,3,4
	sldi 10,8,32
	rldicl 3,9,0,32
	or 3,3,10
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
	andi. 9,5,0x40
	beq 0,.L1667
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L1667:
	cmpdi 0,5,0
	beqlr 0
	subfic 10,5,64
	sld 4,4,5
	srd 10,3,10
	sld 9,3,5
	or 4,10,4
	mr 3,9
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
	andi. 10,4,0x20
	mr 9,3
	beq 0,.L1672
	sradi 9,3,32
	addi 4,4,-32
	srawi 3,9,31
	sraw 10,9,4
	rldicl 9,10,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1672:
	cmpdi 0,4,0
	beqlr 0
	sradi 3,3,32
	subfic 10,4,32
	srw 9,9,4
	slw 10,3,10
	or 10,10,9
	sraw 3,3,4
	rldicl 9,10,0,32
	sldi 3,3,32
	or 3,3,9
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
	andi. 9,5,0x40
	beq 0,.L1678
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1678:
	cmpdi 0,5,0
	beqlr 0
	subfic 10,5,64
	srd 3,3,5
	sld 10,4,10
	srad 9,4,5
	or 3,10,3
	mr 4,9
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
	rotlwi 10,3,24
	srdi 9,3,32
	rlwimi 10,3,8,8,15
	rlwimi 10,3,8,24,31
	rotlwi 3,9,24
	rlwimi 3,9,8,8,15
	rlwimi 3,9,8,24,31
	rldimi 3,10,32,0
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
	rotlwi 9,3,24
	rlwimi 9,3,8,8,15
	rlwimi 9,3,8,24,31
	rldicl 3,9,0,32
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
	rldicl 10,3,0,32
	addis 10,10,0xffff
	srdi 10,10,63
	slwi 10,10,4
	subfic 9,10,16
	srw 3,3,9
	rlwinm 9,3,0,16,23
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,3
	subfic 8,9,8
	add 10,9,10
	srw 3,3,8
	rlwinm 9,3,0,24,27
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,2
	subfic 8,9,4
	add 10,9,10
	srw 3,3,8
	rlwinm 9,3,0,28,29
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,1
	subfic 8,9,2
	srw 3,3,8
	andi. 8,3,0x2
	bne 0,.L1685
	subfic 3,3,2
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
	.p2align 4,,15
.L1685:
	add 9,9,10
	li 3,0
	add 3,3,9
	extsw 3,3
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
	cntlzd 9,4
	subfic 10,4,0
	subfe 10,10,10
	srdi 9,9,6
	and 4,10,4
	andi. 9,9,0xff
	bne 0,.L1689
	li 3,0
.L1689:
	or 4,4,3
	slwi 9,9,6
	cntlzd 4,4
	add 3,9,4
	rldicl 3,3,0,49
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
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt 0,.L1692
	li 9,2
	bgt 0,.L1691
	cmplw 0,3,4
	li 9,0
	blt 0,.L1691
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1691:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1692:
	li 9,0
	rldicl 3,9,0,62
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
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt 0,.L1698
	li 9,1
	bgt 0,.L1697
	cmplw 0,3,4
	li 9,-1
	blt 0,.L1697
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1697:
	extsw 3,9
	blr
	.p2align 4,,15
.L1698:
	li 9,-1
	extsw 3,9
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
	cmpd 0,4,6
	li 9,0
	blt 0,.L1702
	li 9,2
	bgt 0,.L1702
	cmpld 0,3,5
	li 9,0
	blt 0,.L1702
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1702:
	rldicl 3,9,0,62
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
	rlwinm 8,3,0,16,31
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,4
	srw 9,3,8
	rlwinm 10,9,0,24,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	srw 9,9,10
	add 8,10,8
	rlwinm 10,9,0,28,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	srw 9,9,10
	add 8,10,8
	rlwinm 10,9,0,30,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	srw 9,9,10
	add 10,10,8
	rlwinm 9,9,0,30,31
	not 3,9
	srwi 9,9,1
	rlwinm 3,3,0,31,31
	subfic 9,9,2
	neg 3,3
	and 3,3,9
	add 3,3,10
	extsw 3,3
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
	cntlzd 9,3
	srdi 9,9,6
	andi. 9,9,0xff
	bne 0,.L1710
	li 4,0
.L1710:
	addi 10,9,-1
	slwi 9,9,6
	extsw 10,10
	and 3,10,3
	or 4,4,3
	neg 10,4
	and 4,4,10
	cntlzd 4,4
	subfic 4,4,63
	add 3,9,4
	extsw 3,3
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
	cmpdi 0,3,0
	bne 0,.L1712
	cmpdi 0,4,0
	li 3,0
	bne 0,.L1716
	extsw 3,3
	blr
	.p2align 4,,15
.L1712:
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
	extsw 3,3
	blr
	.p2align 4,,15
.L1716:
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 3,4,128
	extsw 3,3
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
	andi. 10,4,0x20
	mr 9,3
	beq 0,.L1718
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1718:
	cmpdi 0,4,0
	beqlr 0
	srdi 3,3,32
	subfic 10,4,32
	slw 10,3,10
	srw 9,9,4
	or 9,10,9
	srw 3,3,4
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
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
	andi. 9,5,0x40
	beq 0,.L1724
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1724:
	cmpdi 0,5,0
	beqlr 0
	subfic 10,5,64
	srd 3,3,5
	sld 10,4,10
	srd 9,4,5
	or 3,10,3
	mr 4,9
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
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,10,9
	srwi 3,3,16
	mullw 9,9,3
	srwi 4,4,16
	mullw 10,10,4
	mullw 3,3,4
	srwi 7,8,16
	add 9,9,7
	rlwinm 7,9,0,0xffff
	srwi 9,9,16
	add 10,10,7
	add 9,9,3
	srwi 7,10,16
	rlwimi 8,10,16,0,31-16
	add 9,9,7
	rldicl 3,8,0,32
	sldi 9,9,32
	or 3,3,9
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
	rlwinm 7,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,7,9
	srwi 10,3,16
	mullw 9,9,10
	srwi 6,4,16
	mullw 7,7,6
	mullw 6,10,6
	sradi 5,3,32
	sradi 10,4,32
	srwi 11,8,16
	mullw 4,4,5
	add 9,9,11
	mullw 10,3,10
	rlwinm 5,9,0,0xffff
	srwi 9,9,16
	add 7,7,5
	add 9,9,6
	srwi 6,7,16
	rlwimi 8,7,16,0,31-16
	add 9,9,6
	rldicl 3,8,0,32
	sldi 9,9,32
	or 3,3,9
	sradi 9,3,32
	add 9,10,9
	add 9,9,4
	rldimi 3,9,32,0
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
	rldicl 9,4,0,32
	rldicl 8,3,0,32
	srdi 10,3,32
	mulld 3,8,9
	mulld 9,9,10
	srdi 4,4,32
	mulld 8,8,4
	mulld 10,10,4
	srdi 7,3,32
	add 4,9,7
	rldicl 9,4,0,32
	srdi 4,4,32
	add 9,8,9
	add 4,4,10
	srdi 10,9,32
	rldimi 3,9,32,0
	add 4,4,10
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
	rldicl 9,5,0,32
	rldicl 8,3,0,32
	srdi 7,3,32
	mr 10,3
	mulld 3,8,9
	mulld 9,9,7
	srdi 11,5,32
	mulld 10,10,6
	mulld 8,8,11
	mulld 7,7,11
	mulld 4,5,4
	srdi 11,3,32
	add 9,9,11
	rldicl 6,9,0,32
	srdi 9,9,32
	add 8,8,6
	add 9,9,7
	srdi 7,8,32
	rldimi 3,8,32,0
	add 9,9,7
	add 10,10,9
	add 4,10,4
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
	neg 3,3
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
	subfic 3,3,0
	subfze 4,4
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
	srdi 10,3,32
	li 8,27030
	xor 10,10,3
	srwi 9,10,16
	xor 9,9,10
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,8,9
	rldicl 3,3,0,63
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
	xor 4,3,4
	li 3,27030
	sradi 10,4,32
	xor 10,10,4
	srwi 9,10,16
	xor 9,9,10
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,3,9
	rldicl 3,3,0,63
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
	srwi 9,3,16
	li 8,27030
	xor 9,9,3
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,8,9
	rldicl 3,3,0,63
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
	lis 10,0x5555
	srdi 9,3,1
	ori 10,10,0x5555
	rldimi 10,10,32,0
	and 9,9,10
	lis 10,0x3333
	subf 3,9,3
	ori 9,10,0x3333
	rldimi 9,9,32,0
	srdi 8,3,2
	and 8,8,9
	and 3,3,9
	add 8,8,3
	lis 10,0xf0f
	srdi 9,8,4
	ori 10,10,0xf0f
	add 9,9,8
	rldimi 10,10,32,0
	and 9,9,10
	srdi 10,9,32
	add 10,10,9
	srwi 9,10,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rldicl 3,3,0,57
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
	lis 9,0x5555
	lis 8,0x3333
	ori 10,9,0x5555
	srwi 9,3,1
	and 9,9,10
	ori 8,8,0x3333
	subf 3,9,3
	lis 9,0xf0f
	srwi 10,3,2
	and 3,3,8
	and 10,10,8
	ori 8,9,0xf0f
	add 10,10,3
	srwi 9,10,4
	add 9,9,10
	and 9,9,8
	srwi 10,9,16
	add 9,10,9
	srwi 3,9,8
	add 3,3,9
	rldicl 3,3,0,58
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
	lis 0,0x5555
	std 30,-16(1)
	sldi 12,4,63
	std 31,-8(1)
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	srdi 30,3,1
	ori 0,0,0x5555
	std 24,-64(1)
	std 25,-56(1)
	rldimi 0,0,32,0
	or 30,12,30
	std 26,-48(1)
	std 27,-40(1)
	and 30,30,0
	srdi 31,4,1
	std 28,-32(1)
	std 29,-24(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	subfc 10,30,3
	and 31,31,0
	subfe 11,31,4
	lis 5,0x3333
	ld 30,-16(1)
	ld 31,-8(1)
	sldi 3,11,62
	ori 4,5,0x3333
	ld 24,-64(1)
	ld 25,-56(1)
	srdi 8,10,2
	rldimi 4,4,32,0
	ld 26,-48(1)
	ld 27,-40(1)
	or 8,3,8
	mr 5,11
	ld 28,-32(1)
	ld 29,-24(1)
	srdi 9,11,2
	and 8,8,4
	and 11,10,4
	and 12,5,4
	and 9,9,4
	addc 4,8,11
	adde 8,9,12
	srdi 9,4,4
	rldimi 9,8,60,0
	lis 5,0xf0f
	addc 6,9,4
	srdi 3,8,4
	ori 5,5,0xf0f
	adde 7,3,8
	rldimi 5,5,32,0
	and 6,6,5
	and 7,7,5
	add 6,7,6
	srdi 10,6,32
	add 10,10,6
	srwi 9,10,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.long 0
	.byte 0,0,0,0,0,8,0,0
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
	addis 9,2,.LC36@toc@ha
	fmr 0,1
	lfd 12,.LC36@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq 0,.L1742
	.p2align 4,,15
.L1744:
	fmul 1,1,0
.L1742:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1743
	andi. 10,9,0x1
	fmul 0,0,0
	srawi 10,9,1
	addze 10,10
	bne 0,.L1744
.L1748:
	extsw 9,10
	fmul 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne 0,.L1744
	b .L1748
	.p2align 4,,15
.L1743:
	cmpwi 0,4,0
	bgelr 0
	fdiv 1,12,1
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
	addis 9,2,.LC37@toc@ha
	fmr 0,1
	lfs 12,.LC37@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq 0,.L1750
	.p2align 4,,15
.L1752:
	fmuls 1,1,0
.L1750:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1751
	andi. 10,9,0x1
	fmuls 0,0,0
	srawi 10,9,1
	addze 10,10
	bne 0,.L1752
.L1756:
	extsw 9,10
	fmuls 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne 0,.L1752
	b .L1756
	.p2align 4,,15
.L1751:
	cmpwi 0,4,0
	bgelr 0
	fdivs 1,12,1
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
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L1759
	li 9,2
	bgt 0,.L1758
	cmplw 0,3,4
	li 9,0
	blt 0,.L1758
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1758:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1759:
	li 9,0
	rldicl 3,9,0,62
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
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L1765
	li 9,1
	bgt 0,.L1764
	cmplw 0,3,4
	li 9,-1
	blt 0,.L1764
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1764:
	extsw 3,9
	blr
	.p2align 4,,15
.L1765:
	li 9,-1
	extsw 3,9
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
	cmpld 0,4,6
	li 9,0
	blt 0,.L1769
	li 9,2
	bgt 0,.L1769
	cmpld 0,3,5
	li 9,0
	blt 0,.L1769
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1769:
	rldicl 3,9,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.set	.LC0,.LC27+8
	.set	.LC1,.LC27
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.long	-8388609
	.align 2
.LC7:
	.long	2139095039
	.set	.LC10,.LC14
	.set	.LC11,.LC15
	.section	.rodata.cst16,"aM",@progbits,16
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
	.set	.LC19,.LC27+4
	.section	.rodata.cst4
	.align 2
.LC20:
	.long	1056964608
	.set	.LC23,.LC27
	.set	.LC24,.LC28
	.section	.rodata.cst16
	.align 4
.LC27:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC28:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC32:
	.long	0
	.long	-1074790400
	.align 3
.LC34:
	.long	0
	.long	-1075838976
	.align 3
.LC36:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC37:
	.long	1065353216
	.align 2
.LC43:
	.long	1191182336
	.section	.rodata
	.align 3
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
