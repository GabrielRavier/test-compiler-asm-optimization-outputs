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
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L9
	lbzu 8,-1(4)
	stbu 8,-1(9)
	cmpwi 0,5,1
	beqlr- 0
.L9:
	srwi 10,10,1
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
	cmplw 0,3,4
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 4,4,-1
	addi 10,3,-1
	mr 9,5
	andi. 8,5,0x1
	beq- 0,.L12
	lbzu 8,1(4)
	stbu 8,1(10)
	cmpwi 0,5,1
	beqlr- 0
.L12:
	srwi 9,9,1
	mtctr 9
.L5:
	mr 8,4
	lbz 7,1(4)
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	lbz 8,2(8)
	addi 10,9,1
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
	mr 10,3
	rlwinm 5,5,0,0xff
	cmpwi 0,6,0
	beq- 0,.L19
	addi 4,4,-1
	mr 9,6
	andi. 8,6,0x1
	beq- 0,.L25
	lbzu 8,1(4)
	stb 8,0(3)
	rlwinm 8,8,0,0xff
	cmpw 0,8,5
	beq- 0,.L19
	addi 10,3,1
	addic. 6,6,-1
	beq- 0,.L19
.L25:
	srwi 9,9,1
	mtctr 9
.L20:
	addi 7,4,1
	lbz 9,1(4)
	stb 9,0(10)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq- 0,.L19
	addi 3,6,-1
	mr 6,3
	addi 8,10,1
	mr 10,8
	addi 4,7,1
	lbz 9,1(7)
	stb 9,0(8)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq- 0,.L19
	addi 6,3,-1
	addi 10,8,1
	bdnz .L20
.L19:
	li 3,0
	cmpwi 0,6,0
	beqlr- 0
	addi 3,10,1
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
	cmpwi 0,5,0
	beq- 0,.L33
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L39
	lbz 10,0(3)
	cmpw 0,10,4
	beq- 0,.L33
	addi 3,3,1
	addic. 5,5,-1
	beq- 0,.L33
.L39:
	srwi 9,9,1
	mtctr 9
.L32:
	lbz 9,0(3)
	cmpw 0,9,4
	beq- 0,.L33
	addi 9,3,1
	mr 3,9
	addi 10,5,-1
	mr 5,10
	lbz 8,0(9)
	cmpw 0,8,4
	beq- 0,.L33
	addi 3,9,1
	addi 5,10,-1
	bdnz .L32
.L33:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
	blr
	.cfi_endproc
.LFE2:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	mr 9,3
	cmpwi 0,5,0
	beq- 0,.L50
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L56
	lbz 7,0(3)
	lbz 8,0(4)
	cmpw 0,7,8
	bne- 0,.L50
	addi 9,3,1
	addi 4,4,1
	addic. 5,5,-1
	beq- 0,.L50
.L56:
	srwi 10,10,1
	mtctr 10
.L49:
	lbz 8,0(9)
	lbz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L50
	addi 7,5,-1
	mr 5,7
	addi 8,9,1
	mr 9,8
	addi 10,4,1
	mr 4,10
	lbz 3,0(8)
	lbz 6,0(10)
	cmpw 0,3,6
	bne- 0,.L50
	addi 5,7,-1
	addi 9,8,1
	addi 4,10,1
	bdnz .L49
.L50:
	li 3,0
	cmpwi 0,5,0
	beqlr- 0
	lbz 9,0(9)
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
	beq- 0,.L64
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L64:
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
	beq- 0,.L71
	mr 3,9
	addi 9,9,-1
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
.L71:
	srwi 5,5,1
	addi 10,5,1
	mtctr 10
.L67:
	bdz .L77
	mr 3,9
	addi 10,9,-1
	lbz 9,0(9)
	cmpw 0,9,4
	beqlr- 0
	mr 3,10
	addi 9,10,-1
	lbz 10,0(10)
	cmpw 0,10,4
	bne+ 0,.L67
	blr
.L77:
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
	beq- 0,.L87
	cmpwi 0,8,1
	beq- 0,.L91
	cmpwi 0,8,2
	beq- 0,.L92
	stbu 4,1(10)
	addi 5,5,-1
.L92:
	stbu 4,1(10)
	addi 5,5,-1
.L91:
	stbu 4,1(10)
	cmpwi 0,5,1
	beqlr- 0
.L87:
	srwi 9,9,2
	mtctr 9
.L80:
	mr 9,10
	stb 4,1(10)
	stb 4,2(10)
	stb 4,3(10)
	addi 10,10,4
	stb 4,4(9)
	bdnz .L80
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
	andi. 9,9,0xff
	beqlr- 0
.L97:
	lbzu 9,1(4)
	stbu 9,1(3)
	andi. 9,9,0xff
	bne+ 0,.L97
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
	andi. 10,9,0xff
	beqlr- 0
.L101:
	rlwinm 9,9,0,0xff
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	andi. 10,9,0xff
	bne+ 0,.L101
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
.L109:
	lbz 9,0(3)
	rlwinm 10,9,0,0xff
	cmpw 0,10,4
	beqlr- 0
	addi 3,3,1
	andi. 9,9,0xff
	bne+ 0,.L109
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
	rlwinm 7,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,7,8
	bne- 0,.L112
.L113:
	andi. 8,9,0xff
	beq- 0,.L112
	lbzu 9,1(3)
	lbzu 10,1(4)
	rlwinm 7,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,7,8
	beq+ 0,.L113
.L112:
	rlwinm 9,9,0,0xff
	rlwinm 3,10,0,0xff
	subf 3,3,9
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
	beq- 0,.L118
	mr 9,3
.L117:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L117
.L116:
	subf 3,3,9
	blr
