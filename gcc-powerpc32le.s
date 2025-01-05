	.file	"mini-libc.c"
	.machine "403"
	.section	".text"
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	cmplw 0,3,4
	ble- 0,.L2
	cmpwi 6,5,0
	add 4,4,5
	add 9,3,5
	beqlr- 6
	rldicl 11,5,0,32
	andi. 10,11,0x1
	addi 8,11,-1
	beq- 0,.L63
	mr. 11,8
	lbzu 5,-1(4)
	stbu 5,-1(9)
	beqlr- 0
.L63:
	lbz 0,-1(4)
	addi 11,11,-2
	mr 6,4
	cmpdi 7,11,0
	addi 10,9,-1
	stb 0,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 12,-2(6)
	stb 12,-1(10)
	beqlr- 7
	lbz 0,-1(4)
	addi 11,11,-2
	mr 6,4
	cmpdi 7,11,0
	addi 10,9,-1
	stb 0,-1(9)
	addi 4,4,-2
	addi 9,9,-2
	lbz 12,-2(6)
	stb 12,-1(10)
	bne+ 7,.L63
	blr
.L2:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmplwi 5,9,6
	ble- 5,.L5
	or 0,4,3
	andi. 9,0,0x7
	bne- 0,.L5
	addi 6,4,1
	subf 7,6,3
	subfic 9,7,6
	subfe 8,8,8
	neg 10,8
	rlwinm 11,10,0,0xff
	cmpwi 6,11,0
	beq- 6,.L5
	rldicl 9,5,61,35
	addi 8,4,-8
	andi. 10,9,0x1
	addi 12,9,-1
	addi 10,3,-8
	beq- 0,.L65
	mr. 9,12
	ld 0,0(4)
	mr 8,4
	mr 10,3
	std 0,0(3)
	beq- 0,.L62
.L65:
	ld 11,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 7,9,0
	addi 7,10,8
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 12,16(6)
	std 12,8(7)
	bne+ 7,.L65
.L62:
	andi. 9,5,0x7
	rlwinm 9,5,0,0,28
	add 8,4,9
	add 10,3,9
	subf 5,9,5
	beqlr- 0
	cmplwi 1,5,1
	lbzx 4,4,9
	stbx 4,3,9
	beqlr- 1
	cmplwi 5,5,2
	lbz 0,1(8)
	stb 0,1(10)
	beqlr- 5
	cmplwi 6,5,3
	lbz 11,2(8)
	stb 11,2(10)
	beqlr- 6
	cmplwi 7,5,4
	lbz 6,3(8)
	stb 6,3(10)
	beqlr- 7
	cmplwi 0,5,5
	lbz 7,4(8)
	stb 7,4(10)
	beqlr- 0
	cmplwi 1,5,6
	lbz 12,5(8)
	stb 12,5(10)
	beqlr- 1
	lbz 9,6(8)
	stb 9,6(10)
	blr
.L5:
	rldicl 5,5,0,32
	addi 11,4,-1
	andi. 10,5,0x1
	addi 8,5,-1
	addi 10,3,-1
	beq- 0,.L64
	mr. 5,8
	mr 11,4
	lbz 4,0(4)
	mr 10,3
	stb 4,0(3)
	beqlr- 0
.L64:
	lbz 0,1(11)
	addi 5,5,-2
	mr 6,11
	cmpdi 5,5,0
	mr 12,10
	stb 0,1(10)
	addi 11,11,2
	addi 10,10,2
	lbz 7,2(6)
	stb 7,2(12)
	beqlr- 5
	lbz 0,1(11)
	addi 5,5,-2
	mr 6,11
	cmpdi 5,5,0
	mr 12,10
	stb 0,1(10)
	addi 11,11,2
	addi 10,10,2
	lbz 7,2(6)
	stb 7,2(12)
	bne+ 5,.L64
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
	cmpwi 0,6,0
	rlwinm 5,5,0,0xff
	beq- 0,.L71
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L92
.L81:
	srwi 0,6,1
	mtctr 0
	b .L72
.L74:
	lbz 12,1(6)
	rlwinm 8,12,0,0xff
	stbu 12,1(3)
	cmpw 7,8,5
	beq- 7,.L89
	addi 3,3,1
	bdz .L71
.L72:
	lbz 4,1(9)
	addi 6,9,1
	addi 9,6,1
	rlwinm 11,4,0,0xff
	stb 4,0(3)
	cmpw 6,11,5
	bne+ 6,.L74
.L89:
	addi 3,3,1
	blr
.L92:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 1,7,5
	beq- 1,.L89
	cmpwi 5,8,0
	addi 3,3,1
	bne+ 5,.L81
.L71:
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
	beq- 0,.L97
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L114
.L100:
	srwi 0,5,1
	mtctr 0
