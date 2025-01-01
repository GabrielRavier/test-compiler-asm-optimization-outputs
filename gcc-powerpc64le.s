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
	add 4,4,5
	add 8,3,5
	cmpdi 0,5,0
	beqlr 0
	mr 10,8
	mr 9,5
	andi. 7,5,0x1
	beq 0,.L16
	lbzu 7,-1(4)
	stbu 7,-1(10)
	cmpdi 0,5,1
	beqlr 0
.L16:
	srdi 9,9,1
	mtctr 9
.L7:
	mr 8,4
	lbz 7,-1(4)
	addi 9,10,-1
	stb 7,-1(10)
	addi 4,4,-2
	lbz 8,-2(8)
	addi 10,10,-2
	stb 8,-1(9)
	bdnz .L7
	blr
	.p2align 4,,15
.L5:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 4,4,-1
	addi 10,3,-1
	mr 9,5
	andi. 8,5,0x1
	beq 0,.L19
	lbzu 8,1(4)
	stbu 8,1(10)
	cmpdi 0,5,1
	beqlr 0
.L19:
	srdi 9,9,1
	mtctr 9
.L8:
	mr 8,4
	lbz 7,1(4)
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	lbz 8,2(8)
	addi 10,10,2
	stb 8,1(9)
	bdnz .L8
	blr
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
	rlwinm 5,5,0,0xff
	cmpdi 7,6,0
	beq 7,.L34
	addi 4,4,-1
	mr 9,6
	andi. 10,6,0x1
	beq 0,.L38
	lbzu 10,1(4)
	stb 10,0(3)
	rlwinm 10,10,0,0xff
	cmpw 0,10,5
	beq 0,.L46
	addi 3,3,1
	addi 6,6,-1
	cmpdi 7,6,0
	beq 7,.L34
.L38:
	srdi 9,9,1
	mtctr 9
