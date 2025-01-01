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
	add 8,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 10,8
	mr 9,5
	andi. 7,5,0x1
	beq- 0,.L13
	lbzu 7,-1(4)
	stbu 7,-1(10)
	cmpwi 0,5,1
	beqlr- 0
.L13:
	srwi 9,9,1
	mtctr 9
.L4:
	mr 8,4
	lbz 7,-1(4)
	addi 9,10,-1
	stb 7,-1(10)
	addi 4,4,-2
	lbz 8,-2(8)
	addi 10,10,-2
	stb 8,-1(9)
	bdnz .L4
	blr
.L2:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 4,4,-1
	addi 10,3,-1
	mr 9,5
	andi. 8,5,0x1
	beq- 0,.L16
	lbzu 8,1(4)
	stbu 8,1(10)
	cmpwi 0,5,1
	beqlr- 0
.L16:
	srwi 9,9,1
	mtctr 9
.L5:
	mr 8,4
	lbz 7,1(4)
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	lbz 8,2(8)
	addi 10,10,2
	stb 8,1(9)
	bdnz .L5
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
	beq- 7,.L32
	addi 4,4,-1
	mr 9,6
	andi. 10,6,0x1
	beq- 0,.L36
	lbzu 10,1(4)
	stb 10,0(3)
	rlwinm 10,10,0,0xff
	cmpw 0,10,5
	beq- 0,.L44
	addi 3,3,1
	addi 6,6,-1
	cmpwi 7,6,0
	beq- 7,.L32
.L36:
	srwi 9,9,1
	mtctr 9
