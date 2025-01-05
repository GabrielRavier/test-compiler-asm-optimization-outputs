	.file	"mini-libc.c"
	.machine power7
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
	cmpld 0,3,4
	ble- 0,.L5
	cmpdi 6,5,0
	add 4,4,5
	add 9,3,5
	beqlr- 6
	andi. 10,5,0x1
	addi 12,5,-1
	beq- 0,.L40
	cmpdi 7,12,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 7
.L40:
	srdi 10,5,1
	cmpdi 1,10,2
	mtctr 10
	ble 1,.L75
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
.L5:
	beqlr- 0
	cmpdi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmpldi 5,9,6
	ble- 5,.L8
	or 10,4,3
	andi. 10,10,0x7
	bne- 0,.L8
	addi 0,4,1
	subf 6,0,3
	subfic 10,6,6
	subfe 7,7,7
	neg 8,7
	rlwinm 11,8,0,0xff
	cmpwi 6,11,0
	beq- 6,.L8
	srdi 12,5,3
	andi. 10,12,0x1
	addi 9,12,-1
	addi 8,4,-8
	addi 10,3,-8
	beq- 0,.L46
	cmpdi 7,9,0
	ld 10,0(4)
	mr 8,4
	std 10,0(3)
	mr 10,3
	beq- 7,.L65
.L46:
	srdi 9,12,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L76
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
	rldicr 12,5,0,60
	add 8,4,12
	add 10,3,12
	subf 5,12,5
	beqlr- 0
	cmpldi 5,5,1
	lbzx 4,4,12
	stbx 4,3,12
	beqlr- 5
	cmpldi 6,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr- 6
	cmpldi 7,5,3
	lbz 0,2(8)
	stb 0,2(10)
	beqlr- 7
	cmpldi 1,5,4
	lbz 6,3(8)
	stb 6,3(10)
	beqlr- 1
	cmpldi 0,5,5
	lbz 7,4(8)
	stb 7,4(10)
	beqlr- 0
	cmpldi 5,5,6
	lbz 11,5(8)
	stb 11,5(10)
	beqlr- 5
	lbz 12,6(8)
	stb 12,6(10)
	blr
.L75:
	lbz 5,-1(4)
	mr 8,4
	mr 6,9
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 0,-2(8)
	stb 0,-2(6)
	bdz .L6
	lbz 5,-1(4)
	mr 8,4
	mr 6,9
	stb 5,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 0,-2(8)
	stb 0,-2(6)
	bdnz .L75
	blr
.L76:
	ld 0,8(8)
	mr 6,8
	mr 7,10
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 11,16(6)
	std 11,16(7)
	bdz .L65
	ld 0,8(8)
	mr 6,8
	mr 7,10
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 11,16(6)
	std 11,16(7)
	bdnz .L76
	b .L65
.L8:
	andi. 10,9,0x1
	addi 8,3,-1
	addi 10,4,-1
	bne- 0,.L81
.L43:
	srdi 4,9,1
	addi 9,4,1
	mtctr 9
	b .L12
.L82:
	lbz 7,1(6)
	addi 10,10,2
	addi 8,8,2
	stb 7,1(11)
.L12:
	lbz 0,1(10)
	addi 6,10,1
	addi 11,8,1
	stb 0,1(8)
	bdnz .L82
	blr
.L81:
	lbz 5,0(4)
	mr 10,4
	mr 8,3
	stb 5,0(3)
	b .L43
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
	cmpdi 0,6,0
	rlwinm 5,5,0,0xff
	beq- 0,.L84
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L105
.L94:
	srdi 0,6,1
	mtctr 0
	b .L85
.L87:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L102
	addi 3,3,1
	bdz .L84
.L85:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L87
.L102:
	addi 3,3,1
	blr
.L105:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L102
	cmpdi 5,8,0
	addi 3,3,1
	bne+ 5,.L94
.L84:
	li 3,0
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
	cmpdi 0,5,0
	rlwinm 4,4,0,0xff
	beq- 0,.L110
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L127
.L113:
	srdi 0,5,1
	mtctr 0
.L107:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L107
.L110:
	li 3,0
	blr
.L127:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpdi 5,9,0
	addi 3,3,1
	bne+ 5,.L113
	b .L110
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
	cmpdi 0,5,0
	beq- 0,.L133
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L150
.L136:
	srdi 0,5,1
	mtctr 0
	b .L129
.L131:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L145
	bdz .L133
.L129:
	lbz 10,0(3)
	addi 7,3,1
	lbz 9,0(4)
	addi 5,4,1
	cmpw 6,10,9
	beq+ 6,.L131
.L145:
	subf 3,9,10
	extsw 3,3
	blr
.L150:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L145
	cmpdi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L136
.L133:
	li 3,0
	extsw 3,3
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,3
	beq- 0,.L152
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L152:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
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
	mr 10,5
	andi. 9,10,0x1
	addi 5,5,-1
	add 11,3,5
	rlwinm 4,4,0,0xff
	beq- 0,.L162
	lbz 8,0(11)
	mr 3,11
	addi 11,11,-1
	cmpw 1,8,4
	beqlr- 1
.L162:
	srdi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L170
.L160:
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
	bdnz .L160