.L118:
	mr 9,3
	b .L116
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
	beq- 0,.L125
	lbz 10,0(3)
	andi. 9,10,0xff
	beq- 0,.L122
	addi 5,5,-1
	add 7,4,5
	addi 9,5,1
	mtctr 9
.L123:
	lbz 9,0(4)
	andi. 8,9,0xff
	beq- 0,.L122
	bdz .L128
	rlwinm 9,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,9,8
	bne- 0,.L122
	addi 4,4,1
	lbzu 10,1(3)
	andi. 9,10,0xff
	bne+ 0,.L123
	b .L122
.L128:
	mr 4,7
.L122:
	rlwinm 10,10,0,0xff
	lbz 3,0(4)
	subf 3,3,10
	blr
.L125:
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
	beq- 0,.L134
	lbz 10,1(3)
	stb 10,0(4)
	lbz 10,0(3)
	stb 10,1(4)
	addi 4,4,2
	addi 3,3,2
	cmpwi 0,5,1
	beqlr- 0
.L134:
	srwi 9,9,1
	mtctr 9
.L131:
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
	bdnz .L131
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
	beq- 0,.L142
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L142:
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
	ble- 0,.L145
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L145:
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
	beq- 0,.L152
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
	blr
.L152:
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
	ble- 0,.L156
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
.L156:
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
	ble- 0,.L167
	li 3,1
	cmplwi 0,9,8231
	blelr- 0
	addi 10,9,-8234
	cmplwi 0,10,47061
	blelr- 0
	addis 10,9,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	blelr- 0
	addis 10,9,0xffff
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
.L167:
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
	ble- 0,.L170
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
	blr
.L170:
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
	bne- 0,.L175
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L176
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L179
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
.L172:
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
.L175:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L172
.L176:
	mr 3,28
	mr 4,29
	b .L172
.L179:
	li 3,0
	li 4,0
	b .L172
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
	bne- 0,.L184
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L185
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	ble- 0,.L188
	mr 4,30
	mr 3,31
	bl __subsf3
.L181:
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
.L184:
	.cfi_restore_state
	mr 3,31
	b .L181
.L185:
	mr 3,30
	b .L181
.L188:
	li 3,0
	b .L181
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
	bne- 0,.L196
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L197
	rlwinm 9,28,0,0,0
	rlwinm 10,30,0,0,0
	cmpw 0,9,10
	beq- 0,.L192
	cmpwi 0,9,0
	bne- 0,.L198
	mr 3,28
	mr 4,29
.L190:
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
.L192:
	.cfi_restore_state
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L193
	mr 3,30
	mr 4,31
	b .L190
.L193:
	mr 3,28
	mr 4,29
	b .L190
.L196:
	mr 3,30
	mr 4,31
	b .L190
.L197:
	mr 3,28
	mr 4,29
	b .L190
.L198:
	mr 3,30
	mr 4,31
	b .L190
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
	bne- 0,.L206
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L207
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L202
	mr 3,31
	cmpwi 0,9,0
	bne- 0,.L200
	mr 3,30
	b .L200
.L202:
	mr 4,31
	mr 3,30
	bl __ltsf2
	mr 9,30
	cmpwi 0,3,0
	bge- 0,.L204
	mr 9,31
.L204:
	mr 3,9
.L200:
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
.L206:
	.cfi_restore_state
	mr 3,31
	b .L200
.L207:
	mr 3,30
	b .L200
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
	bne- 0,.L216
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L217
	rlwinm 9,24,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	beq- 0,.L212
	cmpwi 0,9,0
	bne- 0,.L218
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L210:
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
.L212:
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
	bge- 0,.L213
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L210
.L213:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L210
.L216:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L210
.L217:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L210
.L218:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L210
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
	bne- 0,.L226
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L227
	rlwinm 9,30,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	beq- 0,.L222
	cmpwi 0,9,0
	bne- 0,.L228
	mr 3,28
	mr 4,29
.L220:
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
.L222:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L223
	mr 3,30
	mr 4,31
	b .L220
.L223:
	mr 3,28
	mr 4,29
	b .L220
.L226:
	mr 3,28
	mr 4,29
	b .L220
.L227:
	mr 3,30
	mr 4,31
	b .L220
.L228:
	mr 3,30
	mr 4,31
	b .L220
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
	bne- 0,.L236
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L237
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L232
	mr 3,30
	cmpwi 0,9,0
	bne- 0,.L230
	mr 3,31
	b .L230
.L232:
	mr 4,31
	mr 3,30
	bl __ltsf2
	mr 9,31
	cmpwi 0,3,0
	bge- 0,.L234
	mr 9,30
.L234:
	mr 3,9
.L230:
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
.L236:
	.cfi_restore_state
	mr 3,31
	b .L230
.L237:
	mr 3,30
	b .L230
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
	bne- 0,.L246
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L247
	rlwinm 9,28,0,0,0
	rlwinm 10,24,0,0,0
	cmpw 0,9,10
	beq- 0,.L242
	cmpwi 0,9,0
	bne- 0,.L248
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L240:
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
.L242:
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
	bge- 0,.L243
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L240
.L243:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L240
.L246:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L240
.L247:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L240
.L248:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L240
	.cfi_endproc
.LFE36:
	.size	fminl,.-fminl
	.align 2
	.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L253
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lis 8,.LANCHOR1@ha
	la 8,.LANCHOR1@l(8)
.L252:
	rlwinm 10,3,0,26,31
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi. 3,3,6
	bne+ 0,.L252
.L251:
	li 10,0
	stb 10,0(9)
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	blr
.L253:
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	b .L251
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
	beq- 0,.L260
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L260:
	li 9,0
	stw 9,4(3)
	stw 9,0(3)
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
	beq- 0,.L262
	lwz 10,4(3)
	stw 10,4(9)
.L262:
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
	beq- 0,.L265
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 30,40(1)
	.cfi_offset 30, -8
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 26,7
	mr 31,4
	li 30,0
