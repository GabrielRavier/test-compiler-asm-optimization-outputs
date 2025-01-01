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
	bun 0,.L239
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L235
	cmpwi 0,9,0
	fmr 1,2
	bnelr 0
.L239:
	lfs 1,-16(1)
	blr
	.p2align 4,,15
.L235:
	lfs 0,-16(1)
	lfs 12,-12(1)
	fcmpu 0,0,12
	fmr 1,0
	bnllr 0
	fmr 1,12
	blr
	.p2align 4,,15
.L238:
	lfs 1,-12(1)
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
	bun 0,.L267
	lwz 9,-16(1)
	lwz 10,-12(1)
	rlwinm 9,9,0,0,0
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	bne 0,.L271
	lfs 12,-12(1)
	lfs 0,-16(1)
	fcmpu 0,0,12
	fmr 1,12
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
	lfs 1,-12(1)
	blr
	.p2align 4,,15
.L267:
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
.LCF49:
0:	addis 2,12,.TOC.-.LCF49@ha
	addi 2,2,.TOC.-.LCF49@l
	.localentry	atoll,.-atoll
	b atol
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
	beq 0,.L376
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
	b .L379
	.p2align 4,,15
.L388:
	beq 0,.L386
	cmpdi 0,31,0
	add 26,30,27
	beq 0,.L387
.L379:
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
	bge 0,.L388
	mr 31,29
	cmpdi 0,31,0
	bne 0,.L379
.L387:
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
.L376:
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
.L386:
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
	beq 0,.L393
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
	b .L390
	.p2align 4,,15
.L401:
	cmpwi 0,31,0
	add 27,30,28
	beq 0,.L400
.L390:
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
	beq 0,.L399
	bgt 0,.L401
	mr 31,26
	cmpwi 0,31,0
	bne 0,.L390
.L400:
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
.L393:
	addi 1,1,96
	.cfi_def_cfa_offset 0
	li 30,0
	mr 3,30
	ld 30,-16(1)
	.cfi_restore 30
	blr
	.p2align 4,,15
.L399:
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
	beq 0,.L413
	.p2align 5
.L410:
	cmpw 0,9,4
	beqlr 0
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne 0,.L410
.L413:
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
	beq 0,.L418
	b .L417
	.p2align 4,,15
.L419:
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	bne 0,.L417
.L418:
	cmpwi 7,9,0
	bne 7,.L419
.L417:
	li 3,-1
	blt 0,.L420
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L420:
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
.L423:
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	beqlr 0
	lwzu 9,4(4)
	cmpwi 0,9,0
	stwu 9,4(10)
	bne 0,.L423
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
	beq 0,.L429
	mr 9,3
	.p2align 4,,15
.L428:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L428
	subf 3,3,9
	sradi 3,3,2
	blr
	.p2align 4,,15
.L429:
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
	beq 0,.L441
	mtctr 5
	b .L432
	.p2align 4,,15
.L443:
	beq 7,.L434
	addi 3,3,4
	addi 4,4,4
	bdz .L441
.L432:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	cmpwi 7,9,0
	beq 0,.L443
.L434:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bge 0,.L436
	li 3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L436:
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
	.p2align 4,,15
.L441:
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
	beq 0,.L448
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L464
.L451:
	srdi 9,5,1
	mtctr 9
.L445:
	lwz 9,0(3)
	cmpw 0,9,4
	beqlr 0
	lwzu 9,4(3)
	cmpw 0,9,4
	beqlr 0
	addi 3,3,4
	bdnz .L445
.L448:
	li 3,0
	blr
	.p2align 4,,15
.L464:
	lwz 10,0(3)
	cmpw 0,10,4
	beqlr 0
	cmpdi 0,9,0
	addi 3,3,4
	bne 0,.L451
	b .L448
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
	beq 0,.L471
	andi. 9,5,0x1
	addi 8,5,-1
	bne 0,.L486
.L474:
	srdi 9,5,1
	mtctr 9
	b .L466
	.p2align 4,,15
.L468:
	lwz 9,4(3)
	lwz 10,4(4)
	addi 3,7,4
	addi 4,8,4
	cmpw 0,9,10
	bne 0,.L483
	bdz .L471
.L466:
	lwz 9,0(3)
	lwz 10,0(4)
	addi 7,3,4
	addi 8,4,4
	cmpw 0,9,10
	beq 0,.L468
.L483:
	blt 0,.L487
	extsw 3,9
	extsw 10,10
	subf 3,3,10
	srdi 3,3,63
	extsw 3,3
	blr
	.p2align 4,,15
