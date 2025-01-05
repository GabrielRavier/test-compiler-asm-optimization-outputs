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
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 1,2,2
	bun- 1,.L258
	fcmpu 5,1,2
	bng- 5,.L261
	fsub 1,1,2
	blr
.L261:
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	blr
.L258:
	fmr 1,2
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
	fcmpu 0,1,1
	bunlr- 0
	fcmpu 1,2,2
	bun- 1,.L266
	fcmpu 5,1,2
	bng- 5,.L269
	fsubs 1,1,2
	blr
.L269:
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	blr
.L266:
	fmr 1,2
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
	fcmpu 0,1,1
	bun- 0,.L275
	fcmpu 1,2,2
	fmr 0,1
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 1,8(1)
	ld 9,8(1)
	stfd 2,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L283
	fcmpu 6,1,2
	bnl- 6,.L270
	fmr 1,2
.L270:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L283:
	.cfi_restore_state
	cmpwi 7,0,0
	fmr 1,2
	bne- 7,.L270
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L275:
	fmr 1,2
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
	fcmpu 0,1,1
	bun- 0,.L289
	fcmpu 1,2,2
	fmr 0,1
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	addi 9,1,8
	addi 10,1,8
	stfiwx 1,0,9
	lwz 0,8(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,8(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	bne- 5,.L297
	fcmpu 6,1,2
	bnl- 6,.L284
	fmr 1,2
.L284:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L297:
	.cfi_restore_state
	cmpwi 7,3,0
	fmr 1,2
	bne- 7,.L284
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L289:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun- 0,.L303
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 0,8(1)
	ld 9,8(1)
	stfd 11,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L310
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	bnl- 6,.L298
.L305:
	fmr 1,3
	fmr 2,4
.L298:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L310:
	.cfi_restore_state
	cmpwi 7,0,0
	bne- 7,.L305
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L303:
	fmr 1,3
	fmr 2,4
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
	fcmpu 0,1,1
	bun- 0,.L316
	fcmpu 1,2,2
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 1,8(1)
	ld 9,8(1)
	stfd 2,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	beq- 5,.L313
	cmpwi 7,0,0
	bne- 7,.L311
	fmr 1,2
.L311:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L313:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L315
	fmr 0,1
.L315:
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L316:
	fmr 1,2
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
	fcmpu 0,1,1
	bun- 0,.L329
	fcmpu 1,2,2
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	addi 9,1,8
	addi 10,1,8
	stfiwx 1,0,9
	lwz 0,8(1)
	stfiwx 2,0,10
	rlwinm 3,0,0,0,0
	lwz 4,8(1)
	rlwinm 5,4,0,0,0
	cmpw 5,3,5
	beq- 5,.L326
	cmpwi 7,3,0
	bne- 7,.L324
	fmr 1,2
.L324:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L326:
	.cfi_restore_state
	fcmpu 6,1,2
	fmr 0,2
	bnl- 6,.L328
	fmr 0,1
.L328:
	fmr 1,0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L329:
	fmr 1,2
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
	fmr 0,1
	fcmpu 0,0,0
	bun- 0,.L342
	fmr 11,3
	fcmpu 1,11,11
	bunlr- 1
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stfd 0,8(1)
	ld 9,8(1)
	stfd 11,8(1)
	srdi 0,9,63
	ld 10,8(1)
	srdi 3,10,63
	cmpw 5,0,3
	bne- 5,.L351
	fcmpu 6,1,3
	bne 6,$+8
	fcmpu 6,2,4
	blt- 6,.L337
.L349:
	fmr 1,3
	fmr 2,4
.L337:
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L351:
	.cfi_restore_state
	cmpwi 7,0,0
	beq- 7,.L349
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.L342:
	fmr 1,3
	fmr 2,4
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
	beq- 0,.L355
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(7)
	mr 10,3
.L354:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 0,4,8
	addi 10,10,1
	stb 0,-1(10)
	bne+ 0,.L354
	li 5,0
	stb 5,0(10)
	blr
.L355:
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
	beq- 0,.L365
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 4,0(3)
	cmpwi 1,4,0
	beqlr- 1
	stw 3,4(4)
	blr
.L365:
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
	beq- 0,.L367
	lwz 10,4(3)
	stw 10,4(9)
.L367:
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
	beq- 0,.L376
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,40(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L378
.L393:
	beq- 7,.L392
.L378:
	mr 4,31
	mr 3,27
	mtctr 25
	mr 26,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,28,30
	add 31,31,29
	bne+ 1,.L393
	lwz 25,20(1)
	.cfi_restore 25
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L375:
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
.L392:
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
.L376:
	cmpwi 5,29,0
	mullw 3,29,28
	addi 4,28,1
	stw 4,0(24)
	add 26,23,3
	beq- 5,.L375
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
	beq- 0,.L395
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
	b .L397
.L408:
	beq- 7,.L407
.L397:
	mr 4,31
	mr 3,29
	mtctr 27
	mr 25,31
	bctrl
	cmpwi 1,3,0
	addi 30,30,1
	cmplw 7,26,30
	add 31,31,28
	bne+ 1,.L408
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
.L407:
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
.L395:
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
.L417:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L411
	ble- 7,.L411
	cmpwi 1,10,43
	beq- 1,.L412
	cmpwi 6,10,45
	bne- 6,.L432
	lbz 10,1(3)
	addi 8,3,1
	addi 3,10,-48
	cmplwi 0,3,9
	bgt- 0,.L422
	li 5,1
.L415:
	li 3,0
.L419:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 6,3,2
	add 11,6,3
	addi 12,10,-48
	slwi 9,11,1
	cmplwi 1,12,9
	subf 3,7,9
	ble+ 1,.L419
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,7
	blr
.L411:
	addi 3,3,1
	b .L417
.L432:
	addi 4,10,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	ble+ 7,.L415
.L422:
	li 3,0
	blr
.L412:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L415
	b .L422
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L438:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L434
	ble- 7,.L434
	cmpwi 1,10,43
	beq- 1,.L435
	cmpwi 6,10,45
	beq- 6,.L436
	addi 4,10,-48
	mr 8,3
	cmplwi 7,4,9
	li 5,0
	bgt- 7,.L445
.L439:
	li 3,0
.L442:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 6,3,2
	add 11,6,3
	addi 12,10,-48
	slwi 9,11,1
	cmplwi 1,12,9
	subf 3,7,9
	ble+ 1,.L442
	cmpwi 5,5,0
	bnelr- 5
	subf 3,9,7
	blr
.L434:
	addi 3,3,1
	b .L438
.L436:
	lbz 10,1(3)
	addi 8,3,1
	li 5,1
	addi 3,10,-48
	cmplwi 0,3,9
	ble+ 0,.L439
.L445:
	li 3,0
	blr
.L435:
	lbz 10,1(3)
	addi 8,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	bgt- 5,.L445
	li 5,0
	b .L439
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L462:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L456
	ble- 7,.L456
	cmpwi 1,10,43
	beq- 1,.L457
	cmpwi 6,10,45
	bne- 6,.L477
	lbz 10,1(3)
	addi 3,3,1
	addi 4,10,-48
	cmplwi 0,4,9
	bgt- 0,.L467
	li 6,1
.L460:
	li 7,0
.L464:
	addi 8,10,-48
	lbzu 10,1(3)
	sldi 11,7,2
	add 12,11,7
	extsw 0,8
	addi 4,10,-48
	sldi 9,12,1
	cmplwi 1,4,9
	subf 7,0,9
	ble+ 1,.L464
	cmpwi 5,6,0
	bne- 5,.L455
	subf 7,9,0
.L455:
	srdi 4,7,32
	mr 3,7
	blr
.L456:
	addi 3,3,1
	b .L462
.L477:
	addi 5,10,-48
	li 6,0
	cmplwi 7,5,9
	ble+ 7,.L460
.L467:
	li 7,0
	b .L455
.L457:
	lbz 10,1(3)
	li 6,0
	addi 3,3,1
	addi 0,10,-48
	cmplwi 5,0,9
	ble+ 5,.L460
	li 7,0
	b .L455
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
	beq- 0,.L479
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
	b .L482
.L491:
	beq- 1,.L489
	cmpwi 5,31,0
	add 28,30,27
	beq- 5,.L490
.L482:
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
	bge+ 1,.L491
	mr 31,29
	cmpwi 5,31,0
	bne+ 5,.L482
.L490:
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
.L479:
	li 30,0
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L489:
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
	beq- 0,.L497
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L505:
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
	beq- 7,.L509
.L511:
	cmpwi 5,29,0
	ble- 7,.L495
	add 28,30,27
	bne+ 0,.L505
.L510:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L497:
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
.L495:
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
	beq- 5,.L510
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
	bne+ 7,.L511
.L509:
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
	beq- 0,.L523
.L520:
	cmpw 1,4,9
	beqlr- 1
	lwzu 9,4(3)
	cmpwi 5,9,0
	bne+ 5,.L520
.L523:
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
	beq+ 0,.L530
	b .L529
.L531:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L529
.L530:
	cmpwi 7,9,0
	bne+ 7,.L531
.L529:
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
.L535:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L535
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
	beq- 0,.L541
	mr 4,3
.L540:
	lwzu 10,4(4)
	cmpwi 1,10,0
	bne+ 1,.L540
	subf 3,3,4
	srawi 3,3,2
	blr
.L541:
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
	bne+ 0,.L544
	b .L552
.L555:
	beq- 7,.L546
	addi 3,3,4
	addi 4,4,4
	bdz .L552
.L544:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 1,9,10
	beq+ 1,.L555
.L546:
	lwz 0,0(3)
	lwz 4,0(4)
	cmpw 5,0,4
	blt- 5,.L556
	srawi 8,4,31
	srwi 3,0,31
	subfc 9,0,4
	adde 5,3,8
	xori 3,5,0x1
	blr
.L556:
	li 3,-1
	blr
.L552:
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
	beq- 0,.L561
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L578
.L564:
	srwi 0,5,1
	mtctr 0
.L558:
	lwz 5,0(3)
	cmpw 6,5,4
	beqlr- 6
	lwzu 6,4(3)
	cmpw 7,6,4
	beqlr- 7
	addi 3,3,4
	bdnz .L558
.L561:
	li 3,0
	blr
.L578:
	lwz 10,0(3)
	cmpw 1,10,4
	beqlr- 1
	cmpwi 5,9,0
	addi 3,3,4
	bne+ 5,.L564
	b .L561
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
	beq- 0,.L585
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L600
.L588:
	srwi 0,5,1
	mtctr 0
	b .L580
.L582:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,5,4
	cmpw 1,9,10
	bne- 1,.L597
	bdz .L585
.L580:
	lwz 9,0(3)
	addi 7,3,4
	addi 5,4,4
	lwz 10,0(4)
	cmpw 1,9,10
	beq+ 1,.L582
.L597:
	blt- 1,.L601
	srawi 4,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 6,3,4
	xori 3,6,0x1
	blr
.L600:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 1,9,10
	bne- 1,.L597
	cmpwi 5,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 5,.L588
.L585:
	li 3,0
	blr
.L601:
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
	beq- 0,.L603
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L603:
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
	bge- 1,.L639
	cmpwi 7,5,0
	beqlr- 7
	rldicl 11,5,0,32
	add 7,4,9
	andi. 10,11,0x1
	add 4,3,9
	addi 10,11,-1
	beq- 0,.L633
	mr. 11,10
	lwzu 8,-4(7)
	stwu 8,-4(4)
	beqlr- 0
.L633:
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
	bne+ 1,.L633
	blr
.L639:
	cmpwi 5,5,0
	addi 11,4,-4
	rldicl 5,5,0,32
	addi 12,3,-4
	beqlr- 5
	andi. 8,5,0x1
	addi 8,5,-1
	beq- 0,.L634
	mr. 5,8
	lwz 0,0(4)
	mr 11,4
	mr 12,3
	stw 0,0(3)
	beqlr- 0
.L634:
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
	bne+ 6,.L634
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
	ble- 1,.L646
	cmpwi 5,9,0
	mr 7,3
	beq- 5,.L643
	stw 4,0(3)
	addi 7,3,4
	addi 11,5,-2
.L643:
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
	beq- 0,.L687
	cmpdi 6,0,1
	beq- 6,.L672
	cmpdi 7,0,2
	beq- 7,.L673
	stdu 6,8(9)
	mr 8,12
.L673:
	stdu 6,8(9)
	addi 8,8,-1
.L672:
	addi 8,8,-1
	stdu 6,8(9)
	cmpdi 1,8,0
	beq- 1,.L686
.L687:
	addi 8,8,-4
	std 6,8(9)
	addi 9,9,32
	cmpdi 5,8,0
	std 6,-16(9)
	std 6,-8(9)
	std 6,0(9)
	bne+ 5,.L687
.L686:
	andi. 9,5,0x1
	beqlr- 0
	rlwinm 5,5,0,0,30
	slwi 0,5,2
	subf 11,5,11
	add 5,7,0
.L642:
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
.L646:
	mr 5,3
	b .L642
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
	bge- 0,.L690
	cmpwi 6,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 6
	rldicl 12,5,0,32
	andi. 9,12,0x1
	addi 7,12,-1
	beq- 0,.L751
	mr. 12,7
	lbzu 8,-1(3)
	stbu 8,-1(4)
	beqlr- 0
.L751:
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
	bne+ 7,.L751
	blr
.L690:
	beqlr- 0
	cmpwi 1,5,0
	beqlr- 1
	addi 9,5,-1
	cmplwi 5,9,6
	ble- 5,.L693
	or 0,4,3
	andi. 9,0,0x7
	bne- 0,.L693
	addi 6,3,1
	subf 7,6,4
	subfic 9,7,6
	subfe 8,8,8
	neg 10,8
	rlwinm 11,10,0,0xff
	cmpwi 6,11,0
	beq- 6,.L693
	rldicl 9,5,61,35
	addi 8,3,-8
	andi. 10,9,0x1
	addi 12,9,-1
	addi 10,4,-8
	beq- 0,.L753
	mr. 9,12
	ld 0,0(3)
	mr 8,3
	mr 10,4
	std 0,0(4)
	beq- 0,.L750
.L753:
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
	bne+ 7,.L753
.L750:
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
.L693:
	rldicl 5,5,0,32
	addi 10,3,-1
	andi. 9,5,0x1
	addi 8,5,-1
	addi 9,4,-1
	beq- 0,.L752
	mr. 5,8
	mr 10,3
	lbz 3,0(3)
	mr 9,4
	stb 3,0(4)
	beqlr- 0
.L752:
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
	bne+ 5,.L752
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
	b .L773
.L771:
	addi 9,9,1
	bne- 0,.L777
	bdz .L781
.L773:
	srw 8,3,9
	addi 9,9,1
	rldicl 4,8,0,63
	srw 0,3,9
	cmpdi 7,4,0
	andi. 10,0,0x1
	beq+ 7,.L771
.L777:
	mr 3,9
	blr
.L781:
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
	beq- 0,.L785
	andi. 3,3,0x1
	bnelr- 0
	li 3,1
.L784:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L784
	blr
.L785:
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
	lis 9,.LC3@ha
	li 3,1
	lfs 0,.LC3@l(9)
	fcmpu 0,1,0
	bltlr- 0
	lis 3,.LC4@ha
	lfs 2,.LC4@l(3)
	fcmpu 1,1,2
	mfcr 3,64
	rlwinm 3,3,6,1
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
	lis 9,.LC7@ha
	li 3,1
	lfd 0,.LC7@l(9)
	fcmpu 0,1,0
	bltlr- 0
	lis 3,.LC8@ha
	lfd 2,.LC8@l(3)
	fcmpu 1,1,2
	mfcr 3,64
	rlwinm 3,3,6,1
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
	lis 9,.LC11@ha
	la 3,.LC11@l(9)
	lfd 12,0(3)
	lfd 13,8(3)
	li 3,1
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	bltlr- 0
	lis 4,.LC12@ha
	la 5,.LC12@l(4)
	lfd 12,0(5)
	lfd 13,8(5)
	fcmpu 1,1,12
	bne 1,$+8
	fcmpu 1,2,13
	mfcr 3,64
	rlwinm 3,3,6,1
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
	lis 10,.LC0@ha
	lfd 3,.LC0@l(10)
	stw 4,8(1)
	addi 9,1,8
	lfiwax 0,0,9
	stfd 3,8(3)
	fcfid 1,0
	stfd 1,0(3)
	addi 1,1,16
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
	fcmpu 0,1,1
	bunlr- 0
	fadds 0,1,1
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,3,0
	blt- 5,.L813
	lis 9,.LC16@ha
	lfs 2,.LC16@l(9)
.L802:
	andi. 9,3,0x1
	beq- 0,.L803
.L804:
	fmuls 1,1,2
.L803:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmuls 2,2,2
	bne- 0,.L804
.L814:
	srawi 3,3,1
	addze 3,3
	fmuls 2,2,2
	andi. 9,3,0x1
	bne- 0,.L804
	b .L814
.L813:
	lis 4,.LC17@ha
	lfs 2,.LC17@l(4)
	b .L802
	.cfi_endproc
.LFE87:
	.size	ldexpf,.-ldexpf
	.align 2
	.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	fcmpu 0,1,1
	bunlr- 0
	fadd 0,1,1
	fcmpu 1,0,1
	beqlr- 1
	cmpwi 5,3,0
	blt- 5,.L828
	lis 9,.LC16@ha
	lfs 2,.LC16@l(9)
.L817:
	andi. 9,3,0x1
	beq- 0,.L818
.L819:
	fmul 1,1,2
.L818:
	srawi 3,3,1
	addze. 3,3
	beqlr- 0
	andi. 9,3,0x1
	fmul 2,2,2
	bne- 0,.L819
.L829:
	srawi 3,3,1
	addze 3,3
	fmul 2,2,2
	andi. 9,3,0x1
	bne- 0,.L819
	b .L829
.L828:
	lis 4,.LC17@ha
	lfs 2,.LC17@l(4)
	b .L817
	.cfi_endproc
.LFE88:
	.size	ldexp,.-ldexp
	.align 2
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stfd 28,16(1)
	.cfi_offset 60, -32
	fmr 28,1
	stfd 29,24(1)
	.cfi_offset 61, -24
	fmr 29,2
	fmr 0,28
	fcmpu 0,0,0
	bun- 0,.L831
	fmr 3,1
	mflr 0
	.cfi_register 65, 0
	stw 31,12(1)
	.cfi_offset 31, -36
	mr 31,3
	fmr 4,2
	stw 0,52(1)
	.cfi_offset 65, 4
	bl __gcc_qadd
	fcmpu 1,1,28
	bne 1,$+8
	fcmpu 1,2,29
	beq- 1,.L846
	cmpwi 5,31,0
	stfd 30,32(1)
	.cfi_offset 62, -16
	stfd 31,40(1)
	.cfi_offset 63, -8
	blt- 5,.L847
	lis 9,.LC22@ha
	la 3,.LC22@l(9)
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
	fmr 29,2
	fmr 28,1
.L833:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L845
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L834
.L848:
	fmr 3,30
	srawi 31,31,1
	addze 31,31
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	andi. 9,31,0x1
	fmr 31,2
	fmr 30,1
	bne- 0,.L834
	b .L848
.L845:
	lfd 30,32(1)
	.cfi_restore 62
	lfd 31,40(1)
	.cfi_restore 63
.L846:
	lwz 0,52(1)
	lwz 31,12(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L831:
	fmr 1,28
	lfd 28,16(1)
	fmr 2,29
	lfd 29,24(1)
	addi 1,1,48
	.cfi_restore 61
	.cfi_restore 60
	.cfi_def_cfa_offset 0
	blr
.L847:
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -36
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	lis 4,.LC23@ha
	la 5,.LC23@l(4)
	lfd 30,0(5)
	lfd 31,8(5)
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
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 0,1,0
	blt- 0,.L1010
	bnglr- 0
	fcmpu 1,2,0
	bnllr+ 1
	fneg 1,1
	blr
.L1010:
	fcmpu 5,2,0
	bnglr+ 5
	fneg 1,1
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
	blt- 1,.L1019
	subf 4,6,4
	add 0,3,4
	cmplw 5,3,0
	bgt- 5,.L1019
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L1016
.L1013:
	cmplw 1,0,9
	blt- 1,.L1019
.L1016:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 6,10,12
	bne+ 6,.L1013
	beqlr- 7
	subf 8,11,9
	mr 7,5
	add 4,8,6
	mr 8,11
	addi 10,4,-2
	mtctr 10
.L1014:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L1013
	bdnz .L1014
	blr
.L1019:
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
	beq- 0,.L1028
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L1028:
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
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,1,0
	blt- 7,.L1056
	lis 4,.LC31@ha
	li 10,0
	lfs 2,.LC31@l(4)
	fcmpu 0,1,2
	cror 2,1,2
	bne- 0,.L1057
.L1036:
	lis 12,.LC17@ha
	lis 9,.LC31@ha
	lfs 7,.LC17@l(12)
	li 11,0
	lfs 8,.LC31@l(9)
.L1042:
	fmul 1,1,7
	addi 11,11,1
	fcmpu 0,1,8
	cror 2,1,2
	beq+ 0,.L1042
	cmpwi 1,10,0
	stw 11,0(3)
	beqlr- 1
.L1059:
	fneg 1,1
	blr
.L1057:
	lis 5,.LC17@ha
	lfs 3,.LC17@l(5)
	fcmpu 1,1,3
	bnl- 1,.L1039
	bne- 7,.L1048
.L1039:
	li 0,0
	stw 0,0(3)
	blr
.L1056:
	lis 6,.LC27@ha
	fneg 12,1
	lfs 4,.LC27@l(6)
	fcmpu 5,1,4
	cror 22,20,22
	bne- 5,.L1058
	fmr 1,12
	li 10,1
	b .L1036
.L1058:
	lis 7,.LC29@ha
	lfs 5,.LC29@l(7)
	fcmpu 6,1,5
	bng- 6,.L1039
	li 10,1
.L1037:
	lis 8,.LC17@ha
	fmr 1,12
	li 11,0
	lfs 6,.LC17@l(8)
.L1044:
	fadd 1,1,1
	addi 11,11,-1
	fcmpu 7,1,6
	blt+ 7,.L1044
	cmpwi 1,10,0
	stw 11,0(3)
	bne+ 1,.L1059
	blr
.L1048:
	fmr 12,1
	b .L1037
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
	beq- 0,.L1060
.L1062:
	rldicl 9,0,0,63
	srdi 0,0,1
	cmpdi 1,0,0
	neg 7,9
	and 8,7,11
	sldi 11,11,1
	add 10,10,8
	bne+ 1,.L1062
.L1060:
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
	blt+ 0,.L1066
	b .L1094
.L1070:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1068
	blt- 7,.L1071
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1068
	bdz .L1069
.L1066:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1070
.L1071:
	li 3,0
.L1076:
	subfc 7,4,9
	srwi 4,4,1
	subfe 11,11,11
	addi 12,11,1
	andi. 5,12,0xff
	subfic 10,5,0
	beq- 0,.L1073
	mr 9,7
.L1073:
	subfe 6,6,6
	and 10,8,6
	srwi. 8,8,1
	or 3,3,10
	bne+ 0,.L1076
.L1069:
	cmpdi 1,0,0
	beqlr+ 1
	mr 3,9
	blr
.L1068:
	cmpwi 0,8,0
	bne+ 0,.L1071
	li 3,0
	b .L1069
.L1094:
	subfc 4,4,9
	subfe 3,3,3
	addi 7,3,1
	andi. 3,7,0xff
	beq- 0,.L1069
	mr 9,4
	b .L1069
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
	beq- 0,.L1098
	slwi 3,3,8
	cntlzw 4,3
	addi 3,4,-1
	blr
.L1098:
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
	beq- 0,.L1101
	cntlzd 6,5
	addi 3,6,-1
	blr
.L1101:
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
.L1104:
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
	bne+ 0,.L1104
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
	blt- 0,.L1112
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1174
.L1112:
	cmpwi 7,9,0
	addi 8,4,-8
	addi 10,3,-8
	beq- 7,.L1157
	andi. 7,9,0x1
	addi 0,9,-1
	beq- 0,.L1166
	mr. 9,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1160
.L1166:
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
	bne+ 5,.L1166
.L1160:
	cmplw 6,5,12
	blelr- 6
	subf 11,12,5
	addi 9,11,-1
	cmplwi 7,9,6
	ble- 7,.L1117
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
	beq- 1,.L1117
	or 0,6,7
	andi. 9,0,0x7
	bne- 0,.L1117
	rldicl 9,11,61,35
	addi 8,6,-8
	andi. 10,9,0x1
	addi 0,9,-1
	addi 10,7,-8
	beq- 0,.L1165
	mr. 9,0
	mr 8,6
	ld 6,0(6)
	mr 10,7
	std 6,0(7)
	beq- 0,.L1163
.L1165:
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
	bne+ 5,.L1165
.L1163:
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
.L1174:
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 0,5,-1
	beq- 0,.L1167
	mr. 5,0
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beqlr- 0
.L1167:
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
	bne+ 6,.L1167
	blr
.L1157:
	cmpwi 1,5,0
	mr 11,5
	beqlr- 1
.L1117:
	rldicl 7,11,0,32
	addi 0,12,-1
	andi. 9,7,0x1
	add 12,3,0
	add 4,4,0
	addi 3,7,-1
	beq- 0,.L1164
	mr. 7,3
	lbzu 11,1(4)
	stbu 11,1(12)
	beqlr- 0
.L1164:
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
	bne+ 7,.L1164
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
	blt- 0,.L1179
	add 9,4,5
	cmplw 1,9,3
	bge- 1,.L1224
.L1179:
	cmpwi 7,11,0
	beq- 7,.L1178
	addi 12,11,-1
	cmplwi 1,12,4
	ble- 1,.L1182
	or 10,4,3
	andi. 9,10,0x7
	bne- 0,.L1182
	addi 0,4,2
	subf 7,0,3
	subfic 9,7,4
	subfe 8,8,8
	neg 9,8
	rlwinm 6,9,0,0xff
	cmpwi 5,6,0
	beq- 5,.L1182
	rldicl 9,5,61,35
	srwi 12,5,3
	andi. 10,9,0x1
	addi 0,9,-1
	addi 8,4,-8
	addi 10,3,-8
	beq- 0,.L1220
	mr. 9,0
	ld 7,0(4)
	mr 8,4
	mr 10,3
	std 7,0(3)
	beq- 0,.L1218
.L1220:
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
	bne+ 6,.L1220
.L1218:
	slwi 9,12,2
	cmplw 7,11,9
	beq- 7,.L1178
	addi 8,9,1
	slwi 12,12,3
	cmplw 1,11,8
	lhzx 10,4,12
	sthx 10,3,12
	ble- 1,.L1178
	addi 6,9,2
	addi 7,12,2
	cmplw 5,11,6
	lhzx 11,4,7
	sthx 11,3,7
	ble- 5,.L1178
	addi 0,12,4
	lhzx 9,4,0
	sthx 9,3,0
.L1178:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 4,4,5
	stbx 4,3,5
	blr
.L1224:
	cmpwi 5,5,0
	add 3,3,5
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1221
	mr. 5,10
	lbzu 0,-1(9)
	stbu 0,-1(3)
	beqlr- 0
.L1221:
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
	bne+ 6,.L1221
	blr
.L1182:
	andi. 9,11,0x1
	addi 10,4,-2
	addi 8,11,-1
	addi 9,3,-2
	beq- 0,.L1219
	mr. 11,8
	lhz 12,0(4)
	mr 10,4
	mr 9,3
	sth 12,0(3)
	beq- 0,.L1178
.L1219:
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
	bne+ 6,.L1219
	b .L1178
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
	blt- 0,.L1229
	add 10,4,5
	cmplw 1,10,3
	bge- 1,.L1291
.L1229:
	cmpwi 7,9,0
	addi 8,4,-4
	addi 10,3,-4
	beq- 7,.L1274
	andi. 7,9,0x1
	addi 0,9,-1
	beq- 0,.L1283
	mr. 9,0
	lwz 7,0(4)
	mr 8,4
	mr 10,3
	stw 7,0(3)
	beq- 0,.L1277
.L1283:
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
	bne+ 5,.L1283
.L1277:
	cmplw 6,5,12
	blelr- 6
	subf 11,12,5
	addi 9,11,-1
	cmplwi 7,9,6
	ble- 7,.L1234
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
	beq- 1,.L1234
	or 0,6,7
	andi. 9,0,0x7
	bne- 0,.L1234
	rldicl 9,11,61,35
	addi 8,6,-8
	andi. 10,9,0x1
	addi 0,9,-1
	addi 10,7,-8
	beq- 0,.L1282
	mr. 9,0
	mr 8,6
	ld 6,0(6)
	mr 10,7
	std 6,0(7)
	beq- 0,.L1280
.L1282:
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
	bne+ 5,.L1282
.L1280:
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
.L1291:
	cmpwi 5,5,0
	add 3,3,5
	mr 9,10
	rldicl 5,5,0,32
	beqlr- 5
	andi. 10,5,0x1
	addi 0,5,-1
	beq- 0,.L1284
	mr. 5,0
	lbzu 4,-1(9)
	stbu 4,-1(3)
	beqlr- 0
.L1284:
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
	bne+ 6,.L1284
	blr
.L1274:
	cmpwi 1,5,0
	mr 11,5
	beqlr- 1
.L1234:
	rldicl 7,11,0,32
	addi 0,12,-1
	andi. 9,7,0x1
	add 12,3,0
	add 4,4,0
	addi 3,7,-1
	beq- 0,.L1281
	mr. 7,3
	lbzu 11,1(4)
	stbu 11,1(12)
	beqlr- 0
.L1281:
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
	bne+ 7,.L1281
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
	stw 3,8(1)
	addi 9,1,8
	lfiwzx 1,0,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	fcfid 1,1
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
	stw 3,8(1)
	addi 9,1,8
	lfiwzx 1,0,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	fcfids 1,1
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
	std 9,8(1)
	lfd 1,8(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	fcfidu 1,1
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
	rldicl 3,3,0,32
	sldi 4,4,32
	or 9,3,4
	std 9,8(1)
	lfd 1,8(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	fcfidus 1,1
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
	bne- 0,.L1305
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1306
	srwi. 10,9,12
	bne- 0,.L1307
	srwi. 10,9,11
	bne- 0,.L1308
	srwi. 10,9,10
	bne- 0,.L1309
	srwi. 10,9,9
	bne- 0,.L1310
	srwi. 10,9,8
	bne- 0,.L1311
	srwi. 10,9,7
	bne- 0,.L1312
	srwi. 10,9,6
	bne- 0,.L1313
	srwi. 10,9,5
	bne- 0,.L1314
	srwi. 10,9,4
	bne- 0,.L1315
	srwi. 10,9,3
	bne- 0,.L1316
	srwi. 10,9,2
	bne- 0,.L1317
	srwi. 10,9,1
	bne- 0,.L1318
	cntlzw 0,9
	srwi 3,0,5
	addi 3,3,15
	blr
.L1305:
	li 3,0
	blr
.L1316:
	li 3,12
	blr
.L1306:
	li 3,2
	blr
.L1307:
	li 3,3
	blr
.L1308:
	li 3,4
	blr
.L1309:
	li 3,5
	blr
.L1310:
	li 3,6
	blr
.L1311:
	li 3,7
	blr
.L1312:
	li 3,8
	blr
.L1313:
	li 3,9
	blr
.L1314:
	li 3,10
	blr
.L1315:
	li 3,11
	blr
.L1317:
	li 3,13
	blr
.L1318:
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
	bne- 0,.L1323
	andi. 9,3,0x2
	bne- 0,.L1324
	andi. 9,3,0x4
	bne- 0,.L1325
	andi. 9,3,0x8
	bne- 0,.L1326
	andi. 9,3,0x10
	bne- 0,.L1327
	andi. 9,3,0x20
	bne- 0,.L1328
	andi. 9,3,0x40
	bne- 0,.L1329
	andi. 9,3,0x80
	bne- 0,.L1330
	andi. 9,3,0x100
	bne- 0,.L1331
	andi. 9,3,0x200
	bne- 0,.L1332
	andi. 9,3,0x400
	bne- 0,.L1333
	andi. 9,3,0x800
	bne- 0,.L1334
	andi. 9,3,0x1000
	bne- 0,.L1335
	andi. 9,3,0x2000
	bne- 0,.L1336
	andi. 9,3,0x4000
	bne- 0,.L1337
	srawi 3,3,15
	cntlzw 0,3
	srwi 4,0,5
	addi 3,4,15
	blr
.L1323:
	li 3,0
	blr
.L1324:
	li 3,1
	blr
.L1335:
	li 3,12
	blr
.L1325:
	li 3,2
	blr
.L1326:
	li 3,3
	blr
.L1327:
	li 3,4
	blr
.L1328:
	li 3,5
	blr
.L1329:
	li 3,6
	blr
.L1330:
	li 3,7
	blr
.L1331:
	li 3,8
	blr
.L1332:
	li 3,9
	blr
.L1333:
	li 3,10
	blr
.L1334:
	li 3,11
	blr
.L1336:
	li 3,13
	blr
.L1337:
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
	lis 9,.LC35@ha
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lfs 0,.LC35@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne- 0,.L1346
	fctiwz 1,1
	addi 3,1,8
	stfiwx 1,0,3
	lwz 3,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	blr
.L1346:
	.cfi_restore_state
	fsubs 2,1,0
	addi 4,1,12
	fctiwz 3,2
	stfiwx 3,0,4
	lwz 5,12(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	addis 6,5,0x1
	addi 3,6,-32768
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
.L1351:
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
	bne+ 0,.L1351
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
.L1357:
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
	bne+ 0,.L1357
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
	blt+ 0,.L1363
	b .L1391
.L1367:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1365
	blt- 7,.L1368
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1365
	bdz .L1366
.L1363:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1367
.L1368:
	li 3,0
.L1373:
	subfc 7,4,9
	srwi 4,4,1
	subfe 6,6,6
	addi 11,6,1
	andi. 12,11,0xff
	subfic 10,12,0
	beq- 0,.L1370
	mr 9,7
.L1370:
	subfe 10,10,10
	and 0,8,10
	srwi. 8,8,1
	or 3,3,0
	bne+ 0,.L1373
.L1366:
	cmpwi 1,5,0
	beqlr+ 1
	mr 3,9
	blr
.L1365:
	cmpwi 0,8,0
	bne+ 0,.L1368
	li 3,0
	b .L1366
.L1391:
	subfc 4,4,9
	subfe 3,3,3
	addi 0,3,1
	andi. 3,0,0xff
	beq- 0,.L1366
	mr 9,4
	b .L1366
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	fcmpu 0,1,2
	li 3,-1
	bltlr- 0
	mfcr 3,128
	rlwinm 3,3,2,1
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
	fcmpu 0,1,2
	li 3,-1
	bltlr- 0
	mfcr 3,128
	rlwinm 3,3,2,1
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
	blt- 0,.L1415
	beq- 0,.L1407
	li 6,0
.L1403:
	li 10,32
	li 3,0
	b .L1406
.L1416:
	beq- 7,.L1405
.L1406:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 0,9
	and 5,0,8
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 3,3,5
	slwi 8,8,1
	bne+ 0,.L1416
.L1405:
	cmpwi 1,6,0
	beqlr- 1
	neg 3,3
	blr
.L1415:
	neg 4,4
	li 6,1
	b .L1403
.L1407:
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
	bge+ 0,.L1418
	neg 3,3
	li 9,0
	li 5,1
.L1418:
	cmpwi 1,4,0
	bge+ 1,.L1419
	neg 4,4
	mr 5,9
.L1419:
	cmplw 5,3,4
	li 8,16
	mr 7,3
	mr 11,4
	li 10,1
	mtctr 8
	bgt+ 5,.L1420
	b .L1448
.L1424:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 7,3,11
	ble- 7,.L1425
	bdz .L1425
.L1420:
	slwi 11,11,1
	slwi 10,10,1
	cmplw 6,3,11
	bgt+ 6,.L1424
.L1425:
	cmpwi 0,10,0
	li 3,0
	beq- 0,.L1423
.L1422:
	subfc 6,11,7
	srwi 11,11,1
	subfe 4,4,4
	addi 0,4,1
	andi. 12,0,0xff
	subfic 8,12,0
	beq- 0,.L1427
	mr 7,6
.L1427:
	subfe 9,9,9
	and 8,10,9
	srwi. 10,10,1
	or 3,3,8
	bne+ 0,.L1422
.L1423:
	cmpwi 1,5,0
	beqlr- 1
	neg 3,3
	blr
.L1448:
	subfc 4,4,3
	subfe 3,3,3
	addi 3,3,1
	b .L1423
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
	bge+ 0,.L1452
	neg 8,3
	li 6,1
.L1452:
	srawi 9,4,31
	li 7,16
	xor 4,9,4
	mr 3,8
	subf 9,9,4
	li 11,1
	cmplw 1,8,9
	mtctr 7
	bgt+ 1,.L1453
	b .L1481
.L1457:
	slwi 9,9,1
	slwi 11,11,1
	cmplw 7,8,9
	ble- 7,.L1458
	bdz .L1458
.L1453:
	slwi 9,9,1
	slwi 11,11,1
	cmplw 6,8,9
	bgt+ 6,.L1457
.L1458:
	cmpwi 0,11,0
	beq- 0,.L1484
.L1455:
	subfc 8,9,3
	subf 4,9,3
	subfe 12,12,12
	srwi. 11,11,1
	addi 8,12,1
	srwi 9,9,1
	rlwinm 7,8,0,0xff
	cmpwi 1,7,0
	beq- 1,.L1460
	mr 3,4
.L1460:
	bne+ 0,.L1455
.L1456:
	cmpwi 5,6,0
	beqlr- 5
.L1485:
	neg 3,3
	blr
.L1484:
	cmpwi 5,6,0
	mr 3,8
	beqlr- 5
	b .L1485
.L1481:
	subfc 9,9,8
	subfe 10,10,10
	addi 0,10,1
	rlwinm 5,0,0,0xff
	cmpwi 5,5,0
	beq- 5,.L1456
	mr 3,9
	b .L1456
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
	bge- 0,.L1672
	andi. 9,4,0x8000
	bne- 0,.L1491
	rlwinm 9,4,1,16,30
	cmplw 5,3,9
	ble- 5,.L1564
	andi. 10,9,0x8000
	bne- 0,.L1564
	rlwinm 9,4,2,16,29
	cmplw 6,3,9
	ble- 6,.L1566
	andi. 10,9,0x8000
	bne- 0,.L1566
	rlwinm 9,4,3,16,28
	cmplw 7,3,9
	ble- 7,.L1568
	andi. 10,9,0x8000
	bne- 0,.L1568
	rlwinm 9,4,4,16,27
	cmplw 1,3,9
	ble- 1,.L1570
	andi. 10,9,0x8000
	bne- 0,.L1570
	rlwinm 9,4,5,16,26
	cmplw 5,3,9
	ble- 5,.L1572
	andi. 10,9,0x8000
	bne- 0,.L1572
	rlwinm 9,4,6,16,25
	cmplw 6,3,9
	ble- 6,.L1574
	andi. 10,9,0x8000
	bne- 0,.L1574
	rlwinm 9,4,7,16,24
	cmplw 7,3,9
	ble- 7,.L1576
	andi. 10,9,0x8000
	bne- 0,.L1576
	rlwinm 9,4,8,16,23
	cmplw 1,3,9
	ble- 1,.L1578
	andi. 10,9,0x8000
	bne- 0,.L1578
	rlwinm 9,4,9,16,22
	cmplw 5,3,9
	ble- 5,.L1580
	andi. 10,9,0x8000
	bne- 0,.L1580
	rlwinm 9,4,10,16,21
	cmplw 6,3,9
	ble- 6,.L1582
	andi. 10,9,0x8000
	bne- 0,.L1582
	rlwinm 9,4,11,16,20
	cmplw 7,3,9
	ble- 7,.L1584
	andi. 10,9,0x8000
	bne- 0,.L1584
	rlwinm 9,4,12,16,19
	cmplw 1,3,9
	ble- 1,.L1586
	andi. 10,9,0x8000
	bne- 0,.L1586
	rlwinm 9,4,13,16,18
	cmplw 5,3,9
	ble- 5,.L1588
	andi. 10,9,0x8000
	bne- 0,.L1588
	rlwinm 9,4,14,16,17
	cmplw 6,3,9
	ble- 6,.L1590
	andi. 10,9,0x8000
	bne- 0,.L1590
	rlwinm 8,4,15,16,16
	cmplw 7,3,8
	ble- 7,.L1591
	cmpwi 1,8,0
	li 11,0
	bne- 1,.L1591
.L1494:
	cmpwi 5,5,0
	beq+ 5,.L1553
	mr 11,3
.L1553:
	rlwinm 3,11,0,0xffff
	blr
.L1564:
	li 12,2
.L1493:
	subfc 6,9,3
	rlwinm 10,3,0,0xffff
	subfe 4,4,4
	rlwinm 0,6,0,0xffff
	addi 7,4,1
	rlwinm 11,7,0,0xff
	cmpwi 5,11,0
	beq- 5,.L1560
	rlwinm 10,0,0,0xffff
.L1560:
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
	beq- 6,.L1496
	rlwinm 3,4,0,0xffff
.L1496:
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
	beq- 0,.L1494
	subfc 7,7,3
	subfe 10,10,10
	rlwinm 11,7,0,0xffff
	addi 6,10,1
	andi. 0,6,0xff
	beq- 0,.L1500
	mr 3,11
.L1500:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1502
	mr 7,4
.L1502:
	srwi. 6,8,3
	or 12,12,7
	mr 11,12
	srwi 4,8,3
	srwi 10,9,3
	beq- 0,.L1494
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1504
	mr 3,0
.L1504:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1506
	mr 7,4
.L1506:
	srwi. 6,8,4
	or 12,12,7
	mr 11,12
	srwi 4,8,4
	srwi 0,9,4
	beq- 0,.L1494
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1508
	mr 3,10
.L1508:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1510
	mr 7,4
.L1510:
	srwi. 6,8,5
	or 12,12,7
	mr 11,12
	srwi 4,8,5
	srwi 10,9,5
	beq- 0,.L1494
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1512
	mr 3,0
.L1512:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1514
	mr 7,4
.L1514:
	srwi. 6,8,6
	or 12,12,7
	mr 11,12
	srwi 4,8,6
	srwi 0,9,6
	beq- 0,.L1494
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1516
	mr 3,10
.L1516:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1518
	mr 7,4
.L1518:
	srwi. 6,8,7
	or 12,12,7
	mr 11,12
	srwi 4,8,7
	srwi 10,9,7
	beq- 0,.L1494
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1520
	mr 3,0
.L1520:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1522
	mr 7,4
.L1522:
	srwi. 6,8,8
	or 12,12,7
	mr 11,12
	srwi 4,8,8
	srwi 0,9,8
	beq- 0,.L1494
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1524
	mr 3,10
.L1524:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1526
	mr 7,4
.L1526:
	srwi. 6,8,9
	or 12,12,7
	mr 11,12
	srwi 4,8,9
	srwi 10,9,9
	beq- 0,.L1494
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1528
	mr 3,0
.L1528:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1530
	mr 7,4
.L1530:
	srwi. 6,8,10
	or 12,12,7
	mr 11,12
	srwi 4,8,10
	srwi 0,9,10
	beq- 0,.L1494
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1532
	mr 3,10
.L1532:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1534
	mr 7,4
.L1534:
	srwi. 6,8,11
	or 12,12,7
	mr 11,12
	srwi 4,8,11
	srwi 10,9,11
	beq- 0,.L1494
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1536
	mr 3,0
.L1536:
	cmpwi 1,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 1,.L1538
	mr 7,4
.L1538:
	srwi. 6,8,12
	or 12,12,7
	mr 11,12
	srwi 4,8,12
	srwi 0,9,12
	beq- 0,.L1494
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1540
	mr 3,10
.L1540:
	cmpwi 5,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 5,.L1542
	mr 7,4
.L1542:
	srwi. 6,8,13
	or 12,12,7
	mr 11,12
	srwi 4,8,13
	srwi 10,9,13
	beq- 0,.L1494
	subfc 7,10,3
	subfe 11,11,11
	rlwinm 0,7,0,0xffff
	addi 6,11,1
	andi. 10,6,0xff
	beq- 0,.L1544
	mr 3,0
.L1544:
	cmpwi 6,10,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 6,.L1546
	mr 7,4
.L1546:
	srwi. 6,8,14
	or 12,12,7
	mr 11,12
	srwi 4,8,14
	srwi 0,9,14
	beq- 0,.L1494
	subfc 7,0,3
	subfe 11,11,11
	rlwinm 10,7,0,0xffff
	addi 6,11,1
	andi. 0,6,0xff
	beq- 0,.L1548
	mr 3,10
.L1548:
	cmpwi 7,0,0
	rlwinm 3,3,0,0xffff
	li 7,0
	beq- 7,.L1550
	mr 7,4
.L1550:
	cmpwi 1,8,16384
	or 12,12,7
	srwi 9,9,15
	mr 11,12
	beq- 1,.L1494
	subfc 9,9,3
	subfe 8,8,8
	rlwinm 4,9,0,0xffff
	addi 11,8,1
	andi. 10,11,0xff
	beq- 0,.L1552
	mr 3,4
.L1552:
	rlwinm 3,3,0,0xffff
	or 11,12,10
	b .L1494
.L1566:
	li 12,4
	b .L1493
.L1568:
	li 12,8
	b .L1493
.L1570:
	li 12,16
	b .L1493
.L1580:
	li 12,512
	b .L1493
.L1572:
	li 12,32
	b .L1493
.L1574:
	li 12,64
	b .L1493
.L1576:
	li 12,128
	b .L1493
.L1578:
	li 12,256
	b .L1493
.L1672:
	xor 6,4,3
	subf 4,4,3
	cntlzw 0,6
	rlwinm 7,4,0,0xffff
	srwi 11,0,5
	cmpwi 1,11,0
	beq- 1,.L1670
	mr 3,7
.L1670:
	rlwinm 3,3,0,0xffff
	b .L1494
.L1582:
	li 12,1024
	b .L1493
.L1584:
	li 12,2048
	b .L1493
.L1586:
	li 12,4096
	b .L1493
.L1588:
	li 12,8192
	b .L1493
.L1590:
	li 12,16384
	b .L1493
.L1591:
	li 10,0
	li 12,-32768
	ori 9,10,0x8000
	b .L1493
.L1491:
	subf 3,4,3
	li 11,1
	rlwinm 3,3,0,0xffff
	b .L1494
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
	bgt+ 0,.L1674
	b .L1702
.L1678:
	slwi 4,4,1
	slwi 8,8,1
	cmplw 5,9,4
	cmpwi 7,4,0
	ble- 5,.L1676
	blt- 7,.L1679
	slwi 4,4,1
	slwi 8,8,1
	cmplw 6,9,4
	ble- 6,.L1676
	bdz .L1677
.L1674:
	cmpwi 1,4,0
	addi 3,3,-2
	bge+ 1,.L1678
.L1679:
	li 3,0
.L1684:
	subfc 7,4,9
	srwi 4,4,1
	subfe 6,6,6
	addi 11,6,1
	andi. 12,11,0xff
	subfic 10,12,0
	beq- 0,.L1681
	mr 9,7
.L1681:
	subfe 10,10,10
	and 0,8,10
	srwi. 8,8,1
	or 3,3,0
	bne+ 0,.L1684
.L1677:
	cmpwi 1,5,0
	beqlr+ 1
	mr 3,9
	blr
.L1676:
	cmpwi 0,8,0
	bne+ 0,.L1679
	li 3,0
	b .L1677
.L1702:
	subfc 4,4,9
	subfe 3,3,3
	addi 0,3,1
	andi. 3,0,0xff
	beq- 0,.L1677
	mr 9,4
	b .L1677
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
	beq- 0,.L1705
	addi 5,5,-32
	li 11,0
	slw 8,0,5
.L1706:
	sldi 12,8,32
	or 4,11,12
.L1704:
	mr 3,4
	srdi 4,4,32
	blr
.L1705:
	cmpwi 1,5,0
	mr 4,0
	beq- 1,.L1704
	subfic 9,5,32
	sradi 10,0,32
	srw 6,0,9
	slw 7,10,5
	or 8,6,7
	slw 11,0,5
	b .L1706
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
	beq- 0,.L1711
	sradi 11,0,32
	addi 12,5,-32
	sraw 10,11,12
	srawi 5,11,31
.L1712:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1710:
	srdi 4,6,32
	mr 3,6
	blr
.L1711:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1710
	sradi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	sraw 5,6,5
	b .L1712
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
	bne- 0,.L1719
	subfic 5,4,2
	add 3,0,10
	add 3,5,3
	blr
.L1719:
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
	blt- 0,.L1723
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 9,64
	rlwinm 9,9,6,1
	addi 3,9,1
	blr
.L1723:
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
	blt- 0,.L1729
	li 3,1
	bgtlr- 0
	cmplw 1,9,0
	li 3,-1
	bltlr- 1
	subfc 9,9,0
	subfe 7,7,7
	neg 3,7
	blr
.L1729:
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
	beq- 0,.L1734
	addi 12,5,-32
	srdi 11,0,32
	srw 10,11,12
	li 5,0
.L1735:
	rldicl 3,10,0,32
	sldi 4,5,32
	or 6,4,3
.L1733:
	srdi 4,6,32
	mr 3,6
	blr
.L1734:
	cmpwi 1,5,0
	mr 6,0
	beq- 1,.L1733
	srdi 6,0,32
	subfic 9,5,32
	srw 7,0,5
	slw 8,6,9
	or 10,8,7
	srw 5,6,5
	b .L1735
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
	andi. 9,3,0x1
	lis 8,.LC31@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC31@l(8)
	beq- 0,.L1747
.L1749:
	fmul 1,1,0
.L1747:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1748
	andi. 10,9,0x1
	fmul 0,0,0
	bne- 0,.L1749
.L1753:
	srawi 9,9,1
	addze 9,9
	fmul 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1749
	b .L1753
.L1748:
	cmpwi 1,3,0
	bgelr+ 1
	lfs 2,.LC31@l(8)
	fdiv 1,2,1
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
	andi. 9,3,0x1
	lis 8,.LC31@ha
	fmr 0,1
	mr 9,3
	lfs 1,.LC31@l(8)
	beq- 0,.L1755
.L1757:
	fmuls 1,1,0
.L1755:
	srawi 9,9,1
	addze. 9,9
	beq- 0,.L1756
	andi. 10,9,0x1
	fmuls 0,0,0
	bne- 0,.L1757
.L1761:
	srawi 9,9,1
	addze 9,9
	fmuls 0,0,0
	andi. 10,9,0x1
	bne- 0,.L1757
	b .L1761
.L1756:
	cmpwi 1,3,0
	bgelr+ 1
	lfs 2,.LC31@l(8)
	fdivs 1,2,1
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
	blt- 0,.L1764
	li 3,2
	bgtlr- 0
	cmplw 1,0,7
	li 3,0
	bltlr- 1
	mfcr 8,64
	rlwinm 8,8,6,1
	addi 3,8,1
	blr
.L1764:
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
	blt- 0,.L1770
	li 3,1
	bgtlr- 0
	cmplw 1,0,7
	li 3,-1
	bltlr- 1
	subfc 9,0,7
	subfe 8,8,8
	neg 3,8
	blr
.L1770:
	li 3,-1
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.set	.LC0,.LC22+8
	.set	.LC1,.LC22
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC3:
	.long	-8388609
	.align 2
.LC4:
	.long	2139095039
	.set	.LC7,.LC11
	.set	.LC8,.LC12
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC11:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC12:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.set	.LC16,.LC22+4
	.section	.rodata.cst4
	.align 2
.LC17:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
.LC22:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 4
.LC23:
	.long	0
	.long	1071644672
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
.LC35:
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
	.gnu_attribute 12, 2
	.section	.note.GNU-stack,"",@progbits