.L267:
	mr 25,31
	mr 4,31
	mr 3,27
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L270
	addi 30,30,1
	add 31,31,28
	cmplw 0,29,30
	bne+ 0,.L267
	lwz 26,24(1)
	.cfi_restore 26
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L265:
	addi 9,29,1
	stw 9,0(24)
	mullw 29,28,29
	mr 5,28
	mr 4,27
	add 3,23,29
	bl memcpy
	mr 25,3
.L264:
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
.L270:
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
	b .L264
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
	beq- 0,.L272
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
.L274:
	mr 25,31
	mr 4,31
	mr 3,29
	mtctr 28
	bctrl
	cmpwi 0,3,0
	beq- 0,.L277
	addi 30,30,1
	add 31,31,27
	cmplw 0,26,30
	bne+ 0,.L274
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
.L272:
	li 25,0
	b .L271
.L277:
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
.L271:
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
	b .L280
.L281:
	addi 31,31,1
.L280:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L281
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq- 0,.L287
	mr 8,3
	cmpwi 0,9,45
	bne- 0,.L283
	li 8,1
.L282:
	addi 31,31,1
.L283:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	bgt- 0,.L285
.L284:
	slwi 10,3,2
	add 10,10,3
	slwi 10,10,1
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 3,9,10
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L284
.L285:
	cmpwi 0,8,0
	bne- 0,.L279
	neg 3,3
.L279:
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
.L287:
	.cfi_restore_state
	mr 8,3
	b .L282
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
	b .L293
.L294:
	addi 31,31,1
.L293:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L294
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq- 0,.L300
	mr 8,3
	cmpwi 0,9,45
	bne- 0,.L296
	li 8,1
.L295:
	addi 31,31,1
.L296:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	bgt- 0,.L298
.L297:
	slwi 10,3,2
	add 10,10,3
	slwi 10,10,1
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 3,9,10
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L297
.L298:
	cmpwi 0,8,0
	bne- 0,.L292
	neg 3,3
.L292:
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
.L300:
	.cfi_restore_state
	mr 8,3
	b .L295
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
	b .L306
.L307:
	addi 31,31,1
.L306:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr. 7,3
	bne+ 0,.L307
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq- 0,.L308
	cmpwi 0,9,45
	bne- 0,.L309
	li 7,1
.L308:
	addi 31,31,1
.L309:
	lbz 10,0(31)
	rlwinm 9,10,0,0xff
	addi 9,9,-48
	li 3,0
	li 4,0
	cmplwi 0,9,9
	bgt- 0,.L311
.L310:
	srwi 8,4,30
	rlwimi 8,3,2,0,31-2
	slwi 9,4,2
	addc 9,9,4
	adde 8,8,3
	srwi 6,9,31
	rlwimi 6,8,1,0,31-1
	slwi 9,9,1
	rlwinm 4,10,0,0xff
	addi 4,4,-48
	srawi 3,4,31
	subfc 4,4,9
	subfe 3,3,6
	lbzu 10,1(31)
	rlwinm 9,10,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble+ 0,.L310
.L311:
	cmpwi 0,7,0
	bne- 0,.L305
	subfic 4,4,0
	subfze 3,3
.L305:
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
	beq- 0,.L318
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
	b .L321
.L322:
	mr 31,29
.L319:
	cmpwi 0,31,0
	beq- 0,.L326
.L321:
	srwi 29,31,1
	mullw 30,29,28
	add 30,27,30
	mr 4,30
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	blt- 0,.L322
	ble- 0,.L325
	add 27,30,28
	addi 31,31,-1
	subf 31,29,31
	b .L319
.L326:
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
.L318:
	li 30,0
	b .L317
.L325:
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
.L317:
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
	beq- 0,.L328
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
	mr 29,6
	mr 26,7
	mr 27,8
	mr 30,5
	b .L331
.L330:
	srawi. 30,30,1
	beq- 0,.L335
.L331:
	srawi 31,30,1
	mullw 31,31,29
	add 31,28,31
	mr 5,27
	mr 4,31
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L334
	ble- 0,.L330
	add 28,31,29
	addi 30,30,-1
	b .L330
.L335:
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
.L328:
	li 31,0
	b .L327
.L334:
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
.L327:
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
	beq- 0,.L347
.L346:
	cmpw 0,4,9
	beq- 0,.L347
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L346
.L347:
	subfic 9,9,0
	subfe 9,9,9
	and 3,3,9
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
	bne- 0,.L353
.L354:
	cmpwi 0,9,0
	beq- 0,.L353
	cmpwi 0,10,0
	beq- 0,.L353
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	beq+ 0,.L354
.L353:
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
.L359:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L359
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
	beq- 0,.L365
	mr 9,3
.L364:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L364
.L363:
	subf 3,3,9
	srawi 3,3,2
	blr
.L365:
	mr 9,3
	b .L363
	.cfi_endproc
.LFE60:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	mr 9,3
	cmpwi 0,5,0
	beq- 0,.L369
	mtctr 5
.L368:
	lwz 10,0(9)
	lwz 8,0(4)
	cmpw 0,10,8
	bne- 0,.L369
	cmpwi 0,10,0
	beq- 0,.L369
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
	bdnz .L368
.L369:
	li 3,0
	cmpwi 0,5,0
	beqlr- 0
	lwz 9,0(9)
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
	cmpwi 0,5,0
	beq- 0,.L379
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L385
	lwz 10,0(3)
	cmpw 0,10,4
	beq- 0,.L379
	addi 3,3,4
	addic. 5,5,-1
	beq- 0,.L379
.L385:
	srwi 9,9,1
	mtctr 9