.L486:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne 0,.L483
	cmpdi 0,8,0
	addi 3,3,4
	addi 4,4,4
	bne 0,.L474
.L471:
	li 3,0
	extsw 3,3
	blr
	.p2align 4,,15
.L487:
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
	beq 0,.L489
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
.L489:
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
	bge 0,.L521
	cmpdi 0,5,0
	beqlr 0
	andi. 10,5,0x1
	add 4,4,9
	addi 10,5,-1
	add 9,3,9
	bne 0,.L522
.L508:
	srdi 10,5,1
	mtctr 10
.L499:
	lwz 7,-4(4)
	mr 8,4
	addi 10,9,-4
	addi 4,4,-8
	addi 9,9,-8
	stw 7,4(9)
	lwz 8,-8(8)
	stw 8,-4(10)
	bdnz .L499
	blr
	.p2align 4,,15
.L521:
	cmpdi 0,5,0
	addi 9,4,-4
	addi 10,3,-4
	beqlr 0
	andi. 8,5,0x1
	addi 8,5,-1
	bne 0,.L523
.L511:
	srdi 8,5,1
	mtctr 8
.L500:
	lwz 6,4(9)
	mr 7,9
	addi 8,10,4
	addi 9,9,8
	addi 10,10,8
	stw 6,-4(10)
	lwz 7,8(7)
	stw 7,4(8)
	bdnz .L500
	blr
	.p2align 4,,15
.L522:
	cmpdi 0,10,0
	lwzu 10,-4(4)
	stwu 10,-4(9)
	bne 0,.L508
	blr
	.p2align 4,,15
.L523:
	cmpdi 0,8,0
	lwz 8,0(4)
	mr 9,4
	mr 10,3
	stw 8,0(3)
	bne 0,.L511
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
	beq 0,.L535
	cmpdi 0,8,1
	beq 0,.L539
	cmpdi 0,8,2
	beq 0,.L540
	stw 4,0(3)
	mr 5,7
	mr 9,3
.L540:
	stwu 4,4(9)
	addi 5,5,-1
.L539:
	cmpdi 0,5,1
	stwu 4,4(9)
	beqlr 0
.L535:
	srdi 10,10,2
	mtctr 10
.L526:
	stw 4,4(9)
	stw 4,8(9)
	stw 4,12(9)
	stwu 4,16(9)
	bdnz .L526
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
	bge 0,.L548
	cmpdi 0,5,0
	add 3,3,5
	add 4,4,5
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	beq 0,.L559
	cmpdi 0,9,0
	lbzu 9,-1(3)
	stbu 9,-1(4)
	beqlr 0
.L559:
	srdi 9,5,1
	mtctr 9
.L550:
	lbz 8,-1(3)
	mr 10,3
	addi 9,4,-1
	addi 3,3,-2
	addi 4,4,-2
	stb 8,1(4)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L550
	blr
	.p2align 4,,15
.L548:
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	andi. 9,5,0x1
	addi 10,3,-1
	addi 9,4,-1
	addi 8,5,-1
	bne 0,.L572
.L562:
	srdi 8,5,1
	mtctr 8
.L551:
	lbz 6,1(10)
	mr 7,10
	addi 8,9,1
	addi 10,10,2
	addi 9,9,2
	stb 6,-1(9)
	lbz 7,2(7)
	stb 7,1(8)
	bdnz .L551
	blr
	.p2align 4,,15
.L572:
	cmpdi 0,8,0
	lbz 8,0(3)
	mr 10,3
	mr 9,4
	stb 8,0(4)
	bne 0,.L562
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
	b .L589
	.p2align 4,,15
.L597:
	addi 9,9,1
	bne 0,.L588
	bdz .L596
.L589:
	srw 8,3,9
	addi 9,9,1
	rldicl 8,8,0,63
	srw 10,3,9
	cmpdi 7,8,0
	andi. 10,10,0x1
	beq 7,.L597
.L588:
	extsw 3,9
	blr
	.p2align 4,,15
.L596:
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
	beq 0,.L601
	andi. 3,9,0x1
	bne 0,.L599
	li 3,1
	.p2align 4,,15
.L600:
	srawi 9,9,1
	addi 3,3,1
	andi. 10,9,0x1
	beq 0,.L600
.L599:
	extsw 3,3
	blr
	.p2align 4,,15
.L601:
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
	blt 0,.L605
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L605:
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
	blt 0,.L608
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L608:
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
	blt 0,.L611
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L611:
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
	blt 0,.L627
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
.L616:
	andi. 9,4,0x1
	beq 0,.L617
	.p2align 4,,15