.L29:
	addi 8,4,1
	lbz 9,1(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq- 0,.L44
	addi 10,3,1
	mr 3,10
	addi 6,6,-1
	cmpwi 7,6,0
	addi 4,8,1
	lbz 9,1(8)
	stb 9,0(10)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq- 0,.L44
	addi 3,10,1
	addi 6,6,-1
	cmpwi 7,6,0
	bdnz .L29
.L32:
	li 3,0
	blr
.L44:
	beq- 7,.L32
	addi 3,3,1
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
	beq- 7,.L52
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L55
	lbz 10,0(3)
	cmpw 0,10,4
	beq- 0,.L63
	addi 3,3,1
	addi 5,5,-1
	cmpwi 7,5,0
	beq- 7,.L52
.L55:
	srwi 9,9,1
	mtctr 9
.L47:
	lbz 9,0(3)
	cmpw 0,9,4
	beq- 0,.L63
	addi 9,3,1
	mr 3,9
	addi 5,5,-1
	cmpwi 7,5,0
	lbz 10,0(9)
	cmpw 0,10,4
	beq- 0,.L63
	addi 3,9,1
	addi 5,5,-1
	cmpwi 7,5,0
	bdnz .L47
.L52:
	li 3,0
	blr
.L63:
	bnelr+ 7
	b .L52
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
	beq- 7,.L70
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L74
	lbz 8,0(3)
	lbz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L82
	addi 3,3,1
	addi 4,4,1
	addi 5,5,-1
	cmpwi 7,5,0
	beq- 7,.L70
.L74:
	srwi 9,9,1
	mtctr 9
.L66:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L82
	addi 10,3,1
	mr 3,10
	addi 9,4,1
	mr 4,9
	addi 5,5,-1
	cmpwi 7,5,0
	lbz 7,0(10)
	lbz 8,0(9)
	cmpw 0,7,8
	bne- 0,.L82
	addi 3,10,1
	addi 4,9,1
	addi 5,5,-1
	cmpwi 7,5,0
	bdnz .L66
.L70:
	li 3,0
	blr
.L82:
	beq- 7,.L70
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
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
	beq- 0,.L85
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L85:
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
	beq- 0,.L95
	mr 3,9
	addi 9,9,-1
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
.L95:
	srwi 5,5,1
	addi 10,5,1
	mtctr 10
.L91:
	bdz .L102
	mr 3,9
	addi 10,9,-1
	lbz 9,0(9)
	cmpw 0,9,4
	beqlr- 0
	mr 3,10
	addi 9,10,-1
	lbz 10,0(10)
	cmpw 0,10,4
	bne+ 0,.L91
	blr
.L102:
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
	addi 10,3,-1
	mr 9,5
	andi. 8,5,0x3
	beq- 0,.L114
	cmpwi 0,8,1
	beq- 0,.L118
	cmpwi 0,8,2
	beq- 0,.L119
	stbu 4,1(10)
	addi 5,5,-1
.L119:
	stbu 4,1(10)
	addi 5,5,-1
.L118:
	stbu 4,1(10)
	cmpwi 0,5,1
	beqlr- 0
.L114:
	srwi 9,9,2
	mtctr 9
.L105:
	mr 9,10
	stb 4,1(10)
	stb 4,2(10)
	stb 4,3(10)
	addi 10,10,4
	stb 4,4(9)
	bdnz .L105
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
.L128:
	lbzu 9,1(4)
	stbu 9,1(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne+ 0,.L128
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
.L132:
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne+ 0,.L132
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
.L141:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	cmpwi 0,9,0
	bne+ 0,.L141
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
	bne- 0,.L144
.L145:
	cmpwi 0,9,0
	beq- 0,.L144
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 0,9,10
	beq+ 0,.L145
.L144:
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
	beq- 0,.L148
.L149:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L149
.L148:
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
	beq- 0,.L157
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L154
	mtctr 5
.L155:
	lbz 10,0(4)
	cmpwi 0,10,0
	beq- 0,.L154
	bdz .L154
	cmpw 0,10,9
	bne- 0,.L154
	addi 4,4,1
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne+ 0,.L155
.L154:
	lbz 3,0(4)
	subf 3,3,9
	blr
.L157:
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
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L175
	lbz 10,1(3)
	stb 10,0(4)
	lbz 10,0(3)
	stb 10,1(4)
	addi 4,4,2
	addi 3,3,2
	cmpwi 0,5,1
	beqlr- 0
.L175:
	srwi 9,9,1
	mtctr 9
.L172:
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
	bdnz .L172
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
	beq- 0,.L184
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L184:
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
	ble- 0,.L187
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L187:
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
	beq- 0,.L194
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
	blr
.L194:
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
	ble- 0,.L198
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
.L198:
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
	ble- 0,.L209
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
.L209:
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
	ble- 0,.L212
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
	blr
.L212:
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
	bne- 0,.L217
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L218
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L221
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
.L214:
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
.L217:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L214
.L218:
	mr 3,28
	mr 4,29
	b .L214
.L221:
	li 3,0
	li 4,0
	b .L214
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
	bne- 0,.L226
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L227
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	ble- 0,.L230
	mr 4,30
	mr 3,31
	bl __subsf3
.L223:
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
.L226:
	.cfi_restore_state
	mr 3,31
	b .L223
.L227:
	mr 3,30
	b .L223
.L230:
	li 3,0
	b .L223
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
	bne- 0,.L240
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L239
	rlwinm 9,28,0,0,0
	rlwinm 10,30,0,0,0
	cmpw 0,9,10
	beq- 0,.L234
	cmpwi 0,9,0
	bne- 0,.L240
.L239:
	mr 3,28
	mr 4,29
	b .L232
.L234:
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L239
.L240:
	mr 3,30
	mr 4,31
.L232:
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
	bne- 0,.L248
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L249
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L244
	mr 3,31
	cmpwi 0,9,0
	bne- 0,.L242
.L249:
	mr 3,30
.L242:
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
.L244:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge- 0,.L249
	mr 30,31
	b .L249
.L248:
	mr 3,31
	b .L242
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
	bne- 0,.L253
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L260
	rlwinm 9,24,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	beq- 0,.L255
	cmpwi 0,9,0
	bne- 0,.L261
.L260:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L253:
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
.L255:
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
	bge- 0,.L260
.L261:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L253
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
	bne- 0,.L269
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L271
	rlwinm 9,30,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	beq- 0,.L265
	cmpwi 0,9,0
	bne- 0,.L271
.L269:
	mr 3,28
	mr 4,29
.L263:
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
.L265:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L269
.L271:
	mr 3,30
	mr 4,31
	b .L263
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
	bne- 0,.L279
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L280
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L275
	mr 3,30
	cmpwi 0,9,0
	bne- 0,.L273
.L279:
	mr 3,31
.L273:
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
.L275:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge- 0,.L279
	mr 31,30
	b .L279
.L280:
	mr 3,30
	b .L273
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
	bne- 0,.L284
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L292
	rlwinm 9,28,0,0,0
	rlwinm 10,24,0,0,0
	cmpw 0,9,10
	beq- 0,.L286
	cmpwi 0,9,0
	bne- 0,.L292
.L287:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L284
.L286:
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
	bge- 0,.L287
.L292:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
.L284:
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
	beq- 0,.L295
	lis 7,.LANCHOR1@ha
	la 7,.LANCHOR1@l(7)
.L296:
	rlwinm 8,9,0,26,31
	lbzx 8,7,8
	stb 8,0(10)
	addi 10,10,1
	srwi. 9,9,6
	bne+ 0,.L296
.L295:
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
	stw 3,12(9)
	li 10,0
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
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lis 10,0x4c95
	ori 10,10,0x7f2d
	lwz 3,8(9)
	mullw 3,10,3
	lwz 7,12(9)
	lis 8,0x5851
	ori 8,8,0xf42d
	mullw 8,8,7
	add 3,3,8
	mullw 8,10,7
	mulhwu 10,10,7
	addic 8,8,1
	adde 3,3,10
	stw 3,8(9)
	stw 8,12(9)
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
	beq- 0,.L307
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L307:
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
	beq- 0,.L309
	lwz 10,4(3)
	stw 10,4(9)
.L309:
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
	mr 28,6
	lwz 29,0(5)
	cmpwi 0,29,0
	beq- 0,.L318
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 30,40(1)
	.cfi_offset 30, -8
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 26,7
	mr 31,4
	li 30,0
.L320:
	mr 25,31
	mr 4,31
	mr 3,27
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L329
	addi 30,30,1
	add 31,31,28
	cmplw 0,29,30
	bne+ 0,.L320
	lwz 26,24(1)
	.cfi_restore 26
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L318:
	addi 9,29,1
	stw 9,0(24)
	mullw 29,28,29
	mr 5,28
	mr 4,27
	add 3,23,29
	bl memcpy
	mr 25,3
.L317:
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
	lwz 26,24(1)
	.cfi_restore 26
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
	b .L317
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
	beq- 0,.L331
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
.L333:
	mr 25,31
	mr 4,31
	mr 3,29
	mtctr 28
	bctrl
	cmpwi 0,3,0
	beq- 0,.L342
	addi 30,30,1
	add 31,31,27
	cmplw 0,26,30
	bne+ 0,.L333
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
.L331:
	li 25,0
	b .L330
.L342:
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
.L330:
	mr 3,25
	lwz 25,20(1)
	lwz 26,24(1)
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
	b .L345
.L346:
	addi 31,31,1
.L345:
	lbz 30,0(31)
	mr 3,30
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L346
	li 8,0
	cmpwi 0,30,43
	beq- 0,.L347
	cmpwi 0,30,45
	bne- 0,.L348
	li 8,1
.L347:
	addi 31,31,1
.L348:
	lbz 10,0(31)
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L350
.L349:
	slwi 9,3,2
	add 9,9,3
	slwi 9,9,1
	addi 10,10,-48
	subf 3,10,9
	lbzu 10,1(31)
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L349
.L350:
	cmpwi 0,8,0
	bne- 0,.L344
	neg 3,3
.L344:
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
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB46:
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
	b .L358
.L359:
	addi 31,31,1
.L358:
	lbz 30,0(31)
	mr 3,30
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L359
	li 8,0
	cmpwi 0,30,43
	beq- 0,.L360
	cmpwi 0,30,45
	bne- 0,.L361
	li 8,1
.L360:
	addi 31,31,1
.L361:
	lbz 10,0(31)
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L363
.L362:
	slwi 9,3,2
	add 9,9,3
	slwi 9,9,1
	addi 10,10,-48
	subf 3,10,9
	lbzu 10,1(31)
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L362
.L363:
	cmpwi 0,8,0
	bne- 0,.L357
	neg 3,3
.L357:
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
.LFE46:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
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
	b .L371
.L372:
	addi 31,31,1
.L371:
	lbz 30,0(31)
	mr 3,30
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L372
	cmpwi 7,30,43
	beq- 7,.L373
	cmpwi 7,30,45
	bne- 7,.L374
	li 9,1
	cmpwi 0,9,0
.L373:
	addi 31,31,1
.L374:
	lbz 10,0(31)
	addi 9,10,-48
	li 3,0
	li 4,0
	cmplwi 7,9,9
	bgt- 7,.L376
.L375:
	srwi 8,4,30
	rlwimi 8,3,2,0,31-2
	slwi 9,4,2
	addc 9,9,4
	adde 8,8,3
	srwi 7,9,31
	rlwimi 7,8,1,0,31-1
	slwi 9,9,1
	addi 4,10,-48
	srawi 3,4,31
	subfc 4,4,9
	subfe 3,3,7
	lbzu 10,1(31)
	addi 9,10,-48
	cmplwi 7,9,9
	ble+ 7,.L375
.L376:
	bne- 0,.L370
	subfic 4,4,0
	subfze 3,3
.L370:
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
	beq- 0,.L386
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
	b .L389
.L390:
	mr 31,29
.L387:
	cmpwi 0,31,0
	beq- 0,.L397
.L389:
	srwi 29,31,1
	mullw 30,29,28
	add 30,27,30
	mr 4,30
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	blt- 0,.L390
	ble- 0,.L396
	add 27,30,28
	addi 31,31,-1
	subf 31,29,31
	b .L387
.L397:
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
.L386:
	li 30,0
	b .L385
.L396:
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
.L385:
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
	stw 31,44(1)
	.cfi_offset 31, -4
	cmpwi 0,5,0
	beq- 0,.L399
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
	stw 30,40(1)
	.cfi_offset 30, -8
	mr 25,3
	mr 28,4
	mr 30,5
	mr 29,6
	mr 26,7
	mr 27,8
	b .L402
.L401:
	srawi. 30,30,1
	beq- 0,.L412
.L402:
	srawi 31,30,1
	mullw 31,31,29
	add 31,28,31
	mr 5,27
	mr 4,31
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L411
	ble- 0,.L401
	add 28,31,29
	addi 30,30,-1
	b .L401
.L412:
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
	lwz 30,40(1)
	.cfi_restore 30
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L399:
	li 31,0
	b .L398
.L411:
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
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
	lwz 30,40(1)
	.cfi_restore 30
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L398:
	mr 3,31
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
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
	srawi 9,3,31
	xor 3,9,3
	xor 4,9,4
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
.LFB53:
	.cfi_startproc
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	blr
	.cfi_endproc
.LFE53:
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
.LFB55:
	.cfi_startproc
	srawi 9,3,31
	xor 3,9,3
	xor 4,9,4
	subfc 4,9,4
	subfe 3,9,3
	blr
	.cfi_endproc
.LFE55:
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
	beq- 0,.L428
.L423:
	cmpw 7,4,9
	beq- 7,.L431
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L423
.L428:
	li 3,0
	blr
.L431:
	bnelr+ 0
	b .L428
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
	bne- 0,.L433
.L434:
	cmpwi 7,9,0
	beq- 7,.L433
	cmpwi 7,10,0
	beq- 7,.L433
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	beq+ 0,.L434
.L433:
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
.L442:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L442
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
	beq- 0,.L446
.L447:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L447
.L446:
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
	beq- 0,.L455
	mtctr 5
.L451:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 7,9,10
	bne- 7,.L452
	cmpwi 7,9,0
	beq- 7,.L452
	addi 3,3,4
	addi 4,4,4
	addic. 5,5,-1
	bdnz .L451
.L455:
	li 3,0
	blr
.L452:
	beq- 0,.L455
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
	beq- 7,.L467
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L470
	lwz 10,0(3)
	cmpw 0,10,4
	beq- 0,.L478
	addi 3,3,4
	addi 5,5,-1
	cmpwi 7,5,0
	beq- 7,.L467
.L470:
	srwi 9,9,1
	mtctr 9
.L462:
	lwz 9,0(3)
	cmpw 0,9,4
	beq- 0,.L478
	addi 9,3,4
	mr 3,9
	addi 5,5,-1
	cmpwi 7,5,0
	lwz 10,0(9)
	cmpw 0,10,4
	beq- 0,.L478
	addi 3,9,4
	addi 5,5,-1
	cmpwi 7,5,0
	bdnz .L462
.L467:
	li 3,0
	blr
.L478:
	bnelr+ 7
	b .L467
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
	beq- 7,.L485
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L490
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L498
	addi 3,3,4
	addi 4,4,4
	addi 5,5,-1
	cmpwi 7,5,0
	beq- 7,.L485
.L490:
	srwi 9,9,1
	mtctr 9
.L481:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L498
	addi 10,3,4
	mr 3,10
	addi 9,4,4
	mr 4,9
	addi 5,5,-1
	cmpwi 7,5,0
	lwz 7,0(10)
	lwz 8,0(9)
	cmpw 0,7,8
	bne- 0,.L498
	addi 3,10,4
	addi 4,9,4
	addi 5,5,-1
	cmpwi 7,5,0
	bdnz .L481
.L485:
	li 3,0
	blr
.L498:
	beq- 7,.L485
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
	beq- 0,.L501
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	slwi 5,5,2
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L501:
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
	blt- 0,.L508
	addi 4,4,-4
	addi 10,3,-4
	cmpwi 0,5,0
	beqlr- 0
	mr 9,5
	andi. 8,5,0x1
	beq- 0,.L521
	lwzu 8,4(4)
	stwu 8,4(10)
	cmpwi 0,5,1
	beqlr- 0
.L521:
	srwi 9,9,1
	mtctr 9
.L511:
	mr 8,4
	lwz 7,4(4)
	addi 9,10,4
	stw 7,4(10)
	addi 4,4,8
	lwz 8,8(8)
	addi 10,9,4
	stw 8,4(9)
	bdnz .L511
	blr
.L508:
	cmpwi 0,5,0
	beqlr- 0
	add 4,4,9
	add 9,3,9
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L518
	lwzu 8,-4(4)
	stwu 8,-4(9)
	cmpwi 0,5,1
	beqlr- 0
.L518:
	srwi 10,10,1
	mtctr 10
.L510:
	mr 8,4
	lwz 7,-4(4)
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	lwz 8,-8(8)
	addi 9,9,-8
	stw 8,-4(10)
	bdnz .L510
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
	addi 10,3,-4
	mr 9,5
	andi. 8,5,0x3
	beq- 0,.L542
	cmpwi 0,8,1
	beq- 0,.L546
	cmpwi 0,8,2
	beq- 0,.L547
	stwu 4,4(10)
	addi 5,5,-1
.L547:
	stwu 4,4(10)
	addi 5,5,-1
.L546:
	stwu 4,4(10)
	cmpwi 0,5,1
	beqlr- 0
.L542:
	srwi 9,9,2
	mtctr 9
.L533:
	mr 9,10
	stw 4,4(10)
	stw 4,8(10)
	stw 4,12(10)
	addi 10,10,16
	stw 4,16(9)
	bdnz .L533
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
	bge- 0,.L555
	add 3,3,5
	add 4,4,5
	cmpwi 0,5,0
	beqlr- 0
	mr 10,4
	mr 9,5
	andi. 8,5,0x1
	beq- 0,.L566
	lbzu 8,-1(3)
	stbu 8,-1(10)
	cmpwi 0,5,1
	beqlr- 0
.L566:
	srwi 9,9,1
	mtctr 9
.L557:
	mr 8,3
	lbz 7,-1(3)
	addi 9,10,-1
	stb 7,-1(10)
	addi 3,3,-2
	lbz 8,-2(8)
	addi 10,10,-2
	stb 8,-1(9)
	bdnz .L557
	blr
.L555:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 3,3,-1
	addi 4,4,-1
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L569
	lbzu 10,1(3)
	stbu 10,1(4)
	cmpwi 0,5,1
	beqlr- 0
.L569:
	srwi 9,9,1
	mtctr 9
.L558:
	mr 10,3
	lbz 8,1(3)
	addi 9,4,1
	stb 8,1(4)
	addi 3,3,2
	lbz 10,2(10)
	addi 4,4,2
	stb 10,1(9)
	bdnz .L558
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
	blt- 0,.L580
	slw 9,4,9
	li 7,0
.L581:
	neg 5,5
	rlwinm 5,5,0,26,31
	addic. 10,5,-32
	blt- 0,.L582
	srw 4,3,10
	li 3,0
.L583:
	or 3,9,3
	or 4,7,4
	blr
.L580:
	srwi 9,4,1
	subfic 10,5,31
	srw 9,9,10
	slw 10,3,5
	or 9,9,10
	slw 7,4,5
	b .L581
.L582:
	slwi 10,3,1
	subfic 8,5,31
	slw 8,10,8
	srw 4,4,5
	or 4,8,4
	srw 3,3,5
	b .L583
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
	blt- 0,.L585
	srw 9,3,9
	li 7,0
.L586:
	neg 5,5
	rlwinm 5,5,0,26,31
	addic. 10,5,-32
	blt- 0,.L587
	slw 3,4,10
	li 4,0
.L588:
	or 3,7,3
	or 4,9,4
	blr
.L585:
	slwi 9,3,1
	subfic 10,5,31
	slw 9,9,10
	srw 10,4,5
	or 9,9,10
	srw 7,3,5
	b .L586
.L587:
	srwi 10,4,1
	subfic 8,5,31
	srw 8,10,8
	slw 3,3,5
	or 3,8,3
	slw 4,4,5
	b .L588
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
.LFB72:
	.cfi_startproc
	rotlw 3,3,4
	blr
	.cfi_endproc
.LFE72:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	subfic 4,4,32
	rotlw 3,3,4
	blr
	.cfi_endproc
.LFE73:
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
.L603:
	srw 8,3,9
	addi 10,9,1
	mr 9,10
	andi. 8,8,0x1
	bne- 0,.L607
	srw 8,3,10
	addi 9,10,1
	andi. 8,8,0x1
	bne- 0,.L607
	bdnz .L603
	li 3,0
	blr
.L607:
	mr 3,9
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
	beq- 0,.L613
	andi. 3,9,0x1
	bnelr- 0
	li 3,1
.L612:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L612
	blr
.L613:
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
	blt- 0,.L620
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L617:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L620:
	.cfi_restore_state
	li 3,1
	b .L617
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
	lis 5,0xffef
	ori 5,5,0xffff
	li 6,-1
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L625
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L622:
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
.L625:
	.cfi_restore_state
	li 3,1
	b .L622
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
	lis 7,0xffef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0xfc8f
	ori 9,9,0xffff
	li 10,-2
	bl __gcc_qlt
	cmpwi 0,3,0
	blt- 0,.L630
	lis 7,0x7fef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0x7c8f
	ori 9,9,0xffff
	li 10,-2
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qgt
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L627:
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
.L630:
	.cfi_restore_state
	li 3,1
	b .L627
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
	bne- 0,.L635
	mr 4,29
	mr 3,29
	bl __addsf3
	mr 4,29
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L635
	stw 30,24(1)
	.cfi_offset 30, -8
	lis 30,0x4000
	cmpwi 0,31,0
	bge+ 0,.L639
	lis 30,0x3f00
	b .L639
.L638:
	srawi 31,31,1
	addze 31,31
	cmpwi 0,31,0
	beq- 0,.L649
	mr 4,30
	mr 3,30
	bl __mulsf3
	mr 30,3
.L639:
	andi. 9,31,0x1
	beq- 0,.L638
	mr 4,30
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L638
.L649:
	lwz 30,24(1)
	.cfi_restore 30
.L635:
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
	bne- 0,.L651
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __adddf3
	mr 5,26
	mr 6,27
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L651
	stw 28,16(1)
	.cfi_offset 28, -16
	stw 29,20(1)
	.cfi_offset 29, -12
	lis 28,0x4000
	li 29,0
	cmpwi 0,31,0
	bge+ 0,.L655
	lis 28,0x3fe0
	li 29,0
	b .L655
.L654:
	srawi 31,31,1
	addze 31,31
	cmpwi 0,31,0
	beq- 0,.L665
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L655:
	andi. 9,31,0x1
	beq- 0,.L654
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L654
.L665:
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
.L651:
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
	bne- 0,.L667
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
	beq- 0,.L667
	stw 24,32(1)
	.cfi_offset 24, -32
	stw 25,36(1)
	.cfi_offset 25, -28
	stw 26,40(1)
	.cfi_offset 26, -24
	stw 27,44(1)
	.cfi_offset 27, -20
	cmpwi 0,31,0
	blt- 0,.L682
	lis 24,0x4000
	li 25,0
	li 26,0
	li 27,0
	b .L671
.L682:
	lis 24,0x3fe0
	li 25,0
	li 26,0
	li 27,0
	b .L671
.L670:
	srawi 31,31,1
	addze 31,31
	cmpwi 0,31,0
	beq- 0,.L681
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
.L671:
	andi. 9,31,0x1
	beq- 0,.L670
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
	b .L670
.L681:
	lwz 24,32(1)
	.cfi_restore 24
	lwz 25,36(1)
	.cfi_restore 25
	lwz 26,40(1)
	.cfi_restore 26
	lwz 27,44(1)
	.cfi_restore 27
.L667:
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
	addi 4,4,-1
	addi 9,3,-1
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L690
	lbzu 8,1(9)
	lbzu 7,1(4)
	xor 8,8,7
	stb 8,0(9)
	cmpwi 0,5,1
	beqlr- 0
.L690:
	srwi 10,10,1
	mtctr 10
.L685:
	mr 7,4
	mr 10,9
	lbz 8,1(9)
	lbz 6,1(4)
	xor 8,8,6
	stb 8,1(9)
	addi 4,4,2
	addi 9,9,2
	lbz 8,2(10)
	lbz 7,2(7)
	xor 8,8,7
	stb 8,2(10)
	bdnz .L685
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 29,3
	mr 30,4
	mr 31,5
	bl strlen
	add 3,29,3
	cmpwi 7,31,0
	beq- 7,.L703
	addi 30,30,-1
	mr 9,31
	andi. 8,31,0x1
	beq- 0,.L705
	lbzu 8,1(30)
	stb 8,0(3)
	rlwinm 8,8,0,0xff
	cmpwi 0,8,0
	beq- 0,.L713
	addi 3,3,1
	addi 31,31,-1
	cmpwi 7,31,0
	beq- 7,.L703
.L705:
	srwi 9,9,1
	mtctr 9
.L698:
	addi 6,30,1
	lbz 9,1(30)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L713
	addi 7,3,1
	mr 3,7
	addi 8,31,-1
	mr 31,8
	cmpwi 7,8,0
	addi 30,6,1
	lbz 9,1(6)
	stb 9,0(7)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L713
	addi 3,7,1
	addi 31,8,-1
	cmpwi 7,31,0
	bdnz .L698
	b .L703
.L713:
	bne- 7,.L700
.L703:
	stb 31,0(3)
.L700:
	mr 3,29
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
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
	beq- 0,.L744
	mr 10,4
	andi. 8,4,0x3
	beq- 0,.L728
	cmpwi 0,8,1
	beq- 0,.L739
	cmpwi 0,8,2
	beq- 0,.L740
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L740:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L739:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmplw 0,4,3
	beqlr- 0
.L728:
	srwi 10,10,2
.L717:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 8,3,1
	mr 3,8
	lbzx 7,9,8
	cmpwi 0,7,0
	beqlr+ 0
	addi 3,8,1
	lbzx 7,9,3
	cmpwi 0,7,0
	beqlr+ 0
	addi 3,8,2
	lbzx 7,9,3
	cmpwi 0,7,0
	beqlr+ 0
	addi 3,8,3
	cmpwi 0,10,1
	addi 10,10,-1
	bne+ 0,.L717
	blr
.L744:
	li 3,0
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
	beq- 0,.L753
.L749:
	mr 10,4
.L752:
	lbzu 9,1(10)
	cmpwi 0,9,0
	beq- 0,.L756
	cmpw 0,9,8
	bne+ 0,.L752
	blr
.L756:
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L749
.L753:
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
	b .L759
.L758:
	addi 9,9,1
	cmpwi 0,10,0
	beqlr- 0
.L759:
	lbz 10,0(9)
	cmpw 0,10,4
	bne+ 0,.L758
	mr 3,9
	b .L758
	.cfi_endproc
.LFE94:
	.size	strrchr,.-strrchr
	.align 2
	.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	mr 30,4
	mr 3,4
	bl strlen
	mr. 29,3
	beq- 0,.L763
	stw 28,16(1)
	.cfi_offset 28, -16
	lbz 28,0(30)
.L765:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L772
	mr 5,29
	mr 4,30
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L772
	addi 31,31,1
	b .L765
.L772:
	lwz 28,16(1)
	.cfi_restore 28
.L763:
	mr 3,31
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
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
	li 5,0
	li 6,0
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L783
.L774:
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L777
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L776
.L777:
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
.L783:
	.cfi_restore_state
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L774
.L776:
	addis 10,30,0x8000
	mr 30,10
	b .L777
	.cfi_endproc
.LFE96:
	.size	copysign,.-copysign
	.align 2
	.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,3
	cmpwi 0,6,0
	mr 29,3
	beq- 0,.L784
	cmplw 0,4,6
	blt- 0,.L789
	stw 30,24(1)
	.cfi_offset 30, -8
	subf 30,6,4
	add 30,3,30
	cmplw 0,3,30
	bgt- 0,.L790
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 26,8(1)
	.cfi_offset 26, -24
	stw 27,12(1)
	.cfi_offset 27, -20
	stw 28,16(1)
	.cfi_offset 28, -16
	lbz 27,0(5)
	addi 28,6,-1
	addi 26,5,1
	b .L787
.L786:
	cmplw 0,31,30
	bgt- 0,.L797
.L787:
	lbz 9,0(31)
	mr 29,31
	addi 31,31,1
	rlwinm 9,9,0,0xff
	cmpw 0,9,27
	bne+ 0,.L786
	mr 5,28
	mr 4,26
	mr 3,31
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L786
	b .L796
.L797:
	li 29,0
.L796:
	lwz 26,8(1)
	.cfi_restore 26
	lwz 27,12(1)
	.cfi_restore 27
	lwz 28,16(1)
	.cfi_restore 28
	lwz 30,24(1)
	.cfi_restore 30
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L784:
	mr 3,29
	lwz 29,20(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L789:
	.cfi_restore_state
	li 29,0
	b .L784
.L790:
	.cfi_offset 30, -8
	li 29,0
	lwz 30,24(1)
	.cfi_restore 30
	b .L784
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
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,5
	bl memcpy
	add 3,3,31
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
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
	li 5,0
	li 6,0
	bl __ltdf2
	li 23,0
	cmpwi 0,3,0
	blt- 0,.L829
.L801:
	lis 5,0x3ff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 29,0
	cmpwi 0,3,0
	blt- 0,.L825
	stw 24,16(1)
	.cfi_offset 24, -32
	stw 25,20(1)
	.cfi_offset 25, -28
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	lis 24,0x3fe0
	li 25,0
	lis 26,0x3ff0
	li 27,0
.L805:
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
	bge+ 0,.L805
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
.L806:
	stw 29,0(28)
	cmpwi 0,23,0
	beq- 0,.L810
	addis 10,30,0x8000
	mr 30,10
.L810:
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
.L829:
	.cfi_restore_state
	addis 10,30,0x8000
	mr 30,10
	li 23,1
	b .L801
.L825:
	lis 5,0x3fe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L827
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L827
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	li 29,0
	lis 26,0x3fe0
	li 27,0
.L809:
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
	blt+ 0,.L809
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	b .L806
.L827:
	li 29,0
	b .L806
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	mr 8,3
	mr 10,4
	li 3,0
	li 4,0
	or. 9,10,8
	beqlr- 0
.L833:
	rlwinm 9,10,0,31,31
	subfic 9,9,0
	subfe 7,7,7
	and 7,7,5
	and 9,9,6
	addc 4,9,4
	adde 3,7,3
	srwi 9,6,31
	rlwimi 9,5,1,0,31-1
	mr 5,9
	slwi 6,6,1
	srwi 10,10,1
	rlwimi 10,8,31,0,31-31
	srwi 8,8,1
	or. 9,8,10
	bne+ 0,.L833
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
	bge- 0,.L856
.L838:
	cmpwi 0,4,0
	blt- 0,.L839
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L839
	cmpwi 0,4,0
	blt- 0,.L839
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L839
	bdnz .L838
.L847:
	li 3,0
.L841:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L839:
	cmpwi 0,9,0
	beq- 0,.L847
.L856:
	li 3,0
	b .L843
.L842:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L841
.L843:
	cmplw 0,10,4
	blt- 0,.L842
	subf 10,4,10
	or 3,3,9
	b .L842
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
	beq- 0,.L860
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L860:
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
	srawi 10,3,31
	xor 8,3,10
	xor 9,4,10
	cmplw 0,3,10
	beq- 0,.L869
.L867:
	cntlzw 3,8
	cmpwi 0,8,0
	bne- 0,.L865
	cntlzw 3,9
	addi 3,3,32
.L865:
	addi 3,3,-1
	blr
.L869:
	cmplw 0,4,3
	bne+ 0,.L867
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
.L872:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	bne+ 0,.L872
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
	srwi 6,5,3
	rlwinm 9,5,0,0,28
	cmplw 0,3,4
	blt- 0,.L877
	add 8,4,5
	cmplw 0,8,3
	blt- 0,.L877
	mr 10,8
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 9,5
	andi. 7,5,0x1
	beq- 0,.L897
	lbzu 8,-1(10)
	stbu 8,-1(3)
	cmpwi 0,5,1
	beqlr- 0
.L897:
	srwi 9,9,1
	mtctr 9
.L883:
	addi 8,10,-1
	lbz 10,-1(10)
	addi 9,3,-1
	stb 10,-1(3)
	addi 10,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(9)
	bdnz .L883
	blr
.L877:
	cmpwi 0,6,0
	beq- 0,.L912
	addi 8,4,-8
	addi 7,3,-8
	andi. 11,6,0x1
	beq- 0,.L913
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	addi 8,8,8
	lwz 30,0(8)
	lwz 31,4(8)
	stwu 30,8(7)
	stw 31,4(7)
	cmpwi 0,6,1
	beq- 0,.L880
	srwi 10,6,1
	mtctr 10
.L881:
	mr 12,8
	lwz 10,8(8)
	lwz 11,12(8)
	mr 6,7
	stw 10,8(7)
	stw 11,12(7)
	addi 8,8,16
	lwz 10,16(12)
	lwz 11,20(12)
	addi 7,7,16
	stw 10,16(6)
	stw 11,20(6)
	bdnz .L881
.L880:
	cmplw 0,5,9
	ble- 0,.L876
	subf 5,9,5
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L891
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,5,1
	beq- 0,.L876
.L891:
	srwi 9,9,1
	mtctr 9
.L882:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L882
.L876:
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L913:
	srwi 10,6,1
	mtctr 10
.L914:
	mr 12,8
	lwz 10,8(8)
	lwz 11,12(8)
	mr 6,7
	stw 10,8(7)
	stw 11,12(7)
	addi 8,8,16
	lwz 10,16(12)
	lwz 11,20(12)
	addi 7,7,16
	stw 10,16(6)
	stw 11,20(6)
	bdnz .L914
.L912:
	cmplw 0,5,9
	blelr- 0
	subf 5,9,5
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L917
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,5,1
	beqlr- 0
.L917:
	srwi 9,9,1
	mtctr 9
.L919:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L919
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
	srwi 7,5,1
	cmplw 0,3,4
	blt- 0,.L924
	add 8,4,5
	cmplw 0,8,3
	blt- 0,.L924
	mr 10,8
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 9,5
	andi. 7,5,0x1
	beq- 0,.L941
	lbzu 8,-1(10)
	stbu 8,-1(3)
	cmpwi 0,5,1
	beqlr- 0
.L941:
	srwi 9,9,1
	mtctr 9
.L929:
	addi 8,10,-1
	lbz 10,-1(10)
	addi 9,3,-1
	stb 10,-1(3)
	addi 10,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(9)
	bdnz .L929
	blr
.L924:
	cmpwi 0,7,0
	beq- 0,.L927
	addi 10,4,-2
	addi 8,3,-2
	mr 9,7
	andi. 6,7,0x1
	beq- 0,.L938
	lhzu 6,2(10)
	sthu 6,2(8)
	cmpwi 0,7,1
	beq- 0,.L927
.L938:
	srwi 9,9,1
	mtctr 9
.L928:
	addi 7,10,2
	lhz 10,2(10)
	addi 9,8,2
	sth 10,2(8)
	addi 10,7,2
	lhz 7,2(7)
	addi 8,8,4
	sth 7,2(9)
	bdnz .L928
.L927:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
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
	srwi 7,5,2
	rlwinm 6,5,0,0,29
	cmplw 0,3,4
	blt- 0,.L953
	add 8,4,5
	cmplw 0,8,3
	blt- 0,.L953
	mr 10,8
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 9,5
	andi. 7,5,0x1
	beq- 0,.L973
	lbzu 8,-1(10)
	stbu 8,-1(3)
	cmpwi 0,5,1
	beqlr- 0
.L973:
	srwi 9,9,1
	mtctr 9
.L959:
	addi 8,10,-1
	lbz 10,-1(10)
	addi 9,3,-1
	stb 10,-1(3)
	addi 10,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(9)
	bdnz .L959
	blr
.L953:
	cmpwi 0,7,0
	beq- 0,.L956
	addi 10,4,-4
	addi 8,3,-4
	mr 9,7
	andi. 11,7,0x1
	beq- 0,.L970
	lwzu 11,4(10)
	stwu 11,4(8)
	cmpwi 0,7,1
	beq- 0,.L956
.L970:
	srwi 9,9,1
	mtctr 9
.L957:
	addi 7,10,4
	lwz 10,4(10)
	addi 9,8,4
	stw 10,4(8)
	addi 10,7,4
	lwz 7,4(7)
	addi 8,8,8
	stw 7,4(9)
	bdnz .L957
.L956:
	cmplw 0,5,6
	blelr- 0
	subf 5,6,5
	addi 6,6,-1
	add 4,4,6
	add 3,3,6
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L967
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,5,1
	beqlr- 0
.L967:
	srwi 9,9,1
	mtctr 9
.L958:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L958
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
	mr 8,3
	li 3,0
	li 9,8
	mtctr 9
.L998:
	subfic 9,3,15
	sraw 9,8,9
	andi. 9,9,0x1
	bnelr- 0
	addi 10,3,1
	mr 3,10
	subfic 9,10,15
	sraw 9,8,9
	andi. 9,9,0x1
	bnelr- 0
	addi 3,10,1
	bdnz .L998
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
	mr 8,3
	li 3,0
	li 9,8
	mtctr 9
.L1005:
	sraw 9,8,3
	andi. 9,9,0x1
	bnelr- 0
	addi 9,3,1
	mr 3,9
	sraw 10,8,9
	andi. 10,10,0x1
	bnelr- 0
	addi 3,9,1
	bdnz .L1005
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
	bge- 0,.L1017
	mr 3,31
	bl __fixsfsi
.L1010:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1017:
	.cfi_restore_state
	lis 4,0x4700
	mr 3,31
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L1010
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
	li 9,0
	li 10,0
	li 7,4
	mtctr 7
.L1019:
	sraw 7,3,9
	rlwinm 7,7,0,31,31
	add 8,8,7
	addi 9,9,1
	sraw 7,3,9
	rlwinm 7,7,0,31,31
	add 7,10,7
	addi 10,9,1
	sraw 10,3,10
	rlwinm 10,10,0,31,31
	add 8,8,10
	addi 10,9,2
	sraw 10,3,10
	rlwinm 10,10,0,31,31
	add 10,7,10
	addi 9,9,3
	bdnz .L1019
	add 3,8,10
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
	li 9,0
	li 10,0
	li 7,4
	mtctr 7
.L1026:
	sraw 7,8,9
	rlwinm 7,7,0,31,31
	add 3,3,7
	addi 9,9,1
	sraw 7,8,9
	rlwinm 7,7,0,31,31
	add 7,10,7
	addi 10,9,1
	sraw 10,8,10
	rlwinm 10,10,0,31,31
	add 3,3,10
	addi 10,9,2
	sraw 10,8,10
	rlwinm 10,10,0,31,31
	add 10,7,10
	addi 9,9,3
	bdnz .L1026
	add 3,3,10
	blr
	.cfi_endproc
.LFE118:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beqlr- 0
.L1034:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	bne+ 0,.L1034
	blr
	.cfi_endproc
.LFE119:
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
.L1040:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srwi. 4,4,1
	bne+ 0,.L1040
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
	mr 10,3
	li 9,1
	li 8,16
	mtctr 8
	cmplw 0,4,3
	bge- 0,.L1064
.L1046:
	cmpwi 0,4,0
	blt- 0,.L1047
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1047
	cmpwi 0,4,0
	blt- 0,.L1047
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1047
	bdnz .L1046
.L1055:
	li 3,0
.L1049:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1047:
	cmpwi 0,9,0
	beq- 0,.L1055
.L1064:
	li 3,0
	b .L1051
.L1050:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L1049
.L1051:
	cmplw 0,10,4
	blt- 0,.L1050
	subf 10,4,10
	or 3,3,9
	b .L1050
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
	blt- 0,.L1069
	mr 4,30
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L1066:
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
.L1069:
	.cfi_restore_state
	li 3,-1
	b .L1066
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
	blt- 0,.L1074
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L1071:
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
.L1074:
	.cfi_restore_state
	li 3,-1
	b .L1071
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
	mr 10,3
	li 7,0
	cmpwi 0,4,0
	blt- 0,.L1092
.L1079:
	beq- 0,.L1084
	li 8,32
	li 3,0
.L1081:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srawi. 4,4,1
	beq- 0,.L1080
	addi 9,8,-1
	mr 8,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne+ 0,.L1081
.L1080:
	cmpwi 0,7,0
	beqlr- 0
	neg 3,3
	blr
.L1092:
	li 7,1
	neg. 4,4
	b .L1079
.L1084:
	li 3,0
	b .L1080
	.cfi_endproc
.LFE126:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	cmpwi 0,3,0
	li 31,0
	blt- 0,.L1103
.L1094:
	cmpwi 0,4,0
	blt- 0,.L1104
.L1095:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L1093
	neg 3,3
.L1093:
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
	neg 3,3
	li 31,1
	b .L1094
.L1104:
	neg 4,4
	xori 31,31,0x1
	b .L1095
	.cfi_endproc
.LFE127:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	cmpwi 0,3,0
	li 31,0
	blt- 0,.L1114
.L1106:
	srawi 9,4,31
	xor 4,9,4
	li 5,1
	subf 4,9,4
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L1105
	neg 3,3
.L1105:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1114:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L1106
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
	bge- 0,.L1117
.L1116:
	andi. 9,4,0x8000
	bne- 0,.L1117
	rlwinm 4,4,1,16,30
	slwi 10,10,1
	cmplw 0,3,4
	ble- 0,.L1117
	bdnz .L1116
	li 10,0
.L1117:
	andi. 9,10,0xffff
	beq- 0,.L1125
	li 8,0
	b .L1121
.L1120:
	srwi 9,9,1
	mr 10,9
	srwi 4,4,1
	cmpwi 0,9,0
	beq- 0,.L1119
	rlwinm 9,9,0,0xffff
.L1121:
	cmplw 0,3,4
	blt- 0,.L1120
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 8,10,8
	b .L1120
.L1125:
	mr 8,10
.L1119:
	cmpwi 0,5,0
	bne- 0,.L1131
.L1122:
	rlwinm 3,8,0,0xffff
	blr
.L1131:
	mr 8,3
	b .L1122
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	mr 10,3
	li 9,1
	li 8,16
	mtctr 8
	cmplw 0,4,3
	bge- 0,.L1151
.L1133:
	cmpwi 0,4,0
	blt- 0,.L1134
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1134
	cmpwi 0,4,0
	blt- 0,.L1134
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L1134
	bdnz .L1133
.L1142:
	li 3,0
.L1136:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1134:
	cmpwi 0,9,0
	beq- 0,.L1142
.L1151:
	li 3,0
	b .L1138
.L1137:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L1136
.L1138:
	cmplw 0,10,4
	blt- 0,.L1137
	subf 10,4,10
	or 3,3,9
	b .L1137
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	andi. 9,5,0x20
	beq- 0,.L1154
	addi 5,5,-32
	slw 3,4,5
	li 10,0
.L1155:
	mr 4,10
	blr
.L1154:
	cmpwi 0,5,0
	beqlr- 0
	slw 10,4,5
	subfic 9,5,32
	srw 9,4,9
	slw 3,3,5
	or 3,9,3
	b .L1155
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
	beq- 0,.L1159
	srawi 10,3,31
	addi 5,5,-32
	sraw 4,3,5
.L1160:
	mr 3,10
	blr
.L1159:
	cmpwi 0,5,0
	beqlr- 0
	sraw 10,3,5
	subfic 9,5,32
	slw 9,3,9
	srw 4,4,5
	or 4,9,4
	b .L1160
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
	bne- 0,.L1166
	subfic 9,9,2
.L1167:
	add 3,3,10
	add 3,9,3
	blr
.L1166:
	li 9,0
	b .L1167
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
	blt- 0,.L1170
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1170:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __cmpdi2
	addi 3,3,-1
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
	beq- 0,.L1178
	addi 5,5,-32
	srw 4,3,5
	li 10,0
.L1179:
	mr 3,10
	blr
.L1178:
	cmpwi 0,5,0
	beqlr- 0
	srw 10,3,5
	subfic 9,5,32
	slw 9,3,9
	srw 4,4,5
	or 4,9,4
	b .L1179
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	mr 8,4
	rlwinm 10,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 4,10,9
	srwi 7,4,16
	srwi 3,3,16
	mullw 9,9,3
	add 9,9,7
	rlwinm 7,9,0,0xffff
	srwi 8,8,16
	mullw 10,10,8
	add 10,10,7
	srwi 9,9,16
	mullw 3,3,8
	add 9,9,3
	srwi 3,10,16
	add 3,9,3
	rlwimi 4,10,16,0,31-16
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
	mr 28,3
	mr 30,4
	mr 29,5
	mr 31,6
	mr 4,6
	mr 3,30
	bl __muldsi3
	mullw 31,31,28
	mullw 30,30,29
	add 31,31,30
	add 3,31,3
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
	xor 3,3,4
	srwi 9,3,16
	xor 9,9,3
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
	srwi 9,4,1
	rlwimi 9,3,31,0,31-31
	srwi 10,3,1
	lis 8,0x5555
	ori 8,8,0x5555
	and 10,10,8
	and 9,9,8
	subfc 9,9,4
	subfe 3,10,3
	srwi 10,9,2
	rlwimi 10,3,30,0,31-30
	srwi 7,3,2
	lis 8,0x3333
	ori 8,8,0x3333
	and 7,7,8
	and 10,10,8
	and 3,3,8
	and 9,9,8
	addc 9,10,9
	adde 7,7,3
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
	mr 29,4
	mr 28,3
	mr 30,5
	mr 31,5
	lis 26,0x3ff0
	li 27,0
	b .L1193
.L1191:
	srawi 31,31,1
	addze 31,31
	cmpwi 0,31,0
	beq- 0,.L1192
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L1193:
	andi. 9,31,0x1
	beq- 0,.L1191
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L1191
.L1192:
	cmpwi 0,30,0
	blt- 0,.L1199
.L1190:
	mr 3,26
	mr 4,27
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
.L1199:
	.cfi_restore_state
	mr 5,26
	mr 6,27
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	mr 27,4
	mr 26,3
	b .L1190
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
	mr 30,3
	mr 28,4
	mr 31,4
	lis 29,0x3f80
	b .L1203
.L1201:
	srawi 31,31,1
	addze 31,31
	cmpwi 0,31,0
	beq- 0,.L1202
	mr 4,30
	mr 3,30
	bl __mulsf3
	mr 30,3
.L1203:
	andi. 9,31,0x1
	beq- 0,.L1201
	mr 4,30
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L1201
.L1202:
	cmpwi 0,28,0
	blt- 0,.L1209
.L1200:
	mr 3,29
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
.L1209:
	.cfi_restore_state
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
	b .L1200
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
	blt- 0,.L1212
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1212:
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __ucmpdi2
	addi 3,3,-1
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
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
