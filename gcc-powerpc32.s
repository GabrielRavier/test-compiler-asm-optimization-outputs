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
	cmpwi 0,10,2
	mtctr 10
	ble 0,.L60
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(4)
	stb 7,-1(9)
	addi 8,4,-1
	lbz 7,-1(8)
	addi 10,9,-1
	stb 7,-1(10)
.L4:
	lbz 7,-2(8)
	stb 7,-2(10)
	addi 8,8,-2
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L4
.L3:
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
	addi 8,4,-4
	andi. 10,9,0x1
	addi 7,9,-1
	addi 10,3,-4
	beq- 0,.L35
	cmpwi 0,7,0
	lwz 7,0(4)
	mr 8,4
	mr 10,3
	stw 7,0(3)
	beq- 0,.L50
.L35:
	srwi 9,9,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L61
	addi 9,9,-1
	mtctr 9
	lwz 6,4(8)
	stw 6,4(10)
	addi 7,8,4
	lwz 6,4(7)
	addi 9,10,4
	stw 6,4(9)
.L6:
	lwz 6,8(7)
	stw 6,8(9)
	addi 7,7,8
	lwz 6,4(7)
	addi 9,9,8
	stw 6,4(9)
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
.L60:
	lbz 7,-1(4)
	mr 8,4
	mr 10,9
	addi 4,4,-2
	addi 9,9,-2
	stb 7,1(9)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdz .L3
	lbz 7,-1(4)
	mr 8,4
	mr 10,9
	addi 4,4,-2
	addi 9,9,-2
	stb 7,1(9)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdnz .L60
	blr
.L61:
	lwz 6,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(9)
	bdz .L50
	lwz 6,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(9)
	bdnz .L61
	b .L50
.L5:
	andi. 10,9,0x1
	addi 8,3,-1
	addi 10,4,-1
	bne- 0,.L67
.L32:
	srwi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L9
.L68:
	lbz 9,1(9)
	addi 8,8,2
	stb 9,1(7)
.L9:
	lbz 6,1(10)
	addi 9,10,1
	addi 7,8,1
	addi 10,10,2
	stb 6,1(8)
	bdnz .L68
	blr
.L67:
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
	beq- 0,.L70
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne- 0,.L91
.L80:
	srwi 10,6,1
	mtctr 10
	b .L71
.L73:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq- 0,.L88
	addi 3,3,1
	bdz .L70
.L71:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne+ 0,.L73
.L88:
	addi 3,3,1
	blr
.L91:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq- 0,.L88
	cmpwi 0,8,0
	addi 3,3,1
	bne+ 0,.L80
.L70:
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
	beq- 0,.L96
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L113
.L99:
	srwi 9,5,1
	mtctr 9
.L93:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,1
	bdnz .L93
.L96:
	li 3,0
	blr
.L113:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpwi 0,9,0
	addi 3,3,1
	bne+ 0,.L99
	b .L96
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
	beq- 0,.L119
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L134
.L122:
	srwi 9,5,1
	mtctr 9
	b .L115
.L117:
	lbz 10,1(3)
	addi 3,7,1
	lbz 9,1(4)
	addi 4,8,1
	cmpw 0,10,9
	bne- 0,.L131
	bdz .L119
.L115:
	lbz 10,0(3)
	addi 7,3,1
	addi 8,4,1
	lbz 9,0(4)
	cmpw 0,10,9
	beq+ 0,.L117
.L131:
	subf 3,9,10
	blr
.L134:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L131
	cmpwi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne+ 0,.L122
.L119:
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
	beq- 0,.L136
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L136:
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
	beq- 0,.L146
	mr 3,9
	addi 9,9,-1
	lbz 8,0(3)
	cmpw 0,8,4
	beqlr- 0
.L146:
	srwi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L154
.L144:
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
	bdnz .L144
.L154:
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
	beq- 0,.L158
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memset
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L158:
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
.L162:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr- 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne+ 0,.L162
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
.L173:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,9,4
	bne+ 0,.L173
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
.L176:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr- 0
	addi 3,3,1
	bne+ 7,.L176
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
	beq+ 0,.L181
	b .L180
.L182:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 0,9,10
	bne- 0,.L180
.L181:
	cmpwi 0,9,0
	bne+ 0,.L182
.L180:
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
	beq- 0,.L190
	mr 9,3
.L189:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L189
	subf 3,3,9
	blr
.L190:
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
	beq- 0,.L200
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	cmpwi 0,10,0
	subf 5,3,5
	addi 9,5,1
	mtctr 9
	bne+ 0,.L196
	b .L205
.L207:
	bdz .L195
	bne- 7,.L195
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq- 0,.L206
	mr 4,8
.L196:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne+ 0,.L207
.L195:
	subf 3,9,10
	blr
.L200:
	li 3,0
	blr
.L206:
	lbz 9,1(4)
	subf 3,9,10
	blr
.L205:
	lbz 9,0(4)
	b .L195
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
	bne- 0,.L219
.L213:
	srwi 9,5,1
	mtctr 9
.L210:
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
	bdnz .L210
	blr
.L219:
	cmpwi 0,9,0
	lbz 10,1(3)
	addi 4,4,2
	lbz 9,0(3)
	addi 3,3,2
	stb 10,-2(4)
	stb 9,-1(4)
	bne+ 0,.L213
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
	beq- 0,.L224
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
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
	cntlzw 3,3
	srwi 3,3,5
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
	beq- 0,.L234
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
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
	ble- 0,.L238
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
	ble- 0,.L249
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
.L249:
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
	ble- 0,.L252
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
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
	bne- 0,.L257
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L258
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	bgt- 0,.L263
	li 3,0
	li 4,0
.L254:
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
.L263:
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
.L257:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L254
.L258:
	mr 3,28
	mr 4,29
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
	cmpwi 0,3,0
	bne- 0,.L268
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	bgt- 0,.L273
	li 3,0
.L264:
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
.L273:
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
	bne- 0,.L282
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L281
	rlwinm 9,28,0,0,0
	rlwinm 10,30,0,0,0
	cmpw 0,9,10
	bne- 0,.L284
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L282
.L281:
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
.L284:
	.cfi_restore_state
	cmpwi 0,9,0
	beq- 0,.L281
.L282:
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
	bne- 0,.L291
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L292
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L287
	cmpwi 0,9,0
	mr 3,31
	beq- 0,.L292
.L285:
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
.L287:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	mr 3,30
	bge- 0,.L285
.L291:
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
.L292:
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
	bne- 0,.L296
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L303
	rlwinm 9,24,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	beq- 0,.L298
	cmpwi 0,9,0
	bne- 0,.L304
.L303:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L296:
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
.L298:
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
	bge- 0,.L303
.L304:
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
	bne- 0,.L312
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L314
	rlwinm 9,30,0,0,0
	rlwinm 10,28,0,0,0
	cmpw 0,9,10
	bne- 0,.L316
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L312
.L314:
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
.L316:
	.cfi_restore_state
	cmpwi 0,9,0
	bne- 0,.L314
.L312:
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
	bne- 0,.L323
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L324
	rlwinm 9,30,0,0,0
	rlwinm 10,31,0,0,0
	cmpw 0,9,10
	beq- 0,.L319
	cmpwi 0,9,0
	mr 3,30
	beq- 0,.L323
.L317:
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
.L319:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	mr 3,31
	bge- 0,.L317
.L324:
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
.L323:
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
	bne- 0,.L328
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L336
	rlwinm 9,28,0,0,0
	rlwinm 10,24,0,0,0
	cmpw 0,9,10
	beq- 0,.L330
	cmpwi 0,9,0
	beq- 0,.L331
.L336:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
.L328:
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
.L330:
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
	blt- 0,.L336
.L331:
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
	beq- 0,.L341
	lis 7,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 7,.LANCHOR1@l(7)
	mr 10,3
.L340:
	rlwinm 8,9,0,26,31
	srwi. 9,9,6
	lbzx 8,7,8
	addi 10,10,1
	stb 8,-1(10)
	bne+ 0,.L340
	li 9,0
	stb 9,0(10)
	blr