.L618:
	fmuls 1,1,0
.L617:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmuls 0,0,0
	srawi 9,4,1
	addze 9,9
	bne 0,.L618
.L628:
	extsw 4,9
	fmuls 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne 0,.L618
	b .L628
	.p2align 4,,15
.L627:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L616
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
	blt 0,.L642
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
.L631:
	andi. 9,4,0x1
	beq 0,.L632
	.p2align 4,,15
.L633:
	fmul 1,1,0
.L632:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	andi. 9,4,0x1
	fmul 0,0,0
	srawi 9,4,1
	addze 9,9
	bne 0,.L633
.L643:
	extsw 4,9
	fmul 0,0,0
	andi. 9,4,0x1
	srawi 9,4,1
	addze 9,9
	bne 0,.L633
	b .L643
	.p2align 4,,15
.L642:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L631
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
	bun 0,.L645
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
	beq 0,.L660
	cmpwi 0,31,0
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	blt 0,.L661
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
.L646:
	andi. 9,31,0x1
	beq 0,.L647
	.p2align 4,,15
.L648:
	fmr 1,28
	fmr 2,29
	fmr 3,30
	fmr 4,31
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
.L647:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L659
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
	bne 0,.L648
.L662:
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
	bne 0,.L648
	b .L662
	.p2align 4,,15
.L659:
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
.L660:
	ld 0,96(1)
	ld 31,40(1)
	.cfi_restore 31
	mtlr 0
	.cfi_restore 65
.L645:
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
.L661:
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
	b .L646
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
	bne 0,.L676
.L670:
	srdi 10,5,1
	mtctr 10
.L665:
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
	bdnz .L665
	blr
	.p2align 4,,15
.L676:
	lbz 10,0(3)
	cmpdi 0,8,0
	lbz 8,0(4)
	mr 7,4
	mr 9,3
	xor 10,10,8
	stb 10,0(3)
	bne 0,.L670
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
	beq 0,.L678
	.p2align 4,,15
.L679:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L679
.L678:
	cmpdi 0,5,0
	beq 0,.L680
	andi. 10,5,0x1
	addi 7,5,-1
	addi 10,4,-1
	bne 0,.L702
.L691:
	srdi 8,5,1
	mtctr 8
.L681:
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
	bdnz .L681
.L680:
	li 10,0
	stb 10,0(9)
	blr
	.p2align 4,,15
.L702:
	lbz 8,0(4)
	mr 10,4
	rlwinm 6,8,0,0xff
	stb 8,0(9)
	cmpwi 0,6,0
	beqlr 0
	cmpdi 0,7,0
	addi 9,9,1
	bne 0,.L691
	b .L680
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
	beq 0,.L715
	cmpdi 0,8,1
	beq 0,.L726
	cmpdi 0,8,2
	beq 0,.L727
	lbz 8,0(9)
	cmpwi 0,8,0
	beqlr 0
	li 3,1
.L727:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
.L726:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	cmpld 0,4,3
	beqlr 0
	.p2align 4,,15
.L715:
	srdi 10,10,2
.L704:
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
	bne 0,.L704
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
	beq 0,.L739
.L735:
	mr 10,4
	b .L738
	.p2align 4,,15
.L737:
	beqlr 7
.L738:
	lbzu 9,1(10)
	cmpwi 0,9,0
	cmpw 7,9,8
	bne 0,.L737
	lbzu 8,1(3)
	cmpwi 0,8,0
	bne 0,.L735
.L739:
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
.L744:
	lbz 10,0(9)
	cmpw 7,10,4
	cmpwi 0,10,0
	bne 7,.L743
	mr 3,9
.L743:
	addi 9,9,1
	bne 0,.L744
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
	mr 10,3
	andi. 5,11,0xff
	beq 0,.L760
	mr 9,4
	.p2align 4,,15
.L749:
	lbzu 8,1(9)
	cmpwi 0,8,0
	bne 0,.L749
	subf. 9,4,9
	mr 3,10
	beqlr 0
	addi 3,9,-1
	b .L757
	.p2align 4,,15
.L770:
	cmpwi 0,9,0
	addi 10,10,1
	beq 0,.L769
.L757:
	lbz 9,0(10)
	cmpw 0,5,9
	bne 0,.L770
	addi 0,3,1
	mr 6,4
	mtctr 0
	mr 8,11
	mr 7,10
	b .L751
	.p2align 4,,15
.L772:
	bdz .L753
	bne 7,.L754
	lbzu 9,1(7)
	cmpwi 0,9,0
	beq 0,.L771
	lbzu 8,1(6)
