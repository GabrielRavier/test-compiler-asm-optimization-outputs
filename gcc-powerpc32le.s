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
	add 4,4,5
	add 9,3,5
	cmpwi 0,5,0
	beqlr- 0
	addi 10,5,-1
	andi. 8,5,0x1
	beq- 0,.L13
	lbzu 8,-1(4)
	stbu 8,-1(9)
	cmpwi 0,10,0
	beqlr- 0
.L13:
	srwi 10,5,1
	mtctr 10
.L4:
	mr 8,4
	lbz 7,-1(4)
	addi 10,9,-1
	stb 7,-1(9)
	addi 4,4,-2
	lbz 8,-2(8)
	addi 9,9,-2
	stb 8,-1(10)
	bdnz .L4
	blr
.L2:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 9,4,-1
	addi 10,3,-1
	addi 8,5,-1
	andi. 7,5,0x1
	bne- 0,.L27
.L16:
	srwi 8,5,1
	mtctr 8
.L5:
	addi 7,9,1
	lbz 9,1(9)
	addi 8,10,1
	stb 9,1(10)
	addi 9,7,1
	lbz 7,1(7)
	addi 10,10,2
	stb 7,1(8)
	bdnz .L5
	blr
.L27:
	mr 9,4
	lbz 7,0(4)
	mr 10,3
	stb 7,0(3)
	cmpwi 0,8,0
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
	rlwinm 5,5,0,0xff
	cmpwi 7,6,0
	beq- 7,.L33
	addi 10,4,-1
	addi 7,6,-1
	mr 9,6
	andi. 8,6,0x1
	bne- 0,.L47
.L37:
	srwi 9,9,1
	mtctr 9
	b .L30