.L341:
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
	beq- 0,.L351
	lwz 9,0(4)
	stw 4,4(3)
	stw 9,0(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L351:
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
	beq- 0,.L353
	lwz 10,4(3)
	stw 10,4(9)
.L353:
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
	beq- 0,.L362
	stw 25,20(1)
	.cfi_offset 25, -28
	mr 25,7
	stw 30,40(1)
	.cfi_offset 30, -8
	li 30,0
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	b .L364
.L379:
	beq- 7,.L378
.L364:
	mr 4,31
	mr 3,27
	mtctr 25
	addi 30,30,1
	mr 26,31
	add 31,31,29
	bctrl
	cmplw 7,28,30
	cmpwi 0,3,0
	bne+ 0,.L379
	lwz 25,20(1)
	.cfi_restore 25
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L361:
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
.L378:
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
.L362:
	cmpwi 0,29,0
	mullw 26,29,28
	addi 28,28,1
	stw 28,0(24)
	add 26,23,26
	beq- 0,.L361
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
	beq- 0,.L381
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
	b .L383
.L394:
	beq- 7,.L393
.L383:
	mr 4,31
	mr 3,29
	mtctr 27
	addi 30,30,1
	mr 25,31
	add 31,31,28
	bctrl
	cmplw 7,26,30
	cmpwi 0,3,0
	bne+ 0,.L394
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
.L393:
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
.L381:
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
.L403:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L397
	ble- 7,.L397
	cmpwi 0,10,43
	beq- 0,.L398
	cmpwi 0,10,45
	bne- 0,.L418
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L408
	li 5,1
.L401:
	li 3,0
.L405:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	add 9,9,3
	addi 6,10,-48
	slwi 9,9,1
	cmplwi 0,6,9
	subf 3,7,9
	ble+ 0,.L405
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,7
	blr
.L397:
	addi 3,3,1
	b .L403
.L418:
	addi 9,10,-48
	mr 8,3
	cmplwi 0,9,9
	li 5,0
	ble+ 0,.L401
.L408:
	li 3,0
	blr
.L398:
	lbz 10,1(3)
	addi 8,3,1
	li 5,0
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L401
	b .L408
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
.L424:
	lbz 10,0(3)
	cmpwi 0,10,32
	addi 9,10,-9
	cmplwi 7,9,4
	beq- 0,.L420
	ble- 7,.L420
	cmpwi 0,10,43
	beq- 0,.L421
	cmpwi 0,10,45
	beq- 0,.L422
	addi 9,10,-48
	mr 8,3
	cmplwi 0,9,9
	li 5,0
	bgt- 0,.L431
.L425:
	li 3,0
.L428:
	addi 7,10,-48
	lbzu 10,1(8)
	slwi 9,3,2
	add 9,9,3
	addi 6,10,-48
	slwi 9,9,1
	cmplwi 0,6,9
	subf 3,7,9
	ble+ 0,.L428
	cmpwi 0,5,0
	bnelr- 0
	subf 3,9,7
	blr
.L420:
	addi 3,3,1
	b .L424
.L422:
	lbz 10,1(3)
	addi 8,3,1
	li 5,1
	addi 9,10,-48
	cmplwi 0,9,9
	ble+ 0,.L425
.L431:
	li 3,0
	blr
.L421:
	lbz 10,1(3)
	addi 8,3,1
	addi 9,10,-48
	cmplwi 0,9,9
	bgt- 0,.L431
	li 5,0
	b .L425
	.cfi_endproc
.LFE156:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
.L448:
	lbz 8,0(3)
	cmpwi 0,8,32
	addi 9,8,-9
	cmplwi 7,9,4
	beq- 0,.L442
	ble- 7,.L442
	cmpwi 0,8,43
	beq- 0,.L443
	cmpwi 0,8,45
	bne- 0,.L463
	lbz 8,1(3)
	addi 5,3,1
	addi 9,8,-48
	cmplwi 0,9,9
	bgt- 0,.L453
	li 11,1
.L446:
	li 3,0
	li 4,0
.L450:
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
	ble+ 0,.L450
	cmpwi 0,11,0
	bnelr- 0
	subfc 4,9,7
	subfe 3,6,10
	blr
.L442:
	addi 3,3,1
	b .L448
.L463:
	addi 9,8,-48
	mr 5,3
	cmplwi 0,9,9
	li 11,0
	ble+ 0,.L446
.L453:
	li 3,0
	li 4,0
	blr
.L443:
	lbz 8,1(3)
	addi 5,3,1
	li 11,0
	addi 9,8,-48
	cmplwi 0,9,9
	ble+ 0,.L446
	b .L453
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
	beq- 0,.L465
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
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 29,36(1)
	.cfi_offset 29, -12
	b .L468
.L477:
	beq- 0,.L475
	cmpwi 0,31,0
	add 28,30,27
	beq- 0,.L476
.L468:
	srwi 29,31,1
	mr 3,26
	mullw 30,29,27
	mtctr 25
	addi 31,31,-1
	subf 31,29,31
	add 30,28,30
	mr 4,30
	bctrl
	cmpwi 0,3,0
	bge+ 0,.L477
	mr 31,29
	cmpwi 0,31,0
	bne+ 0,.L468
.L476:
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
.L465:
	li 30,0
	lwz 31,44(1)
	mr 3,30
	lwz 30,40(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L475:
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
	stw 30,40(1)
	.cfi_offset 30, -8
	beq- 0,.L483
	mflr 0
	.cfi_register 65, 0
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 0,52(1)
	.cfi_offset 65, 4
.L491:
	srawi 29,31,1
	mr 5,24
	mullw 30,29,27
	mr 3,26
	mtctr 25
	addi 31,31,-1
	add 30,28,30
	mr 4,30
	bctrl
	srawi. 31,31,1
	cmpwi 7,3,0
	beq- 7,.L495
.L497:
	cmpwi 5,29,0
	ble- 7,.L481
	add 28,30,27
	bne+ 0,.L491
.L496:
	lwz 0,52(1)
	lwz 29,36(1)
	.cfi_restore 29
	mtlr 0
	.cfi_restore 65
.L483:
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
.L481:
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
	beq- 5,.L496
	srawi 29,31,1
	mr 5,24
	mullw 30,29,27
	mr 3,26
	mtctr 25
	addi 31,31,-1
	add 30,28,30
	mr 4,30
	bctrl
	srawi. 31,31,1
	cmpwi 7,3,0
	bne+ 7,.L497
.L495:
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
	beq- 0,.L511
.L508:
	cmpw 0,4,9
	beqlr- 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne+ 0,.L508
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
	mr 9,3
.L528:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne+ 0,.L528
	subf 3,3,9
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
	beq- 0,.L541
	mtctr 5
	b .L532
.L542:
	beq- 7,.L534
	addi 3,3,4
	addi 4,4,4
	bdz .L541
.L532:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpwi 7,9,0
	cmpw 0,9,10
	beq+ 0,.L542
.L534:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	blt- 0,.L543
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L543:
	li 3,-1
	blr
.L541:
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
	beq- 0,.L548
	andi. 9,5,0x1
	addi 9,5,-1
	bne- 0,.L565
.L551:
	srwi 9,5,1
	mtctr 9
.L545:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr- 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr- 0
	addi 3,3,4
	bdnz .L545
.L548:
	li 3,0
	blr
.L565:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr- 0
	cmpwi 0,9,0
	addi 3,3,4
	bne+ 0,.L551
	b .L548
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
	beq- 0,.L572
	andi. 9,5,0x1
	addi 8,5,-1
	bne- 0,.L587
.L575:
	srwi 9,5,1
	mtctr 9
	b .L567
.L569:
	lwz 9,4(3)
	addi 3,7,4
	lwz 10,4(4)
	addi 4,8,4
	cmpw 0,9,10
	bne- 0,.L584
	bdz .L572
.L567:
	lwz 9,0(3)
	addi 7,3,4
	addi 8,4,4
	lwz 10,0(4)
	cmpw 0,9,10
	beq+ 0,.L569
.L584:
	blt- 0,.L588
	srawi 8,10,31
	srwi 3,9,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	blr
.L587:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne- 0,.L584
	cmpwi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne+ 0,.L575
.L572:
	li 3,0
	blr
.L588:
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
	beq- 0,.L590
	mflr 0
	.cfi_register 65, 0
	slwi 5,5,2
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memcpy
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L590:
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
	bge- 0,.L632
	cmpwi 0,5,0
	beqlr- 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne- 0,.L633
.L609:
	srwi 10,5,1
	cmpwi 0,10,2
	mtctr 10
	ble 0,.L628
	addi 10,10,-1
	mtctr 10
	lwz 7,-4(4)
	stw 7,-4(9)
	addi 8,4,-4
	lwz 7,-4(8)
	addi 10,9,-4
	stw 7,-4(10)
.L600:
	lwz 7,-8(8)
	stw 7,-8(10)
	addi 8,8,-8
	lwz 7,-4(8)
	addi 10,10,-8
	stw 7,-4(10)
	bdnz .L600
.L603:
	blr
.L632:
	cmpwi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr- 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne- 0,.L634
.L612:
	srwi 8,5,1
	cmpwi 0,8,2
	mtctr 8
	ble 0,.L629
	addi 8,8,-1
	mtctr 8
	lwz 6,4(9)
	stw 6,4(10)
	addi 7,9,4
	lwz 6,4(7)
	addi 8,10,4
	stw 6,4(8)
.L601:
	addi 9,7,4
	lwz 6,4(9)
	stw 6,8(8)
	addi 7,9,4
	lwz 6,4(7)
	addi 8,8,8
	stw 6,4(8)
	bdnz .L601
	blr
.L628:
	lwz 7,-4(4)
	mr 8,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 7,-8(8)
	stw 7,-8(10)
	bdz .L603
	lwz 7,-4(4)
	mr 8,4
	mr 10,9
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 7,-8(8)
	stw 7,-8(10)
	bdnz .L628
	blr
.L629:
	lwz 6,4(9)
	mr 7,9
	mr 8,10
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(8)
	bdz .L603
	lwz 6,4(9)
	mr 7,9
	mr 8,10
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(8)
	bdnz .L629
	blr
.L633:
	cmpwi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne+ 0,.L609
	blr
.L634:
	cmpwi 0,8,0
	lwz 8,0(4)
	mr 9,4
	mr 10,3
	stw 8,0(3)
	bne+ 0,.L612
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
	beq- 0,.L646
	cmpwi 0,8,1
	beq- 0,.L650
	cmpwi 0,8,2
	beq- 0,.L651
	stw 4,0(3)
	mr 5,7
	mr 9,3
.L651:
	stwu 4,4(9)
	addi 5,5,-1
.L650:
	cmpwi 0,5,1
	stwu 4,4(9)
	beqlr- 0
.L646:
	srwi 10,10,2
	mtctr 10
.L637:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L637
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
	bge- 0,.L660
	cmpwi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr- 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq- 0,.L687
	cmpwi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr- 0
.L687:
	srwi 9,5,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L718
	addi 9,9,-1
	mtctr 9
	lbz 8,-1(3)
	stb 8,-1(4)
	addi 10,3,-1
	lbz 8,-1(10)
	addi 9,4,-1
	stb 8,-1(9)
.L662:
	lbz 8,-2(10)
	stb 8,-2(9)
	addi 10,10,-2
	lbz 8,-1(10)
	addi 9,9,-2
	stb 8,-1(9)
	bdnz .L662
.L659:
	blr
.L660:
	beqlr- 0
	cmpwi 0,5,0
	beqlr- 0
	addi 9,5,-1
	cmplwi 0,9,4
	ble- 0,.L663
	or 10,4,3
	andi. 10,10,0x3
	bne- 0,.L663
	addi 10,3,1
	subf 10,10,4
	subfic 10,10,2
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq- 0,.L663
	srwi 9,5,2
	addi 8,3,-4
	andi. 10,9,0x1
	addi 7,9,-1
	addi 10,4,-4
	beq- 0,.L693
	cmpwi 0,7,0
	lwz 7,0(3)
	mr 8,3
	mr 10,4
	stw 7,0(4)
	beq- 0,.L708
.L693:
	srwi 9,9,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L719
	addi 9,9,-1
	mtctr 9
	lwz 6,4(8)
	stw 6,4(10)
	addi 7,8,4
	lwz 6,4(7)
	addi 9,10,4
	stw 6,4(9)
.L664:
	lwz 6,8(7)
	stw 6,8(9)
	addi 7,7,8
	lwz 6,4(7)
	addi 9,9,8
	stw 6,4(9)
	bdnz .L664
.L708:
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
.L718:
	lbz 8,-1(3)
	mr 10,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdz .L659
	lbz 8,-1(3)
	mr 10,3
	mr 9,4
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 8,-2(10)
	stb 8,-2(9)
	bdnz .L718
	blr
.L719:
	lwz 6,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(9)
	bdz .L708
	lwz 6,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 6,8(7)
	stw 6,8(9)
	bdnz .L719
	b .L708
.L663:
	andi. 10,9,0x1
	addi 8,4,-1
	addi 10,3,-1
	bne- 0,.L724
.L690:
	srwi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L667
.L725:
	lbz 9,1(9)
	addi 8,8,2
	stb 9,1(7)
.L667:
	lbz 6,1(10)
	addi 9,10,1
	addi 7,8,1
	addi 10,10,2
	stb 6,1(8)
	bdnz .L725
	blr
.L724:
	lbz 7,0(3)
	mr 10,3
	mr 8,4
	stb 7,0(4)
	b .L690
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
	blt- 0,.L727
	neg 5,5
	slw 9,4,9
	rlwinm 5,5,0,26,31
	li 8,0
	addic. 10,5,-32
	blt- 0,.L729
.L731:
	srw 4,3,10
	li 3,0
	or 3,9,3
	or 4,8,4
	blr
.L727:
	subfic 10,5,31
	srwi 9,4,1
	srw 9,9,10
	slw 8,4,5
	slw 10,3,5
	neg 5,5
	rlwinm 5,5,0,26,31
	or 9,9,10
	addic. 10,5,-32
	bge+ 0,.L731
.L729:
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
	blt- 0,.L733
	neg 5,5
	srw 9,3,9
	rlwinm 5,5,0,26,31
	li 8,0
	addic. 10,5,-32
	blt- 0,.L735
.L737:
	slw 3,4,10
	li 4,0
	or 3,8,3
	or 4,9,4
	blr
.L733:
	subfic 10,5,31
	slwi 9,3,1
	slw 9,9,10
	srw 8,3,5
	srw 10,4,5
	neg 5,5
	rlwinm 5,5,0,26,31
	or 9,9,10
	addic. 10,5,-32
	bge+ 0,.L737
.L735:
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
	b .L752
.L750:
	addi 9,9,1
	bne- 0,.L756
	bdz .L760
.L752:
	srw 8,3,9
	addi 9,9,1
	rlwinm 8,8,0,31,31
	srw 10,3,9
	cmpwi 7,8,0
	andi. 10,10,0x1
	beq+ 7,.L750
.L756:
	mr 3,9
	blr
.L760:
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
	beq- 0,.L764
	andi. 3,9,0x1
	bnelr- 0
	li 3,1
.L763:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	bnelr- 0
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq+ 0,.L763
	blr
.L764:
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
	blt- 0,.L771
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
.L771:
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
	blt- 0,.L776
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
.L776:
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
	blt- 0,.L781
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
.L781:
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
	bne- 0,.L786
	mr 4,29
	mr 3,29
	bl __addsf3
	mr 4,29
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L786
	cmpwi 0,31,0
	stw 30,24(1)
	.cfi_offset 30, -8
	lis 30,0x4000
	bge+ 0,.L788
	lis 30,0x3f00
.L788:
	andi. 9,31,0x1
	beq- 0,.L789
.L790:
	mr 3,29
	mr 4,30
	bl __mulsf3
	mr 29,3
.L789:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L801
	mr 4,30
	mr 3,30
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L790
.L802:
	mr 4,30
	mr 3,30
	srawi 31,31,1
	addze 31,31
	bl __mulsf3
	andi. 9,31,0x1
	mr 30,3
	bne- 0,.L790
	b .L802
.L801:
	lwz 30,24(1)
	.cfi_restore 30
.L786:
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
	bne- 0,.L804
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __adddf3
	mr 5,26
	mr 6,27
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L804
	cmpwi 0,31,0
	stw 28,16(1)
	.cfi_offset 28, -16
	lis 28,0x4000
	stw 29,20(1)
	.cfi_offset 29, -12
	li 29,0
	bge+ 0,.L806
	lis 28,0x3fe0
	li 29,0
.L806:
	andi. 9,31,0x1
	beq- 0,.L807
.L808:
	mr 3,26
	mr 4,27
	mr 5,28
	mr 6,29
	bl __muldf3
	mr 27,4
	mr 26,3
.L807:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L819
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __muldf3
	andi. 9,31,0x1
	mr 29,4
	mr 28,3
	bne- 0,.L808
.L820:
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
	bne- 0,.L808
	b .L820
.L819:
	lwz 28,16(1)
	.cfi_restore 28
	lwz 29,20(1)
	.cfi_restore 29
.L804:
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
	bne- 0,.L822
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
	beq- 0,.L822
	cmpwi 0,31,0
	stw 24,32(1)
	.cfi_offset 24, -32
	stw 25,36(1)
	.cfi_offset 25, -28
	stw 26,40(1)
	.cfi_offset 26, -24
	stw 27,44(1)
	.cfi_offset 27, -20
	blt- 0,.L838
	lis 24,0x4000
	li 25,0
	li 26,0
	li 27,0
.L824:
	andi. 9,31,0x1
	beq- 0,.L825
.L826:
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
.L825:
	srawi 31,31,1
	addze. 31,31
	beq- 0,.L837
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
	bne- 0,.L826
.L839:
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
	bne- 0,.L826
	b .L839
.L837:
	lwz 24,32(1)
	.cfi_restore 24
	lwz 25,36(1)
	.cfi_restore 25
	lwz 26,40(1)
	.cfi_restore 26
	lwz 27,44(1)
	.cfi_restore 27
.L822:
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
.L838:
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
	b .L824
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
	ble- 0,.L842
	or 10,3,4
	andi. 10,10,0x3
	bne- 0,.L842
	srwi 9,5,2
	addi 6,4,-4
	andi. 10,9,0x1
	addi 8,9,-1
	addi 10,3,-4
	bne- 0,.L876
.L861:
	srwi 9,9,1
	mtctr 9
.L843:
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
	bdnz .L843
.L871:
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
.L876:
	cmpwi 0,8,0
	lwz 7,0(3)
	mr 6,4
	lwz 8,0(4)
	mr 10,3
	xor 8,8,7
	stw 8,0(3)
	bne+ 0,.L861
	b .L871
.L842:
	andi. 10,9,0x1
	addi 7,4,-1
	addi 10,3,-1
	beq- 0,.L858
	lbz 6,0(3)
	mr 7,4
	mr 10,3
	lbz 8,0(4)
	xor 8,8,6
	stb 8,0(3)
.L858:
	srwi 9,9,1
	addi 9,9,1
	mtctr 9
	b .L845
.L877:
	lbz 9,1(6)
	addi 10,10,2
	lbz 6,1(8)
	xor 9,9,6
	stb 9,1(8)
.L845:
	lbz 9,1(7)
	addi 6,7,1
	addi 8,10,1
	lbz 5,1(10)
	addi 7,7,2
	xor 9,9,5
	stb 9,1(10)
	bdnz .L877
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
	beq- 0,.L879
.L880:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L880
.L879:
	cmpwi 0,5,0
	beq- 0,.L881
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne- 0,.L904
.L892:
	srwi 8,5,1
	mtctr 8
.L882:
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
	bdnz .L882
.L881:
	li 10,0
	stb 10,0(9)
	blr
.L904:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr- 0
	cmpwi 0,7,0
	addi 9,9,1
	bne+ 0,.L892
	b .L881
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
	beq- 0,.L917
	cmpwi 0,8,1
	beq- 0,.L928
	cmpwi 0,8,2
	beq- 0,.L929
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr+ 0
	li 3,1
.L929:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
.L928:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr+ 0
	addi 3,3,1
	cmplw 0,4,3
	beqlr- 0
.L917:
	srwi 10,10,2
.L906:
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
	bne+ 0,.L906
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
	beq- 0,.L943
.L939:
	mr 10,4
	b .L942
.L941:
	beqlr- 7
.L942:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne+ 0,.L941
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne+ 0,.L939
.L943:
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
.L950:
	lbz 10,0(9)
	cmpw 7,4,10
	cmpwi 0,10,0
	bne+ 7,.L949
	mr 3,9
.L949:
	addi 9,9,1
	bne+ 0,.L950
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
	beq- 0,.L966
	mr 9,4
.L955:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne+ 0,.L955
	subf. 9,4,9
	mr 3,8
	beqlr- 0
	addi 3,9,-1
	b .L974
.L977:
	cmpwi 0,9,0
	addi 8,8,1
	beq- 0,.L976
.L974:
	lbz 9,0(8)
	cmpw 0,9,5
	bne+ 0,.L977
	addi 0,3,1
	mr 6,4
	mr 10,11
	mr 7,8
	mtctr 0
	b .L957
.L979:
	bdz .L959
	bne- 7,.L960
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq- 0,.L978
	lbzu 10,1(6)
.L957:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne+ 0,.L979
.L960:
	addi 8,8,1
	b .L974
.L976:
	li 3,0
	blr
.L978:
	lbz 10,1(6)
.L959:
	cmpw 0,9,10
	bne+ 0,.L960
.L966:
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
	blt- 0,.L991
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L984
	mr 3,28
	mr 4,29
	li 5,0
	li 6,0
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L983
.L984:
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
.L991:
	.cfi_restore_state
	mr 3,28
	mr 4,29
	li 5,0
	li 6,0
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L984
.L983:
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
	mr 9,3
	beqlr- 0
	cmplw 0,4,6
	blt- 0,.L1000
	subf 4,6,4
	add 0,3,4
	cmplw 0,3,0
	bgt- 0,.L1000
	cmplwi 7,6,1
	lbz 12,0(5)
	addi 11,3,-1
	b .L997
.L994:
	cmplw 0,0,9
	blt- 0,.L1000
.L997:
	lbzu 10,1(11)
	mr 3,9
	addi 9,9,1
	cmpw 0,10,12
	bne+ 0,.L994
	beqlr- 7
	subf 10,11,9
	mr 7,5
	add 10,10,6
	mr 8,11
	addi 10,10,-2
	mtctr 10
.L995:
	lbzu 4,1(8)
	lbzu 10,1(7)
	cmpw 0,4,10
	bne- 0,.L994
	bdnz .L995
	blr
.L1000:
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
	beq- 0,.L1009
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl memmove
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L1009:
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
	blt- 0,.L1038
	lis 5,0x3ff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 23,0
	cmpwi 0,3,0
	blt- 0,.L1039
	stw 24,16(1)
	.cfi_offset 24, -32
	stw 25,20(1)
	.cfi_offset 25, -28
.L1017:
	li 29,0
	lis 24,0x3fe0
	li 25,0
	lis 26,0x3ff0
	li 27,0
.L1023:
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
	bge+ 0,.L1023
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
.L1024:
	cmpwi 0,23,0
	stw 29,0(28)
	beq- 0,.L1030
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
.L1039:
	.cfi_restore_state
	lis 5,0x3fe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L1020
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __nedf2
	cmpwi 0,3,0
	bne- 0,.L1029
.L1020:
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
.L1038:
	.cfi_restore_state
	lis 5,0xbff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ledf2
	addis 26,30,0x8000
	mr 27,31
	cmpwi 0,3,0
	bgt- 0,.L1040
	stw 24,16(1)
	.cfi_offset 24, -32
	mr 30,26
	li 23,1
	stw 25,20(1)
	.cfi_offset 25, -28
	b .L1017
.L1030:
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
.L1040:
	.cfi_restore_state
	lis 5,0xbfe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L1020
	li 23,1
.L1018:
	mr 31,27
	mr 30,26
	li 29,0
	lis 26,0x3fe0
	li 27,0
.L1025:
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
	blt+ 0,.L1025
	b .L1024
.L1029:
	mr 26,30
	mr 27,31
	b .L1018
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
.L1044:
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
	bne+ 0,.L1044
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
	blt+ 0,.L1049
	b .L1067
.L1053:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1051
	blt- 0,.L1067
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1051
	bdz .L1052
.L1049:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1053
.L1067:
	cmplw 7,10,4
.L1050:
	li 3,0
.L1055:
	blt- 7,.L1054
	subf 10,4,10
	or 3,3,9
.L1054:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1055
.L1052:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1051:
	cmpwi 0,9,0
	bne+ 0,.L1050
	li 3,0
	b .L1052
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
	beq- 0,.L1073
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L1073:
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
	beq- 0,.L1082
.L1080:
	cmpwi 0,10,0
	cntlzw 3,10
	beq- 0,.L1083
	addi 3,3,-1
	blr
.L1083:
	cntlzw 3,9
	addi 3,3,32
	addi 3,3,-1
	blr
.L1082:
	cmplw 0,4,3
	bne+ 0,.L1080
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
.L1086:
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
	bne+ 0,.L1086
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
	rlwinm 11,5,0,0,28
	blt- 0,.L1094
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1166
.L1094:
	cmpwi 0,9,0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	addi 8,4,-8
	addi 10,3,-8
	stw 31,12(1)
	.cfi_offset 31, -4
	beq- 0,.L1093
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1167
.L1123:
	srwi 9,9,1
	stw 30,8(1)
	.cfi_offset 30, -8
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L1156
	addi 9,9,-1
	mtctr 9
	lwz 30,8(8)
	lwz 31,12(8)
	stw 30,8(10)
	stw 31,12(10)
	addi 7,8,8
	lwz 30,8(7)
	lwz 31,12(7)
	addi 9,10,8
	stw 30,8(9)
	stw 31,12(9)
.L1097:
	lwz 30,16(7)
	lwz 31,20(7)
	stw 30,16(9)
	stw 31,20(9)
	addi 7,7,16
	lwz 30,8(7)
	lwz 31,12(7)
	addi 9,9,16
	stw 30,8(9)
	stw 31,12(9)
	bdnz .L1097
.L1165:
	lwz 30,8(1)
	.cfi_restore 30
.L1093:
	cmplw 0,5,11
	ble- 0,.L1090
	subf 6,11,5
	addi 10,6,-1
	cmplwi 0,10,4
	ble- 0,.L1098
	addi 9,11,1
	add 7,3,11
	add 9,4,9
	add 31,4,11
	subf 9,9,7
	subfic 9,9,2
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1098
	or 9,31,7
	andi. 9,9,0x3
	bne- 0,.L1098
	srwi 9,6,2
	addi 8,31,-4
	andi. 10,9,0x1
	addi 0,9,-1
	addi 10,7,-4
	beq- 0,.L1120
	cmpwi 0,0,0
	lwz 0,0(31)
	mr 8,31
	mr 10,7
	stw 0,0(7)
	beq- 0,.L1141
.L1120:
	srwi 9,9,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L1155
	addi 9,9,-1
	mtctr 9
	lwz 0,4(8)
	stw 0,4(10)
	addi 7,8,4
	lwz 0,4(7)
	addi 9,10,4
	stw 0,4(9)
.L1099:
	lwz 0,8(7)
	stw 0,8(9)
	addi 7,7,8
	lwz 0,4(7)
	addi 9,9,8
	stw 0,4(9)
	bdnz .L1099
.L1141:
	andi. 9,6,0x3
	rlwinm 6,6,0,0,29
	add 6,6,11
	beq- 0,.L1090
	addi 9,6,1
	lbzx 10,4,6
	cmplw 0,5,9
	stbx 10,3,6
	ble- 0,.L1090
	addi 6,6,2
	lbzx 10,4,9
	cmplw 0,5,6
	stbx 10,3,9
	ble- 0,.L1090
	lbzx 9,4,6
	stbx 9,3,6
.L1090:
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L1156:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lwz 30,8(8)
	mr 7,8
	mr 9,10
	lwz 31,12(8)
	addi 10,10,16
	addi 8,8,16
	stw 30,-8(10)
	stw 31,-4(10)
	lwz 30,16(7)
	lwz 31,20(7)
	stw 30,16(9)
	stw 31,20(9)
	bdz .L1165
	lwz 30,8(8)
	mr 7,8
	mr 9,10
	lwz 31,12(8)
	addi 10,10,16
	addi 8,8,16
	stw 30,-8(10)
	stw 31,-4(10)
	lwz 30,16(7)
	lwz 31,20(7)
	stw 30,16(9)
	stw 31,20(9)
	bdnz .L1156
	b .L1165
.L1155:
	.cfi_restore 30
	lwz 0,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 0,-4(10)
	lwz 0,8(7)
	stw 0,8(9)
	bdz .L1141
	lwz 0,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 0,-4(10)
	lwz 0,8(7)
	stw 0,8(9)
	bdnz .L1155
	b .L1141
.L1167:
	cmpwi 0,7,0
	lwz 6,0(4)
	mr 8,4
	lwz 7,4(4)
	mr 10,3
	stw 6,0(3)
	stw 7,4(3)
	bne+ 0,.L1123
	b .L1093
.L1166:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1126
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	beqlr- 0
.L1126:
	srwi 10,5,1
	cmpwi 0,10,2
	mtctr 10
	ble 0,.L1157
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(9)
	stb 7,-1(3)
	addi 8,9,-1
	lbz 7,-1(8)
	addi 10,3,-1
	stb 7,-1(10)
.L1103:
	lbz 7,-2(8)
	stb 7,-2(10)
	addi 8,8,-2
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1103
	blr
.L1157:
	lbz 7,-1(9)
	mr 8,9
	mr 10,3
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdnz .L1157
	blr
.L1098:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	andi. 9,10,0x1
	addi 11,11,-1
	add 4,4,11
	add 11,3,11
	beq- 0,.L1117
	lbzu 9,1(4)
	stbu 9,1(11)
.L1117:
	srwi 10,10,1
	addi 9,10,1
	mtctr 9
	b .L1101
.L1168:
	lbz 9,1(9)
	addi 11,11,2
	stb 9,1(10)
.L1101:
	lbz 8,1(4)
	addi 9,4,1
	addi 10,11,1
	addi 4,4,2
	stb 8,1(11)
	bdnz .L1168
	b .L1090
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
	blt- 0,.L1173
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1210
.L1173:
	cmpwi 0,9,0
	addi 8,4,-2
	addi 10,3,-2
	beq- 0,.L1172
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1211
.L1186:
	srwi 9,9,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L1206
	addi 9,9,-1
	mtctr 9
	lhz 6,2(8)
	sth 6,2(10)
	addi 7,8,2
	lhz 6,2(7)
	addi 9,10,2
	sth 6,2(9)
.L1176:
	lhz 6,4(7)
	sth 6,4(9)
	addi 7,7,4
	lhz 6,2(7)
	addi 9,9,4
	sth 6,2(9)
	bdnz .L1176
.L1172:
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L1206:
	lhz 6,2(8)
	mr 7,8
	mr 9,10
	addi 8,8,4
	addi 10,10,4
	sth 6,-2(10)
	lhz 6,4(7)
	sth 6,4(9)
	bdz .L1172
	lhz 6,2(8)
	mr 7,8
	mr 9,10
	addi 8,8,4
	addi 10,10,4
	sth 6,-2(10)
	lhz 6,4(7)
	sth 6,4(9)
	bdnz .L1206
	b .L1172
.L1211:
	cmpwi 0,7,0
	lhz 7,0(4)
	mr 8,4
	mr 10,3
	sth 7,0(3)
	bne+ 0,.L1186
	b .L1172
.L1210:
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1189
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	beqlr- 0
.L1189:
	srwi 10,5,1
	cmpwi 0,10,2
	mtctr 10
	ble 0,.L1207
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(9)
	stb 7,-1(3)
	addi 8,9,-1
	lbz 7,-1(8)
	addi 10,3,-1
	stb 7,-1(10)
.L1178:
	lbz 7,-2(8)
	addi 3,10,-1
	stb 7,-1(3)
	addi 8,8,-2
	lbz 7,-1(8)
	addi 10,3,-1
	stb 7,-1(10)
	bdnz .L1178
.L1169:
	blr
.L1207:
	lbz 7,-1(9)
	mr 8,9
	mr 10,3
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdz .L1169
	lbz 7,-1(9)
	mr 8,9
	mr 10,3
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdnz .L1207
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
	blt- 0,.L1216
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L1290
.L1216:
	cmpwi 0,9,0
	addi 8,4,-4
	addi 10,3,-4
	beq- 0,.L1261
	andi. 7,9,0x1
	addi 7,9,-1
	bne- 0,.L1291
.L1247:
	srwi 9,9,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L1282
	addi 9,9,-1
	mtctr 9
	lwz 11,4(8)
	stw 11,4(10)
	addi 7,8,4
	lwz 11,4(7)
	addi 9,10,4
	stw 11,4(9)
.L1219:
	lwz 11,8(7)
	stw 11,8(9)
	addi 7,7,8
	lwz 11,4(7)
	addi 9,9,8
	stw 11,4(9)
	bdnz .L1219
.L1264:
	cmplw 0,5,6
	blelr- 0
	subf 11,6,5
	addi 10,11,-1
	cmplwi 0,10,4
	ble- 0,.L1221
	addi 9,6,1
	add 7,3,6
	add 9,4,9
	add 12,4,6
	subf 9,9,7
	subfic 9,9,2
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq- 0,.L1221
	or 9,12,7
	andi. 9,9,0x3
	bne- 0,.L1221
	srwi 9,11,2
	addi 8,12,-4
	andi. 10,9,0x1
	addi 0,9,-1
	addi 10,7,-4
	beq- 0,.L1244
	cmpwi 0,0,0
	lwz 0,0(12)
	mr 8,12
	mr 10,7
	stw 0,0(7)
	beq- 0,.L1267
.L1244:
	srwi 9,9,1
	cmpwi 0,9,2
	mtctr 9
	ble 0,.L1281
	addi 9,9,-1
	mtctr 9
	lwz 0,4(8)
	stw 0,4(10)
	addi 7,8,4
	lwz 0,4(7)
	addi 9,10,4
	stw 0,4(9)
.L1222:
	lwz 0,8(7)
	stw 0,8(9)
	addi 7,7,8
	lwz 0,4(7)
	addi 9,9,8
	stw 0,4(9)
	bdnz .L1222
.L1267:
	andi. 9,11,0x3
	rlwinm 11,11,0,0,29
	add 11,11,6
	beqlr- 0
	addi 9,11,1
	lbzx 10,4,11
	cmplw 0,5,9
	stbx 10,3,11
	blelr- 0
	addi 11,11,2
	lbzx 10,4,9
	cmplw 0,5,11
	stbx 10,3,9
	blelr- 0
	lbzx 9,4,11
	stbx 9,3,11
	blr
.L1282:
	lwz 11,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 11,-4(10)
	lwz 11,8(7)
	stw 11,8(9)
	bdz .L1264
	lwz 11,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 11,-4(10)
	lwz 11,8(7)
	stw 11,8(9)
	bdnz .L1282
	b .L1264
.L1281:
	lwz 0,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 0,-4(10)
	lwz 0,8(7)
	stw 0,8(9)
	bdz .L1267
	lwz 0,4(8)
	mr 7,8
	mr 9,10
	addi 8,8,8
	addi 10,10,8
	stw 0,-4(10)
	lwz 0,8(7)
	stw 0,8(9)
	bdnz .L1281
	b .L1267
.L1291:
	cmpwi 0,7,0
	lwz 7,0(4)
	mr 8,4
	mr 10,3
	stw 7,0(3)
	bne+ 0,.L1247
	b .L1264
.L1290:
	cmpwi 0,5,0
	mr 9,10
	add 3,3,5
	beqlr- 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq- 0,.L1250
	cmpwi 0,10,0
	lbzu 10,-1(9)
	stbu 10,-1(3)
	beqlr- 0
.L1250:
	srwi 10,5,1
	cmpwi 0,10,2
	mtctr 10
	ble 0,.L1283
	addi 10,10,-1
	mtctr 10
	lbz 7,-1(9)
	stb 7,-1(3)
	addi 8,9,-1
	lbz 7,-1(8)
	addi 10,3,-1
	stb 7,-1(10)
.L1226:
	lbz 7,-2(8)
	stb 7,-2(10)
	addi 8,8,-2
	lbz 7,-1(8)
	addi 10,10,-2
	stb 7,-1(10)
	bdnz .L1226
.L1212:
	blr
.L1283:
	lbz 7,-1(9)
	mr 8,9
	mr 10,3
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdz .L1212
	lbz 7,-1(9)
	mr 8,9
	mr 10,3
	addi 9,9,-2
	addi 3,3,-2
	stb 7,1(3)
	lbz 7,-2(8)
	stb 7,-2(10)
	bdnz .L1283
	blr
.L1261:
	cmpwi 0,5,0
	addi 10,5,-1
	beqlr- 0
.L1221:
	andi. 9,10,0x1
	addi 6,6,-1
	add 4,4,6
	add 6,3,6
	beq- 0,.L1241
	lbzu 9,1(4)
	stbu 9,1(6)
.L1241:
	srwi 10,10,1
	addi 9,10,1
	mtctr 9
	b .L1224
.L1292:
	lbz 9,1(9)
	addi 6,6,2
	stb 9,1(10)
.L1224:
	lbz 8,1(4)
	addi 9,4,1
	addi 10,6,1
	addi 4,4,2
	stb 8,1(6)
	bdnz .L1292
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
	bne- 0,.L1306
	srawi. 3,3,14
	bnelr- 0
	srwi. 10,9,13
	bne- 0,.L1307
	srwi. 10,9,12
	bne- 0,.L1308
	srwi. 10,9,11
	bne- 0,.L1309
	srwi. 10,9,10
	bne- 0,.L1310
	srwi. 10,9,9
	bne- 0,.L1311
	srwi. 10,9,8
	bne- 0,.L1312
	srwi. 10,9,7
	bne- 0,.L1313
	srwi. 10,9,6
	bne- 0,.L1314
	srwi. 10,9,5
	bne- 0,.L1315
	srwi. 10,9,4
	bne- 0,.L1316
	srwi. 10,9,3
	bne- 0,.L1317
	srwi. 10,9,2
	bne- 0,.L1318
	srwi. 10,9,1
	bne- 0,.L1319
	cntlzw 9,9
	srwi 9,9,5
	addi 3,9,15
	blr
.L1306:
	li 3,0
	blr
.L1317:
	li 3,12
	blr
.L1307:
	li 3,2
	blr
.L1308:
	li 3,3
	blr
.L1309:
	li 3,4
	blr
.L1310:
	li 3,5
	blr
.L1311:
	li 3,6
	blr
.L1312:
	li 3,7
	blr
.L1313:
	li 3,8
	blr
.L1314:
	li 3,9
	blr
.L1315:
	li 3,10
	blr
.L1316:
	li 3,11
	blr
.L1318:
	li 3,13
	blr
.L1319:
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
	bne- 0,.L1324
	andi. 9,3,0x2
	bne- 0,.L1325
	andi. 9,3,0x4
	bne- 0,.L1326
	andi. 9,3,0x8
	bne- 0,.L1327
	andi. 9,3,0x10
	bne- 0,.L1328
	andi. 9,3,0x20
	bne- 0,.L1329
	andi. 9,3,0x40
	bne- 0,.L1330
	andi. 9,3,0x80
	bne- 0,.L1331
	andi. 9,3,0x100
	bne- 0,.L1332
	andi. 9,3,0x200
	bne- 0,.L1333
	andi. 9,3,0x400
	bne- 0,.L1334
	andi. 9,3,0x800
	bne- 0,.L1335
	andi. 9,3,0x1000
	bne- 0,.L1336
	andi. 9,3,0x2000
	bne- 0,.L1337
	andi. 9,3,0x4000
	bne- 0,.L1338
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
	blr
.L1324:
	li 3,0
	blr
.L1325:
	li 3,1
	blr
.L1336:
	li 3,12
	blr
.L1326:
	li 3,2
	blr
.L1327:
	li 3,3
	blr
.L1328:
	li 3,4
	blr
.L1329:
	li 3,5
	blr
.L1330:
	li 3,6
	blr
.L1331:
	li 3,7
	blr
.L1332:
	li 3,8
	blr
.L1333:
	li 3,9
	blr
.L1334:
	li 3,10
	blr
.L1335:
	li 3,11
	blr
.L1337:
	li 3,13
	blr
.L1338:
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
	bge- 0,.L1347
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
.L1347:
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
.L1352:
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
	bne+ 0,.L1352
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
.L1358:
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
	bne+ 0,.L1358
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
	bgt+ 7,.L1364
	b .L1365
.L1368:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1366
	blt- 0,.L1365
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1366
	bdz .L1367
.L1364:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1368
.L1365:
	li 3,0
.L1370:
	blt- 7,.L1369
	subf 10,4,10
	or 3,3,9
.L1369:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1370
.L1367:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1366:
	cmpwi 0,9,0
	bne+ 0,.L1365
	li 3,0
	b .L1367
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
	blt- 0,.L1387
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
.L1387:
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
	blt- 0,.L1392
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
.L1392:
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
	blt- 0,.L1410
	beq- 0,.L1402
	li 6,0
.L1398:
	li 10,32
	li 3,0
	b .L1401
.L1411:
	beq- 7,.L1400
.L1401:
	rlwinm 9,4,0,31,31
	srawi. 4,4,1
	addi 10,10,-1
	neg 9,9
	and 9,9,8
	rlwinm 7,10,0,0xff
	cmpwi 7,7,0
	add 3,3,9
	slwi 8,8,1
	bne+ 0,.L1411
.L1400:
	cmpwi 0,6,0
	beqlr- 0
	neg 3,3
	blr
.L1410:
	neg 4,4
	li 6,1
	b .L1398
.L1402:
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
	bge+ 0,.L1413
	neg 3,3
	li 9,0
	li 8,1
.L1413:
	cmpwi 0,4,0
	bge+ 0,.L1414
	neg 4,4
	mr 8,9
.L1414:
	cmplw 0,3,4
	li 7,16
	mr 10,3
	li 9,1
	mtctr 7
	bgt+ 0,.L1415
	b .L1416
.L1418:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble- 0,.L1419
	bdz .L1419
.L1415:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	bgt+ 0,.L1418
.L1419:
	cmpwi 0,9,0
	li 3,0
	beq- 0,.L1417
.L1416:
	li 3,0
.L1421:
	cmplw 0,10,4
	blt- 0,.L1420
	subf 10,4,10
	or 3,3,9
.L1420:
	srwi. 9,9,1
	srwi 4,4,1
	bne+ 0,.L1421
.L1417:
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
	bge+ 0,.L1436
	neg 8,8
	li 7,1
.L1436:
	srawi 9,4,31
	li 6,16
	xor 4,9,4
	mr 3,8
	subf 9,9,4
	li 10,1
	cmplw 0,8,9
	mtctr 6
	bgt+ 0,.L1437
	b .L1455
.L1440:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble- 0,.L1441
	bdz .L1441
.L1437:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	bgt+ 0,.L1440
.L1441:
	cmpwi 0,10,0
	beq- 0,.L1458
.L1455:
	cmplw 7,3,9
	srwi. 10,10,1
	blt- 7,.L1442
	subf 3,9,3
.L1442:
	srwi 9,9,1
	bne+ 0,.L1455
	cmpwi 0,7,0
	beqlr- 0
.L1459:
	neg 3,3
	blr
.L1458:
	cmpwi 0,7,0
	mr 3,8
	beqlr- 0
	b .L1459
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
	bge- 0,.L1577
	andi. 9,4,0x8000
	bne- 0,.L1463
	rlwinm 9,4,1,16,30
	cmplw 0,3,9
	ble- 0,.L1464
	andi. 10,9,0x8000
	bne- 0,.L1465
	rlwinm 9,4,2,16,29
	cmplw 0,3,9
	ble- 0,.L1466
	andi. 10,9,0x8000
	bne- 0,.L1467
	rlwinm 9,4,3,16,28
	cmplw 0,3,9
	ble- 0,.L1468
	andi. 10,9,0x8000
	bne- 0,.L1469
	rlwinm 9,4,4,16,27
	cmplw 0,3,9
	ble- 0,.L1470
	andi. 10,9,0x8000
	bne- 0,.L1471
	rlwinm 9,4,5,16,26
	cmplw 0,3,9
	ble- 0,.L1472
	andi. 10,9,0x8000
	bne- 0,.L1473
	rlwinm 9,4,6,16,25
	cmplw 0,3,9
	ble- 0,.L1474
	andi. 10,9,0x8000
	bne- 0,.L1475
	rlwinm 9,4,7,16,24
	cmplw 0,3,9
	ble- 0,.L1476
	andi. 10,9,0x8000
	bne- 0,.L1477
	rlwinm 9,4,8,16,23
	cmplw 0,3,9
	ble- 0,.L1478
	andi. 10,9,0x8000
	bne- 0,.L1479
	rlwinm 9,4,9,16,22
	cmplw 0,3,9
	ble- 0,.L1480
	andi. 10,9,0x8000
	bne- 0,.L1481
	rlwinm 9,4,10,16,21
	cmplw 0,3,9
	ble- 0,.L1482
	andi. 10,9,0x8000
	bne- 0,.L1483
	rlwinm 9,4,11,16,20
	cmplw 0,3,9
	ble- 0,.L1484
	andi. 10,9,0x8000
	bne- 0,.L1485
	rlwinm 9,4,12,16,19
	cmplw 0,3,9
	ble- 0,.L1486
	andi. 10,9,0x8000
	bne- 0,.L1487
	rlwinm 9,4,13,16,18
	cmplw 0,3,9
	ble- 0,.L1488
	andi. 10,9,0x8000
	bne- 0,.L1489
	rlwinm 9,4,14,16,17
	cmplw 0,3,9
	ble- 0,.L1490
	andi. 10,9,0x8000
	bne- 0,.L1491
	rlwinm 4,4,15,16,16
	cmplw 0,3,4
	ble- 0,.L1492
	cmpwi 0,4,0
	li 7,0
	bne- 0,.L1578
.L1493:
	cmpwi 0,5,0
	beq+ 0,.L1511
	mr 7,3
.L1511:
	rlwinm 3,7,0,0xffff
	blr
.L1480:
	blt- 0,.L1527
	subf 3,9,3
	li 7,512
	rlwinm 3,3,0,0xffff
	li 8,512
.L1495:
	srwi. 10,8,2
	srwi 6,8,2
	srwi 10,9,2
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1496
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1496:
	srwi. 10,8,3
	srwi 6,8,3
	srwi 10,9,3
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1497
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1497:
	srwi. 10,8,4
	srwi 6,8,4
	srwi 10,9,4
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1498
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1498:
	srwi. 10,8,5
	srwi 6,8,5
	srwi 10,9,5
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1499
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1499:
	srwi. 10,8,6
	srwi 6,8,6
	srwi 10,9,6
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1500
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1500:
	srwi. 10,8,7
	srwi 6,8,7
	srwi 10,9,7
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1501
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1501:
	srwi. 10,8,8
	srwi 6,8,8
	srwi 10,9,8
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1502
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1502:
	srwi. 10,8,9
	srwi 6,8,9
	srwi 10,9,9
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1503
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1503:
	srwi. 10,8,10
	srwi 6,8,10
	srwi 10,9,10
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1504
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1504:
	srwi. 10,8,11
	srwi 6,8,11
	srwi 10,9,11
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1505
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1505:
	srwi. 10,8,12
	srwi 6,8,12
	srwi 10,9,12
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1506
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1506:
	srwi. 10,8,13
	srwi 6,8,13
	srwi 10,9,13
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1507
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1507:
	srwi. 10,8,14
	srwi 6,8,14
	srwi 10,9,14
	beq- 0,.L1493
	cmplw 0,3,10
	blt- 0,.L1508
	subf 3,10,3
	or 7,6,7
	rlwinm 3,3,0,0xffff
.L1508:
	cmpwi 0,8,16384
	srwi 9,9,15
	beq- 0,.L1493
	cmplw 0,3,9
	blt- 0,.L1516
	subf 3,9,3
	ori 7,7,0x1
	rlwinm 3,3,0,0xffff
	b .L1493
.L1516:
	li 3,0
	b .L1493
.L1577:
	li 7,0
	bne- 0,.L1493
	li 7,1
	li 3,0
	b .L1493
.L1463:
	subf 3,4,3
	li 7,1
	rlwinm 3,3,0,0xffff
	b .L1493
.L1464:
	blt- 0,.L1519
	subf 3,9,3
	li 7,2
	rlwinm 3,3,0,0xffff
	li 8,2
	b .L1495
.L1465:
	subf 3,9,3
	rlwinm 4,4,0,17,31
	rlwinm 3,3,0,0xffff
	li 10,1
	li 7,2
	li 8,2
.L1513:
	cmplw 0,3,4
	blt- 0,.L1495
	subf 3,4,3
	or 7,7,10
	rlwinm 3,3,0,0xffff
	b .L1495
.L1466:
	blt- 0,.L1520
	subf 3,9,3
	li 7,4
	rlwinm 3,3,0,0xffff
	li 8,4
	b .L1495
.L1467:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2
	li 7,4
	li 8,4
	b .L1513
.L1468:
	blt- 0,.L1521
	subf 3,9,3
	li 7,8
	rlwinm 3,3,0,0xffff
	li 8,8
	b .L1495
.L1469:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4
	li 7,8
	li 8,8
	b .L1513
.L1470:
	blt- 0,.L1522
	subf 3,9,3
	li 7,16
	rlwinm 3,3,0,0xffff
	li 8,16
	b .L1495
.L1471:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8
	li 7,16
	li 8,16
	b .L1513
.L1472:
	blt- 0,.L1523
	subf 3,9,3
	li 7,32
	rlwinm 3,3,0,0xffff
	li 8,32
	b .L1495
.L1473:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,16
	li 7,32
	li 8,32
	b .L1513
.L1474:
	blt- 0,.L1524
	subf 3,9,3
	li 7,64
	rlwinm 3,3,0,0xffff
	li 8,64
	b .L1495
.L1475:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,32
	li 7,64
	li 8,64
	b .L1513
.L1476:
	blt- 0,.L1525
	subf 3,9,3
	li 7,128
	rlwinm 3,3,0,0xffff
	li 8,128
	b .L1495
.L1477:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,64
	li 7,128
	li 8,128
	b .L1513
.L1479:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,128
	li 7,256
	li 8,256
	b .L1513
.L1481:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,256
	li 7,512
	li 8,512
	b .L1513
.L1519:
	li 8,2
.L1512:
	rlwinm 10,8,31,17,31
	srwi 4,9,1
	li 7,0
	b .L1513
.L1483:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,512
	li 7,1024
	li 8,1024
	b .L1513
.L1485:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1513
.L1520:
	li 8,4
	b .L1512
.L1521:
	li 8,8
	b .L1512
.L1487:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1513
.L1489:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1513
.L1522:
	li 8,16
	b .L1512
.L1491:
	subf 3,9,3
	srwi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1513
.L1523:
	li 8,32
	b .L1512
.L1524:
	li 8,64
	b .L1512
.L1492:
	andi. 9,3,0x8000
	li 9,0
	bne- 0,.L1518
	li 8,0
	ori 9,9,0x8000
	ori 8,8,0x8000
	b .L1512
.L1578:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1513
.L1525:
	li 8,128
	b .L1512
.L1478:
	blt- 0,.L1526
	subf 3,9,3
	li 7,256
	rlwinm 3,3,0,0xffff
	li 8,256
	b .L1495
.L1518:
	ori 9,9,0x8000
	li 7,-32768
	li 3,0
	mr 8,9
	b .L1495
.L1526:
	li 8,256
	b .L1512
.L1482:
	blt- 0,.L1528
	subf 3,9,3
	li 7,1024
	rlwinm 3,3,0,0xffff
	li 8,1024
	b .L1495
.L1490:
	blt- 0,.L1532
	subf 3,9,3
	li 7,16384
	rlwinm 3,3,0,0xffff
	li 8,16384
	b .L1495
.L1528:
	li 8,1024
	b .L1512
.L1532:
	li 8,16384
	b .L1512
.L1527:
	li 8,512
	b .L1512
.L1488:
	blt- 0,.L1531
	subf 3,9,3
	li 7,8192
	rlwinm 3,3,0,0xffff
	li 8,8192
	b .L1495
.L1486:
	blt- 0,.L1530
	subf 3,9,3
	li 7,4096
	rlwinm 3,3,0,0xffff
	li 8,4096
	b .L1495
.L1484:
	blt- 0,.L1529
	subf 3,9,3
	li 7,2048
	rlwinm 3,3,0,0xffff
	li 8,2048
	b .L1495
.L1531:
	li 8,8192
	b .L1512
.L1530:
	li 8,4096
	b .L1512
.L1529:
	li 8,2048
	b .L1512
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
	bgt+ 7,.L1580
	b .L1581
.L1584:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	cmpwi 0,4,0
	ble- 7,.L1582
	blt- 0,.L1581
	slwi 4,4,1
	slwi 9,9,1
	cmplw 7,10,4
	ble- 7,.L1582
	bdz .L1583
.L1580:
	cmpwi 0,4,0
	addi 3,3,-2
	bge+ 0,.L1584
.L1581:
	li 3,0
.L1586:
	blt- 7,.L1585
	subf 10,4,10
	or 3,3,9
.L1585:
	srwi. 9,9,1
	srwi 4,4,1
	cmplw 7,10,4
	bne+ 0,.L1586
.L1583:
	cmpwi 0,5,0
	beqlr+ 0
	mr 3,10
	blr
.L1582:
	cmpwi 0,9,0
	bne+ 0,.L1581
	li 3,0
	b .L1583
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
	beq- 0,.L1601
	addi 5,5,-32
	li 9,0
	slw 3,4,5
	mr 4,9
	blr
.L1601:
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
	beq- 0,.L1606
	addi 5,5,-32
	srawi 9,3,31
	sraw 4,3,5
	mr 3,9
	blr
.L1606:
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
	bne- 0,.L1613
	subfic 9,9,2
	add 3,3,10
	add 3,9,3
	blr
.L1613:
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
	blt- 0,.L1617
	li 3,2
	bgtlr- 0
	cmplw 0,4,6
	li 3,0
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1617:
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
	blt- 0,.L1623
	li 3,1
	bgtlr- 0
	cmplw 0,4,6
	li 3,-1
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	neg 3,3
	blr
.L1623:
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
	beq- 0,.L1628
	addi 5,5,-32
	li 9,0
	srw 4,3,5
	mr 3,9
	blr
.L1628:
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
	beq- 0,.L1640
.L1642:
	mr 3,26
	mr 4,27
	mr 5,30
	mr 6,31
	bl __muldf3
	mr 27,4
	mr 26,3
.L1640:
	srawi 29,29,1
	addze. 29,29
	beq- 0,.L1641
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	andi. 9,29,0x1
	mr 31,4
	mr 30,3
	bne- 0,.L1642
.L1647:
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
	bne- 0,.L1642
	b .L1647
.L1641:
	cmpwi 0,28,0
	bge+ 0,.L1639
	mr 5,26
	mr 6,27
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	mr 27,4
	mr 26,3
.L1639:
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
	beq- 0,.L1649
.L1651:
	mr 3,29
	mr 4,31
	bl __mulsf3
	mr 29,3
.L1649:
	srawi 30,30,1
	addze. 30,30
	beq- 0,.L1650
	mr 4,31
	mr 3,31
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1651
.L1656:
	mr 4,31
	mr 3,31
	srawi 30,30,1
	addze 30,30
	bl __mulsf3
	andi. 9,30,0x1
	mr 31,3
	bne- 0,.L1651
	b .L1656
.L1650:
	cmpwi 0,28,0
	bge+ 0,.L1648
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
	mr 29,3
.L1648:
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
	blt- 0,.L1659
	li 3,2
	bgtlr- 0
	cmplw 0,4,6
	li 3,0
	bltlr- 0
	mfcr 3
	rlwinm 3,3,2,1
	addi 3,3,1
	blr
.L1659:
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
	blt- 0,.L1665
	li 3,1
	bgtlr- 0
	cmplw 0,4,6
	li 3,-1
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	neg 3,3
	blr
.L1665:
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