.L751:
	andi. 8,8,0xff
	cmpw 7,8,9
	bne 0,.L772
	.p2align 4,,15
.L754:
	addi 10,10,1
	b .L757
	.p2align 4,,15
.L771:
	lbz 8,1(6)
.L753:
	cmpw 0,9,8
	bne 0,.L754
.L760:
	mr 3,10
	blr
	.p2align 4,,15
.L769:
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
	blt 0,.L783
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	fneg 1,1
	blr
	.p2align 4,,15
.L783:
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
	mr 8,3
	beqlr 0
	cmpld 0,4,6
	blt 0,.L791
	subf 4,6,4
	std 31,-8(1)
	.cfi_offset 31, -8
	add 31,3,4
	cmpld 0,3,31
	bgt 0,.L792
	std 30,-16(1)
	.cfi_offset 30, -16
	cmpldi 7,6,1
	lbz 30,0(5)
	add 4,3,6
	addi 11,3,-1
	b .L789
	.p2align 4,,15
.L786:
	cmpld 0,31,8
	addi 4,4,1
	blt 0,.L813
.L789:
	lbzu 9,1(11)
	mr 3,8
	addi 8,8,1
	cmpw 0,9,30
	bne 0,.L786
	beq 7,.L812
	subf 9,11,4
	mr 7,5
	addi 9,9,-1
	mr 10,11
	andi. 6,9,0x1
	beq 0,.L799
	lbz 0,1(11)
	lbz 6,1(5)
	addi 10,11,1
	addi 7,5,1
	cmpw 0,0,6
	bne 0,.L786
	subf 6,10,4
	cmpldi 0,6,1
	beq 0,.L812
.L799:
	srdi 9,9,1
	mtctr 9
.L787:
	lbz 12,1(10)
	lbz 0,1(7)
	addi 6,10,1
	addi 9,7,1
	addi 10,6,1
	addi 7,9,1
	cmpw 0,12,0
	bne 0,.L786
	lbz 6,1(6)
	lbz 9,1(9)
	cmpw 0,6,9
	bne 0,.L786
	bdnz .L787
.L812:
	ld 30,-16(1)
	.cfi_restore 30
.L784:
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.p2align 4,,15
.L813:
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	ld 30,-16(1)
	.cfi_restore 30
	ld 31,-8(1)
	li 3,0
	.cfi_restore 31
	blr
.L791:
	li 3,0
	blr
.L792:
	.cfi_offset 31, -8
	li 3,0
	b .L784
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
	std 31,-8(1)
	.cfi_offset 31, -8
	mr. 31,5
	std 30,-16(1)
	.cfi_offset 30, -16
	mr 30,3
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	beq 0,.L815
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memmove
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L815:
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
	blt 7,.L843
	addis 9,2,.LC36@toc@ha
	li 10,0
	lfd 0,.LC36@toc@l(9)
	fcmpu 0,1,0
	cror 2,1,2
	bne 0,.L844
.L823:
	addis 9,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(9)
	addis 9,2,.LC36@toc@ha
	lfd 0,.LC36@toc@l(9)
	li 9,0
	.p2align 5
.L829:
	fmul 1,1,12
	addi 9,9,1
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L829
	cmpwi 0,10,0
	stw 9,0(4)
	beqlr 0
.L846:
	fneg 1,1
	blr
	.p2align 4,,15
.L844:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L826
	bne 7,.L835
.L826:
	li 9,0
	stw 9,0(4)
	blr
	.p2align 4,,15
.L843:
	addis 9,2,.LC32@toc@ha
	fneg 12,1
	lfd 0,.LC32@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,2
	bne 0,.L845
	fmr 1,12
	li 10,1
	b .L823
	.p2align 4,,15
.L845:
	addis 9,2,.LC34@toc@ha
	lfd 0,.LC34@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L826
	li 10,1
.L824:
	fmr 1,12
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	li 9,0
	.p2align 4,,15
.L831:
	fadd 1,1,1
	addi 9,9,-1
	fcmpu 0,1,0
	blt 0,.L831
	cmpwi 0,10,0
	stw 9,0(4)
	bne 0,.L846
	blr
.L835:
	fmr 12,1
	b .L824
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
.L849:
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
	bne 0,.L849
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
	blt 0,.L854
	b .L855
	.p2align 4,,15
.L858:
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L856
	cmpwi 0,4,0
	slwi 8,4,1
	cmplw 7,3,8
	blt 0,.L855
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L856
	bdz .L857
.L854:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge 0,.L858
.L855:
	li 10,0
	.p2align 4,,15