.L31:
	addi 6,6,-1
	cmpwi 7,6,0
	addi 10,8,1
	lbz 9,1(8)
	stbu 9,1(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq- 0,.L45
	addi 3,3,1
	addi 6,6,-1
	cmpwi 7,6,0
	bdz .L33
.L30:
	addi 8,10,1
	lbz 9,1(10)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	bne+ 0,.L31
.L45:
	beq- 7,.L33
	addi 3,3,1
	blr
.L47:
	mr 10,4
	lbz 8,0(4)
	stb 8,0(3)
	rlwinm 8,8,0,0xff
	cmpw 0,8,5
	beq- 0,.L45
	addi 3,3,1
	mr 6,7
	cmpwi 7,7,0
	bne+ 7,.L37
.L33:
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
	rlwinm 4,4,0,0xff
	cmpwi 7,5,0
	beq- 7,.L54
	addi 10,5,-1
	mr 9,5
	andi. 8,5,0x1
	bne- 0,.L67
.L57:
	srwi 9,9,1
	mtctr 9
	b .L49
.L51:
	addi 5,5,-1
	cmpwi 7,5,0
	lbzu 9,1(3)
	cmpw 0,9,4
	beq- 0,.L65
	addi 3,3,1
	addi 5,5,-1
	cmpwi 7,5,0
	bdz .L54
.L49:
	lbz 9,0(3)
	cmpw 0,9,4
	bne+ 0,.L51
.L65:
	bnelr+ 7
.L54:
	li 3,0
	blr
.L67:
	lbz 8,0(3)
	cmpw 0,8,4
	beq- 0,.L65
	addi 3,3,1
	mr 5,10
	cmpwi 7,10,0
	bne+ 7,.L57
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
	cmpwi 7,5,0
	beq- 7,.L73
	addi 10,5,-1
	mr 9,5
	andi. 8,5,0x1
	bne- 0,.L87
.L77:
	srwi 9,9,1
	mtctr 9
	b .L69
.L71:
	addi 5,5,-1
	cmpwi 7,5,0
	lbzu 10,1(3)
	lbzu 9,1(4)
	cmpw 0,10,9
	bne- 0,.L85
	addi 3,3,1
	addi 4,4,1
	addi 5,5,-1
	cmpwi 7,5,0
	bdz .L73
.L69:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	beq+ 0,.L71
.L85:
	beq- 7,.L73
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	blr
.L87:
	lbz 7,0(3)
	lbz 8,0(4)
	cmpw 0,7,8
	bne- 0,.L85
	addi 3,3,1
	addi 4,4,1
	mr 5,10
	cmpwi 7,10,0
	bne+ 7,.L77
.L73:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	cmpwi 0,5,0
	beq- 0,.L89
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L89:
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
	rlwinm 4,4,0,0xff
	addi 5,5,-1
	add 9,3,5
	addi 5,5,1
	andi. 10,5,0x1
	beq- 0,.L99
	mr 3,9
	addi 9,9,-1
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
.L99:
	srwi 5,5,1
	addi 10,5,1
	mtctr 10
	bdz .L106
.L97:
	mr 3,9
	addi 10,9,-1
	lbz 9,0(9)
	cmpw 0,9,4
	beqlr- 0
	mr 3,10
	addi 9,10,-1
	lbz 10,0(10)
	cmpw 0,10,4
	beqlr- 0
	bdnz .L97
.L106:
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
	beqlr- 0
	addi 9,3,-1
	addi 7,5,-1
	mr 10,5
	andi. 8,5,0x3
	beq- 0,.L118
	cmpwi 0,8,1
	beq- 0,.L122
	cmpwi 0,8,2
	beq- 0,.L123
	mr 9,3
	stb 4,0(3)
	mr 5,7
.L123:
	stbu 4,1(9)
	addi 5,5,-1
.L122:
	stbu 4,1(9)
	cmpwi 0,5,1
	beqlr- 0
.L118:
	srwi 10,10,2
	mtctr 10
.L109:
	stb 4,1(9)
	stb 4,2(9)
	stb 4,3(9)
	stbu 4,4(9)
	bdnz .L109
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
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beqlr- 0
.L132:
	lbzu 9,1(4)
	stbu 9,1(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beqlr- 0
	lbzu 9,1(4)
	stbu 9,1(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne+ 0,.L132
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
	rlwinm 4,4,0,0xff
	lbz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	beqlr- 0
.L143:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L143
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
.L146:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	cmpwi 0,9,0
	bne+ 0,.L146
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
	lbz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L150
	b .L149
.L151:
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 0,9,10
	bne- 0,.L149
.L150:
	cmpwi 0,9,0
	bne+ 0,.L151
.L149:
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
	mr 9,3
	beq- 0,.L153
.L154:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L154
.L153:
	subf 3,3,9
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
	beq- 0,.L162
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L159
	mtctr 5
	b .L160
.L175:
	bdz .L159
	cmpw 0,10,9
	bne- 0,.L159
	addi 4,4,1
	lbzu 9,1(3)
	cmpwi 0,9,0
	beq- 0,.L159
.L160:
	lbz 10,0(4)
	cmpwi 0,10,0
	bne+ 0,.L175
.L159:
	lbz 3,0(4)
	subf 3,3,9
	blr
.L162:
	li 3,0
	blr
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
	addi 9,5,-1
	andi. 10,5,0x1
	bne- 0,.L186
.L181:
	srwi 9,5,1
	mtctr 9
.L178:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	lbz 8,3(3)
	stb 8,2(4)
	lbz 8,2(3)
	stb 8,3(4)
	addi 4,4,4
	addi 3,3,4
	bdnz .L178
	blr
.L186:
	lbz 10,1(3)
	stb 10,0(4)
	lbz 10,0(3)
	stb 10,1(4)
	addi 4,4,2
	addi 3,3,2
	cmpwi 0,9,0
	bne+ 0,.L181
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
	beq- 0,.L191
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L191:
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
	ble- 0,.L194
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L194:
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
	beq- 0,.L201
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
	blr
.L201:
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
	mr 9,3
	cmplwi 0,3,31
	ble- 0,.L205
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
.L205:
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
	mr 9,3
	cmplwi 0,3,254
	ble- 0,.L216
	li 3,1
	cmplwi 0,9,8231
	blelr- 0
	addi 10,9,-8234
	cmplwi 0,10,47061
	blelr- 0
	addis 10,9,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	blelr- 0
	addi 10,10,4
	li 3,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgtlr- 0
	rlwinm 9,9,0,16,30
	xori 9,9,0xfffe
	addic 3,9,-1
	subfe 3,3,9
	blr
.L216:
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
	ble- 0,.L219
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
	blr
.L219:
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
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L224
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L225
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	bgt- 0,.L230
	li 4,0
	li 3,0
.L221:
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L230:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L224:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L221
.L225:
	mr 3,28
	mr 4,29
	b .L221
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
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	mr 30,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L234
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L235
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	bgt- 0,.L240
	li 3,0
.L231:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L240:
	.cfi_restore_state
	mr 4,30
	mr 3,31
	bl __subsf3
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L234:
	.cfi_restore_state
	mr 3,31
	b .L231
.L235:
	mr 3,30
	b .L231
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
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 29,4
	mr 28,3
	mr 31,6
	mr 30,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L249
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L248
	rlwinm 9,29,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	bne- 0,.L251
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L249
.L248:
	mr 3,28
	mr 4,29
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L251:
	.cfi_restore_state
	cmpwi 0,9,0
	beq- 0,.L248
.L249:
	mr 3,30
	mr 4,31
	lwz 0,36(1)
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
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	mr 31,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L258
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L259
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	bne- 0,.L264
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge- 0,.L259
	mr 30,31
.L259:
	mr 3,30
.L252:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L264:
	.cfi_restore_state
	mr 3,31
	cmpwi 0,9,0
	beq- 0,.L259
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L258:
	.cfi_restore_state
	mr 3,31
	b .L252
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
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
	mr 31,10
	mr 30,9
	mr 29,8
	mr 28,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bne- 0,.L265
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L272
	rlwinm 9,27,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L267
	cmpwi 0,9,0
	bne- 0,.L273
.L272:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L265:
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 24,16(1)
	lwz 25,20(1)
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
.L267:
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
	bge- 0,.L272
.L273:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	lwz 24,16(1)
	lwz 25,20(1)
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
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L281
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L283
	rlwinm 9,31,0,0,0
	rlwinm 10,29,0,0,0
	cmpw 0,9,10
	bne- 0,.L285
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L281
.L283:
	mr 3,30
	mr 4,31
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L285:
	.cfi_restore_state
	cmpwi 0,9,0
	bne- 0,.L283
.L281:
	mr 3,28
	mr 4,29
	lwz 0,36(1)
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
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	mr 31,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L292
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L293
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	bne- 0,.L298
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge- 0,.L292
	mr 31,30
.L292:
	mr 3,31
.L286:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L298:
	.cfi_restore_state
	mr 3,30
	cmpwi 0,9,0
	beq- 0,.L292
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L293:
	.cfi_restore_state
	mr 3,30
	b .L286
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
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,6
	mr 30,5
	mr 29,4
	mr 28,3
	mr 27,10
	mr 26,9
	mr 25,8
	mr 24,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bne- 0,.L299
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L307
	rlwinm 9,31,0,0,0
	rlwinm 10,27,0,0,0
	cmpw 0,9,10
	beq- 0,.L301
	cmpwi 0,9,0
	beq- 0,.L302
.L307:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
.L299:
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 24,16(1)
	lwz 25,20(1)
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
.L301:
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
	blt- 0,.L307
.L302:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	lwz 24,16(1)
	lwz 25,20(1)
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
	la 3,.LANCHOR0@l(3)
	mr 10,3
	beq- 0,.L310
	lis 7,.LANCHOR1@ha
	la 7,.LANCHOR1@l(7)
.L311:
	rlwinm 8,9,0,26,31
	lbzx 8,7,8
	stb 8,0(10)
	addi 10,10,1
	srwi. 9,9,6
	bne+ 0,.L311
.L310:
	li 9,0
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
	la 9,.LANCHOR0@l(9)
	addi 3,3,-1
	stw 3,8(9)
	li 10,0
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
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lis 10,0x4c95
	ori 10,10,0x7f2d
	lwz 3,12(9)
	mullw 3,10,3
	lwz 7,8(9)
	lis 8,0x5851
	ori 8,8,0xf42d
	mullw 8,8,7
	add 3,3,8
	mullw 8,10,7
	mulhwu 10,10,7
	addic 8,8,1
	adde 3,3,10
	stw 8,8(9)
	stw 3,12(9)
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
	beq- 0,.L322
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L322:
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
	beq- 0,.L324
	lwz 10,4(3)
	stw 10,4(9)
.L324:
	lwz 9,4(3)
	cmpwi 0,9,0
	beqlr- 0
	lwz 10,0(3)
	stw 10,0(9)
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
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	.cfi_offset 65, 4
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	mr 27,3
	mr 23,4
	mr 24,5
	mr 29,6
	lwz 28,0(5)
	cmpwi 0,28,0
	beq- 0,.L333
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 30,40(1)
	.cfi_offset 30, -8
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 26,7
	mr 31,4
	li 30,0
	b .L335
.L350:
	addi 30,30,1
	add 31,31,29
	cmplw 0,28,30
	beq- 0,.L349
.L335:
	mr 25,31
	mr 4,31
	mr 3,27
	mtctr 26
	bctrl
	cmpwi 0,3,0
	bne+ 0,.L350
	lwz 26,24(1)
	.cfi_restore 26
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L332:
	mr 3,25
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	addi 1,1,48
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L349:
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
	lwz 26,24(1)
	.cfi_restore 26
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L333:
	addi 9,28,1
	stw 9,0(24)
	mullw 28,29,28
	add 25,23,28
	cmpwi 0,29,0
	beq- 0,.L332
	mr 5,29
	mr 4,27
	mr 3,25
	bl memmove
	mr 3,25
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	addi 1,1,48
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 25
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
	stw 25,20(1)
	stw 26,24(1)
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	lwz 26,0(5)
	cmpwi 0,26,0
	beq- 0,.L352
	mflr 0
	.cfi_register 65, 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 30,40(1)
	.cfi_offset 30, -8
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 29,3
	mr 27,6
	mr 28,7
	mr 31,4
	li 30,0
	b .L354
.L365:
	addi 30,30,1
	add 31,31,27
	cmplw 0,26,30
	beq- 0,.L364
.L354:
	mr 25,31
	mr 4,31
	mr 3,29
	mtctr 28
	bctrl
	cmpwi 0,3,0
	bne+ 0,.L365
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L351:
	mr 3,25
	lwz 25,20(1)
	lwz 26,24(1)
	addi 1,1,48
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L364:
	.cfi_def_cfa_offset 48
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L352:
	li 25,0
	b .L351
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
	mr 10,3
.L368:
	lbz 9,0(10)
	cmpwi 0,9,32
	beq- 0,.L370
	addi 8,9,-9
	subfic 8,8,4
	subfe 3,3,3
	addic. 3,3,1
	beq- 0,.L382
.L370:
	addi 10,10,1
	b .L368
.L382:
	li 7,0
	cmpwi 0,9,43
	beq- 0,.L371
	cmpwi 0,9,45
	beq- 0,.L383
.L372:
	lbz 8,0(10)
	addi 9,8,-48
	cmplwi 0,9,9
	bgt- 0,.L374
.L373:
	slwi 9,3,2
	add 9,9,3
	slwi 9,9,1
	addi 8,8,-48
	subf 3,8,9
	lbzu 8,1(10)
	addi 9,8,-48
	cmplwi 0,9,9
	ble+ 0,.L373
.L374:
	cmpwi 0,7,0
	bnelr- 0
	neg 3,3
	blr
.L383:
	li 7,1
.L371:
	addi 10,10,1
	b .L372
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
	mr 7,3
.L386:
	lbz 9,0(7)
	cmpwi 0,9,32
	beq- 0,.L388
	addi 10,9,-9
	subfic 10,10,4
	subfe 10,10,10
	addic. 10,10,1
	beq- 0,.L402
.L388:
	addi 7,7,1
	b .L386
.L402:
	cmpwi 7,9,43
	beq- 7,.L389
	cmpwi 7,9,45
	beq- 7,.L403
.L390:
	lbz 10,0(7)
	addi 9,10,-48
	li 3,0
	li 4,0
	cmplwi 7,9,9
	bgt- 7,.L392
.L391:
	srwi 8,3,30
	rlwimi 8,4,2,0,31-2
	slwi 9,3,2
	addc 9,9,3
	adde 8,8,4
	srwi 6,9,31
	rlwimi 6,8,1,0,31-1
	slwi 9,9,1
	addi 10,10,-48
	srawi 4,10,31
	subfc 3,10,9
	subfe 4,4,6
	lbzu 10,1(7)
	addi 9,10,-48
	cmplwi 7,9,9
	ble+ 7,.L391
.L392:
	bnelr- 0
	subfic 3,3,0
	subfze 4,4
	blr
.L403:
	li 9,1
	cmpwi 0,9,0
.L389:
	addi 7,7,1
	b .L390
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
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr. 31,5
	beq- 0,.L405
	mflr 0
	.cfi_register 65, 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 25,20(1)
	.cfi_offset 25, -28
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 29,36(1)
	.cfi_offset 29, -12
	mr 25,3
	mr 27,4
	mr 28,6
	mr 26,7
	b .L408
.L417:
	ble- 0,.L415
	add 27,30,28
	addi 31,31,-1
	subf 31,29,31
	cmpwi 0,31,0
	beq- 0,.L416
.L408:
	srwi 29,31,1
	mullw 30,29,28
	add 30,27,30
	mr 4,30
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	bge+ 0,.L417
	mr 31,29
	cmpwi 0,31,0
	bne+ 0,.L408
.L416:
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L405:
	li 30,0
	b .L404
.L415:
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L404:
	mr 3,30
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
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr. 30,5
	beq- 0,.L419
	mflr 0
	.cfi_register 65, 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 25,20(1)
	.cfi_offset 25, -28
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 29,36(1)
	.cfi_offset 29, -12
	mr 25,3
	mr 28,4
	mr 29,6
	mr 26,7
	mr 27,8
	b .L422
.L433:
	ble- 0,.L421
	add 28,31,29
	addi 30,30,-1
.L421:
	srawi. 30,30,1
	beq- 0,.L432
.L422:
	srawi 31,30,1
	mullw 31,31,29
	add 31,28,31
	mr 5,27
	mr 4,31
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	bne+ 0,.L433
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L418:
	mr 3,31
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L432:
	.cfi_def_cfa_offset 48
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
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L419:
	li 31,0
	b .L418
	.cfi_endproc
.LFE49:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	divw 9,4,5
	stw 9,0(3)
	mullw 9,9,5
	subf 4,9,4
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
	xor 4,9,4
	xor 3,9,3
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
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	mr 29,5
	mr 30,6
	mr 27,7
	mr 28,8
	mr 5,7
	mr 6,8
	mr 3,29
	mr 4,30
	bl __divdi3
	stw 3,0(31)
	stw 4,4(31)
	mr 5,27
	mr 6,28
	mr 3,29
	mr 4,30
	bl __moddi3
	stw 3,8(31)
	stw 4,12(31)
	mr 3,31
	lwz 0,36(1)
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
	divw 9,4,5
	stw 9,0(3)
	mullw 9,9,5
	subf 4,9,4
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
	xor 4,9,4
	xor 3,9,3
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
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	mr 29,5
	mr 30,6
	mr 27,7
	mr 28,8
	mr 5,7
	mr 6,8
	mr 3,29
	mr 4,30
	bl __divdi3
	stw 3,0(31)
	stw 4,4(31)
	mr 5,27
	mr 6,28
	mr 3,29
	mr 4,30
	bl __moddi3
	stw 3,8(31)
	stw 4,12(31)
	mr 3,31
	lwz 0,36(1)
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
	bne+ 0,.L444
	b .L449
.L446:
	lwzu 9,4(3)
	cmpwi 0,9,0
	beq- 0,.L449
.L444:
	cmpw 7,4,9
	bne+ 7,.L446
	bnelr+ 0
.L449:
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
	beq+ 0,.L454
	b .L453
.L461:
	cmpwi 7,10,0
	beq- 7,.L453
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne- 0,.L453
.L454:
	cmpwi 7,9,0
	bne+ 7,.L461
.L453:
	li 3,-1
	bltlr- 0
	srwi 3,9,31
	srawi 8,10,31
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
.L463:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	beqlr- 0
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L463
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
	mr 9,3
	beq- 0,.L467
.L468:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L468
.L467:
	subf 3,3,9
	srawi 3,3,2
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
	beq- 0,.L476
	mtctr 5
	b .L472
.L482:
	cmpwi 7,9,0
	beq- 7,.L473
	addi 3,3,4
	addi 4,4,4
	addic. 5,5,-1
	bdz .L476
.L472:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 7,9,10
	beq+ 7,.L482
.L473:
	beq- 0,.L476
	lwz 9,0(3)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,9,10
	bltlr- 0
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L476:
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
	cmpwi 7,5,0
	beq- 7,.L489
	addi 10,5,-1
	mr 9,5
	andi. 8,5,0x1
	bne- 0,.L502
.L492:
	srwi 9,9,1
	mtctr 9
	b .L484
.L486:
	addi 5,5,-1
	cmpwi 7,5,0
	lwzu 9,4(3)
	cmpw 0,9,4
	beq- 0,.L500
	addi 3,3,4
	addi 5,5,-1
	cmpwi 7,5,0
	bdz .L489
.L484:
	lwz 9,0(3)
	cmpw 0,9,4
	bne+ 0,.L486
.L500:
	bnelr+ 7
.L489:
	li 3,0
	blr
.L502:
	lwz 8,0(3)
	cmpw 0,8,4
	beq- 0,.L500
	addi 3,3,4
	mr 5,10
	cmpwi 7,10,0
	bne+ 7,.L492
	b .L489
	.cfi_endproc
.LFE62:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	cmpwi 7,5,0
	beq- 7,.L508
	addi 10,5,-1
	mr 9,5
	andi. 8,5,0x1
	bne- 0,.L523
.L513:
	srwi 9,9,1
	mtctr 9
	b .L504
.L506:
	addi 5,5,-1
	cmpwi 7,5,0
	lwzu 10,4(3)
	lwzu 9,4(4)
	cmpw 0,10,9
	bne- 0,.L521
	addi 3,3,4
	addi 4,4,4
	addi 5,5,-1
	cmpwi 7,5,0
	bdz .L508
.L504:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq+ 0,.L506
.L521:
	beq- 7,.L508
	lwz 9,0(3)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,9,10
	bltlr- 0
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L523:
	lwz 7,0(3)
	lwz 8,0(4)
	cmpw 0,7,8
	bne- 0,.L521
	addi 3,3,4
	addi 4,4,4
	mr 5,10
	cmpwi 7,10,0
	bne+ 7,.L513
.L508:
	li 3,0
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	cmpwi 0,5,0
	beq- 0,.L525
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	slwi 5,5,2
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L525:
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
	bge- 0,.L555
	cmpwi 0,5,0
	beqlr- 0
	add 4,4,9
	add 9,3,9
	addi 10,5,-1
	andi. 8,5,0x1
	bne- 0,.L556
.L542:
	srwi 10,5,1
	mtctr 10
.L534:
	mr 8,4
	lwz 7,-4(4)
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	lwz 8,-8(8)
	addi 9,9,-8
	stw 8,-4(10)
	bdnz .L534
	blr
.L555:
	addi 9,4,-4
	addi 10,3,-4
	cmpwi 0,5,0
	beqlr- 0
	addi 8,5,-1
	andi. 7,5,0x1
	bne- 0,.L557
.L545:
	srwi 8,5,1
	mtctr 8
.L535:
	addi 7,9,4
	lwz 9,4(9)
	addi 8,10,4
	stw 9,4(10)
	addi 9,7,4
	lwz 7,4(7)
	addi 10,10,8
	stw 7,4(8)
	bdnz .L535
	blr
.L556:
	lwzu 8,-4(4)
	stwu 8,-4(9)
	cmpwi 0,10,0
	bne+ 0,.L542
	blr
.L557:
	mr 9,4
	lwz 7,0(4)
	mr 10,3
	stw 7,0(3)
	cmpwi 0,8,0
	bne+ 0,.L545
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
	addi 9,3,-4
	addi 7,5,-1
	mr 10,5
	andi. 8,5,0x3
	beq- 0,.L569
	cmpwi 0,8,1
	beq- 0,.L573
	cmpwi 0,8,2
	beq- 0,.L574
	mr 9,3
	stw 4,0(3)
	mr 5,7
.L574:
	stwu 4,4(9)
	addi 5,5,-1
.L573:
	stwu 4,4(9)
	cmpwi 0,5,1
	beqlr- 0
.L569:
	srwi 10,10,2
	mtctr 10
.L560:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L560
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
	bge- 0,.L582
	add 3,3,5
	add 4,4,5
	cmpwi 0,5,0
	beqlr- 0
	addi 9,5,-1
	andi. 10,5,0x1
	beq- 0,.L593
	lbzu 10,-1(3)
	stbu 10,-1(4)
	cmpwi 0,9,0
	beqlr- 0
.L593:
	srwi 9,5,1
	mtctr 9
.L584:
	mr 10,3
	lbz 8,-1(3)
	addi 9,4,-1
	stb 8,-1(4)
	addi 3,3,-2
	lbz 10,-2(10)
	addi 4,4,-2
	stb 10,-1(9)
	bdnz .L584
	blr
.L582:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	andi. 7,5,0x1
	bne- 0,.L606
.L596:
	srwi 8,5,1
	mtctr 8
.L585:
	addi 7,10,1
	lbz 10,1(10)
	addi 8,9,1
	stb 10,1(9)
	addi 10,7,1
	lbz 7,1(7)
	addi 9,9,2
	stb 7,1(8)
	bdnz .L585
	blr
.L606:
	mr 10,3
	lbz 7,0(3)
	mr 9,4
	stb 7,0(4)
	cmpwi 0,8,0
	bne+ 0,.L596
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
	blt- 0,.L608
	slw 9,3,9
	li 7,0
	neg 5,5
	rlwinm 5,5,0,26,31
	addic. 10,5,-32
	blt- 0,.L610
.L612:
	srw 3,4,10
	li 4,0
	or 3,7,3
	or 4,9,4
	blr
.L608:
	srwi 9,3,1
	subfic 10,5,31
	srw 9,9,10
	slw 10,4,5
	or 9,9,10
	slw 7,3,5
	neg 5,5
	rlwinm 5,5,0,26,31
	addic. 10,5,-32
	bge+ 0,.L612
.L610:
	slwi 10,4,1
	subfic 8,5,31
	slw 8,10,8
	srw 3,3,5
	or 3,8,3
	srw 4,4,5
	or 3,7,3
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
	blt- 0,.L614
	srw 9,4,9
	li 7,0
	neg 5,5
	rlwinm 5,5,0,26,31
	addic. 10,5,-32
	blt- 0,.L616
.L618:
	slw 4,3,10
	li 3,0
	or 3,9,3
	or 4,7,4
	blr
.L614:
	slwi 9,4,1
	subfic 10,5,31
	slw 9,9,10
	srw 10,3,5
	or 9,9,10
	srw 7,4,5
	neg 5,5
	rlwinm 5,5,0,26,31
	addic. 10,5,-32
	bge+ 0,.L618
.L616:
	srwi 10,3,1
	subfic 8,5,31
	srw 8,10,8
	slw 4,4,5
	or 4,8,4
	slw 3,3,5
	or 3,9,3
	or 4,7,4
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
	slw 9,3,4
	neg 4,4
	rlwinm 4,4,0,28,31
	srw 3,3,4
	or 3,9,3
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
	srw 9,3,4
	neg 4,4
	rlwinm 4,4,0,28,31
	slw 3,3,4
	or 3,9,3
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
	slw 9,3,4
	neg 4,4
	rlwinm 4,4,0,29,31
	srw 3,3,4
	or 3,9,3
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
	srw 9,3,4
	neg 4,4
	rlwinm 4,4,0,29,31
	slw 3,3,4
	or 3,9,3
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
	rlwinm 9,3,24,24,31
	rlwinm 10,3,8,16,23
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
	li 9,0
	li 10,16
	mtctr 10
	b .L633
.L631:
	srw 10,3,9
	andi. 10,10,0x1
	addi 9,9,1
	bne- 0,.L637
	bdz .L640
.L633:
	srw 10,3,9
	andi. 10,10,0x1
	addi 9,9,1
	beq+ 0,.L631
.L637:
	mr 3,9
	blr
.L640:
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
	beq- 0,.L644
	andi. 3,9,0x1
	bnelr- 0
	li 3,1
.L643:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L643
	blr
.L644:
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
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	lis 4,0xff7f
	ori 4,4,0xffff
	bl __ltsf2
	cmpwi 0,3,0
	blt- 0,.L651
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L651:
	.cfi_restore_state
	li 3,1
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
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
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	lis 6,0xffef
	ori 6,6,0xffff
	li 5,-1
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L656
	lis 6,0x7fef
	ori 6,6,0xffff
	li 5,-1
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L656:
	.cfi_restore_state
	li 3,1
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
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
	mflr 0
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,6
	mr 30,5
	mr 29,4
	mr 28,3
	li 7,-1
	lis 8,0xffef
	ori 8,8,0xffff
	li 9,-2
	lis 10,0xfc8f
	ori 10,10,0xffff
	bl __gcc_qlt
	cmpwi 0,3,0
	blt- 0,.L661
	li 7,-1
	lis 8,0x7fef
	ori 8,8,0xffff
	li 9,-2
	lis 10,0x7c8f
	ori 10,10,0xffff
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qgt
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L661:
	.cfi_restore_state
	li 3,1
	lwz 0,36(1)
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
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	mr 3,4
	bl __floatsidf
	bl __gcc_dtoq
	stw 3,0(31)
	stw 4,4(31)
	stw 5,8(31)
	stw 6,12(31)
	lwz 0,20(1)
	mtlr 0
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
	stw 0,36(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 29,3
	mr 31,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L666
	mr 4,29
	mr 3,29
	bl __addsf3
	mr 4,29
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L666
	stw 30,24(1)
	.cfi_offset 30, -8
	lis 30,0x4000
	cmpwi 0,31,0
	bge+ 0,.L670
	lis 30,0x3f00
	b .L670
.L681:
	mr 4,30
	mr 3,30
	bl __mulsf3
	mr 30,3
.L670:
	andi. 9,31,0x1
	beq- 0,.L669
	mr 4,30
	mr 3,29
	bl __mulsf3
	mr 29,3
.L669:
	srawi 31,31,1
	addze. 31,31
	bne+ 0,.L681
	lwz 30,24(1)
	.cfi_restore 30
.L666:
	mr 3,29
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 29,20(1)
	lwz 31,28(1)
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
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	mr 27,4
	mr 26,3
	mr 31,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L683
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __adddf3
	mr 5,26
	mr 6,27
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L683
	stw 28,16(1)
	.cfi_offset 28, -16
	stw 29,20(1)
	.cfi_offset 29, -12
	lis 29,0x4000
	li 28,0
	cmpwi 0,31,0
	bge+ 0,.L687
	lis 29,0x3fe0
	li 28,0
	b .L687
.L698:
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L687:
	andi. 9,31,0x1
	beq- 0,.L686
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
.L686:
	srawi 31,31,1
	addze. 31,31
	bne+ 0,.L698
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
.L683:
	mr 3,26
	mr 4,27
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 26,8(1)
	lwz 27,12(1)
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
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 31, -4
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
	mr 31,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L700
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
	beq- 0,.L700
	stw 24,32(1)
	.cfi_offset 24, -32
	stw 25,36(1)
	.cfi_offset 25, -28
	stw 26,40(1)
	.cfi_offset 26, -24
	stw 27,44(1)
	.cfi_offset 27, -20
	li 24,0
	cmpwi 0,31,0
	blt- 0,.L715
	lis 25,0x4000
	li 26,0
	li 27,0
	b .L704
.L716:
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qmul
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
.L704:
	andi. 9,31,0x1
	beq- 0,.L703
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qmul
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
.L703:
	srawi 31,31,1
	addze. 31,31
	bne+ 0,.L716
	lwz 24,32(1)
	.cfi_restore 24
	lwz 25,36(1)
	.cfi_restore 25
	lwz 26,40(1)
	.cfi_restore 26
	lwz 27,44(1)
	.cfi_restore 27
.L700:
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	lwz 20,16(1)
	lwz 21,20(1)
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
.L715:
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
	b .L704
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
	addi 7,4,-1
	addi 9,3,-1
	addi 8,5,-1
	andi. 10,5,0x1
	bne- 0,.L730
.L724:
	srwi 10,5,1
	mtctr 10
.L719:
	addi 6,7,1
	mr 10,9
	lbz 8,1(9)
	lbz 7,1(7)
	xor 8,8,7
	stb 8,1(9)
	addi 7,6,1
	addi 9,9,2
	lbz 8,2(10)
	lbz 6,1(6)
	xor 8,8,6
	stb 8,2(10)
	bdnz .L719
	blr
.L730:
	mr 7,4
	mr 9,3
	lbz 10,0(3)
	lbz 6,0(4)
	xor 10,10,6
	stb 10,0(3)
	cmpwi 0,8,0
	bne+ 0,.L724
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
	beq- 0,.L732
.L733:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L733
.L732:
	cmpwi 7,5,0
	beq- 7,.L741
	addi 8,4,-1
	addi 6,5,-1
	mr 10,5
	andi. 7,5,0x1
	bne- 0,.L754
.L744:
	srwi 10,10,1
	mtctr 10
	b .L735
.L736:
	addi 5,5,-1
	cmpwi 7,5,0
	addi 8,7,1
	lbz 10,1(7)
	stbu 10,1(9)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L752
	addi 9,9,1
	addi 5,5,-1
	cmpwi 7,5,0
	bdz .L741
.L735:
	addi 7,8,1
	lbz 10,1(8)
	stb 10,0(9)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne+ 0,.L736
.L752:
	bnelr- 7
.L741:
	stb 5,0(9)
	blr
.L754:
	mr 8,4
	lbz 7,0(4)
	stb 7,0(9)
	rlwinm 7,7,0,0xff
	cmpwi 0,7,0
	beq- 0,.L752
	addi 9,9,1
	mr 5,6
	cmpwi 7,6,0
	bne+ 7,.L744
	b .L741
	.cfi_endproc
.LFE91:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	mr 9,3
	li 3,0
	cmpwi 0,4,0
	beqlr- 0
	mr 10,4
	andi. 8,4,0x3
	beq- 0,.L767
	cmpwi 0,8,1
	beq- 0,.L778
	cmpwi 0,8,2
	beq- 0,.L779
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L779:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L778:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmplw 0,4,3
	beqlr- 0
.L767:
	srwi 10,10,2
.L756:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	mr 7,3
	lbzx 8,9,3
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
	addi 3,7,3
	cmpwi 0,10,1
	addi 10,10,-1
	bne+ 0,.L756
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
	beq- 0,.L791
.L787:
	mr 10,4
	b .L790
.L789:
	cmpw 0,9,8
	beqlr- 0
.L790:
	lbzu 9,1(10)
	cmpwi 0,9,0
	bne+ 0,.L789
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L787
.L791:
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
.L796:
	lbz 10,0(9)
	cmpw 0,10,4
	bne+ 0,.L795
	mr 3,9
.L795:
	addi 9,9,1
	cmpwi 0,10,0
	bne+ 0,.L796
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
	lbz 7,0(4)
	mr 9,4
	cmpwi 0,7,0
	beq- 0,.L801
.L802:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L802
.L801:
	subf. 9,4,9
	beqlr- 0
	addi 9,9,-1
	add 5,4,9
	b .L809
.L828:
	addi 3,3,1
	cmpwi 0,9,0
	beq- 0,.L827
.L809:
	lbz 9,0(3)
	cmpw 0,9,7
	bne+ 0,.L828
	cmpwi 0,3,0
	beqlr- 0
	mr. 8,7
	beq- 0,.L812
	mr 6,3
	mr 10,4
	subf 9,4,5
	addi 9,9,1
	mtctr 9
	b .L806
.L829:
	bdz .L805
	cmpw 0,9,8
	bne- 0,.L805
	addi 10,10,1
	lbzu 8,1(6)
	cmpwi 0,8,0
	beq- 0,.L805
.L806:
	lbz 9,0(10)
	cmpwi 0,9,0
	bne+ 0,.L829
.L805:
	lbz 9,0(10)
	cmpw 0,9,8
	beqlr- 0
.L830:
	addi 3,3,1
	b .L809
.L827:
	li 3,0
	blr
.L812:
	mr 10,4
	lbz 9,0(10)
	cmpw 0,9,8
	bne+ 0,.L830
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
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	li 6,0
	li 5,0
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L841
.L832:
	li 6,0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L835
	li 6,0
	li 5,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L834
.L835:
	mr 3,30
	mr 4,31
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L841:
	.cfi_restore_state
	li 6,0
	li 5,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L832
.L834:
	addis 11,31,0x8000
	mr 31,11
	mr 3,30
	mr 4,31
	lwz 0,36(1)
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
	mr 7,3
	cmpwi 0,6,0
	beqlr- 0
	cmplw 0,4,6
	blt- 0,.L879
	subf 4,6,4
	add 0,3,4
	cmplw 0,3,0
	bgt- 0,.L879
	lbz 12,0(5)
.L871:
	lbz 9,0(7)
	mr 3,7
	addi 7,7,1
	rlwinm 9,9,0,0xff
	cmpw 0,9,12
	beq- 0,.L880
	cmplw 0,7,0
	ble+ 0,.L871
.L879:
	li 3,0
	blr
.L880:
	addi 10,5,1
	addi 9,6,-1
	cmpwi 7,9,0
	beqlr- 7
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
.L853:
	mr 8,7
	addi 11,9,-1
	mr 4,9
	andi. 31,9,0x1
	beq- 0,.L860
	lbz 31,0(7)
	lbz 9,1(5)
	cmpw 0,31,9
	bne- 0,.L867
	addi 8,7,1
	addi 10,10,1
	mr 9,11
	cmpwi 7,11,0
	beq- 7,.L842
.L860:
	srwi 4,4,1
	mtctr 4
	b .L845
.L847:
	addi 9,9,-1
	cmpwi 7,9,0
	lbzu 11,1(8)
	lbzu 4,1(10)
	cmpw 0,11,4
	bne- 0,.L867
	addi 8,8,1
	addi 10,10,1
	addi 9,9,-1
	cmpwi 7,9,0
	bdz .L842
.L845:
	lbz 11,0(8)
	lbz 4,0(10)
	cmpw 0,11,4
	beq+ 0,.L847
.L867:
	bne- 7,.L881
.L842:
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L881:
	.cfi_restore_state
	lbz 8,0(8)
	lbz 9,0(10)
	cmpw 0,8,9
	beq- 0,.L842
.L844:
	cmplw 0,7,0
	bgt- 0,.L882
	lbz 9,0(7)
	mr 3,7
	addi 7,7,1
	rlwinm 9,9,0,0xff
	cmpw 0,9,12
	bne+ 0,.L844
	addi 10,5,1
	addi 9,6,-1
	cmpwi 7,9,0
	bne+ 7,.L853
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L882:
	.cfi_restore_state
	li 3,0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
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
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	mr. 31,5
	beq- 0,.L884
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L884:
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
	stw 0,52(1)
	stw 23,12(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 23, -36
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	mr 28,5
	li 6,0
	li 5,0
	bl __ltdf2
	li 23,0
	cmpwi 0,3,0
	bge+ 0,.L890
	addis 11,31,0x8000
	mr 31,11
	li 23,1
.L890:
	lis 6,0x3ff0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 29,0
	cmpwi 0,3,0
	blt- 0,.L914
	stw 24,16(1)
	.cfi_offset 24, -32
	stw 25,20(1)
	.cfi_offset 25, -28
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	lis 25,0x3fe0
	li 24,0
	lis 27,0x3ff0
	li 26,0
.L894:
	addi 29,29,1
	mr 5,24
	mr 6,25
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
	mr 5,26
	mr 6,27
	bl __gedf2
	cmpwi 0,3,0
	bge+ 0,.L894
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
.L895:
	stw 29,0(28)
	cmpwi 0,23,0
	beq- 0,.L899
	addis 11,31,0x8000
	mr 31,11
.L899:
	mr 3,30
	mr 4,31
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 23,12(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L914:
	.cfi_restore_state
	lis 6,0x3fe0
	li 5,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L895
	li 6,0
	li 5,0
	mr 3,30
	mr 4,31
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L895
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	lis 27,0x3fe0
	li 26,0
.L898:
	addi 29,29,-1
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __adddf3
	mr 31,4
	mr 30,3
	mr 5,26
	mr 6,27
	bl __ltdf2
	cmpwi 0,3,0
	blt+ 0,.L898
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	b .L895
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
	li 3,0
	li 4,0
	or. 9,8,10
	beqlr- 0
.L919:
	rlwinm 9,10,0,31,31
	subfic 9,9,0
	subfe 7,7,7
	and 7,7,6
	and 9,9,5
	addc 3,9,3
	adde 4,7,4
	srwi 9,5,31
	rlwimi 9,6,1,0,31-1
	slwi 5,5,1
	mr 6,9
	srwi 10,10,1
	rlwimi 10,8,31,0,31-31
	srwi 8,8,1
	or. 9,10,8
	beqlr- 0
	rlwinm 9,10,0,31,31
	subfic 9,9,0
	subfe 7,7,7
	and 7,7,6
	and 9,9,5
	addc 3,9,3
	adde 4,7,4
	srwi 9,5,31
	rlwimi 9,6,1,0,31-1
	slwi 5,5,1
	mr 6,9
	srwi 10,10,1
	rlwimi 10,8,31,0,31-31
	srwi 8,8,1
	or. 9,10,8
	bne+ 0,.L919
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
	mr 10,3
	li 9,1
	li 8,16
	mtctr 8
	cmplw 0,4,3
	blt+ 0,.L924
	b .L942
.L926:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L925
	cmpwi 0,4,0
	blt- 0,.L925
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L925
	bdz .L933
.L924:
	cmpwi 0,4,0
	bge+ 0,.L926
.L925:
	cmpwi 0,9,0
	beq- 0,.L933
.L942:
	li 3,0
.L929:
	cmplw 0,10,4
	blt- 0,.L928
	subf 10,4,10
	or 3,3,9
.L928:
	srwi 4,4,1
	srwi. 9,9,1
	bne+ 0,.L929
	cmpwi 0,5,0
	beqlr+ 0
.L944:
	mr 3,10
	blr
.L933:
	li 3,0
	cmpwi 0,5,0
	beqlr+ 0
	b .L944
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
	beq- 0,.L947
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L947:
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
	srawi 10,4,31
	xor 8,4,10
	xor 9,3,10
	cmplw 0,3,10
	beq- 0,.L956
.L954:
	cntlzw 3,8
	cmpwi 0,8,0
	beq- 0,.L957
	addi 3,3,-1
	blr
.L957:
	cntlzw 3,9
	addi 3,3,32
	addi 3,3,-1
	blr
.L956:
	cmplw 0,4,3
	bne+ 0,.L954
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
.L960:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	beqlr- 0
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	bne+ 0,.L960
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
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	cmplw 0,3,4
	blt- 0,.L965
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L998
.L965:
	cmpwi 0,10,0
	beq- 0,.L968
	addi 8,4,-8
	addi 12,3,-8
	addi 11,10,-1
	andi. 7,10,0x1
	bne- 0,.L999
.L982:
	srwi 10,10,1
	mtctr 10
.L969:
	mr 6,8
	lwz 10,8(8)
	lwz 11,12(8)
	mr 7,12
	stw 10,8(12)
	stw 11,12(12)
	addi 8,8,16
	lwz 10,16(6)
	lwz 11,20(6)
	addi 12,12,16
	stw 10,16(7)
	stw 11,20(7)
	bdnz .L969
.L968:
	cmplw 0,5,9
	blelr- 0
	subf 5,9,5
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	andi. 10,5,0x1
	bne- 0,.L1000
.L979:
	srwi 9,5,1
	mtctr 9
.L970:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L970
	blr
.L1000:
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,9,0
	bne+ 0,.L979
	blr
.L999:
	mr 8,4
	lwz 6,0(4)
	lwz 7,4(4)
	mr 12,3
	stw 6,0(3)
	stw 7,4(3)
	cmpwi 0,11,0
	bne+ 0,.L982
	b .L968
.L998:
	mr 9,8
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	addi 10,5,-1
	andi. 8,5,0x1
	bne- 0,.L1001
.L985:
	srwi 10,5,1
	mtctr 10
.L971:
	addi 8,9,-1
	lbz 9,-1(9)
	addi 10,3,-1
	stb 9,-1(3)
	addi 9,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(10)
	bdnz .L971
	blr
.L1001:
	lbzu 8,-1(9)
	stbu 8,-1(3)
	cmpwi 0,10,0
	bne+ 0,.L985
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
	srwi 9,5,1
	cmplw 0,3,4
	blt- 0,.L1003
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1031
.L1003:
	cmpwi 0,9,0
	beq- 0,.L1006
	addi 10,4,-2
	addi 8,3,-2
	addi 7,9,-1
	andi. 6,9,0x1
	bne- 0,.L1032
.L1017:
	srwi 9,9,1
	mtctr 9
.L1007:
	addi 7,10,2
	lhz 10,2(10)
	addi 9,8,2
	sth 10,2(8)
	addi 10,7,2
	lhz 7,2(7)
	addi 8,8,4
	sth 7,2(9)
	bdnz .L1007
.L1006:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L1032:
	mr 10,4
	lhz 6,0(4)
	mr 8,3
	sth 6,0(3)
	cmpwi 0,7,0
	bne+ 0,.L1017
	b .L1006
.L1031:
	mr 9,10
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	addi 10,5,-1
	andi. 8,5,0x1
	bne- 0,.L1033
.L1020:
	srwi 10,5,1
	mtctr 10
.L1008:
	addi 8,9,-1
	lbz 9,-1(9)
	addi 10,3,-1
	stb 9,-1(3)
	addi 9,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(10)
	bdnz .L1008
	blr
.L1033:
	lbzu 8,-1(9)
	stbu 8,-1(3)
	cmpwi 0,10,0
	bne+ 0,.L1020
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
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	cmplw 0,3,4
	blt- 0,.L1035
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L1068
.L1035:
	cmpwi 0,10,0
	beq- 0,.L1038
	addi 8,4,-4
	addi 7,3,-4
	addi 6,10,-1
	andi. 11,10,0x1
	bne- 0,.L1069
.L1052:
	srwi 10,10,1
	mtctr 10
.L1039:
	addi 6,8,4
	lwz 8,4(8)
	addi 10,7,4
	stw 8,4(7)
	addi 8,6,4
	lwz 6,4(6)
	addi 7,7,8
	stw 6,4(10)
	bdnz .L1039
.L1038:
	cmplw 0,5,9
	blelr- 0
	subf 5,9,5
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	andi. 10,5,0x1
	bne- 0,.L1070
.L1049:
	srwi 9,5,1
	mtctr 9
.L1040:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L1040
	blr
.L1070:
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,9,0
	bne+ 0,.L1049
	blr
.L1069:
	mr 8,4
	lwz 11,0(4)
	mr 7,3
	stw 11,0(3)
	cmpwi 0,6,0
	bne+ 0,.L1052
	b .L1038
.L1068:
	mr 9,8
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	addi 10,5,-1
	andi. 8,5,0x1
	bne- 0,.L1071
.L1055:
	srwi 10,5,1
	mtctr 10
.L1041:
	addi 8,9,-1
	lbz 9,-1(9)
	addi 10,3,-1
	stb 9,-1(3)
	addi 9,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(10)
	bdnz .L1041
	blr
.L1071:
	lbzu 8,-1(9)
	stbu 8,-1(3)
	cmpwi 0,10,0
	bne+ 0,.L1055
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
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	mr 10,3
	li 3,0
	li 9,8
	mtctr 9
.L1084:
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	bdnz .L1084
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
	mr 10,3
	li 3,0
	li 9,8
	mtctr 9
.L1091:
	sraw 9,10,3
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	sraw 9,10,3
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	bdnz .L1091
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
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	lis 4,0x4700
	bl __gesf2
	cmpwi 0,3,0
	bge- 0,.L1103
	mr 3,31
	bl __fixsfsi
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1103:
	.cfi_restore_state
	lis 4,0x4700
	mr 3,31
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
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
	li 8,0
	li 10,0
	li 7,0
	li 9,4
	mtctr 9
.L1105:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 9,10,1
	sraw 6,3,9
	rlwinm 6,6,0,31,31
	add 7,7,6
	addi 9,10,2
	sraw 9,3,9
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 9,10,3
	sraw 9,3,9
	rlwinm 9,9,0,31,31
	add 7,7,9
	addi 10,10,4
	bdnz .L1105
	add 3,8,7
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
	mr 8,3
	li 3,0
	li 10,0
	li 7,0
	li 9,4
	mtctr 9
.L1112:
	sraw 9,8,10
	rlwinm 9,9,0,31,31
	add 3,3,9
	addi 9,10,1
	sraw 6,8,9
	rlwinm 6,6,0,31,31
	add 7,7,6
	addi 9,10,2
	sraw 9,8,9
	rlwinm 9,9,0,31,31
	add 3,3,9
	addi 9,10,3
	sraw 9,8,9
	rlwinm 9,9,0,31,31
	add 7,7,9
	addi 10,10,4
	bdnz .L1112
	add 3,3,7
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
.L1120:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	beqlr- 0
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	bne+ 0,.L1120
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
.L1126:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srwi. 4,4,1
	beqlr- 0
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srwi. 4,4,1
	bne+ 0,.L1126
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
	mr 10,3
	li 9,16
	mtctr 9
	cmplw 0,3,4
	li 9,1
	bgt+ 0,.L1132
	b .L1150
.L1134:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1133
	cmpwi 7,4,0
	blt- 7,.L1133
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1133
	bdz .L1141
.L1132:
	cmpwi 7,4,0
	bge+ 7,.L1134
.L1133:
	cmpwi 7,9,0
	beq- 7,.L1141
.L1150:
	li 3,0
.L1137:
	blt- 0,.L1136
	subf 10,4,10
	or 3,3,9
.L1136:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L1135
	cmplw 0,10,4
	b .L1137
.L1141:
	li 3,0
.L1135:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
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
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	mr 30,4
	bl __ltsf2
	cmpwi 0,3,0
	blt- 0,.L1155
	mr 4,30
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L1155:
	.cfi_restore_state
	li 3,-1
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 30,8(1)
	lwz 31,12(1)
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
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L1160
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
	.cfi_def_cfa_offset 0
	blr
.L1160:
	.cfi_restore_state
	li 3,-1
	lwz 0,36(1)
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
	mr 10,3
	li 7,0
	cmpwi 0,4,0
	blt- 0,.L1178
.L1165:
	beq- 0,.L1170
	li 8,32
	li 3,0
	b .L1167
.L1179:
	addi 9,8,-1
	mr 8,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1166
.L1167:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srawi. 4,4,1
	bne+ 0,.L1179
.L1166:
	cmpwi 0,7,0
	beqlr- 0
	neg 3,3
	blr
.L1178:
	li 7,1
	neg. 4,4
	b .L1165
.L1170:
	li 3,0
	b .L1166
	.cfi_endproc
.LFE126:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	li 8,0
	cmpwi 0,3,0
	bge+ 0,.L1181
	neg 3,3
	li 8,1
.L1181:
	cmpwi 0,4,0
	bge+ 0,.L1182
	neg 4,4
	xori 8,8,0x1
.L1182:
	mr 10,3
	li 9,1
	cmplw 0,3,4
	ble- 0,.L1201
	li 7,16
	mtctr 7
	b .L1184
.L1203:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble- 0,.L1183
	bdz .L1191
.L1184:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	bgt+ 0,.L1203
.L1183:
	cmpwi 0,9,0
	beq- 0,.L1191
.L1201:
	li 3,0
.L1187:
	cmplw 0,10,4
	blt- 0,.L1186
	subf 10,4,10
	or 3,3,9
.L1186:
	srwi 4,4,1
	srwi. 9,9,1
	bne+ 0,.L1187
	cmpwi 0,8,0
	beqlr- 0
.L1204:
	neg 3,3
	blr
.L1191:
	li 3,0
	cmpwi 0,8,0
	beqlr- 0
	b .L1204
	.cfi_endproc
.LFE127:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	li 7,0
	mr. 8,3
	bge+ 0,.L1206
	neg 8,8
	li 7,1
.L1206:
	mr 3,8
	srawi 9,4,31
	xor 4,9,4
	subf 9,9,4
	li 10,1
	cmplw 0,8,9
	ble- 0,.L1219
	li 6,16
	mtctr 6
	b .L1208
.L1227:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble- 0,.L1207
	bdz .L1209
.L1208:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	bgt+ 0,.L1227
.L1207:
	cmpwi 0,10,0
	beq- 0,.L1209
.L1219:
	cmplw 0,3,9
	blt- 0,.L1210
	subf 3,9,3
.L1210:
	srwi 9,9,1
	srwi. 10,10,1
	bne+ 0,.L1219
.L1209:
	cmpwi 0,7,0
	beqlr- 0
	neg 3,3
	blr
	.cfi_endproc
.LFE128:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	li 10,1
	li 9,16
	mtctr 9
	cmplw 0,4,3
	bge- 0,.L1230
.L1229:
	andi. 9,4,0x8000
	bne- 0,.L1230
	rlwinm 4,4,1,16,30
	slwi 10,10,1
	cmplw 0,3,4
	ble- 0,.L1230
	bdnz .L1229
	li 10,0
.L1230:
	andi. 9,10,0xffff
	beq- 0,.L1238
	li 8,0
	b .L1234
.L1244:
	rlwinm 9,9,0,0xffff
.L1234:
	cmplw 0,3,4
	blt- 0,.L1233
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 8,10,8
.L1233:
	srwi 9,9,1
	mr 10,9
	srwi 4,4,1
	cmpwi 0,9,0
	bne+ 0,.L1244
.L1232:
	cmpwi 0,5,0
	beq+ 0,.L1235
	mr 8,3
.L1235:
	rlwinm 3,8,0,0xffff
	blr
.L1238:
	mr 8,10
	b .L1232
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	mr 10,3
	li 9,16
	mtctr 9
	cmplw 0,3,4
	li 9,1
	bgt+ 0,.L1246
	b .L1264
.L1248:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1247
	cmpwi 7,4,0
	blt- 7,.L1247
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1247
	bdz .L1255
.L1246:
	cmpwi 7,4,0
	bge+ 7,.L1248
.L1247:
	cmpwi 7,9,0
	beq- 7,.L1255
.L1264:
	li 3,0
.L1251:
	blt- 0,.L1250
	subf 10,4,10
	or 3,3,9
.L1250:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L1249
	cmplw 0,10,4
	b .L1251
.L1255:
	li 3,0
.L1249:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
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
	beq- 0,.L1267
	addi 5,5,-32
	slw 4,3,5
	li 10,0
	mr 3,10
	blr
.L1267:
	cmpwi 0,5,0
	beqlr- 0
	slw 10,3,5
	subfic 9,5,32
	srw 9,3,9
	slw 4,4,5
	or 4,9,4
	mr 3,10
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
	beq- 0,.L1272
	srawi 10,4,31
	addi 5,5,-32
	sraw 3,4,5
	mr 4,10
	blr
.L1272:
	cmpwi 0,5,0
	beqlr- 0
	sraw 10,4,5
	subfic 9,5,32
	slw 9,4,9
	srw 3,3,5
	or 3,9,3
	mr 4,10
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
	srw 9,9,7
	add 8,10,8
	rlwinm 10,9,0,24,27
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	subfic 7,10,4
	srw 9,9,7
	add 10,10,8
	rlwinm 3,9,0,28,29
	cntlzw 3,3
	srwi 3,3,5
	slwi 3,3,1
	subfic 8,3,2
	srw 9,9,8
	andi. 8,9,0x2
	bne- 0,.L1279
	subfic 9,9,2
	add 3,3,10
	add 3,9,3
	blr
.L1279:
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
	mr 9,3
	cmpw 0,4,6
	blt- 0,.L1283
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,9,5
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1283:
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
	li 9,0
	cmpw 0,4,6
	blt- 0,.L1288
	li 9,2
	bgt- 0,.L1288
	li 9,0
	cmplw 0,3,5
	blt- 0,.L1288
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1288:
	addi 3,9,-1
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
	add 8,10,8
	rlwinm 10,9,0,30,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	srw 9,9,10
	rlwinm 9,9,0,30,31
	not 3,9
	rlwinm 3,3,0,31,31
	srwi 9,9,1
	subfic 9,9,2
	neg 3,3
	and 3,3,9
	add 10,10,8
	add 3,3,10
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
	beq- 0,.L1295
	addi 5,5,-32
	srw 3,4,5
	li 10,0
	mr 4,10
	blr
.L1295:
	cmpwi 0,5,0
	beqlr- 0
	srw 10,4,5
	subfic 9,5,32
	slw 9,4,9
	srw 3,3,5
	or 3,9,3
	mr 4,10
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
	mr 10,3
	rlwinm 8,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 3,8,9
	srwi 7,3,16
	srwi 10,10,16
	mullw 9,9,10
	add 9,9,7
	rlwinm 7,9,0,0xffff
	srwi 4,4,16
	mullw 8,8,4
	add 8,8,7
	srwi 9,9,16
	mullw 10,10,4
	add 9,9,10
	srwi 4,8,16
	rlwimi 3,8,16,0,31-16
	add 4,9,4
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
	mr 10,3
	rlwinm 8,3,0,16,31
	rlwinm 9,5,0,16,31
	mullw 3,8,9
	srwi 11,3,16
	srwi 7,10,16
	mullw 9,9,7
	add 9,9,11
	rlwinm 0,9,0,0xffff
	srwi 11,5,16
	mullw 8,8,11
	add 8,8,0
	srwi 9,9,16
	mullw 7,7,11
	add 9,9,7
	srwi 7,8,16
	add 9,9,7
	mullw 10,10,6
	add 10,10,9
	mullw 4,5,4
	rlwimi 3,8,16,0,31-16
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
	srwi 9,4,16
	xor 9,9,4
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	li 3,27030
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
	xor 9,9,3
	srwi 3,9,8
	xor 3,3,9
	srwi 9,3,4
	xor 9,9,3
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	rlwimi 9,4,31,0,31-31
	srwi 10,4,1
	lis 8,0x5555
	ori 8,8,0x5555
	and 10,10,8
	and 9,9,8
	subfc 9,9,3
	subfe 4,10,4
	srwi 10,9,2
	rlwimi 10,4,30,0,31-30
	srwi 7,4,2
	lis 8,0x3333
	ori 8,8,0x3333
	and 7,7,8
	and 10,10,8
	and 4,4,8
	and 9,9,8
	addc 9,10,9
	adde 7,7,4
	srwi 10,9,4
	rlwimi 10,7,28,0,31-28
	srwi 8,7,4
	addc 10,10,9
	adde 9,8,7
	lis 8,0xf0f
	ori 8,8,0xf0f
	and 9,9,8
	and 10,10,8
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
	srwi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	and 9,9,10
	subf 3,9,3
	srwi 10,3,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	and 3,3,9
	add 10,10,3
	srwi 9,10,4
	add 9,9,10
	lis 10,0xf0f
	ori 10,10,0xf0f
	and 9,9,10
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
	mflr 0
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,4
	mr 30,3
	mr 28,5
	mr 29,5
	lis 27,0x3ff0
	li 26,0
	b .L1309
.L1315:
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L1309:
	andi. 9,29,0x1
	beq- 0,.L1307
	mr 5,30
	mr 6,31
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
.L1307:
	srawi 29,29,1
	addze. 29,29
	bne+ 0,.L1315
	cmpwi 0,28,0
	bge+ 0,.L1306
	mr 5,26
	mr 6,27
	lis 4,0x3ff0
	li 3,0
	bl __divdf3
	mr 27,4
	mr 26,3
.L1306:
	mr 3,26
	mr 4,27
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 26,8(1)
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
	mflr 0
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	mr 28,4
	mr 30,4
	lis 29,0x3f80
	b .L1319
.L1325:
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L1319:
	andi. 9,30,0x1
	beq- 0,.L1317
	mr 4,31
	mr 3,29
	bl __mulsf3
	mr 29,3
.L1317:
	srawi 30,30,1
	addze. 30,30
	bne+ 0,.L1325
	cmpwi 0,28,0
	bge+ 0,.L1316
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
.L1316:
	mr 3,29
	lwz 0,36(1)
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
	mr 9,3
	cmplw 0,4,6
	blt- 0,.L1328
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,9,5
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1328:
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
	li 9,0
	cmplw 0,4,6
	blt- 0,.L1333
	li 9,2
	bgt- 0,.L1333
	li 9,0
	cmplw 0,3,5
	blt- 0,.L1333
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1333:
	addi 3,9,-1
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