.L94:
	lbz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lbzu 6,1(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,1
	bdnz .L94
.L97:
	li 3,0
	blr
.L114:
	lbz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,1
	bne+ 5,.L100
	b .L97
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
	beq- 0,.L120
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L135
.L123:
	srwi 0,5,1
	mtctr 0
	b .L116
.L118:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,5,1
	cmpw 7,10,9
	bne- 7,.L132
	bdz .L120
.L116:
	lbz 10,0(3)
	addi 7,3,1
	addi 5,4,1
	lbz 9,0(4)
	cmpw 6,10,9
	beq+ 6,.L118
.L132:
	subf 3,9,10
	blr
.L135:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 1,10,9
	bne- 1,.L132
	cmpwi 5,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 5,.L123
.L120:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	beq- 0,.L137
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L137:
	mr 3,31
	lwz 31,12(1)
	addi 1,1,16
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
	beq- 0,.L147
	mr 3,11
	addi 11,11,-1
	lbz 8,0(3)
	cmpw 1,8,4
	beqlr- 1
.L147:
	srwi 3,10,1
	addi 0,3,1
	mtctr 0
	bdz .L155
.L145:
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
	bdnz .L145
.L155:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	beq- 0,.L159
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L159:
	mr 3,31
	lwz 31,12(1)
	addi 1,1,16
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
.L163:
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	beqlr- 1
	lbzu 0,1(4)
	rlwinm 5,0,0,0xff
	stbu 0,1(3)
	cmpwi 1,5,0
	bne+ 1,.L163
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
.L174:
	lbzu 9,1(3)
	cmpwi 5,9,0
	beqlr- 5
	cmpw 1,9,4
	bne+ 1,.L174
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
.L177:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L177
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
	beq+ 0,.L182
	b .L181
.L183:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 5,9,10
	bne- 5,.L181
.L182:
	cmpwi 1,9,0
	bne+ 1,.L183
.L181:
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
	beq- 0,.L191
	mr 4,3
.L190:
	lbzu 10,1(4)
	cmpwi 1,10,0
	bne+ 1,.L190
	subf 3,3,4
	blr
.L191:
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
	beq- 0,.L201
	lbz 10,0(3)
	addi 5,5,-1
	add 0,3,5
	cmpwi 1,10,0
	subf 6,3,0
	addi 9,6,1
	mtctr 9
	bne+ 1,.L197
	b .L206
.L208:
	bdz .L196
	bne- 7,.L196
	lbzu 10,1(3)
	cmpwi 6,10,0
	beq- 6,.L207
	mr 4,8
.L197:
	lbz 7,0(4)
	addi 8,4,1
	cmpwi 5,7,0
	cmpw 7,7,10
	bne+ 5,.L208
.L196:
	subf 3,7,10
	blr
.L201:
	li 3,0
	blr
.L207:
	lbz 7,1(4)
	subf 3,7,10
	blr
.L206:
	lbz 7,0(4)
	b .L196
	.cfi_endproc
.LFE12:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	cmpwi 0,5,1
	blelr- 0
	rldicl 5,5,63,33
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L218
	mr. 5,9
	lbz 10,1(3)
	addi 4,4,2
	lbz 0,0(3)
	addi 3,3,2
	stb 10,-2(4)
	stb 0,-1(4)
	beqlr- 0
.L218:
	addi 5,5,-2
	lbz 6,1(3)
	mr 12,4
	cmpdi 1,5,0
	lbz 11,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 11,-2(4)
	stb 6,-4(4)
	stb 7,-3(4)
	stb 8,3(12)
	beqlr- 1
	addi 5,5,-2
	lbz 6,1(3)
	mr 12,4
	cmpdi 1,5,0
	lbz 11,3(3)
	addi 4,4,4
	lbz 7,0(3)
	addi 3,3,4
	lbz 8,-2(3)
	stb 11,-2(4)
	stb 6,-4(4)
	stb 7,-3(4)
	stb 8,3(12)
	bne+ 1,.L218
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
	ori 3,3,0x20
	addi 0,3,-97
	subfic 3,0,25
	subfe 4,4,4
	addi 3,4,1
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
	subfic 3,3,127
	subfe 3,3,3
	addi 3,3,1
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
	beq- 0,.L224
	xori 3,3,0x9
	cntlzw 0,3
	srwi 3,0,5
	blr
.L224:
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
	ble- 0,.L227
	xori 3,3,0x7f
	cntlzw 0,3
	srwi 3,0,5
	blr
.L227:
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
	subfic 3,3,9
	subfe 4,4,4
	addi 3,4,1
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
	subfic 3,3,93
	subfe 4,4,4
	addi 3,4,1
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
	subfic 3,3,25
	subfe 4,4,4
	addi 3,4,1
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
	subfic 3,3,94
	subfe 4,4,4
	addi 3,4,1
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
	beq- 0,.L234
	addi 3,3,-9
	subfic 3,3,4
	subfe 4,4,4
	addi 3,4,1
	blr
.L234:
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
	subfic 3,3,25
	subfe 4,4,4
	addi 3,4,1
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
	ble- 0,.L238
	addi 10,3,-127
	li 3,1
	cmplwi 1,10,32
	blelr- 1
	addi 0,9,-8232
	cmplwi 5,0,1
	blelr- 5
	addis 3,9,0xffff
	addi 4,3,7
	subfic 9,4,2
	subfe 5,5,5
	addi 3,5,1
	blr
.L238:
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
	subfic 3,3,9
	subfe 4,4,4
	addi 3,4,1
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
	ble- 0,.L249
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
	rlwinm 3,9,0,16,30
	xori 7,3,0xfffe
	addic 11,7,-1
	subfe 3,11,7
	blr
.L249:
	addi 12,3,1
	rlwinm 9,12,0,25,31
	subfic 9,9,32
	subfe 10,10,10
	neg 3,10
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
	ble- 0,.L252
	ori 3,3,0x20
	addi 0,3,-97
	subfic 3,0,5
	subfe 4,4,4
	addi 3,4,1
	blr
.L252:
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
	rldicl 3,3,0,32
	sldi 4,4,32
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	or 9,3,4
	rldicl 5,5,0,32
	sldi 6,6,32
	srdi 4,9,32
	or 10,5,6
	mflr 0
	std 9,8(1)
	mr 6,4
	mr 5,9
	stw 0,36(1)
	.cfi_offset 65, 4
	mr 3,9
	std 10,16(1)
	std 10,24(1)
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L257
	ld 3,24(1)
	srdi 4,3,32
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 1,3,0
	bne- 1,.L258
	ld 7,16(1)
	ld 8,8(1)
	mr 5,7
	srdi 6,7,32
	mr 3,8
	srdi 4,8,32
	bl __gtdf2
	cmpwi 5,3,0
	bgt- 5,.L263
	li 3,0
.L254:
	lwz 0,36(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
.L263:
	.cfi_restore_state
	ld 11,16(1)
	ld 12,8(1)
	mr 5,11
	srdi 6,11,32
	mr 3,12
	srdi 4,12,32
	bl __subdf3
	lwz 0,36(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
.L257:
	.cfi_restore_state
	ld 3,8(1)
	b .L254
.L258:
	ld 3,16(1)
	b .L254
	.cfi_endproc
.LFE29:
	.size	fdim,.-fdim
	.align 2
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,4
	mr 4,3
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L267
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 1,3,0
	bne- 1,.L268
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 5,3,0
	bgt- 5,.L273
	li 3,0
.L264:
	lwz 4,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 4
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L273:
	.cfi_restore_state
	mr 4,30
	mr 3,31
	bl __subsf3
	lwz 4,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 4
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L267:
	.cfi_restore_state
	mr 3,31
	b .L264
.L268:
	mr 3,30
	b .L264
	.cfi_endproc
.LFE30:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	rldicl 5,5,0,32
	sldi 6,6,32
	or 10,5,6
	rldicl 3,3,0,32
	sldi 4,4,32
	mflr 0
	std 10,8(1)
	or 9,3,4
	srdi 4,9,32
	mr 5,9
	stw 0,52(1)
	.cfi_offset 65, 4
	mr 6,4
	mr 3,9
	std 9,24(1)
	ld 7,8(1)
	std 9,32(1)
	std 7,16(1)
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L280
	ld 5,8(1)
	lwz 3,8(1)
	srdi 4,5,32
	mr 6,4
	bl __unorddf2
	cmpwi 1,3,0
	bne- 1,.L281
	ld 8,32(1)
	ld 12,8(1)
	srdi 11,8,63
	srdi 0,12,63
	cmpw 5,11,0
	beq- 5,.L276
	cmpwi 7,11,0
	ld 3,16(1)
	beq- 7,.L281
.L274:
	lwz 9,52(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 9
	.cfi_restore 65
	blr
.L276:
	.cfi_restore_state
	ld 3,16(1)
	ld 4,24(1)
	mr 5,3
	srdi 6,3,32
	mr 3,4
	srdi 4,4,32
	bl __ltdf2
	cmpwi 6,3,0
	ld 3,24(1)
	bge- 6,.L274
.L280:
	lwz 9,52(1)
	ld 3,16(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 9
	.cfi_restore 65
	blr
.L281:
	.cfi_restore_state
	lwz 9,52(1)
	ld 3,24(1)
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mtlr 9
	.cfi_restore 65
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,4
	mr 4,3
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L291
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 1,3,0
	bne- 1,.L292
	rlwinm 3,30,0,0,0
	rlwinm 4,31,0,0,0
	cmpw 5,3,4
	beq- 5,.L287
	cmpwi 7,3,0
	mr 3,31
	beq- 7,.L292
.L285:
	lwz 5,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 5
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L287:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 6,3,0
	mr 3,30
	bge- 6,.L285
.L291:
	lwz 5,20(1)
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 5
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L292:
	.cfi_restore_state
	lwz 5,20(1)
	mr 3,30
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 5
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
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
	stwu 1,-96(1)
	.cfi_def_cfa_offset 96
	rldimi 3,4,32,0
	rldicl 5,5,0,32
	rldicr 4,4,0,31
	rldicl 9,9,0,32
	or 11,4,5
	mflr 0
	stw 30,88(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,7
	rldicr 7,8,0,31
	rldimi 11,6,32,0
	rldimi 30,8,32,0
	stw 0,100(1)
	or 8,7,9
	mr 5,11
	stw 28,80(1)
	rldimi 8,10,32,0
	srdi 6,11,32
	stw 29,84(1)
	srdi 4,3,32
	stw 31,92(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	std 3,64(1)
	std 11,72(1)
	std 3,16(1)
	std 11,24(1)
	std 30,32(1)
	std 8,40(1)
	std 30,48(1)
	std 8,56(1)
	bl __gcc_qtod
	mr 5,3
	srdi 6,3,32
	srdi 4,3,32
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L304
	ld 10,32(1)
	ld 6,40(1)
	srdi 4,10,32
	mr 3,10
	mr 5,6
	srdi 6,6,32
	bl __gcc_qtod
	mr 5,3
	srdi 6,3,32
	srdi 4,3,32
	bl __unorddf2
	cmpwi 1,3,0
	bne- 1,.L303
	ld 28,72(1)
	ld 31,56(1)
	srdi 0,28,63
	srdi 5,31,63
	cmpw 5,0,5
	bne- 5,.L306
	ld 4,32(1)
	ld 11,40(1)
	ld 30,16(1)
	mr 7,4
	srdi 8,4,32
	ld 29,24(1)
	mr 9,11
	srdi 10,11,32
	mr 3,30
	srdi 4,30,32
	mr 5,29
	srdi 6,29,32
	bl __gcc_qlt
	cmpwi 6,3,0
	blt- 6,.L304
.L303:
	lwz 9,100(1)
	ld 3,16(1)
	ld 4,24(1)
	mtlr 9
	.cfi_remember_state
	.cfi_restore 65
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L306:
	.cfi_restore_state
	cmpwi 7,0,0
	beq- 7,.L303
.L304:
	lwz 9,100(1)
	ld 3,32(1)
	ld 4,40(1)
	mtlr 9
	.cfi_restore 65
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	rldicl 5,5,0,32
	sldi 6,6,32
	or 10,5,6
	rldicl 3,3,0,32
	sldi 4,4,32
	mflr 0
	std 10,8(1)
	or 9,3,4
	srdi 4,9,32
	mr 5,9
	stw 0,52(1)
	.cfi_offset 65, 4
	mr 6,4
	mr 3,9
	std 9,24(1)
	ld 7,8(1)
	std 9,32(1)
	std 7,16(1)
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L313
	ld 5,8(1)
	lwz 3,8(1)
	srdi 4,5,32
	mr 6,4
	bl __unorddf2
	cmpwi 1,3,0
	bne- 1,.L314
	ld 8,32(1)
	ld 12,8(1)
	srdi 11,8,63
	srdi 0,12,63
	cmpw 5,11,0
	beq- 5,.L309
	cmpwi 7,11,0
	ld 3,24(1)
	beq- 7,.L313
.L307:
	lwz 9,52(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 9
	.cfi_restore 65
	blr
.L309:
	.cfi_restore_state
	ld 3,16(1)
	ld 4,24(1)
	mr 5,3
	srdi 6,3,32
	mr 3,4
	srdi 4,4,32
	bl __ltdf2
	cmpwi 6,3,0
	ld 3,16(1)
	bge- 6,.L307
.L314:
	lwz 9,52(1)
	ld 3,24(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 9
	.cfi_restore 65
	blr
.L313:
	.cfi_restore_state
	lwz 9,52(1)
	ld 3,16(1)
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mtlr 9
	.cfi_restore 65
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,4
	mr 4,3
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L324
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 1,3,0
	bne- 1,.L325
	rlwinm 3,30,0,0,0
	rlwinm 4,31,0,0,0
	cmpw 5,3,4
	beq- 5,.L320
	cmpwi 7,3,0
	mr 3,30
	beq- 7,.L324
.L318:
	lwz 5,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 5
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L320:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 6,3,0
	mr 3,31
	bge- 6,.L318
.L325:
	lwz 5,20(1)
	mr 3,30
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 5
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L324:
	.cfi_restore_state
	lwz 5,20(1)
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 5
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
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
	stwu 1,-96(1)
	.cfi_def_cfa_offset 96
	rldimi 3,4,32,0
	rldicl 5,5,0,32
	rldicr 4,4,0,31
	rldicl 9,9,0,32
	or 11,4,5
	mflr 0
	stw 30,88(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,7
	rldicr 7,8,0,31
	rldimi 11,6,32,0
	rldimi 30,8,32,0
	stw 0,100(1)
	or 8,7,9
	mr 5,11
	stw 28,80(1)
	rldimi 8,10,32,0
	srdi 6,11,32
	stw 29,84(1)
	srdi 4,3,32
	stw 31,92(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	std 3,64(1)
	std 11,72(1)
	std 3,32(1)
	std 11,40(1)
	std 30,16(1)
	std 8,24(1)
	std 30,48(1)
	std 8,56(1)
	bl __gcc_qtod
	mr 5,3
	srdi 6,3,32
	srdi 4,3,32
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L335
	ld 10,16(1)
	ld 6,24(1)
	srdi 4,10,32
	mr 3,10
	mr 5,6
	srdi 6,6,32
	bl __gcc_qtod
	mr 5,3
	srdi 6,3,32
	srdi 4,3,32
	bl __unorddf2
	cmpwi 1,3,0
	bne- 1,.L337
	ld 28,72(1)
	ld 31,56(1)
	srdi 0,28,63
	srdi 5,31,63
	cmpw 5,0,5
	bne- 5,.L339
	ld 4,16(1)
	ld 11,24(1)
	ld 30,32(1)
	mr 7,4
	srdi 8,4,32
	ld 29,40(1)
	mr 9,11
	srdi 10,11,32
	mr 3,30
	srdi 4,30,32
	mr 5,29
	srdi 6,29,32
	bl __gcc_qlt
	cmpwi 6,3,0
	bge- 6,.L335
.L337:
	lwz 9,100(1)
	ld 3,32(1)
	ld 4,40(1)
	mtlr 9
	.cfi_remember_state
	.cfi_restore 65
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L339:
	.cfi_restore_state
	cmpwi 7,0,0
	bne- 7,.L337
.L335:
	lwz 9,100(1)
	ld 3,16(1)
	ld 4,24(1)
	mtlr 9
	.cfi_restore 65
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
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
	beq- 0,.L343
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L342:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L342
	li 5,0
	stb 5,0(10)
	blr
.L343:
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
	beq- 0,.L353
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L353:
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
	beq- 0,.L355
	lwz 10,4(3)
	stw 10,4(9)
.L355:
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 28,32(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	lwz 28,0(5)
	stw 23,12(1)
	.cfi_offset 23, -36
	mr 23,4
	cmpwi 0,28,0
	stw 24,16(1)
	.cfi_offset 24, -32
	mr 24,5
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,3
	stw 29,36(1)
	.cfi_offset 29, -12
	mr 29,6
	stw 0,52(1)
	stw 26,24(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	beq- 0,.L364
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,40(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L366
.L381:
	beq- 7,.L380
.L366:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L381
	lwz 25,20(1)
	.cfi_restore 25
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L363:
	lwz 5,52(1)
	mr 3,26
	lwz 23,12(1)
	lwz 24,16(1)
	mtlr 5
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	addi 1,1,48
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L380:
	.cfi_def_cfa_offset 48
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
	lwz 25,20(1)
	.cfi_restore 25
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L364:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L363
	mr 5,29
	mr 4,27
	mr 3,26
	bl memmove
	lwz 5,52(1)
	mr 3,26
	lwz 23,12(1)
	lwz 24,16(1)
	mtlr 5
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	addi 1,1,48
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
	beq- 0,.L383
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
	b .L385
.L396:
	beq- 7,.L395
.L385:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L396
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
.L395:
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
.L383:
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
.L405:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L399
	ble- 7,.L399
	cmpwi 1,10,43
	beq- 1,.L400
	cmpwi 6,10,45
	bne- 6,.L420
	lbz 10,1(3)
	addi 8,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L410
	li 5,1
.L403:
	li 3,0
.L407:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 6,3,2
	add 11,6,3
	addi 12,10,-48
	slwi 9,11,1
	cmplwi 1,12,9
	subf 3,7,9
	ble+ 1,.L407
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,7
	blr
.L399:
	addi 3,3,1
	b .L405
.L420:
	addi 4,10,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	ble+ 7,.L403
.L410:
	li 3,0
	blr
.L400:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L403
	b .L410
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L426:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L422
	ble- 7,.L422
	cmpwi 1,10,43
	beq- 1,.L423
	cmpwi 6,10,45
	beq- 6,.L424
	addi 4,10,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	bgt- 7,.L433
.L427:
	li 3,0
.L430:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 6,3,2
	add 11,6,3
	addi 12,10,-48
	slwi 9,11,1
	cmplwi 1,12,9
	subf 3,7,9
	ble+ 1,.L430
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,7
	blr
.L422:
	addi 3,3,1
	b .L426
.L424:
	lbz 10,1(3)
	addi 8,3,1
	li 5,1
	addi 3,10,-48
	cmplwi 0,3,9
	ble+ 0,.L427
.L433:
	li 3,0
	blr
.L423:
	lbz 10,1(3)
	addi 8,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L433
	li 5,0
	b .L427
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L450:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L444
	ble- 7,.L444
	cmpwi 1,10,43
	beq- 1,.L445
	cmpwi 6,10,45
	bne- 6,.L465
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L455
	li 6,1
.L448:
	li 7,0
.L452:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 11,7,2
	add 12,11,7
	extsw 0,8
	addi 4,10,-48
	sldi 9,12,1
	cmplwi 1,4,9
	subf 7,0,9
	ble+ 1,.L452
	cmpwi 5,6,0
	bne- 5,.L443
	subf 7,9,0
.L443:
	srdi 4,7,32
	mr 3,7
	blr
.L444:
	addi 3,3,1
	b .L450
.L465:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L448
.L455:
	li 7,0
	b .L443
.L445:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L448
	li 7,0
	b .L443
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
	beq- 0,.L467
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
	b .L470
.L479:
	beq- 1,.L477
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L478
.L470:
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
	bge+ 1,.L479
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L470
.L478:
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
.L467:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L477:
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
	beq- 0,.L485
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L493:
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
	beq- 7,.L497
.L499:
	cmpwi 5,29,0
	ble- 7,.L483
	add 28,30,27
	bne+ 0,.L493
.L498:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L485:
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
.L483:
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
	beq- 5,.L498
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
	bne+ 7,.L499
.L497:
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
	beq- 0,.L511
.L508:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L508
.L511:
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
	beq+ 0,.L518
	b .L517
.L519:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L517
.L518:
	cmpwi 7,9,0
	bne+ 7,.L519
.L517:
	li 3,-1
	bltlr- 0
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 0,3,8
	xori 3,0,0x1
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
.L523:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L523
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
	beq- 0,.L529
	mr 4,3
.L528:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L528
	subf 3,3,4
	srawi 3,3,2
	blr
.L529:
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
	bne+ 0,.L532
	b .L540
.L543:
	beq- 7,.L534
	addi 3,3,4
	addi 4,4,4
	bdz .L540
.L532:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L543
.L534:
	lwz 0,0(3)
	lwz 4,0(4)
	cmpw 5,0,4
	blt- 5,.L544
	srawi 8,4,31
	srwi 3,0,31
	subfc 9,0,4
	adde 5,3,8
	xori 3,5,0x1
	blr
.L544:
	li 3,-1
	blr
.L540:
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
	beq- 0,.L549
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L566
.L552:
	srwi 0,5,1
	mtctr 0
.L546:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L546
.L549:
	li 3,0
	blr
.L566:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L552
	b .L549
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
	beq- 0,.L573
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L588
.L576:
	srwi 0,5,1
	mtctr 0
	b .L568
.L570:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,5,4
	cmpw 1,9,10
	bne- 1,.L585
	bdz .L573
.L568:
	lwz 9,0(3)
	addi 7,3,4
	addi 5,4,4
	lwz 10,0(4)
	cmpw 1,9,10
	beq+ 1,.L570
.L585:
	blt- 1,.L589
	srawi 4,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 6,3,4
	xori 3,6,0x1
	blr
.L588:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne- 1,.L585
	cmpwi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L576
.L573:
	li 3,0
	blr
.L589:
	li 3,-1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	beq- 0,.L591
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L591:
	mr 3,31
	lwz 31,12(1)
	addi 1,1,16
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
	cmplw 0,3,4
	beqlr- 0
	slwi 9,5,2
	subf 10,4,3
	cmplw 1,10,9
	bge- 1,.L627
	cmpwi 7,5,0
	beqlr- 7
	rldicl 11,5,0,32
	add 7,4,9
	andi. 10,11,0x1
	add 4,3,9
	addi 10,11,-1
	beq- 0,.L621
	mr. 11,10
	lwzu 8,-4(7)
	stwu 8,-4(4)
	beqlr- 0
.L621:
	lwz 5,-4(7)
	addi 11,11,-2
	mr 12,7
	cmpdi 1,11,0
	mr 6,4
	stw 5,-4(4)
	addi 7,7,-8
	addi 4,4,-8
	lwz 0,-8(12)
	stw 0,-8(6)
	beqlr- 1
	lwz 5,-4(7)
	addi 11,11,-2
	mr 12,7
	cmpdi 1,11,0
	mr 6,4
	stw 5,-4(4)
	addi 7,7,-8
	addi 4,4,-8
	lwz 0,-8(12)
	stw 0,-8(6)
	bne+ 1,.L621
	blr
.L627:
	cmpwi 5,5,0
	addi 11,4,-4
	rldicl 5,5,0,32
	addi 12,3,-4
	beqlr- 5
	andi. 8,5,0x1
	addi 8,5,-1
	beq- 0,.L622
	mr. 5,8
	lwz 0,0(4)
	mr 11,4
	mr 12,3
	stw 0,0(3)
	beqlr- 0
.L622:
	lwz 6,4(11)
	addi 5,5,-2
	mr 7,11
	cmpdi 6,5,0
	mr 4,12
	stw 6,4(12)
	addi 11,11,8
	addi 12,12,8
	lwz 9,8(7)
	stw 9,8(4)
	beqlr- 6
	lwz 6,4(11)
	addi 5,5,-2
	mr 7,11
	cmpdi 6,5,0
	mr 4,12
	stw 6,4(12)
	addi 11,11,8
	addi 12,12,8
	lwz 9,8(7)
	stw 9,8(4)
	bne+ 6,.L622
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
	cmpwi 0,5,0
	addi 11,5,-1
	beqlr- 0
	cmplwi 1,11,5
	rldicl 9,3,62,63
	ble- 1,.L634
	cmpwi 5,9,0
	mr 7,3
	beq- 5,.L631
	stw 4,0(3)
	addi 7,3,4
	addi 11,5,-2
.L631:
	subf 5,9,5
	slwi 6,9,2
	rldicl 8,5,63,33
	addi 12,6,-8
	andi. 0,8,0x3
	sldi 6,4,32
	rldicl 10,4,0,32
	add 9,3,12
	or 6,10,6
	addi 12,8,-1
	beq- 0,.L675
	cmpdi 6,0,1
	beq- 6,.L660
	cmpdi 7,0,2
	beq- 7,.L661
	stdu 6,8(9)
	mr 8,12
.L661:
	stdu 6,8(9)
	addi 8,8,-1
.L660:
	addi 8,8,-1
	stdu 6,8(9)
	cmpdi 1,8,0
	beq- 1,.L674
.L675:
	addi 8,8,-4
	std 6,8(9)
	addi 9,9,32
	cmpdi 5,8,0
	std 6,-16(9)
	std 6,-8(9)
	std 6,0(9)
	bne+ 5,.L675
.L674:
	andi. 9,5,0x1
	beqlr- 0
	rlwinm 5,5,0,0,30
	slwi 0,5,2
	subf 11,5,11
	add 5,7,0
.L630:
	cmpwi 6,11,0
	stw 4,0(5)
	beqlr- 6
	cmplwi 7,11,1
	stw 4,4(5)
	beqlr- 7
	cmplwi 1,11,2
	stw 4,8(5)
	beqlr- 1
	cmplwi 5,11,3
	stw 4,12(5)
	beqlr- 5
	cmplwi 0,11,4
	stw 4,16(5)
	beqlr- 0
	stw 4,20(5)
	blr
.L634:
	mr 5,3
	b .L630
	.cfi_endproc
.LFE66:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	cmplw 0,3,4
	bge- 0,.L678
	cmpwi 6,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 6
	rldicl 12,5,0,32
	andi. 9,12,0x1
	addi 7,12,-1
	beq- 0,.L739
	mr. 12,7
	lbzu 8,-1(3)
	stbu 8,-1(4)
	beqlr- 0
.L739:
	lbz 5,-1(3)
	addi 12,12,-2
	mr 10,3
	cmpdi 7,12,0
	addi 9,4,-1
	stb 5,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 11,-2(10)
	stb 11,-1(9)
	beqlr- 7
	lbz 5,-1(3)
	addi 12,12,-2
	mr 10,3
	cmpdi 7,12,0
	addi 9,4,-1
	stb 5,-1(4)
	addi 3,3,-2
	addi 4,4,-2
	lbz 11,-2(10)
	stb 11,-1(9)
	bne+ 7,.L739
	blr
.L678:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmplwi 5,9,6
	ble- 5,.L681
	or 0,4,3
	andi. 9,0,0x7
	bne- 0,.L681
	addi 6,3,1
	subf 7,6,4
	subfic 9,7,6
	subfe 8,8,8
	neg 10,8
	rlwinm 11,10,0,0xff
	cmpwi 6,11,0
	beq- 6,.L681
	rldicl 9,5,61,35
	addi 8,3,-8
	andi. 10,9,0x1
	addi 12,9,-1
	addi 10,4,-8
	beq- 0,.L741
	mr. 9,12
	ld 0,0(3)
	mr 8,3
	mr 10,4
	std 0,0(4)
	beq- 0,.L738
.L741:
	ld 11,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 7,9,0
	addi 7,10,8
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 12,16(6)
	std 12,8(7)
	bne+ 7,.L741
.L738:
	andi. 9,5,0x7
	rlwinm 9,5,0,0,28
	add 10,4,9
	add 8,3,9
	subf 5,9,5
	beqlr- 0
	cmplwi 1,5,1
	lbzx 3,3,9
	stbx 3,4,9
	beqlr- 1
	cmplwi 5,5,2
	lbz 4,1(8)
	stb 4,1(10)
	beqlr- 5
	cmplwi 6,5,3
	lbz 0,2(8)
	stb 0,2(10)
	beqlr- 6
	cmplwi 7,5,4
	lbz 11,3(8)
	stb 11,3(10)
	beqlr- 7
	cmplwi 0,5,5
	lbz 6,4(8)
	stb 6,4(10)
	beqlr- 0
	cmplwi 1,5,6
	lbz 7,5(8)
	stb 7,5(10)
	beqlr- 1
	lbz 12,6(8)
	stb 12,6(10)
	blr
.L681:
	rldicl 5,5,0,32
	addi 10,3,-1
	andi. 9,5,0x1
	addi 8,5,-1
	addi 9,4,-1
	beq- 0,.L740
	mr. 5,8
	mr 10,3
	lbz 3,0(3)
	mr 9,4
	stb 3,0(4)
	beqlr- 0
.L740:
	lbz 4,1(10)
	addi 5,5,-2
	mr 11,10
	cmpdi 5,5,0
	mr 6,9
	stb 4,1(9)
	addi 10,10,2
	addi 9,9,2
	lbz 0,2(11)
	stb 0,2(6)
	beqlr- 5
	lbz 4,1(10)
	addi 5,5,-2
	mr 11,10
	cmpdi 5,5,0
	mr 6,9
	stb 4,1(9)
	addi 10,10,2
	addi 9,9,2
	lbz 0,2(11)
	stb 0,2(6)
	bne+ 5,.L740
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
	b .L761
.L759:
	addi 9,9,1
	bne- 0,.L765
	bdz .L769
.L761:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L759
.L765:
	mr 3,9
	blr
.L769:
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
	beq- 0,.L773
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L772:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L772
	blr
.L773:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lis 4,0xff7f
	mflr 0
	ori 4,4,0xffff
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __ltsf2
	cmpwi 0,3,0
	blt- 0,.L780
	lis 5,0x7f7f
	mr 3,31
	ori 4,5,0xffff
	bl __gtsf2
	lwz 6,20(1)
	addi 9,3,-1
	nor 3,9,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	srwi 3,3,31
	mtlr 6
	.cfi_restore 65
	blr
.L780:
	.cfi_restore_state
	lwz 6,20(1)
	li 3,1
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	mtlr 6
	.cfi_restore 65
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	sldi 4,4,32
	rldicl 3,3,0,32
	or 9,3,4
	srdi 10,4,32
	lis 6,0xffef
	mflr 0
	std 9,8(1)
	ori 6,6,0xffff
	li 5,-1
	std 10,16(1)
	stw 0,36(1)
	.cfi_offset 65, 4
	lwz 3,8(1)
	lwz 4,16(1)
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L785
	lwz 3,8(1)
	lis 5,0x7fef
	lwz 4,16(1)
	ori 6,5,0xffff
	li 5,-1
	bl __gtdf2
	lwz 11,36(1)
	addi 7,3,-1
	addi 1,1,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	nor 8,7,3
	srwi 3,8,31
	mtlr 11
	.cfi_restore 65
	blr
.L785:
	.cfi_restore_state
	lwz 11,36(1)
	li 3,1
	addi 1,1,32
	.cfi_def_cfa_offset 0
	mtlr 11
	.cfi_restore 65
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	rldicl 5,5,0,32
	lis 8,.LC0@ha
	la 7,.LC0@l(8)
	mflr 0
	stw 30,40(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,3
	rldicr 3,10,0,31
	mr 9,30
	stw 28,32(1)
	mr 30,9
	.cfi_offset 28, -16
	ld 28,0(7)
	rldimi 30,4,32,0
	or 4,3,5
	stw 29,36(1)
	rldimi 4,6,32,0
	.cfi_offset 29, -12
	ld 29,8(7)
	srdi 8,28,32
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	mr 7,28
	std 4,24(1)
	mr 9,29
	mr 3,30
	srdi 4,30,32
	mr 5,31
	stw 0,52(1)
	.cfi_offset 65, 4
	srdi 6,31,32
	srdi 10,29,32
	std 30,16(1)
	bl __gcc_qlt
	cmpwi 0,3,0
	blt- 0,.L790
	lis 6,.LC1@ha
	ld 12,16(1)
	la 11,.LC1@l(6)
	ld 0,24(1)
	ld 10,0(11)
	mr 3,12
	srdi 4,12,32
	ld 5,8(11)
	srdi 6,0,32
	srdi 8,10,32
	mr 7,10
	mr 9,5
	srdi 10,5,32
	mr 5,0
	bl __gcc_qgt
	lwz 8,52(1)
	addi 9,3,-1
	nor 30,9,3
	lwz 28,32(1)
	srwi 3,30,31
	lwz 29,36(1)
	mtlr 8
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L790:
	.cfi_restore_state
	lwz 8,52(1)
	li 3,1
	lwz 28,32(1)
	lwz 29,36(1)
	mtlr 8
	.cfi_restore 65
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
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
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	mr 3,4
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __floatsidf
	srdi 4,3,32
	bl __gcc_dtoq
	std 3,0(31)
	lwz 3,20(1)
	std 4,8(31)
	mtlr 3
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,4
	mr 4,3
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,3
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L795
	mr 4,29
	mr 3,29
	bl __addsf3
	mr 4,29
	bl __nesf2
	cmpwi 1,3,0
	beq- 1,.L795
	cmpwi 5,31,0
	stw 30,24(1)
	.cfi_offset 30, -8
	lis 30,0x4000
	bge+ 5,.L797
	lis 30,0x3f00
.L797:
	andi. 9,31,0x1
	beq- 0,.L798
.L799:
	mr 3,29
	mr 4,30
	bl __mulsf3
	mr 29,3
.L798:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L810
	mr 4,30
	mr 3,30
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L799
.L811:
	mr 4,30
	mr 3,30
	srawi 31,31,1
	addze 31,31
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L799
	b .L811
.L810:
	lwz 30,24(1)
	.cfi_restore 30
.L795:
	lwz 4,36(1)
	mr 3,29
	lwz 29,20(1)
	lwz 31,28(1)
	mtlr 4
	.cfi_restore 65
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE87:
	.size	ldexpf,.-ldexpf
	.align 2
	.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
	mflr 0
	srdi 10,9,32
	mr 3,9
	stw 31,44(1)
	mr 6,10
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,5
	mr 4,10
	mr 5,9
	stw 0,52(1)
	.cfi_offset 65, 4
	std 10,24(1)
	std 9,8(1)
	std 9,16(1)
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L813
	ld 7,8(1)
	ld 5,16(1)
	ld 6,24(1)
	srdi 4,7,32
	mr 3,7
	bl __adddf3
	ld 11,8(1)
	srdi 4,3,32
	mr 5,11
	srdi 6,11,32
	bl __nedf2
	cmpwi 1,3,0
	beq- 1,.L813
	cmpwi 5,31,0
	li 12,1
	rotldi 9,12,62
	bge+ 5,.L815
	li 0,511
	rotldi 9,0,53
.L815:
	andi. 10,31,0x1
	beq- 0,.L816
.L817:
	ld 4,8(1)
	mr 5,9
	srdi 6,9,32
	std 9,16(1)
	mr 3,4
	srdi 4,4,32
	bl __muldf3
	std 3,8(1)
	ld 9,16(1)
.L816:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L813
	mr 3,9
	mr 5,9
	srdi 6,9,32
	srdi 4,9,32
	bl __muldf3
	andi. 9,31,0x1
	mr 9,3
	bne- 0,.L817
.L828:
	mr 3,9
	mr 5,9
	srdi 6,9,32
	srdi 4,9,32
	srawi 31,31,1
	addze 31,31
	bl __muldf3
	andi. 9,31,0x1
	mr 9,3
	bne- 0,.L817
	b .L828
.L813:
	lwz 7,52(1)
	ld 3,8(1)
	lwz 31,44(1)
	mtlr 7
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE88:
	.size	ldexp,.-ldexp
	.align 2
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	mr 11,10
	mr 9,3
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	rldicr 3,11,0,31
	rldicl 5,5,0,32
	mr 10,9
	or 8,3,5
	rldimi 10,4,32,0
	rldimi 8,6,32,0
	stw 29,52(1)
	mflr 0
	srdi 4,10,32
	std 10,16(1)
	mr 5,8
	srdi 6,8,32
	stw 0,68(1)
	mr 3,10
	std 8,24(1)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	mr 29,7
	bl __gcc_qtod
	mr 5,3
	srdi 6,3,32
	srdi 4,3,32
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L830
	ld 10,16(1)
	ld 11,24(1)
	stw 30,56(1)
	.cfi_offset 30, -8
	mr 30,10
	mr 7,10
	srdi 8,10,32
	mr 9,11
	stw 31,60(1)
	.cfi_offset 31, -4
	srdi 10,11,32
	mr 5,11
	srdi 6,11,32
	mr 3,30
	srdi 4,30,32
	bl __gcc_qadd
	ld 12,16(1)
	mr 6,4
	srdi 4,3,32
	ld 0,24(1)
	mr 5,6
	srdi 6,6,32
	mr 7,12
	srdi 8,12,32
	mr 9,0
	srdi 10,0,32
	bl __gcc_qne
	cmpwi 1,3,0
	beq- 1,.L846
	cmpwi 5,29,0
	blt- 5,.L847
	li 7,1
	li 31,0
	rotldi 30,7,62
.L832:
	andi. 9,29,0x1
	beq- 0,.L833
.L834:
	ld 5,16(1)
	mr 7,30
	mr 9,31
	ld 8,24(1)
	srdi 10,31,32
	mr 3,5
	srdi 4,5,32
	std 30,32(1)
	mr 5,8
	srdi 6,8,32
	std 31,40(1)
	srdi 8,30,32
	bl __gcc_qmul
	std 3,16(1)
	std 4,24(1)
	ld 30,32(1)
	ld 31,40(1)
.L833:
	srawi 29,29,1
	addze. 29,29
	beq- 0,.L846
	mr 9,31
	mr 3,30
	mr 7,30
	srdi 8,30,32
	srdi 10,31,32
	srdi 4,30,32
	mr 5,31
	srdi 6,31,32
	bl __gcc_qmul
	andi. 9,29,0x1
	mr 31,4
	mr 30,3
	bne- 0,.L834
.L848:
	mr 9,31
	mr 3,30
	mr 7,30
	srdi 8,30,32
	srdi 10,31,32
	srdi 4,30,32
	mr 5,31
	srdi 6,31,32
	srawi 29,29,1
	addze 29,29
	bl __gcc_qmul
	andi. 9,29,0x1
	mr 31,4
	mr 30,3
	bne- 0,.L834
	b .L848
.L846:
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L830:
	lwz 12,68(1)
	ld 3,16(1)
	ld 4,24(1)
	mtlr 12
	.cfi_restore 65
	lwz 29,52(1)
	addi 1,1,64
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L847:
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	li 9,511
	li 31,0
	rotldi 30,9,53
	b .L832
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
	addi 9,5,-1
	cmplwi 1,9,6
	ble- 1,.L851
	or 0,3,4
	andi. 9,0,0x7
	bne- 0,.L851
	rldicl 11,5,61,35
	addi 12,4,-8
	andi. 10,11,0x1
	addi 7,11,-1
	addi 10,3,-8
	beq- 0,.L894
	ld 6,0(3)
	mr. 11,7
	mr 12,4
	ld 8,0(4)
	mr 10,3
	xor 9,8,6
	std 9,0(3)
	beq- 0,.L892
.L894:
	ld 0,8(10)
	addi 11,11,-2
	addi 8,10,8
	ld 6,8(12)
	cmpdi 5,11,0
	addi 12,12,16
	ld 7,0(12)
	addi 10,10,16
	xor 9,6,0
	std 9,-8(10)
	ld 6,8(8)
	xor 0,7,6
	std 0,8(8)
	bne+ 5,.L894
.L892:
	andi. 9,5,0x7
	rlwinm 11,5,0,0,28
	add 12,3,11
	add 8,4,11
	subf 5,11,5
	beqlr- 0
	cmplwi 6,5,1
	lbzx 10,3,11
	lbzx 4,4,11
	xor 7,10,4
	stbx 7,3,11
	beqlr- 6
	cmplwi 7,5,2
	lbz 6,1(12)
	lbz 9,1(8)
	xor 0,9,6
	stb 0,1(12)
	beqlr- 7
	cmplwi 1,5,3
	lbz 4,2(12)
	lbz 11,2(8)
	xor 10,11,4
	stb 10,2(12)
	beqlr- 1
	cmplwi 5,5,4
	lbz 7,3(12)
	lbz 9,3(8)
	xor 6,9,7
	stb 6,3(12)
	beqlr- 5
	cmplwi 0,5,5
	lbz 11,4(12)
	lbz 0,4(8)
	xor 4,0,11
	stb 4,4(12)
	beqlr- 0
	cmplwi 6,5,6
	lbz 10,5(12)
	lbz 5,5(8)
	xor 9,5,10
	stb 9,5(12)
	beqlr- 6
	lbz 7,6(8)
	lbz 8,6(12)
	xor 6,7,8
	stb 6,6(12)
	blr
.L851:
	rldicl 5,5,0,32
	addi 11,4,-1
	andi. 10,5,0x1
	addi 12,5,-1
	addi 10,3,-1
	beq- 0,.L893
	mr. 5,12
	lbz 0,0(3)
	mr 11,4
	lbz 4,0(4)
	mr 10,3
	xor 9,4,0
	stb 9,0(3)
	beqlr- 0
.L893:
	lbz 12,1(10)
	addi 5,5,-2
	mr 8,10
	lbz 6,1(11)
	cmpdi 7,5,0
	addi 11,11,2
	lbz 7,0(11)
	addi 10,10,2
	xor 0,6,12
	stb 0,-1(10)
	lbz 4,2(8)
	xor 9,7,4
	stb 9,2(8)
	beqlr- 7
	lbz 12,1(10)
	addi 5,5,-2
	mr 8,10
	lbz 6,1(11)
	cmpdi 7,5,0
	addi 11,11,2
	lbz 7,0(11)
	addi 10,10,2
	xor 0,6,12
	stb 0,-1(10)
	lbz 4,2(8)
	xor 9,7,4
	stb 9,2(8)
	bne+ 7,.L893
	blr
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
	beq- 0,.L897
.L898:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L898
.L897:
	cmpwi 5,5,0
	beq- 5,.L899
	andi. 10,5,0x1
	addi 12,4,-1
	addi 7,5,-1
	bne- 0,.L922
.L910:
	srwi 0,5,1
	mtctr 0
.L900:
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
	bdnz .L900
.L899:
	li 6,0
	stb 6,0(9)
	blr
.L922:
	lbz 8,0(4)
	mr 12,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 6,6,0
	beqlr- 6
	cmpwi 7,7,0
	addi 9,9,1
	bne+ 7,.L910
	b .L899
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
	beq- 0,.L935
	cmpwi 1,8,1
	beq- 1,.L946
	cmpwi 5,8,2
	beq- 5,.L947
	lbz 0,0(9)
	cmpwi 6,0,0
	beqlr+ 6
	li 3,1
.L947:
	lbzx 5,9,3
	cmpwi 7,5,0
	beqlr+ 7
	addi 3,3,1
.L946:
	lbzx 6,9,3
	cmpwi 0,6,0
	beqlr+ 0
	addi 3,3,1
	cmplw 1,4,3
	beqlr- 1
.L935:
	srwi 10,10,2
.L924:
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
	bne+ 1,.L924
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
	beq- 0,.L961
.L957:
	mr 10,4
	b .L960
.L959:
	beqlr- 7
.L960:
	lbzu 9,1(10)
	cmpwi 1,9,0
	cmpw 7,9,8
	bne+ 1,.L959
	lbzu 8,1(3)
	cmpwi 5,8,0
	bne+ 5,.L957
.L961:
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
	li 8,0
.L969:
	lbz 10,0(9)
	mr 3,8
	cmpw 7,10,4
	cmpwi 0,10,0
	bne- 7,.L968
	mr 3,9
.L968:
	addi 9,9,1
	mr 8,3
	bne+ 0,.L969
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
	beq- 0,.L986
	mr 9,4
.L975:
	lbzu 10,1(9)
	cmpwi 1,10,0
	bne+ 1,.L975
	subf. 6,4,9
	mr 3,8
	beqlr- 0
	addi 3,6,-1
	b .L994
.L997:
	cmpwi 6,12,0
	addi 8,8,1
	beq- 6,.L996
.L994:
	lbz 12,0(8)
	cmpw 5,12,5
	bne+ 5,.L997
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L977
.L999:
	bdz .L979
	bne- 7,.L980
	lbzu 12,1(7)
	cmpwi 1,12,0
	beq- 1,.L998
	lbzu 10,1(6)
.L977:
	andi. 9,10,0xff
	cmpw 7,9,12
	bne+ 0,.L999
.L980:
	addi 8,8,1
	b .L994
.L996:
	li 3,0
	blr
.L998:
	lbz 9,1(6)
.L979:
	cmpw 5,12,9
	bne+ 5,.L980
.L986:
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	rldicl 3,3,0,32
	sldi 4,4,32
	or 8,3,4
	rldicl 10,5,0,32
	sldi 9,6,32
	mflr 0
	srdi 4,8,32
	or 7,10,9
	stw 0,52(1)
	.cfi_offset 65, 4
	mr 3,8
	li 5,0
	std 8,24(1)
	li 6,0
	std 4,32(1)
	std 7,16(1)
	std 8,8(1)
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L1011
	lwz 4,32(1)
	li 5,0
	li 6,0
	lwz 3,24(1)
	bl __gtdf2
	cmpwi 1,3,0
	ble- 1,.L1004
	ld 11,16(1)
	li 5,0
	li 6,0
	mr 3,11
	srdi 4,11,32
	bl __ltdf2
	cmpwi 5,3,0
	blt- 5,.L1003
.L1004:
	lwz 8,52(1)
	ld 3,8(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 8
	.cfi_restore 65
	blr
.L1011:
	.cfi_restore_state
	ld 12,16(1)
	li 5,0
	li 6,0
	mr 3,12
	srdi 4,12,32
	bl __gtdf2
	cmpwi 6,3,0
	ble+ 6,.L1004
.L1003:
	ld 0,24(1)
	li 5,-1
	rldicr 6,5,0,0
	lwz 8,52(1)
	xor 3,0,6
	std 3,8(1)
	mtlr 8
	.cfi_restore 65
	ld 3,8(1)
	addi 1,1,48
	.cfi_def_cfa_offset 0
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
	blt- 1,.L1020
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1020
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1017
.L1014:
	cmplw 1,0,9
	blt- 1,.L1020
.L1017:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1014
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1015:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1014
	bdnz .L1015
	blr
.L1020:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,5
	beq- 0,.L1029
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L1029:
	add 3,30,31
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
	mflr 0
	srdi 10,9,32
	li 7,0
	stw 30,56(1)
	mr 3,9
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,5
	mr 4,10
	li 5,0
	stw 0,68(1)
	li 6,0
	stw 29,52(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	std 10,24(1)
	std 9,8(1)
	std 9,16(1)
	std 7,32(1)
	bl __ltdf2
	cmpwi 0,3,0
	ld 11,16(1)
	ld 5,24(1)
	blt- 0,.L1058
	mr 4,5
	mr 3,11
	li 5,0
	lis 6,0x3ff0
	bl __gedf2
	li 29,0
	cmpwi 1,3,0
	blt- 1,.L1059
.L1037:
	li 31,0
.L1043:
	ld 6,8(1)
	li 5,0
	addi 31,31,1
	srdi 4,6,32
	mr 3,6
	lis 6,0x3fe0
	bl __muldf3
	li 5,0
	lis 6,0x3ff0
	srdi 4,3,32
	std 3,8(1)
	bl __gedf2
	cmpwi 5,3,0
	bge+ 5,.L1043
	cmpwi 6,29,0
	stw 31,0(30)
	ld 3,8(1)
	beq- 6,.L1034
.L1061:
	li 30,-1
	rldicr 12,30,0,0
	xor 3,3,12
.L1034:
	lwz 0,68(1)
	lwz 29,52(1)
	lwz 30,56(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L1059:
	.cfi_restore_state
	ld 6,8(1)
	li 5,0
	mr 3,6
	srdi 4,6,32
	lis 6,0x3fe0
	bl __ltdf2
	cmpwi 5,3,0
	bge- 5,.L1040
	ld 8,8(1)
	li 5,0
	li 6,0
	mr 3,8
	srdi 4,8,32
	bl __nedf2
	cmpwi 6,3,0
	bne- 6,.L1049
.L1040:
	lwz 0,68(1)
	li 12,0
	stw 12,0(30)
	ld 3,8(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L1058:
	.cfi_restore_state
	li 29,-1
	mr 4,5
	rldicr 0,29,0,0
	mr 3,11
	xor 9,11,0
	li 5,0
	lis 6,0xbff0
	std 9,16(1)
	bl __ledf2
	cmpwi 7,3,0
	bgt- 7,.L1060
	ld 5,16(1)
	li 29,1
	std 5,8(1)
	b .L1037
.L1060:
	ld 4,8(1)
	li 5,0
	lis 6,0xbfe0
	mr 3,4
	srdi 4,4,32
	bl __gtdf2
	cmpwi 0,3,0
	bgt- 0,.L1047
	lwz 3,32(1)
	stw 3,0(30)
	ld 3,8(1)
	b .L1034
.L1047:
	li 29,1
.L1038:
	ld 10,16(1)
	li 31,0
	std 10,8(1)
.L1045:
	ld 4,8(1)
	addi 31,31,-1
	mr 5,4
	srdi 6,4,32
	mr 3,4
	srdi 4,4,32
	bl __adddf3
	li 5,0
	lis 6,0x3fe0
	srdi 4,3,32
	std 3,8(1)
	bl __ltdf2
	cmpwi 1,3,0
	blt+ 1,.L1045
	cmpwi 6,29,0
	stw 31,0(30)
	ld 3,8(1)
	bne+ 6,.L1061
	b .L1034
.L1049:
	ld 31,8(1)
	std 31,16(1)
	b .L1038
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
	beq- 0,.L1062
.L1064:
	rldicl 9,0,0,63
	srdi 0,0,1
	cmpdi 1,0,0
	neg 7,9
	and 8,7,11
	sldi 11,11,1
	add 10,10,8
	bne+ 1,.L1064
.L1062:
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
	li 10,16
	mr 9,3
	or 0,5,6
	li 3,32
	li 8,1
	mtctr 10
	blt+ 0,.L1068
	b .L1096
.L1072:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1070
	blt- 7,.L1073
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1070
	bdz .L1071
.L1068:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1072
.L1073:
	li 3,0
.L1078:
	subfc 7,4,9
	srwi 4,4,1
	subfe 11,11,11
	addi 12,11,1
	andi. 5,12,0xff
	subfic 10,5,0
	beq- 0,.L1075
	mr 9,7
.L1075:
	subfe 6,6,6
	and 10,8,6
	srwi. 8,8,1
	or 3,3,10
	bne+ 0,.L1078
.L1071:
	cmpdi 1,0,0
	beqlr+ 1
	mr 3,9
	blr
.L1070:
	cmpwi 0,8,0
	bne+ 0,.L1073
	li 3,0
	b .L1071
.L1096:
	subfc 4,4,9
	subfe 3,3,3
	addi 7,3,1
	andi. 3,7,0xff
	beq- 0,.L1071
	mr 9,4
	b .L1071
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
	beq- 0,.L1100
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1100:
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
	beq- 0,.L1103
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1103:
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
.L1106:
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
	bne+ 0,.L1106
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
	cmplw 0,3,4
	srwi 9,5,3
	rlwinm 12,5,0,0,28
	blt- 0,.L1114
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1176
.L1114:
	cmpwi 7,9,0
	addi 8,4,-8
	addi 10,3,-8
	beq- 7,.L1159
	andi. 7,9,0x1
	addi 0,9,-1
	beq- 0,.L1168
	mr. 9,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1162
.L1168:
	ld 11,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 5,9,0
	addi 7,10,8
	std 11,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 5,.L1168
.L1162:
	cmplw 6,5,12
	blelr- 6
	subf 11,12,5
	addi 9,11,-1
	cmplwi 7,9,6
	ble- 7,.L1119
	addi 8,12,1
	add 7,3,12
	add 10,4,8
	add 6,4,12
	subf 0,10,7
	subfic 9,0,6
	subfe 9,9,9
	neg 8,9
	rlwinm 10,8,0,0xff
	cmpwi 1,10,0
	beq- 1,.L1119
	or 0,6,7
	andi. 9,0,0x7
	bne- 0,.L1119
	rldicl 9,11,61,35
	addi 8,6,-8
	andi. 10,9,0x1
	addi 0,9,-1
	addi 10,7,-8
	beq- 0,.L1167
	mr. 9,0
	mr 8,6
	ld 6,0(6)
	mr 10,7
	std 6,0(7)
	beq- 0,.L1165
.L1167:
	ld 0,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 5,9,0
	addi 7,10,8
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 5,.L1167
.L1165:
	andi. 9,11,0x7
	rlwinm 11,11,0,0,28
	add 12,11,12
	beqlr- 0
	addi 9,12,1
	lbzx 8,4,12
	cmplw 6,5,9
	stbx 8,3,12
	blelr- 6
	addi 6,12,2
	lbzx 10,4,9
	cmplw 7,5,6
	stbx 10,3,9
	blelr- 7
	addi 0,12,3
	lbzx 7,4,6
	cmplw 1,5,0
	stbx 7,3,6
	blelr- 1
	addi 11,12,4
	lbzx 9,4,0
	cmplw 5,5,11
	stbx 9,3,0
	blelr- 5
	addi 6,12,5
	lbzx 8,4,11
	cmplw 0,5,6
	stbx 8,3,11
	blelr- 0
	addi 12,12,6
	lbzx 10,4,6
	cmplw 6,5,12
	stbx 10,3,6
	blelr- 6
	lbzx 5,4,12
	stbx 5,3,12
	blr
.L1176:
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 0,5,-1
	beq- 0,.L1169
	mr. 5,0
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beqlr- 0
.L1169:
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
	beqlr- 6
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
	bne+ 6,.L1169
	blr
.L1159:
	cmpwi 1,5,0
	mr 11,5
	beqlr- 1
.L1119:
	rldicl 7,11,0,32
	addi 0,12,-1
	andi. 9,7,0x1
	add 12,3,0
	add 4,4,0
	addi 3,7,-1
	beq- 0,.L1166
	mr. 7,3
	lbzu 11,1(4)
	stbu 11,1(12)
	beqlr- 0
.L1166:
	lbz 6,1(4)
	addi 7,7,-2
	mr 8,4
	cmpdi 7,7,0
	addi 9,12,1
	stb 6,1(12)
	addi 4,4,2
	addi 12,12,2
	lbz 10,2(8)
	stb 10,1(9)
	beqlr- 7
	lbz 6,1(4)
	addi 7,7,-2
	mr 8,4
	cmpdi 7,7,0
	addi 9,12,1
	stb 6,1(12)
	addi 4,4,2
	addi 12,12,2
	lbz 10,2(8)
	stb 10,1(9)
	bne+ 7,.L1166
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
	cmplw 0,3,4
	srwi 11,5,1
	blt- 0,.L1181
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1226
.L1181:
	cmpwi 7,11,0
	beq- 7,.L1180
	addi 12,11,-1
	cmplwi 1,12,4
	ble- 1,.L1184
	or 10,4,3
	andi. 9,10,0x7
	bne- 0,.L1184
	addi 0,4,2
	subf 7,0,3
	subfic 9,7,4
	subfe 8,8,8
	neg 9,8
	rlwinm 6,9,0,0xff
	cmpwi 5,6,0
	beq- 5,.L1184
	rldicl 9,5,61,35
	srwi 12,5,3
	andi. 10,9,0x1
	addi 0,9,-1
	addi 8,4,-8
	addi 10,3,-8
	beq- 0,.L1222
	mr. 9,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1220
.L1222:
	ld 0,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 6,9,0
	addi 7,10,8
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 6,.L1222
.L1220:
	slwi 9,12,2
	cmplw 7,11,9
	beq- 7,.L1180
	addi 8,9,1
	slwi 12,12,3
	cmplw 1,11,8
	lhzx 10,4,12
	sthx 10,3,12
	ble- 1,.L1180
	addi 6,9,2
	addi 7,12,2
	cmplw 5,11,6
	lhzx 11,4,7
	sthx 11,3,7
	ble- 5,.L1180
	addi 0,12,4
	lhzx 9,4,0
	sthx 9,3,0
.L1180:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
	blr
.L1226:
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1223
	mr. 5,10
	lbzu 0,-1(9)
	stbu 0,-1(3)
	beqlr- 0
.L1223:
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 4,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 6,-2(8)
	stb 6,-2(4)
	beqlr- 6
	lbz 7,-1(9)
	addi 5,5,-2
	mr 8,9
	cmpdi 6,5,0
	mr 4,3
	stb 7,-1(3)
	addi 9,9,-2
	addi 3,3,-2
	lbz 6,-2(8)
	stb 6,-2(4)
	bne+ 6,.L1223
	blr
.L1184:
	andi. 9,11,0x1
	addi 10,4,-2
	addi 8,11,-1
	addi 9,3,-2
	beq- 0,.L1221
	mr. 11,8
	lhz 12,0(4)
	mr 10,4
	mr 9,3
	sth 12,0(3)
	beq- 0,.L1180
.L1221:
	lhz 6,2(10)
	addi 11,11,-2
	mr 7,10
	cmpdi 6,11,0
	addi 8,9,2
	sth 6,2(9)
	addi 10,10,4
	addi 9,9,4
	lhz 0,4(7)
	sth 0,2(8)
	bne+ 6,.L1221
	b .L1180
	.cfi_endproc
.LFE106:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	cmplw 0,3,4
	srwi 9,5,2
	rlwinm 12,5,0,0,29
	blt- 0,.L1231
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1293
.L1231:
	cmpwi 7,9,0
	addi 8,4,-4
	addi 10,3,-4
	beq- 7,.L1276
	andi. 7,9,0x1
	addi 0,9,-1
	beq- 0,.L1285
	mr. 9,0
	lwz 7,0(4)
	mr 8,4
	mr 10,3
	stw 7,0(3)
	beq- 0,.L1279
.L1285:
	lwz 11,4(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 5,9,0
	addi 7,10,4
	stw 11,4(10)
	addi 8,8,8
	addi 10,10,8
	lwz 0,8(6)
	stw 0,4(7)
	bne+ 5,.L1285
.L1279:
	cmplw 6,5,12
	blelr- 6
	subf 11,12,5
	addi 9,11,-1
	cmplwi 7,9,6
	ble- 7,.L1236
	addi 8,12,1
	add 7,3,12
	add 10,4,8
	add 6,4,12
	subf 0,10,7
	subfic 9,0,6
	subfe 9,9,9
	neg 8,9
	rlwinm 10,8,0,0xff
	cmpwi 1,10,0
	beq- 1,.L1236
	or 0,6,7
	andi. 9,0,0x7
	bne- 0,.L1236
	rldicl 9,11,61,35
	addi 8,6,-8
	andi. 10,9,0x1
	addi 0,9,-1
	addi 10,7,-8
	beq- 0,.L1284
	mr. 9,0
	mr 8,6
	ld 6,0(6)
	mr 10,7
	std 6,0(7)
	beq- 0,.L1282
.L1284:
	ld 0,8(8)
	addi 9,9,-2
	mr 6,8
	cmpdi 5,9,0
	addi 7,10,8
	std 0,8(10)
	addi 8,8,16
	addi 10,10,16
	ld 0,16(6)
	std 0,8(7)
	bne+ 5,.L1284
.L1282:
	andi. 9,11,0x7
	rlwinm 11,11,0,0,28
	add 12,11,12
	beqlr- 0
	addi 9,12,1
	lbzx 8,4,12
	cmplw 6,5,9
	stbx 8,3,12
	blelr- 6
	addi 6,12,2
	lbzx 10,4,9
	cmplw 7,5,6
	stbx 10,3,9
	blelr- 7
	addi 0,12,3
	lbzx 7,4,6
	cmplw 1,5,0
	stbx 7,3,6
	blelr- 1
	addi 11,12,4
	lbzx 9,4,0
	cmplw 5,5,11
	stbx 9,3,0
	blelr- 5
	addi 6,12,5
	lbzx 8,4,11
	cmplw 0,5,6
	stbx 8,3,11
	blelr- 0
	addi 12,12,6
	lbzx 10,4,6
	cmplw 6,5,12
	stbx 10,3,6
	blelr- 6
	lbzx 5,4,12
	stbx 5,3,12
	blr
.L1293:
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 0,5,-1
	beq- 0,.L1286
	mr. 5,0
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beqlr- 0
.L1286:
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
	beqlr- 6
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
	bne+ 6,.L1286
	blr
.L1276:
	cmpwi 1,5,0
	mr 11,5
	beqlr- 1
.L1236:
	rldicl 7,11,0,32
	addi 0,12,-1
	andi. 9,7,0x1
	add 12,3,0
	add 4,4,0
	addi 3,7,-1
	beq- 0,.L1283
	mr. 7,3
	lbzu 11,1(4)
	stbu 11,1(12)
	beqlr- 0
.L1283:
	lbz 6,1(4)
	addi 7,7,-2
	mr 8,4
	cmpdi 7,7,0
	addi 9,12,1
	stb 6,1(12)
	addi 4,4,2
	addi 12,12,2
	lbz 10,2(8)
	stb 10,1(9)
	beqlr- 7
	lbz 6,1(4)
	addi 7,7,-2
	mr 8,4
	cmpdi 7,7,0
	addi 9,12,1
	stb 6,1(12)
	addi 4,4,2
	addi 12,12,2
	lbz 10,2(8)
	stb 10,1(9)
	bne+ 7,.L1283
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
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __floatunsidf
	lwz 4,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
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
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __floatunsisf
	lwz 4,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
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
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __floatundidf
	lwz 4,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
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
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __floatundisf
	lwz 4,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
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
	bne- 0,.L1307
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1308
	srwi. 10,9,12
	bne- 0,.L1309
	srwi. 10,9,11
	bne- 0,.L1310
	srwi. 10,9,10
	bne- 0,.L1311
	srwi. 10,9,9
	bne- 0,.L1312
	srwi. 10,9,8
	bne- 0,.L1313
	srwi. 10,9,7
	bne- 0,.L1314
	srwi. 10,9,6
	bne- 0,.L1315
	srwi. 10,9,5
	bne- 0,.L1316
	srwi. 10,9,4
	bne- 0,.L1317
	srwi. 10,9,3
	bne- 0,.L1318
	srwi. 10,9,2
	bne- 0,.L1319
	srwi. 10,9,1
	bne- 0,.L1320
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1307:
	li 3,0
	blr
.L1318:
	li 3,12
	blr
.L1308:
	li 3,2
	blr
.L1309:
	li 3,3
	blr
.L1310:
	li 3,4
	blr
.L1311:
	li 3,5
	blr
.L1312:
	li 3,6
	blr
.L1313:
	li 3,7
	blr
.L1314:
	li 3,8
	blr
.L1315:
	li 3,9
	blr
.L1316:
	li 3,10
	blr
.L1317:
	li 3,11
	blr
.L1319:
	li 3,13
	blr
.L1320:
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
	bne- 0,.L1325
	andi. 9,3,0x2
	bne- 0,.L1326
	andi. 9,3,0x4
	bne- 0,.L1327
	andi. 9,3,0x8
	bne- 0,.L1328
	andi. 9,3,0x10
	bne- 0,.L1329
	andi. 9,3,0x20
	bne- 0,.L1330
	andi. 9,3,0x40
	bne- 0,.L1331
	andi. 9,3,0x80
	bne- 0,.L1332
	andi. 9,3,0x100
	bne- 0,.L1333
	andi. 9,3,0x200
	bne- 0,.L1334
	andi. 9,3,0x400
	bne- 0,.L1335
	andi. 9,3,0x800
	bne- 0,.L1336
	andi. 9,3,0x1000
	bne- 0,.L1337
	andi. 9,3,0x2000
	bne- 0,.L1338
	andi. 9,3,0x4000
	bne- 0,.L1339
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1325:
	li 3,0
	blr
.L1326:
	li 3,1
	blr
.L1337:
	li 3,12
	blr
.L1327:
	li 3,2
	blr
.L1328:
	li 3,3
	blr
.L1329:
	li 3,4
	blr
.L1330:
	li 3,5
	blr
.L1331:
	li 3,6
	blr
.L1332:
	li 3,7
	blr
.L1333:
	li 3,8
	blr
.L1334:
	li 3,9
	blr
.L1335:
	li 3,10
	blr
.L1336:
	li 3,11
	blr
.L1338:
	li 3,13
	blr
.L1339:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	lis 4,0x4700
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __gesf2
	cmpwi 0,3,0
	mr 3,31
	bge- 0,.L1348
	bl __fixsfsi
	lwz 4,20(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
	blr
.L1348:
	.cfi_restore_state
	lis 4,0x4700
	bl __subsf3
	bl __fixsfsi
	lwz 4,20(1)
	addis 3,3,0x1
	lwz 31,12(1)
	addi 3,3,-32768
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	mtlr 4
	.cfi_restore 65
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
	rldicl 9,3,63,63
	rlwinm 10,3,0,31,31
	add 0,9,10
	rldicl 4,3,62,63
	add 5,0,4
	rldicl 6,3,61,63
	add 7,5,6
	rldicl 8,3,60,63
	add 11,7,8
	rldicl 12,3,59,63
	add 9,11,12
	rldicl 10,3,58,63
	add 0,9,10
	rldicl 4,3,57,63
	add 5,0,4
	rldicl 6,3,56,63
	add 7,5,6
	rldicl 8,3,55,63
	add 11,7,8
	rldicl 12,3,54,63
	add 9,11,12
	rldicl 10,3,53,63
	rldicl 4,3,52,63
	add 0,9,10
	rldicl 6,3,51,63
	add 5,0,4
	rldicl 8,3,50,63
	add 7,5,6
	srawi 3,3,15
	add 11,7,8
	add 12,11,3
	rlwinm 3,12,0,31,31
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
	rldicl 9,3,63,63
	rlwinm 10,3,0,31,31
	add 0,9,10
	rldicl 4,3,62,63
	add 5,0,4
	rldicl 6,3,61,63
	add 7,5,6
	rldicl 8,3,60,63
	add 11,7,8
	rldicl 12,3,59,63
	add 9,11,12
	rldicl 10,3,58,63
	add 0,9,10
	rldicl 4,3,57,63
	add 5,0,4
	rldicl 6,3,56,63
	add 7,5,6
	rldicl 8,3,55,63
	add 11,7,8
	rldicl 12,3,54,63
	add 9,11,12
	rldicl 10,3,53,63
	rldicl 4,3,52,63
	add 0,9,10
	rldicl 6,3,51,63
	add 5,0,4
	rldicl 8,3,50,63
	add 7,5,6
	add 11,7,8
	srawi 3,3,15
	add 3,11,3
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
.L1353:
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
	bne+ 0,.L1353
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
.L1359:
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
	bne+ 0,.L1359
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
	li 10,16
	mr 9,3
	li 8,1
	li 3,32
	mtctr 10
	blt+ 0,.L1365
	b .L1393
.L1369:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1367
	blt- 7,.L1370
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1367
	bdz .L1368
.L1365:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1369
.L1370:
	li 3,0
.L1375:
	subfc 7,4,9
	srwi 4,4,1
	subfe 6,6,6
	addi 11,6,1
	andi. 12,11,0xff
	subfic 10,12,0
	beq- 0,.L1372
	mr 9,7
.L1372:
	subfe 10,10,10
	and 0,8,10
	srwi. 8,8,1
	or 3,3,0
	bne+ 0,.L1375
.L1368:
	cmpwi 1,5,0
	beqlr+ 1
	mr 3,9
	blr
.L1367:
	cmpwi 0,8,0
	bne+ 0,.L1370
	li 3,0
	b .L1368
.L1393:
	subfc 4,4,9
	subfe 3,3,3
	addi 0,3,1
	andi. 3,0,0xff
	beq- 0,.L1368
	mr 9,4
	b .L1368
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __ltsf2
	cmpwi 0,3,0
	blt- 0,.L1398
	mr 4,30
	mr 3,31
	bl __gtsf2
	lwz 4,20(1)
	addi 9,3,-1
	nor 3,9,3
	lwz 30,8(1)
	lwz 31,12(1)
	srwi 3,3,31
	mtlr 4
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L1398:
	.cfi_restore_state
	lwz 4,20(1)
	li 3,-1
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 4
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	sldi 4,4,32
	sldi 6,6,32
	rldicl 3,3,0,32
	rldicl 5,5,0,32
	or 9,3,4
	or 8,5,6
	srdi 10,4,32
	srdi 7,6,32
	std 8,16(1)
	std 7,24(1)
	mflr 0
	std 9,8(1)
	std 10,32(1)
	lwz 5,16(1)
	lwz 6,24(1)
	lwz 3,8(1)
	lwz 4,32(1)
	stw 0,52(1)
	.cfi_offset 65, 4
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L1403
	lwz 5,16(1)
	lwz 6,24(1)
	lwz 3,8(1)
	lwz 4,32(1)
	bl __gtdf2
	lwz 0,52(1)
	addi 11,3,-1
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	nor 12,11,3
	srwi 3,12,31
	mtlr 0
	.cfi_restore 65
	blr
.L1403:
	.cfi_restore_state
	lwz 0,52(1)
	li 3,-1
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
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
	mr 8,3
	blt- 0,.L1421
	beq- 0,.L1413
	li 6,0
.L1409:
	li 10,32
	li 3,0
	b .L1412
.L1422:
	beq- 7,.L1411
.L1412:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,8
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 3,3,5
	slwi 8,8,1
	bne+ 0,.L1422
.L1411:
	cmpwi 1,6,0
	beqlr- 1
	neg 3,3
	blr
.L1421:
	neg 4,4
	li 6,1
	b .L1409
.L1413:
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
	li 5,0
	bge+ 0,.L1424
	neg 3,3
	li 9,0
	li 5,1
.L1424:
	cmpwi 1,4,0
	bge+ 1,.L1425
	neg 4,4
	mr 5,9
.L1425:
	cmplw 5,3,4
	li 8,16
	mr 7,3
	mr 11,4
	li 10,1
	mtctr 8
	bgt+ 5,.L1426
	b .L1454
.L1430:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 7,3,11
	ble- 7,.L1431
	bdz .L1431
.L1426:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,3,11
	bgt+ 6,.L1430
.L1431:
	cmpwi 0,10,0
	li 3,0
	beq- 0,.L1429
.L1428:
	subfc 6,11,7
	srwi 11,11,1
	subfe 4,4,4
	addi 0,4,1
	andi. 12,0,0xff
	subfic 8,12,0
	beq- 0,.L1433
	mr 7,6
.L1433:
	subfe 9,9,9
	and 8,10,9
	srwi. 10,10,1
	or 3,3,8
	bne+ 0,.L1428
.L1429:
	cmpwi 1,5,0
	beqlr- 1
	neg 3,3
	blr
.L1454:
	subfc 4,4,3
	subfe 3,3,3
	addi 3,3,1
	b .L1429
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
	mr 8,3
	li 6,0
	bge+ 0,.L1458
	neg 8,3
	li 6,1
.L1458:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 3,8
	subf 9,9,4
	li 11,1
	cmplw 1,8,9
	mtctr 7
	bgt+ 1,.L1459
	b .L1487
.L1463:
	slwi 9,9,1
	slwi 11,11,1
	cmplw 7,8,9
	ble- 7,.L1464
	bdz .L1464
.L1459:
	slwi 9,9,1
	slwi 11,11,1
	cmplw 6,8,9
	bgt+ 6,.L1463
.L1464:
	cmpwi 0,11,0
	beq- 0,.L1490
.L1461:
	subfc 8,9,3
	subf 4,9,3
	subfe 12,12,12
	srwi. 11,11,1
	addi 8,12,1
	srwi 9,9,1
	rlwinm 7,8,0,0xff
	cmpwi 1,7,0
	beq- 1,.L1466
	mr 3,4
.L1466:
	bne+ 0,.L1461
.L1462:
	cmpwi 5,6,0
	beqlr- 5
.L1491:
	neg 3,3
	blr
.L1490:
	cmpwi 5,6,0
	mr 3,8
	beqlr- 5
	b .L1491
.L1487:
	subfc 9,9,8
	subfe 10,10,10
	addi 0,10,1
	rlwinm 5,0,0,0xff
	cmpwi 5,5,0
	beq- 5,.L1462
	mr 3,9
	b .L1462
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
	bge- 0,.L1678
	andi. 9,4,0x8000
	bne- 0,.L1497
	rlwinm 9,4,1,16,30
	cmplw 5,3,9
	ble- 5,.L1570
	andi. 10,9,0x8000
	bne- 0,.L1570
	rlwinm 9,4,2,16,29
	cmplw 6,3,9
	ble- 6,.L1572
	andi. 10,9,0x8000
	bne- 0,.L1572
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L1574
	andi. 10,9,0x8000
	bne- 0,.L1574
	rlwinm 9,4,4,16,27
	cmplw 1,3,9
	ble- 1,.L1576
	andi. 10,9,0x8000
	bne- 0,.L1576
	rlwinm 9,4,5,16,26
	cmplw 5,3,9
	ble- 5,.L1578
	andi. 10,9,0x8000
	bne- 0,.L1578
	rlwinm 9,4,6,16,25
	cmplw 6,3,9
	ble- 6,.L1580
	andi. 10,9,0x8000
	bne- 0,.L1580
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L1582
	andi. 10,9,0x8000
	bne- 0,.L1582
	rlwinm 9,4,8,16,23
	cmplw 1,3,9
	ble- 1,.L1584
	andi. 10,9,0x8000
	bne- 0,.L1584
	rlwinm 9,4,9,16,22
	cmplw 5,3,9
	ble- 5,.L1586
	andi. 10,9,0x8000
	bne- 0,.L1586
	rlwinm 9,4,10,16,21
	cmplw 6,3,9
	ble- 6,.L1588
	andi. 10,9,0x8000
	bne- 0,.L1588
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L1590
	andi. 10,9,0x8000
	bne- 0,.L1590
	rlwinm 9,4,12,16,19
	cmplw 1,3,9
	ble- 1,.L1592
	andi. 10,9,0x8000
	bne- 0,.L1592
	rlwinm 9,4,13,16,18
	cmplw 5,3,9
	ble- 5,.L1594
	andi. 10,9,0x8000
	bne- 0,.L1594
	rlwinm 9,4,14,16,17
	cmplw 6,3,9
	ble- 6,.L1596
	andi. 10,9,0x8000
	bne- 0,.L1596
	rlwinm 8,4,15,16,16
	cmplw 7,3,8
	ble- 7,.L1597
	cmpwi 1,8,0
	li 11,0
	bne- 1,.L1597
.L1500:
	cmpwi 5,5,0
	beq+ 5,.L1559
	mr 11,3
.L1559:
	rlwinm 3,11,0,0xffff
	blr
.L1570:
	li 12,2
.L1499:
	subfc 6,9,3
	rlwinm 10,3,0,0xffff
	subfe 4,4,4
	rlwinm 0,6,0,0xffff
	addi 7,4,1
	rlwinm 11,7,0,0xff
	cmpwi 5,11,0
	beq- 5,.L1566
	rlwinm 10,0,0,0xffff
.L1566:
	subfc 3,9,3
	rldicl 0,12,63,49
	subfe 3,3,3
	addi 8,3,1
	rlwinm 3,10,0,0xffff
	rlwinm 6,8,0,0xff
	rlwinm 8,12,0,0xffff
	subfic 7,6,0
	srwi 7,9,1
	subfe 4,4,4
	and 12,12,4
	subfc 4,7,10
	subfe 11,11,11
	rlwinm 4,4,0,0xffff
	addi 6,11,1
	rlwinm 11,6,0,0xff
	cmpwi 6,11,0
	beq- 6,.L1502
	rlwinm 3,4,0,0xffff
.L1502:
	subfc 7,7,10
	srwi. 10,8,2
	subfe 10,10,10
	srwi 4,8,2
	addi 7,10,1
	rlwinm 6,7,0,0xff
	srwi 7,9,2
	subfic 10,6,0
	subfe 11,11,11
	and 0,0,11
	or 12,0,12
	mr 11,12
	beq- 0,.L1500
	subfc 7,7,3
	subfe 10,10,10
	rlwinm 11,7,0,0xffff
	addi 6,10,1
	andi. 0,6,0xff
	beq- 0,.L1506
	mr 3,11
.L1506:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1508
	mr 7,4
.L1508:
	srwi. 6,8,3
	or 12,12,7
	mr 11,12
	srwi 4,8,3
	srwi 10,9,3
	beq- 0,.L1500
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1510
	mr 3,0
.L1510:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1512
	mr 7,4
.L1512:
	srwi. 6,8,4
	or 12,12,7
	mr 11,12
	srwi 4,8,4
	srwi 0,9,4
	beq- 0,.L1500
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1514
	mr 3,10
.L1514:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1516
	mr 7,4
.L1516:
	srwi. 6,8,5
	or 12,12,7
	mr 11,12
	srwi 4,8,5
	srwi 10,9,5
	beq- 0,.L1500
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1518
	mr 3,0
.L1518:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1520
	mr 7,4
.L1520:
	srwi. 6,8,6
	or 12,12,7
	mr 11,12
	srwi 4,8,6
	srwi 0,9,6
	beq- 0,.L1500
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1522
	mr 3,10
.L1522:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1524
	mr 7,4
.L1524:
	srwi. 6,8,7
	or 12,12,7
	mr 11,12
	srwi 4,8,7
	srwi 10,9,7
	beq- 0,.L1500
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1526
	mr 3,0
.L1526:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1528
	mr 7,4
.L1528:
	srwi. 6,8,8
	or 12,12,7
	mr 11,12
	srwi 4,8,8
	srwi 0,9,8
	beq- 0,.L1500
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1530
	mr 3,10
.L1530:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1532
	mr 7,4
.L1532:
	srwi. 6,8,9
	or 12,12,7
	mr 11,12
	srwi 4,8,9
	srwi 10,9,9
	beq- 0,.L1500
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1534
	mr 3,0
.L1534:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1536
	mr 7,4
.L1536:
	srwi. 6,8,10
	or 12,12,7
	mr 11,12
	srwi 4,8,10
	srwi 0,9,10
	beq- 0,.L1500
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1538
	mr 3,10
.L1538:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1540
	mr 7,4
.L1540:
	srwi. 6,8,11
	or 12,12,7
	mr 11,12
	srwi 4,8,11
	srwi 10,9,11
	beq- 0,.L1500
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1542
	mr 3,0
.L1542:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1544
	mr 7,4
.L1544:
	srwi. 6,8,12
	or 12,12,7
	mr 11,12
	srwi 4,8,12
	srwi 0,9,12
	beq- 0,.L1500
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1546
	mr 3,10
.L1546:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1548
	mr 7,4
.L1548:
	srwi. 6,8,13
	or 12,12,7
	mr 11,12
	srwi 4,8,13
	srwi 10,9,13
	beq- 0,.L1500
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1550
	mr 3,0
.L1550:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1552
	mr 7,4
.L1552:
	srwi. 6,8,14
	or 12,12,7
	mr 11,12
	srwi 4,8,14
	srwi 0,9,14
	beq- 0,.L1500
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1554
	mr 3,10
.L1554:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1556
	mr 7,4
.L1556:
	cmpwi 1,8,16384
	or 12,12,7
	srwi 9,9,15
	mr 11,12
	beq- 1,.L1500
	subfc 9,9,3
	subfe 8,8,8
	rlwinm 4,9,0,0xffff
	addi 11,8,1
	andi. 10,11,0xff
	beq- 0,.L1558
	mr 3,4
.L1558:
	rlwinm 3,3,0,0xffff
	or 11,12,10
	b .L1500
.L1572:
	li 12,4
	b .L1499
.L1574:
	li 12,8
	b .L1499
.L1576:
	li 12,16
	b .L1499
.L1586:
	li 12,512
	b .L1499
.L1578:
	li 12,32
	b .L1499
.L1580:
	li 12,64
	b .L1499
.L1582:
	li 12,128
	b .L1499
.L1584:
	li 12,256
	b .L1499
.L1678:
	xor 6,4,3
	subf 4,4,3
	cntlzw 0,6
	rlwinm 7,4,0,0xffff
	srwi 11,0,5
	cmpwi 1,11,0
	beq- 1,.L1676
	mr 3,7
.L1676:
	rlwinm 3,3,0,0xffff
	b .L1500
.L1588:
	li 12,1024
	b .L1499
.L1590:
	li 12,2048
	b .L1499
.L1592:
	li 12,4096
	b .L1499
.L1594:
	li 12,8192
	b .L1499
.L1596:
	li 12,16384
	b .L1499
.L1597:
	li 10,0
	li 12,-32768
	ori 9,10,0x8000
	b .L1499
.L1497:
	subf 3,4,3
	li 11,1
	rlwinm 3,3,0,0xffff
	b .L1500
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB162:
	.cfi_startproc
	cmplw 0,3,4
	li 10,16
	mr 9,3
	li 8,1
	li 3,32
	mtctr 10
	bgt+ 0,.L1680
	b .L1708
.L1684:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1682
	blt- 7,.L1685
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1682
	bdz .L1683
.L1680:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1684
.L1685:
	li 3,0
.L1690:
	subfc 7,4,9
	srwi 4,4,1
	subfe 6,6,6
	addi 11,6,1
	andi. 12,11,0xff
	subfic 10,12,0
	beq- 0,.L1687
	mr 9,7
.L1687:
	subfe 10,10,10
	and 0,8,10
	srwi. 8,8,1
	or 3,3,0
	bne+ 0,.L1690
.L1683:
	cmpwi 1,5,0
	beqlr+ 1
	mr 3,9
	blr
.L1682:
	cmpwi 0,8,0
	bne+ 0,.L1685
	li 3,0
	b .L1683
.L1708:
	subfc 4,4,9
	subfe 3,3,3
	addi 0,3,1
	andi. 3,0,0xff
	beq- 0,.L1683
	mr 9,4
	b .L1683
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
	beq- 0,.L1711
	addi 5,5,-32
	li 11,0
	slw 8,0,5
.L1712:
	sldi 12,8,32
	or 4,11,12
.L1710:
	mr 3,4
	srdi 4,4,32
	blr
.L1711:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1710
	subfic 9,5,32
	sradi 10,0,32
	srw 6,0,9
	slw 7,10,5
	or 8,6,7
	slw 11,0,5
	b .L1712
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
	beq- 0,.L1717
	sradi 11,0,32
	addi 12,5,-32
	sraw 10,11,12
	srawi 5,11,31
.L1718:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1716:
	srdi 4,6,32
	mr 3,6
	blr
.L1717:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1716
	sradi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	sraw 5,6,5
	b .L1718
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
	lis 9,0x1
	subfc 9,9,3
	subfe 8,8,8
	neg 0,8
	slwi 4,0,4
	subfic 5,4,16
	srw 3,3,5
	rlwinm 10,3,0,16,23
	cntlzw 6,10
	srwi 7,6,5
	slwi 11,7,3
	subfic 12,11,8
	add 8,11,4
	srw 9,3,12
	rlwinm 0,9,0,24,27
	cntlzw 4,0
	srwi 5,4,5
	slwi 3,5,2
	subfic 6,3,4
	add 10,3,8
	srw 7,9,6
	rlwinm 11,7,0,28,29
	cntlzw 12,11
	srwi 8,12,5
	slwi 0,8,1
	subfic 9,0,2
	srw 4,7,9
	andi. 8,4,0x2
	bne- 0,.L1725
	subfic 5,4,2
	add 3,0,10
	add 3,5,3
	blr
.L1725:
	li 5,0
	add 3,0,10
	add 3,5,3
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
	blt- 0,.L1729
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 3,9,1
	blr
.L1729:
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
	or 9,3,4
	or 0,5,6
	sradi 8,9,32
	sradi 10,0,32
	cmpw 0,8,10
	blt- 0,.L1735
	li 3,1
	bgtlr- 0
	cmplw 1,9,0
	li 3,-1
	bltlr- 1
	subfc 9,9,0
	subfe 7,7,7
	neg 3,7
	blr
.L1735:
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
	beq- 0,.L1740
	addi 12,5,-32
	srdi 11,0,32
	srw 10,11,12
	li 5,0
.L1741:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1739:
	srdi 4,6,32
	mr 3,6
	blr
.L1740:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1739
	srdi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	srw 5,6,5
	b .L1741
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	li 10,1023
	mflr 0
	rldicl 3,3,0,32
	sldi 4,4,32
	stw 30,24(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,5
	andi. 9,30,0x1
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,5
	rotldi 5,10,52
	stw 0,36(1)
	.cfi_offset 65, 4
	or 9,3,4
	std 5,8(1)
	beq- 0,.L1753
.L1755:
	ld 7,8(1)
	mr 5,9
	srdi 6,9,32
	std 9,16(1)
	mr 3,7
	srdi 4,7,32
	bl __muldf3
	std 3,8(1)
	ld 9,16(1)
.L1753:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L1754
	mr 5,9
	srdi 6,9,32
	mr 3,9
	srdi 4,9,32
	bl __muldf3
	andi. 9,31,0x1
	mr 9,3
	bne- 0,.L1755
.L1760:
	mr 5,9
	srdi 6,9,32
	mr 3,9
	srdi 4,9,32
	srawi 31,31,1
	addze 31,31
	bl __muldf3
	andi. 9,31,0x1
	mr 9,3
	bne- 0,.L1755
	b .L1760
.L1754:
	cmpwi 1,30,0
	bge+ 1,.L1752
	ld 11,8(1)
	li 3,0
	lis 4,0x3ff0
	mr 5,11
	srdi 6,11,32
	bl __divdf3
	std 3,8(1)
.L1752:
	lwz 12,36(1)
	ld 3,8(1)
	lwz 30,24(1)
	mtlr 12
	.cfi_restore 65
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,4
	andi. 9,28,0x1
	stw 29,20(1)
	.cfi_offset 29, -12
	lis 29,0x3f80
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,4
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,3
	stw 0,36(1)
	.cfi_offset 65, 4
	beq- 0,.L1762
.L1764:
	mr 3,29
	mr 4,31
	bl __mulsf3
	mr 29,3
.L1762:
	srawi 30,30,1
	addze. 30,30
	beq- 0,.L1763
	mr 4,31
	mr 3,31
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1764
.L1769:
	mr 4,31
	mr 3,31
	srawi 30,30,1
	addze 30,30
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1764
	b .L1769
.L1763:
	cmpwi 1,28,0
	bge+ 1,.L1761
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
.L1761:
	lwz 4,36(1)
	mr 3,29
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 4
	.cfi_restore 65
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
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
	blt- 0,.L1772
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L1772:
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
	blt- 0,.L1778
	li 3,1
	bgtlr- 0
	cmplw 1,0,7
	li 3,-1
	bltlr- 1
	subfc 9,0,7
	subfe 8,8,8
	neg 3,8
	blr
.L1778:
	li 3,-1
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC0:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC1:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
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
	.globl __divsf3
	.globl __divdf3
	.globl __fixsfsi
	.globl __gesf2
	.globl __floatundisf
	.globl __floatundidf
	.globl __floatunsisf
	.globl __floatunsidf
	.globl __gedf2
	.globl __ledf2
	.globl __gcc_qmul
	.globl __gcc_qne
	.globl __gcc_qadd
	.globl __muldf3
	.globl __nedf2
	.globl __adddf3
	.globl __mulsf3
	.globl __nesf2
	.globl __addsf3
	.globl __gcc_dtoq
	.globl __floatsidf
	.globl __gcc_qgt
	.globl __gcc_qlt
	.globl __gcc_qtod
	.globl __ltsf2
	.globl __ltdf2
	.globl __subsf3
	.globl __gtsf2
	.globl __unordsf2
	.globl __subdf3
	.globl __gtdf2
	.globl __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 6
	.gnu_attribute 12, 2
	.section	.note.GNU-stack,"",@progbits