.L860:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt 0,.L859
	rldicl 3,8,0,32
	or 10,10,9
.L859:
	srwi 9,9,1
	cmpwi 0,9,0
	bne 0,.L860
.L857:
	cmpdi 0,5,0
	beq 0,.L861
	mr 10,3
.L861:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L856:
	cmpwi 0,9,0
	bne 0,.L855
	li 10,0
	b .L857
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
	beq 0,.L875
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L875:
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
	beq 0,.L878
	cntlzd 3,3
	addi 3,3,-1
	extsw 3,3
	blr
	.p2align 4,,15
.L878:
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
	beq 0,.L880
	.p2align 5
.L881:
	rlwinm 9,10,0,31,31
	srdi. 10,10,1
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	bne 0,.L881
.L880:
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
	blt 0,.L888
	add 7,4,5
	mr 8,5
	cmpld 0,3,7
	ble 0,.L919
.L888:
	cmpwi 0,10,0
	addi 8,4,-8
	addi 7,3,-8
	beq 0,.L887
	andi. 6,10,0x1
	addi 6,10,-1
	bne 0,.L920
.L903:
	srdi 10,10,1
	mtctr 10
.L891:
	ld 11,8(8)
	mr 6,8
	addi 10,7,8
	addi 8,8,16
	addi 7,7,16
	std 11,-8(7)
	ld 6,16(6)
	std 6,8(10)
	bdnz .L891
.L887:
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
	bne 0,.L921
.L900:
	srdi 9,5,1
	mtctr 9
.L892:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	addi 4,4,2
	addi 3,3,2
	stb 8,-1(3)
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L892
	blr
	.p2align 4,,15
.L921:
	cmpdi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne 0,.L900
	blr
	.p2align 4,,15
.L920:
	cmpdi 0,6,0
	ld 6,0(4)
	mr 8,4
	mr 7,3
	std 6,0(3)
	bne 0,.L903
	b .L887
	.p2align 4,,15
.L919:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L922
.L906:
	srdi 9,8,1
	mtctr 9
.L893:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L893
	blr
	.p2align 4,,15
.L922:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne 0,.L906
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
	blt 0,.L927
	add 8,4,5
	mr 10,5
	cmpld 0,3,8
	ble 0,.L954
.L927:
	cmpwi 0,9,0
	addi 10,4,-2
	addi 8,3,-2
	beq 0,.L926
	andi. 7,9,0x1
	addi 7,9,-1
	bne 0,.L955
.L940:
	srdi 9,9,1
	mtctr 9
.L930:
	lhz 6,2(10)
	mr 7,10
	addi 9,8,2
	addi 10,10,4
	addi 8,8,4
	sth 6,-2(8)
	lhz 7,4(7)
	sth 7,2(9)
	bdnz .L930
.L926:
	andi. 9,5,0x1
	beqlr 0
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	blr
	.p2align 4,,15
.L955:
	cmpdi 0,7,0
	lhz 7,0(4)
	mr 10,4
	mr 8,3
	sth 7,0(3)
	bne 0,.L940
	b .L926
	.p2align 4,,15
.L954:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L956
.L943:
	srdi 9,10,1
	mtctr 9
.L932:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L932
	blr
	.p2align 4,,15
.L956:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne 0,.L943
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
	blt 0,.L961
	add 7,4,5
	mr 8,5
	cmpld 0,3,7
	ble 0,.L992
.L961:
	cmpwi 0,10,0
	addi 8,4,-4
	addi 7,3,-4
	beq 0,.L960
	andi. 6,10,0x1
	addi 6,10,-1
	bne 0,.L993
.L976:
	srdi 10,10,1
	mtctr 10
.L964:
	lwz 11,4(8)
	mr 6,8
	addi 10,7,4
	addi 8,8,8
	addi 7,7,8
	stw 11,-4(7)
	lwz 6,8(6)
	stw 6,4(10)
	bdnz .L964
.L960:
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
	bne 0,.L994
.L973:
	srdi 9,5,1
	mtctr 9
.L965:
	lbz 8,1(4)
	mr 10,4
	addi 9,3,1
	addi 4,4,2
	addi 3,3,2
	stb 8,-1(3)
	lbz 10,2(10)
	stb 10,1(9)
	bdnz .L965
	blr
	.p2align 4,,15
.L994:
	cmpdi 0,9,0
	lbzu 9,1(4)
	stbu 9,1(3)
	bne 0,.L973
	blr
	.p2align 4,,15