.L170:
	li 3,0
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,3
	beq- 0,.L174
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	std 0,144(1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L174:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
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
	lbz 9,0(4)
	rlwinm 10,9,0,0xff
	stb 9,0(3)
	cmpwi 0,10,0
	beqlr- 0
.L178:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L178
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
	lbz 9,0(3)
	rlwinm 4,4,0,0xff
	cmpwi 0,9,0
	beqlr- 0
	cmpw 1,9,4
	beqlr- 1
.L189:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L189
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
.L192:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L192
	li 3,0
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
	lbz 9,0(3)
	lbz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L197
	b .L196
.L198:
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 5,9,10
	bne- 5,.L196
.L197:
	cmpwi 1,9,0
	bne+ 1,.L198
.L196:
	subf 3,10,9
	extsw 3,3
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
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L206
	mr 4,3
.L205:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L205
	subf 3,3,4
	blr
.L206:
	li 3,0
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
	cmpdi 0,5,0
	beq- 0,.L216
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L212
	b .L221
.L223:
	bdz .L211
	bne- 7,.L211
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L222
	mr 4,8
.L212:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L223
.L211:
	subf 3,7,10
	extsw 3,3
	blr
.L216:
	li 3,0
	extsw 3,3
	blr
.L222:
	lbz 7,1(4)
	b .L211
.L221:
	lbz 7,0(4)
	b .L211
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
	cmpdi 0,5,1
	blelr- 0
	srdi 5,5,1
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L235
.L229:
	srdi 6,5,1
	mtctr 6
.L226:
	lbz 11,1(3)
	mr 5,4
	lbz 12,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 12,-2(4)
	stb 11,-4(4)
	stb 7,-3(4)
	stb 8,3(5)
	bdnz .L226
	blr
.L235:
	cmpdi 1,9,0
	lbz 10,1(3)
	lbz 0,0(3)
	addi 4,4,2
	stb 10,-2(4)
	addi 3,3,2
	stb 0,-1(4)
	bne+ 1,.L229
	blr
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
	ori 3,3,0x20
	addi 0,3,-97
	rldicl 4,0,0,32
	subfic 5,4,25
	srdi 6,5,63
	xori 3,6,0x1
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
	rldicl 3,3,0,32
	subfic 0,3,127
	srdi 4,0,63
	xori 3,4,0x1
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
	cmpwi 0,3,32
	beq- 0,.L240
	xori 3,3,0x9
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
.L240:
	li 4,1
	rldicl 3,4,0,63
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
	cmplwi 0,3,31
	ble- 0,.L243
	xori 3,3,0x7f
	cntlzw 0,3
	srwi 4,0,5
	rldicl 3,4,0,63
	blr
.L243:
	li 4,1
	rldicl 3,4,0,63
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
	addi 3,3,-48
	rldicl 0,3,0,32
	subfic 4,0,9
	srdi 5,4,63
	xori 3,5,0x1
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
	addi 3,3,-33
	rldicl 0,3,0,32
	subfic 4,0,93
	srdi 5,4,63
	xori 3,5,0x1
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
	addi 3,3,-97
	rldicl 0,3,0,32
	subfic 4,0,25
	srdi 5,4,63
	xori 3,5,0x1
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
	addi 3,3,-32
	rldicl 0,3,0,32
	subfic 4,0,94
	srdi 5,4,63
	xori 3,5,0x1
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
	cmpwi 0,3,32
	beq- 0,.L250
	addi 3,3,-9
	rldicl 0,3,0,32
	subfic 4,0,4
	srdi 5,4,63
	xori 6,5,0x1
	rldicl 3,6,0,63
	blr
.L250:
	li 6,1
	rldicl 3,6,0,63
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
	addi 3,3,-65
	rldicl 0,3,0,32
	subfic 4,0,25
	srdi 5,4,63
	xori 3,5,0x1
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
	cmplwi 0,3,31
	li 7,1
	ble- 0,.L253
	addi 9,3,-127
	cmplwi 1,9,32
	li 7,1
	bgt- 1,.L257
.L253:
	rldicl 3,7,0,63
	blr
.L257:
	addi 10,3,-8232
	cmplwi 5,10,1
	ble- 5,.L253
	addis 3,3,0xffff
	addi 0,3,7
	rldicl 4,0,0,32
	subfic 5,4,2
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
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
	addi 3,3,-48
	rldicl 0,3,0,32
	subfic 4,0,9
	srdi 5,4,63
	xori 3,5,0x1
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
	cmplwi 0,3,254
	ble- 0,.L266
	cmplwi 1,3,8231
	li 12,1
	ble- 1,.L261
	addi 10,3,-8234
	cmplwi 5,10,47061
	ble- 5,.L261
	addis 4,3,0xffff
	addi 8,4,8192
	cmplwi 6,8,8184
	ble- 6,.L261
	lis 9,0x10
	addi 0,4,4
	ori 5,9,0x3
	cmplw 7,0,5
	li 12,0
	bgt- 7,.L261
	rlwinm 3,3,0,16,30
	xori 6,3,0xfffe
	cntlzw 7,6
	srwi 11,7,5
	xori 12,11,0x1
.L261:
	rldicl 3,12,0,63
	blr
.L266:
	addi 10,3,1
	rldicl 4,10,0,57
	subfic 8,4,32
	srdi 12,8,63
	rldicl 3,12,0,63
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
	addi 9,3,-48
	cmplwi 0,9,9
	ble- 0,.L269
	ori 3,3,0x20
	addi 0,3,-97
	rldicl 4,0,0,32
	subfic 5,4,5
	srdi 6,5,63
	xori 7,6,0x1
	rldicl 3,7,0,63
	blr
.L269:
	li 7,1
	rldicl 3,7,0,63
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
	rldicl 3,3,0,57
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
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 1,2,2
	bun- 1,.L275
	fcmpu 5,1,2
	bng- 5,.L278
	fsub 1,1,2
	blr
.L278:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
.L275:
	fmr 1,2
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
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 1,2,2
	bun- 1,.L283
	fcmpu 5,1,2
	bng- 5,.L286
	fsubs 1,1,2
	blr
.L286:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
.L283:
	fmr 1,2
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
	fcmpu 0,1,1
	fmr 0,1
	bun- 0,.L292
	fcmpu 1,2,2
	bun- 1,.L293
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L289
	cmpwi 7,0,0
	fmr 1,2
	bnelr- 7
.L293:
	fmr 1,0
	blr
.L289:
	fcmpu 6,1,2
	bnllr- 6
.L292:
	fmr 1,2
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
	fcmpu 0,1,1
	fmr 0,1
	bun- 0,.L301
	fcmpu 1,2,2
	bun- 1,.L302
	addi 9,1,-16
	stfiwx 1,0,9
	addi 10,1,-16
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 4,0,0,0,0
	lwz 3,-16(1)
	rlwinm 5,3,0,0,0
	cmpw 5,4,5
	beq- 5,.L298
	cmpwi 7,4,0
	fmr 1,2
	bnelr- 7
.L302:
	fmr 1,0
	blr
.L298:
	fcmpu 6,1,2
	bnllr- 6
.L301:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun- 0,.L312
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stfd 0,-16(1)
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L307
	cmpwi 7,0,0
	beqlr- 7
.L312:
	fmr 1,3
	fmr 2,4
	blr
.L307:
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bnllr- 6
	fmr 1,3
	fmr 2,4
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
	fcmpu 0,1,1
	bun- 0,.L319
	fcmpu 1,2,2
	bunlr- 1
	stfd 1,-16(1)
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L323
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L318
	fmr 0,1
.L318:
	fmr 1,0
	blr
.L323:
	cmpwi 7,0,0
	bnelr- 7
.L319:
	fmr 1,2
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
	fcmpu 0,1,1
	bun- 0,.L329
	fcmpu 1,2,2
	bunlr- 1
	addi 9,1,-16
	stfiwx 1,0,9
	addi 10,1,-16
	lwz 0,-16(1)
	stfiwx 2,0,10
	rlwinm 4,0,0,0,0
	lwz 3,-16(1)
	rlwinm 5,3,0,0,0
	cmpw 5,4,5
	bne- 5,.L333
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L328
	fmr 0,1
.L328:
	fmr 1,0
	blr
.L333:
	cmpwi 7,4,0
	bnelr- 7
.L329:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun- 0,.L339
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stfd 0,-16(1)
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 0,9,63
	ld 10,-16(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L336
	cmpwi 7,0,0
	bnelr- 7
.L339:
	fmr 1,3
	fmr 2,4
	blr
.L336:
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bltlr- 6
	fmr 1,3
	fmr 2,4
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
	mr 9,3
	cmpwi 0,9,0
	addis 3,2,.LANCHOR0@toc@ha
	addi 3,3,.LANCHOR0@toc@l
	mr 10,3
	beq- 0,.L343
	addis 7,2,.LANCHOR1@toc@ha
	addi 4,7,.LANCHOR1@toc@l
.L344:
	rldicl 8,9,0,58
	srwi 9,9,6
	lbzx 0,4,8
	cmpwi 1,9,0
	stb 0,0(10)
	addi 10,10,1
	bne+ 1,.L344
.L343:
	li 5,0
	stb 5,0(10)
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
	addi 3,3,-1
	rldicl 0,3,0,32
	addis 9,2,.LANCHOR0+8@toc@ha
	std 0,.LANCHOR0+8@toc@l(9)
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
	addis 7,2,.LANCHOR0+8@toc@ha
	ld 10,.LANCHOR0+8@toc@l(7)
	sldi 9,10,4
	subf 0,10,9
	sldi 8,0,6
	subf 3,0,8
	sldi 4,3,7
	add 5,3,4
	sldi 6,5,2
	add 11,6,10
	sldi 12,11,6
	subf 9,11,12
	sldi 0,9,7
	add 8,0,10
	sldi 3,8,2
	add 4,3,10
	sldi 5,4,3
	subf 6,4,5
	sldi 11,6,3
	subf 12,6,11
	sldi 9,12,6
	subf 0,12,9
	sldi 8,0,2
	subf 3,10,8
	sldi 4,3,7
	subf 5,10,4
	sldi 6,5,2
	add 11,6,10
	sldi 12,11,2
	subf 9,10,12
	sldi 0,9,2
	subf 8,10,0
	sldi 3,8,2
	add 10,3,10
	addi 4,10,1
	std 4,.LANCHOR0+8@toc@l(7)
	srdi 3,4,33
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
	cmpdi 0,4,0
	beq- 0,.L355
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ld 4,0(3)
	cmpdi 1,4,0
	beqlr- 1
	std 3,8(4)
	blr
.L355:
	std 4,8(3)
	std 4,0(3)
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
	ld 9,0(3)
	cmpdi 0,9,0
	beq- 0,.L357
	ld 10,8(3)
	std 10,8(9)
.L357:
	ld 3,8(3)
	cmpdi 1,3,0
	beqlr- 1
	std 9,0(3)
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
	std 27,-40(1)
	.cfi_offset 27, -40
	ld 27,0(5)
	mflr 0
	cmpdi 0,27,0
	std 23,-72(1)
	std 24,-64(1)
	.cfi_register 65, 0
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr 23,4
	std 26,-48(1)
	mr 24,5
	std 28,-32(1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr 26,3
	std 0,16(1)
	mr 28,6
	std 25,-56(1)
	stdu 1,-192(1)
	.cfi_def_cfa_offset 192
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	std 2,40(1)
	beq- 0,.L366
	std 29,168(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,176(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,184(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L368
.L380:
	beq- 7,.L379
.L368:
	ld 9,0(30)
	mr 4,31
	ld 11,16(30)
	mr 3,26
	mtctr 9
	addi 29,29,1
	mr 25,31
	add 31,31,28
	ld 2,8(30)
	bctrl
	ld 2,40(1)
	cmpld 7,27,29
	cmpwi 1,3,0
	bne+ 1,.L380
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L365:
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 5,16(1)
	mr 3,25
	ld 23,-72(1)
	mtlr 5
	.cfi_restore 65
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.L379:
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
	ld 29,168(1)
	.cfi_restore 29
	ld 30,176(1)
	.cfi_restore 30
	ld 31,184(1)
	.cfi_restore 31
.L366:
	mulld 3,28,27
	cmpdi 5,28,0
	addi 4,27,1
	std 4,0(24)
	add 25,23,3
	beq- 5,.L365
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 5,16(1)
	mr 3,25
	ld 23,-72(1)
	mtlr 5
	.cfi_restore 65
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
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
	std 26,-48(1)
	.cfi_offset 26, -48
	ld 26,0(5)
	std 25,-56(1)
	cmpdi 0,26,0
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	beq- 0,.L382
	mflr 0
	.cfi_register 65, 0
	std 27,136(1)
	.cfi_offset 27, -40
	mr 27,6
	std 28,144(1)
	.cfi_offset 28, -32
	mr 28,3
	std 29,152(1)
	.cfi_offset 29, -24
	li 29,0
	std 30,160(1)
	.cfi_offset 30, -16
	mr 30,7
	std 31,168(1)
	.cfi_offset 31, -8
	mr 31,4
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	b .L384
.L392:
	beq- 7,.L391
.L384:
	ld 9,0(30)
	mr 4,31
	ld 11,16(30)
	mr 3,28
	mtctr 9
	addi 29,29,1
	mr 25,31
	add 31,31,27
	ld 2,8(30)
	bctrl
	ld 2,40(1)
	cmpld 7,26,29
	cmpwi 1,3,0
	bne+ 1,.L392
	ld 3,192(1)
	ld 27,136(1)
	.cfi_remember_state
	.cfi_restore 27
	mtlr 3
	.cfi_restore 65
	mr 3,25
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	ld 30,160(1)
	.cfi_restore 30
	ld 31,168(1)
	.cfi_restore 31
	addi 1,1,176
	.cfi_def_cfa_offset 0
	ld 25,-56(1)
	ld 26,-48(1)
	.cfi_restore 26
	.cfi_restore 25
	blr
.L391:
	.cfi_restore_state
	ld 0,192(1)
	ld 27,136(1)
	.cfi_restore 27
	mtlr 0
	.cfi_restore 65
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	ld 30,160(1)
	.cfi_restore 30
	ld 31,168(1)
	.cfi_restore 31
.L382:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 25,0
	ld 26,-48(1)
	mr 3,25
	ld 25,-56(1)
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
	srawi 9,3,31
	xor 3,9,3
	subf 0,9,3
	extsw 3,0
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
.L401:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L395
	ble- 7,.L395
	cmpwi 1,10,43
	beq- 1,.L396
	cmpwi 6,10,45
	bne- 6,.L416
	lbz 10,1(3)
	addi 8,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L406
	li 5,1
.L399:
	li 11,0
.L403:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 12,11,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 9,12,11
	slwi 0,9,1
	subf 11,7,0
	ble+ 1,.L403
	cmpwi 5,5,0
	bne- 5,.L402
	subf 11,0,7
.L402:
	extsw 3,11
	blr
.L395:
	addi 3,3,1
	b .L401
.L416:
	addi 4,10,-48
	cmplwi 7,4,9
	mr 8,3
	li 5,0
	ble+ 7,.L399
.L406:
	li 11,0
	b .L402
.L396:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L399
	li 11,0
	b .L402
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
.L424:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L418
	ble- 7,.L418
	cmpwi 1,10,43
	beq- 1,.L419
	cmpwi 6,10,45
	bne- 6,.L439
	lbz 10,1(3)
	addi 7,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L429
	li 5,1
.L422:
	li 3,0
.L426:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 11,3,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 12,11,3
	extsw 0,8
	sldi 9,12,1
	subf 3,0,9
	ble+ 1,.L426
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,0
	blr
.L418:
	addi 3,3,1
	b .L424
.L439:
	addi 4,10,-48
	cmplwi 7,4,9
	mr 7,3
	li 5,0
	ble+ 7,.L422
.L429:
	li 3,0
	blr
.L419:
	lbz 10,1(3)
	addi 7,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L422
	b .L429
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
.L445:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L441
	ble- 7,.L441
	cmpwi 1,10,43
	beq- 1,.L442
	cmpwi 6,10,45
	beq- 6,.L443
	addi 4,10,-48
	cmplwi 7,4,9
	mr 7,3
	li 5,0
	bgt- 7,.L452
.L446:
	li 3,0
.L449:
	addi 8,10,-48
	lbzu 10,1(7)
	sldi 11,3,2
	addi 6,10,-48
	cmplwi 1,6,9
	add 12,11,3
	extsw 0,8
	sldi 9,12,1
	subf 3,0,9
	ble+ 1,.L449
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,0
	blr
.L441:
	addi 3,3,1
	b .L445
.L443:
	lbz 10,1(3)
	addi 7,3,1
	li 5,1
	addi 3,10,-48
	cmplwi 0,3,9
	ble+ 0,.L446
.L452:
	li 3,0
	blr
.L442:
	lbz 10,1(3)
	addi 7,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L452
	li 5,0
	b .L446
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- 0,.L463
	mflr 0
	.cfi_register 65, 0
	std 25,120(1)
	.cfi_offset 25, -56
	mr 25,3
	std 26,128(1)
	.cfi_offset 26, -48
	mr 26,6
	std 27,136(1)
	.cfi_offset 27, -40
	mr 27,4
	std 28,144(1)
	.cfi_offset 28, -32
	mr 28,7
	std 0,192(1)
	.cfi_offset 65, 16
	std 2,40(1)
	std 29,152(1)
	.cfi_offset 29, -24
	b .L466
.L475:
	beq- 1,.L473
	cmpdi 5,31,0
	add 27,30,26
	beq- 5,.L474
.L466:
	srdi 29,31,1
	ld 9,0(28)
	mulld 30,29,26
	ld 11,16(28)
	mr 3,25
	mtctr 9
	addi 31,31,-1
	subf 31,29,31
	add 30,27,30
	mr 4,30
	ld 2,8(28)
	bctrl
	ld 2,40(1)
	cmpwi 1,3,0
	bge+ 1,.L475
	mr 31,29
	cmpdi 5,31,0
	bne+ 5,.L466
.L474:
	ld 3,192(1)
	ld 25,120(1)
	.cfi_restore 25
	mtlr 3
	.cfi_restore 65
	ld 26,128(1)
	.cfi_restore 26
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
.L463:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 31,-8(1)
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
.L473:
	.cfi_def_cfa_offset 176
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 0,192(1)
	mr 3,30
	ld 25,120(1)
	.cfi_restore 25
	ld 26,128(1)
	.cfi_restore 26
	ld 27,136(1)
	.cfi_restore 27
	ld 28,144(1)
	.cfi_restore 28
	ld 29,152(1)
	.cfi_restore 29
	addi 1,1,176
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
	cmpwi 0,5,0
	std 24,-64(1)
	std 25,-56(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	mr 24,8
	std 26,-48(1)
	mr 25,3
	std 27,-40(1)
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	mr 26,6
	std 29,-24(1)
	mr 27,4
	std 31,-8(1)
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 29,7
	std 30,-16(1)
	mr 31,5
	stdu 1,-176(1)
	.cfi_def_cfa_offset 176
	.cfi_offset 30, -16
	beq- 0,.L481
	mflr 0
	.cfi_register 65, 0
	std 2,40(1)
	std 0,192(1)
	.cfi_offset 65, 16
	std 28,144(1)
	.cfi_offset 28, -32
.L486:
	srawi 30,31,1
	ld 9,0(29)
	mulld 0,30,26
	ld 11,16(29)
	mr 5,24
	mtctr 9
	mr 3,25
	srawi 28,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,0
	mr 4,30
	ld 2,8(29)
	bctrl
	ld 2,40(1)
	cmpwi 7,31,0
	cmpwi 1,3,0
	beq- 1,.L490
	cmpwi 5,28,0
	ble- 1,.L479
	add 27,30,26
	bne+ 7,.L486
.L491:
	ld 3,192(1)
	ld 28,144(1)
	.cfi_restore 28
	mtlr 3
	.cfi_restore 65
.L481:
	addi 1,1,176
	.cfi_def_cfa_offset 0
	li 30,0
	ld 24,-64(1)
	mr 3,30
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
.L479:
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
	mr 31,28
	bne+ 5,.L486
	b .L491
.L490:
	ld 4,192(1)
	mr 3,30
	ld 28,144(1)
	.cfi_restore 28
	addi 1,1,176
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
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
	divw 10,4,5
	mullw 5,10,5
	stw 10,0(3)
	subf 4,5,4
	stw 4,4(3)
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
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
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
	divd 10,4,5
	mulld 5,10,5
	std 10,0(3)
	subf 4,5,4
	std 4,8(3)
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
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
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
	divd 10,4,5
	mulld 5,10,5
	std 10,0(3)
	subf 4,5,4
	std 4,8(3)
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
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
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
	divd 10,4,5
	mulld 5,10,5
	std 10,0(3)
	subf 4,5,4
	std 4,8(3)
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
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L503
.L500:
	cmpw 1,9,4
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L500
.L503:
	li 3,0
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
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L510
	b .L509
.L511:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L509
.L510:
	cmpwi 7,9,0
	bne+ 7,.L511
.L509:
	li 5,-1
	blt- 0,.L512
	extsw 0,9
	extsw 3,10
	subf 4,0,3
	srdi 5,4,63
.L512:
	extsw 3,5
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
	addi 4,4,-4
	addi 10,3,-4
.L515:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L515
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
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L521
	mr 4,3
.L520:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L520
	subf 3,3,4
	sradi 3,3,2
	blr
.L521:
	li 3,0
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
	cmpdi 0,5,0
	beq- 0,.L533
	mtctr 5
	b .L524
.L536:
	beq- 7,.L526
	addi 3,3,4
	addi 4,4,4
	bdz .L533
.L524:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L536
.L526:
	lwz 3,0(3)
	lwz 0,0(4)
	cmpw 5,3,0
	bge- 5,.L528
	li 4,-1
	extsw 3,4
	blr
.L528:
	extsw 5,3
	extsw 6,0
	subf 7,5,6
	srdi 4,7,63
	extsw 3,4
	blr
.L533:
	li 4,0
	extsw 3,4
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
	cmpdi 0,5,0
	beq- 0,.L541
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L558
.L544:
	srdi 0,5,1
	mtctr 0
.L538:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L538
.L541:
	li 3,0
	blr
.L558:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpdi 5,9,0
	addi 3,3,4
	bne+ 5,.L544
	b .L541
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
	cmpdi 0,5,0
	beq- 0,.L565
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L582
.L568:
	srdi 0,5,1
	mtctr 0
	b .L560
.L562:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,5,4
	cmpw 1,9,10
	bne- 1,.L577
	bdz .L565
.L560:
	lwz 9,0(3)
	addi 7,3,4
	lwz 10,0(4)
	addi 5,4,4
	cmpw 1,9,10
	beq+ 1,.L562
.L577:
	blt- 1,.L583
	extsw 4,9
	extsw 6,10
	subf 11,4,6
	srdi 3,11,63
	extsw 3,3
	blr
.L582:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne- 1,.L577
	cmpdi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L568
.L565:
	li 3,0
	extsw 3,3
	blr
.L583:
	li 3,-1
	extsw 3,3
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,3
	beq- 0,.L585
	mflr 0
	.cfi_register 65, 0
	sldi 5,5,2
	std 0,144(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L585:
	addi 1,1,128
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
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
	cmpld 0,3,4
	beqlr- 0
	sldi 9,5,2
	subf 10,4,3
	cmpld 1,10,9
	bge- 1,.L627
	cmpdi 1,5,0
	beqlr- 1
	andi. 10,5,0x1
	add 4,4,9
	addi 11,5,-1
	add 9,3,9
	bne- 0,.L628
.L604:
	srdi 10,5,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L623
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L595:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L595
.L598:
	blr
.L627:
	cmpdi 5,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 5
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L629
.L607:
	srdi 8,5,1
	cmpdi 7,8,2
	mtctr 8
	ble 7,.L624
	addi 8,8,-1
	mtctr 8
	lwz 6,4(9)
	stw 6,4(10)
	addi 7,9,4
	lwz 6,4(7)
	addi 8,10,4
	stw 6,4(8)
.L596:
	addi 9,7,4
	lwz 6,4(9)
	stw 6,8(8)
	addi 7,9,4
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L596
	blr
.L623:
	lwz 0,-4(4)
	mr 8,4
	mr 10,9
	stw 0,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 6,-8(8)
	stw 6,-8(10)
	bdz .L598
	lwz 0,-4(4)
	mr 8,4
	mr 10,9
	stw 0,-4(9)
	addi 4,4,-8
	addi 9,9,-8
	lwz 6,-8(8)
	stw 6,-8(10)
	bdnz .L623
	blr
.L624:
	lwz 6,4(9)
	mr 7,9
	mr 4,10
	stw 6,4(10)
	addi 9,9,8
	addi 10,10,8
	lwz 5,8(7)
	stw 5,8(4)
	bdz .L598
	lwz 6,4(9)
	mr 7,9
	mr 4,10
	stw 6,4(10)
	addi 9,9,8
	addi 10,10,8
	lwz 5,8(7)
	stw 5,8(4)
	bdnz .L624
	blr
.L628:
	cmpdi 5,11,0
	lwzu 12,-4(4)
	stwu 12,-4(9)
	bne+ 5,.L604
	blr
.L629:
	cmpdi 6,8,0
	lwz 0,0(4)
	mr 9,4
	stw 0,0(3)
	mr 10,3
	bne+ 6,.L607
	blr
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
	cmpdi 0,5,0
	addi 7,5,-1
	beqlr- 0
	cmpldi 1,7,5
	rldicl 9,3,62,63
	ble- 1,.L636
	cmpdi 5,9,0
	mr 11,3
	beq- 5,.L633
	stw 4,0(3)
	addi 11,3,4
	addi 7,5,-2
.L633:
	subf 5,9,5
	srdi 6,5,1
	sldi 8,9,2
	andi. 0,6,0x3
	addi 10,8,-8
	add 9,3,10
	mr 10,4
	addi 12,6,-1
	mr 8,6
	rldimi 10,4,32,0
	beq- 0,.L658
	cmpdi 6,0,1
	beq- 6,.L662
	cmpdi 7,0,2
	beq- 7,.L663
	stdu 10,8(9)
	mr 6,12
.L663:
	stdu 10,8(9)
	addi 6,6,-1
.L662:
	cmpdi 1,6,1
	stdu 10,8(9)
	beq- 1,.L676
.L658:
	srdi 0,8,2
	mtctr 0
.L634:
	std 10,8(9)
	addi 9,9,32
	std 10,-16(9)
	std 10,-8(9)
	std 10,0(9)
	bdnz .L634
.L676:
	andi. 9,5,0x1
	beqlr- 0
	rldicr 5,5,0,62
	sldi 9,5,2
	subf 7,5,7
	add 5,11,9
.L632:
	cmpdi 5,7,0
	stw 4,0(5)
	beqlr- 5
	cmpldi 6,7,1
	stw 4,4(5)
	beqlr- 6
	cmpldi 7,7,2
	stw 4,8(5)
	beqlr- 7
	cmpldi 1,7,3
	stw 4,12(5)
	beqlr- 1
	cmpldi 0,7,4
	stw 4,16(5)
	beqlr- 0
	stw 4,20(5)
	blr
.L636:
	mr 5,3
	b .L632
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
	cmpld 0,3,4
	bge- 0,.L680
	cmpdi 6,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 6
	andi. 9,5,0x1
	addi 7,5,-1
	beq- 0,.L715
	cmpdi 7,7,0
	lbzu 11,-1(3)
	stbu 11,-1(4)
	beqlr- 7
.L715:
	srdi 9,5,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L750
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L682:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L682
.L679:
	blr
.L680:
	beqlr- 0
	cmpdi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmpldi 5,9,6
	ble- 5,.L683
	or 10,4,3
	andi. 10,10,0x7
	bne- 0,.L683
	addi 0,3,1
	subf 6,0,4
	subfic 10,6,6
	subfe 7,7,7
	neg 8,7
	rlwinm 11,8,0,0xff
	cmpwi 6,11,0
	beq- 6,.L683
	srdi 12,5,3
	andi. 10,12,0x1
	addi 9,12,-1
	addi 8,3,-8
	addi 10,4,-8
	beq- 0,.L721
	cmpdi 7,9,0
	ld 10,0(3)
	mr 8,3
	std 10,0(4)
	mr 10,4
	beq- 7,.L740
.L721:
	srdi 9,12,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L751
	addi 9,9,-1
	mtctr 9
	ld 6,8(8)
	std 6,8(10)
	addi 7,8,8
	ld 6,8(7)
	addi 9,10,8
	std 6,8(9)
.L684:
	ld 6,16(7)
	std 6,16(9)
	addi 7,7,16
	ld 6,8(7)
	addi 9,9,16
	std 6,8(9)
	bdnz .L684
.L740:
	andi. 9,5,0x7
	rldicr 12,5,0,60
	add 10,4,12
	add 8,3,12
	subf 5,12,5
	beqlr- 0
	cmpldi 5,5,1
	lbzx 3,3,12
	stbx 3,4,12
	beqlr- 5
	cmpldi 6,5,2
	lbz 4,1(8)
	stb 4,1(10)
	beqlr- 6
	cmpldi 7,5,3
	lbz 9,2(8)
	stb 9,2(10)
	beqlr- 7
	cmpldi 1,5,4
	lbz 0,3(8)
	stb 0,3(10)
	beqlr- 1
	cmpldi 0,5,5
	lbz 6,4(8)
	stb 6,4(10)
	beqlr- 0
	cmpldi 5,5,6
	lbz 7,5(8)
	stb 7,5(10)
	beqlr- 5
	lbz 11,6(8)
	stb 11,6(10)
	blr
.L750:
	lbz 12,-1(3)
	mr 10,3
	mr 5,4
	stb 12,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 8,-2(10)
	stb 8,-2(5)
	bdz .L679
	lbz 12,-1(3)
	mr 10,3
	mr 5,4
	stb 12,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 8,-2(10)
	stb 8,-2(5)
	bdnz .L750
	blr
.L751:
	ld 0,8(8)
	mr 6,8
	mr 7,10
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 11,16(6)
	std 11,16(7)
	bdz .L740
	ld 0,8(8)
	mr 6,8
	mr 7,10
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 11,16(6)
	std 11,16(7)
	bdnz .L751
	b .L740
.L683:
	andi. 10,9,0x1
	addi 12,3,-1
	addi 8,4,-1
	bne- 0,.L756
.L718:
	srdi 5,9,1
	addi 3,5,1
	mtctr 3
	b .L687
.L757:
	lbz 0,1(6)
	addi 12,12,2
	addi 8,8,2
	stb 0,1(9)
.L687:
	lbz 4,1(12)
	addi 6,12,1
	addi 9,8,1
	stb 4,1(8)
	bdnz .L757
	blr
.L756:
	lbz 10,0(3)
	mr 12,3
	mr 8,4
	stb 10,0(4)
	b .L718
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
	rotld 3,3,4
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
	subfic 4,4,64
	rotld 3,3,4
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
	rotlw 3,3,4
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
	subfic 4,4,32
	rotlw 3,3,4
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
	rotld 3,3,4
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
	subfic 4,4,64
	rotld 3,3,4
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
	rlwinm 4,4,0,28,31
	neg 9,4
	rlwinm 0,9,0,28,31
	srw 5,3,0
	slw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xffff
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
	rlwinm 4,4,0,28,31
	neg 9,4
	rlwinm 0,9,0,28,31
	slw 5,3,0
	srw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xffff
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
	rlwinm 4,4,0,29,31
	neg 9,4
	rlwinm 0,9,0,29,31
	srw 5,3,0
	slw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xff
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
	rlwinm 4,4,0,29,31
	neg 9,4
	rlwinm 0,9,0,29,31
	slw 5,3,0
	srw 3,3,4
	or 6,3,5
	rlwinm 3,6,0,0xff
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
	rlwinm 9,3,24,24,31
	rlwinm 10,3,8,16,23
	or 0,9,10
	rlwinm 3,0,0,0xffff
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
	rotlwi 9,3,24
	rlwimi 9,3,8,8,15
	rlwimi 9,3,8,24,31
	rldicl 3,9,0,32
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
	li 10,16
	mtctr 10
	li 9,0
	b .L774
.L783:
	addi 9,9,1
	bne- 0,.L773
	bdz .L782
.L774:
	srw 0,3,9
	rldicl 4,0,0,63
	cmpdi 7,4,0
	addi 9,9,1
	srw 5,3,9
	andi. 10,5,0x1
	beq+ 7,.L783
.L773:
	extsw 3,9
	blr
.L782:
	li 9,0
	extsw 3,9
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
	mr. 9,3
	beq- 0,.L787
	andi. 3,9,0x1
	bne- 0,.L785
	li 3,1
.L786:
	srawi 9,9,1
	andi. 10,9,0x1
	addi 3,3,1
	beq+ 0,.L786
.L785:
	extsw 3,3
	blr
.L787:
	li 3,0
	extsw 3,3
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
	addis 9,2,.LC4@toc@ha
	lfs 0,.LC4@toc@l(9)
	li 0,1
	fcmpu 0,1,0
	blt- 0,.L791
	addis 3,2,.LC5@toc@ha
	lfs 2,.LC5@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L791:
	rldicl 3,0,0,63
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
	addis 9,2,.LC8@toc@ha
	lfd 0,.LC8@toc@l(9)
	li 0,1
	fcmpu 0,1,0
	blt- 0,.L794
	addis 3,2,.LC9@toc@ha
	lfd 2,.LC9@toc@l(3)
	fcmpu 1,1,2
	mfcr 0,64
	rlwinm 0,0,6,1
.L794:
	rldicl 3,0,0,63
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
	addis 9,2,.LC12@toc@ha
	addi 3,9,.LC12@toc@l
	lfd 12,0(3)
	li 0,1
	lfd 13,8(3)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt- 0,.L797
	addis 4,2,.LC13@toc@ha
	addi 5,4,.LC13@toc@l
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,1,12
	bne 1,$+8
	fcmpu 1,2,13
	mfcr 0,64
	rlwinm 0,0,6,1
.L797:
	rldicl 3,0,0,63
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
	stw 4,-16(1)
	addi 9,1,-16
	addis 4,2,.LC0@toc@ha
	lfiwax 0,0,9
	lfd 3,.LC0@toc@l(4)
	fcfid 1,0
	stfd 3,8(3)
	stfd 1,0(3)
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
	fcmpu 0,1,1
	bunlr- 0
	fadds 0,1,1
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,4,0
	blt- 5,.L813
	addis 9,2,.LC17@toc@ha
	lfs 2,.LC17@toc@l(9)
.L802:
	andi. 9,4,0x1
	beq- 0,.L803
.L804:
	fmuls 1,1,2
.L803:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmuls 2,2,2
	srawi 0,4,1
	addze 0,0
	bne- 0,.L804
.L814:
	extsw 4,0
	fmuls 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne- 0,.L804
	b .L814
.L813:
	addis 3,2,.LC18@toc@ha
	lfs 2,.LC18@toc@l(3)
	b .L802
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
	fcmpu 0,1,1
	bunlr- 0
	fadd 0,1,1
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,4,0
	blt- 5,.L828
	addis 9,2,.LC17@toc@ha
	lfs 2,.LC17@toc@l(9)
.L817:
	andi. 9,4,0x1
	beq- 0,.L818
.L819:
	fmul 1,1,2
.L818:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr- 0
	andi. 9,4,0x1
	fmul 2,2,2
	srawi 0,4,1
	addze 0,0
	bne- 0,.L819
.L829:
	extsw 4,0
	fmul 2,2,2
	andi. 9,4,0x1
	srawi 0,4,1
	addze 0,0
	bne- 0,.L819
	b .L829
.L828:
	addis 3,2,.LC18@toc@ha
	lfs 2,.LC18@toc@l(3)
	b .L817
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
	stfd 28,-32(1)
	.cfi_offset 60, -32
	fmr 28,1
	stfd 29,-24(1)
	.cfi_offset 61, -24
	fmr 29,2
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	fmr 0,28
	fcmpu 0,0,0
	bun- 0,.L831
	fmr 3,1
	mflr 0
	.cfi_register 65, 0
	fmr 4,2
	std 31,120(1)
	.cfi_offset 31, -40
	mr 31,5
	std 0,176(1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu 1,1,28
	bne 1,$+8
	fcmpu 1,2,29
	beq- 1,.L846
	cmpwi 5,31,0
	stfd 30,144(1)
	.cfi_offset 62, -16
	stfd 31,152(1)
	.cfi_offset 63, -8
	blt- 5,.L847
	addis 9,2,.LC25@toc@ha
	addi 3,9,.LC25@toc@l
	lfd 30,0(3)
	lfd 31,8(3)
.L832:
	andi. 9,31,0x1
	beq- 0,.L833
.L834:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L833:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq- 0,.L845
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	fmr 31,2
	srawi 0,31,1
	addze 0,0
	fmr 30,1
	bne- 0,.L834
.L848:
	fmr 3,30
	extsw 31,0
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	fmr 31,2
	srawi 0,31,1
	addze 0,0
	fmr 30,1
	bne- 0,.L834
	b .L848
.L845:
	lfd 30,144(1)
	.cfi_restore 62
	lfd 31,152(1)
	.cfi_restore 63
.L846:
	ld 6,176(1)
	ld 31,120(1)
	.cfi_restore 31
	mtlr 6
	.cfi_restore 65
.L831:
	fmr 1,28
	addi 1,1,160
	.cfi_def_cfa_offset 0
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L847:
	.cfi_def_cfa_offset 160
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 4,2,.LC26@toc@ha
	addi 5,4,.LC26@toc@l
	lfd 30,0(5)
	lfd 31,8(5)
	b .L832
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
	cmpdi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmpldi 1,9,6
	ble- 1,.L851
	or 10,3,4
	andi. 10,10,0x7
	bne- 0,.L851
	srdi 6,5,3
	andi. 10,6,0x1
	addi 7,6,-1
	mr 0,6
	addi 9,4,-8
	addi 8,3,-8
	bne- 0,.L901
.L878:
	srdi 10,0,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L898
	addi 10,10,-1
	mtctr 10
	ld 7,8(9)
	ld 11,8(8)
	xor 7,7,11
	std 7,8(8)
	addi 6,8,8
	ld 10,16(9)
	ld 7,8(6)
	xor 10,10,7
	addi 9,9,16
	std 10,8(6)
.L852:
	ld 7,8(9)
	ld 11,16(6)
	xor 7,7,11
	std 7,16(6)
	addi 6,6,16
	ld 10,16(9)
	ld 7,8(6)
	xor 10,10,7
	addi 9,9,16
	std 10,8(6)
	bdnz .L852
.L892:
	andi. 9,5,0x7
	rldicr 0,5,0,60
	add 9,3,0
	add 8,4,0
	subf 5,0,5
	beqlr- 0
	cmpldi 7,5,1
	lbzx 6,3,0
	lbzx 4,4,0
	xor 11,6,4
	stbx 11,3,0
	beqlr- 7
	cmpldi 1,5,2
	lbz 10,1(9)
	lbz 12,1(8)
	xor 7,12,10
	stb 7,1(9)
	beqlr- 1
	cmpldi 5,5,3
	lbz 4,2(9)
	lbz 0,2(8)
	xor 6,0,4
	stb 6,2(9)
	beqlr- 5
	cmpldi 6,5,4
	lbz 12,3(9)
	lbz 11,3(8)
	xor 10,11,12
	stb 10,3(9)
	beqlr- 6
	cmpldi 0,5,5
	lbz 7,4(9)
	lbz 0,4(8)
	xor 4,0,7
	stb 4,4(9)
	beqlr- 0
	cmpldi 7,5,6
	lbz 6,5(9)
	lbz 5,5(8)
	xor 11,5,6
	stb 11,5(9)
	beqlr- 7
	lbz 12,6(8)
	lbz 8,6(9)
	xor 10,12,8
	stb 10,6(9)
	blr
.L898:
	ld 0,8(8)
	mr 6,8
	ld 7,8(9)
	addi 8,8,16
	ld 11,16(9)
	addi 9,9,16
	xor 12,7,0
	std 12,-8(8)
	ld 10,16(6)
	xor 7,11,10
	std 7,16(6)
	bdz .L892
	ld 0,8(8)
	mr 6,8
	ld 7,8(9)
	addi 8,8,16
	ld 11,16(9)
	addi 9,9,16
	xor 12,7,0
	std 12,-8(8)
	ld 10,16(6)
	xor 7,11,10
	std 7,16(6)
	bdnz .L898
	b .L892
.L901:
	ld 12,0(3)
	cmpdi 5,7,0
	ld 11,0(4)
	mr 9,4
	mr 8,3
	xor 10,11,12
	std 10,0(3)
	bne+ 5,.L878
	b .L892
.L851:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 11,3,-1
	beq- 0,.L875
	lbz 0,0(3)
	mr 7,4
	lbz 4,0(4)
	mr 11,3
	xor 5,4,0
	stb 5,0(3)
.L875:
	srdi 9,9,1
	addi 6,9,1
	mtctr 6
	b .L854
.L902:
	lbz 9,1(8)
	addi 11,11,2
	lbz 5,1(10)
	xor 6,5,9
	stb 6,1(8)
.L854:
	lbz 12,1(7)
	addi 10,7,1
	lbz 0,1(11)
	addi 8,11,1
	addi 7,7,2
	xor 4,12,0
	stb 4,1(11)
	bdnz .L902
	blr
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
	lbz 9,0(3)
	cmpwi 0,9,0
	mr 9,3
	beq- 0,.L904
.L905:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L905
.L904:
	cmpdi 5,5,0
	beq- 5,.L906
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L929
.L917:
	srdi 0,5,1
	mtctr 0
.L907:
	lbz 4,1(10)
	addi 5,10,1
	addi 11,9,1
	rlwinm 12,4,0,0xff
	stb 4,0(9)
	cmpwi 1,12,0
	addi 10,5,1
	beqlr- 1
	lbz 8,1(5)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	cmpwi 5,7,0
	addi 9,11,1
	beqlr- 5
	bdnz .L907
.L906:
	li 6,0
	stb 6,0(9)
	blr
.L929:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpdi 7,7,0
	addi 9,9,1
	bne+ 7,.L917
	b .L906
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
	cmpdi 0,4,0
	mr 9,3
	li 3,0
	beqlr- 0
	andi. 8,4,0x3
	mr 10,4
	beq- 0,.L942
	cmpdi 1,8,1
	beq- 1,.L953
	cmpdi 5,8,2
	beq- 5,.L954
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L954:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L953:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmpld 1,4,3
	beqlr- 1
.L942:
	srdi 10,10,2
.L931:
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
	cmpdi 1,10,1
	addi 3,7,3
	addi 10,10,-1
	bne+ 1,.L931
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
	lbz 8,0(3)
	addi 4,4,-1
	cmpwi 0,8,0
	beq- 0,.L968
.L964:
	mr 10,4
	b .L967
.L966:
	beqlr- 7
.L967:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L966
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L964
.L968:
	li 3,0
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
	mr 9,3
	li 8,0
.L976:
	lbz 10,0(9)
	mr 3,8
	cmpw 7,10,4
	cmpwi 0,10,0
	bne- 7,.L975
	mr 3,9
.L975:
	addi 9,9,1
	mr 8,3
	bne+ 0,.L976
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
	lbz 11,0(4)
	mr 8,3
	andi. 5,11,0xff
	beq- 0,.L993
	mr 9,4
.L982:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L982
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L1001
.L1004:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L1003
.L1001:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L1004
	addi 0,3,1
	mtctr 0
	mr 6,4
	mr 10,11
	mr 7,8
	b .L984
.L1006:
	bdz .L986
	bne- 7,.L987
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L1005
	lbzu 10,1(6)
.L984:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L1006
.L987:
	addi 8,8,1
	b .L1001
.L1003:
	li 3,0
	blr
.L1005:
	lbz 9,1(6)
.L986:
	cmpw 5,12,9
	bne+ 5,.L987
.L993:
	mr 3,8
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
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 0,1,0
	blt- 0,.L1017
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1017:
	fcmpu 5,2,0
	bnglr+ 5
	fneg 1,1
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
	cmpdi 0,6,0
	mr 9,3
	beqlr- 0
	cmpld 1,4,6
	blt- 1,.L1026
	subf 4,6,4
	add 0,3,4
	cmpld 5,3,0
	bgt- 5,.L1026
	cmpldi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1023
.L1020:
	cmpld 1,0,9
	blt- 1,.L1026
.L1023:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1020
	beqlr- 7
	subf 7,11,9
	add 8,7,6
	addi 4,8,-2
	mtctr 4
	mr 8,5
	mr 10,11
.L1021:
	lbzu 4,1(10)
	lbzu 7,1(8)
	cmpw 0,4,7
	bne- 0,.L1020
	bdnz .L1021
	blr
.L1026:
	li 3,0
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 30,3
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	beq- 0,.L1035
	mflr 0
	.cfi_register 65, 0
	std 0,144(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,144(1)
	mtlr 0
	.cfi_restore 65
.L1035:
	addi 1,1,128
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
	addis 9,2,.LC1@toc@ha
	lfs 0,.LC1@toc@l(9)
	fcmpu 7,1,0
	blt- 7,.L1063
	addis 3,2,.LC35@toc@ha
	lfs 2,.LC35@toc@l(3)
	li 10,0
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1064
.L1043:
	addis 12,2,.LC18@toc@ha
	addis 9,2,.LC35@toc@ha
	lfs 7,.LC18@toc@l(12)
	lfs 8,.LC35@toc@l(9)
	li 11,0
.L1049:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1049
	cmpwi 1,10,0
	stw 11,0(4)
	beqlr- 1
.L1066:
	fneg 1,1
	blr
.L1064:
	addis 5,2,.LC18@toc@ha
	lfs 3,.LC18@toc@l(5)
	fcmpu 1,1,3
	bnl- 1,.L1046
	bne- 7,.L1055
.L1046:
	li 0,0
	stw 0,0(4)
	blr
.L1063:
	addis 6,2,.LC31@toc@ha
	fneg 12,1
	lfs 4,.LC31@toc@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1065
	fmr 1,12
	li 10,1
	b .L1043
.L1065:
	addis 7,2,.LC33@toc@ha
	lfs 5,.LC33@toc@l(7)
	fcmpu 6,1,5
	bng- 6,.L1046
	li 10,1
.L1044:
	addis 8,2,.LC18@toc@ha
	fmr 1,12
	lfs 6,.LC18@toc@l(8)
	li 11,0
.L1051:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt+ 7,.L1051
	cmpwi 1,10,0
	stw 11,0(4)
	bne+ 1,.L1066
	blr
.L1055:
	fmr 12,1
	b .L1044
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
	mr. 10,3
	li 3,0
	beqlr- 0
.L1069:
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	sldi 4,4,1
	beqlr- 0
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	sldi 4,4,1
	bne+ 0,.L1069
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
	cmplw 0,4,3
	li 9,16
	mtctr 9
	li 12,32
	li 10,1
	blt+ 0,.L1074
	b .L1103
.L1078:
	rldicl 4,11,0,32
	slwi 9,4,1
	cmpwi 6,4,0
	cmplw 5,3,9
	slwi 10,10,1
	ble- 7,.L1076
	blt- 6,.L1079
	rldicl 4,9,0,32
	slwi 10,10,1
	ble- 5,.L1076
	bdz .L1077
.L1074:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge+ 1,.L1078
.L1079:
	li 12,0
.L1084:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 11,7,0xff
	subf 8,4,3
	neg 9,11
	beq- 0,.L1081
	mr 3,8
.L1081:
	and 0,10,9
	srwi 10,10,1
	cmpwi 1,10,0
	or 12,12,0
	rldicl 3,3,0,32
	srdi 4,4,1
	bne+ 1,.L1084
.L1077:
	cmpdi 7,5,0
	beq+ 7,.L1085
	mr 12,3
.L1085:
	rldicl 3,12,0,32
	blr
.L1076:
	cmpwi 0,10,0
	bne+ 0,.L1079
	li 12,0
	b .L1077
.L1103:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	subf 4,4,3
	beq- 0,.L1087
	mr 3,4
.L1087:
	rldicl 3,3,0,32
	b .L1077
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
	cmpdi 0,3,0
	beq- 0,.L1108
	slwi 3,3,8
	cntlzw 4,3
	addi 0,4,-1
	extsw 3,0
	blr
.L1108:
	li 0,7
	extsw 3,0
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
	sradi 9,3,63
	cmpd 0,3,9
	xor 3,3,9
	beq- 0,.L1111
	cntlzd 4,3
	addi 0,4,-1
	extsw 3,0
	blr
.L1111:
	li 0,63
	extsw 3,0
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
	mr. 10,3
	li 3,0
	beq- 0,.L1113
.L1114:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 0,9
	and 5,0,4
	add 3,3,5
	rldic 4,4,1,32
	bne+ 0,.L1114
.L1113:
	rldicl 3,3,0,32
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
	cmpld 0,3,4
	srwi 9,5,3
	rlwinm 0,5,0,0,28
	blt- 0,.L1121
	add 8,4,5
	cmpld 1,3,8
	mr 10,5
	ble- 1,.L1201
.L1121:
	cmpwi 1,9,0
	addi 8,4,-8
	addi 10,3,-8
	beq- 1,.L1167
	andi. 7,9,0x1
	addi 6,9,-1
	bne- 0,.L1202
.L1153:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1193
	addi 9,9,-1
	mtctr 9
	ld 6,8(8)
	std 6,8(10)
	addi 7,8,8
	ld 6,8(7)
	addi 9,10,8
	std 6,8(9)
.L1124:
	ld 6,16(7)
	std 6,16(9)
	addi 7,7,16
	ld 6,8(7)
	addi 9,9,16
	std 6,8(9)
	bdnz .L1124
.L1170:
	cmplw 1,0,5
	bgelr- 1
	subf 10,0,5
	addi 8,10,-1
	cmplwi 5,8,6
	rldicl 7,0,0,32
	ble- 5,.L1126
	addi 11,7,1
	add 12,4,11
	add 6,3,7
	subf 9,12,6
	subfic 8,9,6
	subfe 8,8,8
	neg 11,8
	rlwinm 12,11,0,0xff
	cmpwi 0,12,0
	add 11,4,7
	beq- 0,.L1126
	or 9,11,6
	andi. 8,9,0x7
	bne- 0,.L1126
	rldicl 9,10,61,35
	andi. 8,9,0x1
	addi 12,9,-1
	addi 7,11,-8
	addi 8,6,-8
	beq- 0,.L1150
	cmpdi 6,12,0
	mr 7,11
	ld 11,0(11)
	mr 8,6
	std 11,0(6)
	beq- 6,.L1174
.L1150:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1192
	addi 9,9,-1
	mtctr 9
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 9,8,8
	std 11,8(9)
.L1127:
	ld 11,16(6)
	std 11,16(9)
	addi 6,6,16
	ld 11,8(6)
	addi 9,9,16
	std 11,8(9)
	bdnz .L1127
.L1174:
	andi. 9,10,0x7
	rlwinm 10,10,0,0,28
	add 12,10,0
	beqlr- 0
	addi 0,12,1
	cmplw 1,0,5
	rldicl 8,12,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 1
	addi 6,12,2
	cmplw 5,6,5
	rldicl 9,0,0,32
	lbzx 11,4,9
	stbx 11,3,9
	bgelr- 5
	addi 10,12,3
	cmplw 6,10,5
	rldicl 0,6,0,32
	lbzx 8,4,0
	stbx 8,3,0
	bgelr- 6
	addi 6,12,4
	cmplw 7,6,5
	rldicl 9,10,0,32
	lbzx 7,4,9
	stbx 7,3,9
	bgelr- 7
	addi 11,12,5
	cmplw 0,11,5
	rldicl 10,6,0,32
	lbzx 0,4,10
	stbx 0,3,10
	bgelr- 0
	addi 12,12,6
	cmplw 1,12,5
	rldicl 6,11,0,32
	lbzx 5,4,6
	stbx 5,3,6
	bgelr- 1
	rldicl 8,12,0,32
	lbzx 4,4,8
	stbx 4,3,8
	blr
.L1193:
	ld 11,8(8)
	mr 12,8
	mr 9,10
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 6,16(12)
	std 6,16(9)
	bdz .L1170
	ld 11,8(8)
	mr 12,8
	mr 9,10
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 6,16(12)
	std 6,16(9)
	bdnz .L1193
	b .L1170
.L1192:
	ld 12,8(7)
	mr 6,7
	mr 9,8
	std 12,8(8)
	addi 7,7,16
	addi 8,8,16
	ld 11,16(6)
	std 11,16(9)
	bdz .L1174
	ld 12,8(7)
	mr 6,7
	mr 9,8
	std 12,8(8)
	addi 7,7,16
	addi 8,8,16
	ld 11,16(6)
	std 11,16(9)
	bdnz .L1192
	b .L1174
.L1202:
	cmpdi 6,6,0
	ld 7,0(4)
	mr 8,4
	std 7,0(3)
	mr 10,3
	bne+ 6,.L1153
	b .L1170
.L1201:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 5,0,0,32
	addi 6,5,1
	add 4,4,6
	add 3,3,6
	beqlr- 5
	andi. 9,10,0x1
	addi 7,10,-1
	beq- 0,.L1156
	cmpdi 6,7,0
	lbzu 11,-1(4)
	stbu 11,-1(3)
	beqlr- 6
.L1156:
	srdi 9,10,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1194
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1131:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1131
.L1117:
	blr
.L1194:
	lbz 12,-1(4)
	mr 10,4
	mr 9,3
	stb 12,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L1117
	lbz 12,-1(4)
	mr 10,4
	mr 9,3
	stb 12,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L1194
	blr
.L1167:
	cmpdi 5,5,0
	rldicl 7,0,0,32
	mr 10,5
	beqlr- 5
.L1126:
	rldicl 11,10,0,32
	andi. 8,11,0x1
	addi 9,7,-1
	add 4,4,9
	add 9,3,9
	addi 3,11,-1
	beq- 0,.L1147
	cmpdi 5,3,0
	lbzu 7,1(4)
	stbu 7,1(9)
	beqlr- 5
.L1147:
	srdi 10,11,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L1191
	addi 10,10,-1
	mtctr 10
	lbz 7,1(4)
	stb 7,1(9)
	addi 8,4,1
	lbz 7,1(8)
	addi 10,9,1
	stb 7,1(10)
.L1129:
	lbz 7,2(8)
	stb 7,2(10)
	addi 8,8,2
	lbz 7,1(8)
	addi 10,10,2
	stb 7,1(10)
	bdnz .L1129
	blr
.L1191:
	lbz 0,1(4)
	mr 12,4
	mr 10,9
	stb 0,1(9)
	addi 4,4,2
	addi 9,9,2
	lbz 6,2(12)
	stb 6,2(10)
	bdnz .L1191
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
	cmpld 0,3,4
	srwi 6,5,1
	blt- 0,.L1207
	add 10,4,5
	cmpld 1,3,10
	mr 9,5
	ble- 1,.L1265
.L1207:
	cmpwi 1,6,0
	beq- 1,.L1206
	addi 0,6,-1
	cmplwi 5,0,4
	ble- 5,.L1210
	or 7,4,3
	andi. 9,7,0x7
	bne- 0,.L1210
	addi 8,4,2
	subf 11,8,3
	subfic 9,11,4
	subfe 12,12,12
	neg 9,12
	rlwinm 10,9,0,0xff
	cmpwi 6,10,0
	beq- 6,.L1210
	srdi 11,5,3
	andi. 10,11,0x1
	addi 7,11,-1
	srwi 0,5,3
	addi 8,4,-8
	addi 10,3,-8
	beq- 0,.L1231
	cmpdi 7,7,0
	ld 12,0(4)
	mr 8,4
	std 12,0(3)
	mr 10,3
	beq- 7,.L1246
.L1231:
	srdi 9,11,1
	cmpdi 1,9,2
	mtctr 9
	ble 1,.L1260
	addi 9,9,-1
	mtctr 9
	ld 11,8(8)
	std 11,8(10)
	addi 7,8,8
	ld 11,8(7)
	addi 9,10,8
	std 11,8(9)
.L1211:
	ld 11,16(7)
	std 11,16(9)
	addi 7,7,16
	ld 11,8(7)
	addi 9,9,16
	std 11,8(9)
	bdnz .L1211
.L1246:
	slwi 11,0,2
	cmplw 5,6,11
	beq- 5,.L1206
	addi 0,11,1
	rlwinm 8,11,1,0,28
	cmplw 6,6,0
	lhzx 10,4,8
	sthx 10,3,8
	ble- 6,.L1206
	addi 7,11,2
	rldic 9,0,1,31
	cmplw 0,6,7
	lhzx 6,4,9
	sthx 6,3,9
	ble- 0,.L1206
	rldicl 12,7,0,32
	sldi 11,12,1
	lhzx 0,4,11
	sthx 0,3,11
.L1206:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	rldicl 10,5,0,32
	lbzx 4,4,10
	stbx 4,3,10
	blr
.L1260:
	ld 11,8(8)
	mr 7,8
	mr 9,10
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 12,16(7)
	std 12,16(9)
	bdz .L1246
	ld 11,8(8)
	mr 7,8
	mr 9,10
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 12,16(7)
	std 12,16(9)
	bdnz .L1260
	b .L1246
.L1265:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 5,0,0,32
	addi 6,5,1
	add 4,4,6
	add 3,3,6
	beqlr- 5
	andi. 10,9,0x1
	addi 7,9,-1
	beq- 0,.L1234
	cmpdi 6,7,0
	lbzu 8,-1(4)
	stbu 8,-1(3)
	beqlr- 6
.L1234:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1261
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1216:
	addi 4,10,-1
	lbz 8,-1(4)
	addi 3,9,-1
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
	bdnz .L1216
.L1203:
	blr
.L1261:
	lbz 11,-1(4)
	mr 12,4
	mr 9,3
	stb 11,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(12)
	stb 10,-2(9)
	bdz .L1203
	lbz 11,-1(4)
	mr 12,4
	mr 9,3
	stb 11,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 10,-2(12)
	stb 10,-2(9)
	bdnz .L1261
	blr
.L1210:
	andi. 9,6,0x1
	addi 8,6,-1
	addi 10,4,-2
	addi 9,3,-2
	beq- 0,.L1228
	cmpdi 7,8,0
	lhz 7,0(4)
	mr 10,4
	sth 7,0(3)
	mr 9,3
	beq- 7,.L1206
.L1228:
	srdi 8,6,1
	cmpdi 1,8,2
	mtctr 8
	ble 1,.L1259
	addi 8,8,-1
	mtctr 8
	lhz 6,2(10)
	sth 6,2(9)
	addi 7,10,2
	lhz 6,2(7)
	addi 8,9,2
	sth 6,2(8)
.L1213:
	lhz 6,4(7)
	sth 6,4(8)
	addi 7,7,4
	lhz 6,2(7)
	addi 8,8,4
	sth 6,2(8)
	bdnz .L1213
	b .L1206
.L1259:
	lhz 6,2(10)
	mr 12,10
	mr 11,9
	sth 6,2(9)
	addi 10,10,4
	addi 9,9,4
	lhz 0,4(12)
	sth 0,4(11)
	bdnz .L1259
	b .L1206
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
	cmpld 0,3,4
	srwi 9,5,2
	rlwinm 0,5,0,0,29
	blt- 0,.L1270
	add 8,4,5
	cmpld 1,3,8
	mr 10,5
	ble- 1,.L1350
.L1270:
	cmpwi 1,9,0
	addi 8,4,-4
	addi 10,3,-4
	beq- 1,.L1316
	andi. 7,9,0x1
	addi 6,9,-1
	bne- 0,.L1351
.L1302:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1342
	addi 9,9,-1
	mtctr 9
	lwz 6,4(8)
	stw 6,4(10)
	addi 7,8,4
	lwz 6,4(7)
	addi 9,10,4
	stw 6,4(9)
.L1273:
	lwz 6,8(7)
	stw 6,8(9)
	addi 7,7,8
	lwz 6,4(7)
	addi 9,9,8
	stw 6,4(9)
	bdnz .L1273
.L1319:
	cmplw 1,0,5
	bgelr- 1
	subf 10,0,5
	addi 8,10,-1
	cmplwi 5,8,6
	rldicl 7,0,0,32
	ble- 5,.L1275
	addi 11,7,1
	add 12,4,11
	add 6,3,7
	subf 9,12,6
	subfic 8,9,6
	subfe 8,8,8
	neg 11,8
	rlwinm 12,11,0,0xff
	cmpwi 0,12,0
	add 11,4,7
	beq- 0,.L1275
	or 9,11,6
	andi. 8,9,0x7
	bne- 0,.L1275
	rldicl 9,10,61,35
	andi. 8,9,0x1
	addi 12,9,-1
	addi 7,11,-8
	addi 8,6,-8
	beq- 0,.L1299
	cmpdi 6,12,0
	mr 7,11
	ld 11,0(11)
	mr 8,6
	std 11,0(6)
	beq- 6,.L1323
.L1299:
	srdi 9,9,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1341
	addi 9,9,-1
	mtctr 9
	ld 11,8(7)
	std 11,8(8)
	addi 6,7,8
	ld 11,8(6)
	addi 9,8,8
	std 11,8(9)
.L1276:
	ld 11,16(6)
	std 11,16(9)
	addi 6,6,16
	ld 11,8(6)
	addi 9,9,16
	std 11,8(9)
	bdnz .L1276
.L1323:
	andi. 9,10,0x7
	rlwinm 10,10,0,0,28
	add 12,10,0
	beqlr- 0
	addi 0,12,1
	cmplw 1,0,5
	rldicl 8,12,0,32
	lbzx 7,4,8
	stbx 7,3,8
	bgelr- 1
	addi 6,12,2
	cmplw 5,6,5
	rldicl 9,0,0,32
	lbzx 11,4,9
	stbx 11,3,9
	bgelr- 5
	addi 10,12,3
	cmplw 6,10,5
	rldicl 0,6,0,32
	lbzx 8,4,0
	stbx 8,3,0
	bgelr- 6
	addi 6,12,4
	cmplw 7,6,5
	rldicl 9,10,0,32
	lbzx 7,4,9
	stbx 7,3,9
	bgelr- 7
	addi 11,12,5
	cmplw 0,11,5
	rldicl 10,6,0,32
	lbzx 0,4,10
	stbx 0,3,10
	bgelr- 0
	addi 12,12,6
	cmplw 1,12,5
	rldicl 6,11,0,32
	lbzx 5,4,6
	stbx 5,3,6
	bgelr- 1
	rldicl 8,12,0,32
	lbzx 4,4,8
	stbx 4,3,8
	blr
.L1342:
	lwz 11,4(8)
	mr 12,8
	mr 9,10
	stw 11,4(10)
	addi 8,8,8
	addi 10,10,8
	lwz 6,8(12)
	stw 6,8(9)
	bdz .L1319
	lwz 11,4(8)
	mr 12,8
	mr 9,10
	stw 11,4(10)
	addi 8,8,8
	addi 10,10,8
	lwz 6,8(12)
	stw 6,8(9)
	bdnz .L1342
	b .L1319
.L1341:
	ld 12,8(7)
	mr 6,7
	mr 9,8
	std 12,8(8)
	addi 7,7,16
	addi 8,8,16
	ld 11,16(6)
	std 11,16(9)
	bdz .L1323
	ld 12,8(7)
	mr 6,7
	mr 9,8
	std 12,8(8)
	addi 7,7,16
	addi 8,8,16
	ld 11,16(6)
	std 11,16(9)
	bdnz .L1341
	b .L1323
.L1351:
	cmpdi 6,6,0
	lwz 7,0(4)
	mr 8,4
	stw 7,0(3)
	mr 10,3
	bne+ 6,.L1302
	b .L1319
.L1350:
	cmpdi 5,5,0
	addi 0,5,-1
	rldicl 5,0,0,32
	addi 6,5,1
	add 4,4,6
	add 3,3,6
	beqlr- 5
	andi. 9,10,0x1
	addi 7,10,-1
	beq- 0,.L1305
	cmpdi 6,7,0
	lbzu 11,-1(4)
	stbu 11,-1(3)
	beqlr- 6
.L1305:
	srdi 9,10,1
	cmpdi 7,9,2
	mtctr 9
	ble 7,.L1343
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(4)
	stb 8,-1(3)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,3,-1
	stb 8,-1(9)
.L1280:
	addi 4,10,-1
	lbz 8,-1(4)
	stb 8,-2(9)
	addi 10,4,-1
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L1280
.L1266:
	blr
.L1343:
	lbz 12,-1(4)
	mr 10,4
	mr 9,3
	stb 12,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L1266
	lbz 12,-1(4)
	mr 10,4
	mr 9,3
	stb 12,-1(3)
	addi 4,4,-2
	addi 3,3,-2
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L1343
	blr
.L1316:
	cmpdi 5,5,0
	rldicl 7,0,0,32
	mr 10,5
	beqlr- 5
.L1275:
	rldicl 11,10,0,32
	andi. 8,11,0x1
	addi 9,7,-1
	add 4,4,9
	add 9,3,9
	addi 3,11,-1
	beq- 0,.L1296
	cmpdi 5,3,0
	lbzu 7,1(4)
	stbu 7,1(9)
	beqlr- 5
.L1296:
	srdi 10,11,1
	cmpdi 6,10,2
	mtctr 10
	ble 6,.L1340
	addi 10,10,-1
	mtctr 10
	lbz 7,1(4)
	stb 7,1(9)
	addi 8,4,1
	lbz 7,1(8)
	addi 10,9,1
	stb 7,1(10)
.L1278:
	lbz 7,2(8)
	stb 7,2(10)
	addi 8,8,2
	lbz 7,1(8)
	addi 10,10,2
	stb 7,1(10)
	bdnz .L1278
	blr
.L1340:
	lbz 0,1(4)
	mr 12,4
	mr 10,9
	stb 0,1(9)
	addi 4,4,2
	addi 9,9,2
	lbz 6,2(12)
	stb 6,2(10)
	bdnz .L1340
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
	divw 9,3,4
	mullw 0,9,4
	subf 3,0,3
	extsw 3,3
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
	stw 3,-16(1)
	addi 9,1,-16
	lfiwzx 1,0,9
	fcfid 1,1
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
	stw 3,-16(1)
	addi 9,1,-16
	lfiwzx 1,0,9
	fcfids 1,1
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
	std 3,-16(1)
	lfd 1,-16(1)
	fcfidu 1,1
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
	std 3,-16(1)
	lfd 1,-16(1)
	fcfidus 1,1
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
	divwu 9,3,4
	mullw 0,9,4
	subf 3,0,3
	rldicl 3,3,0,32
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
	srdi. 9,3,15
	bne- 0,.L1361
	srawi 9,3,14
	cmpwi 1,9,0
	bne- 1,.L1360
	srdi. 9,3,13
	bne- 0,.L1362
	srdi. 9,3,12
	bne- 0,.L1363
	srdi. 9,3,11
	bne- 0,.L1364
	srdi. 9,3,10
	bne- 0,.L1365
	srdi. 9,3,9
	bne- 0,.L1366
	srdi. 9,3,8
	bne- 0,.L1367
	srdi. 9,3,7
	bne- 0,.L1368
	srdi. 9,3,6
	bne- 0,.L1369
	srdi. 9,3,5
	bne- 0,.L1370
	srdi. 9,3,4
	bne- 0,.L1371
	srdi. 9,3,3
	bne- 0,.L1372
	srdi. 9,3,2
	bne- 0,.L1373
	srdi. 9,3,1
	bne- 0,.L1374
	cntlzd 3,3
	srdi 4,3,6
	addi 9,4,15
.L1360:
	rldicl 3,9,0,59
	blr
.L1361:
	li 9,0
	b .L1360
.L1372:
	li 9,12
	b .L1360
.L1362:
	li 9,2
	b .L1360
.L1363:
	li 9,3
	b .L1360
.L1364:
	li 9,4
	b .L1360
.L1365:
	li 9,5
	b .L1360
.L1366:
	li 9,6
	b .L1360
.L1367:
	li 9,7
	b .L1360
.L1368:
	li 9,8
	b .L1360
.L1369:
	li 9,9
	b .L1360
.L1370:
	li 9,10
	b .L1360
.L1371:
	li 9,11
	b .L1360
.L1373:
	li 9,13
	b .L1360
.L1374:
	li 9,14
	b .L1360
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
	andi. 9,3,0x1
	bne- 0,.L1379
	andi. 9,3,0x2
	bne- 0,.L1380
	andi. 9,3,0x4
	bne- 0,.L1381
	andi. 9,3,0x8
	bne- 0,.L1382
	andi. 9,3,0x10
	bne- 0,.L1383
	andi. 9,3,0x20
	bne- 0,.L1384
	andi. 9,3,0x40
	bne- 0,.L1385
	andi. 9,3,0x80
	bne- 0,.L1386
	andi. 9,3,0x100
	bne- 0,.L1387
	andi. 9,3,0x200
	bne- 0,.L1388
	andi. 9,3,0x400
	bne- 0,.L1389
	andi. 9,3,0x800
	bne- 0,.L1390
	andi. 9,3,0x1000
	bne- 0,.L1391
	andi. 9,3,0x2000
	bne- 0,.L1392
	andi. 9,3,0x4000
	bne- 0,.L1393
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 5,4,15
.L1378:
	rldicl 3,5,0,59
	blr
.L1379:
	li 5,0
	b .L1378
.L1380:
	li 5,1
	b .L1378
.L1391:
	li 5,12
	b .L1378
.L1381:
	li 5,2
	b .L1378
.L1382:
	li 5,3
	b .L1378
.L1383:
	li 5,4
	b .L1378
.L1384:
	li 5,5
	b .L1378
.L1385:
	li 5,6
	b .L1378
.L1386:
	li 5,7
	b .L1378
.L1387:
	li 5,8
	b .L1378
.L1388:
	li 5,9
	b .L1378
.L1389:
	li 5,10
	b .L1378
.L1390:
	li 5,11
	b .L1378
.L1392:
	li 5,13
	b .L1378
.L1393:
	li 5,14
	b .L1378
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
	addis 9,2,.LC41@toc@ha
	lfs 0,.LC41@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1401
	fctidz 1,1
	stfd 1,-16(1)
	ld 3,-16(1)
	blr
.L1401:
	fsubs 2,1,0
	fctidz 3,2
	stfd 3,-16(1)
	ld 3,-16(1)
	addis 4,3,0x1
	addi 3,4,-32768
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
	rlwinm 9,3,31,31,31
	rlwinm 10,3,0,31,31
	add 0,9,10
	rlwinm 4,3,30,31,31
	add 5,0,4
	rlwinm 6,3,29,31,31
	add 7,5,6
	rlwinm 8,3,28,31,31
	add 11,7,8
	rlwinm 12,3,27,31,31
	add 9,11,12
	rlwinm 10,3,26,31,31
	add 0,9,10
	rlwinm 4,3,25,31,31
	add 5,0,4
	rlwinm 6,3,24,31,31
	add 7,5,6
	rlwinm 8,3,23,31,31
	add 11,7,8
	rlwinm 12,3,22,31,31
	add 9,11,12
	rlwinm 10,3,21,31,31
	rlwinm 4,3,20,31,31
	add 0,9,10
	rlwinm 6,3,19,31,31
	add 5,0,4
	rlwinm 8,3,18,31,31
	add 7,5,6
	srawi 3,3,15
	add 11,7,8
	add 12,11,3
	rldicl 3,12,0,63
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
	rlwinm 9,3,31,31,31
	rlwinm 10,3,0,31,31
	add 0,9,10
	rlwinm 4,3,30,31,31
	add 5,0,4
	rlwinm 6,3,29,31,31
	add 7,5,6
	rlwinm 8,3,28,31,31
	add 11,7,8
	rlwinm 12,3,27,31,31
	add 9,11,12
	rlwinm 10,3,26,31,31
	add 0,9,10
	rlwinm 4,3,25,31,31
	add 5,0,4
	rlwinm 6,3,24,31,31
	add 7,5,6
	rlwinm 8,3,23,31,31
	add 11,7,8
	rlwinm 12,3,22,31,31
	add 9,11,12
	rlwinm 10,3,21,31,31
	rlwinm 4,3,20,31,31
	add 0,9,10
	rlwinm 6,3,19,31,31
	add 5,0,4
	rlwinm 8,3,18,31,31
	add 7,5,6
	srawi 3,3,15
	add 11,7,8
	add 12,11,3
	rldicl 3,12,0,32
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
	mr. 10,3
	li 3,0
	beq- 0,.L1405
.L1406:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 1,10,0
	neg 0,9
	and 5,0,4
	add 3,3,5
	slwi 4,4,1
	bne+ 1,.L1406
.L1405:
	rldicl 3,3,0,32
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
	mr. 10,3
	li 3,0
	beq- 0,.L1410
	cmpdi 1,4,0
	beq- 1,.L1410
.L1411:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 0,9
	and 5,0,10
	add 3,3,5
	rldic 10,10,1,32
	bne+ 0,.L1411
.L1410:
	rldicl 3,3,0,32
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
	cmplw 0,4,3
	li 9,16
	mtctr 9
	li 12,32
	li 10,1
	blt+ 0,.L1416
	b .L1445
.L1420:
	rldicl 4,11,0,32
	slwi 9,4,1
	cmpwi 6,4,0
	cmplw 5,3,9
	slwi 10,10,1
	ble- 7,.L1418
	blt- 6,.L1421
	rldicl 4,9,0,32
	slwi 10,10,1
	ble- 5,.L1418
	bdz .L1419
.L1416:
	cmpwi 1,4,0
	slwi 11,4,1
	addi 8,12,-1
	cmplw 7,3,11
	addi 12,8,-1
	bge+ 1,.L1420
.L1421:
	li 12,0
.L1426:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 11,7,0xff
	subf 8,4,3
	neg 9,11
	beq- 0,.L1423
	mr 3,8
.L1423:
	and 0,10,9
	srwi 10,10,1
	cmpwi 1,10,0
	or 12,12,0
	rldicl 3,3,0,32
	srdi 4,4,1
	bne+ 1,.L1426
.L1419:
	cmpdi 7,5,0
	beq+ 7,.L1427
	mr 12,3
.L1427:
	rldicl 3,12,0,32
	blr
.L1418:
	cmpwi 0,10,0
	bne+ 0,.L1421
	li 12,0
	b .L1419
.L1445:
	subf 0,4,3
	srdi 6,0,63
	xori 7,6,0x1
	andi. 12,7,0xff
	subf 4,4,3
	beq- 0,.L1429
	mr 3,4
.L1429:
	rldicl 3,3,0,32
	b .L1419
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
	fcmpu 0,1,2
	li 3,-1
	blt- 0,.L1449
	mfcr 3,128
	rlwinm 3,3,2,1
.L1449:
	extsw 3,3
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
	fcmpu 0,1,2
	li 3,-1
	blt- 0,.L1452
	mfcr 3,128
	rlwinm 3,3,2,1
.L1452:
	extsw 3,3
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
	mulld 3,3,4
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
	mulld 3,3,4
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
	cmpwi 0,4,0
	blt- 0,.L1470
	cmpdi 1,4,0
	beq- 1,.L1462
	li 6,0
.L1458:
	li 10,32
	li 8,0
	b .L1461
.L1471:
	beq- 7,.L1460
.L1461:
	rlwinm 9,4,0,31,31
	sradi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,3
	rlwinm 7,10,0,0xff
	slwi 3,3,1
	cmpwi 7,7,0
	add 8,8,5
	extsw 3,3
	bne+ 0,.L1471
.L1460:
	cmpwi 5,6,0
	beq- 5,.L1459
	neg 8,8
.L1459:
	extsw 3,8
	blr
.L1470:
	neg 4,4
	extsw 4,4
	li 6,1
	b .L1458
.L1462:
	li 8,0
	b .L1459
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
	cmpdi 0,3,0
	li 9,1
	li 5,0
	bge+ 0,.L1473
	neg 3,3
	li 9,0
	li 5,1
.L1473:
	cmpdi 1,4,0
	bge+ 1,.L1474
	neg 4,4
	mr 5,9
.L1474:
	cmplw 5,3,4
	li 0,16
	mtctr 0
	mr 8,3
	mr 10,4
	li 12,1
	bgt+ 5,.L1475
	b .L1504
.L1479:
	slwi 10,10,1
	cmplw 0,8,10
	cmpwi 7,10,0
	slwi 12,12,1
	ble- 0,.L1477
	blt- 7,.L1480
	slwi 10,10,1
	cmplw 1,8,10
	slwi 12,12,1
	ble- 1,.L1477
	bdz .L1491
.L1475:
	cmpwi 6,10,0
	bge+ 6,.L1479
.L1480:
	li 11,0
.L1485:
	rldicl 0,8,0,32
	rldicl 9,10,0,32
	subf 6,9,0
	srdi 3,6,63
	xori 4,3,0x1
	andi. 7,4,0xff
	subf 0,10,8
	neg 9,7
	beq- 0,.L1482
	mr 8,0
.L1482:
	and 6,12,9
	srwi 12,12,1
	cmpwi 6,12,0
	or 11,11,6
	srwi 10,10,1
	bne+ 6,.L1485
.L1487:
	cmpwi 7,5,0
	rldicl 3,11,0,32
	beqlr- 7
.L1507:
	neg 3,3
	blr
.L1477:
	cmpwi 5,12,0
	bne+ 5,.L1480
.L1491:
	cmpwi 7,5,0
	li 3,0
	beqlr- 7
	b .L1507
.L1504:
	rldicl 6,3,0,32
	rldicl 3,4,0,32
	subf 4,3,6
	srdi 7,4,63
	xori 11,7,0x1
	b .L1487
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
	mr. 8,3
	li 6,0
	bge+ 0,.L1509
	neg 8,8
	li 6,1
.L1509:
	sradi 7,4,63
	xor 4,7,4
	subf 0,7,4
	cmplw 1,8,0
	li 5,16
	mtctr 5
	mr 12,0
	rldicl 3,8,0,32
	li 4,1
	bgt+ 1,.L1510
	b .L1542
.L1514:
	slwi 12,12,1
	cmplw 6,3,12
	cmpwi 7,12,0
	slwi 4,4,1
	ble- 6,.L1512
	blt- 7,.L1540
	slwi 12,12,1
	cmplw 1,3,12
	slwi 4,4,1
	ble- 1,.L1512
	bdz .L1513
.L1510:
	cmpwi 5,12,0
	bge+ 5,.L1514
.L1540:
	rldicl 7,3,0,32
	rldicl 8,12,0,32
	subf. 8,8,7
	srwi 4,4,1
	cmpwi 5,4,0
	subf 0,12,3
	blt- 0,.L1517
	rldicl 3,0,0,32
.L1517:
	srwi 12,12,1
	bne+ 5,.L1540
.L1513:
	cmpwi 6,6,0
	beqlr- 6
	neg 3,3
	blr
.L1512:
	cmpwi 0,4,0
	bne+ 0,.L1540
	b .L1513
.L1542:
	rldicl 10,8,0,32
	rldicl 9,0,0,32
	subf. 9,9,10
	subf 11,0,8
	rldicl 3,8,0,32
	blt- 0,.L1513
	rldicl 3,11,0,32
	b .L1513
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
	cmplw 0,4,3
	bge- 0,.L1732
	andi. 9,4,0x8000
	bne- 0,.L1549
	rldic 11,4,1,48
	cmplw 1,3,11
	ble- 1,.L1622
	andi. 10,11,0x8000
	bne- 0,.L1622
	rldic 11,4,2,48
	cmplw 5,3,11
	ble- 5,.L1624
	andi. 10,11,0x8000
	bne- 0,.L1624
	rldic 11,4,3,48
	cmplw 6,3,11
	ble- 6,.L1626
	andi. 10,11,0x8000
	bne- 0,.L1626
	rldic 11,4,4,48
	cmplw 7,3,11
	ble- 7,.L1628
	andi. 10,11,0x8000
	bne- 0,.L1628
	rldic 11,4,5,48
	cmplw 1,3,11
	ble- 1,.L1630
	andi. 10,11,0x8000
	bne- 0,.L1630
	rldic 11,4,6,48
	cmplw 5,3,11
	ble- 5,.L1632
	andi. 10,11,0x8000
	bne- 0,.L1632
	rldic 11,4,7,48
	cmplw 6,3,11
	ble- 6,.L1634
	andi. 10,11,0x8000
	bne- 0,.L1634
	rldic 11,4,8,48
	cmplw 7,3,11
	ble- 7,.L1636
	andi. 10,11,0x8000
	bne- 0,.L1636
	rldic 11,4,9,48
	cmplw 1,3,11
	ble- 1,.L1638
	andi. 10,11,0x8000
	bne- 0,.L1638
	rldic 11,4,10,48
	cmplw 5,3,11
	ble- 5,.L1640
	andi. 10,11,0x8000
	bne- 0,.L1640
	rldic 11,4,11,48
	cmplw 6,3,11
	ble- 6,.L1642
	andi. 10,11,0x8000
	bne- 0,.L1642
	rldic 11,4,12,48
	cmplw 7,3,11
	ble- 7,.L1644
	andi. 10,11,0x8000
	bne- 0,.L1644
	rldic 11,4,13,48
	cmplw 1,3,11
	ble- 1,.L1646
	andi. 10,11,0x8000
	bne- 0,.L1646
	rldic 11,4,14,48
	cmplw 5,3,11
	ble- 5,.L1648
	andi. 10,11,0x8000
	bne- 0,.L1648
	rldic 10,4,15,48
	cmplw 6,3,10
	ble- 6,.L1649
	cmpdi 7,10,0
	li 7,0
	bne- 7,.L1649
.L1552:
	cmpdi 7,5,0
	beq+ 7,.L1611
	mr 7,3
.L1611:
	rlwinm 3,7,0,0xffff
	blr
.L1622:
	li 12,2
.L1551:
	subf. 0,11,3
	subf 6,11,3
	rlwinm 4,6,0,0xffff
	blt- 0,.L1618
	mr 3,4
.L1618:
	not 8,0
	rlwinm 3,3,0,0xffff
	srdi 0,11,1
	subf. 6,0,3
	sradi 7,8,63
	subf 4,0,3
	and 9,12,7
	rldicl 10,12,63,49
	rlwinm 8,4,0,0xffff
	blt- 0,.L1554
	mr 3,8
.L1554:
	not 7,6
	srwi 4,12,2
	sradi 0,7,63
	cmpwi 1,4,0
	and 10,10,0
	or 9,10,9
	rlwinm 3,3,0,0xffff
	mr 7,9
	srdi 6,11,2
	beq- 1,.L1552
	subf 8,6,3
	srdi 7,8,63
	xori 0,7,0x1
	andi. 10,0,0xff
	subf 6,6,3
	rlwinm 8,6,0,0xffff
	beq- 0,.L1558
	mr 3,8
.L1558:
	cmpwi 5,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1560
	mr 7,4
.L1560:
	srwi 4,12,3
	cmpwi 6,4,0
	or 9,9,7
	mr 7,9
	srdi 0,11,3
	beq- 6,.L1552
	subf 10,0,3
	srdi 6,10,63
	xori 8,6,0x1
	andi. 7,8,0xff
	subf 0,0,3
	rlwinm 10,0,0,0xffff
	beq- 0,.L1562
	mr 3,10
.L1562:
	cmpwi 7,7,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 7,.L1564
	mr 8,4
.L1564:
	srwi 4,12,4
	cmpwi 1,4,0
	or 9,9,8
	mr 7,9
	srdi 6,11,4
	beq- 1,.L1552
	subf 7,6,3
	srdi 0,7,63
	xori 10,0,0x1
	andi. 8,10,0xff
	subf 6,6,3
	rlwinm 7,6,0,0xffff
	beq- 0,.L1566
	mr 3,7
.L1566:
	cmpwi 5,8,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 5,.L1568
	mr 0,4
.L1568:
	srwi 4,12,5
	cmpwi 6,4,0
	or 9,9,0
	mr 7,9
	srdi 10,11,5
	beq- 6,.L1552
	subf 8,10,3
	srdi 6,8,63
	xori 7,6,0x1
	andi. 0,7,0xff
	subf 10,10,3
	rlwinm 8,10,0,0xffff
	beq- 0,.L1570
	mr 3,8
.L1570:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1572
	mr 7,4
.L1572:
	srwi 4,12,6
	cmpwi 1,4,0
	or 9,9,7
	mr 7,9
	srdi 6,11,6
	beq- 1,.L1552
	subf 0,6,3
	srdi 10,0,63
	xori 8,10,0x1
	andi. 7,8,0xff
	subf 6,6,3
	rlwinm 0,6,0,0xffff
	beq- 0,.L1574
	mr 3,0
.L1574:
	cmpwi 5,7,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq- 5,.L1576
	mr 10,4
.L1576:
	srwi 4,12,7
	cmpwi 6,4,0
	or 9,9,10
	mr 7,9
	srdi 8,11,7
	beq- 6,.L1552
	subf 7,8,3
	srdi 6,7,63
	xori 0,6,0x1
	andi. 10,0,0xff
	subf 8,8,3
	rlwinm 7,8,0,0xffff
	beq- 0,.L1578
	mr 3,7
.L1578:
	cmpwi 7,10,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 7,.L1580
	mr 0,4
.L1580:
	srwi 4,12,8
	cmpwi 1,4,0
	or 9,9,0
	mr 7,9
	srdi 6,11,8
	beq- 1,.L1552
	subf 10,6,3
	srdi 8,10,63
	xori 7,8,0x1
	andi. 0,7,0xff
	subf 6,6,3
	rlwinm 10,6,0,0xffff
	beq- 0,.L1582
	mr 3,10
.L1582:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 5,.L1584
	mr 8,4
.L1584:
	srwi 4,12,9
	cmpwi 6,4,0
	or 9,9,8
	mr 7,9
	srdi 0,11,9
	beq- 6,.L1552
	subf 7,0,3
	srdi 6,7,63
	xori 10,6,0x1
	andi. 8,10,0xff
	subf 0,0,3
	rlwinm 7,0,0,0xffff
	beq- 0,.L1586
	mr 3,7
.L1586:
	cmpwi 7,8,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq- 7,.L1588
	mr 10,4
.L1588:
	srwi 4,12,10
	cmpwi 1,4,0
	or 9,9,10
	mr 7,9
	srdi 6,11,10
	beq- 1,.L1552
	subf 8,6,3
	srdi 0,8,63
	xori 7,0,0x1
	andi. 10,7,0xff
	subf 6,6,3
	rlwinm 8,6,0,0xffff
	beq- 0,.L1590
	mr 3,8
.L1590:
	cmpwi 5,10,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 5,.L1592
	mr 0,4
.L1592:
	srwi 4,12,11
	cmpwi 6,4,0
	or 9,9,0
	mr 7,9
	srdi 10,11,11
	beq- 6,.L1552
	subf 7,10,3
	srdi 6,7,63
	xori 8,6,0x1
	andi. 0,8,0xff
	subf 10,10,3
	rlwinm 7,10,0,0xffff
	beq- 0,.L1594
	mr 3,7
.L1594:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 7,.L1596
	mr 8,4
.L1596:
	srwi 4,12,12
	cmpwi 1,4,0
	or 9,9,8
	mr 7,9
	srdi 6,11,12
	beq- 1,.L1552
	subf 0,6,3
	srdi 10,0,63
	xori 7,10,0x1
	andi. 8,7,0xff
	subf 6,6,3
	rlwinm 0,6,0,0xffff
	beq- 0,.L1598
	mr 3,0
.L1598:
	cmpwi 5,8,0
	rlwinm 3,3,0,0xffff
	li 10,0
	beq- 5,.L1600
	mr 10,4
.L1600:
	srwi 4,12,13
	cmpwi 6,4,0
	or 9,9,10
	mr 7,9
	srdi 8,11,13
	beq- 6,.L1552
	subf 7,8,3
	srdi 6,7,63
	xori 0,6,0x1
	andi. 10,0,0xff
	subf 8,8,3
	rlwinm 7,8,0,0xffff
	beq- 0,.L1602
	mr 3,7
.L1602:
	cmpwi 7,10,0
	rlwinm 3,3,0,0xffff
	li 0,0
	beq- 7,.L1604
	mr 0,4
.L1604:
	srwi 4,12,14
	cmpwi 1,4,0
	or 9,9,0
	mr 7,9
	srdi 6,11,14
	beq- 1,.L1552
	subf 10,6,3
	srdi 8,10,63
	xori 7,8,0x1
	andi. 0,7,0xff
	subf 6,6,3
	rlwinm 10,6,0,0xffff
	beq- 0,.L1606
	mr 3,10
.L1606:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 8,0
	beq- 5,.L1608
	mr 8,4
.L1608:
	cmpwi 6,12,16384
	or 12,9,8
	srdi 11,11,15
	mr 7,12
	beq- 6,.L1552
	subf 9,11,3
	srdi 4,9,63
	xori 7,4,0x1
	andi. 0,7,0xff
	subf 6,11,3
	rlwinm 10,6,0,0xffff
	beq- 0,.L1610
	mr 3,10
.L1610:
	rlwinm 3,3,0,0xffff
	or 7,12,0
	b .L1552
.L1624:
	li 12,4
	b .L1551
.L1626:
	li 12,8
	b .L1551
.L1628:
	li 12,16
	b .L1551
.L1638:
	li 12,512
	b .L1551
.L1630:
	li 12,32
	b .L1551
.L1632:
	li 12,64
	b .L1551
.L1634:
	li 12,128
	b .L1551
.L1636:
	li 12,256
	b .L1551
.L1732:
	xor 9,4,3
	cntlzw 0,9
	srwi 6,0,5
	andi. 7,6,0xff
	subf 4,4,3
	rlwinm 8,4,0,0xffff
	beq- 0,.L1547
	mr 3,8
.L1547:
	rlwinm 3,3,0,0xffff
	b .L1552
.L1640:
	li 12,1024
	b .L1551
.L1642:
	li 12,2048
	b .L1551
.L1644:
	li 12,4096
	b .L1551
.L1646:
	li 12,8192
	b .L1551
.L1648:
	li 12,16384
	b .L1551
.L1649:
	li 9,-1
	li 12,0
	rlwinm 11,9,0,16,16
	ori 12,12,0x8000
	b .L1551
.L1549:
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	li 7,1
	b .L1552
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
	cmpld 0,4,3
	li 8,32
	mtctr 8
	mr 9,3
	li 6,1
	blt+ 0,.L1734
	b .L1766
.L1738:
	sldi 4,4,1
	cmpld 5,9,4
	sldi 6,6,1
	ble- 5,.L1736
	andis. 3,4,0x8000
	bne- 0,.L1739
	sldi 4,4,1
	cmpld 6,9,4
	sldi 6,6,1
	ble- 6,.L1736
	bdz .L1737
.L1734:
	andis. 3,4,0x8000
	beq+ 0,.L1738
.L1739:
	li 3,0
.L1744:
	subfc 8,4,9
	subfe 7,7,7
	addi 11,7,1
	andi. 12,11,0xff
	subf 8,4,9
	cmpwi 1,12,0
	beq- 0,.L1741
	mr 9,8
.L1741:
	li 0,0
	beq- 1,.L1743
	mr 0,6
.L1743:
	srdi. 6,6,1
	or 3,3,0
	srdi 4,4,1
	bne+ 0,.L1744
.L1737:
	cmpdi 5,5,0
	beqlr+ 5
	mr 3,9
	blr
.L1736:
	cmpdi 7,6,0
	bne+ 7,.L1739
	b .L1737
.L1766:
	subfc 10,4,3
	subfe 3,3,3
	addi 0,3,1
	rlwinm 10,0,0,0xff
	cmpwi 1,10,0
	subf 4,4,9
	beq- 1,.L1747
	mr 9,4
.L1747:
	rlwinm 3,0,0,0xff
	b .L1737
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
	andi. 9,4,0x20
	mr 9,3
	beq- 0,.L1769
	addi 6,4,-32
	slw 5,3,6
	li 4,0
	sldi 7,5,32
	or 3,4,7
	blr
.L1769:
	cmpdi 1,4,0
	beqlr- 1
	subfic 10,4,32
	sradi 8,3,32
	srw 0,3,10
	slw 3,8,4
	or 5,0,3
	slw 4,9,4
	sldi 7,5,32
	or 3,4,7
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
	andi. 9,5,0x40
	beq- 0,.L1775
	addi 5,5,-64
	sld 3,4,5
	li 4,0
	blr
.L1775:
	cmpdi 1,5,0
	beqlr- 1
	subfic 9,5,64
	srd 0,4,9
	sld 3,3,5
	or 3,0,3
	sld 4,4,5
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
	andi. 9,4,0x20
	mr 9,3
	beq- 0,.L1780
	sradi 7,3,32
	addi 8,4,-32
	sraw 6,7,8
	srawi 4,7,31
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
.L1780:
	cmpdi 1,4,0
	beqlr- 1
	sradi 3,3,32
	subfic 10,4,32
	srw 0,9,4
	slw 5,3,10
	sraw 4,3,4
	or 6,5,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
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
	andi. 9,5,0x40
	beq- 0,.L1786
	addi 5,5,-64
	srad 4,3,5
	sradi 3,3,63
	blr
.L1786:
	cmpdi 1,5,0
	beqlr- 1
	subfic 9,5,64
	sld 0,3,9
	srd 4,4,5
	or 4,0,4
	srad 3,3,5
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
	rotlwi 9,3,24
	rlwimi 9,3,8,8,15
	rlwimi 9,3,8,24,31
	rldicl 3,9,0,32
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
	rldicl 7,3,0,32
	addis 0,7,0xffff
	srdi 4,0,63
	slwi 5,4,4
	subfic 9,5,16
	srw 3,3,9
	rlwinm 8,3,0,16,23
	cntlzw 6,8
	srwi 10,6,5
	slwi 11,10,3
	subfic 12,11,8
	srw 7,3,12
	rlwinm 0,7,0,24,27
	cntlzw 4,0
	srwi 9,4,5
	slwi 10,9,2
	subfic 3,10,4
	srw 8,7,3
	rlwinm 6,8,0,28,29
	cntlzw 12,6
	srwi 7,12,5
	slwi 0,7,1
	subfic 4,0,2
	srw 9,8,4
	andi. 6,9,0x2
	add 5,11,5
	add 11,10,5
	bne- 0,.L1793
	add 3,0,11
	subfic 10,9,2
	add 8,10,3
	extsw 3,8
	blr
.L1793:
	add 3,0,11
	li 10,0
	add 8,10,3
	extsw 3,8
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
	cntlzd 9,3
	srdi 0,9,6
	andi. 5,0,0xff
	subfic 10,3,0
	subfe 10,10,10
	and 3,10,3
	bne- 0,.L1797
	li 4,0
.L1797:
	or 4,3,4
	cntlzd 6,4
	slwi 7,5,6
	add 8,7,6
	rldicl 3,8,0,49
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
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt- 0,.L1800
	li 0,2
	bgt- 0,.L1799
	cmplw 1,3,4
	li 0,0
	blt- 1,.L1799
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L1799:
	rldicl 3,0,0,62
	blr
.L1800:
	li 0,0
	rldicl 3,0,0,62
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
	sradi 10,3,32
	sradi 9,4,32
	cmpw 0,10,9
	blt- 0,.L1806
	li 5,1
	bgt- 0,.L1805
	cmplw 1,3,4
	li 5,-1
	blt- 1,.L1805
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L1805:
	extsw 3,5
	blr
.L1806:
	li 5,-1
	extsw 3,5
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
	cmpd 0,3,5
	blt- 0,.L1811
	li 0,2
	bgt- 0,.L1810
	cmpld 1,4,6
	li 0,0
	blt- 1,.L1810
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L1810:
	rldicl 3,0,0,62
	blr
.L1811:
	li 0,0
	rldicl 3,0,0,62
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
	rlwinm 6,3,0,16,31
	cntlzw 0,6
	srwi 4,0,5
	slwi 5,4,4
	srw 9,3,5
	rlwinm 7,9,0,24,31
	cntlzw 3,7
	srwi 8,3,5
	slwi 11,8,3
	srw 10,9,11
	rlwinm 12,10,0,28,31
	cntlzw 6,12
	srwi 0,6,5
	slwi 4,0,2
	srw 9,10,4
	rlwinm 7,9,0,30,31
	cntlzw 3,7
	srwi 8,3,5
	slwi 10,8,1
	srw 12,9,10
	rlwinm 6,12,0,30,31
	not 0,6
	add 5,11,5
	srwi 9,6,1
	rlwinm 11,0,0,31,31
	subfic 3,9,2
	add 4,4,5
	neg 7,11
	add 8,10,4
	and 10,7,3
	add 12,10,8
	extsw 3,12
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
	cntlzd 9,4
	srdi 0,9,6
	andi. 5,0,0xff
	bne- 0,.L1818
	li 3,0
.L1818:
	addi 10,5,-1
	extsw 6,10
	and 4,6,4
	or 7,3,4
	addi 8,7,-1
	slwi 3,5,6
	andc 11,8,7
	popcntd 12,11
	add 9,3,12
	rldicl 3,9,0,32
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
	cmpdi 0,4,0
	bne- 0,.L1820
	cmpdi 1,3,0
	li 4,0
	bne- 1,.L1824
	rldicl 3,4,0,32
	blr
.L1820:
	addi 9,4,-1
	andc 0,9,4
	popcntd 3,0
	addi 4,3,1
	rldicl 3,4,0,32
	blr
.L1824:
	addi 5,3,-1
	andc 6,5,3
	popcntd 7,6
	addi 4,7,65
	rldicl 3,4,0,32
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
	andi. 9,4,0x20
	mr 9,3
	beq- 0,.L1826
	srdi 7,3,32
	addi 8,4,-32
	srw 6,7,8
	li 4,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
	blr
.L1826:
	cmpdi 1,4,0
	beqlr- 1
	srdi 3,3,32
	subfic 10,4,32
	srw 0,9,4
	slw 5,3,10
	srw 4,3,4
	or 6,5,0
	rldicl 11,6,0,32
	sldi 12,4,32
	or 3,12,11
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
	andi. 9,5,0x40
	beq- 0,.L1832
	addi 5,5,-64
	srd 4,3,5
	li 3,0
	blr
.L1832:
	cmpdi 1,5,0
	beqlr- 1
	subfic 9,5,64
	sld 0,3,9
	srd 4,4,5
	or 4,0,4
	srd 3,3,5
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
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,10,9
	srwi 3,3,16
	srwi 4,4,16
	mullw 0,9,3
	srwi 7,8,16
	mullw 5,10,4
	add 6,0,7
	rlwinm 11,6,0,0xffff
	srwi 12,6,16
	mullw 9,3,4
	add 10,5,11
	srwi 3,10,16
	rlwimi 8,10,16,0,31-16
	rldicl 8,8,0,32
	add 4,12,9
	add 0,4,3
	sldi 7,0,32
	or 3,8,7
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
	rlwinm 9,4,0,16,31
	rlwinm 8,3,0,16,31
	mullw 10,8,9
	srwi 7,3,16
	srwi 6,4,16
	sradi 11,4,32
	sradi 5,3,32
	mullw 12,9,7
	srwi 0,10,16
	mullw 8,8,6
	add 9,12,0
	rlwinm 12,9,0,0xffff
	srwi 0,9,16
	mullw 7,7,6
	add 8,8,12
	srwi 6,8,16
	rlwimi 10,8,16,0,31-16
	rldicl 10,10,0,32
	mullw 11,3,11
	add 3,0,7
	add 9,3,6
	sldi 12,9,32
	or 3,10,12
	sradi 0,3,32
	mullw 4,4,5
	add 5,11,0
	add 7,5,4
	rldimi 3,7,32,0
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
	rldicl 10,3,0,32
	rldicl 9,4,0,32
	mr 8,4
	mulld 4,10,9
	srdi 3,3,32
	srdi 0,8,32
	mulld 5,9,3
	srdi 7,4,32
	mulld 6,10,0
	add 11,5,7
	rldicl 12,11,0,32
	srdi 9,11,32
	mulld 3,3,0
	add 10,6,12
	srdi 8,10,32
	rldimi 4,10,32,0
	add 0,9,3
	add 3,0,8
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
	rldicl 9,6,0,32
	mulld 3,6,3
	rldicl 8,4,0,32
	mr 10,4
	srdi 7,4,32
	srdi 11,6,32
	mulld 4,8,9
	mulld 12,9,7
	srdi 0,4,32
	mulld 8,8,11
	add 9,12,0
	rldicl 12,9,0,32
	srdi 0,9,32
	mulld 7,7,11
	add 8,8,12
	srdi 11,8,32
	rldimi 4,8,32,0
	mulld 5,10,5
	add 10,0,7
	add 9,10,11
	add 6,5,9
	add 3,6,3
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
	neg 3,3
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
	subfic 4,4,0
	subfze 3,3
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
	srdi 9,3,32
	xor 3,9,3
	srwi 0,3,16
	xor 4,0,3
	srwi 5,4,8
	xor 6,5,4
	srwi 7,6,4
	xor 8,7,6
	rlwinm 10,8,0,28,31
	li 11,27030
	sraw 12,11,10
	rldicl 3,12,0,63
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
	xor 4,4,3
	sradi 10,4,32
	xor 0,10,4
	srwi 9,0,16
	xor 3,9,0
	srwi 5,3,8
	xor 6,5,3
	srwi 7,6,4
	xor 8,7,6
	rlwinm 11,8,0,28,31
	li 12,27030
	sraw 4,12,11
	rldicl 3,4,0,63
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
	srwi 9,3,16
	xor 0,9,3
	srwi 3,0,8
	xor 4,3,0
	srwi 5,4,4
	xor 6,5,4
	rlwinm 7,6,0,28,31
	li 8,27030
	sraw 10,8,7
	rldicl 3,10,0,63
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
	lis 10,0x5555
	ori 0,10,0x5555
	srdi 9,3,1
	rldimi 0,0,32,0
	and 4,9,0
	lis 5,0x3333
	subf 3,4,3
	ori 6,5,0x3333
	srdi 8,3,2
	rldimi 6,6,32,0
	and 7,8,6
	and 11,3,6
	add 12,7,11
	lis 10,0xf0f
	srdi 0,12,4
	ori 4,10,0xf0f
	add 9,0,12
	rldimi 4,4,32,0
	and 5,9,4
	srdi 3,5,32
	add 6,3,5
	srwi 8,6,16
	add 7,8,6
	srwi 11,7,8
	add 12,11,7
	rldicl 3,12,0,57
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
	lis 10,0x5555
	srwi 9,3,1
	ori 0,10,0x5555
	and 4,9,0
	subf 3,4,3
	lis 5,0x3333
	ori 7,5,0x3333
	srwi 6,3,2
	and 8,6,7
	and 11,3,7
	add 12,8,11
	srwi 10,12,4
	lis 0,0xf0f
	add 9,10,12
	ori 4,0,0xf0f
	and 3,9,4
	srwi 5,3,16
	add 6,5,3
	srwi 7,6,8
	add 8,7,6
	rldicl 3,8,0,58
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
	lis 0,0x5555
	std 24,-64(1)
	std 31,-8(1)
	sldi 12,3,63
	.cfi_offset 24, -64
	.cfi_offset 31, -8
	srdi 31,4,1
	std 30,-16(1)
	ori 24,0,0x5555
	std 28,-32(1)
	or 6,12,31
	std 26,-48(1)
	rldimi 24,24,32,0
	std 29,-24(1)
	and 8,6,24
	std 25,-56(1)
	.cfi_offset 30, -16
	.cfi_offset 28, -32
	.cfi_offset 26, -48
	.cfi_offset 29, -24
	.cfi_offset 25, -56
	srdi 30,3,1
	std 27,-40(1)
	.cfi_offset 27, -40
	subfc 9,8,4
	and 7,30,24
	subfe 28,7,3
	lis 4,0x3333
	srdi 11,9,2
	sldi 3,28,62
	ori 26,4,0x3333
	rldimi 26,26,32,0
	or 29,3,11
	and 12,29,26
	ld 29,-24(1)
	and 6,9,26
	srdi 0,28,2
	addc 24,12,6
	and 31,0,26
	and 5,28,26
	adde 30,31,5
	srdi 25,24,4
	rldimi 25,30,60,0
	lis 8,0xf0f
	addc 7,25,24
	ld 24,-64(1)
	srdi 4,30,4
	ld 25,-56(1)
	ori 28,8,0xf0f
	rldimi 28,28,32,0
	adde 11,4,30
	ld 30,-16(1)
	and 3,11,28
	and 10,7,28
	ld 28,-32(1)
	add 26,3,10
	srdi 0,26,32
	add 27,0,26
	ld 26,-48(1)
	srwi 31,27,16
	add 12,31,27
	ld 27,-40(1)
	srwi 5,12,8
	ld 31,-8(1)
	add 6,5,12
	rlwinm 3,6,0,0xff
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
	addis 9,2,.LC35@toc@ha
	fmr 0,1
	lfs 12,.LC35@toc@l(9)
	andi. 9,4,0x1
	mr 3,4
	fmr 1,12
	beq- 0,.L1850
.L1852:
	fmul 1,1,0
.L1850:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq- 0,.L1851
	andi. 10,3,0x1
	fmul 0,0,0
	srawi 10,3,1
	addze 10,10
	bne- 0,.L1852
.L1856:
	extsw 3,10
	fmul 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne- 0,.L1852
	b .L1856
.L1851:
	cmpwi 1,4,0
	bgelr+ 1
	fdiv 1,12,1
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
	addis 9,2,.LC35@toc@ha
	fmr 0,1
	lfs 12,.LC35@toc@l(9)
	andi. 9,4,0x1
	mr 3,4
	fmr 1,12
	beq- 0,.L1858
.L1860:
	fmuls 1,1,0
.L1858:
	srawi 0,3,1
	addze 0,0
	extsw. 3,0
	beq- 0,.L1859
	andi. 10,3,0x1
	fmuls 0,0,0
	srawi 10,3,1
	addze 10,10
	bne- 0,.L1860
.L1864:
	extsw 3,10
	fmuls 0,0,0
	andi. 10,3,0x1
	srawi 10,3,1
	addze 10,10
	bne- 0,.L1860
	b .L1864
.L1859:
	cmpwi 1,4,0
	bgelr+ 1
	fdivs 1,12,1
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
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt- 0,.L1867
	li 0,2
	bgt- 0,.L1866
	cmplw 1,3,4
	li 0,0
	blt- 1,.L1866
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L1866:
	rldicl 3,0,0,62
	blr
.L1867:
	li 0,0
	rldicl 3,0,0,62
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
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt- 0,.L1873
	li 5,1
	bgt- 0,.L1872
	cmplw 1,3,4
	li 5,-1
	blt- 1,.L1872
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 0,3,4
	srdi 5,0,63
.L1872:
	extsw 3,5
	blr
.L1873:
	li 5,-1
	extsw 3,5
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
	cmpld 0,3,5
	blt- 0,.L1878
	li 0,2
	bgt- 0,.L1877
	cmpld 1,4,6
	li 0,0
	blt- 1,.L1877
	mfcr 3,64
	rlwinm 3,3,6,1
	addi 0,3,1
.L1877:
	rldicl 3,0,0,62
	blr
.L1878:
	li 0,0
	rldicl 3,0,0,62
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.set	.LC0,.LC25+8
	.set	.LC1,.LC25+4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC4:
	.long	-8388609
	.align 2
.LC5:
	.long	2139095039
	.set	.LC8,.LC12
	.set	.LC9,.LC13
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC12:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC13:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.set	.LC17,.LC25
	.section	.rodata.cst4
	.align 2
.LC18:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC25:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 4
.LC26:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC31:
	.long	-1082130432
	.align 2
.LC33:
	.long	-1090519040
	.align 2
.LC35:
	.long	1065353216
	.align 2
.LC41:
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
