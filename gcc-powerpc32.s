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
	beq- 0,.L13
	cmpwi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr- 0
.L13:
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
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne- 0,.L27
.L16:
	srwi 8,5,1
	mtctr 8
.L5:
	lbz 6,1(9)
	mr 7,9
	addi 8,10,1
	addi 9,9,2
	addi 10,10,2
	stb 6,-1(10)
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L5
	blr
.L27:
	cmpwi 0,8,0
	lbz 8,0(4)
	mr 9,4
	mr 10,3
	stb 8,0(3)
	bne+ 0,.L16
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
	beq- 0,.L29
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L49
.L39:
	srwi 10,6,1
	mtctr 10
	b .L30
.L31:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq- 0,.L47
	addi 3,3,1
	bdz .L29
.L30:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne+ 0,.L31
.L47:
	addi 3,3,1
	blr
.L49:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq- 0,.L47
	cmpwi 0,8,0
	addi 3,3,1
	bne+ 0,.L39
.L29:
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
	beq- 0,.L54
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L70
.L57:
	srwi 9,5,1
	mtctr 9
.L51:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	bdnz .L51
.L54:
	li 3,0
	blr
.L70:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpwi 0,9,0
	addi 3,3,1
	bne+ 0,.L57
	b .L54
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
	beq- 0,.L76
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L90
.L79:
	srwi 9,5,1
	mtctr 9
	b .L72
.L74:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,8,1
	cmpw 0,10,9
	bne- 0,.L88
	bdz .L76
.L72:
	lbz 10,0(3)
	addi 7,3,1
	addi 8,4,1
	lbz 9,0(4)
	cmpw 0,10,9
	beq+ 0,.L74
.L88:
	subf 3,9,10
	blr
.L90:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L88
	cmpwi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 0,.L79
.L76:
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
	beq- 0,.L92
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L92:
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
	beq- 0,.L102
	mr 3,9
	addi 9,9,-1
	lbz 8,0(3)
	cmpw 0,8,4
	beqlr- 0
.L102:
	srwi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L109
.L100:
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
	bdnz .L100
.L109:
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
	beq- 0,.L111
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L111:
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
.L118:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr- 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne+ 0,.L118
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
.L129:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L129
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
.L132:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L132
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
	beq+ 0,.L137
	b .L136
.L138:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 0,9,10
	bne- 0,.L136
.L137:
	cmpwi 0,9,0
	bne+ 0,.L138
.L136:
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
	beq- 0,.L144
	mr 9,3
.L143:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L143
	subf 3,3,9
	blr
.L144:
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
	beq- 0,.L154
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	cmpwi 0,10,0
	subf 5,3,5
	addi 9,5,1
	mtctr 9
	bne+ 0,.L150
	b .L157
.L159:
	bdz .L149
	bne- 7,.L149
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq- 0,.L158
	mr 4,8
.L150:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne+ 0,.L159
.L149:
	subf 3,9,10
	blr
.L154:
	li 3,0
	blr
.L158:
	lbz 9,1(4)
	subf 3,9,10
	blr
.L157:
	lbz 9,0(4)
	b .L149
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
	bne- 0,.L170
.L165:
	srwi 9,5,1
	mtctr 9
.L162:
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
	bdnz .L162
	blr
.L170:
	cmpwi 0,9,0
	lbz 10,1(3)
	addi 4,4,2
	lbz 9,0(3)
	addi 3,3,2
	stb 10,-2(4)
	stb 9,-1(4)
	bne+ 0,.L165
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
	beq- 0,.L175
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L175:
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
	ble- 0,.L178
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L178:
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
	beq- 0,.L185
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
	blr
.L185:
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
	ble- 0,.L189
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
.L189:
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
	ble- 0,.L200
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
.L200:
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
	ble- 0,.L203
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
	blr
.L203:
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
	bne- 0,.L208
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L209
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	bgt- 0,.L214
	li 3,0
	li 4,0
.L205:
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
.L214:
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
.L208:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L205
.L209:
	mr 3,28
	mr 4,29
	b .L205
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
	bne- 0,.L218
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L219
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	bgt- 0,.L224
	li 3,0
.L215:
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
.L224:
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
.L218:
	.cfi_restore_state
	mr 3,31
	b .L215
.L219:
	mr 3,30
	b .L215
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
	bne- 0,.L233
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L232
	rlwinm 9,28,0,0,0
	rlwinm 10,30,0,0,0
	cmpw 0,9,10
	bne- 0,.L235
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L233
.L232:
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
.L235:
	.cfi_restore_state
	cmpwi 0,9,0
	beq- 0,.L232
.L233:
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
	bne- 0,.L242
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L243
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L238
	cmpwi 0,9,0
	mr 3,31
	beq- 0,.L243
.L236:
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
.L238:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	mr 3,30
	bge- 0,.L236
.L242:
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
.L243:
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
	bne- 0,.L247
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L254
	rlwinm 9,24,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	beq- 0,.L249
	cmpwi 0,9,0
	bne- 0,.L255
.L254:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L247:
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
.L249:
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
	bge- 0,.L254
.L255:
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
	bne- 0,.L263
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L265
	rlwinm 9,30,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	bne- 0,.L267
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L263
.L265:
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
.L267:
	.cfi_restore_state
	cmpwi 0,9,0
	bne- 0,.L265
.L263:
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
	bne- 0,.L274
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L275
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L270
	cmpwi 0,9,0
	mr 3,30
	beq- 0,.L274
.L268:
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
.L270:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	mr 3,31
	bge- 0,.L268