.L993:
	cmpdi 0,6,0
	lwz 6,0(4)
	mr 8,4
	mr 7,3
	stw 6,0(3)
	bne 0,.L976
	b .L960
	.p2align 4,,15
.L992:
	cmpdi 0,5,0
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	beqlr 0
	andi. 9,5,0x1
	addi 9,5,-1
	bne 0,.L995
.L979:
	srdi 9,8,1
	mtctr 9
.L966:
	lbz 8,-1(4)
	mr 10,4
	addi 9,3,-1
	addi 4,4,-2
	addi 3,3,-2
	stb 8,1(3)
	lbz 10,-2(10)
	stb 10,-1(9)
	bdnz .L966
	blr
	.p2align 4,,15
.L995:
	cmpdi 0,9,0
	lbzu 9,-1(4)
	stbu 9,-1(3)
	bne 0,.L979
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
	blt 0,.L1002
	std 3,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 1,0
	blr
	.p2align 4,,15
.L1002:
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
	blt 0,.L1005
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	blt 0,.L1008
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L1008:
	mr 9,3
	std 9,-16(1)
	ori 2,2,0
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
	.p2align 4,,15
.L1005:
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
	bge 0,.L1007
	mr 9,3
.L1007:
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
	li 10,8
	li 9,0
	mtctr 10
	.p2align 4,,15
.L1012:
	subfic 10,9,15
	sraw 10,3,10
	andi. 10,10,0x1
	bne 0,.L1011
	addi 9,9,1
	subfic 10,9,15
	sraw 10,3,10
	andi. 10,10,0x1
	bne 0,.L1011
	addi 9,9,1
	bdnz .L1012
.L1011:
	extsw 3,9
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
	li 10,8
	li 9,0
	mtctr 10
	.p2align 4,,15
.L1019:
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L1018
	addi 9,9,1
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L1018
	addi 9,9,1
	bdnz .L1019
.L1018:
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
	addis 9,2,.LC43@toc@ha
	lfs 0,.LC43@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	bne 0,.L1030
	fctidz 0,1
	stfd 0,-16(1)
	ori 2,2,0
	ld 3,-16(1)
	blr
	.p2align 4,,15
.L1030:
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
	li 9,4
	li 7,0
	mtctr 9
	li 8,0
	li 6,0
.L1032:
	addi 9,8,1
	sraw 5,3,8
	sraw 4,3,9
	addi 10,8,3
	addi 9,9,1
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
	bdnz .L1032
	add 3,7,6
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
	li 9,4
	li 7,0
	mtctr 9
	li 8,0
	li 6,0
.L1039:
	addi 9,8,1
	sraw 5,3,8
	sraw 4,3,9
	addi 10,8,3
	addi 9,9,1
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
	bdnz .L1039
	add 3,7,6
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
.LFB177:
	.cfi_startproc
	mr. 10,3
	li 3,0
	beq 0,.L1046
	.p2align 5
.L1047:
	rlwinm 9,10,0,31,31
	srwi 10,10,1
	cmpwi 0,10,0
	neg 9,9
	and 9,9,4
	slwi 4,4,1
	add 3,3,9
	bne 0,.L1047
.L1046:
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
	beq 0,.L1051
	cmpdi 0,4,0
	beq 0,.L1051
	.p2align 5
.L1052:
	rlwinm 9,4,0,31,31
	srdi. 4,4,1
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	bne 0,.L1052
.L1051:
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
	blt 0,.L1057
	b .L1058
	.p2align 4,,15
.L1061:
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1059
	cmpwi 0,4,0
	slwi 8,4,1
	cmplw 7,3,8
	blt 0,.L1058
	rldicl 4,8,0,32
	slwi 9,9,1
	ble 7,.L1059
	bdz .L1060
.L1057:
	cmpwi 0,4,0
	slwi 8,4,1
	addi 10,10,-1
	cmplw 7,3,8
	addi 10,10,-1
	bge 0,.L1061
.L1058:
	li 10,0
	.p2align 4,,15
.L1063:
	cmplw 0,3,4
	subf 8,4,3
	srdi 4,4,1
	blt 0,.L1062
	rldicl 3,8,0,32
	or 10,10,9
.L1062:
	srwi 9,9,1
	cmpwi 0,9,0
	bne 0,.L1063
.L1060:
	cmpdi 0,5,0
	beq 0,.L1064
	mr 10,3
.L1064:
	rldicl 3,10,0,32
	blr
	.p2align 4,,15
.L1059:
	cmpwi 0,9,0
	bne 0,.L1058
	li 10,0
	b .L1060
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
	blt 0,.L1077
	mfcr 3
	rlwinm 3,3,2,1
