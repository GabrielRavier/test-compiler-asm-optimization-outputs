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
	cmpwi 0,5,0
	add 4,4,5
	add 9,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L29
	cmpwi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 0
.L29:
	srwi 10,5,1
	mtctr 10
.L4:
	lbz 7,-1(4)
	mr 8,4
	addi 10,9,-1
	addi 4,4,-2
	addi 9,9,-2
	stb 7,1(9)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L4
	blr
.L2:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmplwi 0,9,4
	ble- 0,.L5
	or 10,4,3
	andi. 10,10,0x3
	bne- 0,.L5
	addi 10,4,1
	subf 10,10,3
	subfic 10,10,2
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L5
	srwi 9,5,2
	addi 10,4,-4
	andi. 8,9,0x1
	addi 7,9,-1
	addi 8,3,-4
	bne- 0,.L55
.L35:
	srwi 9,9,1
	mtctr 9
.L6:
	lwz 6,4(10)
	mr 7,10
	addi 9,8,4
	addi 10,10,8
	addi 8,8,8
	stw 6,-4(8)
	lwz 7,8(7)
	stw 7,4(9)
	bdnz .L6
.L50:
	andi. 9,5,0x3
	rlwinm 9,5,0,0,29
	add 8,4,9
	add 10,3,9
	subf 5,9,5
	beqlr- 0
	cmplwi 0,5,1
	lbzx 7,4,9
	stbx 7,3,9
	beqlr- 0
	cmplwi 0,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr- 0
	lbz 9,2(8)
	stb 9,2(10)
	blr
.L55:
	cmpwi 0,7,0
	lwz 7,0(4)
	mr 10,4
	mr 8,3
	stw 7,0(3)
	bne+ 0,.L35
	b .L50
.L5:
	andi. 10,9,0x1
	addi 8,3,-1
	addi 10,4,-1
	bne- 0,.L56
.L32:
	srwi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L9
.L57:
	lbz 9,1(9)
	addi 8,8,2
	stb 9,1(7)
.L9:
	lbz 6,1(10)
	addi 9,10,1
	addi 7,8,1
	addi 10,10,2
	stb 6,1(8)
	bdnz .L57
	blr
.L56:
	lbz 7,0(4)
	mr 10,4
	mr 8,3
	stb 7,0(3)
	b .L32
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
	beq- 0,.L59
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L79
.L69:
	srwi 10,6,1
	mtctr 10
	b .L60
.L62:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq- 0,.L77
	addi 3,3,1
	bdz .L59
.L60:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne+ 0,.L62
.L77:
	addi 3,3,1
	blr
.L79:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq- 0,.L77
	cmpwi 0,8,0
	addi 3,3,1
	bne+ 0,.L69
.L59:
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
	beq- 0,.L84
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L100
.L87:
	srwi 9,5,1
	mtctr 9
.L81:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	bdnz .L81
.L84:
	li 3,0
	blr
.L100:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpwi 0,9,0
	addi 3,3,1
	bne+ 0,.L87
	b .L84
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
	beq- 0,.L106
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L120
.L109:
	srwi 9,5,1
	mtctr 9
	b .L102
.L104:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,8,1
	cmpw 0,10,9
	bne- 0,.L118
	bdz .L106
.L102:
	lbz 10,0(3)
	addi 7,3,1
	addi 8,4,1
	lbz 9,0(4)
	cmpw 0,10,9
	beq+ 0,.L104
.L118:
	subf 3,9,10
	blr
.L120:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L118
	cmpwi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 0,.L109
.L106:
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
	beq- 0,.L122
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L122:
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
	add 9,3,5
	rlwinm 4,4,0,0xff
	beq- 0,.L132
	mr 3,9
	addi 9,9,-1
	lbz 8,0(3)
	cmpw 0,8,4
	beqlr- 0
.L132:
	srwi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L139
.L130:
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr- 0
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr- 0
	bdnz .L130
.L139:
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
	beq- 0,.L143
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L143:
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
.L147:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr- 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne+ 0,.L147
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
	cmpw 0,9,4
	beqlr- 0
.L158:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L158
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
.L161:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L161
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
	beq+ 0,.L166
	b .L165
.L167:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 0,9,10
	bne- 0,.L165
.L166:
	cmpwi 0,9,0
	bne+ 0,.L167
.L165:
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
	beq- 0,.L173
	mr 9,3
.L172:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L172
	subf 3,3,9
	blr
.L173:
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
	beq- 0,.L183
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	cmpwi 0,10,0
	subf 5,3,5
	addi 9,5,1
	mtctr 9
	bne+ 0,.L179
	b .L186
.L188:
	bdz .L178
	bne- 7,.L178
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq- 0,.L187
	mr 4,8
.L179:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne+ 0,.L188
.L178:
	subf 3,9,10
	blr
.L183:
	li 3,0
	blr
.L187:
	lbz 9,1(4)
	subf 3,9,10
	blr
.L186:
	lbz 9,0(4)
	b .L178
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
	srwi 5,5,1
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L199
.L194:
	srwi 9,5,1
	mtctr 9
.L191:
	lbz 6,1(3)
	mr 9,4
	addi 3,3,4
	lbz 5,-1(3)
	addi 4,4,4
	lbz 7,-4(3)
	lbz 8,-2(3)
	stb 5,-2(4)
	stb 6,-4(4)
	stb 7,-3(4)
	stb 8,3(9)
	bdnz .L191
	blr
.L199:
	cmpwi 0,9,0
	lbz 10,1(3)
	addi 4,4,2
	lbz 9,0(3)
	addi 3,3,2
	stb 10,-2(4)
	stb 9,-1(4)
	bne+ 0,.L194
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
	addi 3,3,-97
	subfic 3,3,25
	subfe 3,3,3
	addi 3,3,1
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
	beq- 0,.L204
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L204:
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
	ble- 0,.L207
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L207:
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
	subfe 3,3,3
	addi 3,3,1
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
	subfe 3,3,3
	addi 3,3,1
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
	subfe 3,3,3
	addi 3,3,1
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
	subfe 3,3,3
	addi 3,3,1
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
	beq- 0,.L214
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
	blr
.L214:
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
	subfe 3,3,3
	addi 3,3,1
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
	ble- 0,.L218
	addi 10,3,-127
	li 3,1
	cmplwi 0,10,32
	blelr- 0
	addi 10,9,-8232
	cmplwi 0,10,1
	blelr- 0
	addis 9,9,0xffff
	addi 9,9,7
	subfic 9,9,2
	subfe 3,3,3
	addi 3,3,1
	blr
.L218:
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
	subfe 3,3,3
	addi 3,3,1
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
	ble- 0,.L229
	cmplwi 0,3,8231
	li 3,1
	blelr- 0
	addi 10,9,-8234
	cmplwi 0,10,47061
	blelr- 0
	addis 10,9,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	blelr- 0
	lis 8,0x10
	addi 10,10,4
	ori 8,8,0x3
	li 3,0
	cmplw 0,10,8
	bgtlr- 0
	rlwinm 9,9,0,16,30
	xori 9,9,0xfffe
	addic 3,9,-1
	subfe 3,3,9
	blr
.L229:
	addi 9,3,1
	rlwinm 9,9,0,25,31
	subfic 9,9,32
	subfe 3,3,3
	neg 3,3
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
	ble- 0,.L232
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
	blr
.L232:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,5
	mr 5,3
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,6
	mr 6,4
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L237
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L238
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	bgt- 0,.L243
	li 4,0
	li 3,0
.L234:
	lwz 0,36(1)
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
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
.L243:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
	lwz 0,36(1)
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
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
.L237:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L234
.L238:
	mr 3,28
	mr 4,29
	b .L234
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
	bne- 0,.L247
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L248
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	bgt- 0,.L253
	li 3,0
.L244:
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L253:
	.cfi_restore_state
	mr 4,30
	mr 3,31
	bl __subsf3
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L247:
	.cfi_restore_state
	mr 3,31
	b .L244
.L248:
	mr 3,30
	b .L244
	.cfi_endproc