.L378:
	lwz 9,0(3)
	cmpw 0,9,4
	beq- 0,.L379
	addi 10,5,-1
	mr 5,10
	addi 9,3,4
	mr 3,9
	lwz 8,0(9)
	cmpw 0,8,4
	beq- 0,.L379
	addi 5,10,-1
	addi 3,9,4
	bdnz .L378
.L379:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
	blr
	.cfi_endproc
.LFE62:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	mr 9,3
	cmpwi 0,5,0
	beq- 0,.L396
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L403
	lwz 7,0(3)
	lwz 8,0(4)
	cmpw 0,7,8
	bne- 0,.L396
	addi 9,3,4
	addi 4,4,4
	addic. 5,5,-1
	beq- 0,.L396
.L403:
	srwi 10,10,1
	mtctr 10
.L395:
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L396
	addi 7,5,-1
	mr 5,7
	addi 8,9,4
	mr 9,8
	addi 10,4,4
	mr 4,10
	lwz 3,0(8)
	lwz 6,0(10)
	cmpw 0,3,6
	bne- 0,.L396
	addi 5,7,-1
	addi 9,8,4
	addi 4,10,4
	bdnz .L395
.L396:
	li 3,0
	cmpwi 0,5,0
	beqlr- 0
	lwz 9,0(9)
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
	beq- 0,.L411
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	slwi 5,5,2
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L411:
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
	blt- 0,.L415
	addi 4,4,-4
	addi 10,3,-4
	cmpwi 0,5,0
	beqlr- 0
	mr 9,5
	andi. 8,5,0x1
	beq- 0,.L426
	lwzu 8,4(4)
	stwu 8,4(10)
	cmpwi 0,5,1
	beqlr- 0
.L426:
	srwi 9,9,1
	mtctr 9
.L418:
	mr 8,4
	lwz 7,4(4)
	addi 9,10,4
	stw 7,4(10)
	addi 4,4,8
	lwz 8,8(8)
	addi 10,9,4
	stw 8,4(9)
	bdnz .L418
	blr
.L415:
	cmpwi 0,5,0
	beqlr- 0
	add 4,4,9
	add 9,3,9
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L423
	lwzu 8,-4(4)
	stwu 8,-4(9)
	cmpwi 0,5,1
	beqlr- 0
.L423:
	srwi 10,10,1
	mtctr 10
.L417:
	mr 8,4
	lwz 7,-4(4)
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	lwz 8,-8(8)
	addi 9,9,-8
	stw 8,-4(10)
	bdnz .L417
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
	beq- 0,.L442
	cmpwi 0,8,1
	beq- 0,.L446
	cmpwi 0,8,2
	beq- 0,.L447
	stwu 4,4(10)
	addi 5,5,-1
.L447:
	stwu 4,4(10)
	addi 5,5,-1
.L446:
	stwu 4,4(10)
	cmpwi 0,5,1
	beqlr- 0
.L442:
	srwi 9,9,2
	mtctr 9
.L435:
	mr 9,10
	stw 4,4(10)
	stw 4,8(10)
	stw 4,12(10)
	addi 10,10,16
	stw 4,16(9)
	bdnz .L435
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
	bge- 0,.L451
	add 3,3,5
	add 4,4,5
	cmpwi 0,5,0
	beqlr- 0
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L458
	lbzu 10,-1(3)
	stbu 10,-1(4)
	cmpwi 0,5,1
	beqlr- 0
.L458:
	srwi 9,9,1
	mtctr 9
.L453:
	mr 10,3
	lbz 8,-1(3)
	addi 9,4,-1
	stb 8,-1(4)
	addi 3,3,-2
	lbz 10,-2(10)
	addi 4,4,-2
	stb 10,-1(9)
	bdnz .L453
	blr
.L451:
	cmplw 0,3,4
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 3,3,-1
	addi 4,4,-1
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L461
	lbzu 10,1(3)
	stbu 10,1(4)
	cmpwi 0,5,1
	beqlr- 0
.L461:
	srwi 9,9,1
	mtctr 9
.L454:
	mr 10,3
	lbz 8,1(3)
	addi 9,4,1
	stb 8,1(4)
	addi 3,3,2
	lbz 10,2(10)
	addi 4,4,2
	stb 10,1(9)
	bdnz .L454
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
	addic. 10,5,-32
	blt- 0,.L468
	slw 10,4,10
	li 7,0
.L469:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L470
	srw 4,3,9
	li 3,0
.L471:
	or 3,10,3
	or 4,7,4
	blr
.L468:
	srwi 10,4,1
	subfic 9,5,31
	srw 10,10,9
	slw 9,3,5
	or 10,10,9
	slw 7,4,5
	b .L469
.L470:
	slwi 9,3,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 8,5,31
	slw 9,9,8
	srw 4,4,5
	or 4,9,4
	srw 3,3,5
	b .L471
	.cfi_endproc
.LFE68:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addic. 10,5,-32
	blt- 0,.L473
	srw 10,3,10
	li 7,0
.L474:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L475
	slw 3,4,9
	li 4,0
.L476:
	or 3,7,3
	or 4,10,4
	blr
.L473:
	slwi 10,3,1
	subfic 9,5,31
	slw 10,10,9
	srw 9,4,5
	or 10,10,9
	srw 7,3,5
	b .L474
.L475:
	srwi 9,4,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 8,5,31
	srw 9,9,8
	slw 3,3,5
	or 3,9,3
	slw 4,4,5
	b .L476
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
	srwi 9,3,8
	rlwinm 3,3,8,16,23
	or 3,3,9
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
	srwi 9,3,24
	rlwimi 9,3,24,0,31-24
	rlwinm 10,3,24,16,23
	or 9,9,10
	rlwinm 3,3,8,8,15
	or 3,9,3
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
	slwi 8,4,24
	srwi 10,3,24
	rlwinm 9,3,24,16,23
	or 10,10,9
	rlwinm 9,3,8,8,15
	or 10,10,9
	slwi 9,3,24
	srwi 3,4,24
	or 3,8,3
	rlwinm 8,4,24,16,23
	or 3,3,8
	rlwinm 4,4,8,8,15
	or 3,3,4
	or 4,10,9
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
.L491:
	srw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L495
	addi 8,9,1
	mr 9,8
	srw 10,3,8
	andi. 10,10,0x1
	bne- 0,.L495
	addi 9,8,1
	bdnz .L491
	li 3,0
	blr