.L31:
	addi 8,4,1
	lbz 9,1(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq 0,.L46
	addi 10,3,1
	mr 3,10
	addi 6,6,-1
	cmpdi 7,6,0
	addi 4,8,1
	lbz 9,1(8)
	stb 9,0(10)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq 0,.L46
	addi 3,10,1
	addi 6,6,-1
	cmpdi 7,6,0
	bdnz .L31
.L34:
	li 3,0
	blr
	.p2align 4,,15
.L46:
	beq 7,.L34
	addi 3,3,1
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
	rlwinm 4,4,0,0xff
	cmpdi 7,5,0
	beq 7,.L54
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L57
	lbz 10,0(3)
	cmpw 0,10,4
	beq 0,.L65
	addi 3,3,1
	addi 5,5,-1
	cmpdi 7,5,0
	beq 7,.L54
.L57:
	srdi 9,9,1
	mtctr 9
.L49:
	lbz 9,0(3)
	cmpw 0,9,4
	beq 0,.L65
	addi 9,3,1
	mr 3,9
	addi 5,5,-1
	cmpdi 7,5,0
	lbz 10,0(9)
	cmpw 0,10,4
	beq 0,.L65
	addi 3,9,1
	addi 5,5,-1
	cmpdi 7,5,0
	bdnz .L49
.L54:
	li 3,0
	blr
	.p2align 4,,15
.L65:
	bnelr 7
	b .L54
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
	cmpdi 7,5,0
	beq 7,.L72
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L76
	lbz 8,0(3)
	lbz 10,0(4)
	cmpw 0,8,10
	bne 0,.L84
	addi 3,3,1
	addi 4,4,1
	addi 5,5,-1
	cmpdi 7,5,0
	beq 7,.L72
.L76:
	srdi 9,9,1
	mtctr 9
.L68:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L84
	addi 10,3,1
	mr 3,10
	addi 9,4,1
	mr 4,9
	addi 5,5,-1
	cmpdi 7,5,0
	lbz 7,0(10)
	lbz 8,0(9)
	cmpw 0,7,8
	bne 0,.L84
	addi 3,10,1
	addi 4,9,1
	addi 5,5,-1
	cmpdi 7,5,0
	bdnz .L68
.L72:
	li 3,0
	b .L71
	.p2align 4,,15
.L84:
	beq 7,.L72
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
.L71:
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	cmpdi 0,5,0
	beq 0,.L87
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L87:
	mr 3,31
	addi 1,1,48
	.cfi_def_cfa_offset 0
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
	rlwinm 4,4,0,0xff
	addi 5,5,-1
	add 9,3,5
	addi 5,5,1
	andi. 10,5,0x1
	beq 0,.L97
	mr 3,9
	addi 9,9,-1
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr 0
.L97:
	srdi 5,5,1
	addi 10,5,1
	mtctr 10
	.p2align 4,,15
.L93:
	bdz .L104
	mr 3,9
	addi 10,9,-1
	lbz 9,0(9)
	cmpw 0,9,4
	beqlr 0
	mr 3,10
	addi 9,10,-1
	lbz 10,0(10)
	cmpw 0,10,4
	bne 0,.L93
	blr
	.p2align 4,,15
.L104:
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
	cmpdi 0,5,0
	beqlr 0
	addi 10,3,-1
	mr 9,5
	andi. 8,5,0x3
	beq 0,.L116
	cmpdi 0,8,1
	beq 0,.L120
	cmpdi 0,8,2
	beq 0,.L121
	stbu 4,1(10)
	addi 5,5,-1
.L121:
	stbu 4,1(10)
	addi 5,5,-1
.L120:
	stbu 4,1(10)
	cmpdi 0,5,1
	beqlr 0
.L116:
	srdi 9,9,2
	mtctr 9
.L107:
	mr 9,10
	stb 4,1(10)
	stb 4,2(10)
	stb 4,3(10)
	addi 10,10,4
	stb 4,4(9)
	bdnz .L107
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beqlr 0
	.p2align 5
.L130:
	lbzu 9,1(4)
	stbu 9,1(3)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L130
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
	rlwinm 4,4,0,0xff
	lbz 9,0(3)
	cmpwi 0,9,0
	beqlr 0
	.p2align 5
.L134:
	cmpw 0,9,4
	beqlr 0
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne 0,.L134
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
.L143:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,1
	cmpwi 0,9,0
	bne 0,.L143
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
	cmpw 0,9,10
	bne 0,.L146
	.p2align 5
.L147:
	cmpwi 0,9,0
	beq 0,.L146
	lbzu 9,1(3)
	lbzu 10,1(4)
	cmpw 0,9,10
	beq 0,.L147
.L146:
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
	mr 9,3
	beq 0,.L150
	.p2align 4,,15
.L151:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L151
.L150:
	subf 3,3,9
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
	beq 0,.L159
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L156
	mtctr 5
	.p2align 4,,15
.L157:
	lbz 10,0(4)
	cmpwi 0,10,0
	beq 0,.L156
	bdz .L156
	cmpw 0,10,9
	bne 0,.L156
	addi 4,4,1
	lbzu 9,1(3)
	cmpwi 0,9,0
	bne 0,.L157
.L156:
	lbz 3,0(4)
	subf 3,3,9
.L155:
	extsw 3,3
	blr
	.p2align 4,,15
.L159:
	li 3,0
	b .L155
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
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L177
	lbz 10,1(3)
	stb 10,0(4)
	lbz 10,0(3)
	stb 10,1(4)
	addi 4,4,2
	addi 3,3,2
	cmpdi 0,5,1
	beqlr 0
.L177:
	srdi 9,9,1
	mtctr 9
.L174:
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
	bdnz .L174
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
	beq 0,.L186
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
.L185:
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L186:
	li 3,1
	b .L185
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
	ble 0,.L189
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
.L188:
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L189:
	li 3,1
	b .L188
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
	beq 0,.L196
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
.L195:
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L196:
	li 3,1
	b .L195
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
	li 9,1
	cmplwi 0,3,31
	ble 0,.L199
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble 0,.L199
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L199
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
.L199:
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
	ble 0,.L211
	li 9,1
	cmplwi 0,3,8231
	ble 0,.L206
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L206
	addis 10,3,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	ble 0,.L206
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt 0,.L206
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
	b .L206
	.p2align 4,,15
.L211:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
.L206:
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
	ble 0,.L214
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
.L213:
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L214:
	li 3,1
	b .L213
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
	bun 0,.L220
	fcmpu 0,1,2
	bng 0,.L223
	fsub 1,1,2
	blr
	.p2align 4,,15
.L220:
	fmr 1,2
	blr
	.p2align 4,,15
.L223:
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
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
	bun 0,.L228
	fcmpu 0,1,2
	bng 0,.L231
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L228:
	fmr 1,2
	blr
	.p2align 4,,15
.L231:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
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
	fmr 0,1
	fcmpu 0,1,1
	bun 0,.L237
	fcmpu 0,2,2
	bun 0,.L238
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L234
	fmr 1,2
	cmpwi 0,9,0
	bnelr 0
.L238:
	fmr 1,0
	blr
	.p2align 4,,15
.L234:
	fcmpu 0,1,2
	bnllr 0
.L237:
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
	stfs 1,-12(1)
	stfs 2,-16(1)
	fcmpu 0,1,1
	bun 0,.L246
	fcmpu 0,2,2
	bun 0,.L247
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	lwz 10,-16(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L243
	fmr 1,2
	cmpwi 0,9,0
	bnelr 0
.L247:
	lfs 1,-12(1)
	blr
	.p2align 4,,15
.L243:
	lfs 1,-12(1)
	lfs 0,-16(1)
	fcmpu 0,1,0
	bnllr 0
	fmr 1,0
	blr
	.p2align 4,,15
.L246:
	lfs 1,-16(1)
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
	bun 0,.L257
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L252
	cmpwi 0,9,0
	beqlr 0
.L257:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L252:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr 0
	b .L257
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
	bun 0,.L264
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L261
	cmpwi 0,9,0
	bnelr 0
.L264:
	fmr 1,2
	blr
	.p2align 4,,15
.L261:
	fmr 0,2
	fcmpu 0,1,2
	bnl 0,.L263
	fmr 0,1
.L263:
	fmr 1,0
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
	stfs 1,-16(1)
	stfs 2,-12(1)
	fcmpu 0,1,1
	bun 0,.L273
	fmr 0,2
	fcmpu 0,2,2
	bun 0,.L274
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	lwz 10,-12(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L270
	cmpwi 0,9,0
	bnelr 0
.L277:
	fmr 1,0
	blr
	.p2align 4,,15
.L270:
	lfs 1,-12(1)
	lfs 0,-16(1)
	fcmpu 0,0,1
	bnllr 0
	b .L277
	.p2align 4,,15
.L273:
	lfs 1,-12(1)
	blr
	.p2align 4,,15
.L274:
	lfs 1,-16(1)
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
	bun 0,.L283
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L280
	cmpwi 0,9,0
	bnelr 0
.L283:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L280:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bltlr 0
	b .L283
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
	cmpwi 0,3,0
	addis 3,2,.LANCHOR0@toc@ha
	addi 3,3,.LANCHOR0@toc@l
	mr 10,3
	beq 0,.L287
	addis 7,2,.LANCHOR1@toc@ha
	addi 7,7,.LANCHOR1@toc@l
	.p2align 5
.L288:
	rldicl 8,9,0,58
	lbzx 8,7,8
	stb 8,0(10)
	addi 10,10,1
	srwi 9,9,6
	cmpwi 0,9,0
	bne 0,.L288
.L287:
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
	rldicl 3,3,0,32
	addis 9,2,.LANCHOR0+8@toc@ha
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
	lis 9,0x4c95
	ori 9,9,0x7f2d
	lis 10,0x5851
	ori 10,10,0xf42d
	rldimi 9,10,32,0
	addis 10,2,.LANCHOR0+8@toc@ha
	ld 3,.LANCHOR0+8@toc@l(10)
	mulld 3,3,9
	addi 3,3,1
	std 3,.LANCHOR0+8@toc@l(10)
	srdi 3,3,33
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
	beq 0,.L299
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
	.p2align 4,,15
.L299:
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
	beq 0,.L301
	ld 10,8(3)
	std 10,8(9)
.L301:
	ld 9,8(3)
	cmpdi 0,9,0
	beqlr 0
	ld 10,0(3)
	std 10,0(9)
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
	std 0,16(1)
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	std 2,24(1)
	mr 26,3
	mr 23,4
	mr 24,5
	mr 28,6
	ld 27,0(5)
	cmpdi 0,27,0
	beq 0,.L310
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	std 31,104(1)
	.cfi_offset 31, -8
	mr 29,7
	mr 31,4
	li 30,0
	.p2align 4,,15
.L312:
	mr 25,31
	mr 4,31
	mr 3,26
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L322
	addi 30,30,1
	add 31,31,28
	cmpld 0,27,30
	bne 0,.L312
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L310:
	addi 9,27,1
	std 9,0(24)
	mulld 27,28,27
	add 25,23,27
	cmpdi 0,28,0
	beq 0,.L309
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	b .L309
	.p2align 4,,15
.L322:
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L309:
	mr 3,25
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 23,-72(1)
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
	std 25,-56(1)
	std 26,-48(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	ld 26,0(5)
	cmpdi 0,26,0
	beq 0,.L324
	mflr 0
	.cfi_register 65, 0
	std 0,112(1)
	.cfi_offset 65, 16
	std 2,24(1)
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	std 29,72(1)
	.cfi_offset 29, -24
	std 30,80(1)
	.cfi_offset 30, -16
	std 31,88(1)
	.cfi_offset 31, -8
	mr 28,3
	mr 27,6
	mr 29,7
	mr 31,4
	li 30,0
	.p2align 4,,15
.L326:
	mr 25,31
	mr 4,31
	mr 3,28
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L332
	addi 30,30,1
	add 31,31,27
	cmpld 0,26,30
	bne 0,.L326
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
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L324:
	li 25,0
	b .L323
	.p2align 4,,15
.L332:
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
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
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L323:
	mr 3,25
	addi 1,1,96
	.cfi_def_cfa_offset 0
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
	b .L335
	.p2align 4,,15
.L337:
	addi 3,3,1
.L335:
	lbz 10,0(3)
	cmpwi 0,10,32
	beq 0,.L337
	addi 9,10,-9
	rldicl 9,9,0,32
	subfic 9,9,4
	srdi 9,9,63
	xori 9,9,0x1
	cmpwi 0,9,0
	bne 0,.L337
	li 7,0
	cmpwi 0,10,43
	beq 0,.L338
	cmpwi 0,10,45
	bne 0,.L339
	li 7,1
.L338:
	addi 3,3,1
.L339:
	lbz 10,0(3)
	addi 8,10,-48
	cmplwi 0,8,9
	bgt 0,.L341
	.p2align 5
.L340:
	mulli 9,9,10
	addi 10,10,-48
	subf 9,10,9
	lbzu 10,1(3)
	addi 8,10,-48
	cmplwi 0,8,9
	ble 0,.L340
.L341:
	cmpwi 0,7,0
	bne 0,.L342
	neg 9,9
.L342:
	extsw 3,9
	blr
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
	mr 10,3
	b .L350
	.p2align 4,,15
.L352:
	addi 10,10,1
.L350:
	lbz 8,0(10)
	cmpwi 0,8,32
	beq 0,.L352
	addi 9,8,-9
	rldicl 9,9,0,32
	subfic 9,9,4
	srdi 9,9,63
	xori 9,9,0x1
	cmpwi 7,9,0
	bne 7,.L352
	cmpwi 0,8,43
	beq 0,.L353
	cmpwi 0,8,45
	bne 0,.L354
	li 9,1
	cmpwi 7,9,0
.L353:
	addi 10,10,1
.L354:
	lbz 9,0(10)
	addi 8,9,-48
	li 3,0
	cmplwi 0,8,9
	bgt 0,.L356
	.p2align 5
.L355:
	mulli 3,3,10
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
	lbzu 9,1(10)
	addi 8,9,-48
	cmplwi 0,8,9
	ble 0,.L355
.L356:
	bnelr 7
	neg 3,3
	blr
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
.LFB49:
	.cfi_startproc
	mr 10,3
	b .L367
	.p2align 4,,15
.L369:
	addi 10,10,1
.L367:
	lbz 8,0(10)
	cmpwi 0,8,32
	beq 0,.L369
	addi 9,8,-9
	rldicl 9,9,0,32
	subfic 9,9,4
	srdi 9,9,63
	xori 9,9,0x1
	cmpwi 7,9,0
	bne 7,.L369
	cmpwi 0,8,43
	beq 0,.L370
	cmpwi 0,8,45
	bne 0,.L371
	li 9,1
	cmpwi 7,9,0
.L370:
	addi 10,10,1
.L371:
	lbz 9,0(10)
	addi 8,9,-48
	li 3,0
	cmplwi 0,8,9
	bgt 0,.L373
	.p2align 5
.L372:
	mulli 3,3,10
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
	lbzu 9,1(10)
	addi 8,9,-48
	cmplwi 0,8,9
	ble 0,.L372
.L373:
	bnelr 7
	neg 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE49:
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr. 31,5
	beq 0,.L384
	mflr 0
	.cfi_register 65, 0
	std 0,112(1)
	.cfi_offset 65, 16
	std 2,24(1)
	std 25,40(1)
	.cfi_offset 25, -56
	std 26,48(1)
	.cfi_offset 26, -48
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	std 29,72(1)
	.cfi_offset 29, -24
	mr 25,3
	mr 26,4
	mr 27,6
	mr 28,7
	b .L387
	.p2align 4,,15
.L388:
	mr 31,29
.L385:
	cmpdi 0,31,0
	beq 0,.L395
.L387:
	srdi 29,31,1
	mulld 30,29,27
	add 30,26,30
	mr 4,30
	mr 3,25
	mr 12,28
	mtctr 28
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	blt 0,.L388
	ble 0,.L394
	add 26,30,27
	addi 31,31,-1
	subf 31,29,31
	b .L385
	.p2align 4,,15
.L395:
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
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L384:
	li 30,0
	b .L383
	.p2align 4,,15
.L394:
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 65, 16
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
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L383:
	mr 3,30
	addi 1,1,96
	.cfi_def_cfa_offset 0
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	cmpwi 0,5,0
	beq 0,.L397
	mflr 0
	.cfi_register 65, 0
	std 0,112(1)
	.cfi_offset 65, 16
	std 2,24(1)
	std 25,40(1)
	.cfi_offset 25, -56
	std 26,48(1)
	.cfi_offset 26, -48
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	std 29,72(1)
	.cfi_offset 29, -24
	std 30,80(1)
	.cfi_offset 30, -16
	mr 25,3
	mr 27,4
	mr 28,6
	mr 29,7
	mr 26,8
	mr 30,5
	b .L400
	.p2align 4,,15
.L399:
	srawi 30,30,1
	cmpwi 0,30,0
	beq 0,.L404
.L400:
	srawi 31,30,1
	mulld 31,31,28
	add 31,27,31
	mr 5,26
	mr 4,31
	mr 3,25
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L403
	ble 0,.L399
	add 27,31,28
	addi 30,30,-1
	b .L399
	.p2align 4,,15
.L404:
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
	ld 30,80(1)
	.cfi_restore 30
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L397:
	li 31,0
	b .L396
	.p2align 4,,15
.L403:
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 65, 16
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
	ld 30,80(1)
	.cfi_restore 30
	ld 0,112(1)
	mtlr 0
	.cfi_restore 65
.L396:
	mr 3,31
	addi 1,1,96
	.cfi_def_cfa_offset 0
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,7,0,0
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
	divw 10,3,4
	mullw 9,10,4
	subf 9,9,3
	sldi 9,9,32
	rldicl 3,10,0,32
	or 3,3,9
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
.LFB55:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE55:
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
.LFB57:
	.cfi_startproc
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE57:
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
	beq 0,.L418
	.p2align 5
.L413:
	cmpw 7,9,4
	beq 7,.L421
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne 0,.L413
.L418:
	li 3,0
	blr
	.p2align 4,,15
.L421:
	bnelr 0
	b .L418
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
	bne 0,.L423
	.p2align 5
.L424:
	cmpwi 7,9,0
	beq 7,.L423
	cmpwi 7,10,0
	beq 7,.L423
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	beq 0,.L424
.L423:
	li 3,-1
	blt 0,.L426
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L426:
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
	.p2align 5
.L432:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne 0,.L432
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
	mr 9,3
	beq 0,.L436
	.p2align 4,,15
.L437:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L437
.L436:
	subf 3,3,9
	sradi 3,3,2
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
	beq 0,.L445
	mtctr 5
	.p2align 4,,15
.L441:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 7,9,10
	bne 7,.L442
	cmpwi 7,9,0
	beq 7,.L442
	addi 3,3,4
	addi 4,4,4
	addic. 5,5,-1
	bdnz .L441
.L445:
	li 3,0
.L444:
	extsw 3,3
	blr
	.p2align 4,,15
.L442:
	beq 0,.L445
	lwz 9,0(3)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,9,10
	blt 0,.L444
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
	b .L444
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
	cmpdi 7,5,0
	beq 7,.L457
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L460
	lwz 10,0(3)
	cmpw 0,10,4
	beq 0,.L468
	addi 3,3,4
	addi 5,5,-1
	cmpdi 7,5,0
	beq 7,.L457
.L460:
	srdi 9,9,1
	mtctr 9
.L452:
	lwz 9,0(3)
	cmpw 0,9,4
	beq 0,.L468
	addi 9,3,4
	mr 3,9
	addi 5,5,-1
	cmpdi 7,5,0
	lwz 10,0(9)
	cmpw 0,10,4
	beq 0,.L468
	addi 3,9,4
	addi 5,5,-1
	cmpdi 7,5,0
	bdnz .L452
.L457:
	li 3,0
	blr
	.p2align 4,,15
.L468:
	bnelr 7
	b .L457
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
	cmpdi 7,5,0
	beq 7,.L475
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L480
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 0,8,10
	bne 0,.L488
	addi 3,3,4
	addi 4,4,4
	addi 5,5,-1
	cmpdi 7,5,0
	beq 7,.L475
.L480:
	srdi 9,9,1
	mtctr 9
.L471:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L488
	addi 10,3,4
	mr 3,10
	addi 9,4,4
	mr 4,9
	addi 5,5,-1
	cmpdi 7,5,0
	lwz 7,0(10)
	lwz 8,0(9)
	cmpw 0,7,8
	bne 0,.L488
	addi 3,10,4
	addi 4,9,4
	addi 5,5,-1
	cmpdi 7,5,0
	bdnz .L471
.L475:
	li 3,0
.L474:
	extsw 3,3
	blr
	.p2align 4,,15
.L488:
	beq 7,.L475
	lwz 9,0(3)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,9,10
	blt 0,.L474
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
	b .L474
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	cmpdi 0,5,0
	beq 0,.L491
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	sldi 5,5,2
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L491:
	mr 3,31
	addi 1,1,48
	.cfi_def_cfa_offset 0
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
	blt 0,.L498
	addi 4,4,-4
	addi 10,3,-4
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 8,5,0x1
	beq 0,.L511
	lwzu 8,4(4)
	stwu 8,4(10)
	cmpdi 0,5,1
	beqlr 0
.L511:
	srdi 9,9,1
	mtctr 9
.L501:
	mr 8,4
	lwz 7,4(4)
	addi 9,10,4
	stw 7,4(10)
	addi 4,4,8
	lwz 8,8(8)
	addi 10,9,4
	stw 8,4(9)
	bdnz .L501
	blr
	.p2align 4,,15
.L498:
	cmpdi 0,5,0
	beqlr 0
	add 4,4,9
	add 9,3,9
	mr 10,5
	andi. 8,5,0x1
	beq 0,.L508
	lwzu 8,-4(4)
	stwu 8,-4(9)
	cmpdi 0,5,1
	beqlr 0
.L508:
	srdi 10,10,1
	mtctr 10
.L500:
	mr 8,4
	lwz 7,-4(4)
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	lwz 8,-8(8)
	addi 9,9,-8
	stw 8,-4(10)
	bdnz .L500
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
	beqlr 0
	addi 10,3,-4
	mr 9,5
	andi. 8,5,0x3
	beq 0,.L532
	cmpdi 0,8,1
	beq 0,.L536
	cmpdi 0,8,2
	beq 0,.L537
	stwu 4,4(10)
	addi 5,5,-1
.L537:
	stwu 4,4(10)
	addi 5,5,-1
.L536:
	stwu 4,4(10)
	cmpdi 0,5,1
	beqlr 0
.L532:
	srdi 9,9,2
	mtctr 9
.L523:
	mr 9,10
	stw 4,4(10)
	stw 4,8(10)
	stw 4,12(10)
	addi 10,10,16
	stw 4,16(9)
	bdnz .L523
	blr
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
	bge 0,.L545
	add 3,3,5
	add 4,4,5
	cmpdi 0,5,0
	beqlr 0
	mr 10,4
	mr 9,5
	andi. 8,5,0x1
	beq 0,.L556
	lbzu 8,-1(3)
	stbu 8,-1(10)
	cmpdi 0,5,1
	beqlr 0
.L556:
	srdi 9,9,1
	mtctr 9
.L547:
	mr 8,3
	lbz 7,-1(3)
	addi 9,10,-1
	stb 7,-1(10)
	addi 3,3,-2
	lbz 8,-2(8)
	addi 10,10,-2
	stb 8,-1(9)
	bdnz .L547
	blr
	.p2align 4,,15
.L545:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 3,3,-1
	addi 4,4,-1
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L559
	lbzu 10,1(3)
	stbu 10,1(4)
	cmpdi 0,5,1
	beqlr 0
.L559:
	srdi 9,9,1
	mtctr 9
.L548:
	mr 10,3
	lbz 8,1(3)
	addi 9,4,1
	stb 8,1(4)
	addi 3,3,2
	lbz 10,2(10)
	addi 4,4,2
	stb 10,1(9)
	bdnz .L548
	blr
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
.LFB74:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE74:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.p2align 4,,15
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE75:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.p2align 4,,15
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	rlwinm 4,4,0,28,31
	slw 9,3,4
	neg 4,4
	rlwinm 4,4,0,28,31
	srw 3,3,4
	or 3,9,3
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
	srw 9,3,4
	neg 4,4
	rlwinm 4,4,0,28,31
	slw 3,3,4
	or 3,9,3
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
	slw 9,3,4
	neg 4,4
	rlwinm 4,4,0,29,31
	srw 3,3,4
	or 3,9,3
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
	srw 9,3,4
	neg 4,4
	rlwinm 4,4,0,29,31
	slw 3,3,4
	or 3,9,3
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
	rlwinm 9,3,24,24,31
	rlwinm 10,3,8,16,23
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
	srdi 9,3,32
	rotlwi 10,3,24
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
	li 9,0
	li 10,16
	mtctr 10
	.p2align 4,,15
.L585:
	srw 8,3,9
	addi 10,9,1
	mr 9,10
	andi. 8,8,0x1
	bne 0,.L584
	srw 8,3,10
	addi 9,10,1
	andi. 8,8,0x1
	bne 0,.L584
	bdnz .L585
	li 9,0
.L584:
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
	mr. 10,3
	beq 0,.L595
	andi. 3,10,0x1
	bne 0,.L593
	li 3,1
	.p2align 5
.L594:
	srawi 10,10,1
	mr 9,10
	addi 3,3,1
	andi. 9,9,0x1
	beq 0,.L594
.L593:
	extsw 3,3
	blr
	.p2align 4,,15
.L595:
	li 3,0
	b .L593
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
	li 3,1
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L599
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L599:
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
	li 3,1
	addis 9,2,.LC10@toc@ha
	lfd 0,.LC10@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L602
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L602:
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
	li 3,1
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L605
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L605:
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
	lfd 0,-16(1)
	fcfid 0,0
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	stfd 0,0(3)
	stfd 1,8(3)
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
	blt 0,.L620
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
	b .L612
	.p2align 4,,15
.L620:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L612
	.p2align 4,,15
.L611:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmuls 0,0,0
.L612:
	andi. 9,4,0x1
	beq 0,.L611
	fmuls 1,1,0
	b .L611
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
	blt 0,.L633
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	b .L625
	.p2align 4,,15
.L633:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L625
	.p2align 4,,15
.L624:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmul 0,0,0
.L625:
	andi. 9,4,0x1
	beq 0,.L624
	fmul 1,1,0
	b .L624
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
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 29,2
	fmr 28,1
	fmr 0,28
	fcmpu 0,0,0
	bun 0,.L635
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	std 31,40(1)
	.cfi_offset 31, -40
	mr 31,5
	fmr 3,1
	fmr 4,2
	bl __gcc_qadd
	nop
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq 0,.L649
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	cmpwi 0,31,0
	blt 0,.L650
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L638
	.p2align 4,,15
.L650:
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L638
	.p2align 4,,15
.L637:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L648
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L638:
	andi. 9,31,0x1
	beq 0,.L637
	fmr 3,30
	fmr 4,31
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L637
	.p2align 4,,15
.L648:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L649:
	ld 31,40(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L635:
	fmr 1,28
	fmr 2,29
	addi 1,1,80
	.cfi_def_cfa_offset 0
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
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
	addi 4,4,-1
	addi 9,3,-1
	mr 10,5
	andi. 8,5,0x1
	beq 0,.L658
	lbzu 8,1(9)
	lbzu 7,1(4)
	xor 8,8,7
	stb 8,0(9)
	cmpdi 0,5,1
	beqlr 0
.L658:
	srdi 10,10,1
	mtctr 10
.L653:
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
	bdnz .L653
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
	beq 0,.L665
	.p2align 4,,15
.L666:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L666
.L665:
	cmpdi 7,5,0
	beq 7,.L674
	addi 4,4,-1
	mr 10,5
	andi. 8,5,0x1
	beq 0,.L677
	lbzu 8,1(4)
	stb 8,0(9)
	rlwinm 8,8,0,0xff
	cmpwi 0,8,0
	beq 0,.L685
	addi 9,9,1
	addi 5,5,-1
	cmpdi 7,5,0
	beq 7,.L674
.L677:
	srdi 10,10,1
	mtctr 10
.L668:
	addi 6,4,1
	lbz 10,1(4)
	stb 10,0(9)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq 0,.L685
	addi 7,9,1
	mr 9,7
	addi 8,5,-1
	mr 5,8
	cmpdi 7,8,0
	addi 4,6,1
	lbz 10,1(6)
	stb 10,0(7)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	beq 0,.L685
	addi 9,7,1
	addi 5,8,-1
	cmpdi 7,5,0
	bdnz .L668
	b .L674
	.p2align 4,,15
.L685:
	bnelr 7
.L674:
	stb 5,0(9)
	blr
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
	mr 9,3
	li 3,0
	cmpdi 0,4,0
	beq 0,.L715
	mr 10,4
	andi. 8,4,0x3
	beq 0,.L699
	cmpdi 0,8,1
	beq 0,.L710
	cmpdi 0,8,2
	beq 0,.L711
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr 0
	li 3,1
.L711:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
.L710:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr 0
	.p2align 4,,15
.L699:
	srdi 10,10,2
.L688:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 8,3,1
	mr 3,8
	lbzx 7,9,8
	cmpwi 0,7,0
	beqlr 0
	addi 3,8,1
	lbzx 7,9,3
	cmpwi 0,7,0
	beqlr 0
	addi 3,8,2
	lbzx 7,9,3
	cmpwi 0,7,0
	beqlr 0
	addi 3,8,3
	cmpdi 0,10,1
	addi 10,10,-1
	bne 0,.L688
	blr
	.p2align 4,,15
.L715:
	li 3,0
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
	beq 0,.L724
.L720:
	mr 10,4
	.p2align 5
.L723:
	lbzu 9,1(10)
	cmpwi 0,9,0
	beq 0,.L727
	cmpw 0,9,8
	bne 0,.L723
	blr
	.p2align 4,,15
.L727:
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne 0,.L720
.L724:
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
	b .L730
	.p2align 4,,15
.L729:
	addi 9,9,1
	cmpwi 0,10,0
	beqlr 0
.L730:
	lbz 10,0(9)
	cmpw 0,10,4
	bne 0,.L729
	mr 3,9
	b .L729
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
	lbz 6,0(4)
	mr 9,4
	cmpwi 0,6,0
	beq 0,.L735
	.p2align 4,,15
.L736:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L736
.L735:
	subf. 9,4,9
	beqlr 0
	addi 9,9,-1
	add 5,4,9
	b .L743
.L746:
	mr 8,4
	b .L739
	.p2align 4,,15
.L742:
	cmpdi 0,3,0
	beqlr 0
	lbz 10,0(3)
	cmpwi 0,10,0
	beq 0,.L746
	mr 7,3
	mr 8,4
	subf 9,4,5
	addi 9,9,1
	mtctr 9
	.p2align 4,,15
.L740:
	lbz 9,0(8)
	cmpwi 0,9,0
	beq 0,.L739
	bdz .L739
	cmpw 0,9,10
	bne 0,.L739
	addi 8,8,1
	lbzu 10,1(7)
	cmpwi 0,10,0
	bne 0,.L740
.L739:
	lbz 9,0(8)
	cmpw 0,9,10
	beqlr 0
	addi 3,3,1
	.p2align 4,,15
.L743:
	lbz 9,0(3)
	cmpw 0,9,6
	beq 0,.L742
	addi 3,3,1
	cmpwi 0,9,0
	bne 0,.L743
	li 3,0
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
	blt 0,.L770
.L762:
	fcmpu 0,1,0
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	b .L764
	.p2align 4,,15
.L770:
	fcmpu 0,2,0
	bng 0,.L762
.L764:
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
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 10,3
	mr. 30,6
	beq 0,.L771
	cmpld 0,4,30
	blt 0,.L781
	subf 4,30,4
	add 6,3,4
	cmpld 0,3,6
	bgt 0,.L781
	std 31,-8(1)
	.cfi_offset 31, -8
	lbz 31,0(5)
	b .L778
	.p2align 4,,15
.L796:
	beq 7,.L802
	lbz 7,0(7)
	lbz 9,0(8)
	cmpw 0,7,9
	beq 0,.L802
	.p2align 4,,15
.L773:
	cmpld 0,10,6
	bgt 0,.L803
.L778:
	lbz 9,0(10)
	mr 3,10
	addi 10,10,1
	rlwinm 9,9,0,0xff
	cmpw 0,9,31
	bne 0,.L773
	addi 8,5,1
	addi 9,30,-1
	cmpdi 7,9,0
	beq 7,.L802
	mr 7,10
	mr 4,9
	andi. 11,9,0x1
	beq 0,.L789
	lbz 0,0(10)
	lbz 11,1(5)
	cmpw 0,0,11
	bne 0,.L796
	addi 7,10,1
	addi 8,8,1
	addi 9,9,-1
	cmpdi 7,9,0
	beq 7,.L802
.L789:
	srdi 4,4,1
	mtctr 4
.L774:
	lbz 11,0(7)
	lbz 4,0(8)
	cmpw 0,11,4
	bne 0,.L796
	addi 11,7,1
	mr 7,11
	addi 4,8,1
	mr 8,4
	addi 9,9,-1
	cmpdi 7,9,0
	lbz 12,0(11)
	lbz 0,0(4)
	cmpw 0,12,0
	bne 0,.L796
	addi 7,11,1
	addi 8,4,1
	addi 9,9,-1
	cmpdi 7,9,0
	bdnz .L774
.L802:
	ld 31,-8(1)
	.cfi_restore 31
.L771:
	ld 30,-16(1)
	.cfi_restore 30
	blr
	.p2align 4,,15
.L803:
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	li 3,0
	ld 31,-8(1)
	.cfi_restore 31
	b .L771
.L781:
	li 3,0
	b .L771
	.long 0
	.byte 0,0,0,0,0,2,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 30,3
	mr. 31,5
	beq 0,.L805
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L805:
	add 3,30,31
	addi 1,1,48
	.cfi_def_cfa_offset 0
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
	li 10,0
	fcmpu 0,1,0
	blt 0,.L834
.L811:
	addis 8,2,.LC32@toc@ha
	lfd 12,.LC32@toc@l(8)
	fcmpu 0,1,12
	cror 2,0,3
	beq 0,.L832
	li 9,0
	addis 7,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(7)
	lfd 0,.LC32@toc@l(8)
	.p2align 5
.L815:
	addi 9,9,1
	fmul 1,1,12
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L815
.L816:
	stw 9,0(4)
	cmpwi 0,10,0
	beqlr 0
	fneg 1,1
	blr
	.p2align 4,,15
.L834:
	fneg 1,1
	li 10,1
	b .L811
	.p2align 4,,15
.L832:
	addis 8,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(8)
	li 9,0
	fcmpu 0,1,12
	bnl 0,.L816
	fcmpu 0,1,0
	beq 0,.L816
	fmr 0,12
	.p2align 4,,15
.L818:
	addi 9,9,-1
	fadd 1,1,1
	fcmpu 0,1,0
	blt 0,.L818
	b .L816
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
	mr 10,3
	li 3,0
	cmpdi 0,10,0
	beqlr 0
	.p2align 5
.L837:
	rldicl 9,10,0,63
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	srdi. 10,10,1
	bne 0,.L837
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
	li 9,1
	li 10,16
	mtctr 10
	cmplw 0,4,3
	bge 0,.L860
	.p2align 4,,15
.L842:
	cmpwi 0,4,0
	blt 0,.L843
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L843
	cmpwi 0,4,0
	blt 0,.L843
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L843
	bdnz .L842
.L851:
	li 10,0
	.p2align 4,,15
.L845:
	cmpdi 0,5,0
	bne 0,.L862
.L848:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L843:
	cmpwi 0,9,0
	beq 0,.L851
.L860:
	li 10,0
	b .L847
	.p2align 4,,15
.L846:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L845
.L847:
	cmplw 0,3,4
	blt 0,.L846
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L846
	.p2align 4,,15
.L862:
	mr 10,3
	b .L848
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
	beq 0,.L865
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
.L864:
	extsw 3,3
	blr
	.p2align 4,,15
.L865:
	li 3,7
	b .L864
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
	sradi 10,3,63
	xor 9,3,10
	cmpd 0,3,10
	beq 0,.L868
	cntlzd 3,9
	addi 3,3,-1
.L867:
	extsw 3,3
	blr
	.p2align 4,,15
.L868:
	li 3,63
	b .L867
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
	beq 0,.L870
	.p2align 5
.L871:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne 0,.L871
.L870:
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
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	cmpld 0,3,4
	blt 0,.L875
	add 8,4,5
	cmpld 0,3,8
	bgt 0,.L875
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L895
	lbzu 10,-1(4)
	stbu 10,-1(3)
	cmpdi 0,5,1
	beqlr 0
.L895:
	srdi 9,9,1
	mtctr 9
.L881:
	mr 10,4
	lbz 8,-1(4)
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	lbz 10,-2(10)
	addi 3,3,-2
	stb 10,-1(9)
	bdnz .L881
	blr
	.p2align 4,,15
.L875:
	cmpwi 0,10,0
	beq 0,.L878
	rldicl 6,10,0,32
	addi 8,4,-8
	addi 7,3,-8
	mr 10,6
	andi. 11,6,0x1
	beq 0,.L892
	ldu 11,8(8)
	stdu 11,8(7)
	cmpdi 0,6,1
	beq 0,.L878
.L892:
	srdi 10,10,1
	mtctr 10
.L879:
	addi 6,8,8
	ld 8,8(8)
	addi 10,7,8
	std 8,8(7)
	addi 8,6,8
	ld 6,8(6)
	addi 7,7,16
	std 6,8(10)
	bdnz .L879
.L878:
	cmplw 0,9,5
	bgelr 0
	subf 5,9,5
	rldicl 5,5,0,32
	rldicl 9,9,0,32
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L889
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpdi 0,5,1
	beqlr 0
.L889:
	srdi 9,9,1
	mtctr 9
.L880:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L880
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
	srwi 9,5,1
	cmpld 0,3,4
	blt 0,.L909
	add 10,4,5
	cmpld 0,3,10
	bgt 0,.L909
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L926
	lbzu 10,-1(4)
	stbu 10,-1(3)
	cmpdi 0,5,1
	beqlr 0
.L926:
	srdi 9,9,1
	mtctr 9
.L914:
	mr 10,4
	lbz 8,-1(4)
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	lbz 10,-2(10)
	addi 3,3,-2
	stb 10,-1(9)
	bdnz .L914
	blr
	.p2align 4,,15
.L909:
	cmpwi 0,9,0
	beq 0,.L912
	rldicl 7,9,0,32
	addi 10,4,-2
	addi 8,3,-2
	mr 9,7
	andi. 6,7,0x1
	beq 0,.L923
	lhzu 6,2(10)
	sthu 6,2(8)
	cmpdi 0,7,1
	beq 0,.L912
.L923:
	srdi 9,9,1
	mtctr 9
.L913:
	addi 7,10,2
	lhz 10,2(10)
	addi 9,8,2
	sth 10,2(8)
	addi 10,7,2
	lhz 7,2(7)
	addi 8,8,4
	sth 7,2(9)
	bdnz .L913
.L912:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
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
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	cmpld 0,3,4
	blt 0,.L938
	add 8,4,5
	cmpld 0,3,8
	bgt 0,.L938
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L958
	lbzu 10,-1(4)
	stbu 10,-1(3)
	cmpdi 0,5,1
	beqlr 0
.L958:
	srdi 9,9,1
	mtctr 9
.L944:
	mr 10,4
	lbz 8,-1(4)
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	lbz 10,-2(10)
	addi 3,3,-2
	stb 10,-1(9)
	bdnz .L944
	blr
	.p2align 4,,15
.L938:
	cmpwi 0,10,0
	beq 0,.L941
	rldicl 6,10,0,32
	addi 8,4,-4
	addi 7,3,-4
	mr 10,6
	andi. 11,6,0x1
	beq 0,.L955
	lwzu 11,4(8)
	stwu 11,4(7)
	cmpdi 0,6,1
	beq 0,.L941
.L955:
	srdi 10,10,1
	mtctr 10
.L942:
	addi 6,8,4
	lwz 8,4(8)
	addi 10,7,4
	stw 8,4(7)
	addi 8,6,4
	lwz 6,4(6)
	addi 7,7,8
	stw 6,4(10)
	bdnz .L942
.L941:
	cmplw 0,9,5
	bgelr 0
	subf 5,9,5
	rldicl 5,5,0,32
	rldicl 9,9,0,32
	addi 9,9,-1
	add 4,4,9
	add 3,3,9
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L952
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpdi 0,5,1
	beqlr 0
.L952:
	srdi 9,9,1
	mtctr 9
.L943:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L943
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
	blt 0,.L977
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
	.p2align 4,,15
.L977:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
	std 9,-16(1)
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
	blt 0,.L980
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L981
	mr 9,3
.L981:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L980:
	rldicl 10,3,0,63
	srdi 3,3,1
	or 10,10,3
	srdi 3,3,53
	rldicl 9,10,0,53
	addi 3,3,1
	addi 9,9,2047
	cmpldi 0,3,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L982
	mr 9,10
.L982:
	std 9,-16(1)
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
	li 10,0
	li 9,8
	mtctr 9
	.p2align 4,,15
.L986:
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L985
	addi 8,10,1
	mr 10,8
	subfic 9,8,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L985
	addi 10,8,1
	bdnz .L986
.L985:
	extsw 3,10
	blr
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
	li 9,0
	li 10,8
	mtctr 10
	.p2align 4,,15
.L993:
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L992
	addi 10,9,1
	mr 9,10
	sraw 8,3,10
	andi. 8,8,0x1
	bne 0,.L992
	addi 9,10,1
	bdnz .L993
.L992:
	extsw 3,9
	blr
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
	addis 9,2,.LC37@toc@ha
	lfs 0,.LC37@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1004
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1004:
	fsubs 1,1,0
	fctidz 0,1
	stfd 0,-16(1)
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
	li 8,0
	li 9,0
	li 10,0
	li 7,4
	mtctr 7
.L1006:
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
	bdnz .L1006
	add 3,8,10
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
	li 8,0
	li 9,0
	li 10,0
	li 7,4
	mtctr 7
.L1013:
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
	bdnz .L1013
	add 3,8,10
	extsw 3,3
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
.LFB121:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq 0,.L1020
	.p2align 5
.L1021:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne 0,.L1021
.L1020:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE121:
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
	beq 0,.L1025
	cmpdi 0,4,0
	beq 0,.L1025
	.p2align 5
.L1026:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	srdi. 4,4,1
	bne 0,.L1026
.L1025:
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
	li 9,1
	li 10,16
	mtctr 10
	cmplw 0,4,3
	bge 0,.L1049
	.p2align 4,,15
.L1031:
	cmpwi 0,4,0
	blt 0,.L1032
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L1032
	cmpwi 0,4,0
	blt 0,.L1032
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L1032
	bdnz .L1031
.L1040:
	li 10,0
	.p2align 4,,15
.L1034:
	cmpdi 0,5,0
	bne 0,.L1051
.L1037:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L1032:
	cmpwi 0,9,0
	beq 0,.L1040
.L1049:
	li 10,0
	b .L1036
	.p2align 4,,15
.L1035:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L1034
.L1036:
	cmplw 0,3,4
	blt 0,.L1035
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L1035
	.p2align 4,,15
.L1051:
	mr 10,3
	b .L1037
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
	li 3,-1
	fcmpu 0,1,2
	blt 0,.L1053
	mfcr 3
	rlwinm 3,3,2,1
.L1053:
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
	li 3,-1
	fcmpu 0,1,2
	blt 0,.L1056
	mfcr 3
	rlwinm 3,3,2,1
.L1056:
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
	li 7,0
	cmpwi 0,4,0
	blt 0,.L1074
.L1061:
	cmpdi 0,4,0
	beq 0,.L1066
	li 8,32
	li 10,0
	.p2align 4,,15
.L1063:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,3
	add 10,10,9
	slwi 3,3,1
	extsw 3,3
	sradi. 4,4,1
	beq 0,.L1062
	addi 9,8,-1
	mr 8,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L1063
.L1062:
	cmpwi 0,7,0
	beq 0,.L1064
	neg 10,10
.L1064:
	extsw 3,10
	blr
	.p2align 4,,15
.L1074:
	neg 4,4
	extsw 4,4
	li 7,1
	b .L1061
.L1066:
	li 10,0
	b .L1062
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
	li 7,0
	cmpdi 0,3,0
	blt 0,.L1101
.L1076:
	cmpdi 0,4,0
	blt 0,.L1102
.L1077:
	mr 8,3
	mr 9,4
	li 10,1
	li 6,16
	mtctr 6
	cmplw 0,3,4
	ble 0,.L1099
	.p2align 4,,15
.L1078:
	cmpwi 0,9,0
	blt 0,.L1079
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1079
	cmpwi 0,9,0
	blt 0,.L1079
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1079
	bdnz .L1078
.L1088:
	li 3,0
	.p2align 4,,15
.L1081:
	rldicl 3,3,0,32
	cmpwi 0,7,0
	beqlr 0
	neg 3,3
	blr
	.p2align 4,,15
.L1101:
	neg 3,3
	li 7,1
	b .L1076
	.p2align 4,,15
.L1102:
	neg 4,4
	xori 7,7,0x1
	b .L1077
	.p2align 4,,15
.L1079:
	cmpwi 0,10,0
	beq 0,.L1088
.L1099:
	li 3,0
	b .L1083
	.p2align 4,,15
.L1103:
	subf 8,9,8
	or 3,3,10
.L1082:
	srwi 10,10,1
	srwi 9,9,1
	cmpwi 0,10,0
	beq 0,.L1081
.L1083:
	cmplw 0,8,9
	blt 0,.L1082
	b .L1103
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
	li 6,0
	cmpdi 0,3,0
	blt 0,.L1130
.L1105:
	mr 8,3
	sradi 7,4,63
	xor 4,7,4
	subf 7,7,4
	mr 9,7
	li 10,1
	li 5,16
	mtctr 5
	cmplw 0,3,7
	ble 0,.L1120
	.p2align 4,,15
.L1106:
	cmpwi 0,9,0
	blt 0,.L1129
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1129
	cmpwi 0,9,0
	blt 0,.L1129
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1129
	bdnz .L1106
.L1109:
	rldicl 3,8,0,32
	cmpwi 0,6,0
	beqlr 0
	neg 3,3
	blr
	.p2align 4,,15
.L1130:
	neg 3,3
	li 6,1
	b .L1105
	.p2align 4,,15
.L1131:
	subf 8,9,8
.L1110:
	srwi 10,10,1
	srwi 9,9,1
.L1129:
	cmpwi 0,10,0
	beq 0,.L1109
.L1120:
	cmplw 0,8,9
	blt 0,.L1110
	b .L1131
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
	li 10,1
	li 9,16
	mtctr 9
	cmplw 0,4,3
	bge 0,.L1134
	.p2align 5
.L1133:
	andi. 9,4,0x8000
	bne 0,.L1134
	rldic 4,4,1,48
	slwi 10,10,1
	cmplw 0,3,4
	ble 0,.L1134
	bdnz .L1133
	li 10,0
.L1134:
	andi. 9,10,0xffff
	beq 0,.L1142
	li 8,0
	b .L1138
	.p2align 4,,15
.L1137:
	srwi 9,9,1
	mr 10,9
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L1136
	rlwinm 9,9,0,0xffff
.L1138:
	cmplw 0,3,4
	blt 0,.L1137
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 8,10,8
	b .L1137
	.p2align 4,,15
.L1142:
	mr 8,10
	.p2align 4,,15
.L1136:
	cmpdi 0,5,0
	bne 0,.L1148
.L1139:
	rlwinm 3,8,0,0xffff
	blr
	.p2align 4,,15
.L1148:
	mr 8,3
	b .L1139
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
	mr 10,3
	li 9,1
	li 8,32
	mtctr 8
	cmpld 0,4,3
	bge 0,.L1168
	.p2align 4,,15
.L1150:
	andis. 8,4,0x8000
	bne 0,.L1151
	sldi 4,4,1
	sldi 9,9,1
	cmpld 0,10,4
	ble 0,.L1151
	andis. 8,4,0x8000
	bne 0,.L1151
	sldi 4,4,1
	sldi 9,9,1
	cmpld 0,10,4
	ble 0,.L1151
	bdnz .L1150
.L1159:
	li 3,0
	.p2align 4,,15
.L1153:
	cmpdi 0,5,0
	beqlr 0
	mr 3,10
	blr
	.p2align 4,,15
.L1151:
	cmpdi 0,9,0
	beq 0,.L1159
.L1168:
	li 3,0
	b .L1155
	.p2align 4,,15
.L1154:
	srdi 4,4,1
	srdi. 9,9,1
	beq 0,.L1153
.L1155:
	cmpld 0,10,4
	blt 0,.L1154
	subf 10,4,10
	or 3,3,9
	b .L1154
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
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L1171
	addi 4,4,-32
	slw 9,3,4
	li 3,0
.L1172:
	sldi 9,9,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1171:
	cmpdi 0,4,0
	beqlr 0
	slw 3,3,4
	subfic 10,4,32
	srw 10,9,10
	sradi 9,9,32
	slw 9,9,4
	or 9,10,9
	b .L1172
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
	beq 0,.L1177
	addi 5,5,-64
	sld 4,3,5
	li 10,0
.L1178:
	mr 3,10
	blr
	.p2align 4,,15
.L1177:
	cmpdi 0,5,0
	beqlr 0
	sld 10,3,5
	subfic 9,5,64
	srd 9,3,9
	sld 4,4,5
	or 4,9,4
	b .L1178
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
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L1182
	sradi 9,3,32
	srawi 3,9,31
	addi 4,4,-32
	sraw 9,9,4
.L1183:
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1182:
	cmpdi 0,4,0
	beqlr 0
	sradi 10,3,32
	sraw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 9,10,9
	b .L1183
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
	beq 0,.L1188
	sradi 10,4,63
	addi 5,5,-64
	srad 3,4,5
.L1189:
	mr 4,10
	blr
	.p2align 4,,15
.L1188:
	cmpdi 0,5,0
	beqlr 0
	srad 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L1189
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
	srdi 9,3,32
	rotlwi 10,3,24
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
	srw 3,3,8
	add 10,9,10
	rlwinm 9,3,0,24,27
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,2
	subfic 8,9,4
	srw 3,3,8
	add 10,9,10
	rlwinm 9,3,0,28,29
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,1
	subfic 8,9,2
	srw 3,3,8
	andi. 8,3,0x2
	bne 0,.L1195
	subfic 3,3,2
.L1196:
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
	.p2align 4,,15
.L1195:
	li 3,0
	b .L1196
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
	srdi 9,9,6
	subfic 10,4,0
	subfe 10,10,10
	and 4,10,4
	andi. 9,9,0xff
	bne 0,.L1199
	li 3,0
.L1199:
	or 4,4,3
	cntlzd 4,4
	slwi 9,9,6
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
	blt 0,.L1202
	li 9,2
	bgt 0,.L1201
	li 9,0
	cmplw 0,3,4
	blt 0,.L1201
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1201:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1202:
	li 9,0
	b .L1201
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
	blt 0,.L1208
	li 9,2
	bgt 0,.L1207
	li 9,0
	cmplw 0,3,4
	blt 0,.L1207
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1207:
	addi 3,9,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L1208:
	li 9,0
	b .L1207
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
	li 9,0
	cmpd 0,4,6
	blt 0,.L1213
	li 9,2
	bgt 0,.L1213
	li 9,0
	cmpld 0,3,5
	blt 0,.L1213
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1213:
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
	rlwinm 9,9,0,30,31
	not 3,9
	rlwinm 3,3,0,31,31
	srwi 9,9,1
	subfic 9,9,2
	neg 3,3
	and 3,3,9
	add 10,10,8
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
	cntlzd 10,3
	srdi 10,10,6
	andi. 10,10,0xff
	bne 0,.L1221
	li 4,0
.L1221:
	addi 9,10,-1
	extsw 9,9
	and 3,9,3
	or 3,4,3
	neg 9,3
	and 9,3,9
	cntlzd 9,9
	subfic 9,9,63
	slwi 3,10,6
	add 3,3,9
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
	bne 0,.L1223
	li 3,0
	cmpdi 0,4,0
	beq 0,.L1224
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 3,4,128
	b .L1224
	.p2align 4,,15
.L1223:
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
.L1224:
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
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L1228
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
.L1229:
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1228:
	cmpdi 0,4,0
	beqlr 0
	srdi 10,3,32
	srw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 9,10,9
	b .L1229
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
	beq 0,.L1234
	addi 5,5,-64
	srd 3,4,5
	li 10,0
.L1235:
	mr 4,10
	blr
	.p2align 4,,15
.L1234:
	cmpdi 0,5,0
	beqlr 0
	srd 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L1235
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
	srwi 7,8,16
	srwi 3,3,16
	mullw 9,9,3
	add 9,9,7
	rlwinm 7,9,0,0xffff
	srwi 4,4,16
	mullw 10,10,4
	add 10,10,7
	rlwimi 8,10,16,0,31-16
	srwi 9,9,16
	mullw 3,3,4
	add 9,9,3
	srwi 10,10,16
	add 9,9,10
	sldi 9,9,32
	rldicl 3,8,0,32
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
	mr 7,3
	rlwinm 8,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 10,8,9
	srwi 5,10,16
	srwi 6,3,16
	mullw 9,9,6
	add 9,9,5
	rlwinm 3,9,0,0xffff
	srwi 5,4,16
	mullw 8,8,5
	add 8,8,3
	rlwimi 10,8,16,0,31-16
	srwi 9,9,16
	mullw 6,6,5
	add 9,9,6
	srwi 8,8,16
	add 9,9,8
	sldi 9,9,32
	rldicl 10,10,0,32
	or 3,10,9
	sradi 9,4,32
	mullw 9,7,9
	sradi 10,3,32
	add 9,9,10
	sradi 7,7,32
	mullw 4,4,7
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
	mr 10,3
	rldicl 8,3,0,32
	rldicl 9,4,0,32
	mulld 3,8,9
	srdi 7,3,32
	srdi 10,10,32
	mulld 9,9,10
	add 9,9,7
	rldicl 7,9,0,32
	srdi 4,4,32
	mulld 8,8,4
	add 8,8,7
	srdi 9,9,32
	mulld 10,10,4
	add 9,9,10
	srdi 4,8,32
	rldimi 3,8,32,0
	add 4,9,4
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
	mr 10,3
	rldicl 8,3,0,32
	rldicl 9,5,0,32
	mulld 3,8,9
	srdi 11,3,32
	srdi 7,10,32
	mulld 9,9,7
	add 9,9,11
	rldicl 0,9,0,32
	srdi 11,5,32
	mulld 8,8,11
	add 8,8,0
	srdi 9,9,32
	mulld 7,7,11
	add 9,9,7
	srdi 7,8,32
	add 9,9,7
	mulld 10,10,6
	add 10,10,9
	mulld 4,5,4
	rldimi 3,8,32,0
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
	srdi 9,3,32
	xor 3,9,3
	srwi 9,3,16
	xor 9,9,3
	srwi 3,9,8
	xor 3,3,9
	srwi 9,3,4
	xor 9,9,3
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	xor 3,3,4
	sradi 10,3,32
	xor 10,10,3
	srwi 9,10,16
	xor 9,9,10
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	li 3,27030
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
	xor 9,9,3
	srwi 3,9,8
	xor 3,3,9
	srwi 9,3,4
	xor 9,9,3
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	srdi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	rldimi 10,10,32,0
	and 9,9,10
	subf 3,9,3
	srdi 10,3,2
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 10,10,9
	and 3,3,9
	add 10,10,3
	srdi 9,10,4
	add 9,9,10
	lis 10,0xf0f
	ori 10,10,0xf0f
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
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	sldi 5,4,63
	srdi 30,3,1
	or 30,5,30
	srdi 31,4,1
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	and 30,30,5
	and 31,31,5
	subfc 10,30,3
	subfe 11,31,4
	sldi 5,11,62
	srdi 8,10,2
	or 8,5,8
	srdi 9,11,2
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 27,5
	and 4,8,5
	and 5,9,5
	and 10,10,27
	and 11,11,27
	addc 8,4,10
	adde 10,5,11
	srdi 9,8,4
	rldimi 9,10,60,0
	srdi 5,10,4
	addc 6,9,8
	adde 7,5,10
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 6,6,9
	and 7,7,9
	add 6,7,6
	srdi 10,6,32
	add 10,10,6
	srwi 9,10,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
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
	fmr 0,1
	mr 9,4
	addis 10,2,.LC32@toc@ha
	lfd 12,.LC32@toc@l(10)
	fmr 1,12
	b .L1254
	.p2align 4,,15
.L1252:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1253
	fmul 0,0,0
.L1254:
	andi. 10,9,0x1
	beq 0,.L1252
	fmul 1,1,0
	b .L1252
	.p2align 4,,15
.L1253:
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
	fmr 0,1
	mr 9,4
	addis 10,2,.LC33@toc@ha
	lfs 12,.LC33@toc@l(10)
	fmr 1,12
	b .L1262
	.p2align 4,,15
.L1260:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1261
	fmuls 0,0,0
.L1262:
	andi. 10,9,0x1
	beq 0,.L1260
	fmuls 1,1,0
	b .L1260
	.p2align 4,,15
.L1261:
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
	blt 0,.L1269
	li 9,2
	bgt 0,.L1268
	li 9,0
	cmplw 0,3,4
	blt 0,.L1268
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1268:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1269:
	li 9,0
	b .L1268
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
	blt 0,.L1275
	li 9,2
	bgt 0,.L1274
	li 9,0
	cmplw 0,3,4
	blt 0,.L1274
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1274:
	addi 3,9,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L1275:
	li 9,0
	b .L1274
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
	li 9,0
	cmpld 0,4,6
	blt 0,.L1280
	li 9,2
	bgt 0,.L1280
	li 9,0
	cmpld 0,3,5
	blt 0,.L1280
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1280:
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
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC33:
	.long	1065353216
	.align 2
.LC37:
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