.LFE30:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 30,24(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,5
	mr 5,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,6
	mr 6,4
	stw 28,16(1)
	.cfi_offset 28, -16
	mr 28,3
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,4
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L262
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L261
	rlwinm 9,29,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	bne- 0,.L264
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L262
.L261:
	lwz 0,36(1)
	mr 3,28
	mr 4,29
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
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
.L264:
	.cfi_restore_state
	cmpwi 0,9,0
	beq- 0,.L261
.L262:
	lwz 0,36(1)
	mr 3,30
	mr 4,31
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
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
	bne- 0,.L271
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L272
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L267
	cmpwi 0,9,0
	mr 3,31
	beq- 0,.L272
.L265:
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L267:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	mr 3,30
	bge- 0,.L265
.L271:
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L272:
	.cfi_restore_state
	lwz 0,20(1)
	mr 3,30
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 24,16(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	mr 24,3
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,4
	stw 26,24(1)
	.cfi_offset 26, -24
	mr 26,5
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,6
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,7
	stw 29,36(1)
	.cfi_offset 29, -12
	mr 29,8
	stw 30,40(1)
	.cfi_offset 30, -8
	mr 30,9
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,10
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	mr 4,29
	mr 5,30
	cmpwi 0,3,0
	mr 6,31
	mr 3,28
	bne- 0,.L276
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L283
	rlwinm 9,27,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L278
	cmpwi 0,9,0
	bne- 0,.L284
.L283:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L276:
	lwz 0,52(1)
	lwz 24,16(1)
	lwz 25,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	blr
.L278:
	.cfi_restore_state
	mr 7,28
	mr 8,29
	mr 9,30
	mr 10,31
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qlt
	cmpwi 0,3,0
	bge- 0,.L283
.L284:
	lwz 0,52(1)
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	lwz 24,16(1)
	lwz 25,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,5
	mr 5,3
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,6
	mr 6,4
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L292
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L294
	rlwinm 9,31,0,0,0
	rlwinm 10,29,0,0,0
	cmpw 0,9,10
	bne- 0,.L296
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L292
.L294:
	lwz 0,36(1)
	mr 3,30
	mr 4,31
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
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
.L296:
	.cfi_restore_state
	cmpwi 0,9,0
	bne- 0,.L294
.L292:
	lwz 0,36(1)
	mr 3,28
	mr 4,29
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
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
	bne- 0,.L303
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L304
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L299
	cmpwi 0,9,0
	mr 3,30
	beq- 0,.L303
.L297:
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L299:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	mr 3,31
	bge- 0,.L297
.L304:
	lwz 0,20(1)
	mr 3,30
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L303:
	.cfi_restore_state
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 24,16(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	mr 24,7
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,8
	stw 26,24(1)
	.cfi_offset 26, -24
	mr 26,9
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,10
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,3
	stw 29,36(1)
	.cfi_offset 29, -12
	mr 29,4
	stw 30,40(1)
	.cfi_offset 30, -8
	mr 30,5
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,6
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	mr 4,25
	mr 5,26
	cmpwi 0,3,0
	mr 6,27
	mr 3,24
	bne- 0,.L308
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L316
	rlwinm 9,31,0,0,0
	rlwinm 10,27,0,0,0
	cmpw 0,9,10
	beq- 0,.L310
	cmpwi 0,9,0
	beq- 0,.L311
.L316:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
.L308:
	lwz 0,52(1)
	lwz 24,16(1)
	lwz 25,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	blr
.L310:
	.cfi_restore_state
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qlt
	cmpwi 0,3,0
	blt- 0,.L316
.L311:
	lwz 0,52(1)
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	lwz 24,16(1)
	lwz 25,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
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
	mr. 9,3
	lis 3,.LANCHOR0@ha
	beq- 0,.L321
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 7,.LANCHOR1@l(7)
	mr 10,3
.L320:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 8,7,8
	addi 10,10,1
	stb 8,-1(10)
	bne+ 0,.L320
	li 9,0
	stb 9,0(10)
	blr
.L321:
	la 3,.LANCHOR0@l(3)
	li 9,0
	mr 10,3
	stb 9,0(10)
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
	lis 9,.LANCHOR0@ha
	addi 3,3,-1
	la 9,.LANCHOR0@l(9)
	li 10,0
	stw 3,8(9)
	stw 10,12(9)
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
	la 10,.LANCHOR0@l(10)
	lis 8,0x5851
	lwz 6,8(10)
	ori 9,9,0x7f2d
	ori 8,8,0xf42d
	lwz 3,12(10)
	mullw 7,9,6
	mullw 8,8,6
	mullw 3,9,3
	addic 7,7,1
	stw 7,8(10)
	mulhwu 9,9,6
	add 3,3,8
	adde 3,3,9
	stw 3,12(10)
	srwi 3,3,1
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
	beq- 0,.L331
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L331:
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
	beq- 0,.L333
	lwz 10,4(3)
	stw 10,4(9)
.L333:
	lwz 10,4(3)
	cmpwi 0,10,0
	beqlr- 0
	stw 9,0(10)
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
	beq- 0,.L342
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,40(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L344
.L359:
	beq- 7,.L358
.L344:
	mr 4,31
	mr 3,27
	mtctr 25
	addi 30,30,1
	mr 26,31
	add 31,31,29
	bctrl
	cmplw 7,28,30
	cmpwi 0,3,0
	bne+ 0,.L359
	lwz 25,20(1)
	.cfi_restore 25
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L341:
	lwz 0,52(1)
	mr 3,26
	lwz 23,12(1)
	lwz 24,16(1)
	mtlr 0
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
.L358:
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
.L342:
	cmpwi 0,29,0
	mullw 26,29,28
	addi 28,28,1
	stw 28,0(24)
	add 26,23,26
	beq- 0,.L341
	mr 5,29
	mr 4,27
	mr 3,26
	bl memmove
	lwz 0,52(1)
	mr 3,26
	lwz 23,12(1)
	lwz 24,16(1)
	mtlr 0
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
	beq- 0,.L361
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
	b .L363
.L374:
	beq- 7,.L373
.L363:
	mr 4,31
	mr 3,29
	mtctr 27
	addi 30,30,1
	mr 25,31
	add 31,31,28
	bctrl
	cmplw 7,26,30
	cmpwi 0,3,0
	bne+ 0,.L374
	lwz 0,52(1)
	mr 3,25
	lwz 27,28(1)
	.cfi_remember_state
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
	lwz 25,20(1)
	lwz 26,24(1)
	addi 1,1,48
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L373:
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
.L361:
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
.L383:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L377
	ble- 7,.L377
	cmpwi 0,10,43
	beq- 0,.L378
	cmpwi 0,10,45
	bne- 0,.L396
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L388
	li 5,1
.L381:
	li 3,0
.L385:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	add 9,9,3
	addi 6,10,-48
	slwi 9,9,1
	cmplwi 0,6,9
	subf 3,7,9
	ble+ 0,.L385
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,7
	blr
.L377:
	addi 3,3,1
	b .L383
.L396:
	addi 9,10,-48
	mr 8,3
	cmplwi 0,9,9
	li 5,0
	ble+ 0,.L381
.L388:
	li 3,0
	blr
.L378:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L381
	b .L388
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L402:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L398
	ble- 7,.L398
	cmpwi 0,10,43
	beq- 0,.L399
	cmpwi 0,10,45
	beq- 0,.L400
	addi 9,10,-48
	mr 8,3
	cmplwi 0,9,9
	li 5,0
	bgt- 0,.L409
.L403:
	li 3,0
.L406:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	add 9,9,3
	addi 6,10,-48
	slwi 9,9,1
	cmplwi 0,6,9
	subf 3,7,9
	ble+ 0,.L406
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,7
	blr
.L398:
	addi 3,3,1
	b .L402
.L400:
	lbz 10,1(3)
	addi 8,3,1
	li 5,1
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L403
.L409:
	li 3,0
	blr
.L399:
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L409
	li 5,0
	b .L403
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L424:
	lbz 8,0(3)
	cmpwi 0,8,32
	addi 9,8,-9
	cmplwi 7,9,4
	beq- 0,.L418
	ble- 7,.L418
	cmpwi 0,8,43
	beq- 0,.L419
	cmpwi 0,8,45
	bne- 0,.L437
	lbz 8,1(3)
	addi 5,3,1
	addi 9,8,-48
	cmplwi 0,9,9
	bgt- 0,.L429
	li 11,1
.L422:
	li 3,0
	li 4,0
.L426:
	addi 7,8,-48
	lbzu 8,1(5)
	srwi 10,3,30
	slwi 9,3,2
	rlwimi 10,4,2,0,31-2
	addi 6,8,-48
	addc 9,9,3
	cmplwi 0,6,9
	adde 10,10,4
	srwi 6,9,31
	slwi 9,9,1
	rlwimi 6,10,1,0,31-1
	srawi 10,7,31
	subfc 3,7,9
	subfe 4,10,6
	ble+ 0,.L426
	cmpwi 0,11,0
	bnelr- 0
	subfc 3,9,7
	subfe 4,6,10
	blr
.L418:
	addi 3,3,1
	b .L424
.L437:
	addi 9,8,-48
	mr 5,3
	cmplwi 0,9,9
	li 11,0
	ble+ 0,.L422
.L429:
	li 3,0
	li 4,0
	blr
.L419:
	lbz 8,1(3)
	addi 5,3,1
	li 11,0
	addi 9,8,-48
	cmplwi 0,9,9
	ble+ 0,.L422
	b .L429
	.cfi_endproc
.LFE47:
	.size	atoll,.-atoll
	.align 2
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr. 31,5
	stw 30,40(1)
	.cfi_offset 30, -8
	beq- 0,.L439
	mflr 0
	.cfi_register 65, 0
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,3
	stw 26,24(1)
	.cfi_offset 26, -24
	mr 26,7
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,4
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,6
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 29,36(1)
	.cfi_offset 29, -12
	b .L442
.L451:
	beq- 0,.L449
	cmpwi 0,31,0
	add 27,30,28
	beq- 0,.L450
.L442:
	srwi 29,31,1
	mr 3,25
	mullw 30,29,28
	mtctr 26
	addi 31,31,-1
	subf 31,29,31
	add 30,27,30
	mr 4,30
	bctrl
	cmpwi 0,3,0
	bge+ 0,.L451
	mr 31,29
	cmpwi 0,31,0
	bne+ 0,.L442
.L450:
	lwz 0,52(1)
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
.L439:
	li 30,0
	lwz 31,44(1)
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L449:
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
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr. 31,5
	stw 24,16(1)
	.cfi_offset 24, -32
	mr 24,3
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 26,24(1)
	.cfi_offset 26, -24
	mr 26,8
	stw 27,28(1)
	.cfi_offset 27, -20
	mr 27,4
	stw 28,32(1)
	.cfi_offset 28, -16
	mr 28,6
	stw 30,40(1)
	.cfi_offset 30, -8
	beq- 0,.L457
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L453:
	srawi 29,31,1
	mr 5,26
	mullw 30,29,28
	mr 3,24
	mtctr 25
	addi 31,31,-1
	add 30,27,30
	mr 4,30
	bctrl
	srawi. 31,31,1
	cmpwi 7,3,0
	beq- 7,.L467
.L469:
	cmpwi 5,29,0
	ble- 7,.L455
	add 27,30,28
	bne+ 0,.L453
.L468:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L457:
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
.L455:
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
	beq- 5,.L468
	srawi 29,31,1
	mr 5,26
	mullw 30,29,28
	mr 3,24
	mtctr 25
	addi 31,31,-1
	add 30,27,30
	mr 4,30
	bctrl
	srawi. 31,31,1
	cmpwi 7,3,0
	bne+ 7,.L469
.L467:
	lwz 0,52(1)
	mr 3,30
	lwz 29,36(1)
	.cfi_restore 29
	lwz 24,16(1)
	mtlr 0
	.cfi_restore 65
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
	srawi 9,4,31
	xor 3,9,3
	xor 4,9,4
	subfc 3,9,3
	subfe 4,9,4
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	.cfi_register 65, 0
	.cfi_offset 29, -12
	mr 29,5
	mr 5,7
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,6
	mr 6,8
	stw 31,28(1)
	mr 4,30
	.cfi_offset 31, -4
	mr 31,3
	mr 3,29
	stw 0,36(1)
	stw 27,12(1)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	mr 27,7
	stw 28,16(1)
	.cfi_offset 28, -16
	mr 28,8
	bl __divdi3
	mr 5,27
	stw 3,0(31)
	mr 6,28
	mr 3,29
	stw 4,4(31)
	mr 4,30
	bl __moddi3
	lwz 0,36(1)
	stw 3,8(31)
	mr 3,31
	stw 4,12(31)
	mtlr 0
	.cfi_restore 65
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_def_cfa_offset 0
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
	srawi 9,4,31
	xor 3,9,3
	xor 4,9,4
	subfc 3,9,3
	subfe 4,9,4
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	.cfi_register 65, 0
	.cfi_offset 29, -12
	mr 29,5
	mr 5,7
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,6
	mr 6,8
	stw 31,28(1)
	mr 4,30
	.cfi_offset 31, -4
	mr 31,3
	mr 3,29
	stw 0,36(1)
	stw 27,12(1)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	mr 27,7
	stw 28,16(1)
	.cfi_offset 28, -16
	mr 28,8
	bl __divdi3
	mr 5,27
	stw 3,0(31)
	mr 6,28
	mr 3,29
	stw 4,4(31)
	mr 4,30
	bl __moddi3
	lwz 0,36(1)
	stw 3,8(31)
	mr 3,31
	stw 4,12(31)
	mtlr 0
	.cfi_restore 65
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_def_cfa_offset 0
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
	beq- 0,.L483
.L480:
	cmpw 0,4,9
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L480
.L483:
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
	beq+ 0,.L488
	b .L487
.L489:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L487
.L488:
	cmpwi 7,9,0
	bne+ 7,.L489
.L487:
	li 3,-1
	bltlr- 0
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
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
.L493:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L493
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
	beq- 0,.L499
	mr 9,3
.L498:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L498
	subf 3,3,9
	srawi 3,3,2
	blr
.L499:
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
	beq- 0,.L511
	mtctr 5
	b .L502
.L512:
	beq- 7,.L504
	addi 3,3,4
	addi 4,4,4
	bdz .L511
.L502:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 0,9,10
	beq+ 0,.L512
.L504:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	blt- 0,.L513
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L513:
	li 3,-1
	blr
.L511:
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
	beq- 0,.L518
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L534
.L521:
	srwi 9,5,1
	mtctr 9
.L515:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,4
	bdnz .L515
.L518:
	li 3,0
	blr
.L534:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpwi 0,9,0
	addi 3,3,4
	bne+ 0,.L521
	b .L518
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
	beq- 0,.L541
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L555
.L544:
	srwi 9,5,1
	mtctr 9
	b .L536
.L538:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,8,4
	cmpw 0,9,10
	bne- 0,.L553
	bdz .L541
.L536:
	lwz 9,0(3)
	addi 7,3,4
	addi 8,4,4
	lwz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L538
.L553:
	blt- 0,.L556
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L555:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L553
	cmpwi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 0,.L544
.L541:
	li 3,0
	blr
.L556:
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
	beq- 0,.L558
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L558:
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
	cmplw 0,10,9
	bge- 0,.L590
	cmpwi 0,5,0
	beqlr- 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne- 0,.L591
.L577:
	srwi 10,5,1
	mtctr 10
.L568:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L568
	blr
.L590:
	cmpwi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L592
.L580:
	srwi 8,5,1
	mtctr 8
.L569:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L569
	blr
.L591:
	cmpwi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne+ 0,.L577
	blr
.L592:
	cmpwi 0,8,0
	lwz 8,0(4)
	mr 9,4
	mr 10,3
	stw 8,0(3)
	bne+ 0,.L580
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
	beqlr- 0
	andi. 8,5,0x3
	addi 9,3,-4
	addi 7,5,-1
	mr 10,5
	beq- 0,.L604
	cmpwi 0,8,1
	beq- 0,.L608
	cmpwi 0,8,2
	beq- 0,.L609
	stw 4,0(3)
	mr 5,7
	mr 9,3
.L609:
	stwu 4,4(9)
	addi 5,5,-1
.L608:
	cmpwi 0,5,1
	stwu 4,4(9)
	beqlr- 0
.L604:
	srwi 10,10,2
	mtctr 10
.L595:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L595
	blr
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
	bge- 0,.L617
	cmpwi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L644
	cmpwi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr- 0
.L644:
	srwi 9,5,1
	mtctr 9
.L619:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L619
	blr
.L617:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmplwi 0,9,4
	ble- 0,.L620
	or 10,4,3
	andi. 10,10,0x3
	bne- 0,.L620
	addi 10,3,1
	subf 10,10,4
	subfic 10,10,2
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L620
	srwi 9,5,2
	addi 10,3,-4
	andi. 8,9,0x1
	addi 7,9,-1
	addi 8,4,-4
	bne- 0,.L669
.L650:
	srwi 9,9,1
	mtctr 9
.L621:
	lwz 6,4(10)
	mr 7,10
	addi 9,8,4
	addi 10,10,8
	addi 8,8,8
	stw 6,-4(8)
	lwz 7,8(7)
	stw 7,4(9)
	bdnz .L621
.L665:
	andi. 9,5,0x3
	rlwinm 9,5,0,0,29
	add 10,4,9
	add 8,3,9
	subf 5,9,5
	beqlr- 0
	cmplwi 0,5,1
	lbzx 7,3,9
	stbx 7,4,9
	beqlr- 0
	cmplwi 0,5,2
	lbz 9,1(8)
	stb 9,1(10)
	beqlr- 0
	lbz 9,2(8)
	stb 9,2(10)
	blr
.L669:
	cmpwi 0,7,0
	lwz 7,0(3)
	mr 10,3
	mr 8,4
	stw 7,0(4)
	bne+ 0,.L650
	b .L665
.L620:
	andi. 10,9,0x1
	addi 8,4,-1
	addi 10,3,-1
	bne- 0,.L670
.L647:
	srwi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L624
.L671:
	lbz 9,1(9)
	addi 8,8,2
	stb 9,1(7)
.L624:
	lbz 6,1(10)
	addi 9,10,1
	addi 7,8,1
	addi 10,10,2
	stb 6,1(8)
	bdnz .L671
	blr
.L670:
	lbz 7,0(3)
	mr 10,3
	mr 8,4
	stb 7,0(4)
	b .L647
	.cfi_endproc
.LFE67:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	addic. 9,5,-32
	blt- 0,.L673
	neg 5,5
	slw 9,3,9
	rlwinm 5,5,0,26,31
	li 8,0
	addic. 10,5,-32
	blt- 0,.L675
.L677:
	srw 3,4,10
	li 4,0
	or 3,8,3
	or 4,9,4
	blr
.L673:
	subfic 10,5,31
	srwi 9,3,1
	srw 9,9,10
	slw 8,3,5
	slw 10,4,5
	neg 5,5
	rlwinm 5,5,0,26,31
	or 9,9,10
	addic. 10,5,-32
	bge+ 0,.L677
.L675:
	slwi 7,4,1
	subfic 6,5,31
	srw 3,3,5
	slw 7,7,6
	srw 4,4,5
	or 3,7,3
	or 3,8,3
	or 4,9,4
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
	addic. 9,5,-32
	blt- 0,.L679
	neg 5,5
	srw 9,4,9
	rlwinm 5,5,0,26,31
	li 8,0
	addic. 10,5,-32
	blt- 0,.L681
.L683:
	slw 4,3,10
	li 3,0
	or 3,9,3
	or 4,8,4
	blr
.L679:
	subfic 10,5,31
	slwi 9,4,1
	slw 9,9,10
	srw 8,4,5
	srw 10,3,5
	neg 5,5
	rlwinm 5,5,0,26,31
	or 9,9,10
	addic. 10,5,-32
	bge+ 0,.L683
.L681:
	srwi 7,3,1
	subfic 6,5,31
	slw 4,4,5
	srw 7,7,6
	slw 3,3,5
	or 4,7,4
	or 3,9,3
	or 4,8,4
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
	slw 4,3,4
	rlwinm 9,9,0,28,31
	srw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xffff
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
	srw 4,3,4
	rlwinm 9,9,0,28,31
	slw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xffff
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
	slw 4,3,4
	rlwinm 9,9,0,29,31
	srw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xff
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
	srw 4,3,4
	rlwinm 9,9,0,29,31
	slw 3,3,9
	or 3,4,3
	rlwinm 3,3,0,0xff
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
	rlwinm 10,3,8,16,23
	rlwinm 9,3,24,24,31
	or 9,9,10
	rlwinm 3,9,0,0xffff
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
	mr 9,3
	rotlwi 3,4,24
	rlwimi 3,4,8,8,15
	rlwimi 3,4,8,24,31
	rotlwi 4,9,24
	rlwimi 4,9,8,8,15
	rlwimi 4,9,8,24,31
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
	b .L698
.L696:
	addi 9,9,1
	bne- 0,.L702
	bdz .L705
.L698:
	srw 8,3,9
	addi 9,9,1
	rlwinm 8,8,0,31,31
	srw 10,3,9
	cmpwi 7,8,0
	andi. 10,10,0x1
	beq+ 7,.L696
.L702:
	mr 3,9
	blr
.L705:
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
	mr. 9,3
	beq- 0,.L709
	andi. 3,9,0x1
	bnelr- 0
	li 3,1
.L708:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L708
	blr
.L709:
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
	blt- 0,.L716
	lis 4,0x7f7f
	mr 3,31
	ori 4,4,0xffff
	bl __gtsf2
	lwz 0,20(1)
	addi 9,3,-1
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	nor 3,9,3
	mtlr 0
	.cfi_restore 65
	srwi 3,3,31
	blr
.L716:
	.cfi_restore_state
	lwz 0,20(1)
	li 3,1
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	mtlr 0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lis 6,0xffef
	mflr 0
	ori 6,6,0xffff
	li 5,-1
	stw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	mr 30,3
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L721
	lis 6,0x7fef
	mr 3,30
	mr 4,31
	ori 6,6,0xffff
	li 5,-1
	bl __gtdf2
	lwz 0,20(1)
	addi 9,3,-1
	lwz 30,8(1)
	nor 3,9,3
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	srwi 3,3,31
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L721:
	.cfi_restore_state
	lwz 0,20(1)
	li 3,1
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	lis 8,0xffef
	lis 10,0xfc8f
	mflr 0
	li 7,-1
	ori 8,8,0xffff
	li 9,-2
	ori 10,10,0xffff
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,3
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,4
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,5
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,6
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __gcc_qlt
	cmpwi 0,3,0
	blt- 0,.L726
	lis 8,0x7fef
	lis 10,0x7c8f
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	li 9,-2
	li 7,-1
	ori 8,8,0xffff
	ori 10,10,0xffff
	bl __gcc_qgt
	lwz 0,36(1)
	addi 9,3,-1
	lwz 28,16(1)
	nor 3,9,3
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,24(1)
	srwi 3,3,31
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L726:
	.cfi_restore_state
	lwz 0,36(1)
	li 3,1
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
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
	bl __gcc_dtoq
	lwz 0,20(1)
	stw 3,0(31)
	stw 4,4(31)
	mtlr 0
	.cfi_restore 65
	stw 5,8(31)
	stw 6,12(31)
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
	bne- 0,.L731
	mr 4,29
	mr 3,29
	bl __addsf3
	mr 4,29
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L731
	cmpwi 0,31,0
	stw 30,24(1)
	.cfi_offset 30, -8
	lis 30,0x4000
	bge+ 0,.L733
	lis 30,0x3f00
.L733:
	andi. 9,31,0x1
	beq- 0,.L734
.L735:
	mr 3,29
	mr 4,30
	bl __mulsf3
	mr 29,3
.L734:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L746
	mr 4,30
	mr 3,30
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L735
.L747:
	mr 4,30
	mr 3,30
	srawi 31,31,1
	addze 31,31
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L735
	b .L747
.L746:
	lwz 30,24(1)
	.cfi_restore 30
.L731:
	lwz 0,36(1)
	mr 3,29
	lwz 29,20(1)
	lwz 31,28(1)
	mtlr 0
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	mr 6,4
	stw 31,28(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,5
	mr 5,3
	stw 26,8(1)
	.cfi_offset 26, -24
	mr 26,3
	stw 27,12(1)
	.cfi_offset 27, -20
	mr 27,4
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L749
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __adddf3
	mr 5,26
	mr 6,27
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L749
	cmpwi 0,31,0
	stw 28,16(1)
	.cfi_offset 28, -16
	li 28,0
	stw 29,20(1)
	.cfi_offset 29, -12
	lis 29,0x4000
	bge+ 0,.L751
	lis 29,0x3fe0
	li 28,0
.L751:
	andi. 9,31,0x1
	beq- 0,.L752
.L753:
	mr 3,26
	mr 4,27
	mr 5,28
	mr 6,29
	bl __muldf3
	mr 27,4
	mr 26,3
.L752:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L764
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __muldf3
	andi. 9,31,0x1
	mr 29,4
	mr 28,3
	bne- 0,.L753
.L765:
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	srawi 31,31,1
	addze 31,31
	bl __muldf3
	andi. 9,31,0x1
	mr 29,4
	mr 28,3
	bne- 0,.L753
	b .L765
.L764:
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
.L749:
	lwz 0,36(1)
	mr 3,26
	mr 4,27
	lwz 26,8(1)
	lwz 27,12(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 27
	.cfi_restore 26
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 20,16(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	mr 20,3
	stw 21,20(1)
	.cfi_offset 21, -44
	mr 21,4
	stw 22,24(1)
	.cfi_offset 22, -40
	mr 22,5
	stw 23,28(1)
	.cfi_offset 23, -36
	mr 23,6
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L767
	mr 7,20
	mr 8,21
	mr 9,22
	mr 10,23
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qadd
	mr 7,20
	mr 8,21
	mr 9,22
	mr 10,23
	bl __gcc_qne
	cmpwi 0,3,0
	beq- 0,.L767
	cmpwi 0,31,0
	stw 24,32(1)
	.cfi_offset 24, -32
	li 24,0
	stw 25,36(1)
	.cfi_offset 25, -28
	stw 26,40(1)
	.cfi_offset 26, -24
	stw 27,44(1)
	.cfi_offset 27, -20
	blt- 0,.L783
	lis 25,0x4000
	li 26,0
	li 27,0
.L769:
	andi. 9,31,0x1
	beq- 0,.L770
.L771:
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	bl __gcc_qmul
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
.L770:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L782
	mr 9,26
	mr 7,24
	mr 8,25
	mr 10,27
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qmul
	andi. 9,31,0x1
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
	bne- 0,.L771
.L784:
	mr 9,26
	mr 7,24
	mr 8,25
	mr 10,27
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	srawi 31,31,1
	addze 31,31
	bl __gcc_qmul
	andi. 9,31,0x1
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
	bne- 0,.L771
	b .L784
.L782:
	lwz 24,32(1)
	.cfi_restore 24
	lwz 25,36(1)
	.cfi_restore 25
	lwz 26,40(1)
	.cfi_restore 26
	lwz 27,44(1)
	.cfi_restore 27
.L767:
	lwz 0,68(1)
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	lwz 20,16(1)
	lwz 21,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	blr
.L783:
	.cfi_def_cfa_offset 64
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lis 25,0x3fe0
	li 26,0
	li 27,0
	b .L769
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
	cmplwi 0,9,2
	ble- 0,.L787
	or 10,3,4
	andi. 10,10,0x3
	bne- 0,.L787
	srwi 9,5,2
	addi 6,4,-4
	andi. 10,9,0x1
	addi 8,9,-1
	addi 10,3,-4
	bne- 0,.L819
.L806:
	srwi 9,9,1
	mtctr 9
.L788:
	lwz 11,4(10)
	addi 9,10,4
	mr 8,6
	lwz 7,4(6)
	addi 10,10,8
	addi 6,6,8
	lwz 8,8(8)
	xor 7,7,11
	stw 7,-4(10)
	lwz 7,4(9)
	xor 8,8,7
	stw 8,4(9)
	bdnz .L788
.L816:
	andi. 9,5,0x3
	rlwinm 9,5,0,0,29
	add 8,3,9
	add 7,4,9
	subf 5,9,5
	beqlr- 0
	cmplwi 0,5,1
	lbzx 10,3,9
	lbzx 6,4,9
	xor 10,10,6
	stbx 10,3,9
	beqlr- 0
	cmplwi 0,5,2
	lbz 10,1(8)
	lbz 9,1(7)
	xor 9,9,10
	stb 9,1(8)
	beqlr- 0
	lbz 10,2(8)
	lbz 9,2(7)
	xor 9,9,10
	stb 9,2(8)
	blr
.L819:
	cmpwi 0,8,0
	lwz 7,0(3)
	mr 6,4
	lwz 8,0(4)
	mr 10,3
	xor 8,8,7
	stw 8,0(3)
	bne+ 0,.L806
	b .L816
.L787:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 10,3,-1
	beq- 0,.L803
	lbz 6,0(3)
	mr 7,4
	mr 10,3
	lbz 8,0(4)
	xor 8,8,6
	stb 8,0(3)
.L803:
	srwi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L790
.L820:
	lbz 9,1(6)
	addi 10,10,2
	lbz 6,1(8)
	xor 9,9,6
	stb 9,1(8)
.L790:
	lbz 9,1(7)
	addi 6,7,1
	addi 8,10,1
	lbz 5,1(10)
	addi 7,7,2
	xor 9,9,5
	stb 9,1(10)
	bdnz .L820
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
	beq- 0,.L822
.L823:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L823
.L822:
	cmpwi 0,5,0
	beq- 0,.L824
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L846
.L835:
	srwi 8,5,1
	mtctr 8
.L825:
	lbz 8,1(10)
	addi 7,10,1
	addi 5,9,1
	addi 10,7,1
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	lbz 8,1(7)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	addi 9,5,1
	cmpwi 0,7,0
	beqlr- 0
	bdnz .L825
.L824:
	li 10,0
	stb 10,0(9)
	blr
.L846:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	cmpwi 0,7,0
	addi 9,9,1
	bne+ 0,.L835
	b .L824
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
	beq- 0,.L859
	cmpwi 0,8,1
	beq- 0,.L870
	cmpwi 0,8,2
	beq- 0,.L871
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L871:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L870:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmplw 0,4,3
	beqlr- 0
.L859:
	srwi 10,10,2
.L848:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	lbzx 8,9,3
	mr 7,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,7,2
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	cmpwi 0,10,1
	addi 3,7,3
	addi 10,10,-1
	bne+ 0,.L848
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
	beq- 0,.L883
.L879:
	mr 10,4
	b .L882
.L881:
	beqlr- 7
.L882:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne+ 0,.L881
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L879
.L883:
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
	li 3,0
.L888:
	lbz 10,0(9)
	cmpw 7,4,10
	cmpwi 0,10,0
	bne+ 7,.L887
	mr 3,9
.L887:
	addi 9,9,1
	bne+ 0,.L888
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
	beq- 0,.L904
	mr 9,4
.L893:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L893
	subf. 9,4,9
	mr 3,8
	beqlr- 0
	addi 3,9,-1
	b .L901
.L914:
	cmpwi 0,9,0
	addi 8,8,1
	beq- 0,.L913
.L901:
	lbz 9,0(8)
	cmpw 0,9,5
	bne+ 0,.L914
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L895
.L916:
	bdz .L897
	bne- 7,.L898
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq- 0,.L915
	lbzu 10,1(6)
.L895:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne+ 0,.L916
.L898:
	addi 8,8,1
	b .L901
.L913:
	li 3,0
	blr
.L915:
	lbz 10,1(6)
.L897:
	cmpw 0,9,10
	bne+ 0,.L898
.L904:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,5
	li 5,0
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,6
	li 6,0
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L928
	li 6,0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L921
	mr 3,28
	mr 4,29
	li 6,0
	li 5,0
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L920
.L921:
	lwz 0,36(1)
	mr 3,30
	mr 4,31
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
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
.L928:
	.cfi_restore_state
	mr 3,28
	mr 4,29
	li 6,0
	li 5,0
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L921
.L920:
	lwz 0,36(1)
	addis 11,31,0x8000
	mr 3,30
	mr 31,11
	lwz 28,16(1)
	mr 4,31
	lwz 29,20(1)
	mtlr 0
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
	cmplw 0,4,6
	blt- 0,.L937
	subf 4,6,4
	add 0,3,4
	cmplw 0,3,0
	bgt- 0,.L937
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L934
.L931:
	cmplw 0,0,9
	blt- 0,.L937
.L934:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 0,10,12
	bne+ 0,.L931
	beqlr- 7
	subf 10,11,9
	mr 7,5
	add 10,10,6
	mr 8,11
	addi 10,10,-2
	mtctr 10
.L932:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L931
	bdnz .L932
	blr
.L937:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,5
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,3
	beq- 0,.L946
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L946:
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	li 6,0
	stw 28,32(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,5
	li 5,0
	stw 30,40(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,52(1)
	stw 23,12(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 29,36(1)
	.cfi_offset 65, 4
	.cfi_offset 23, -36
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 29, -12
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L975
	lis 6,0x3ff0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 23,0
	cmpwi 0,3,0
	blt- 0,.L976
	stw 24,16(1)
	.cfi_offset 24, -32
	stw 25,20(1)
	.cfi_offset 25, -28
.L954:
	li 29,0
	lis 25,0x3fe0
	li 24,0
	lis 27,0x4000
	li 26,0
.L960:
	mr 5,24
	mr 6,25
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 5,26
	mr 6,27
	mr 11,4
	mr 10,3
	mr 4,31
	mr 3,30
	mr 31,11
	mr 30,10
	bl __gedf2
	cmpwi 0,3,0
	addi 29,29,1
	bge+ 0,.L960
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
.L961:
	cmpwi 0,23,0
	stw 29,0(28)
	beq- 0,.L967
	lwz 0,52(1)
	mr 3,30
	addis 4,31,0x8000
	lwz 23,12(1)
	lwz 26,24(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L976:
	.cfi_restore_state
	lis 6,0x3fe0
	li 5,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L957
	li 6,0
	li 5,0
	mr 3,30
	mr 4,31
	bl __nedf2
	cmpwi 0,3,0
	bne- 0,.L966
.L957:
	lwz 0,52(1)
	li 9,0
	mr 3,30
	stw 9,0(28)
	mr 4,31
	lwz 23,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L975:
	.cfi_restore_state
	lis 6,0xbff0
	li 5,0
	mr 3,30
	mr 4,31
	bl __ledf2
	mr 26,30
	addis 27,31,0x8000
	cmpwi 0,3,0
	bgt- 0,.L977
	stw 24,16(1)
	.cfi_offset 24, -32
	mr 31,27
	li 23,1
	stw 25,20(1)
	.cfi_offset 25, -28
	b .L954
.L967:
	.cfi_restore 24
	.cfi_restore 25
	lwz 0,52(1)
	mr 3,30
	mr 4,31
	lwz 23,12(1)
	lwz 26,24(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L977:
	.cfi_restore_state
	lis 6,0xbfe0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L957
	li 23,1
.L955:
	mr 31,27
	mr 30,26
	li 29,0
	lis 27,0x3fd0
	li 26,0
.L962:
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __adddf3
	mr 5,26
	mr 6,27
	mr 11,4
	mr 10,3
	mr 4,31
	mr 3,30
	mr 31,11
	mr 30,10
	bl __ltdf2
	cmpwi 0,3,0
	addi 29,29,-1
	blt+ 0,.L962
	b .L961
.L966:
	mr 26,30
	mr 27,31
	b .L955
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	mr 10,3
	mr 8,4
	or. 9,8,10
	li 3,0
	li 4,0
	beqlr- 0
.L981:
	srwi 7,10,1
	rlwinm 9,10,0,31,31
	mr 10,7
	subfic 9,9,0
	rlwimi 10,8,31,0,31-31
	srwi 8,8,1
	or. 7,10,8
	and 9,9,5
	subfe 11,11,11
	srwi 7,5,31
	and 11,11,6
	addc 3,9,3
	rlwimi 7,6,1,0,31-1
	adde 4,11,4
	mr 6,7
	slwi 5,5,1
	bne+ 0,.L981
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
	li 8,16
	mr 10,3
	li 9,1
	li 3,32
	mtctr 8
	blt+ 0,.L986
	b .L1004
.L990:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L988
	blt- 0,.L1004
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L988
	bdz .L989
.L986:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L990
.L1004:
	cmplw 7,10,4
.L987:
	li 3,0
.L992:
	blt- 7,.L991
	subf 10,4,10
	or 3,3,9
.L991:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L992
.L989:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L988:
	cmpwi 0,9,0
	bne+ 0,.L987
	li 3,0
	b .L989
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
	beq- 0,.L1008
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L1008:
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
	srawi 9,4,31
	cmplw 0,3,9
	xor 10,4,9
	xor 9,3,9
	beq- 0,.L1017
.L1015:
	cmpwi 0,10,0
	cntlzw 3,10
	beq- 0,.L1018
	addi 3,3,-1
	blr
.L1018:
	cntlzw 3,9
	addi 3,3,32
	addi 3,3,-1
	blr
.L1017:
	cmplw 0,4,3
	bne+ 0,.L1015
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
	mr. 10,3
	li 3,0
	beqlr- 0
.L1021:
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	beqlr- 0
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	bne+ 0,.L1021
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
	blt- 0,.L1029
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1082
.L1029:
	cmpwi 0,9,0
	addi 10,4,-8
	addi 8,3,-8
	beq- 0,.L1028
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1083
.L1058:
	srwi 9,9,1
	mtctr 9
.L1032:
	lwz 6,8(10)
	mr 11,10
	mr 9,8
	lwz 7,12(10)
	addi 8,8,16
	addi 10,10,16
	stw 6,-8(8)
	stw 7,-4(8)
	lwz 6,16(11)
	lwz 7,20(11)
	stw 6,16(9)
	stw 7,20(9)
	bdnz .L1032
.L1028:
	cmplw 0,5,12
	blelr- 0
	subf 7,12,5
	addi 10,7,-1
	cmplwi 0,10,4
	ble- 0,.L1033
	addi 9,12,1
	add 6,3,12
	add 9,4,9
	add 11,4,12
	subf 9,9,6
	subfic 9,9,2
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1033
	or 9,11,6
	andi. 9,9,0x3
	bne- 0,.L1033
	srwi 9,7,2
	addi 10,11,-4
	andi. 8,9,0x1
	addi 0,9,-1
	addi 8,6,-4
	bne- 0,.L1084
.L1055:
	srwi 9,9,1
	mtctr 9
.L1034:
	lwz 11,4(10)
	mr 6,10
	addi 9,8,4
	addi 10,10,8
	addi 8,8,8
	stw 11,-4(8)
	lwz 6,8(6)
	stw 6,4(9)
	bdnz .L1034
.L1076:
	andi. 9,7,0x3
	rlwinm 7,7,0,0,29
	add 7,7,12
	beqlr- 0
	addi 9,7,1
	lbzx 10,4,7
	cmplw 0,5,9
	stbx 10,3,7
	blelr- 0
	addi 7,7,2
	lbzx 10,4,9
	cmplw 0,5,7
	stbx 10,3,9
	blelr- 0
	lbzx 9,4,7
	stbx 9,3,7
	blr
.L1083:
	cmpwi 0,7,0
	lwz 6,0(4)
	mr 10,4
	lwz 7,4(4)
	mr 8,3
	stw 6,0(3)
	stw 7,4(3)
	bne+ 0,.L1058
	b .L1028
.L1084:
	cmpwi 0,0,0
	mr 10,11
	lwz 11,0(11)
	mr 8,6
	stw 11,0(6)
	bne+ 0,.L1055
	b .L1076
.L1082:
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1085
.L1061:
	srwi 10,5,1
	mtctr 10
.L1038:
	lbz 7,-1(9)
	mr 8,9
	addi 10,3,-1
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L1038
	blr
.L1085:
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	bne+ 0,.L1061
	blr
.L1033:
	andi. 9,10,0x1
	addi 12,12,-1
	add 4,4,12
	add 12,3,12
	beq- 0,.L1052
	lbzu 9,1(4)
	stbu 9,1(12)
.L1052:
	srwi 10,10,1
	addi 9,10,1
	mtctr 9
	b .L1036
.L1086:
	lbz 9,1(9)
	addi 12,12,2
	stb 9,1(10)
.L1036:
	lbz 8,1(4)
	addi 9,4,1
	addi 10,12,1
	addi 4,4,2
	stb 8,1(12)
	bdnz .L1086
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
	srwi 9,5,1
	blt- 0,.L1091
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1118
.L1091:
	cmpwi 0,9,0
	addi 8,4,-2
	addi 10,3,-2
	beq- 0,.L1090
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1119
.L1104:
	srwi 9,9,1
	mtctr 9
.L1094:
	lhz 6,2(8)
	mr 7,8
	addi 9,10,2
	addi 8,8,4
	addi 10,10,4
	sth 6,-2(10)
	lhz 7,4(7)
	sth 7,2(9)
	bdnz .L1094
.L1090:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L1119:
	cmpwi 0,7,0
	lhz 7,0(4)
	mr 8,4
	mr 10,3
	sth 7,0(3)
	bne+ 0,.L1104
	b .L1090
.L1118:
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1120
.L1107:
	srwi 10,5,1
	mtctr 10
.L1096:
	lbz 7,-1(9)
	mr 8,9
	addi 10,3,-1
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L1096
	blr
.L1120:
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	bne+ 0,.L1107
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
	cmplw 0,3,4
	srwi 9,5,2
	rlwinm 6,5,0,0,29
	blt- 0,.L1125
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1183
.L1125:
	cmpwi 0,9,0
	addi 10,4,-4
	addi 8,3,-4
	beq- 0,.L1170
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1184
.L1156:
	srwi 9,9,1
	mtctr 9
.L1128:
	lwz 11,4(10)
	mr 7,10
	addi 9,8,4
	addi 10,10,8
	addi 8,8,8
	stw 11,-4(8)
	lwz 7,8(7)
	stw 7,4(9)
	bdnz .L1128
.L1173:
	cmplw 0,5,6
	blelr- 0
	subf 7,6,5
	addi 10,7,-1
	cmplwi 0,10,4
	ble- 0,.L1130
	addi 9,6,1
	add 11,3,6
	add 9,4,9
	add 12,4,6
	subf 9,9,11
	subfic 9,9,2
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1130
	or 9,12,11
	andi. 9,9,0x3
	bne- 0,.L1130
	srwi 9,7,2
	addi 10,12,-4
	andi. 8,9,0x1
	addi 0,9,-1
	addi 8,11,-4
	bne- 0,.L1185
.L1153:
	srwi 9,9,1
	mtctr 9
.L1131:
	lwz 0,4(10)
	mr 11,10
	addi 9,8,4
	addi 10,10,8
	addi 8,8,8
	stw 0,-4(8)
	lwz 11,8(11)
	stw 11,4(9)
	bdnz .L1131
.L1176:
	andi. 9,7,0x3
	rlwinm 7,7,0,0,29
	add 7,7,6
	beqlr- 0
	addi 9,7,1
	lbzx 10,4,7
	cmplw 0,5,9
	stbx 10,3,7
	blelr- 0
	addi 7,7,2
	lbzx 10,4,9
	cmplw 0,5,7
	stbx 10,3,9
	blelr- 0
	lbzx 9,4,7
	stbx 9,3,7
	blr
.L1184:
	cmpwi 0,7,0
	lwz 7,0(4)
	mr 10,4
	mr 8,3
	stw 7,0(3)
	bne+ 0,.L1156
	b .L1173
.L1185:
	cmpwi 0,0,0
	lwz 0,0(12)
	mr 10,12
	mr 8,11
	stw 0,0(11)
	bne+ 0,.L1153
	b .L1176
.L1183:
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1186
.L1159:
	srwi 10,5,1
	mtctr 10
.L1135:
	lbz 7,-1(9)
	mr 8,9
	addi 10,3,-1
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L1135
	blr
.L1186:
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	bne+ 0,.L1159
	blr
.L1170:
	cmpwi 0,5,0
	addi 10,5,-1
	beqlr- 0
.L1130:
	andi. 9,10,0x1
	addi 6,6,-1
	add 4,4,6
	add 6,3,6
	beq- 0,.L1150
	lbzu 9,1(4)
	stbu 9,1(6)
.L1150:
	srwi 10,10,1
	addi 9,10,1
	mtctr 9
	b .L1133
.L1187:
	lbz 9,1(9)
	addi 6,6,2
	stb 9,1(10)
.L1133:
	lbz 8,1(4)
	addi 9,4,1
	addi 10,6,1
	addi 4,4,2
	stb 8,1(6)
	bdnz .L1187
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
	mullw 9,9,4
	subf 3,9,3
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
	lwz 0,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 0
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
	lwz 0,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 0
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
	lwz 0,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 0
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
	lwz 0,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 0
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
	mullw 9,9,4
	subf 3,9,3
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
	bne- 0,.L1201
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1202
	srwi. 10,9,12
	bne- 0,.L1203
	srwi. 10,9,11
	bne- 0,.L1204
	srwi. 10,9,10
	bne- 0,.L1205
	srwi. 10,9,9
	bne- 0,.L1206
	srwi. 10,9,8
	bne- 0,.L1207
	srwi. 10,9,7
	bne- 0,.L1208
	srwi. 10,9,6
	bne- 0,.L1209
	srwi. 10,9,5
	bne- 0,.L1210
	srwi. 10,9,4
	bne- 0,.L1211
	srwi. 10,9,3
	bne- 0,.L1212
	srwi. 10,9,2
	bne- 0,.L1213
	srwi. 10,9,1
	bne- 0,.L1214
	cntlzw 9,9
	srwi 9,9,5
	addi 3,9,15
	blr
.L1201:
	li 3,0
	blr
.L1212:
	li 3,12
	blr
.L1202:
	li 3,2
	blr
.L1203:
	li 3,3
	blr
.L1204:
	li 3,4
	blr
.L1205:
	li 3,5
	blr
.L1206:
	li 3,6
	blr
.L1207:
	li 3,7
	blr
.L1208:
	li 3,8
	blr
.L1209:
	li 3,9
	blr
.L1210:
	li 3,10
	blr
.L1211:
	li 3,11
	blr
.L1213:
	li 3,13
	blr
.L1214:
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
	bne- 0,.L1219
	andi. 9,3,0x2
	bne- 0,.L1220
	andi. 9,3,0x4
	bne- 0,.L1221
	andi. 9,3,0x8
	bne- 0,.L1222
	andi. 9,3,0x10
	bne- 0,.L1223
	andi. 9,3,0x20
	bne- 0,.L1224
	andi. 9,3,0x40
	bne- 0,.L1225
	andi. 9,3,0x80
	bne- 0,.L1226
	andi. 9,3,0x100
	bne- 0,.L1227
	andi. 9,3,0x200
	bne- 0,.L1228
	andi. 9,3,0x400
	bne- 0,.L1229
	andi. 9,3,0x800
	bne- 0,.L1230
	andi. 9,3,0x1000
	bne- 0,.L1231
	andi. 9,3,0x2000
	bne- 0,.L1232
	andi. 9,3,0x4000
	bne- 0,.L1233
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
	blr
.L1219:
	li 3,0
	blr
.L1220:
	li 3,1
	blr
.L1231:
	li 3,12
	blr
.L1221:
	li 3,2
	blr
.L1222:
	li 3,3
	blr
.L1223:
	li 3,4
	blr
.L1224:
	li 3,5
	blr
.L1225:
	li 3,6
	blr
.L1226:
	li 3,7
	blr
.L1227:
	li 3,8
	blr
.L1228:
	li 3,9
	blr
.L1229:
	li 3,10
	blr
.L1230:
	li 3,11
	blr
.L1232:
	li 3,13
	blr
.L1233:
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
	bge- 0,.L1242
	bl __fixsfsi
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
.L1242:
	.cfi_restore_state
	lis 4,0x4700
	bl __subsf3
	bl __fixsfsi
	lwz 0,20(1)
	addis 3,3,0x1
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	addi 3,3,-32768
	mtlr 0
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
	rlwinm 3,3,0,31,31
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
	blr
	.cfi_endproc
.LFE118:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beqlr- 0
.L1247:
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	beqlr- 0
	rlwinm 9,10,0,31,31
	srwi. 10,10,1
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	bne+ 0,.L1247
	blr
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beqlr- 0
	cmpwi 0,4,0
	beqlr- 0
.L1253:
	rlwinm 9,4,0,31,31
	srwi. 4,4,1
	neg 9,9
	and 9,9,10
	slwi 10,10,1
	add 3,3,9
	beqlr- 0
	rlwinm 9,4,0,31,31
	srwi. 4,4,1
	neg 9,9
	and 9,9,10
	slwi 10,10,1
	add 3,3,9
	bne+ 0,.L1253
	blr
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	cmplw 7,3,4
	li 9,16
	mr 10,3
	mtctr 9
	li 3,32
	li 9,1
	bgt+ 7,.L1259
	b .L1260
.L1263:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1261
	blt- 0,.L1260
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1261
	bdz .L1262
.L1259:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1263
.L1260:
	li 3,0
.L1265:
	blt- 7,.L1264
	subf 10,4,10
	or 3,3,9
.L1264:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1265
.L1262:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1261:
	cmpwi 0,9,0
	bne+ 0,.L1260
	li 3,0
	b .L1262
	.cfi_endproc
.LFE162:
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
	blt- 0,.L1281
	mr 4,30
	mr 3,31
	bl __gtsf2
	lwz 0,20(1)
	addi 9,3,-1
	lwz 30,8(1)
	nor 3,9,3
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	srwi 3,3,31
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L1281:
	.cfi_restore_state
	lwz 0,20(1)
	li 3,-1
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,5
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,6
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,36(1)
	.cfi_offset 65, 4
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L1286
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	lwz 0,36(1)
	addi 9,3,-1
	lwz 28,16(1)
	nor 3,9,3
	lwz 29,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,24(1)
	srwi 3,3,31
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L1286:
	.cfi_restore_state
	lwz 0,36(1)
	li 3,-1
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
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
.LFE123:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	mr 9,3
	mullw 3,3,4
	mulhw 4,9,4
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
	mr 9,3
	mullw 3,3,4
	mulhwu 4,9,4
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
	blt- 0,.L1304
	beq- 0,.L1296
	li 6,0
.L1292:
	li 10,32
	li 3,0
	b .L1295
.L1305:
	beq- 7,.L1294
.L1295:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 9,9
	and 9,9,8
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 3,3,9
	slwi 8,8,1
	bne+ 0,.L1305
.L1294:
	cmpwi 0,6,0
	beqlr- 0
	neg 3,3
	blr
.L1304:
	neg 4,4
	li 6,1
	b .L1292
.L1296:
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
	li 8,0
	bge+ 0,.L1307
	neg 3,3
	li 9,0
	li 8,1
.L1307:
	cmpwi 0,4,0
	bge+ 0,.L1308
	neg 4,4
	mr 8,9
.L1308:
	cmplw 0,3,4
	li 7,16
	mr 10,3
	li 9,1
	mtctr 7
	bgt+ 0,.L1309
	b .L1310
.L1312:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble- 0,.L1313
	bdz .L1313
.L1309:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	bgt+ 0,.L1312
.L1313:
	cmpwi 0,9,0
	li 3,0
	beq- 0,.L1311
.L1310:
	li 3,0
.L1315:
	cmplw 0,10,4
	blt- 0,.L1314
	subf 10,4,10
	or 3,3,9
.L1314:
	srwi. 9,9,1
	srwi 4,4,1
	bne+ 0,.L1315
.L1311:
	cmpwi 0,8,0
	beqlr- 0
	neg 3,3
	blr
	.cfi_endproc
.LFE127:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	mr. 8,3
	li 7,0
	bge+ 0,.L1329
	neg 8,8
	li 7,1
.L1329:
	srawi 9,4,31
	li 6,16
	xor 4,9,4
	mr 3,8
	subf 9,9,4
	li 10,1
	cmplw 0,8,9
	mtctr 6
	bgt+ 0,.L1330
	b .L1336
.L1333:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble- 0,.L1334
	bdz .L1334
.L1330:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	bgt+ 0,.L1333
.L1334:
	cmpwi 0,10,0
	beq- 0,.L1349
.L1336:
	cmplw 7,3,9
	srwi. 10,10,1
	blt- 7,.L1335
	subf 3,9,3
.L1335:
	srwi 9,9,1
	bne+ 0,.L1336
	cmpwi 0,7,0
	beqlr- 0
.L1350:
	neg 3,3
	blr
.L1349:
	cmpwi 0,7,0
	mr 3,8
	beqlr- 0
	b .L1350
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
	bge- 0,.L1466
	andi. 9,4,0x8000
	bne- 0,.L1354
	rlwinm 9,4,1,16,30
	cmplw 0,3,9
	ble- 0,.L1355
	andi. 10,9,0x8000
	bne- 0,.L1356
	rlwinm 9,4,2,16,29
	cmplw 0,3,9
	ble- 0,.L1357
	andi. 10,9,0x8000
	bne- 0,.L1358
	rlwinm 9,4,3,16,28
	cmplw 0,3,9
	ble- 0,.L1359
	andi. 10,9,0x8000
	bne- 0,.L1360
	rlwinm 9,4,4,16,27
	cmplw 0,3,9
	ble- 0,.L1361
	andi. 10,9,0x8000
	bne- 0,.L1362
	rlwinm 9,4,5,16,26
	cmplw 0,3,9
	ble- 0,.L1363
	andi. 10,9,0x8000
	bne- 0,.L1364
	rlwinm 9,4,6,16,25
	cmplw 0,3,9
	ble- 0,.L1365
	andi. 10,9,0x8000
	bne- 0,.L1366
	rlwinm 9,4,7,16,24
	cmplw 0,3,9
	ble- 0,.L1367
	andi. 10,9,0x8000
	bne- 0,.L1368
	rlwinm 9,4,8,16,23
	cmplw 0,3,9
	ble- 0,.L1369
	andi. 10,9,0x8000
	bne- 0,.L1370
	rlwinm 9,4,9,16,22
	cmplw 0,3,9
	ble- 0,.L1371
	andi. 10,9,0x8000
	bne- 0,.L1372
	rlwinm 9,4,10,16,21
	cmplw 0,3,9
	ble- 0,.L1373
	andi. 10,9,0x8000
	bne- 0,.L1374
	rlwinm 9,4,11,16,20
	cmplw 0,3,9
	ble- 0,.L1375
	andi. 10,9,0x8000
	bne- 0,.L1376
	rlwinm 9,4,12,16,19
	cmplw 0,3,9
	ble- 0,.L1377
	andi. 10,9,0x8000
	bne- 0,.L1378
	rlwinm 9,4,13,16,18
	cmplw 0,3,9
	ble- 0,.L1379
	andi. 10,9,0x8000
	bne- 0,.L1380
	rlwinm 9,4,14,16,17
	cmplw 0,3,9
	ble- 0,.L1381
	andi. 10,9,0x8000
	bne- 0,.L1382
	rlwinm 4,4,15,16,16
	cmplw 0,3,4
	ble- 0,.L1383
	cmpwi 0,4,0
	li 7,0
	bne- 0,.L1467
.L1384:
	cmpwi 0,5,0
	beq+ 0,.L1402
	mr 7,3
.L1402:
	rlwinm 3,7,0,0xffff
	blr
.L1371:
	blt- 0,.L1418
	subf 3,9,3
	li 7,512
	rlwinm 3,3,0,0xffff
	li 8,512
.L1386:
	srwi. 10,8,2
	srwi 6,8,2
	srwi 10,9,2
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1387
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1387:
	srwi. 10,8,3
	srwi 6,8,3
	srwi 10,9,3
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1388
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1388:
	srwi. 10,8,4
	srwi 6,8,4
	srwi 10,9,4
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1389
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1389:
	srwi. 10,8,5
	srwi 6,8,5
	srwi 10,9,5
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1390
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1390:
	srwi. 10,8,6
	srwi 6,8,6
	srwi 10,9,6
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1391
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1391:
	srwi. 10,8,7
	srwi 6,8,7
	srwi 10,9,7
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1392
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1392:
	srwi. 10,8,8
	srwi 6,8,8
	srwi 10,9,8
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1393
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1393:
	srwi. 10,8,9
	srwi 6,8,9
	srwi 10,9,9
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1394
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1394:
	srwi. 10,8,10
	srwi 6,8,10
	srwi 10,9,10
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1395
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1395:
	srwi. 10,8,11
	srwi 6,8,11
	srwi 10,9,11
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1396
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1396:
	srwi. 10,8,12
	srwi 6,8,12
	srwi 10,9,12
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1397
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1397:
	srwi. 10,8,13
	srwi 6,8,13
	srwi 10,9,13
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1398
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1398:
	srwi. 10,8,14
	srwi 6,8,14
	srwi 10,9,14
	beq- 0,.L1384
	cmplw 0,3,10
	blt- 0,.L1399
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1399:
	cmpwi 0,8,16384
	srwi 9,9,15
	beq- 0,.L1384
	cmplw 0,3,9
	blt- 0,.L1407
	subf 3,9,3
	ori 7,7,0x1
	rlwinm 3,3,0,0xffff
	b .L1384
.L1407:
	li 3,0
	b .L1384
.L1466:
	li 7,0
	bne- 0,.L1384
	li 7,1
	li 3,0
	b .L1384
.L1354:
	subf 3,4,3
	li 7,1
	rlwinm 3,3,0,0xffff
	b .L1384
.L1355:
	blt- 0,.L1410
	subf 3,9,3
	li 7,2
	rlwinm 3,3,0,0xffff
	li 8,2
	b .L1386
.L1356:
	subf 3,9,3
	rlwinm 4,4,0,17,31
	rlwinm 3,3,0,0xffff
	li 10,1
	li 7,2
	li 8,2
.L1404:
	cmplw 0,3,4
	blt- 0,.L1386
	subf 3,4,3
	or 7,7,10
	rlwinm 3,3,0,0xffff
	b .L1386
.L1357:
	blt- 0,.L1411
	subf 3,9,3
	li 7,4
	rlwinm 3,3,0,0xffff
	li 8,4
	b .L1386
.L1358:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2
	li 7,4
	li 8,4
	b .L1404
.L1359:
	blt- 0,.L1412
	subf 3,9,3
	li 7,8
	rlwinm 3,3,0,0xffff
	li 8,8
	b .L1386
.L1360:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4
	li 7,8
	li 8,8
	b .L1404
.L1361:
	blt- 0,.L1413
	subf 3,9,3
	li 7,16
	rlwinm 3,3,0,0xffff
	li 8,16
	b .L1386
.L1362:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8
	li 7,16
	li 8,16
	b .L1404
.L1363:
	blt- 0,.L1414
	subf 3,9,3
	li 7,32
	rlwinm 3,3,0,0xffff
	li 8,32
	b .L1386
.L1364:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,16
	li 7,32
	li 8,32
	b .L1404
.L1365:
	blt- 0,.L1415
	subf 3,9,3
	li 7,64
	rlwinm 3,3,0,0xffff
	li 8,64
	b .L1386
.L1366:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,32
	li 7,64
	li 8,64
	b .L1404
.L1367:
	blt- 0,.L1416
	subf 3,9,3
	li 7,128
	rlwinm 3,3,0,0xffff
	li 8,128
	b .L1386
.L1368:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,64
	li 7,128
	li 8,128
	b .L1404
.L1370:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,128
	li 7,256
	li 8,256
	b .L1404
.L1372:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,256
	li 7,512
	li 8,512
	b .L1404
.L1410:
	li 8,2
.L1403:
	rlwinm 10,8,31,17,31
	srwi 4,9,1
	li 7,0
	b .L1404
.L1374:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,512
	li 7,1024
	li 8,1024
	b .L1404
.L1376:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1404
.L1411:
	li 8,4
	b .L1403
.L1412:
	li 8,8
	b .L1403
.L1378:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1404
.L1380:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1404
.L1413:
	li 8,16
	b .L1403
.L1382:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1404
.L1414:
	li 8,32
	b .L1403
.L1415:
	li 8,64
	b .L1403
.L1383:
	andi. 9,3,0x8000
	li 9,0
	bne- 0,.L1409
	li 8,0
	ori 9,9,0x8000
	ori 8,8,0x8000
	b .L1403
.L1467:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1404
.L1416:
	li 8,128
	b .L1403
.L1369:
	blt- 0,.L1417
	subf 3,9,3
	li 7,256
	rlwinm 3,3,0,0xffff
	li 8,256
	b .L1386
.L1409:
	ori 9,9,0x8000
	li 7,-32768
	li 3,0
	mr 8,9
	b .L1386
.L1417:
	li 8,256
	b .L1403
.L1373:
	blt- 0,.L1419
	subf 3,9,3
	li 7,1024
	rlwinm 3,3,0,0xffff
	li 8,1024
	b .L1386
.L1381:
	blt- 0,.L1423
	subf 3,9,3
	li 7,16384
	rlwinm 3,3,0,0xffff
	li 8,16384
	b .L1386
.L1419:
	li 8,1024
	b .L1403
.L1423:
	li 8,16384
	b .L1403
.L1418:
	li 8,512
	b .L1403
.L1379:
	blt- 0,.L1422
	subf 3,9,3
	li 7,8192
	rlwinm 3,3,0,0xffff
	li 8,8192
	b .L1386
.L1377:
	blt- 0,.L1421
	subf 3,9,3
	li 7,4096
	rlwinm 3,3,0,0xffff
	li 8,4096
	b .L1386
.L1375:
	blt- 0,.L1420
	subf 3,9,3
	li 7,2048
	rlwinm 3,3,0,0xffff
	li 8,2048
	b .L1386
.L1422:
	li 8,8192
	b .L1403
.L1421:
	li 8,4096
	b .L1403
.L1420:
	li 8,2048
	b .L1403
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	cmplw 7,3,4
	li 9,16
	mr 10,3
	mtctr 9
	li 3,32
	li 9,1
	bgt+ 7,.L1469
	b .L1470
.L1473:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1471
	blt- 0,.L1470
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1471
	bdz .L1472
.L1469:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1473
.L1470:
	li 3,0
.L1475:
	blt- 7,.L1474
	subf 10,4,10
	or 3,3,9
.L1474:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1475
.L1472:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1471:
	cmpwi 0,9,0
	bne+ 0,.L1470
	li 3,0
	b .L1472
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	andi. 9,5,0x20
	beq- 0,.L1489
	addi 5,5,-32
	li 9,0
	slw 4,3,5
	mr 3,9
	blr
.L1489:
	cmpwi 0,5,0
	beqlr- 0
	subfic 10,5,32
	slw 4,4,5
	srw 10,3,10
	slw 9,3,5
	or 4,10,4
	mr 3,9
	blr
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
	beq- 0,.L1494
	addi 5,5,-32
	srawi 9,4,31
	sraw 3,4,5
	mr 4,9
	blr
.L1494:
	cmpwi 0,5,0
	beqlr- 0
	subfic 10,5,32
	srw 3,3,5
	slw 10,4,10
	sraw 9,4,5
	or 3,10,3
	mr 4,9
	blr
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mr 9,3
	rotlwi 3,4,24
	rlwimi 3,4,8,8,15
	rlwimi 3,4,8,24,31
	rotlwi 4,9,24
	rlwimi 4,9,8,8,15
	rlwimi 4,9,8,24,31
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
	neg 8,8
	slwi 8,8,4
	subfic 9,8,16
	srw 9,3,9
	rlwinm 10,9,0,16,23
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	subfic 7,10,8
	add 8,10,8
	srw 9,9,7
	rlwinm 10,9,0,24,27
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	subfic 7,10,4
	add 10,10,8
	srw 9,9,7
	rlwinm 3,9,0,28,29
	cntlzw 3,3
	srwi 3,3,5
	slwi 3,3,1
	subfic 8,3,2
	srw 9,9,8
	andi. 8,9,0x2
	bne- 0,.L1501
	subfic 9,9,2
	add 3,3,10
	add 3,9,3
	blr
.L1501:
	li 9,0
	add 3,3,10
	add 3,9,3
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
	cmpw 0,4,6
	mr 9,3
	blt- 0,.L1505
	li 3,2
	bgtlr- 0
	cmplw 0,9,5
	li 3,0
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1505:
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
	cmpw 0,4,6
	mr 9,3
	blt- 0,.L1511
	li 3,1
	bgtlr- 0
	cmplw 0,9,5
	li 3,-1
	bltlr- 0
	subfc 5,9,5
	subfe 3,3,3
	neg 3,3
	blr
.L1511:
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
	add 10,10,8
	rlwinm 3,9,0,30,31
	cntlzw 3,3
	srwi 3,3,5
	slwi 3,3,1
	srw 9,9,3
	add 3,3,10
	rlwinm 9,9,0,30,31
	not 10,9
	srwi 9,9,1
	rlwinm 10,10,0,31,31
	subfic 9,9,2
	neg 10,10
	and 9,10,9
	add 3,9,3
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
	beq- 0,.L1516
	addi 5,5,-32
	li 9,0
	srw 3,4,5
	mr 4,9
	blr
.L1516:
	cmpwi 0,5,0
	beqlr- 0
	subfic 10,5,32
	srw 3,3,5
	slw 10,4,10
	srw 9,4,5
	or 3,10,3
	mr 4,9
	blr
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
	mullw 9,9,10
	mullw 8,8,4
	srwi 7,3,16
	mullw 10,10,4
	add 4,9,7
	rlwinm 9,4,0,0xffff
	srwi 4,4,16
	add 9,8,9
	srwi 8,9,16
	rlwimi 3,9,16,0,31-16
	add 4,4,10
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
	rlwinm 9,5,0,16,31
	rlwinm 8,3,0,16,31
	mullw 4,5,4
	srwi 7,3,16
	mr 10,3
	mullw 3,8,9
	srwi 11,5,16
	mullw 9,9,7
	mullw 8,8,11
	srwi 0,3,16
	mullw 7,7,11
	add 9,9,0
	rlwinm 11,9,0,0xffff
	srwi 9,9,16
	mullw 10,10,6
	add 8,8,11
	srwi 6,8,16
	rlwimi 3,8,16,0,31-16
	add 9,9,7
	add 9,9,6
	add 10,10,9
	add 4,10,4
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
	subfic 3,3,0
	subfze 4,4
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
	xor 4,4,3
	li 3,27030
	srwi 9,4,16
	xor 9,9,4
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,3,9
	rlwinm 3,3,0,31,31
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
	xor 9,9,3
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,8,9
	rlwinm 3,3,0,31,31
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
	srwi 9,3,1
	lis 8,0x5555
	ori 8,8,0x5555
	rlwimi 9,4,31,0,31-31
	and 9,9,8
	srwi 10,4,1
	subfc 9,9,3
	and 10,10,8
	subfe 4,10,4
	lis 8,0x3333
	srwi 10,9,2
	ori 8,8,0x3333
	rlwimi 10,4,30,0,31-30
	srwi 7,4,2
	and 10,10,8
	and 9,9,8
	addc 9,10,9
	and 4,4,8
	and 7,7,8
	srwi 10,9,4
	adde 7,7,4
	lis 6,0xf0f
	rlwimi 10,7,28,0,31-28
	srwi 8,7,4
	addc 10,10,9
	ori 6,6,0xf0f
	adde 9,8,7
	and 10,10,6
	and 9,9,6
	add 9,9,10
	srwi 10,9,16
	add 9,10,9
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,25,31
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
	rlwinm 3,3,0,26,31
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
	andi. 9,5,0x1
	mflr 0
	stw 26,8(1)
	.cfi_register 65, 0
	.cfi_offset 26, -24
	li 26,0
	stw 27,12(1)
	.cfi_offset 27, -20
	lis 27,0x3ff0
	stw 28,16(1)
	.cfi_offset 28, -16
	mr 28,5
	stw 29,20(1)
	.cfi_offset 29, -12
	mr 29,5
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,36(1)
	.cfi_offset 65, 4
	beq- 0,.L1528
.L1530:
	mr 3,26
	mr 4,27
	mr 5,30
	mr 6,31
	bl __muldf3
	mr 27,4
	mr 26,3
.L1528:
	srawi 29,29,1
	addze. 29,29
	beq- 0,.L1529
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	andi. 9,29,0x1
	mr 31,4
	mr 30,3
	bne- 0,.L1530
.L1535:
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	srawi 29,29,1
	addze 29,29
	bl __muldf3
	andi. 9,29,0x1
	mr 31,4
	mr 30,3
	bne- 0,.L1530
	b .L1535
.L1529:
	cmpwi 0,28,0
	bge+ 0,.L1527
	mr 5,26
	mr 6,27
	lis 4,0x3ff0
	li 3,0
	bl __divdf3
	mr 27,4
	mr 26,3
.L1527:
	lwz 0,36(1)
	mr 3,26
	mr 4,27
	lwz 26,8(1)
	lwz 27,12(1)
	mtlr 0
	.cfi_restore 65
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
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
	andi. 9,4,0x1
	mflr 0
	stw 28,16(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	mr 28,4
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
	beq- 0,.L1537
.L1539:
	mr 3,29
	mr 4,31
	bl __mulsf3
	mr 29,3
.L1537:
	srawi 30,30,1
	addze. 30,30
	beq- 0,.L1538
	mr 4,31
	mr 3,31
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1539
.L1544:
	mr 4,31
	mr 3,31
	srawi 30,30,1
	addze 30,30
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1539
	b .L1544
.L1538:
	cmpwi 0,28,0
	bge+ 0,.L1536
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
.L1536:
	lwz 0,36(1)
	mr 3,29
	lwz 28,16(1)
	lwz 29,20(1)
	mtlr 0
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
	cmplw 0,4,6
	mr 9,3
	blt- 0,.L1547
	li 3,2
	bgtlr- 0
	cmplw 0,9,5
	li 3,0
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1547:
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
	cmplw 0,4,6
	mr 9,3
	blt- 0,.L1553
	li 3,1
	bgtlr- 0
	cmplw 0,9,5
	li 3,-1
	bltlr- 0
	subfc 5,9,5
	subfe 3,3,3
	neg 3,3
	blr
.L1553:
	li 3,-1
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.section	.rodata
	.align 2
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
	.globl __moddi3
	.globl __divdi3
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
