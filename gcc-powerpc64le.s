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
	cmpdi 0,5,0
	add 4,4,5
	add 9,3,5
	beqlr 0
	andi. 10,5,0x1
	addi 10,5,-1
	beq 0,.L16
	cmpdi 0,10,0
	lbzu 10,-1(4)
	stbu 10,-1(9)
	beqlr 0
.L16:
	srdi 10,5,1
	mtctr 10
.L7:
	lbz 7,-1(4)
	mr 8,4
	addi 10,9,-1
	addi 4,4,-2
	addi 9,9,-2
	stb 7,1(9)
	lbz 8,-2(8)
	stb 8,-1(10)
	bdnz .L7
	blr
	.p2align 4,,15
.L5:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne 0,.L29
.L19:
	srdi 8,5,1
	mtctr 8
.L8:
	lbz 6,1(9)
	mr 7,9
	addi 8,10,1
	addi 9,9,2
	addi 10,10,2
	stb 6,-1(10)
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L8
	blr
	.p2align 4,,15
.L29:
	cmpdi 0,8,0
	lbz 8,0(4)
	mr 9,4
	mr 10,3
	stb 8,0(3)
	bne 0,.L19
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
	cmpdi 0,6,0
	rlwinm 5,5,0,0xff
	beq 0,.L31
	andi. 9,6,0x1
	addi 8,6,-1
	addi 9,4,-1
	bne 0,.L51
.L41:
	srdi 10,6,1
	mtctr 10
	b .L32
	.p2align 4,,15
.L34:
	lbz 10,1(8)
	rlwinm 8,10,0,0xff
	stbu 10,1(3)
	cmpw 0,8,5
	beq 0,.L49
	addi 3,3,1
	bdz .L31
.L32:
	lbz 10,1(9)
	addi 8,9,1
	addi 9,8,1
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	bne 0,.L34
.L49:
	addi 3,3,1
	blr
	.p2align 4,,15
.L51:
	lbz 10,0(4)
	mr 9,4
	rlwinm 7,10,0,0xff
	stb 10,0(3)
	cmpw 0,7,5
	beq 0,.L49
	cmpdi 0,8,0
	addi 3,3,1
	bne 0,.L41
.L31:
	li 3,0
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
	cmpdi 0,5,0
	rlwinm 4,4,0,0xff
	beq 0,.L56
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L72
.L59:
	srdi 9,5,1
	mtctr 9