.L275:
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
.L274:
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
	bne- 0,.L279
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L287
	rlwinm 9,28,0,0,0
	rlwinm 10,24,0,0,0
	cmpw 0,9,10
	beq- 0,.L281
	cmpwi 0,9,0
	beq- 0,.L282
.L287:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
.L279:
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
.L281:
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
	blt- 0,.L287
.L282:
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
	beq- 0,.L292
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 7,.LANCHOR1@l(7)
	mr 10,3
.L291:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 8,7,8
	addi 10,10,1
	stb 8,-1(10)
	bne+ 0,.L291
	li 9,0
	stb 9,0(10)
	blr
.L292:
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
	stw 3,12(9)
	stw 10,8(9)
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
	lwz 6,12(10)
	ori 9,9,0x7f2d
	ori 8,8,0xf42d
	lwz 3,8(10)
	mullw 7,9,6
	mullw 8,8,6
	mullw 3,9,3
	addic 7,7,1
	stw 7,12(10)
	mulhwu 9,9,6
	add 3,3,8
	adde 3,3,9
	stw 3,8(10)
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
	beq- 0,.L302
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L302:
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
	beq- 0,.L304
	lwz 10,4(3)
	stw 10,4(9)
.L304:
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
	beq- 0,.L313
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,40(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L315
.L330:
	beq- 7,.L329
.L315:
	mr 4,31
	mr 3,27
	mtctr 25
	addi 30,30,1
	mr 26,31
	add 31,31,29
	bctrl
	cmplw 7,28,30
	cmpwi 0,3,0
	bne+ 0,.L330
	lwz 25,20(1)
	.cfi_restore 25
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L312:
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
.L329:
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
.L313:
	cmpwi 0,29,0
	mullw 26,29,28
	addi 28,28,1
	stw 28,0(24)
	add 26,23,26
	beq- 0,.L312
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
	beq- 0,.L332
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
	b .L334
.L345:
	beq- 7,.L344
.L334:
	mr 4,31
	mr 3,29
	mtctr 27
	addi 30,30,1
	mr 25,31
	add 31,31,28
	bctrl
	cmplw 7,26,30
	cmpwi 0,3,0
	bne+ 0,.L345
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
.L331:
	mr 3,25
	lwz 26,24(1)
	lwz 25,20(1)
	addi 1,1,48
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L344:
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
.L332:
	li 25,0
	b .L331
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
.L354:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L348
	ble- 7,.L348
	cmpwi 0,10,43
	beq- 0,.L349
	cmpwi 0,10,45
	bne- 0,.L367
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L359
	li 5,1
.L352:
	li 3,0
.L356:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	add 9,9,3
	addi 6,10,-48
	slwi 9,9,1
	cmplwi 0,6,9
	subf 3,7,9
	ble+ 0,.L356
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,7
	blr
.L348:
	addi 3,3,1
	b .L354
.L367:
	addi 9,10,-48
	mr 8,3
	cmplwi 0,9,9
	li 5,0
	ble+ 0,.L352
.L359:
	li 3,0
	blr
.L349:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L352
	b .L359
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	b atoi
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L376:
	lbz 8,0(3)
	cmpwi 0,8,32
	addi 9,8,-9
	cmplwi 7,9,4
	beq- 0,.L370
	ble- 7,.L370
	cmpwi 0,8,43
	beq- 0,.L371
	cmpwi 0,8,45
	bne- 0,.L389
	lbz 8,1(3)
	addi 5,3,1
	addi 9,8,-48
	cmplwi 0,9,9
	bgt- 0,.L381
	li 11,1
.L374:
	li 3,0
	li 4,0
.L378:
	addi 7,8,-48
	lbzu 8,1(5)
	srwi 10,4,30
	slwi 9,4,2
	rlwimi 10,3,2,0,31-2
	addi 6,8,-48
	addc 9,9,4
	cmplwi 0,6,9
	adde 10,10,3
	srwi 6,9,31
	slwi 9,9,1
	rlwimi 6,10,1,0,31-1
	srawi 10,7,31
	subfc 4,7,9
	subfe 3,10,6
	ble+ 0,.L378
	cmpwi 0,11,0
	bnelr- 0
	subfc 4,9,7
	subfe 3,6,10
	blr
.L370:
	addi 3,3,1
	b .L376
.L389:
	addi 9,8,-48
	mr 5,3
	cmplwi 0,9,9
	li 11,0
	ble+ 0,.L374
.L381:
	li 3,0
	li 4,0
	blr
.L371:
	lbz 8,1(3)
	addi 5,3,1
	li 11,0
	addi 9,8,-48
	cmplwi 0,9,9
	ble+ 0,.L374
	b .L381
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
	beq- 0,.L391
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
	b .L394
.L403:
	ble- 0,.L401
	cmpwi 0,31,0
	add 27,30,28
	beq- 0,.L402
.L394:
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
	bge+ 0,.L403
	mr 31,29
	cmpwi 0,31,0
	bne+ 0,.L394
.L402:
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
.L391:
	li 30,0
	b .L390
.L401:
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 65, 4
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
.L390:
	mr 3,30
	lwz 31,44(1)
	lwz 30,40(1)
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
	stw 30,40(1)
	.cfi_offset 30, -8
	beq- 0,.L405
	mflr 0
	.cfi_register 65, 0
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
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 29,36(1)
	.cfi_offset 29, -12
	b .L408
.L420:
	cmpwi 0,31,0
	add 27,30,28
	beq- 0,.L419
.L408:
	srawi 29,31,1
	mr 5,26
	mullw 30,29,28
	mr 3,24
	mtctr 25
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,30
	mr 4,30
	bctrl
	cmpwi 0,3,0
	beq- 0,.L418
	bgt+ 0,.L420
	mr 31,29
	cmpwi 0,31,0
	bne+ 0,.L408
.L419:
	lwz 0,52(1)
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
	mtlr 0
	.cfi_restore 65
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
.L405:
	li 30,0
	b .L404
.L418:
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	lwz 0,52(1)
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
	mtlr 0
	.cfi_restore 65
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
.L404:
	mr 3,30
	lwz 31,44(1)
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
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
	srawi 9,3,31
	xor 4,9,4
	xor 3,9,3
	subfc 4,9,4
	subfe 3,9,3
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
	srawi 9,3,31
	xor 4,9,4
	xor 3,9,3
	subfc 4,9,4
	subfe 3,9,3
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
	beq- 0,.L434
.L431:
	cmpw 0,4,9
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L431
.L434:
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
	beq+ 0,.L439
	b .L438
.L446:
	beq- 5,.L438
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L438
.L439:
	cmpwi 7,9,0
	cmpwi 5,10,0
	bne+ 7,.L446
.L438:
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
.L448:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr- 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne+ 0,.L448
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
	beq- 0,.L454
	mr 9,3
.L453:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L453
	subf 3,3,9
	srawi 3,3,2
	blr
.L454:
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
	beq- 0,.L466
	mtctr 5
	b .L457
.L467:
	beq- 7,.L459
	addi 3,3,4
	addi 4,4,4
	bdz .L466
.L457:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 0,9,10
	beq+ 0,.L467
.L459:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	blt- 0,.L468
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L468:
	li 3,-1
	blr
.L466:
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
	beq- 0,.L473
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L489
.L476:
	srwi 9,5,1
	mtctr 9
.L470:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,4
	bdnz .L470
.L473:
	li 3,0
	blr
.L489:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpwi 0,9,0
	addi 3,3,4
	bne+ 0,.L476
	b .L473
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
	beq- 0,.L496
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L510
.L499:
	srwi 9,5,1
	mtctr 9
	b .L491
.L493:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,8,4
	cmpw 0,9,10
	bne- 0,.L508
	bdz .L496
.L491:
	lwz 9,0(3)
	addi 7,3,4
	addi 8,4,4
	lwz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L493
.L508:
	blt- 0,.L511
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L510:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L508
	cmpwi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 0,.L499
.L496:
	li 3,0
	blr
.L511:
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
	beq- 0,.L513
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L513:
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
	bge- 0,.L543
	cmpwi 0,5,0
	beqlr- 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne- 0,.L544
.L530:
	srwi 10,5,1
	mtctr 10
.L522:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L522
	blr
.L543:
	cmpwi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L545
.L533:
	srwi 8,5,1
	mtctr 8
.L523:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L523
	blr
.L544:
	cmpwi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne+ 0,.L530
	blr
.L545:
	cmpwi 0,8,0
	lwz 8,0(4)
	mr 9,4
	mr 10,3
	stw 8,0(3)
	bne+ 0,.L533
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
	beq- 0,.L557
	cmpwi 0,8,1
	beq- 0,.L561
	cmpwi 0,8,2
	beq- 0,.L562
	stw 4,0(3)
	mr 5,7
	mr 9,3
.L562:
	stwu 4,4(9)
	addi 5,5,-1
.L561:
	cmpwi 0,5,1
	stwu 4,4(9)
	beqlr- 0
.L557:
	srwi 10,10,2
	mtctr 10
.L548:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L548
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
	bge- 0,.L570
	cmpwi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L581
	cmpwi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr- 0
.L581:
	srwi 9,5,1
	mtctr 9
.L572:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L572
	blr
.L570:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne- 0,.L594
.L584:
	srwi 8,5,1
	mtctr 8
.L573:
	lbz 6,1(10)
	mr 7,10
	addi 8,9,1
	addi 10,10,2
	addi 9,9,2
	stb 6,-1(9)
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L573
	blr
.L594:
	cmpwi 0,8,0
	lbz 8,0(3)
	mr 10,3
	mr 9,4
	stb 8,0(4)
	bne+ 0,.L584
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
	addic. 9,5,-32
	blt- 0,.L596
	neg 5,5
	slw 9,4,9
	rlwinm 5,5,0,26,31
	li 8,0
	addic. 10,5,-32
	blt- 0,.L598
.L600:
	srw 4,3,10
	li 3,0
	or 3,9,3
	or 4,8,4
	blr
.L596:
	subfic 10,5,31
	srwi 9,4,1
	srw 9,9,10
	slw 8,4,5
	slw 10,3,5
	neg 5,5
	rlwinm 5,5,0,26,31
	or 9,9,10
	addic. 10,5,-32
	bge+ 0,.L600
.L598:
	slwi 7,3,1
	subfic 6,5,31
	srw 4,4,5
	slw 7,7,6
	srw 3,3,5
	or 4,7,4
	or 3,9,3
	or 4,8,4
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
	blt- 0,.L602
	neg 5,5
	srw 9,3,9
	rlwinm 5,5,0,26,31
	li 8,0
	addic. 10,5,-32
	blt- 0,.L604
.L606:
	slw 3,4,10
	li 4,0
	or 3,8,3
	or 4,9,4
	blr
.L602:
	subfic 10,5,31
	slwi 9,3,1
	slw 9,9,10
	srw 8,3,5
	srw 10,4,5
	neg 5,5
	rlwinm 5,5,0,26,31
	or 9,9,10
	addic. 10,5,-32
	bge+ 0,.L606
.L604:
	srwi 7,4,1
	subfic 6,5,31
	slw 3,3,5
	srw 7,7,6
	slw 4,4,5
	or 3,7,3
	or 3,8,3
	or 4,9,4
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
	b .L621
.L619:
	addi 9,9,1
	bne- 0,.L625
	bdz .L628
.L621:
	srw 8,3,9
	addi 9,9,1
	rlwinm 8,8,0,31,31
	srw 10,3,9
	cmpwi 7,8,0
	andi. 10,10,0x1
	beq+ 7,.L619
.L625:
	mr 3,9
	blr
.L628:
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
	beq- 0,.L632
	andi. 3,9,0x1
	bnelr- 0
	li 3,1
.L631:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L631
	blr
.L632:
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
	blt- 0,.L639
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
.L639:
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
	lis 5,0xffef
	mflr 0
	ori 5,5,0xffff
	li 6,-1
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
	blt- 0,.L644
	lis 5,0x7fef
	mr 3,30
	mr 4,31
	ori 5,5,0xffff
	li 6,-1
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
.L644:
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
	lis 7,0xffef
	lis 9,0xfc8f
	mflr 0
	ori 7,7,0xffff
	li 8,-1
	ori 9,9,0xffff
	li 10,-2
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
	blt- 0,.L649
	lis 7,0x7fef
	lis 9,0x7c8f
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	ori 9,9,0xffff
	ori 7,7,0xffff
	li 8,-1
	li 10,-2
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
.L649:
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
	bne- 0,.L654
	mr 4,29
	mr 3,29
	bl __addsf3
	mr 4,29
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L654
	cmpwi 0,31,0
	stw 30,24(1)
	.cfi_offset 30, -8
	lis 30,0x4000
	bge+ 0,.L656
	lis 30,0x3f00
.L656:
	andi. 9,31,0x1
	beq- 0,.L657
.L658:
	mr 3,29
	mr 4,30
	bl __mulsf3
	mr 29,3
.L657:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L669
	mr 4,30
	mr 3,30
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L658
.L670:
	mr 4,30
	mr 3,30
	srawi 31,31,1
	addze 31,31
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L658
	b .L670
.L669:
	lwz 30,24(1)
	.cfi_restore 30
.L654:
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
	bne- 0,.L672
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __adddf3
	mr 5,26
	mr 6,27
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L672
	cmpwi 0,31,0
	stw 28,16(1)
	.cfi_offset 28, -16
	lis 28,0x4000
	stw 29,20(1)
	.cfi_offset 29, -12
	li 29,0
	bge+ 0,.L674
	lis 28,0x3fe0
	li 29,0
.L674:
	andi. 9,31,0x1
	beq- 0,.L675
.L676:
	mr 3,26
	mr 4,27
	mr 5,28
	mr 6,29
	bl __muldf3
	mr 27,4
	mr 26,3
.L675:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L687
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __muldf3
	andi. 9,31,0x1
	mr 29,4
	mr 28,3
	bne- 0,.L676
.L688:
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
	bne- 0,.L676
	b .L688
.L687:
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
.L672:
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
	bne- 0,.L690
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
	beq- 0,.L690
	cmpwi 0,31,0
	stw 24,32(1)
	.cfi_offset 24, -32
	stw 25,36(1)
	.cfi_offset 25, -28
	stw 26,40(1)
	.cfi_offset 26, -24
	stw 27,44(1)
	.cfi_offset 27, -20
	blt- 0,.L706
	lis 24,0x4000
	li 25,0
	li 26,0
	li 27,0
.L692:
	andi. 9,31,0x1
	beq- 0,.L693
.L694:
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
.L693:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L705
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
	bne- 0,.L694
.L707:
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
	bne- 0,.L694
	b .L707
.L705:
	lwz 24,32(1)
	.cfi_restore 24
	lwz 25,36(1)
	.cfi_restore 25
	lwz 26,40(1)
	.cfi_restore 26
	lwz 27,44(1)
	.cfi_restore 27
.L690:
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
.L706:
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
	lis 24,0x3fe0
	li 25,0
	li 26,0
	li 27,0
	b .L692
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
	andi. 9,5,0x1
	addi 7,4,-1
	addi 9,3,-1
	addi 10,5,-1
	bne- 0,.L721
.L715:
	srwi 10,5,1
	mtctr 10
.L710:
	lbz 8,1(9)
	mr 10,9
	mr 6,7
	lbz 5,1(7)
	addi 9,9,2
	addi 7,7,2
	lbz 6,2(6)
	xor 8,8,5
	stb 8,-1(9)
	lbz 8,2(10)
	xor 8,8,6
	stb 8,2(10)
	bdnz .L710
	blr
.L721:
	cmpwi 0,10,0
	lbz 8,0(4)
	mr 7,4
	lbz 10,0(3)
	mr 9,3
	xor 10,10,8
	stb 10,0(3)
	bne+ 0,.L715
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
	beq- 0,.L723
.L724:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L724
.L723:
	cmpwi 0,5,0
	beq- 0,.L725
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L747
.L736:
	srwi 8,5,1
	mtctr 8
.L726:
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
	bdnz .L726
.L725:
	li 10,0
	stb 10,0(9)
	blr
.L747:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	cmpwi 0,7,0
	addi 9,9,1
	bne+ 0,.L736
	b .L725
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
	beq- 0,.L760
	cmpwi 0,8,1
	beq- 0,.L771
	cmpwi 0,8,2
	beq- 0,.L772
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L772:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L771:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmplw 0,4,3
	beqlr- 0
.L760:
	srwi 10,10,2
.L749:
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
	bne+ 0,.L749
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
	beq- 0,.L784
.L780:
	mr 10,4
	b .L783
.L782:
	beqlr- 7
.L783:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne+ 0,.L782
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L780
.L784:
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
.L789:
	lbz 10,0(9)
	cmpw 7,4,10
	cmpwi 0,10,0
	bne+ 7,.L788
	mr 3,9
.L788:
	addi 9,9,1
	bne+ 0,.L789
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
	mr 10,3
	andi. 5,11,0xff
	beq- 0,.L805
	mr 9,4
.L794:
	lbzu 8,1(9)
	cmpwi 0,8,0
	bne+ 0,.L794
	subf. 9,4,9
	mr 3,10
	beqlr- 0
	addi 3,9,-1
	b .L802
.L815:
	cmpwi 0,9,0
	addi 10,10,1
	beq- 0,.L814
.L802:
	lbz 9,0(10)
	cmpw 0,9,5
	bne+ 0,.L815
	addi 0,3,1
	mr 6,4
	mr 8,11
	mr 7,10
	mtctr 0
	b .L796
.L817:
	bdz .L798
	bne- 7,.L799
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq- 0,.L816
	lbzu 8,1(6)
.L796:
	andi. 8,8,0xff
	cmpw 7,8,9
	bne+ 0,.L817
.L799:
	addi 10,10,1
	b .L802
.L816:
	lbz 8,1(6)
.L798:
	cmpw 0,8,9
	bne+ 0,.L799
.L805:
	mr 3,10
	blr
.L814:
	li 3,0
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
	blt- 0,.L829
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L822
	mr 3,28
	mr 4,29
	li 5,0
	li 6,0
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L821
.L822:
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
.L829:
	.cfi_restore_state
	mr 3,28
	mr 4,29
	li 5,0
	li 6,0
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L822
.L821:
	lwz 0,36(1)
	addis 10,30,0x8000
	mr 4,31
	mr 30,10
	lwz 28,16(1)
	mr 3,30
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
	mr 8,3
	beqlr- 0
	cmplw 0,4,6
	blt- 0,.L837
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	subf 4,6,4
	stw 31,12(1)
	.cfi_offset 31, -4
	add 31,3,4
	cmplw 0,3,31
	bgt- 0,.L838
	stw 30,8(1)
	.cfi_offset 30, -8
	cmplwi 7,6,1
	add 4,3,6
	lbz 30,0(5)
	addi 11,3,-1
	b .L835
.L832:
	cmplw 0,31,8
	addi 4,4,1
	blt- 0,.L859
.L835:
	lbzu 9,1(11)
	mr 3,8
	addi 8,8,1
	cmpw 0,9,30
	bne+ 0,.L832
	beq- 7,.L858
	subf 9,11,4
	mr 7,5
	addi 9,9,-1
	mr 10,11
	andi. 6,9,0x1
	beq- 0,.L845
	lbz 0,1(11)
	addi 10,11,1
	addi 7,5,1
	lbz 6,1(5)
	cmpw 0,0,6
	bne- 0,.L832
	subf 6,10,4
	cmplwi 0,6,1
	beq- 0,.L858
.L845:
	srwi 9,9,1
	mtctr 9
.L833:
	lbz 12,1(10)
	addi 6,10,1
	addi 9,7,1
	lbz 0,1(7)
	addi 10,6,1
	addi 7,9,1
	cmpw 0,12,0
	bne- 0,.L832
	lbz 6,1(6)
	lbz 9,1(9)
	cmpw 0,6,9
	bne- 0,.L832
	bdnz .L833
.L858:
	lwz 30,8(1)
	.cfi_restore 30
.L830:
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L859:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lwz 30,8(1)
	.cfi_restore 30
	li 3,0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L837:
	li 3,0
	blr
.L838:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	li 3,0
	b .L830
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
	beq- 0,.L861
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L861:
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
	blt- 0,.L890
	lis 5,0x3ff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 23,0
	cmpwi 0,3,0
	blt- 0,.L891
	stw 24,16(1)
	.cfi_offset 24, -32
	stw 25,20(1)
	.cfi_offset 25, -28
.L869:
	li 29,0
	lis 24,0x3fe0
	li 25,0
	lis 26,0x3ff0
	li 27,0
.L875:
	mr 3,30
	mr 4,31
	mr 5,24
	mr 6,25
	bl __muldf3
	mr 5,26
	mr 6,27
	mr 31,4
	mr 30,3
	bl __gedf2
	cmpwi 0,3,0
	addi 29,29,1
	bge+ 0,.L875
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
.L876:
	cmpwi 0,23,0
	stw 29,0(28)
	beq- 0,.L882
	lwz 0,52(1)
	addis 3,30,0x8000
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
.L891:
	.cfi_restore_state
	lis 5,0x3fe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L872
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __nedf2
	cmpwi 0,3,0
	bne- 0,.L881
.L872:
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
.L890:
	.cfi_restore_state
	lis 5,0xbff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ledf2
	addis 26,30,0x8000
	mr 27,31
	cmpwi 0,3,0
	bgt- 0,.L892
	stw 24,16(1)
	.cfi_offset 24, -32
	mr 30,26
	li 23,1
	stw 25,20(1)
	.cfi_offset 25, -28
	b .L869
.L882:
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
.L892:
	.cfi_restore_state
	lis 5,0xbfe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L872
	li 23,1
.L870:
	mr 31,27
	mr 30,26
	li 29,0
	lis 26,0x3fe0
	li 27,0
.L877:
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __adddf3
	mr 5,26
	mr 6,27
	mr 31,4
	mr 30,3
	bl __ltdf2
	cmpwi 0,3,0
	addi 29,29,-1
	blt+ 0,.L877
	b .L876
.L881:
	mr 26,30
	mr 27,31
	b .L870
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
.L896:
	srwi 7,8,1
	rlwinm 9,8,0,31,31
	mr 8,7
	subfic 9,9,0
	rlwimi 8,10,31,0,31-31
	srwi 10,10,1
	or. 7,10,8
	and 9,9,6
	subfe 11,11,11
	srwi 7,6,31
	and 11,11,5
	addc 4,9,4
	rlwimi 7,5,1,0,31-1
	adde 3,11,3
	mr 5,7
	slwi 6,6,1
	bne+ 0,.L896
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
	blt+ 0,.L901
	b .L919
.L905:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L920
	blt- 0,.L919
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L920
	bdz .L904
.L901:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L905
.L919:
	cmplw 7,10,4
	li 3,0
.L907:
	blt- 7,.L906
	subf 10,4,10
	or 3,3,9
.L906:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L907
.L904:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L920:
	cmpwi 0,9,0
	li 3,0
	beq- 0,.L904
	li 3,0
	b .L907
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
	beq- 0,.L924
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L924:
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
	srawi 9,3,31
	cmplw 0,3,9
	xor 10,3,9
	xor 9,4,9
	beq- 0,.L933
.L931:
	cmpwi 0,10,0
	cntlzw 3,10
	beq- 0,.L934
	addi 3,3,-1
	blr
.L934:
	cntlzw 3,9
	addi 3,3,32
	addi 3,3,-1
	blr
.L933:
	cmplw 0,4,3
	bne+ 0,.L931
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
.L937:
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
	bne+ 0,.L937
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
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	blt- 0,.L942
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L975
.L942:
	cmpwi 0,10,0
	beq- 0,.L945
	andi. 8,10,0x1
	addi 7,3,-8
	addi 8,4,-8
	addi 6,10,-1
	bne- 0,.L976
.L959:
	srwi 10,10,1
	mtctr 10
.L946:
	lwz 10,8(8)
	mr 6,8
	addi 8,8,16
	lwz 11,-4(8)
	stw 10,8(7)
	mr 10,7
	addi 7,7,16
	stw 11,-4(7)
	lwz 11,16(6)
	lwz 12,20(6)
	stw 11,16(10)
	stw 12,20(10)
	bdnz .L946
.L945:
	cmplw 0,5,9
	blelr- 0
	subf 5,9,5
	addi 9,9,-1
	andi. 10,5,0x1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	bne- 0,.L977
.L956:
	srwi 9,5,1
	mtctr 9
.L947:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	addi 4,4,2
	addi 3,3,2
	stb 8,-1(3)
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L947
	blr
.L977:
	cmpwi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne+ 0,.L956
	blr
.L976:
	cmpwi 0,6,0
	lwz 11,0(4)
	mr 8,4
	lwz 12,4(4)
	mr 7,3
	stw 11,0(3)
	stw 12,4(3)
	bne+ 0,.L959
	b .L945
.L975:
	cmpwi 0,5,0
	mr 9,8
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L978
.L962:
	srwi 10,5,1
	mtctr 10
.L948:
	lbz 7,-1(9)
	mr 8,9
	addi 10,3,-1
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L948
	blr
.L978:
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	bne+ 0,.L962
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
	blt- 0,.L980
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1008
.L980:
	cmpwi 0,9,0
	beq- 0,.L983
	andi. 10,9,0x1
	addi 8,3,-2
	addi 10,4,-2
	addi 7,9,-1
	bne- 0,.L1009
.L994:
	srwi 9,9,1
	mtctr 9
.L984:
	lhz 6,2(10)
	mr 7,10
	addi 9,8,2
	addi 10,10,4
	addi 8,8,4
	sth 6,-2(8)
	lhz 7,4(7)
	sth 7,2(9)
	bdnz .L984
.L983:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L1009:
	cmpwi 0,7,0
	lhz 7,0(4)
	mr 10,4
	mr 8,3
	sth 7,0(3)
	bne+ 0,.L994
	b .L983
.L1008:
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1010
.L997:
	srwi 10,5,1
	mtctr 10
.L985:
	lbz 7,-1(9)
	mr 8,9
	addi 10,3,-1
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L985
	blr
.L1010:
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	bne+ 0,.L997
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
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	blt- 0,.L1012
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L1045
.L1012:
	cmpwi 0,10,0
	beq- 0,.L1015
	andi. 8,10,0x1
	addi 7,3,-4
	addi 8,4,-4
	addi 6,10,-1
	bne- 0,.L1046
.L1029:
	srwi 10,10,1
	mtctr 10
.L1016:
	lwz 11,4(8)
	mr 6,8
	addi 10,7,4
	addi 8,8,8
	addi 7,7,8
	stw 11,-4(7)
	lwz 6,8(6)
	stw 6,4(10)
	bdnz .L1016
.L1015:
	cmplw 0,5,9
	blelr- 0
	subf 5,9,5
	addi 9,9,-1
	andi. 10,5,0x1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	bne- 0,.L1047
.L1026:
	srwi 9,5,1
	mtctr 9
.L1017:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	addi 4,4,2
	addi 3,3,2
	stb 8,-1(3)
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L1017
	blr
.L1047:
	cmpwi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne+ 0,.L1026
	blr
.L1046:
	cmpwi 0,6,0
	lwz 6,0(4)
	mr 8,4
	mr 7,3
	stw 6,0(3)
	bne+ 0,.L1029
	b .L1015
.L1045:
	cmpwi 0,5,0
	mr 9,8
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	bne- 0,.L1048
.L1032:
	srwi 10,5,1
	mtctr 10
.L1018:
	lbz 7,-1(9)
	mr 8,9
	addi 10,3,-1
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L1018
	blr
.L1048:
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	bne+ 0,.L1032
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
	li 10,8
	li 9,0
	mtctr 10
.L1061:
	subfic 10,9,15
	sraw 10,3,10
	andi. 10,10,0x1
	bne- 0,.L1059
	addi 9,9,1
	subfic 10,9,15
	sraw 10,3,10
	andi. 10,10,0x1
	bne- 0,.L1059
	addi 9,9,1
	bdnz .L1061
.L1059:
	mr 3,9
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
	li 10,8
	li 9,0
	mtctr 10
.L1068:
	sraw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L1066
	addi 9,9,1
	sraw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L1066
	addi 9,9,1
	bdnz .L1068
.L1066:
	mr 3,9
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
	bge- 0,.L1080
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
.L1080:
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
	li 9,4
	li 7,0
	li 8,0
	li 6,0
	mtctr 9
.L1082:
	addi 9,8,1
	sraw 5,3,8
	sraw 4,3,9
	addi 10,8,3
	addi 9,8,2
	rlwinm 4,4,0,31,31
	sraw 9,3,9
	rlwinm 5,5,0,31,31
	sraw 10,3,10
	add 6,6,4
	rlwinm 9,9,0,31,31
	add 7,7,5
	rlwinm 10,10,0,31,31
	add 7,7,9
	add 6,6,10
	addi 8,8,4
	bdnz .L1082
	add 3,7,6
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
	li 9,4
	li 5,0
	mr 7,3
	li 8,0
	li 6,0
	mtctr 9
.L1089:
	addi 9,8,1
	sraw 4,7,8
	sraw 3,7,9
	addi 10,8,3
	addi 9,8,2
	rlwinm 3,3,0,31,31
	sraw 9,7,9
	rlwinm 4,4,0,31,31
	sraw 10,7,10
	add 6,6,3
	rlwinm 9,9,0,31,31
	add 5,5,4
	rlwinm 10,10,0,31,31
	add 5,5,9
	add 6,6,10
	addi 8,8,4
	bdnz .L1089
	add 3,5,6
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
.L1097:
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
	bne+ 0,.L1097
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
.L1103:
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
	bne+ 0,.L1103
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
	bgt+ 7,.L1109
	b .L1110
.L1113:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1111
	blt- 0,.L1110
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1111
	bdz .L1112
.L1109:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1113
.L1110:
	li 3,0
.L1115:
	blt- 7,.L1114
	subf 10,4,10
	or 3,3,9
.L1114:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1115
.L1112:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1111:
	cmpwi 0,9,0
	bne+ 0,.L1110
	li 3,0
	b .L1112
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
	blt- 0,.L1131
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
.L1131:
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
	blt- 0,.L1136
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
.L1136:
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
	mulhw 3,3,4
	mullw 4,9,4
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
	mulhwu 3,3,4
	mullw 4,9,4
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
	blt- 0,.L1154
	beq- 0,.L1146
	li 6,0
.L1142:
	li 10,32
	li 3,0
	b .L1145
.L1155:
	beq- 7,.L1144
.L1145:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 9,9
	and 9,9,8
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 3,3,9
	slwi 8,8,1
	bne+ 0,.L1155
.L1144:
	cmpwi 0,6,0
	beqlr- 0
	neg 3,3
	blr
.L1154:
	neg 4,4
	li 6,1
	b .L1142
.L1146:
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
	li 8,0
	bge+ 0,.L1157
	neg 3,3
	li 8,1
.L1157:
	cmpwi 0,4,0
	bge+ 0,.L1158
	neg 4,4
	xori 8,8,0x1
.L1158:
	cmplw 0,3,4
	li 7,16
	mr 10,3
	li 9,1
	mtctr 7
	bgt+ 0,.L1159
	b .L1160
.L1163:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble- 0,.L1162
	bdz .L1162
.L1159:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	bgt+ 0,.L1163
.L1162:
	cmpwi 0,9,0
	li 3,0
	beq- 0,.L1161
.L1160:
	li 3,0
.L1165:
	cmplw 0,4,10
	bgt- 0,.L1164
	subf 10,4,10
	or 3,3,9
.L1164:
	srwi. 9,9,1
	srwi 4,4,1
	bne+ 0,.L1165
.L1161:
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
	bge+ 0,.L1181
	neg 8,8
	li 7,1
.L1181:
	srawi 9,4,31
	li 6,16
	xor 4,9,4
	mr 3,8
	subf 9,9,4
	li 10,1
	cmplw 0,8,9
	mtctr 6
	bgt+ 0,.L1182
	b .L1188
.L1186:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble- 0,.L1185
	bdz .L1185
.L1182:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	bgt+ 0,.L1186
.L1185:
	cmpwi 0,10,0
	beq- 0,.L1203
.L1188:
	cmplw 7,3,9
	srwi. 10,10,1
	blt- 7,.L1187
	subf 3,9,3
.L1187:
	srwi 9,9,1
	bne+ 0,.L1188
.L1184:
	cmpwi 0,7,0
	beqlr- 0
	neg 3,3
	blr
.L1203:
	mr 3,8
	b .L1184
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
	li 10,16
	li 9,1
	mtctr 10
	bge- 0,.L1220
.L1205:
	andi. 10,4,0x8000
	slwi 10,9,1
	bne- 0,.L1220
	rlwinm 4,4,1,16,30
	mr 9,10
	cmplw 7,3,4
	ble- 7,.L1221
	bdnz .L1205
	li 10,0
.L1208:
	cmpwi 0,5,0
	beq+ 0,.L1212
	mr 10,3
.L1212:
	rlwinm 3,10,0,0xffff
	blr
.L1221:
	andi. 8,10,0xfffe
	beq- 0,.L1208
.L1206:
	li 10,0
.L1211:
	rlwinm 8,9,31,17,31
	subf 7,4,3
	blt- 7,.L1210
	rlwinm 3,7,0,0xffff
	or 10,9,10
.L1210:
	cmpwi 0,8,0
	srwi 4,4,1
	cmplw 7,3,4
	mr 9,8
	bne+ 0,.L1211
	b .L1208
.L1220:
	cmplw 7,3,4
	b .L1206
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
	bgt+ 7,.L1223
	b .L1224
.L1227:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1225
	blt- 0,.L1224
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1225
	bdz .L1226
.L1223:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1227
.L1224:
	li 3,0
.L1229:
	blt- 7,.L1228
	subf 10,4,10
	or 3,3,9
.L1228:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1229
.L1226:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1225:
	cmpwi 0,9,0
	bne+ 0,.L1224
	li 3,0
	b .L1226
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
	beq- 0,.L1243
	addi 5,5,-32
	li 9,0
	slw 3,4,5
	mr 4,9
	blr
.L1243:
	cmpwi 0,5,0
	beqlr- 0
	subfic 10,5,32
	slw 3,3,5
	srw 10,4,10
	slw 9,4,5
	or 3,10,3
	mr 4,9
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
	beq- 0,.L1248
	addi 5,5,-32
	srawi 9,3,31
	sraw 4,3,5
	mr 3,9
	blr
.L1248:
	cmpwi 0,5,0
	beqlr- 0
	subfic 10,5,32
	srw 4,4,5
	slw 10,3,10
	sraw 9,3,5
	or 4,10,4
	mr 3,9
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
	bne- 0,.L1255
	subfic 9,9,2
	add 3,3,10
	add 3,9,3
	blr
.L1255:
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
	cmpw 0,3,5
	blt- 0,.L1259
	li 3,2
	bgtlr- 0
	cmplw 0,4,6
	li 3,0
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1259:
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
	cmpw 0,3,5
	blt- 0,.L1265
	li 3,1
	bgtlr- 0
	cmplw 0,4,6
	li 3,-1
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	neg 3,3
	blr
.L1265:
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
	beq- 0,.L1270
	addi 5,5,-32
	li 9,0
	srw 4,3,5
	mr 3,9
	blr
.L1270:
	cmpwi 0,5,0
	beqlr- 0
	subfic 10,5,32
	srw 4,4,5
	slw 10,3,10
	srw 9,3,5
	or 4,10,4
	mr 3,9
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
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	srwi 3,3,16
	mr 7,4
	mullw 4,10,9
	srwi 7,7,16
	mullw 9,9,3
	mullw 10,10,7
	srwi 6,4,16
	mullw 7,3,7
	add 3,9,6
	rlwinm 9,3,0,0xffff
	srwi 3,3,16
	add 9,10,9
	srwi 8,9,16
	rlwimi 4,9,16,0,31-16
	add 3,3,7
	add 3,3,8
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
	rlwinm 9,6,0,16,31
	rlwinm 8,4,0,16,31
	mullw 3,6,3
	srwi 7,4,16
	mr 10,4
	mullw 4,8,9
	srwi 11,6,16
	mullw 9,9,7
	mullw 8,8,11
	srwi 0,4,16
	mullw 7,7,11
	add 9,9,0
	rlwinm 11,9,0,0xffff
	srwi 9,9,16
	mullw 10,10,5
	add 8,8,11
	srwi 5,8,16
	rlwimi 4,8,16,0,31-16
	add 9,9,7
	add 9,9,5
	add 10,10,9
	add 3,10,3
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
	subfic 4,4,0
	subfze 3,3
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
	xor 4,3,4
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
	srwi 9,4,1
	lis 8,0x5555
	ori 8,8,0x5555
	rlwimi 9,3,31,0,31-31
	and 9,9,8
	srwi 10,3,1
	subfc 9,9,4
	and 10,10,8
	subfe 3,10,3
	lis 8,0x3333
	srwi 10,9,2
	ori 8,8,0x3333
	rlwimi 10,3,30,0,31-30
	srwi 7,3,2
	and 10,10,8
	and 9,9,8
	addc 9,10,9
	and 3,3,8
	and 7,7,8
	srwi 10,9,4
	adde 7,7,3
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
	lis 26,0x3ff0
	stw 27,12(1)
	.cfi_offset 27, -20
	li 27,0
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
	beq- 0,.L1282
.L1284:
	mr 3,26
	mr 4,27
	mr 5,30
	mr 6,31
	bl __muldf3
	mr 27,4
	mr 26,3
.L1282:
	srawi 29,29,1
	addze. 29,29
	beq- 0,.L1283
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	andi. 9,29,0x1
	mr 31,4
	mr 30,3
	bne- 0,.L1284
.L1289:
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
	bne- 0,.L1284
	b .L1289
.L1283:
	cmpwi 0,28,0
	bge+ 0,.L1281
	mr 5,26
	mr 6,27
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	mr 27,4
	mr 26,3
.L1281:
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
	beq- 0,.L1291
.L1293:
	mr 3,29
	mr 4,31
	bl __mulsf3
	mr 29,3
.L1291:
	srawi 30,30,1
	addze. 30,30
	beq- 0,.L1292
	mr 4,31
	mr 3,31
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1293
.L1298:
	mr 4,31
	mr 3,31
	srawi 30,30,1
	addze 30,30
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1293
	b .L1298
.L1292:
	cmpwi 0,28,0
	bge+ 0,.L1290
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
.L1290:
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
	cmplw 0,3,5
	blt- 0,.L1301
	li 3,2
	bgtlr- 0
	cmplw 0,4,6
	li 3,0
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1301:
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
	cmplw 0,3,5
	blt- 0,.L1307
	li 3,1
	bgtlr- 0
	cmplw 0,4,6
	li 3,-1
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	neg 3,3
	blr
.L1307:
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