.L1077:
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
	blt 0,.L1080
	mfcr 3
	rlwinm 3,3,2,1
.L1080:
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
	blt 0,.L1098
	cmpdi 0,4,0
	beq 0,.L1090
	li 6,0
.L1086:
	li 10,32
	li 8,0
	b .L1089
	.p2align 4,,15
.L1099:
	beq 7,.L1088
.L1089:
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
	bne 0,.L1099
.L1088:
	cmpwi 0,6,0
	beq 0,.L1087
	neg 8,8
.L1087:
	extsw 3,8
	blr
	.p2align 4,,15
.L1098:
	neg 4,4
	li 6,1
	extsw 4,4
	b .L1086
.L1090:
	li 8,0
	b .L1087
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
	bge 0,.L1101
	neg 3,3
	li 8,1
.L1101:
	cmpdi 0,4,0
	bge 0,.L1102
	neg 4,4
	xori 8,8,0x1
.L1102:
	cmplw 0,3,4
	li 10,16
	mtctr 10
	li 9,1
	bgt 0,.L1103
	b .L1104
	.p2align 4,,15
.L1107:
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	cmpwi 7,4,0
	ble 0,.L1105
	blt 7,.L1123
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L1105
	bdz .L1114
.L1103:
	cmpwi 0,4,0
	bge 0,.L1107
.L1123:
	cmplw 0,3,4
.L1104:
	li 10,0
	.p2align 5
.L1109:
	blt 0,.L1108
	subf 3,4,3
	or 10,10,9
.L1108:
	srwi 9,9,1
	srwi 4,4,1
	cmpwi 7,9,0
	cmplw 0,3,4
	bne 7,.L1109
	cmpwi 0,8,0
	rldicl 3,10,0,32
	beqlr 0
.L1127:
	neg 3,3
	blr
	.p2align 4,,15
.L1105:
	cmpwi 7,9,0
	bne 7,.L1104
	.p2align 4,,15
.L1114:
	cmpwi 0,8,0
	li 3,0
	beqlr 0
	b .L1127
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
	bge 0,.L1129
	neg 3,3
	li 7,1
.L1129:
	sradi 9,4,63
	li 6,16
	mtctr 6
	xor 4,9,4
	subf 9,9,4
	mr 8,3
	cmplw 0,3,9
	li 10,1
	bgt 0,.L1130
	b .L1136
	.p2align 4,,15
.L1134:
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	cmpwi 7,9,0
	ble 0,.L1132
	blt 7,.L1153
	slwi 9,9,1
	slwi 10,10,1
	cmplw 0,8,9
	ble 0,.L1132
	bdz .L1133
.L1130:
	cmpwi 0,9,0
	bge 0,.L1134
.L1153:
	cmplw 0,8,9
	.p2align 5
.L1136:
	srwi 10,10,1
	blt 0,.L1135
	subf 8,9,8
.L1135:
	cmpwi 7,10,0
	srwi 9,9,1
	cmplw 0,8,9
	bne 7,.L1136
.L1133:
	cmpwi 0,7,0
	rldicl 3,8,0,32
	beqlr 0
	neg 3,3
	blr
	.p2align 4,,15
.L1132:
	cmpwi 7,10,0
	bne 7,.L1136
	b .L1133
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
	li 10,16
	mtctr 10
	li 9,1
	bge 0,.L1172
	.p2align 5
.L1156:
	andi. 10,4,0x8000
	slwi 10,9,1
	bne 0,.L1172
	rldic 4,4,1,48
	mr 9,10
	cmplw 7,3,4
	ble 7,.L1158
	bdnz .L1156
	li 10,0
.L1159:
	cmpdi 0,5,0
	beq 0,.L1163
	mr 10,3
.L1163:
	rlwinm 3,10,0,0xffff
	blr
	.p2align 4,,15
.L1158:
	andi. 8,10,0xfffe
	beq 0,.L1159
.L1157:
	li 10,0
	.p2align 4,,15
.L1162:
	rldicl 8,9,63,49
	blt 7,.L1161
	subf 3,4,3
	or 10,9,10
	rlwinm 3,3,0,0xffff
.L1161:
	cmpwi 0,8,0
	srdi 4,4,1
	cmplw 7,3,4
	mr 9,8
	bne 0,.L1162
	b .L1159
	.p2align 4,,15
.L1172:
	cmplw 7,3,4
	b .L1157
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
	blt 0,.L1174
	b .L1194
	.p2align 4,,15