.L53:
	lbz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	lbzu 9,1(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,1
	bdnz .L53
.L56:
	li 3,0
	blr
	.p2align 4,,15
.L72:
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr 0
	cmpdi 0,9,0
	addi 3,3,1
	bne 0,.L59
	b .L56
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
	cmpdi 0,5,0
	beq 0,.L78
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L93
.L81:
	srdi 9,5,1
	mtctr 9
	b .L74
	.p2align 4,,15
.L76:
	lbz 10,1(3)
	lbz 9,1(4)
	addi 3,7,1
	addi 4,8,1
	cmpw 0,10,9
	bne 0,.L90
	bdz .L78
.L74:
	lbz 10,0(3)
	lbz 9,0(4)
	addi 7,3,1
	addi 8,4,1
	cmpw 0,10,9
	beq 0,.L76
.L90:
	subf 3,9,10
	extsw 3,3
	blr
	.p2align 4,,15
.L93:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L90
	cmpdi 0,8,0
	addi 3,3,1
	addi 4,4,1
	bne 0,.L81
.L78:
	li 3,0
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L95
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L95:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
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
	mr 10,5
	addi 5,5,-1
	andi. 8,10,0x1
	add 9,3,5
	rlwinm 4,4,0,0xff
	beq 0,.L105
	mr 3,9
	addi 9,9,-1
	lbz 8,0(3)
	cmpw 0,8,4
	beqlr 0
.L105:
	srdi 10,10,1
	addi 10,10,1
	mtctr 10
	bdz .L112
	.p2align 4,,15
.L103:
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr 0
	lbz 10,0(9)
	mr 3,9
	addi 9,9,-1
	cmpw 0,10,4
	beqlr 0
	bdnz .L103
.L112:
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
.LCF8:
0:	addis 2,12,.TOC.-.LCF8@ha
	addi 2,2,.TOC.-.LCF8@l
	.localentry	memset,.-memset
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L116
	mflr 0
	.cfi_register 65, 0
	rlwinm 4,4,0,0xff
	std 0,64(1)
	.cfi_offset 65, 16
	bl memset
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L116:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
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
	rlwinm 10,9,0,0xff
	stb 9,0(3)
	cmpwi 0,10,0
	beqlr 0
	.p2align 4,,15
.L120:
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	beqlr 0
	lbzu 9,1(4)
	rlwinm 10,9,0,0xff
	stbu 9,1(3)
	cmpwi 0,10,0
	bne 0,.L120
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
	lbz 9,0(3)
	rlwinm 4,4,0,0xff
	cmpwi 0,9,0
	beqlr 0
	cmpw 0,9,4
	beqlr 0
	.p2align 5
.L131:
	lbzu 9,1(3)
	cmpwi 0,9,0
	beqlr 0
	cmpw 0,9,4
	bne 0,.L131
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
.L134:
	lbz 9,0(3)
	cmpw 0,9,4
	cmpwi 7,9,0
	beqlr 0
	addi 3,3,1
	bne 7,.L134
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
	mr 8,4
	cmpw 0,9,10
	beq 0,.L139
	b .L138
	.p2align 4,,15
.L140:
	lbzu 9,1(3)
	lbzu 10,1(8)
	cmpw 0,9,10
	bne 0,.L138
.L139:
	cmpwi 0,9,0
	bne 0,.L140
.L138:
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
	beq 0,.L146
	mr 9,3
	.p2align 4,,15
.L145:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L145
	subf 3,3,9
	blr
	.p2align 4,,15
.L146:
	li 3,0
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
	beq 0,.L156
	lbz 10,0(3)
	addi 5,5,-1
	add 5,3,5
	subf 5,3,5
	cmpwi 0,10,0
	addi 9,5,1
	mtctr 9
	bne 0,.L152
	b .L159
	.p2align 4,,15
.L161:
	bdz .L151
	bne 7,.L151
	lbzu 10,1(3)
	cmpwi 0,10,0
	beq 0,.L160
	mr 4,8
.L152:
	lbz 9,0(4)
	addi 8,4,1
	cmpwi 0,9,0
	cmpw 7,9,10
	bne 0,.L161
.L151:
	subf 3,9,10
	extsw 3,3
	blr
	.p2align 4,,15
.L156:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L160:
	lbz 9,1(4)
	b .L151
.L159:
	lbz 9,0(4)
	b .L151
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
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L172
.L167:
	srdi 9,5,1
	mtctr 9
.L164:
	mr 10,3
	lbz 6,1(3)
	lbz 7,0(3)
	lbz 8,2(3)
	addi 4,4,4
	addi 3,3,4
	lbz 10,3(10)
	stb 6,-4(4)
	stb 7,-3(4)
	stb 8,-1(4)
	stb 10,-2(4)
	bdnz .L164
	blr
	.p2align 4,,15
.L172:
	cmpdi 0,9,0
	lbz 10,1(3)
	lbz 9,0(3)
	addi 4,4,2
	addi 3,3,2
	stb 10,-2(4)
	stb 9,-1(4)
	bne 0,.L167
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
	beq 0,.L177
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L177:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	ble 0,.L180
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L180:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	beq 0,.L187
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L187:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	cmplwi 0,3,31
	li 9,1
	ble 0,.L190
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	bgt 0,.L194
.L190:
	rldicl 3,9,0,63
	blr
	.p2align 4,,15
.L194:
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L190
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
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
	ble 0,.L203
	cmplwi 0,3,8231
	li 9,1
	ble 0,.L198
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L198
	addis 10,3,0xffff
	addi 8,10,8192
	cmplwi 0,8,8184
	ble 0,.L198
	lis 8,0x10
	addi 10,10,4
	ori 8,8,0x3
	li 9,0
	cmplw 0,10,8
	bgt 0,.L198
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
.L198:
	rldicl 3,9,0,63
	blr
	.p2align 4,,15
.L203:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
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
	ble 0,.L206
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
	rldicl 3,3,0,63
	blr
	.p2align 4,,15
.L206:
	li 3,1
	rldicl 3,3,0,63
	blr
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
	bun 0,.L212
	fcmpu 0,1,2
	bng 0,.L215
	fsub 1,1,2
	blr
	.p2align 4,,15
.L215:
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	blr
	.p2align 4,,15
.L212:
	fmr 1,2
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
	bun 0,.L220
	fcmpu 0,1,2
	bng 0,.L223
	fsubs 1,1,2
	blr
	.p2align 4,,15
.L223:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
	.p2align 4,,15
.L220:
	fmr 1,2
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
	fcmpu 0,1,1
	fmr 0,1
	bun 0,.L229
	fcmpu 0,2,2
	bun 0,.L230
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L226
	cmpwi 0,9,0
	fmr 1,2
	bnelr 0
.L230:
	fmr 1,0
	blr
	.p2align 4,,15
.L226:
	fcmpu 0,1,2
	bnllr 0
.L229:
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
	fcmpu 0,1,1
	stfs 1,-16(1)
	stfs 2,-12(1)
	bun 0,.L238
	fcmpu 0,2,2
	bunlr 0
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L235
	cmpwi 0,9,0
	fmr 1,2
	bnelr 0
	lfs 1,-16(1)
	blr
	.p2align 4,,15
.L235:
	fcmpu 0,1,2
	bnllr 0
	fmr 1,2
	blr
	.p2align 4,,15
.L238:
	fmr 1,2
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
	bun 0,.L249
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L244
	cmpwi 0,9,0
	beqlr 0
.L249:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L244:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bnllr 0
	fmr 1,3
	fmr 2,4
	blr
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
	bun 0,.L256
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 2,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	bne 0,.L260
	fcmpu 0,1,2
	fmr 0,2
	bnl 0,.L255
	fmr 0,1
.L255:
	fmr 1,0
	blr
	.p2align 4,,15
.L260:
	cmpwi 0,9,0
	bnelr 0
.L256:
	fmr 1,2
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
	fcmpu 0,1,1
	stfs 1,-16(1)
	stfs 2,-12(1)
	bun 0,.L266
	fcmpu 0,2,2
	fmr 0,2
	bunlr 0
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	bne 0,.L271
	fcmpu 0,1,2
	fmr 0,1
	fmr 1,2
	bnllr 0
	fmr 1,0
	blr
	.p2align 4,,15
.L271:
	cmpwi 0,9,0
	bnelr 0
	fmr 1,0
	blr
	.p2align 4,,15
.L266:
	fmr 1,2
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
	bun 0,.L277
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	stfd 0,-16(1)
	ori 2,2,0
	ld 9,-16(1)
	stfd 11,-16(1)
	srdi 9,9,63
	ori 2,2,0
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L274
	cmpwi 0,9,0
	bnelr 0
.L277:
	fmr 1,3
	fmr 2,4
	blr
	.p2align 4,,15
.L274:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bltlr 0
	fmr 1,3
	fmr 2,4
	blr
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
	addis 3,2,.LANCHOR0@toc@ha
	cmpwi 0,9,0
	addi 3,3,.LANCHOR0@toc@l
	beq 0,.L283
	addis 7,2,.LANCHOR1@toc@ha
	mr 10,3
	addi 7,7,.LANCHOR1@toc@l
	.p2align 5
.L282:
	rldicl 8,9,0,58
	srwi 9,9,6
	cmpwi 0,9,0
	addi 10,10,1
	lbzx 8,7,8
	stb 8,-1(10)
	bne 0,.L282
	li 9,0
	stb 9,0(10)
	blr
	.p2align 4,,15
.L283:
	mr 10,3
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
	addis 9,2,.LANCHOR0+8@toc@ha
	rldicl 3,3,0,32
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
	addis 7,2,.LANCHOR0+8@toc@ha
	lis 10,0x4c95
	lis 8,0x5851
	ori 10,10,0x7f2d
	ld 9,.LANCHOR0+8@toc@l(7)
	ori 8,8,0xf42d
	rldimi 10,8,32,0
	mulld 9,9,10
	addi 9,9,1
	srdi 3,9,33
	std 9,.LANCHOR0+8@toc@l(7)
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
	beq 0,.L293
	ld 9,0(4)
	std 4,8(3)
	std 9,0(3)
	std 3,0(4)
	ori 2,2,0
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
	.p2align 4,,15
.L293:
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
	beq 0,.L295
	ld 10,8(3)
	std 10,8(9)
.L295:
	ld 10,8(3)
	cmpdi 0,10,0
	beqlr 0
	std 9,0(10)
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
	std 27,-40(1)
	.cfi_register 65, 0
	.cfi_offset 27, -40
	ld 27,0(5)
	std 23,-72(1)
	std 24,-64(1)
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	mr 23,4
	mr 24,5
	std 26,-48(1)
	std 28,-32(1)
	.cfi_offset 26, -48
	.cfi_offset 28, -32
	mr 26,3
	mr 28,6
	std 25,-56(1)
	cmpdi 0,27,0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 25, -56
	.cfi_offset 65, 16
	std 2,24(1)
	beq 0,.L304
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	mr 29,7
	li 30,0
	std 31,104(1)
	.cfi_offset 31, -8
	mr 31,4
	b .L306
	.p2align 4,,15
.L318:
	beq 7,.L317
.L306:
	mtctr 29
	mr 4,31
	mr 3,26
	mr 12,29
	addi 30,30,1
	mr 25,31
	add 31,31,28
	bctrl
	ld 2,24(1)
	cmpld 7,27,30
	cmpwi 0,3,0
	bne 0,.L318
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L303:
	addi 1,1,112
	.cfi_def_cfa_offset 0
	mr 3,25
	ld 0,16(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	mtlr 0
	.cfi_restore 65
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.p2align 4,,15
.L317:
	.cfi_def_cfa_offset 112
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
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L304:
	mulld 25,28,27
	cmpdi 0,28,0
	addi 27,27,1
	std 27,0(24)
	add 25,23,25
	beq 0,.L303
	mr 5,28
	mr 4,26
	mr 3,25
	bl memmove
	nop
	addi 1,1,112
	.cfi_def_cfa_offset 0
	mr 3,25
	ld 0,16(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	mtlr 0
	.cfi_restore 65
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
	std 26,-48(1)
	.cfi_offset 26, -48
	ld 26,0(5)
	std 25,-56(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	cmpdi 0,26,0
	beq 0,.L320
	mflr 0
	.cfi_register 65, 0
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 27,6
	std 29,72(1)
	.cfi_offset 29, -24
	std 30,80(1)
	.cfi_offset 30, -16
	mr 28,3
	mr 29,7
	std 31,88(1)
	.cfi_offset 31, -8
	std 2,24(1)
	mr 31,4
	li 30,0
	std 0,112(1)
	.cfi_offset 65, 16
	b .L322
	.p2align 4,,15
.L330:
	beq 7,.L329
.L322:
	mtctr 29
	mr 4,31
	mr 3,28
	mr 12,29
	addi 30,30,1
	mr 25,31
	add 31,31,27
	bctrl
	ld 2,24(1)
	cmpld 7,26,30
	cmpwi 0,3,0
	bne 0,.L330
	ld 0,112(1)
	ld 27,56(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	mr 3,25
	ld 30,80(1)
	.cfi_restore 30
	ld 31,88(1)
	.cfi_restore 31
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 25,-56(1)
	ld 26,-48(1)
	.cfi_restore 26
	.cfi_restore 25
	blr
	.p2align 4,,15
.L329:
	.cfi_restore_state
	ld 0,112(1)
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
	mtlr 0
	.cfi_restore 65
.L320:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 25,0
	mr 3,25
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
.L339:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L333
	ble 7,.L333
	cmpwi 0,9,43
	beq 0,.L334
	cmpwi 0,9,45
	bne 0,.L352
	lbz 9,1(3)
	addi 10,3,1
	addi 8,9,-48
	cmplwi 0,8,9
	bgt 0,.L344
	li 5,1
.L337:
	li 3,0
	.p2align 5
.L341:
	addi 7,9,-48
	mulli 8,3,10
	lbzu 9,1(10)
	addi 6,9,-48
	subf 3,7,8
	cmplwi 0,6,9
	ble 0,.L341
	cmpwi 0,5,0
	bne 0,.L340
	subf 3,8,7
.L340:
	extsw 3,3
	blr
	.p2align 4,,15
.L333:
	addi 3,3,1
	b .L339
	.p2align 4,,15
.L352:
	addi 8,9,-48
	mr 10,3
	cmplwi 0,8,9
	li 5,0
	ble 0,.L337
.L344:
	li 3,0
	b .L340
	.p2align 4,,15
.L334:
	lbz 9,1(3)
	addi 10,3,1
	li 5,0
	addi 8,9,-48
	cmplwi 0,8,9
	ble 0,.L337
	li 3,0
	b .L340
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
.L360:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L354
	ble 7,.L354
	cmpwi 0,9,43
	beq 0,.L355
	cmpwi 0,9,45
	bne 0,.L373
	lbz 9,1(3)
	addi 8,3,1
	addi 10,9,-48
	cmplwi 0,10,9
	bgt 0,.L365
	li 5,1
.L358:
	li 3,0
	.p2align 5
.L362:
	addi 10,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 10,10
	addi 6,9,-48
	subf 3,10,7
	cmplwi 0,6,9
	ble 0,.L362
	cmpwi 0,5,0
	bnelr 0
	subf 3,7,10
	blr
	.p2align 4,,15
.L354:
	addi 3,3,1
	b .L360
	.p2align 4,,15
.L373:
	addi 10,9,-48
	mr 8,3
	cmplwi 0,10,9
	li 5,0
	ble 0,.L358
.L365:
	li 3,0
	blr
	.p2align 4,,15
.L355:
	lbz 9,1(3)
	addi 8,3,1
	li 5,0
	addi 10,9,-48
	cmplwi 0,10,9
	ble 0,.L358
	b .L365
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
.LFB171:
	.cfi_startproc
.L379:
	lbz 9,0(3)
	cmpwi 0,9,32
	addi 10,9,-9
	cmplwi 7,10,4
	beq 0,.L375
	ble 7,.L375
	cmpwi 0,9,43
	beq 0,.L376
	cmpwi 0,9,45
	beq 0,.L377
	addi 10,9,-48
	mr 8,3
	cmplwi 0,10,9
	li 5,0
	bgt 0,.L386
.L380:
	li 3,0
	.p2align 5
.L383:
	addi 10,9,-48
	mulli 7,3,10
	lbzu 9,1(8)
	extsw 10,10
	addi 6,9,-48
	subf 3,10,7
	cmplwi 0,6,9
	ble 0,.L383
	cmpwi 0,5,0
	bnelr 0
	subf 3,7,10
	blr
	.p2align 4,,15
.L375:
	addi 3,3,1
	b .L379
	.p2align 4,,15
.L377:
	lbz 9,1(3)
	addi 8,3,1
	li 5,1
	addi 10,9,-48
	cmplwi 0,10,9
	ble 0,.L380
.L386:
	li 3,0
	blr
	.p2align 4,,15
.L376:
	lbz 9,1(3)
	addi 8,3,1
	addi 10,9,-48
	cmplwi 0,10,9
	bgt 0,.L386
	li 5,0
	b .L380
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE171:
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq 0,.L395
	mflr 0
	.cfi_register 65, 0
	std 25,40(1)
	.cfi_offset 25, -56
	std 26,48(1)
	.cfi_offset 26, -48
	mr 25,3
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 26,4
	mr 27,6
	std 2,24(1)
	std 29,72(1)
	.cfi_offset 29, -24
	mr 28,7
	std 0,112(1)
	.cfi_offset 65, 16
	b .L398
	.p2align 4,,15
.L407:
	beq 0,.L405
	cmpdi 0,31,0
	add 26,30,27
	beq 0,.L406
.L398:
	mtctr 28
	srdi 29,31,1
	mulld 30,29,27
	mr 3,25
	mr 12,28
	addi 31,31,-1
	subf 31,29,31
	add 30,26,30
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	bge 0,.L407
	mr 31,29
	cmpdi 0,31,0
	bne 0,.L398
.L406:
	ld 0,112(1)
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
	mtlr 0
	.cfi_restore 65
.L395:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.p2align 4,,15
.L405:
	.cfi_def_cfa_offset 96
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 0,112(1)
	ld 25,40(1)
	.cfi_restore 25
	ld 26,48(1)
	.cfi_restore 26
	ld 27,56(1)
	.cfi_restore 27
	mr 3,30
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	addi 1,1,96
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
	cmpwi 0,5,0
	std 30,-16(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -16
	beq 0,.L412
	mflr 0
	.cfi_register 65, 0
	std 24,32(1)
	.cfi_offset 24, -64
	std 25,40(1)
	.cfi_offset 25, -56
	mr 24,3
	std 27,56(1)
	.cfi_offset 27, -40
	std 28,64(1)
	.cfi_offset 28, -32
	mr 27,4
	mr 28,6
	std 29,72(1)
	.cfi_offset 29, -24
	std 31,88(1)
	.cfi_offset 31, -8
	mr 29,7
	mr 31,5
	std 2,24(1)
	std 26,48(1)
	.cfi_offset 26, -48
	mr 25,8
	std 0,112(1)
	.cfi_offset 65, 16
	b .L409
	.p2align 4,,15
.L420:
	cmpwi 0,31,0
	add 27,30,28
	beq 0,.L419
.L409:
	mtctr 29
	srawi 30,31,1
	mulld 30,30,28
	mr 5,25
	mr 3,24
	mr 12,29
	srawi 26,31,1
	addi 31,31,-1
	srawi 31,31,1
	add 30,27,30
	mr 4,30
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L418
	bgt 0,.L420
	mr 31,26
	cmpwi 0,31,0
	bne 0,.L409
.L419:
	ld 0,112(1)
	ld 24,32(1)
	.cfi_restore 24
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
	ld 31,88(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L412:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 30
	blr
	.p2align 4,,15
.L418:
	.cfi_def_cfa_offset 96
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 0,112(1)
	ld 24,32(1)
	.cfi_restore 24
	ld 25,40(1)
	.cfi_restore 25
	ld 26,48(1)
	.cfi_restore 26
	mr 3,30
	ld 27,56(1)
	.cfi_restore 27
	ld 28,64(1)
	.cfi_restore 28
	ld 29,72(1)
	.cfi_restore 29
	ld 31,88(1)
	.cfi_restore 31
	addi 1,1,96
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,1,128,8,0,0
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
	divw 9,3,4
	mullw 4,9,4
	rldicl 9,9,0,32
	subf 3,4,3
	sldi 3,3,32
	or 3,9,3
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
	beq 0,.L432
	.p2align 5
.L429:
	cmpw 0,9,4
	beqlr 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne 0,.L429
.L432:
	li 3,0
	blr
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
	beq 0,.L437
	b .L436
	.p2align 4,,15
.L438:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne 0,.L436
.L437:
	cmpwi 7,9,0
	bne 7,.L438
.L436:
	li 3,-1
	blt 0,.L439
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L439:
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
	.p2align 4,,15
.L442:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L442
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
	beq 0,.L448
	mr 9,3
	.p2align 4,,15
.L447:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L447
	subf 3,3,9
	sradi 3,3,2
	blr
	.p2align 4,,15
.L448:
	li 3,0
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
	beq 0,.L460
	mtctr 5
	b .L451
	.p2align 4,,15
.L462:
	beq 7,.L453
	addi 3,3,4
	addi 4,4,4
	bdz .L460
.L451:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	cmpwi 7,9,0
	beq 0,.L462
.L453:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bge 0,.L455
	li 3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L455:
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
	.p2align 4,,15
.L460:
	li 3,0
	extsw 3,3
	blr
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
	cmpdi 0,5,0
	beq 0,.L467
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L483
.L470:
	srdi 9,5,1
	mtctr 9
.L464:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,4
	bdnz .L464
.L467:
	li 3,0
	blr
	.p2align 4,,15
.L483:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr 0
	cmpdi 0,9,0
	addi 3,3,4
	bne 0,.L470
	b .L467
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
	cmpdi 0,5,0
	beq 0,.L490
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L505
.L493:
	srdi 9,5,1
	mtctr 9
	b .L485
	.p2align 4,,15
.L487:
	lwz 9,4(3)
	lwz 10,4(4)
	addi 3,7,4
	addi 4,8,4
	cmpw 0,9,10
	bne 0,.L502
	bdz .L490
.L485:
	lwz 9,0(3)
	lwz 10,0(4)
	addi 7,3,4
	addi 8,4,4
	cmpw 0,9,10
	beq 0,.L487
.L502:
	blt 0,.L506
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
	.p2align 4,,15
.L505:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne 0,.L502
	cmpdi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne 0,.L493
.L490:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L506:
	li 3,-1
	extsw 3,3
	blr
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
	cmpdi 0,5,0
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,3
	beq 0,.L508
	mflr 0
	.cfi_register 65, 0
	sldi 5,5,2
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L508:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	mr 3,31
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
	bge 0,.L540
	cmpdi 0,5,0
	beqlr 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne 0,.L541
.L527:
	srdi 10,5,1
	mtctr 10
.L518:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L518
	blr
	.p2align 4,,15
.L540:
	cmpdi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne 0,.L542
.L530:
	srdi 8,5,1
	mtctr 8
.L519:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L519
	blr
	.p2align 4,,15
.L541:
	cmpdi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne 0,.L527
	blr
	.p2align 4,,15
.L542:
	cmpdi 0,8,0
	lwz 8,0(4)
	mr 9,4
	mr 10,3
	stw 8,0(3)
	bne 0,.L530
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
	andi. 8,5,0x3
	addi 9,3,-4
	addi 7,5,-1
	mr 10,5
	beq 0,.L554
	cmpdi 0,8,1
	beq 0,.L558
	cmpdi 0,8,2
	beq 0,.L559
	stw 4,0(3)
	mr 5,7
	mr 9,3
.L559:
	stwu 4,4(9)
	addi 5,5,-1
.L558:
	cmpdi 0,5,1
	stwu 4,4(9)
	beqlr 0
.L554:
	srdi 10,10,2
	mtctr 10
.L545:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L545
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
	bge 0,.L567
	cmpdi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq 0,.L578
	cmpdi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr 0
.L578:
	srdi 9,5,1
	mtctr 9
.L569:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L569
	blr
	.p2align 4,,15
.L567:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne 0,.L591
.L581:
	srdi 8,5,1
	mtctr 8
.L570:
	lbz 6,1(10)
	mr 7,10
	addi 8,9,1
	addi 10,10,2
	addi 9,9,2
	stb 6,-1(9)
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L570
	blr
	.p2align 4,,15
.L591:
	cmpdi 0,8,0
	lbz 8,0(3)
	mr 10,3
	mr 9,4
	stb 8,0(4)
	bne 0,.L581
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
.LFB173:
	.cfi_startproc
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE173:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.p2align 4,,15
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB175:
	.cfi_startproc
	subfic 4,4,64
	rotld 3,3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE175:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.p2align 4,,15
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	rlwinm 4,4,0,28,31
	neg 9,4
	slw 4,3,4
	rlwinm 9,9,0,28,31
	srw 3,3,9
	or 3,4,3
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
	neg 9,4
	srw 4,3,4
	rlwinm 9,9,0,28,31
	slw 3,3,9
	or 3,4,3
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
	neg 9,4
	slw 4,3,4
	rlwinm 9,9,0,29,31
	srw 3,3,9
	or 3,4,3
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
	neg 9,4
	srw 4,3,4
	rlwinm 9,9,0,29,31
	slw 3,3,9
	or 3,4,3
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
	rlwinm 10,3,8,16,23
	rlwinm 9,3,24,24,31
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
	.size	bswap_64,.-bswap_64
	.align 2
	.p2align 4,,15
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	li 10,16
	li 9,0
	mtctr 10
	b .L608
	.p2align 4,,15
.L616:
	addi 9,9,1
	bne 0,.L607
	bdz .L615
.L608:
	srw 8,3,9
	addi 9,9,1
	rldicl 8,8,0,63
	srw 10,3,9
	cmpdi 7,8,0
	andi. 10,10,0x1
	beq 7,.L616
.L607:
	extsw 3,9
	blr
	.p2align 4,,15
.L615:
	li 9,0
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
	mr. 9,3
	beq 0,.L620
	andi. 3,9,0x1
	bne 0,.L618
	li 3,1
	.p2align 4,,15
.L619:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L619
.L618:
	extsw 3,3
	blr
	.p2align 4,,15
.L620:
	li 3,0
	extsw 3,3
	blr
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
	addis 9,2,.LC6@toc@ha
	li 3,1
	lfs 0,.LC6@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L624
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L624:
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
	addis 9,2,.LC10@toc@ha
	li 3,1
	lfd 0,.LC10@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L627
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L627:
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
	addis 9,2,.LC14@toc@ha
	li 3,1
	addi 9,9,.LC14@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L630
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L630:
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
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	ori 2,2,0
	lfd 0,-16(1)
	stfd 1,8(3)
	fcfid 0,0
	stfd 0,0(3)
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
	blt 0,.L646
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
.L635:
	andi. 9,4,0x1
	beq 0,.L636
	.p2align 4,,15
.L637:
	fmuls 1,1,0
.L636:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 0,0,0
	srawi 9,4,1
	addze 9,9
	bne 0,.L637
.L647:
	extsw 4,9
	fmuls 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne 0,.L637
	b .L647
	.p2align 4,,15
.L646:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L635
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
	blt 0,.L661
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
.L650:
	andi. 9,4,0x1
	beq 0,.L651
	.p2align 4,,15
.L652:
	fmul 1,1,0
.L651:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 0,0,0
	srawi 9,4,1
	addze 9,9
	bne 0,.L652
.L662:
	extsw 4,9
	fmul 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne 0,.L652
	b .L662
	.p2align 4,,15
.L661:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L650
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
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	fmr 28,1
	fmr 29,2
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	fmr 0,28
	fcmpu 0,0,0
	bun 0,.L664
	mflr 0
	.cfi_register 65, 0
	fmr 3,1
	fmr 4,2
	std 31,40(1)
	.cfi_offset 31, -40
	mr 31,5
	std 0,96(1)
	.cfi_offset 65, 16
	bl __gcc_qadd
	nop
	fcmpu 0,1,28
	bne 0,$+8
	fcmpu 0,2,29
	beq 0,.L679
	cmpwi 0,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 0,.L680
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
.L665:
	andi. 9,31,0x1
	beq 0,.L666
	.p2align 4,,15
.L667:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L666:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L678
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	srawi 9,31,1
	addze 9,9
	fmr 31,2
	fmr 30,1
	bne 0,.L667
.L681:
	fmr 3,30
	fmr 4,31
	extsw 31,9
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	andi. 9,31,0x1
	srawi 9,31,1
	addze 9,9
	fmr 31,2
	fmr 30,1
	bne 0,.L667
	b .L681
	.p2align 4,,15
.L678:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L679:
	ld 0,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L664:
	addi 1,1,80
	.cfi_def_cfa_offset 0
	fmr 1,28
	fmr 2,29
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
	.p2align 4,,15
.L680:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L665
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
	andi. 9,5,0x1
	addi 7,4,-1
	addi 9,3,-1
	addi 8,5,-1
	bne 0,.L695
.L689:
	srdi 10,5,1
	mtctr 10
.L684:
	lbz 8,1(9)
	lbz 5,1(7)
	mr 10,9
	mr 6,7
	addi 9,9,2
	addi 7,7,2
	lbz 6,2(6)
	xor 8,8,5
	stb 8,-1(9)
	lbz 8,2(10)
	xor 8,8,6
	stb 8,2(10)
	bdnz .L684
	blr
	.p2align 4,,15
.L695:
	lbz 10,0(3)
	cmpdi 0,8,0
	lbz 8,0(4)
	mr 7,4
	mr 9,3
	xor 10,10,8
	stb 10,0(3)
	bne 0,.L689
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
	beq 0,.L697
	.p2align 4,,15
.L698:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L698
.L697:
	cmpdi 0,5,0
	beq 0,.L699
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne 0,.L721
.L710:
	srdi 8,5,1
	mtctr 8
.L700:
	lbz 8,1(10)
	addi 7,10,1
	addi 5,9,1
	addi 10,7,1
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr 0
	lbz 8,1(7)
	rlwinm 7,8,0,0xff
	stb 8,1(9)
	addi 9,5,1
	cmpwi 0,7,0
	beqlr 0
	bdnz .L700
.L699:
	li 10,0
	stb 10,0(9)
	blr
	.p2align 4,,15
.L721:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr 0
	cmpdi 0,7,0
	addi 9,9,1
	bne 0,.L710
	b .L699
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
	cmpdi 0,4,0
	mr 9,3
	li 3,0
	beqlr 0
	andi. 8,4,0x3
	mr 10,4
	beq 0,.L734
	cmpdi 0,8,1
	beq 0,.L745
	cmpdi 0,8,2
	beq 0,.L746
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr 0
	li 3,1
.L746:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
.L745:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr 0
	.p2align 4,,15
.L734:
	srdi 10,10,2
.L723:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	mr 7,3
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,7,2
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	cmpdi 0,10,1
	addi 3,7,3
	addi 10,10,-1
	bne 0,.L723
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
	beq 0,.L758
.L754:
	mr 10,4
	b .L757
	.p2align 4,,15
.L756:
	beqlr 7
.L757:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne 0,.L756
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne 0,.L754
.L758:
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
	.p2align 5
.L763:
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	bne 7,.L762
	mr 3,9
.L762:
	addi 9,9,1
	bne 0,.L763
	blr
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
	lbz 11,0(4)
	mr 8,3
	andi. 5,11,0xff
	beq 0,.L779
	mr 9,4
	.p2align 4,,15
.L768:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L768
	subf. 9,4,9
	mr 3,8
	beqlr 0
	addi 3,9,-1
	b .L776
	.p2align 4,,15
.L789:
	cmpwi 0,9,0
	addi 8,8,1
	beq 0,.L788
.L776:
	lbz 9,0(8)
	cmpw 0,9,5
	bne 0,.L789
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 10,11
	mr 7,8
	b .L770
	.p2align 4,,15
.L791:
	bdz .L772
	bne 7,.L773
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq 0,.L790
	lbzu 10,1(6)
.L770:
	andi. 10,10,0xff
	cmpw 7,10,9
	bne 0,.L791
.L773:
	addi 8,8,1
	b .L776
	.p2align 4,,15
.L788:
	li 3,0
	blr
	.p2align 4,,15
.L790:
	lbz 10,1(6)
.L772:
	cmpw 0,9,10
	bne 0,.L773
.L779:
	mr 3,8
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
	blt 0,.L802
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	fneg 1,1
	blr
	.p2align 4,,15
.L802:
	fcmpu 0,2,0
	bnglr 0
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
	cmpdi 0,6,0
	mr 10,3
	beqlr 0
	cmpld 0,4,6
	blt 0,.L811
	subf 4,6,4
	add 0,3,4
	cmpld 0,3,0
	bgt 0,.L811
	lbz 12,0(5)
	cmpldi 7,6,1
	addi 11,3,-1
	b .L808
	.p2align 4,,15
.L805:
	cmpld 0,0,10
	blt 0,.L811
.L808:
	lbzu 9,1(11)
	mr 3,10
	addi 10,10,1
	cmpw 0,9,12
	bne 0,.L805
	beqlr 7
	not 9,11
	mr 7,5
	add 9,9,11
	mr 8,11
	add 9,9,6
	mtctr 9
	.p2align 5
.L806:
	lbzu 4,1(8)
	lbzu 9,1(7)
	cmpw 0,4,9
	bne 0,.L805
	bdnz .L806
	blr
	.p2align 4,,15
.L811:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 30,3
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	beq 0,.L820
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L820:
	addi 1,1,48
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
	fcmpu 7,1,0
	blt 7,.L848
	addis 9,2,.LC36@toc@ha
	li 10,0
	lfd 0,.LC36@toc@l(9)
	fcmpu 0,1,0
	cror 2,1,2
	bne 0,.L849
.L828:
	addis 9,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(9)
	addis 9,2,.LC36@toc@ha
	lfd 0,.LC36@toc@l(9)
	li 9,0
	.p2align 5
.L834:
	fmul 1,1,12
	addi 9,9,1
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L834
	cmpwi 0,10,0
	stw 9,0(4)
	beqlr 0
.L851:
	fneg 1,1
	blr
	.p2align 4,,15
.L849:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L831
	bne 7,.L840
.L831:
	li 9,0
	stw 9,0(4)
	blr
	.p2align 4,,15
.L848:
	addis 9,2,.LC32@toc@ha
	fneg 12,1
	lfd 0,.LC32@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,2
	bne 0,.L850
	fmr 1,12
	li 10,1
	b .L828
	.p2align 4,,15
.L850:
	addis 9,2,.LC34@toc@ha
	lfd 0,.LC34@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L831
	li 10,1
.L829:
	fmr 1,12
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	li 9,0
	.p2align 4,,15
.L836:
	fadd 1,1,1
	addi 9,9,-1
	fcmpu 0,1,0
	blt 0,.L836
	cmpwi 0,10,0
	stw 9,0(4)
	bne 0,.L851
	blr
.L840:
	fmr 12,1
	b .L829
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
	mr. 10,3
	li 3,0
	beqlr 0
	.p2align 4,,15
.L854:
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	beqlr 0
	rldicl 9,10,0,63
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	bne 0,.L854
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
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 10,32
	li 9,1
	blt 0,.L859
	b .L860
	.p2align 4,,15
.L863:
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L861
	cmpwi 0,4,0
	slwi 8,4,1
	cmplw 7,3,8
	blt 0,.L860
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L861
	bdz .L862
.L859:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge 0,.L863
.L860:
	li 10,0
	.p2align 4,,15
.L865:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt 0,.L864
	rldicl 3,8,0,32
	or 10,10,9
.L864:
	srwi 9,9,1
	cmpwi 0,9,0
	bne 0,.L865
.L862:
	cmpdi 0,5,0
	beq 0,.L866
	mr 10,3
.L866:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L861:
	cmpwi 0,9,0
	bne 0,.L860
	li 10,0
	b .L862
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
	beq 0,.L880
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L880:
	li 3,7
	extsw 3,3
	blr
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
	sradi 9,3,63
	cmpd 0,3,9
	xor 3,3,9
	beq 0,.L883
	cntlzd 3,3
	addi 3,3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L883:
	li 3,63
	extsw 3,3
	blr
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
	beq 0,.L885
	.p2align 5
.L886:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	bne 0,.L886
.L885:
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
	cmpld 0,3,4
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	blt 0,.L893
	add 7,4,5
	mr 8,5
	cmpld 0,3,7
	ble 0,.L924
.L893:
	cmpwi 0,10,0
	addi 8,4,-8
	addi 7,3,-8
	beq 0,.L892
	andi. 6,10,0x1
	addi 6,10,-1
	bne 0,.L925
.L908:
	srdi 10,10,1
	mtctr 10
.L896:
	ld 11,8(8)
	mr 6,8
	addi 10,7,8
	addi 8,8,16
	addi 7,7,16
	std 11,-8(7)
	ld 6,16(6)
	std 6,8(10)
	bdnz .L896
.L892:
	cmplw 0,9,5
	bgelr 0
	subf 5,9,5
	rldicl 9,9,0,32
	rldicl 5,5,0,32
	addi 9,9,-1
	andi. 10,5,0x1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	bne 0,.L926
.L905:
	srdi 9,5,1
	mtctr 9
.L897:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	addi 4,4,2
	addi 3,3,2
	stb 8,-1(3)
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L897
	blr
	.p2align 4,,15
.L926:
	cmpdi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne 0,.L905
	blr
	.p2align 4,,15
.L925:
	cmpdi 0,6,0
	ld 6,0(4)
	mr 8,4
	mr 7,3
	std 6,0(3)
	bne 0,.L908
	b .L892
	.p2align 4,,15
.L924:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L927
.L911:
	srdi 9,8,1
	mtctr 9
.L898:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L898
	blr
	.p2align 4,,15
.L927:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne 0,.L911
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
	cmpld 0,3,4
	srwi 9,5,1
	blt 0,.L932
	add 8,4,5
	mr 10,5
	cmpld 0,3,8
	ble 0,.L959
.L932:
	cmpwi 0,9,0
	addi 10,4,-2
	addi 8,3,-2
	beq 0,.L931
	andi. 7,9,0x1
	addi 7,9,-1
	bne 0,.L960
.L945:
	srdi 9,9,1
	mtctr 9
.L935:
	lhz 6,2(10)
	mr 7,10
	addi 9,8,2
	addi 10,10,4
	addi 8,8,4
	sth 6,-2(8)
	lhz 7,4(7)
	sth 7,2(9)
	bdnz .L935
.L931:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
	.p2align 4,,15
.L960:
	cmpdi 0,7,0
	lhz 7,0(4)
	mr 10,4
	mr 8,3
	sth 7,0(3)
	bne 0,.L945
	b .L931
	.p2align 4,,15
.L959:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L961
.L948:
	srdi 9,10,1
	mtctr 9
.L937:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L937
	blr
	.p2align 4,,15
.L961:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne 0,.L948
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
	cmpld 0,3,4
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	blt 0,.L966
	add 7,4,5
	mr 8,5
	cmpld 0,3,7
	ble 0,.L997
.L966:
	cmpwi 0,10,0
	addi 8,4,-4
	addi 7,3,-4
	beq 0,.L965
	andi. 6,10,0x1
	addi 6,10,-1
	bne 0,.L998
.L981:
	srdi 10,10,1
	mtctr 10
.L969:
	lwz 11,4(8)
	mr 6,8
	addi 10,7,4
	addi 8,8,8
	addi 7,7,8
	stw 11,-4(7)
	lwz 6,8(6)
	stw 6,4(10)
	bdnz .L969
.L965:
	cmplw 0,9,5
	bgelr 0
	subf 5,9,5
	rldicl 9,9,0,32
	rldicl 5,5,0,32
	addi 9,9,-1
	andi. 10,5,0x1
	add 4,4,9
	add 3,3,9
	addi 9,5,-1
	bne 0,.L999
.L978:
	srdi 9,5,1
	mtctr 9
.L970:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	addi 4,4,2
	addi 3,3,2
	stb 8,-1(3)
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L970
	blr
	.p2align 4,,15
.L999:
	cmpdi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne 0,.L978
	blr
	.p2align 4,,15
.L998:
	cmpdi 0,6,0
	lwz 6,0(4)
	mr 8,4
	mr 7,3
	stw 6,0(3)
	bne 0,.L981
	b .L965
	.p2align 4,,15
.L997:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L1000
.L984:
	srdi 9,8,1
	mtctr 9
.L971:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L971
	blr
	.p2align 4,,15
.L1000:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne 0,.L984
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
	ori 2,2,0
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
	ori 2,2,0
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
	blt 0,.L1007
	std 3,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 1,0
	blr
	.p2align 4,,15
.L1007:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
	std 9,-16(1)
	ori 2,2,0
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
	blt 0,.L1010
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	blt 0,.L1013
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L1013:
	mr 9,3
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L1010:
	srdi 9,3,1
	rldicl 3,3,0,63
	srdi 10,9,53
	or 3,3,9
	addi 10,10,1
	rldicl 9,3,0,53
	cmpldi 0,10,2
	addi 9,9,2047
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L1012
	mr 9,3
.L1012:
	std 9,-16(1)
	ori 2,2,0
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
	srdi. 9,3,15
	bne 0,.L1018
	srawi 9,3,14
	cmpwi 0,9,0
	bne 0,.L1017
	srdi. 9,3,13
	bne 0,.L1019
	srdi. 9,3,12
	bne 0,.L1020
	srdi. 9,3,11
	bne 0,.L1021
	srdi. 9,3,10
	bne 0,.L1022
	srdi. 9,3,9
	bne 0,.L1023
	srdi. 9,3,8
	bne 0,.L1024
	srdi. 9,3,7
	bne 0,.L1025
	srdi. 9,3,6
	bne 0,.L1026
	srdi. 9,3,5
	bne 0,.L1027
	srdi. 9,3,4
	bne 0,.L1028
	srdi. 9,3,3
	bne 0,.L1029
	srdi. 9,3,2
	bne 0,.L1030
	srdi. 9,3,1
	bne 0,.L1031
	cntlzd 3,3
	srdi 3,3,6
	addi 9,3,15
.L1017:
	rldicl 3,9,0,59
	blr
.L1018:
	li 9,0
	b .L1017
.L1029:
	li 9,12
	b .L1017
.L1019:
	li 9,2
	b .L1017
.L1020:
	li 9,3
	b .L1017
.L1021:
	li 9,4
	b .L1017
.L1022:
	li 9,5
	b .L1017
.L1023:
	li 9,6
	b .L1017
.L1024:
	li 9,7
	b .L1017
.L1025:
	li 9,8
	b .L1017
.L1026:
	li 9,9
	b .L1017
.L1027:
	li 9,10
	b .L1017
.L1028:
	li 9,11
	b .L1017
.L1030:
	li 9,13
	b .L1017
.L1031:
	li 9,14
	b .L1017
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
	andi. 9,3,0x1
	bne 0,.L1036
	andi. 9,3,0x2
	bne 0,.L1037
	andi. 9,3,0x4
	bne 0,.L1038
	andi. 9,3,0x8
	bne 0,.L1039
	andi. 9,3,0x10
	bne 0,.L1040
	andi. 9,3,0x20
	bne 0,.L1041
	andi. 9,3,0x40
	bne 0,.L1042
	andi. 9,3,0x80
	bne 0,.L1043
	andi. 9,3,0x100
	bne 0,.L1044
	andi. 9,3,0x200
	bne 0,.L1045
	andi. 9,3,0x400
	bne 0,.L1046
	andi. 9,3,0x800
	bne 0,.L1047
	andi. 9,3,0x1000
	bne 0,.L1048
	andi. 9,3,0x2000
	bne 0,.L1049
	andi. 9,3,0x4000
	bne 0,.L1050
	srawi 3,3,15
	cntlzw 3,3
	srwi 3,3,5
	addi 3,3,15
.L1035:
	rldicl 3,3,0,59
	blr
.L1036:
	li 3,0
	b .L1035
.L1037:
	li 3,1
	b .L1035
.L1048:
	li 3,12
	b .L1035
.L1038:
	li 3,2
	b .L1035
.L1039:
	li 3,3
	b .L1035
.L1040:
	li 3,4
	b .L1035
.L1041:
	li 3,5
	b .L1035
.L1042:
	li 3,6
	b .L1035
.L1043:
	li 3,7
	b .L1035
.L1044:
	li 3,8
	b .L1035
.L1045:
	li 3,9
	b .L1035
.L1046:
	li 3,10
	b .L1035
.L1047:
	li 3,11
	b .L1035
.L1049:
	li 3,13
	b .L1035
.L1050:
	li 3,14
	b .L1035
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
	addis 9,2,.LC43@toc@ha
	lfs 0,.LC43@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1058
	fctidz 0,1
	stfd 0,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1058:
	fsubs 1,1,0
	fctidz 0,1
	stfd 0,-16(1)
	ori 2,2,0
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
	rldicl 3,3,0,32
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
.LFB177:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq 0,.L1062
	.p2align 5
.L1063:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 0,10,0
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	bne 0,.L1063
.L1062:
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE177:
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
	beq 0,.L1067
	cmpdi 0,4,0
	beq 0,.L1067
	.p2align 5
.L1068:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	bne 0,.L1068
.L1067:
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
	cmplw 0,4,3
	li 8,16
	mtctr 8
	li 10,32
	li 9,1
	blt 0,.L1073
	b .L1074
	.p2align 4,,15
.L1077:
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1075
	cmpwi 0,4,0
	slwi 8,4,1
	cmplw 7,3,8
	blt 0,.L1074
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1075
	bdz .L1076
.L1073:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge 0,.L1077
.L1074:
	li 10,0
	.p2align 4,,15
.L1079:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt 0,.L1078
	rldicl 3,8,0,32
	or 10,10,9
.L1078:
	srwi 9,9,1
	cmpwi 0,9,0
	bne 0,.L1079
.L1076:
	cmpdi 0,5,0
	beq 0,.L1080
	mr 10,3
.L1080:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L1075:
	cmpwi 0,9,0
	bne 0,.L1074
	li 10,0
	b .L1076
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
	fcmpu 0,1,2
	li 3,-1
	blt 0,.L1093
	mfcr 3
	rlwinm 3,3,2,1
.L1093:
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
	fcmpu 0,1,2
	li 3,-1
	blt 0,.L1096
	mfcr 3
	rlwinm 3,3,2,1
.L1096:
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
	cmpwi 0,4,0
	blt 0,.L1114
	cmpdi 0,4,0
	beq 0,.L1106
	li 6,0
.L1102:
	li 10,32
	li 8,0
	b .L1105
	.p2align 4,,15
.L1115:
	beq 7,.L1104
.L1105:
	rlwinm 9,4,0,31,31
	addi 10,10,-1
	sradi. 4,4,1
	rlwinm 7,10,0,0xff
	neg 9,9
	and 9,9,3
	cmpwi 7,7,0
	slwi 7,3,1
	add 8,8,9
	extsw 3,7
	bne 0,.L1115
.L1104:
	cmpwi 0,6,0
	beq 0,.L1103
	neg 8,8
.L1103:
	extsw 3,8
	blr
	.p2align 4,,15
.L1114:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1102
.L1106:
	li 8,0
	b .L1103
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
	cmpdi 0,3,0
	li 8,0
	bge 0,.L1117
	neg 3,3
	li 8,1
.L1117:
	cmpdi 0,4,0
	bge 0,.L1118
	neg 4,4
	xori 8,8,0x1
.L1118:
	cmplw 0,3,4
	li 10,16
	mtctr 10
	li 9,1
	bgt 0,.L1119
	b .L1120
	.p2align 4,,15
.L1123:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	cmpwi 7,4,0
	ble 0,.L1121
	blt 7,.L1139
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L1121
	bdz .L1130
.L1119:
	cmpwi 0,4,0
	bge 0,.L1123
.L1139:
	cmplw 0,3,4
.L1120:
	li 10,0
	.p2align 5
.L1125:
	blt 0,.L1124
	subf 3,4,3
	or 10,10,9
.L1124:
	srwi 9,9,1
	srwi 4,4,1
	cmpwi 7,9,0
	cmplw 0,3,4
	bne 7,.L1125
	cmpwi 0,8,0
	rldicl 3,10,0,32
	beqlr 0
.L1143:
	neg 3,3
	blr
	.p2align 4,,15
.L1121:
	cmpwi 7,9,0
	bne 7,.L1120
	.p2align 4,,15
.L1130:
	cmpwi 0,8,0
	li 3,0
	beqlr 0
	b .L1143
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
	cmpdi 0,3,0
	li 7,0
	bge 0,.L1145
	neg 3,3
	li 7,1
.L1145:
	sradi 9,4,63
	li 6,16
	mtctr 6
	xor 4,9,4
	subf 9,9,4
	mr 8,3
	cmplw 0,3,9
	li 10,1
	bgt 0,.L1146
	b .L1152
	.p2align 4,,15
.L1150:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	cmpwi 7,9,0
	ble 0,.L1148
	blt 7,.L1169
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1148
	bdz .L1149
.L1146:
	cmpwi 0,9,0
	bge 0,.L1150
.L1169:
	cmplw 0,8,9
	.p2align 5
.L1152:
	srwi 10,10,1
	blt 0,.L1151
	subf 8,9,8
.L1151:
	cmpwi 7,10,0
	srwi 9,9,1
	cmplw 0,8,9
	bne 7,.L1152
.L1149:
	cmpwi 0,7,0
	rldicl 3,8,0,32
	beqlr 0
	neg 3,3
	blr
	.p2align 4,,15
.L1148:
	cmpwi 7,10,0
	bne 7,.L1152
	b .L1149
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
	cmplw 0,4,3
	bge 0,.L1286
	andi. 9,4,0x8000
	bne 0,.L1174
	rldic 9,4,1,48
	cmplw 0,3,9
	ble 0,.L1175
	andi. 10,9,0x8000
	bne 0,.L1176
	rldic 9,4,2,48
	cmplw 0,3,9
	ble 0,.L1177
	andi. 10,9,0x8000
	bne 0,.L1178
	rldic 9,4,3,48
	cmplw 0,3,9
	ble 0,.L1179
	andi. 10,9,0x8000
	bne 0,.L1180
	rldic 9,4,4,48
	cmplw 0,3,9
	ble 0,.L1181
	andi. 10,9,0x8000
	bne 0,.L1182
	rldic 9,4,5,48
	cmplw 0,3,9
	ble 0,.L1183
	andi. 10,9,0x8000
	bne 0,.L1184
	rldic 9,4,6,48
	cmplw 0,3,9
	ble 0,.L1185
	andi. 10,9,0x8000
	bne 0,.L1186
	rldic 9,4,7,48
	cmplw 0,3,9
	ble 0,.L1187
	andi. 10,9,0x8000
	bne 0,.L1188
	rldic 9,4,8,48
	cmplw 0,3,9
	ble 0,.L1189
	andi. 10,9,0x8000
	bne 0,.L1190
	rldic 9,4,9,48
	cmplw 0,3,9
	ble 0,.L1191
	andi. 10,9,0x8000
	bne 0,.L1192
	rldic 9,4,10,48
	cmplw 0,3,9
	ble 0,.L1193
	andi. 10,9,0x8000
	bne 0,.L1194
	rldic 9,4,11,48
	cmplw 0,3,9
	ble 0,.L1195
	andi. 10,9,0x8000
	bne 0,.L1196
	rldic 9,4,12,48
	cmplw 0,3,9
	ble 0,.L1197
	andi. 10,9,0x8000
	bne 0,.L1198
	rldic 9,4,13,48
	cmplw 0,3,9
	ble 0,.L1199
	andi. 10,9,0x8000
	bne 0,.L1200
	rldic 9,4,14,48
	cmplw 0,3,9
	ble 0,.L1201
	andi. 10,9,0x8000
	bne 0,.L1202
	rldic 4,4,15,48
	cmplw 0,3,4
	ble 0,.L1203
	cmpdi 0,4,0
	li 7,0
	bne 0,.L1287
.L1204:
	cmpdi 0,5,0
	beq 0,.L1222
	mr 7,3
.L1222:
	rlwinm 3,7,0,0xffff
	blr
.L1191:
	blt 0,.L1238
	subf 3,9,3
	li 7,512
	rlwinm 3,3,0,0xffff
	li 8,512
	.p2align 4,,15
.L1206:
	srwi 10,8,2
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,2
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1207
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1207:
	srwi 10,8,3
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,3
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1208
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1208:
	srwi 10,8,4
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,4
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1209
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1209:
	srwi 10,8,5
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,5
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1210
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1210:
	srwi 10,8,6
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,6
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1211
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1211:
	srwi 10,8,7
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,7
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1212
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1212:
	srwi 10,8,8
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,8
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1213
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1213:
	srwi 10,8,9
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,9
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1214
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1214:
	srwi 10,8,10
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,10
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1215
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1215:
	srwi 10,8,11
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,11
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1216
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1216:
	srwi 10,8,12
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,12
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1217
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1217:
	srwi 10,8,13
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,13
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1218
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1218:
	srwi 10,8,14
	cmpwi 0,10,0
	mr 6,10
	srdi 10,9,14
	beq 0,.L1204
	cmplw 0,3,10
	blt 0,.L1219
	subf 10,10,3
	or 7,6,7
	rlwinm 3,10,0,0xffff
.L1219:
	cmpwi 0,8,16384
	srdi 9,9,15
	beq 0,.L1204
	cmplw 0,3,9
	blt 0,.L1227
	subf 9,9,3
	ori 7,7,0x1
	rlwinm 3,9,0,0xffff
	b .L1204
.L1227:
	li 3,0
	b .L1204
.L1286:
	li 7,0
	bne 0,.L1204
	li 7,1
	li 3,0
	b .L1204
.L1174:
	subf 4,4,3
	li 7,1
	rlwinm 3,4,0,0xffff
	b .L1204
.L1175:
	blt 0,.L1230
	subf 3,9,3
	li 7,2
	rlwinm 3,3,0,0xffff
	li 8,2
	b .L1206
.L1176:
	subf 3,9,3
	rldicl 4,4,0,49
	rlwinm 3,3,0,0xffff
	li 10,1
	li 7,2
	li 8,2
	.p2align 4,,15
.L1224:
	cmplw 0,3,4
	blt 0,.L1206
	subf 4,4,3
	or 7,7,10
	rlwinm 3,4,0,0xffff
	b .L1206
.L1177:
	blt 0,.L1231
	subf 3,9,3
	li 7,4
	rlwinm 3,3,0,0xffff
	li 8,4
	b .L1206
.L1178:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2
	li 7,4
	li 8,4
	b .L1224
.L1179:
	blt 0,.L1232
	subf 3,9,3
	li 7,8
	rlwinm 3,3,0,0xffff
	li 8,8
	b .L1206
.L1180:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4
	li 7,8
	li 8,8
	b .L1224
.L1181:
	blt 0,.L1233
	subf 3,9,3
	li 7,16
	rlwinm 3,3,0,0xffff
	li 8,16
	b .L1206
.L1182:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8
	li 7,16
	li 8,16
	b .L1224
.L1183:
	blt 0,.L1234
	subf 3,9,3
	li 7,32
	rlwinm 3,3,0,0xffff
	li 8,32
	b .L1206
.L1184:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,16
	li 7,32
	li 8,32
	b .L1224
.L1185:
	blt 0,.L1235
	subf 3,9,3
	li 7,64
	rlwinm 3,3,0,0xffff
	li 8,64
	b .L1206
.L1186:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,32
	li 7,64
	li 8,64
	b .L1224
.L1187:
	blt 0,.L1236
	subf 3,9,3
	li 7,128
	rlwinm 3,3,0,0xffff
	li 8,128
	b .L1206
.L1188:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,64
	li 7,128
	li 8,128
	b .L1224
.L1190:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,128
	li 7,256
	li 8,256
	b .L1224
.L1192:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,256
	li 7,512
	li 8,512
	b .L1224
.L1230:
	li 8,2
	.p2align 4,,15
.L1223:
	rldicl 10,8,63,49
	srdi 4,9,1
	li 7,0
	b .L1224
.L1194:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,512
	li 7,1024
	li 8,1024
	b .L1224
.L1196:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,1024
	li 7,2048
	li 8,2048
	b .L1224
.L1231:
	li 8,4
	b .L1223
.L1232:
	li 8,8
	b .L1223
.L1198:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,2048
	li 7,4096
	li 8,4096
	b .L1224
.L1200:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,4096
	li 7,8192
	li 8,8192
	b .L1224
.L1233:
	li 8,16
	b .L1223
.L1202:
	subf 3,9,3
	srdi 4,9,1
	rlwinm 3,3,0,0xffff
	li 10,8192
	li 7,16384
	li 8,16384
	b .L1224
.L1234:
	li 8,32
	b .L1223
.L1235:
	li 8,64
	b .L1223
.L1203:
	andi. 9,3,0x8000
	li 9,-1
	bne 0,.L1229
	li 8,0
	rlwinm 9,9,0,16,16
	ori 8,8,0x8000
	b .L1223
.L1287:
	li 4,16384
	addi 3,3,-32768
	addi 9,4,16384
	rlwinm 3,3,0,0xffff
	mr 8,9
	li 10,16384
	li 7,-32768
	b .L1224
.L1236:
	li 8,128
	b .L1223
.L1189:
	blt 0,.L1237
	subf 3,9,3
	li 7,256
	rlwinm 3,3,0,0xffff
	li 8,256
	b .L1206
.L1229:
	rlwinm 9,9,0,16,16
	li 7,-32768
	li 3,0
	mr 8,9
	b .L1206
.L1237:
	li 8,256
	b .L1223
.L1193:
	blt 0,.L1239
	subf 3,9,3
	li 7,1024
	rlwinm 3,3,0,0xffff
	li 8,1024
	b .L1206
.L1201:
	blt 0,.L1243
	subf 3,9,3
	li 7,16384
	rlwinm 3,3,0,0xffff
	li 8,16384
	b .L1206
.L1239:
	li 8,1024
	b .L1223
.L1243:
	li 8,16384
	b .L1223
.L1238:
	li 8,512
	b .L1223
.L1199:
	blt 0,.L1242
	subf 3,9,3
	li 7,8192
	rlwinm 3,3,0,0xffff
	li 8,8192
	b .L1206
.L1197:
	blt 0,.L1241
	subf 3,9,3
	li 7,4096
	rlwinm 3,3,0,0xffff
	li 8,4096
	b .L1206
.L1195:
	blt 0,.L1240
	subf 3,9,3
	li 7,2048
	rlwinm 3,3,0,0xffff
	li 8,2048
	b .L1206
.L1242:
	li 8,8192
	b .L1223
.L1241:
	li 8,4096
	b .L1223
.L1240:
	li 8,2048
	b .L1223
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
	cmpld 0,4,3
	li 8,64
	mtctr 8
	mr 10,3
	li 9,1
	blt 0,.L1289
	b .L1309
	.p2align 4,,15
.L1293:
	sldi 4,4,1
	sldi 9,9,1
	cmpld 7,10,4
	ble 7,.L1291
	bdz .L1292
.L1289:
	andis. 3,4,0x8000
	beq 0,.L1293
.L1309:
	cmpld 7,10,4
	li 3,0
	.p2align 5
.L1295:
	blt 7,.L1294
	subf 10,4,10
	or 3,3,9
.L1294:
	srdi. 9,9,1
	srdi 4,4,1
	cmpld 7,10,4
	bne 0,.L1295
.L1292:
	cmpdi 0,5,0
	beqlr 0
	mr 3,10
	blr
	.p2align 4,,15
.L1291:
	cmpdi 0,9,0
	beq 0,.L1292
	li 3,0
	b .L1295
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
	andi. 9,4,0x20
	beq 0,.L1311
	addi 4,4,-32
	li 9,0
	slw 8,3,4
	rldicl 3,9,0,32
	sldi 10,8,32
	or 3,3,10
	blr
	.p2align 4,,15
.L1311:
	cmpdi 0,4,0
	beqlr 0
	sradi 9,3,32
	subfic 8,4,32
	slw 9,9,4
	srw 8,3,8
	or 8,8,9
	slw 9,3,4
	sldi 10,8,32
	rldicl 3,9,0,32
	or 3,3,10
	blr
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
	beq 0,.L1317
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L1317:
	cmpdi 0,5,0
	beqlr 0
	subfic 10,5,64
	sld 4,4,5
	srd 10,3,10
	sld 9,3,5
	or 4,10,4
	mr 3,9
	blr
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
	andi. 10,4,0x20
	mr 9,3
	beq 0,.L1322
	sradi 9,3,32
	addi 4,4,-32
	srawi 3,9,31
	sraw 10,9,4
	rldicl 9,10,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1322:
	cmpdi 0,4,0
	beqlr 0
	sradi 3,3,32
	subfic 10,4,32
	srw 9,9,4
	slw 10,3,10
	or 10,10,9
	sraw 3,3,4
	rldicl 9,10,0,32
	sldi 3,3,32
	or 3,3,9
	blr
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
	beq 0,.L1328
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1328:
	cmpdi 0,5,0
	beqlr 0
	subfic 10,5,64
	srd 3,3,5
	sld 10,4,10
	srad 9,4,5
	or 3,10,3
	mr 4,9
	blr
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
	add 10,9,10
	srw 3,3,8
	rlwinm 9,3,0,24,27
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,2
	subfic 8,9,4
	add 10,9,10
	srw 3,3,8
	rlwinm 9,3,0,28,29
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,1
	subfic 8,9,2
	srw 3,3,8
	andi. 8,3,0x2
	bne 0,.L1335
	subfic 3,3,2
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
	.p2align 4,,15
.L1335:
	add 9,9,10
	li 3,0
	add 3,3,9
	extsw 3,3
	blr
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
	subfic 10,4,0
	subfe 10,10,10
	srdi 9,9,6
	and 4,10,4
	andi. 9,9,0xff
	bne 0,.L1339
	li 3,0
.L1339:
	or 4,4,3
	slwi 9,9,6
	cntlzd 4,4
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
	blt 0,.L1342
	li 9,2
	bgt 0,.L1341
	cmplw 0,3,4
	li 9,0
	blt 0,.L1341
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1341:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1342:
	li 9,0
	rldicl 3,9,0,62
	blr
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
	blt 0,.L1348
	li 9,1
	bgt 0,.L1347
	cmplw 0,3,4
	li 9,-1
	blt 0,.L1347
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1347:
	extsw 3,9
	blr
	.p2align 4,,15
.L1348:
	li 9,-1
	extsw 3,9
	blr
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
	cmpd 0,4,6
	li 9,0
	blt 0,.L1352
	li 9,2
	bgt 0,.L1352
	cmpld 0,3,5
	li 9,0
	blt 0,.L1352
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1352:
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
	add 10,10,8
	rlwinm 9,9,0,30,31
	not 3,9
	srwi 9,9,1
	rlwinm 3,3,0,31,31
	subfic 9,9,2
	neg 3,3
	and 3,3,9
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
	cntlzd 9,3
	srdi 9,9,6
	andi. 9,9,0xff
	bne 0,.L1360
	li 4,0
.L1360:
	addi 10,9,-1
	slwi 9,9,6
	extsw 10,10
	and 3,10,3
	or 4,4,3
	neg 10,4
	and 4,4,10
	cntlzd 4,4
	subfic 4,4,63
	add 3,9,4
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
	bne 0,.L1362
	cmpdi 0,4,0
	li 3,0
	bne 0,.L1366
	extsw 3,3
	blr
	.p2align 4,,15
.L1362:
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
	extsw 3,3
	blr
	.p2align 4,,15
.L1366:
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 3,4,128
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
	andi. 10,4,0x20
	mr 9,3
	beq 0,.L1368
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1368:
	cmpdi 0,4,0
	beqlr 0
	srdi 3,3,32
	subfic 10,4,32
	slw 10,3,10
	srw 9,9,4
	or 9,10,9
	srw 3,3,4
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
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
	beq 0,.L1374
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1374:
	cmpdi 0,5,0
	beqlr 0
	subfic 10,5,64
	srd 3,3,5
	sld 10,4,10
	srd 9,4,5
	or 3,10,3
	mr 4,9
	blr
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
	srwi 3,3,16
	mullw 9,9,3
	srwi 4,4,16
	mullw 10,10,4
	mullw 3,3,4
	srwi 7,8,16
	add 9,9,7
	rlwinm 7,9,0,0xffff
	srwi 9,9,16
	add 10,10,7
	add 9,9,3
	srwi 7,10,16
	rlwimi 8,10,16,0,31-16
	add 9,9,7
	rldicl 3,8,0,32
	sldi 9,9,32
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
	rlwinm 7,3,0,16,31
	rlwinm 9,4,0,16,31
	mullw 8,7,9
	srwi 10,3,16
	mullw 9,9,10
	srwi 6,4,16
	mullw 7,7,6
	mullw 6,10,6
	sradi 5,3,32
	sradi 10,4,32
	srwi 11,8,16
	mullw 4,4,5
	add 9,9,11
	mullw 10,3,10
	rlwinm 5,9,0,0xffff
	srwi 9,9,16
	add 7,7,5
	add 9,9,6
	srwi 6,7,16
	rlwimi 8,7,16,0,31-16
	add 9,9,6
	rldicl 3,8,0,32
	sldi 9,9,32
	or 3,3,9
	sradi 9,3,32
	add 9,10,9
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
	rldicl 9,4,0,32
	rldicl 8,3,0,32
	srdi 10,3,32
	mulld 3,8,9
	mulld 9,9,10
	srdi 4,4,32
	mulld 8,8,4
	mulld 10,10,4
	srdi 7,3,32
	add 4,9,7
	rldicl 9,4,0,32
	srdi 4,4,32
	add 9,8,9
	add 4,4,10
	srdi 10,9,32
	rldimi 3,9,32,0
	add 4,4,10
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
	rldicl 9,5,0,32
	rldicl 8,3,0,32
	srdi 7,3,32
	mr 10,3
	mulld 3,8,9
	mulld 9,9,7
	srdi 11,5,32
	mulld 10,10,6
	mulld 8,8,11
	mulld 7,7,11
	mulld 4,5,4
	srdi 11,3,32
	add 9,9,11
	rldicl 6,9,0,32
	srdi 9,9,32
	add 8,8,6
	add 9,9,7
	srdi 7,8,32
	rldimi 3,8,32,0
	add 9,9,7
	add 10,10,9
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
	srdi 10,3,32
	li 8,27030
	xor 10,10,3
	srwi 9,10,16
	xor 9,9,10
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,8,9
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
	xor 4,3,4
	li 3,27030
	sradi 10,4,32
	xor 10,10,4
	srwi 9,10,16
	xor 9,9,10
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
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
	li 8,27030
	xor 9,9,3
	srwi 10,9,8
	xor 10,10,9
	srwi 9,10,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	sraw 3,8,9
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
	lis 10,0x5555
	srdi 9,3,1
	ori 10,10,0x5555
	rldimi 10,10,32,0
	and 9,9,10
	lis 10,0x3333
	subf 3,9,3
	ori 9,10,0x3333
	rldimi 9,9,32,0
	srdi 8,3,2
	and 8,8,9
	and 3,3,9
	add 8,8,3
	lis 10,0xf0f
	srdi 9,8,4
	ori 10,10,0xf0f
	add 9,9,8
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
	lis 0,0x5555
	std 30,-16(1)
	sldi 12,4,63
	std 31,-8(1)
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	srdi 30,3,1
	ori 0,0,0x5555
	std 24,-64(1)
	std 25,-56(1)
	rldimi 0,0,32,0
	or 30,12,30
	std 26,-48(1)
	std 27,-40(1)
	and 30,30,0
	srdi 31,4,1
	std 28,-32(1)
	std 29,-24(1)
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	subfc 10,30,3
	and 31,31,0
	subfe 11,31,4
	lis 5,0x3333
	ld 30,-16(1)
	ld 31,-8(1)
	sldi 3,11,62
	ori 4,5,0x3333
	ld 24,-64(1)
	ld 25,-56(1)
	srdi 8,10,2
	rldimi 4,4,32,0
	ld 26,-48(1)
	ld 27,-40(1)
	or 8,3,8
	mr 5,11
	ld 28,-32(1)
	ld 29,-24(1)
	srdi 9,11,2
	and 8,8,4
	and 11,10,4
	and 12,5,4
	and 9,9,4
	addc 4,8,11
	adde 8,9,12
	srdi 9,4,4
	rldimi 9,8,60,0
	lis 5,0xf0f
	addc 6,9,4
	srdi 3,8,4
	ori 5,5,0xf0f
	adde 7,3,8
	rldimi 5,5,32,0
	and 6,6,5
	and 7,7,5
	add 6,7,6
	srdi 10,6,32
	add 10,10,6
	srwi 9,10,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
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
	addis 9,2,.LC36@toc@ha
	fmr 0,1
	lfd 12,.LC36@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq 0,.L1392
	.p2align 4,,15
.L1394:
	fmul 1,1,0
.L1392:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1393
	andi. 10,9,0x1
	fmul 0,0,0
	srawi 10,9,1
	addze 10,10
	bne 0,.L1394
.L1398:
	extsw 9,10
	fmul 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne 0,.L1394
	b .L1398
	.p2align 4,,15
.L1393:
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
	addis 9,2,.LC37@toc@ha
	fmr 0,1
	lfs 12,.LC37@toc@l(9)
	andi. 9,4,0x1
	mr 9,4
	fmr 1,12
	beq 0,.L1400
	.p2align 4,,15
.L1402:
	fmuls 1,1,0
.L1400:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1401
	andi. 10,9,0x1
	fmuls 0,0,0
	srawi 10,9,1
	addze 10,10
	bne 0,.L1402
.L1406:
	extsw 9,10
	fmuls 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne 0,.L1402
	b .L1406
	.p2align 4,,15
.L1401:
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
	blt 0,.L1409
	li 9,2
	bgt 0,.L1408
	cmplw 0,3,4
	li 9,0
	blt 0,.L1408
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1408:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1409:
	li 9,0
	rldicl 3,9,0,62
	blr
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
	blt 0,.L1415
	li 9,1
	bgt 0,.L1414
	cmplw 0,3,4
	li 9,-1
	blt 0,.L1414
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1414:
	extsw 3,9
	blr
	.p2align 4,,15
.L1415:
	li 9,-1
	extsw 3,9
	blr
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
	cmpld 0,4,6
	li 9,0
	blt 0,.L1419
	li 9,2
	bgt 0,.L1419
	cmpld 0,3,5
	li 9,0
	blt 0,.L1419
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1419:
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
	.long	-1074790400
	.align 3
.LC34:
	.long	0
	.long	-1075838976
	.align 3
.LC36:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC37:
	.long	1065353216
	.align 2
.LC43:
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