.L495:
	addi 3,9,1
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
	beq- 0,.L501
	andi. 3,9,0x1
	bnelr- 0
	li 3,1
.L500:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L500
	blr
.L501:
	mr 3,9
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
	blt- 0,.L507
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L504:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L507:
	.cfi_restore_state
	li 3,1
	b .L504
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
	blt- 0,.L512
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L509:
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
.L512:
	.cfi_restore_state
	li 3,1
	b .L509
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
	blt- 0,.L517
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
.L514:
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
.L517:
	.cfi_restore_state
	li 3,1
	b .L514
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
	stw 30,24(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	mr 30,3
	mr 29,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L522
	mr 4,30
	mr 3,30
	bl __addsf3
	mr 4,30
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L522
	stw 31,28(1)
	.cfi_offset 31, -4
	lis 31,0x4000
	cmpwi 0,29,0
	bge+ 0,.L526
	lis 31,0x3f00
	b .L526
.L525:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L530
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L526:
	andi. 9,29,0x1
	beq- 0,.L525
	mr 4,31
	mr 3,30
	bl __mulsf3
	mr 30,3
	b .L525
.L530:
	lwz 31,28(1)
	.cfi_restore 31
.L522:
	mr 3,30
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 29,20(1)
	lwz 30,24(1)
	addi 1,1,32
	.cfi_restore 30
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
	stw 29,20(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 29, -12
	mr 27,4
	mr 26,3
	mr 29,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L532
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __adddf3
	mr 5,26
	mr 6,27
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L532
	stw 30,24(1)
	.cfi_offset 30, -8
	stw 31,28(1)
	.cfi_offset 31, -4
	lis 30,0x4000
	li 31,0
	cmpwi 0,29,0
	bge+ 0,.L536
	lis 30,0x3fe0
	li 31,0
	b .L536
.L535:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L540
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L536:
	andi. 9,29,0x1
	beq- 0,.L535
	mr 5,30
	mr 6,31
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L535
.L540:
	lwz 30,24(1)
	.cfi_restore 30
	lwz 31,28(1)
	.cfi_restore 31
.L532:
	mr 3,26
	mr 4,27
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 26,8(1)
	lwz 27,12(1)
	lwz 29,20(1)
	addi 1,1,32
	.cfi_restore 29
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
	stw 27,44(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 27, -20
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
	mr 27,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L542
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
	beq- 0,.L542
	stw 28,48(1)
	.cfi_offset 28, -16
	stw 29,52(1)
	.cfi_offset 29, -12
	stw 30,56(1)
	.cfi_offset 30, -8
	stw 31,60(1)
	.cfi_offset 31, -4
	cmpwi 0,27,0
	blt- 0,.L551
	lis 28,0x4000
	li 29,0
	li 30,0
	li 31,0
	b .L546
.L551:
	lis 28,0x3fe0
	li 29,0
	li 30,0
	li 31,0
	b .L546
.L545:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L550
	mr 7,28
	mr 8,29
	mr 9,30
	mr 10,31
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qmul
	mr 31,6
	mr 30,5
	mr 29,4
	mr 28,3
.L546:
	andi. 9,27,0x1
	beq- 0,.L545
	mr 7,28
	mr 8,29
	mr 9,30
	mr 10,31
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qmul
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
	b .L545
.L550:
	lwz 28,48(1)
	.cfi_restore 28
	lwz 29,52(1)
	.cfi_restore 29
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L542:
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
	lwz 27,44(1)
	addi 1,1,64
	.cfi_restore 27
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
	beq- 0,.L557
	lbzu 8,1(9)
	lbzu 7,1(4)
	xor 8,8,7
	stb 8,0(9)
	cmpwi 0,5,1
	beqlr- 0
.L557:
	srwi 10,10,1
	mtctr 10
.L554:
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
	bdnz .L554
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
	cmpwi 0,31,0
	beq- 0,.L562
	addi 30,30,-1
	mr 10,31
	andi. 8,31,0x1
	beq- 0,.L567
	lbzu 8,1(30)
	stb 8,0(3)
	andi. 8,8,0xff
	beq- 0,.L562
	addi 3,3,1
	addic. 31,31,-1
	beq- 0,.L562
.L567:
	srwi 9,10,1
	mtctr 9
.L563:
	addi 7,30,1
	lbz 10,1(30)
	stb 10,0(3)
	andi. 10,10,0xff
	beq- 0,.L562
	addi 8,3,1
	mr 3,8
	addi 6,31,-1
	mr 31,6
	addi 30,7,1
	lbz 10,1(7)
	stb 10,0(8)
	andi. 10,10,0xff
	beq- 0,.L562
	addi 3,8,1
	addi 31,6,-1
	bdnz .L563
.L562:
	cmpwi 0,31,0
	bne- 0,.L565
	li 10,0
	stb 10,0(3)
.L565:
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
	beq- 0,.L599
	mr 10,4
	andi. 8,4,0x3
	beq- 0,.L586
	cmpwi 0,8,1
	beq- 0,.L597
	cmpwi 0,8,2
	beq- 0,.L598
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L598:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L597:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmplw 0,4,3
	beq- 0,.L579
.L586:
	srwi 10,10,2
.L575:
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
	bne+ 0,.L575
.L579:
	mr 3,4
	blr
.L599:
	mr 3,4
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
	andi. 9,8,0xff
	beq- 0,.L609
.L603:
	addi 10,4,-1
	rlwinm 8,8,0,0xff
.L606:
	lbzu 9,1(10)
	andi. 7,9,0xff
	beq- 0,.L610
	rlwinm 9,9,0,0xff
	cmpw 0,9,8
	bne+ 0,.L606
	blr
.L609:
	li 3,0
	blr
.L610:
	lbzu 8,1(3)
	andi. 9,8,0xff
	bne+ 0,.L603
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
	mr 10,3
	li 3,0
	b .L613
.L612:
	addi 10,10,1
	andi. 9,9,0xff
	beqlr- 0
.L613:
	lbz 9,0(10)
	rlwinm 8,9,0,0xff
	cmpw 0,8,4
	bne+ 0,.L612
	mr 3,10
	b .L612
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
	beq- 0,.L617
	stw 28,16(1)
	.cfi_offset 28, -16
	lbz 28,0(30)
.L619:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L624
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L623
	addi 31,31,1
	b .L619
.L624:
	lwz 28,16(1)
	.cfi_restore 28
.L617:
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
.L623:
	.cfi_def_cfa_offset 32
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 28,16(1)
	.cfi_restore 28
	b .L617
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
	blt- 0,.L635
.L626:
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L629
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L628
.L629:
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
.L635:
	.cfi_restore_state
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L626
.L628:
	addis 10,30,0x8000
	mr 30,10
	b .L629
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
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,3
	cmpwi 0,6,0
	beq- 0,.L636
	cmplw 0,4,6
	blt- 0,.L641
	stw 30,24(1)
	.cfi_offset 30, -8
	subf 30,6,4
	add 30,3,30
	cmplw 0,3,30
	bgt- 0,.L642
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 27,12(1)
	.cfi_offset 27, -20
	stw 28,16(1)
	.cfi_offset 28, -16
	stw 29,20(1)
	.cfi_offset 29, -12
	lbz 28,0(5)
	addi 29,6,-1
	addi 27,5,1
	b .L639
.L638:
	addi 31,31,1
	cmplw 0,30,31
	blt- 0,.L646
.L639:
	lbz 9,0(31)
	cmpw 0,9,28
	bne+ 0,.L638
	mr 5,29
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L638
	mr 3,31
	lwz 27,12(1)
	.cfi_remember_state
	.cfi_restore 27
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
	lwz 30,24(1)
	.cfi_restore 30
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	b .L636
.L646:
	.cfi_restore_state
	li 3,0
	lwz 27,12(1)
	.cfi_restore 27
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
	lwz 30,24(1)
	.cfi_restore 30
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L636:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L641:
	.cfi_restore_state
	li 3,0
	b .L636
.L642:
	.cfi_offset 30, -8
	li 3,0
	lwz 30,24(1)
	.cfi_restore 30
	b .L636
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
	blt- 0,.L675
.L650:
	lis 5,0x3ff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 29,0
	cmpwi 0,3,0
	blt- 0,.L671
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
.L654:
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
	bge+ 0,.L654
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
.L655:
	stw 29,0(28)
	cmpwi 0,23,0
	beq- 0,.L659
	addis 10,30,0x8000
	mr 30,10
.L659:
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
.L675:
	.cfi_restore_state
	addis 10,30,0x8000
	mr 30,10
	li 23,1
	b .L650
.L671:
	lis 5,0x3fe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	li 29,0
	cmpwi 0,3,0
	bge- 0,.L655
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __nedf2
	li 29,0
	cmpwi 0,3,0
	beq- 0,.L655
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	li 29,0
	lis 26,0x3fe0
	li 27,0
.L658:
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
	blt+ 0,.L658
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	b .L655
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
	mr 7,4
	or. 4,4,3
	beq- 0,.L680
	li 3,0
	li 4,0
.L679:
	rlwinm 9,7,0,31,31
	subfic 9,9,0
	subfe 8,8,8
	and 8,8,5
	and 9,9,6
	addc 4,9,4
	adde 3,8,3
	srwi 9,6,31
	rlwimi 9,5,1,0,31-1
	mr 5,9
	slwi 6,6,1
	srwi 9,7,1
	rlwimi 9,10,31,0,31-31
	srwi 10,10,1
	mr 7,9
	or. 9,10,9
	bne+ 0,.L679
	blr
.L680:
	li 3,0
	li 4,0
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
	cmplw 0,4,3
	bge- 0,.L685
.L684:
	cmpwi 0,4,0
	blt- 0,.L685
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L685
	cmpwi 0,9,0
	bne+ 0,.L684
.L685:
	cmpwi 0,9,0
	beq- 0,.L692
	li 3,0
	b .L689
.L688:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L687
.L689:
	cmplw 0,10,4
	blt- 0,.L688
	subf 10,4,10
	or 3,3,9
	b .L688
.L692:
	mr 3,9
.L687:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
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
	beq- 0,.L698
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L698:
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
	beq- 0,.L707
.L705:
	cntlzw 3,8
	cmpwi 0,8,0
	bne- 0,.L703
	cntlzw 3,9
	addi 3,3,32
.L703:
	addi 3,3,-1
	blr
.L707:
	cmplw 0,4,10
	bne+ 0,.L705
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
	beq- 0,.L711
	li 3,0
.L710:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	bne+ 0,.L710
	blr
.L711:
	mr 3,10
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
	blt- 0,.L715
	add 10,4,5
	cmplw 0,10,3
	blt- 0,.L715
	mr 9,10
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L733
	lbzu 8,-1(9)
	stbu 8,-1(3)
	cmpwi 0,5,1
	beqlr- 0
.L733:
	srwi 10,10,1
	mtctr 10
.L721:
	addi 8,9,-1
	lbz 9,-1(9)
	addi 10,3,-1
	stb 9,-1(3)
	addi 9,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(10)
	bdnz .L721
	blr
.L715:
	cmpwi 0,6,0
	beq- 0,.L744
	addi 8,4,-8
	addi 7,3,-8
	andi. 11,6,0x1
	beq- 0,.L745
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
	beq- 0,.L718
	srwi 10,6,1
	mtctr 10
.L719:
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
	bdnz .L719
.L718:
	cmplw 0,5,9
	ble- 0,.L714
	subf 5,9,5
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L727
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,5,1
	beq- 0,.L714
.L727:
	srwi 9,9,1
	mtctr 9
.L720:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L720
.L714:
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L745:
	srwi 10,6,1
	mtctr 10
.L746:
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
	bdnz .L746
.L744:
	cmplw 0,5,9
	blelr- 0
	subf 5,9,5
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L749
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,5,1
	beqlr- 0
.L749:
	srwi 9,9,1
	mtctr 9
.L751:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L751
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
	blt- 0,.L756
	add 9,4,5
	cmplw 0,9,3
	blt- 0,.L756
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L769
	lbzu 8,-1(9)
	stbu 8,-1(3)
	cmpwi 0,5,1
	beqlr- 0
.L769:
	srwi 10,10,1
	mtctr 10
.L761:
	addi 8,9,-1
	lbz 9,-1(9)
	addi 10,3,-1
	stb 9,-1(3)
	addi 9,8,-1
	lbz 8,-1(8)
	addi 3,10,-1
	stb 8,-1(10)
	bdnz .L761
	blr
.L756:
	cmpwi 0,7,0
	beq- 0,.L759
	addi 10,4,-2
	addi 8,3,-2
	mr 9,7
	andi. 6,7,0x1
	beq- 0,.L766
	lhzu 6,2(10)
	sthu 6,2(8)
	cmpwi 0,7,1
	beq- 0,.L759
.L766:
	srwi 9,9,1
	mtctr 9
.L760:
	addi 7,10,2
	lhz 10,2(10)
	addi 9,8,2
	sth 10,2(8)
	addi 10,7,2
	lhz 7,2(7)
	addi 8,8,4
	sth 7,2(9)
	bdnz .L760
.L759:
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
	blt- 0,.L777
	add 9,4,5
	cmplw 0,9,3
	blt- 0,.L777
	add 3,3,5
	cmpwi 0,5,0
	beqlr- 0
	mr 10,5
	andi. 8,5,0x1
	beq- 0,.L795
	lbzu 8,-1(9)
	stbu 8,-1(3)
	cmpwi 0,5,1
	beqlr- 0
.L795:
	srwi 10,10,1
	mtctr 10
.L783:
	addi 8,9,-1
	lbz 9,-1(9)
	addi 10,3,-1
	stb 9,-1(3)
	addi 9,8,-1
	lbz 8,-1(8)
	addi 3,3,-2
	stb 8,-1(10)
	bdnz .L783
	blr
.L777:
	cmpwi 0,7,0
	beq- 0,.L780
	addi 10,4,-4
	addi 8,3,-4
	mr 9,7
	andi. 11,7,0x1
	beq- 0,.L792
	lwzu 11,4(10)
	stwu 11,4(8)
	cmpwi 0,7,1
	beq- 0,.L780
.L792:
	srwi 9,9,1
	mtctr 9
.L781:
	addi 7,10,4
	lwz 10,4(10)
	addi 9,8,4
	stw 10,4(8)
	addi 10,7,4
	lwz 7,4(7)
	addi 8,8,8
	stw 7,4(9)
	bdnz .L781
.L780:
	cmplw 0,5,6
	blelr- 0
	subf 5,6,5
	addi 6,6,-1
	add 4,4,6
	add 3,3,6
	mr 9,5
	andi. 10,5,0x1
	beq- 0,.L789
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpwi 0,5,1
	beqlr- 0
.L789:
	srwi 9,9,1
	mtctr 9
.L782:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L782
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
.L816:
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
	bdnz .L816
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
.L823:
	sraw 9,8,3
	andi. 9,9,0x1
	bnelr- 0
	addi 10,3,1
	mr 3,10
	sraw 9,8,10
	andi. 9,9,0x1
	bnelr- 0
	addi 3,10,1
	bdnz .L823
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
	bge- 0,.L835
	mr 3,31
	bl __fixsfsi
.L828:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L835:
	.cfi_restore_state
	lis 4,0x4700
	mr 3,31
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L828
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
.L837:
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
	bdnz .L837
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
.L844:
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
	bdnz .L844
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
	beq- 0,.L853
	li 3,0
.L852:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	slwi 4,4,1
	srwi. 10,10,1
	bne+ 0,.L852
	blr
.L853:
	mr 3,10
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
	beq- 0,.L859
	cmpwi 0,4,0
	beq- 0,.L860
	li 3,0
.L858:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srwi. 4,4,1
	bne+ 0,.L858
	blr
.L859:
	mr 3,10
	blr
.L860:
	mr 3,4
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
	cmplw 0,4,3
	bge- 0,.L865
.L864:
	cmpwi 0,4,0
	blt- 0,.L865
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L865
	cmpwi 0,9,0
	bne+ 0,.L864
.L865:
	cmpwi 0,9,0
	beq- 0,.L872
	li 3,0
	b .L869
.L868:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L867
.L869:
	cmplw 0,10,4
	blt- 0,.L868
	subf 10,4,10
	or 3,3,9
	b .L868
.L872:
	mr 3,9
.L867:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
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
	blt- 0,.L879
	mr 4,30
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L876:
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
.L879:
	.cfi_restore_state
	li 3,-1
	b .L876
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
	blt- 0,.L884
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L881:
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
.L884:
	.cfi_restore_state
	li 3,-1
	b .L881
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
	srawi 10,3,31
	srawi 8,4,31
	mullw 10,10,4
	mullw 8,8,3
	add 10,10,8
	mulhwu 3,3,4
	add 3,10,3
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
	blt- 0,.L896
.L889:
	cmpwi 0,4,0
	beq- 0,.L894
	li 8,32
	li 3,0
.L891:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	slwi 10,10,1
	srawi. 4,4,1
	beq- 0,.L890
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne+ 0,.L891
.L890:
	cmpwi 0,7,0
	beqlr- 0
	neg 3,3
	blr
.L896:
	neg 4,4
	li 7,1
	b .L889
.L894:
	mr 3,4
	b .L890
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
	blt- 0,.L904
.L898:
	cmpwi 0,4,0
	blt- 0,.L905
.L899:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L897
	neg 3,3
.L897:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L904:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L898
.L905:
	neg 4,4
	xori 31,31,0x1
	b .L899
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
	blt- 0,.L912
.L907:
	srawi 9,4,31
	xor 4,9,4
	li 5,1
	subf 4,9,4
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L906
	neg 3,3
.L906:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L912:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L907
	.cfi_endproc
.LFE128:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	li 9,1
	li 10,16
	mtctr 10
	cmplw 0,4,3
	bge- 0,.L915
.L914:
	andi. 10,4,0x8000
	bne- 0,.L915
	rlwinm 4,4,1,16,30
	slwi 9,9,1
	cmplw 0,3,4
	ble- 0,.L915
	bdnz .L914
	li 9,0
.L915:
	andi. 10,9,0xffff
	beq- 0,.L923
	li 8,0
	b .L919
.L918:
	rlwinm 10,9,31,17,31
	mr 9,10
	srwi 4,4,1
	cmpwi 0,10,0
	beq- 0,.L917
.L919:
	cmplw 0,3,4
	blt- 0,.L918
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 8,9,8
	b .L918
.L923:
	mr 8,9
.L917:
	cmpwi 0,5,0
	bne- 0,.L929
.L920:
	rlwinm 3,8,0,0xffff
	blr
.L929:
	mr 8,3
	b .L920
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
	cmplw 0,4,3
	bge- 0,.L932
.L931:
	cmpwi 0,4,0
	blt- 0,.L932
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,10,4
	ble- 0,.L932
	cmpwi 0,9,0
	bne+ 0,.L931
.L932:
	cmpwi 0,9,0
	beq- 0,.L939
	li 3,0
	b .L936
.L935:
	srwi 4,4,1
	srwi. 9,9,1
	beq- 0,.L934
.L936:
	cmplw 0,10,4
	blt- 0,.L935
	subf 10,4,10
	or 3,3,9
	b .L935
.L939:
	mr 3,9
.L934:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
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
	beq- 0,.L944
	addi 5,5,-32
	slw 3,4,5
	li 10,0
.L945:
	mr 4,10
	blr
.L944:
	cmpwi 0,5,0
	beqlr- 0
	slw 10,4,5
	subfic 9,5,32
	srw 9,4,9
	slw 3,3,5
	or 3,9,3
	b .L945
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
	beq- 0,.L949
	srawi 10,3,31
	addi 5,5,-32
	sraw 4,3,5
.L950:
	mr 3,10
	blr
.L949:
	cmpwi 0,5,0
	beqlr- 0
	sraw 10,3,5
	subfic 9,5,32
	slw 9,3,9
	srw 4,4,5
	or 4,9,4
	b .L950
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	srwi 10,3,24
	slwi 8,4,24
	rlwinm 9,3,24,16,23
	or 10,10,9
	rlwinm 9,3,8,8,15
	or 10,10,9
	slwi 9,3,24
	srwi 3,4,24
	or 3,8,3
	rlwinm 8,4,24,16,23
	or 3,3,8
	rlwinm 4,4,8,8,15
	or 3,3,4
	or 4,10,9
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
	srwi 9,3,24
	rlwimi 9,3,24,0,31-24
	rlwinm 10,3,24,16,23
	or 9,9,10
	rlwinm 3,3,8,8,15
	or 3,9,3
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
	bne- 0,.L956
	subfic 9,9,2
.L957:
	add 3,3,10
	add 3,9,3
	blr
.L956:
	li 9,0
	b .L957
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
	blt- 0,.L960
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	subfic 3,3,1
	blr
.L960:
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
	beq- 0,.L968
	addi 5,5,-32
	srw 4,3,5
	li 10,0
.L969:
	mr 3,10
	blr
.L968:
	cmpwi 0,5,0
	beqlr- 0
	srw 10,3,5
	subfic 9,5,32
	slw 9,3,9
	srw 4,4,5
	or 4,9,4
	b .L969
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
	mr 31,4
	mr 30,3
	mr 28,5
	mr 29,5
	lis 26,0x3ff0
	li 27,0
	b .L983
.L981:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L982
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L983:
	andi. 9,29,0x1
	beq- 0,.L981
	mr 5,30
	mr 6,31
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L981
.L982:
	cmpwi 0,28,0
	blt- 0,.L986
.L980:
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
.L986:
	.cfi_restore_state
	mr 5,26
	mr 6,27
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	mr 27,4
	mr 26,3
	b .L980
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
	b .L990
.L988:
	srawi 9,30,1
	addze 9,9
	mr 30,9
	cmpwi 0,9,0
	beq- 0,.L989
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L990:
	andi. 9,30,0x1
	beq- 0,.L988
	mr 4,31
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L988
.L989:
	cmpwi 0,28,0
	blt- 0,.L993
.L987:
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
.L993:
	.cfi_restore_state
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
	b .L987
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
	blt- 0,.L996
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	subfic 3,3,1
	blr
.L996:
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