.L1178:
	sldi 4,4,1
	sldi 9,9,1
	cmpld 7,10,4
	ble 7,.L1176
	bdz .L1177
.L1174:
	andis. 3,4,0x8000
	beq 0,.L1178
.L1194:
	cmpld 7,10,4
	li 3,0
	.p2align 5
.L1180:
	blt 7,.L1179
	subf 10,4,10
	or 3,3,9
.L1179:
	srdi. 9,9,1
	srdi 4,4,1
	cmpld 7,10,4
	bne 0,.L1180
.L1177:
	cmpdi 0,5,0
	beqlr 0
	mr 3,10
	blr
	.p2align 4,,15
.L1176:
	cmpdi 0,9,0
	beq 0,.L1177
	li 3,0
	b .L1180
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
	beq 0,.L1196
	addi 4,4,-32
	li 9,0
	slw 8,3,4
	rldicl 3,9,0,32
	sldi 10,8,32
	or 3,3,10
	blr
	.p2align 4,,15
.L1196:
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
	beq 0,.L1202
	addi 5,5,-64
	li 9,0
	sld 4,3,5
	mr 3,9
	blr
	.p2align 4,,15
.L1202:
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
	beq 0,.L1207
	sradi 9,3,32
	addi 4,4,-32
	srawi 3,9,31
	sraw 10,9,4
	rldicl 9,10,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1207:
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
	beq 0,.L1213
	addi 5,5,-64
	sradi 9,4,63
	srad 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1213:
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
	bne 0,.L1220
	subfic 3,3,2
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
	.p2align 4,,15
.L1220:
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
	bne 0,.L1224
	li 3,0
.L1224:
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
	blt 0,.L1227
	li 9,2
	bgt 0,.L1226
	cmplw 0,3,4
	li 9,0
	blt 0,.L1226
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1226:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1227:
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
	blt 0,.L1233
	li 9,1
	bgt 0,.L1232
	cmplw 0,3,4
	li 9,-1
	blt 0,.L1232
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1232:
	extsw 3,9
	blr
	.p2align 4,,15
.L1233:
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
	blt 0,.L1237
	li 9,2
	bgt 0,.L1237
	cmpld 0,3,5
	li 9,0
	blt 0,.L1237
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1237:
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
	bne 0,.L1245
	li 4,0
.L1245:
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
	bne 0,.L1247
	cmpdi 0,4,0
	li 3,0
	bne 0,.L1251
	extsw 3,3
	blr
	.p2align 4,,15
.L1247:
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
	extsw 3,3
	blr
	.p2align 4,,15
.L1251:
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
	beq 0,.L1253
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
	.p2align 4,,15
.L1253:
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
	beq 0,.L1259
	addi 5,5,-64
	li 9,0
	srd 3,4,5
	mr 4,9
	blr
	.p2align 4,,15
.L1259:
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
	beq 0,.L1277
	.p2align 4,,15
.L1279:
	fmul 1,1,0
.L1277:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1278
	andi. 10,9,0x1
	fmul 0,0,0
	srawi 10,9,1
	addze 10,10
	bne 0,.L1279
.L1283:
	extsw 9,10
	fmul 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne 0,.L1279
	b .L1283
	.p2align 4,,15
.L1278:
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
	beq 0,.L1285
	.p2align 4,,15
.L1287:
	fmuls 1,1,0
.L1285:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L1286
	andi. 10,9,0x1
	fmuls 0,0,0
	srawi 10,9,1
	addze 10,10
	bne 0,.L1287
.L1291:
	extsw 9,10
	fmuls 0,0,0
	andi. 10,9,0x1
	srawi 10,9,1
	addze 10,10
	bne 0,.L1287
	b .L1291
	.p2align 4,,15
.L1286:
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
	blt 0,.L1294
	li 9,2
	bgt 0,.L1293
	cmplw 0,3,4
	li 9,0
	blt 0,.L1293
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1293:
	rldicl 3,9,0,62
	blr
	.p2align 4,,15
.L1294:
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
	blt 0,.L1300
	li 9,1
	bgt 0,.L1299
	cmplw 0,3,4
	li 9,-1
	blt 0,.L1299
	rldicl 3,3,0,32
	rldicl 4,4,0,32
	subf 3,3,4
	srdi 9,3,63
.L1299:
	extsw 3,9
	blr
	.p2align 4,,15
.L1300:
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
	blt 0,.L1304
	li 9,2
	bgt 0,.L1304
	cmpld 0,3,5
	li 9,0
	blt 0,.L1304
	mfcr 9
	rlwinm 9,9,2,1
	addi 9,9,1
.L1304:
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
