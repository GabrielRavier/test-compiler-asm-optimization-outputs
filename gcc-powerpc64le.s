	.file	"mini-libc.c"
	.machine ppc64
	.abiversion 2
	.section	".text"
	.align 2
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
	.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	cmpld 0,3,4
	ble 0,.L4
	add 4,4,5
	add 9,3,5
	cmpdi 0,5,0
	beqlr 0
	mr 10,5
	andi. 8,5,0x1
	beq 0,.L11
	lbzu 8,-1(4)
	stbu 8,-1(9)
	cmpdi 0,5,1
	beqlr 0
.L11:
	srdi 10,10,1
	mtctr 10
.L6:
	mr 8,4
	lbz 7,-1(4)
	addi 10,9,-1
	stb 7,-1(9)
	addi 4,4,-2
	lbz 8,-2(8)
	addi 9,9,-2
	stb 8,-1(10)
	bdnz .L6
	blr
.L4:
	cmpld 0,3,4
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 4,4,-1
	addi 10,3,-1
	mr 9,5
	andi. 8,5,0x1
	beq 0,.L14
	lbzu 8,1(4)
	stbu 8,1(10)
	cmpdi 0,5,1
	beqlr 0
.L14:
	srdi 9,9,1
	mtctr 9
.L7:
	mr 8,4
	lbz 7,1(4)
	addi 9,10,1
	stb 7,1(10)
	addi 4,4,2
	lbz 8,2(8)
	addi 10,9,1
	stb 8,1(9)
	bdnz .L7
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE2:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	mr 10,3
	rlwinm 5,5,0,0xff
	cmpdi 0,6,0
	beq 0,.L21
	addi 4,4,-1
	mr 9,6
	andi. 8,6,0x1
	beq 0,.L27
	lbzu 8,1(4)
	stb 8,0(3)
	rlwinm 8,8,0,0xff
	cmpw 0,8,5
	beq 0,.L21
	addi 10,3,1
	addic. 6,6,-1
	beq 0,.L21
.L27:
	srdi 9,9,1
	mtctr 9
.L22:
	addi 7,4,1
	lbz 9,1(4)
	stb 9,0(10)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq 0,.L21
	addi 3,6,-1
	mr 6,3
	addi 8,10,1
	mr 10,8
	addi 4,7,1
	lbz 9,1(7)
	stb 9,0(8)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	beq 0,.L21
	addi 6,3,-1
	addi 10,8,1
	bdnz .L22
.L21:
	li 3,0
	cmpdi 0,6,0
	beqlr 0
	addi 3,10,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE3:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	cmpdi 0,5,0
	beq 0,.L35
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L41
	lbz 10,0(3)
	cmpw 0,10,4
	beq 0,.L35
	addi 3,3,1
	addic. 5,5,-1
	beq 0,.L35
.L41:
	srdi 9,9,1
	mtctr 9
.L34:
	lbz 9,0(3)
	cmpw 0,9,4
	beq 0,.L35
	addi 9,3,1
	mr 3,9
	addi 10,5,-1
	mr 5,10
	lbz 8,0(9)
	cmpw 0,8,4
	beq 0,.L35
	addi 3,9,1
	addi 5,10,-1
	bdnz .L34
.L35:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE4:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L52
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L58
	lbz 8,0(3)
	lbz 10,0(4)
	cmpw 0,8,10
	bne 0,.L52
	addi 3,3,1
	addi 4,4,1
	addic. 5,5,-1
	beq 0,.L52
.L58:
	srdi 9,9,1
	mtctr 9
.L51:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L52
	addi 8,5,-1
	mr 5,8
	addi 10,3,1
	mr 3,10
	addi 9,4,1
	mr 4,9
	lbz 6,0(10)
	lbz 7,0(9)
	cmpw 0,6,7
	bne 0,.L52
	addi 5,8,-1
	addi 3,10,1
	addi 4,9,1
	bdnz .L51
.L52:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L54
	lbz 10,0(3)
	lbz 9,0(4)
	subf 9,9,10
.L54:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE5:
	.size	memcmp,.-memcmp
	.align 2
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
	beq 0,.L66
	mflr 0
	.cfi_register 65, 0
	std 0,64(1)
	.cfi_offset 65, 16
	bl memcpy
	nop
	ld 0,64(1)
	mtlr 0
	.cfi_restore 65
.L66:
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
	beq 0,.L73
	mr 3,9
	addi 9,9,-1
	lbz 10,0(3)
	cmpw 0,10,4
	beqlr 0
.L73:
	srdi 5,5,1
	addi 10,5,1
	mtctr 10
.L69:
	bdz .L79
	mr 3,9
	addi 10,9,-1
	lbz 9,0(9)
	cmpw 0,9,4
	beqlr 0
	mr 3,10
	addi 9,10,-1
	lbz 10,0(10)
	cmpw 0,10,4
	bne 0,.L69
	blr
.L79:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE7:
	.size	memrchr,.-memrchr
	.align 2
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
	beq 0,.L89
	cmpdi 0,8,1
	beq 0,.L93
	cmpdi 0,8,2
	beq 0,.L94
	stbu 4,1(10)
	addi 5,5,-1
.L94:
	stbu 4,1(10)
	addi 5,5,-1
.L93:
	stbu 4,1(10)
	cmpdi 0,5,1
	beqlr 0
.L89:
	srdi 9,9,2
	mtctr 9
.L82:
	mr 9,10
	stb 4,1(10)
	stb 4,2(10)
	stb 4,3(10)
	addi 10,10,4
	stb 4,4(9)
	bdnz .L82
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE8:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	lbz 9,0(4)
	stb 9,0(3)
	andi. 9,9,0xff
	beqlr 0
.L99:
	lbzu 9,1(4)
	stbu 9,1(3)
	andi. 9,9,0xff
	bne 0,.L99
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	lbz 9,0(3)
	andi. 10,9,0xff
	beqlr 0
.L103:
	rlwinm 9,9,0,0xff
	cmpw 0,9,4
	beqlr 0
	lbzu 9,1(3)
	andi. 10,9,0xff
	bne 0,.L103
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
.L111:
	lbz 9,0(3)
	rlwinm 10,9,0,0xff
	cmpw 0,10,4
	beqlr 0
	addi 3,3,1
	andi. 9,9,0xff
	bne 0,.L111
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE11:
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	lbz 9,0(3)
	lbz 10,0(4)
	rlwinm 7,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,7,8
	bne 0,.L114
.L115:
	andi. 8,9,0xff
	beq 0,.L114
	lbzu 9,1(3)
	lbzu 10,1(4)
	rlwinm 7,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,7,8
	beq 0,.L115
.L114:
	rlwinm 9,9,0,0xff
	rlwinm 3,10,0,0xff
	subf 3,3,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE12:
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L120
	mr 9,3
.L119:
	lbzu 10,1(9)
	cmpwi 0,10,0
	bne 0,.L119
.L118:
	subf 3,3,9
	blr
.L120:
	mr 9,3
	b .L118
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE13:
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L127
	lbz 10,0(3)
	andi. 9,10,0xff
	beq 0,.L124
	addi 5,5,-1
	add 7,4,5
	addi 9,5,1
	mtctr 9
.L125:
	lbz 9,0(4)
	andi. 8,9,0xff
	beq 0,.L124
	bdz .L130
	rlwinm 9,9,0,0xff
	rlwinm 8,10,0,0xff
	cmpw 0,9,8
	bne 0,.L124
	addi 4,4,1
	lbzu 10,1(3)
	andi. 9,10,0xff
	bne 0,.L125
	b .L124
.L130:
	mr 4,7
.L124:
	rlwinm 10,10,0,0xff
	lbz 3,0(4)
	subf 3,3,10
.L123:
	extsw 3,3
	blr
.L127:
	li 3,0
	b .L123
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE14:
	.size	strncmp,.-strncmp
	.align 2
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
	beq 0,.L136
	lbz 10,1(3)
	stb 10,0(4)
	lbz 10,0(3)
	stb 10,1(4)
	addi 4,4,2
	addi 3,3,2
	cmpdi 0,5,1
	beqlr 0
.L136:
	srdi 9,9,1
	mtctr 9
.L133:
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
	bdnz .L133
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE15:
	.size	swab,.-swab
	.align 2
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
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L144
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L144:
	li 3,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE18:
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	cmplwi 0,3,31
	ble 0,.L147
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L147:
	li 3,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-iscntrl
	.align 2
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
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	cmpwi 0,3,32
	beq 0,.L154
	addi 3,3,-9
	rldicl 3,3,0,32
	subfic 3,3,4
	srdi 3,3,63
	xori 3,3,0x1
.L153:
	extsw 3,3
	blr
.L154:
	li 3,1
	b .L153
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE24:
	.size	isspace,.-isspace
	.align 2
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
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	li 9,1
	cmplwi 0,3,31
	ble 0,.L157
	addi 10,3,-127
	li 9,1
	cmplwi 0,10,32
	ble 0,.L157
	addi 10,3,-8232
	cmplwi 0,10,1
	ble 0,.L157
	addis 9,3,0xffff
	addi 9,9,7
	rldicl 9,9,0,32
	subfic 9,9,2
	srdi 9,9,63
	xori 9,9,0x1
.L157:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE26:
	.size	iswcntrl,.-iswcntrl
	.align 2
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
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	cmplwi 0,3,254
	ble 0,.L169
	li 9,1
	cmplwi 0,3,8231
	ble 0,.L164
	addi 10,3,-8234
	cmplwi 0,10,47061
	ble 0,.L164
	addis 10,3,0xffff
	addi 10,10,8192
	cmplwi 0,10,8184
	ble 0,.L164
	addis 10,3,0xffff
	addi 10,10,4
	li 9,0
	lis 8,0x10
	ori 8,8,0x3
	cmplw 0,10,8
	bgt 0,.L164
	rlwinm 9,3,0,16,30
	xori 9,9,0xfffe
	cntlzw 9,9
	srwi 9,9,5
	xori 9,9,0x1
	b .L164
.L169:
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 9,3,63
.L164:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE28:
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L172
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,5
	srdi 3,3,63
	xori 3,3,0x1
.L171:
	extsw 3,3
	blr
.L172:
	li 3,1
	b .L171
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-iswxdigit
	.align 2
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
	bun 0,.L178
	fcmpu 0,1,2
	bng 0,.L181
	fsub 1,1,2
	blr
.L178:
	fmr 1,2
	blr
.L181:
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE31:
	.size	fdim,.-fdim
	.align 2
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
	bun 0,.L186
	fcmpu 0,1,2
	bng 0,.L189
	fsubs 1,1,2
	blr
.L186:
	fmr 1,2
	blr
.L189:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE32:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	fmr 0,1
	fcmpu 0,1,1
	bun 0,.L195
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L192
	fmr 1,2
	cmpwi 0,9,0
	bnelr 0
	fmr 1,0
	blr
.L192:
	fcmpu 0,1,2
	bnllr 0
	fmr 1,2
	blr
.L195:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE33:
	.size	fmax,.-fmax
	.align 2
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	stfs 1,-16(1)
	stfs 2,-12(1)
	fcmpu 0,1,1
	bun 0,.L203
	fcmpu 0,2,2
	bun 0,.L204
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	lwz 10,-12(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L200
	fmr 1,2
	cmpwi 0,9,0
	bnelr 0
	lfs 1,-16(1)
	blr
.L200:
	lfs 1,-16(1)
	lfs 12,-12(1)
	fcmpu 0,1,12
	bnllr 0
	fmr 1,12
	blr
.L203:
	lfs 1,-12(1)
	blr
.L204:
	lfs 1,-16(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	fmr 13,2
	fmr 12,1
	fmr 0,3
	fmr 1,4
	fmr 11,12
	fcmpu 0,11,11
	bun 0,.L211
	fmr 11,0
	fcmpu 0,11,11
	bun 0,.L212
	fmr 11,12
	stfd 11,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	fmr 11,0
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L208
	cmpwi 0,9,0
	bne 0,.L213
	fmr 1,12
	blr
.L208:
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L209
	fmr 2,4
	fmr 1,3
	blr
.L209:
	fmr 1,12
	blr
.L211:
	fmr 2,4
	fmr 1,3
	blr
.L212:
	fmr 1,12
	blr
.L213:
	fmr 2,4
	fmr 1,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	fcmpu 0,1,1
	bun 0,.L219
	fcmpu 0,2,2
	bunlr 0
	stfd 1,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 2,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L216
	cmpwi 0,9,0
	bnelr 0
	fmr 1,2
	blr
.L216:
	fmr 0,2
	fcmpu 0,1,2
	bnl 0,.L218
	fmr 0,1
.L218:
	fmr 1,0
	blr
.L219:
	fmr 1,2
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE36:
	.size	fmin,.-fmin
	.align 2
	.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	stfs 1,-16(1)
	stfs 2,-12(1)
	fcmpu 0,1,1
	bun 0,.L227
	fcmpu 0,2,2
	bun 0,.L228
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	lwz 10,-12(1)
	rlwinm 10,10,0,0,0
	cmpw 0,9,10
	beq 0,.L224
	cmpwi 0,9,0
	bnelr 0
	fmr 1,2
	blr
.L224:
	lfs 1,-12(1)
	lfs 0,-16(1)
	fcmpu 0,0,1
	bnllr 0
	fmr 1,0
	blr
.L227:
	lfs 1,-12(1)
	blr
.L228:
	lfs 1,-16(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE37:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	fmr 11,1
	fcmpu 0,11,11
	bun 0,.L235
	fmr 11,3
	fcmpu 0,11,11
	bunlr 0
	fmr 0,1
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	stfd 11,-16(1)
	ld 10,-16(1)
	srdi 10,10,63
	cmpw 0,9,10
	beq 0,.L232
	cmpwi 0,9,0
	bnelr 0
	fmr 1,3
	fmr 2,4
	blr
.L232:
	fcmpu 0,1,3
	bne 0,$+8
	fcmpu 0,2,4
	bltlr 0
	fmr 1,3
	fmr 2,4
	blr
.L235:
	fmr 1,3
	fmr 2,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-fminl
	.align 2
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
	beq 0,.L241
	addis 10,2,.LANCHOR0@toc@ha
	addi 10,10,.LANCHOR0@toc@l
	addis 7,2,.LANCHOR1@toc@ha
	addi 7,7,.LANCHOR1@toc@l
.L240:
	rldicl 8,9,0,58
	lbzx 8,7,8
	stb 8,0(10)
	addi 10,10,1
	srwi 9,9,6
	cmpwi 0,9,0
	bne 0,.L240
.L239:
	li 9,0
	stb 9,0(10)
	addis 3,2,.LANCHOR0@toc@ha
	addi 3,3,.LANCHOR0@toc@l
	blr
.L241:
	addis 10,2,.LANCHOR0@toc@ha
	addi 10,10,.LANCHOR0@toc@l
	b .L239
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-l64a
	.align 2
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
	.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	cmpdi 0,4,0
	beq 0,.L248
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beqlr 0
	std 3,8(9)
	blr
.L248:
	li 9,0
	std 9,8(3)
	std 9,0(3)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE42:
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L250
	ld 10,8(3)
	std 10,8(9)
.L250:
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
	mr 27,6
	ld 28,0(5)
	cmpdi 0,28,0
	beq 0,.L253
	std 29,88(1)
	.cfi_offset 29, -24
	std 30,96(1)
	.cfi_offset 30, -16
	std 31,104(1)
	.cfi_offset 31, -8
	mr 29,7
	mr 31,4
	li 30,0
.L255:
	mr 25,31
	mr 4,31
	mr 3,26
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L258
	addi 30,30,1
	add 31,31,27
	cmpld 0,28,30
	bne 0,.L255
	ld 29,88(1)
	.cfi_restore 29
	ld 30,96(1)
	.cfi_restore 30
	ld 31,104(1)
	.cfi_restore 31
.L253:
	addi 9,28,1
	std 9,0(24)
	mulld 28,27,28
	mr 5,27
	mr 4,26
	add 3,23,28
	bl memcpy
	nop
	mr 25,3
.L252:
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
.L258:
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
	b .L252
	.long 0
	.byte 0,0,0,1,128,9,0,0
	.cfi_endproc
.LFE44:
	.size	lsearch,.-lsearch
	.align 2
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
	beq 0,.L260
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
.L262:
	mr 25,31
	mr 4,31
	mr 3,28
	mr 12,29
	mtctr 29
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L265
	addi 30,30,1
	add 31,31,27
	cmpld 0,26,30
	bne 0,.L262
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
.L260:
	li 25,0
	b .L259
.L265:
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
.L259:
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
	.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
.LCF47:
0:	addis 2,12,.TOC.-.LCF47@ha
	addi 2,2,.TOC.-.LCF47@l
	.localentry	atoi,.-atoi
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L268
.L269:
	addi 31,31,1
.L268:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 10,3
	cmpwi 0,3,0
	bne 0,.L269
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq 0,.L270
	cmpwi 0,9,45
	bne 0,.L271
	li 3,1
.L270:
	addi 31,31,1
.L271:
	lbz 9,0(31)
	rlwinm 8,9,0,0xff
	addi 8,8,-48
	cmplwi 0,8,9
	bgt 0,.L273
.L272:
	mulli 10,10,10
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 10,9,10
	lbzu 9,1(31)
	rlwinm 8,9,0,0xff
	addi 8,8,-48
	cmplwi 0,8,9
	ble 0,.L272
.L273:
	cmpwi 0,3,0
	bne 0,.L274
	neg 10,10
.L274:
	extsw 3,10
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.cfi_endproc
.LFE47:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
.LCF48:
0:	addis 2,12,.TOC.-.LCF48@ha
	addi 2,2,.TOC.-.LCF48@l
	.localentry	atol,.-atol
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L281
.L282:
	addi 31,31,1
.L281:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne 0,.L282
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq 0,.L283
	cmpwi 0,9,45
	bne 0,.L284
	li 8,1
.L283:
	addi 31,31,1
.L284:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	li 3,0
	cmplwi 0,10,9
	bgt 0,.L286
.L285:
	mulli 3,3,10
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble 0,.L285
.L286:
	cmpwi 0,8,0
	bne 0,.L280
	neg 3,3
.L280:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.cfi_endproc
.LFE48:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
.LCF49:
0:	addis 2,12,.TOC.-.LCF49@ha
	addi 2,2,.TOC.-.LCF49@l
	.localentry	atoll,.-atoll
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	b .L293
.L294:
	addi 31,31,1
.L293:
	lbz 30,0(31)
	rlwinm 3,30,0,0xff
	bl isspace
	mr 8,3
	cmpwi 0,3,0
	bne 0,.L294
	rlwinm 9,30,0,0xff
	cmpwi 0,9,43
	beq 0,.L295
	cmpwi 0,9,45
	bne 0,.L296
	li 8,1
.L295:
	addi 31,31,1
.L296:
	lbz 9,0(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	li 3,0
	cmplwi 0,10,9
	bgt 0,.L298
.L297:
	mulli 3,3,10
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
	lbzu 9,1(31)
	rlwinm 10,9,0,0xff
	addi 10,10,-48
	cmplwi 0,10,9
	ble 0,.L297
.L298:
	cmpwi 0,8,0
	bne 0,.L292
	neg 3,3
.L292:
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.cfi_endproc
.LFE49:
	.size	atoll,.-atoll
	.align 2
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
	beq 0,.L305
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
	b .L308
.L309:
	mr 31,29
.L306:
	cmpdi 0,31,0
	beq 0,.L313
.L308:
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
	blt 0,.L309
	ble 0,.L312
	add 26,30,27
	addi 31,31,-1
	subf 31,29,31
	b .L306
.L313:
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
.L305:
	li 30,0
	b .L304
.L312:
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
.L304:
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
	beq 0,.L315
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
	b .L318
.L317:
	srawi 30,30,1
	cmpwi 0,30,0
	beq 0,.L322
.L318:
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
	beq 0,.L321
	ble 0,.L317
	add 27,31,28
	addi 30,30,-1
	b .L317
.L322:
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
.L315:
	li 31,0
	b .L314
.L321:
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
.L314:
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
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L332
.L331:
	cmpw 0,9,4
	beq 0,.L332
	lwzu 9,4(3)
	cmpwi 0,9,0
	bne 0,.L331
.L332:
	cmpwi 0,9,0
	bnelr 0
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE59:
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne 0,.L338
.L339:
	cmpwi 0,9,0
	beq 0,.L338
	cmpwi 0,10,0
	beq 0,.L338
	lwzu 9,4(3)
	lwzu 10,4(4)
	cmpw 0,9,10
	beq 0,.L339
.L338:
	li 3,-1
	cmpw 0,9,10
	blt 0,.L341
	extsw 9,9
	extsw 10,10
	subf 9,9,10
	srdi 3,9,63
.L341:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	addi 4,4,-4
	addi 10,3,-4
.L344:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne 0,.L344
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L350
	mr 9,3
.L349:
	lwzu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L349
.L348:
	subf 3,3,9
	sradi 3,3,2
	blr
.L350:
	mr 9,3
	b .L348
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE62:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L354
	mtctr 5
.L353:
	lwz 9,0(3)
	lwz 10,0(4)
	cmpw 0,9,10
	bne 0,.L354
	cmpwi 0,9,0
	beq 0,.L354
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
	bdnz .L353
.L354:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L356
	lwz 10,0(3)
	lwz 8,0(4)
	li 9,-1
	cmpw 0,10,8
	blt 0,.L356
	extsw 10,10
	extsw 8,8
	subf 10,10,8
	srdi 9,10,63
.L356:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L364
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L370
	lwz 10,0(3)
	cmpw 0,10,4
	beq 0,.L364
	addi 3,3,4
	addic. 5,5,-1
	beq 0,.L364
.L370:
	srdi 9,9,1
	mtctr 9
.L363:
	lwz 9,0(3)
	cmpw 0,9,4
	beq 0,.L364
	addi 10,5,-1
	mr 5,10
	addi 9,3,4
	mr 3,9
	lwz 8,0(9)
	cmpw 0,8,4
	beq 0,.L364
	addi 5,10,-1
	addi 3,9,4
	bdnz .L363
.L364:
	subfic 5,5,0
	subfe 9,9,9
	and 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	cmpdi 0,5,0
	beq 0,.L381
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L388
	lwz 8,0(3)
	lwz 10,0(4)
	cmpw 0,8,10
	bne 0,.L381
	addi 3,3,4
	addi 4,4,4
	addic. 5,5,-1
	beq 0,.L381
.L388:
	srdi 9,9,1
	mtctr 9
.L380:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L381
	addi 8,5,-1
	mr 5,8
	addi 10,3,4
	mr 3,10
	addi 9,4,4
	mr 4,9
	lwz 6,0(10)
	lwz 7,0(9)
	cmpw 0,6,7
	bne 0,.L381
	addi 5,8,-1
	addi 3,10,4
	addi 4,9,4
	bdnz .L380
.L381:
	li 9,0
	cmpdi 0,5,0
	beq 0,.L383
	lwz 10,0(3)
	lwz 8,0(4)
	li 9,-1
	cmpw 0,10,8
	blt 0,.L383
	extsw 10,10
	extsw 8,8
	subf 10,10,8
	srdi 9,10,63
.L383:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-wmemcmp
	.align 2
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
	beq 0,.L396
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
.L396:
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
	blt 0,.L400
	addi 4,4,-4
	addi 10,3,-4
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 8,5,0x1
	beq 0,.L411
	lwzu 8,4(4)
	stwu 8,4(10)
	cmpdi 0,5,1
	beqlr 0
.L411:
	srdi 9,9,1
	mtctr 9
.L403:
	mr 8,4
	lwz 7,4(4)
	addi 9,10,4
	stw 7,4(10)
	addi 4,4,8
	lwz 8,8(8)
	addi 10,9,4
	stw 8,4(9)
	bdnz .L403
	blr
.L400:
	cmpdi 0,5,0
	beqlr 0
	add 4,4,9
	add 9,3,9
	mr 10,5
	andi. 8,5,0x1
	beq 0,.L408
	lwzu 8,-4(4)
	stwu 8,-4(9)
	cmpdi 0,5,1
	beqlr 0
.L408:
	srdi 10,10,1
	mtctr 10
.L402:
	mr 8,4
	lwz 7,-4(4)
	addi 10,9,-4
	stw 7,-4(9)
	addi 4,4,-8
	lwz 8,-8(8)
	addi 9,9,-8
	stw 8,-4(10)
	bdnz .L402
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-wmemmove
	.align 2
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
	beq 0,.L427
	cmpdi 0,8,1
	beq 0,.L431
	cmpdi 0,8,2
	beq 0,.L432
	stwu 4,4(10)
	addi 5,5,-1
.L432:
	stwu 4,4(10)
	addi 5,5,-1
.L431:
	stwu 4,4(10)
	cmpdi 0,5,1
	beqlr 0
.L427:
	srdi 9,9,2
	mtctr 9
.L420:
	mr 9,10
	stw 4,4(10)
	stw 4,8(10)
	stw 4,12(10)
	addi 10,10,16
	stw 4,16(9)
	bdnz .L420
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE68:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	cmpld 0,3,4
	bge 0,.L436
	add 3,3,5
	add 4,4,5
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L443
	lbzu 10,-1(3)
	stbu 10,-1(4)
	cmpdi 0,5,1
	beqlr 0
.L443:
	srdi 9,9,1
	mtctr 9
.L438:
	mr 10,3
	lbz 8,-1(3)
	addi 9,4,-1
	stb 8,-1(4)
	addi 3,3,-2
	lbz 10,-2(10)
	addi 4,4,-2
	stb 10,-1(9)
	bdnz .L438
	blr
.L436:
	cmpld 0,3,4
	beqlr 0
	cmpdi 0,5,0
	beqlr 0
	addi 3,3,-1
	addi 4,4,-1
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L446
	lbzu 10,1(3)
	stbu 10,1(4)
	cmpdi 0,5,1
	beqlr 0
.L446:
	srdi 9,9,1
	mtctr 9
.L439:
	mr 10,3
	lbz 8,1(3)
	addi 9,4,1
	stb 8,1(4)
	addi 3,3,2
	lbz 10,2(10)
	addi 4,4,2
	stb 10,1(9)
	bdnz .L439
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE69:
	.size	bcopy,.-bcopy
	.align 2
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
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	srdi 9,3,8
	rldic 3,3,8,48
	or 3,3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE80:
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	rlwinm 9,3,8,8,15
	slwi 10,3,24
	or 9,9,10
	srdi 10,3,24
	or 9,9,10
	rlwinm 3,3,24,16,23
	or 3,9,3
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE81:
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	srdi 9,3,56
	rldimi 9,3,56,0
	srdi 10,3,40
	rlwinm 10,10,0,16,23
	or 9,9,10
	srdi 10,3,24
	rlwinm 10,10,0,8,15
	or 9,9,10
	srdi 10,3,8
	rlwinm 10,10,0,0,7
	or 9,9,10
	rldicr 10,3,32,7
	srdi 10,10,24
	or 9,9,10
	rldicr 10,3,40,7
	srdi 10,10,16
	or 9,9,10
	rldicr 3,3,48,7
	srdi 3,3,8
	or 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE82:
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	li 9,0
	li 10,16
	mtctr 10
.L468:
	srw 10,3,9
	andi. 10,10,0x1
	bne 0,.L472
	addi 8,9,1
	mr 9,8
	srw 10,3,8
	andi. 10,10,0x1
	bne 0,.L472
	addi 9,8,1
	bdnz .L468
	li 3,0
	b .L467
.L472:
	addi 3,9,1
.L467:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE83:
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mr. 10,3
	beq 0,.L478
	andi. 3,10,0x1
	bne 0,.L476
	li 3,1
.L477:
	srawi 10,10,1
	mr 9,10
	addi 3,3,1
	andi. 9,9,0x1
	beq 0,.L477
.L476:
	extsw 3,3
	blr
.L478:
	li 3,0
	b .L476
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-libiberty_ffs
	.align 2
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
	blt 0,.L481
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L481:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE85:
	.size	gl_isinff,.-gl_isinff
	.align 2
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
	blt 0,.L484
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	mfcr 3
	rlwinm 3,3,2,1
.L484:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE86:
	.size	gl_isinfd,.-gl_isinfd
	.align 2
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
	blt 0,.L487
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	mfcr 3
	rlwinm 3,3,2,1
.L487:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-gl_isinfl
	.align 2
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
	blt 0,.L496
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
	b .L494
.L496:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
	b .L494
.L493:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmuls 0,0,0
.L494:
	andi. 9,4,0x1
	beq 0,.L493
	fmuls 1,1,0
	b .L493
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-ldexpf
	.align 2
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
	blt 0,.L503
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	b .L501
.L503:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
	b .L501
.L500:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beqlr 0
	fmul 0,0,0
.L501:
	andi. 9,4,0x1
	beq 0,.L500
	fmul 1,1,0
	b .L500
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE90:
	.size	ldexp,.-ldexp
	.align 2
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
	bun 0,.L505
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
	beq 0,.L511
	stfd 30,64(1)
	.cfi_offset 62, -16
	stfd 31,72(1)
	.cfi_offset 63, -8
	cmpwi 0,31,0
	blt 0,.L513
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L508
.L513:
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 30,0(9)
	lfd 31,8(9)
	b .L508
.L507:
	srawi 31,31,1
	addze 31,31
	extsw. 31,31
	beq 0,.L512
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L508:
	andi. 9,31,0x1
	beq 0,.L507
	fmr 3,30
	fmr 4,31
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L507
.L511:
	.cfi_restore 62
	.cfi_restore 63
	ld 31,40(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L505:
	fmr 1,28
	fmr 2,29
	addi 1,1,80
	.cfi_def_cfa_offset 0
	lfd 28,-32(1)
	lfd 29,-24(1)
	.cfi_restore 61
	.cfi_restore 60
	blr
.L512:
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 16
	lfd 30,64(1)
	.cfi_restore 62
	lfd 31,72(1)
	.cfi_restore 63
	ld 31,40(1)
	.cfi_restore 31
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
	b .L505
	.long 0
	.byte 0,0,2,1,132,1,0,0
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-ldexpl
	.align 2
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
	beq 0,.L519
	lbzu 8,1(9)
	lbzu 7,1(4)
	xor 8,8,7
	stb 8,0(9)
	cmpdi 0,5,1
	beqlr 0
.L519:
	srdi 10,10,1
	mtctr 10
.L516:
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
	bdnz .L516
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE92:
	.size	memxor,.-memxor
	.align 2
	.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
.LCF93:
0:	addis 2,12,.TOC.-.LCF93@ha
	addi 2,2,.TOC.-.LCF93@l
	.localentry	strncat,.-strncat
	mflr 0
	std 0,16(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 29,3
	mr 30,4
	mr 31,5
	bl strlen
	add 3,29,3
	cmpdi 0,31,0
	beq 0,.L524
	addi 30,30,-1
	mr 10,31
	andi. 8,31,0x1
	beq 0,.L529
	lbzu 8,1(30)
	stb 8,0(3)
	andi. 8,8,0xff
	beq 0,.L524
	addi 3,3,1
	addic. 31,31,-1
	beq 0,.L524
.L529:
	srdi 9,10,1
	mtctr 9
.L525:
	addi 7,30,1
	lbz 10,1(30)
	stb 10,0(3)
	andi. 10,10,0xff
	beq 0,.L524
	addi 8,3,1
	mr 3,8
	addi 6,31,-1
	mr 31,6
	addi 30,7,1
	lbz 10,1(7)
	stb 10,0(8)
	andi. 10,10,0xff
	beq 0,.L524
	addi 3,8,1
	addi 31,6,-1
	bdnz .L525
.L524:
	cmpdi 0,31,0
	bne 0,.L527
	li 10,0
	stb 10,0(3)
.L527:
	mr 3,29
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.long 0
	.byte 0,0,0,1,128,3,0,0
	.cfi_endproc
.LFE93:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	mr 9,3
	li 3,0
	cmpdi 0,4,0
	beq 0,.L561
	mr 10,4
	andi. 8,4,0x3
	beq 0,.L548
	cmpdi 0,8,1
	beq 0,.L559
	cmpdi 0,8,2
	beq 0,.L560
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
.L560:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
.L559:
	lbzx 8,9,3
	cmpwi 0,8,0
	beqlr 0
	addi 3,3,1
	cmpld 0,4,3
	beq 0,.L541
.L548:
	srdi 10,10,2
.L537:
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
	bne 0,.L537
.L541:
	mr 3,4
	blr
.L561:
	mr 3,4
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE94:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	lbz 8,0(3)
	andi. 9,8,0xff
	beq 0,.L571
.L565:
	addi 10,4,-1
	rlwinm 8,8,0,0xff
.L568:
	lbzu 9,1(10)
	andi. 7,9,0xff
	beq 0,.L572
	rlwinm 9,9,0,0xff
	cmpw 0,9,8
	bne 0,.L568
	blr
.L571:
	li 3,0
	blr
.L572:
	lbzu 8,1(3)
	andi. 9,8,0xff
	bne 0,.L565
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mr 10,3
	li 3,0
	b .L575
.L574:
	addi 10,10,1
	andi. 9,9,0xff
	beqlr 0
.L575:
	lbz 9,0(10)
	rlwinm 8,9,0,0xff
	cmpw 0,8,4
	bne 0,.L574
	mr 3,10
	b .L574
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE96:
	.size	strrchr,.-strrchr
	.align 2
	.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
.LCF97:
0:	addis 2,12,.TOC.-.LCF97@ha
	addi 2,2,.TOC.-.LCF97@l
	.localentry	strstr,.-strstr
	mflr 0
	std 0,16(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	mr 30,4
	mr 3,4
	bl strlen
	mr. 29,3
	beq 0,.L579
	std 28,32(1)
	.cfi_offset 28, -32
	lbz 28,0(30)
.L581:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq 0,.L586
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L585
	addi 31,31,1
	b .L581
.L586:
	ld 28,32(1)
	.cfi_restore 28
.L579:
	mr 3,31
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L585:
	.cfi_def_cfa_offset 64
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	.cfi_offset 65, 16
	ld 28,32(1)
	.cfi_restore 28
	b .L579
	.long 0
	.byte 0,0,0,1,128,4,0,0
	.cfi_endproc
.LFE97:
	.size	strstr,.-strstr
	.align 2
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
	blt 0,.L596
.L588:
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bnglr 0
	fcmpu 0,2,0
	bnllr 0
	b .L590
.L596:
	fcmpu 0,2,0
	bng 0,.L588
.L590:
	fneg 1,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE98:
	.size	copysign,.-copysign
	.align 2
	.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
.LCF99:
0:	addis 2,12,.TOC.-.LCF99@ha
	addi 2,2,.TOC.-.LCF99@l
	.localentry	memmem,.-memmem
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,3
	cmpdi 0,6,0
	beq 0,.L597
	cmpld 0,4,6
	blt 0,.L602
	std 30,64(1)
	.cfi_offset 30, -16
	subf 30,6,4
	add 30,3,30
	cmpld 0,3,30
	bgt 0,.L603
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	std 27,40(1)
	.cfi_offset 27, -40
	std 28,48(1)
	.cfi_offset 28, -32
	std 29,56(1)
	.cfi_offset 29, -24
	lbz 28,0(5)
	addi 29,6,-1
	addi 27,5,1
	b .L600
.L599:
	addi 31,31,1
	cmpld 0,30,31
	blt 0,.L607
.L600:
	lbz 9,0(31)
	cmpw 0,9,28
	bne 0,.L599
	mr 5,29
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne 0,.L599
	mr 3,31
	ld 27,40(1)
	.cfi_remember_state
	.cfi_restore 27
	ld 28,48(1)
	.cfi_restore 28
	ld 29,56(1)
	.cfi_restore 29
	ld 30,64(1)
	.cfi_restore 30
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
	b .L597
.L607:
	.cfi_restore_state
	li 3,0
	ld 27,40(1)
	.cfi_restore 27
	ld 28,48(1)
	.cfi_restore 28
	ld 29,56(1)
	.cfi_restore 29
	ld 30,64(1)
	.cfi_restore 30
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L597:
	addi 1,1,80
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L602:
	.cfi_restore_state
	li 3,0
	b .L597
.L603:
	.cfi_offset 30, -16
	li 3,0
	ld 30,64(1)
	.cfi_restore 30
	b .L597
	.long 0
	.byte 0,0,0,1,128,5,0,0
	.cfi_endproc
.LFE99:
	.size	memmem,.-memmem
	.align 2
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
.LCF100:
0:	addis 2,12,.TOC.-.LCF100@ha
	addi 2,2,.TOC.-.LCF100@l
	.localentry	mempcpy,.-mempcpy
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,5
	bl memcpy
	nop
	add 3,3,31
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE100:
	.size	mempcpy,.-mempcpy
	.align 2
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
	blt 0,.L632
.L611:
	li 9,0
	addis 8,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(8)
	fcmpu 0,1,0
	cror 2,0,3
	beq 0,.L630
	addis 7,2,.LC24@toc@ha
	lfd 12,.LC24@toc@l(7)
.L615:
	addi 9,9,1
	fmul 1,1,12
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L615
.L616:
	stw 9,0(4)
	cmpwi 0,10,0
	beqlr 0
	fneg 1,1
	blr
.L632:
	fneg 1,1
	li 10,1
	b .L611
.L630:
	addis 8,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(8)
	li 9,0
	fcmpu 0,1,0
	bnl 0,.L616
	li 9,0
	addis 7,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(7)
	fcmpu 0,1,0
	beq 0,.L616
	lfd 0,.LC24@toc@l(8)
.L618:
	addi 9,9,-1
	fadd 1,1,1
	fcmpu 0,1,0
	blt 0,.L618
	b .L616
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE101:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mr 10,3
	cmpdi 0,3,0
	beq 0,.L636
	li 3,0
.L635:
	rldicl 9,10,0,63
	neg 9,9
	and 9,9,4
	add 3,3,9
	sldi 4,4,1
	srdi. 10,10,1
	bne 0,.L635
	blr
.L636:
	li 3,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	li 9,1
	cmplw 0,4,3
	bge 0,.L641
.L640:
	cmpwi 0,4,0
	blt 0,.L641
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L641
	cmpwi 0,9,0
	bne 0,.L640
.L641:
	cmpwi 0,9,0
	beq 0,.L648
	li 10,0
	b .L645
.L644:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L643
.L645:
	cmplw 0,3,4
	blt 0,.L644
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L644
.L648:
	mr 10,9
.L643:
	cmpdi 0,5,0
	bne 0,.L652
.L646:
	rldicl 3,10,0,32
	blr
.L652:
	mr 10,3
	b .L646
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	cmpdi 0,3,0
	beq 0,.L655
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
.L654:
	extsw 3,3
	blr
.L655:
	li 3,7
	b .L654
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	sradi 10,3,63
	xor 9,3,10
	cmpd 0,3,10
	beq 0,.L658
	cntlzd 3,9
	addi 3,3,-1
.L657:
	extsw 3,3
	blr
.L658:
	li 3,63
	b .L657
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mr. 10,3
	beq 0,.L662
	li 3,0
.L661:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne 0,.L661
.L660:
	rldicl 3,3,0,32
	blr
.L662:
	li 3,0
	b .L660
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	cmpld 0,3,4
	blt 0,.L665
	add 8,4,5
	cmpld 0,3,8
	bgt 0,.L665
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L683
	lbzu 10,-1(4)
	stbu 10,-1(3)
	cmpdi 0,5,1
	beqlr 0
.L683:
	srdi 9,9,1
	mtctr 9
.L671:
	mr 10,4
	lbz 8,-1(4)
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	lbz 10,-2(10)
	addi 3,3,-2
	stb 10,-1(9)
	bdnz .L671
	blr
.L665:
	cmpwi 0,10,0
	beq 0,.L668
	rldicl 6,10,0,32
	addi 8,4,-8
	addi 7,3,-8
	mr 10,6
	andi. 11,6,0x1
	beq 0,.L680
	ldu 11,8(8)
	stdu 11,8(7)
	cmpdi 0,6,1
	beq 0,.L668
.L680:
	srdi 10,10,1
	mtctr 10
.L669:
	addi 6,8,8
	ld 8,8(8)
	addi 10,7,8
	std 8,8(7)
	addi 8,6,8
	ld 6,8(6)
	addi 7,7,16
	std 6,8(10)
	bdnz .L669
.L668:
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
	beq 0,.L677
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpdi 0,5,1
	beqlr 0
.L677:
	srdi 9,9,1
	mtctr 9
.L670:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L670
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	srwi 9,5,1
	cmpld 0,3,4
	blt 0,.L693
	add 10,4,5
	cmpld 0,3,10
	bgt 0,.L693
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L706
	lbzu 10,-1(4)
	stbu 10,-1(3)
	cmpdi 0,5,1
	beqlr 0
.L706:
	srdi 9,9,1
	mtctr 9
.L698:
	mr 10,4
	lbz 8,-1(4)
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	lbz 10,-2(10)
	addi 3,3,-2
	stb 10,-1(9)
	bdnz .L698
	blr
.L693:
	cmpwi 0,9,0
	beq 0,.L696
	rldicl 7,9,0,32
	addi 10,4,-2
	addi 8,3,-2
	mr 9,7
	andi. 6,7,0x1
	beq 0,.L703
	lhzu 6,2(10)
	sthu 6,2(8)
	cmpdi 0,7,1
	beq 0,.L696
.L703:
	srdi 9,9,1
	mtctr 9
.L697:
	addi 7,10,2
	lhz 10,2(10)
	addi 9,8,2
	sth 10,2(8)
	addi 10,7,2
	lhz 7,2(7)
	addi 8,8,4
	sth 7,2(9)
	bdnz .L697
.L696:
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
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	cmpld 0,3,4
	blt 0,.L714
	add 8,4,5
	cmpld 0,3,8
	bgt 0,.L714
	addi 9,5,-1
	rldicl 9,9,0,32
	addi 9,9,1
	add 4,4,9
	add 3,3,9
	cmpdi 0,5,0
	beqlr 0
	mr 9,5
	andi. 10,5,0x1
	beq 0,.L732
	lbzu 10,-1(4)
	stbu 10,-1(3)
	cmpdi 0,5,1
	beqlr 0
.L732:
	srdi 9,9,1
	mtctr 9
.L720:
	mr 10,4
	lbz 8,-1(4)
	addi 9,3,-1
	stb 8,-1(3)
	addi 4,4,-2
	lbz 10,-2(10)
	addi 3,3,-2
	stb 10,-1(9)
	bdnz .L720
	blr
.L714:
	cmpwi 0,10,0
	beq 0,.L717
	rldicl 6,10,0,32
	addi 8,4,-4
	addi 7,3,-4
	mr 10,6
	andi. 11,6,0x1
	beq 0,.L729
	lwzu 11,4(8)
	stwu 11,4(7)
	cmpdi 0,6,1
	beq 0,.L717
.L729:
	srdi 10,10,1
	mtctr 10
.L718:
	addi 6,8,4
	lwz 8,4(8)
	addi 10,7,4
	stw 8,4(7)
	addi 8,6,4
	lwz 6,4(6)
	addi 7,7,8
	stw 6,4(10)
	bdnz .L718
.L717:
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
	beq 0,.L726
	lbzu 10,1(4)
	stbu 10,1(3)
	cmpdi 0,5,1
	beqlr 0
.L726:
	srdi 9,9,1
	mtctr 9
.L719:
	mr 10,4
	lbz 8,1(4)
	addi 9,3,1
	stb 8,1(3)
	addi 4,4,2
	lbz 10,2(10)
	addi 3,3,2
	stb 10,1(9)
	bdnz .L719
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-__cmovw
	.align 2
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
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	cmpdi 0,3,0
	blt 0,.L747
	std 3,-16(1)
	lfd 0,-16(1)
	fcfid 1,0
	blr
.L747:
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
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	cmpdi 0,3,0
	blt 0,.L750
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L751
	mr 9,3
.L751:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	frsp 1,0
	blr
.L750:
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
	bge 0,.L752
	mr 9,10
.L752:
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
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	li 10,0
	li 9,8
	mtctr 9
.L756:
	subfic 9,10,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L755
	addi 8,10,1
	mr 10,8
	subfic 9,8,15
	sraw 9,3,9
	andi. 9,9,0x1
	bne 0,.L755
	addi 10,8,1
	bdnz .L756
.L755:
	extsw 3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	li 9,0
	li 10,8
	mtctr 10
.L763:
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L762
	addi 8,9,1
	mr 9,8
	sraw 10,3,8
	andi. 10,10,0x1
	bne 0,.L762
	addi 9,8,1
	bdnz .L763
.L762:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE117:
	.size	__ctzhi2,.-__ctzhi2
	.align 2
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
	bne 0,.L774
	fctidz 0,1
	stfd 0,-16(1)
	ld 3,-16(1)
	blr
.L774:
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
.L776:
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
	bdnz .L776
	add 3,8,10
	rldicl 3,3,0,63
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-__parityhi2
	.align 2
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
.L783:
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
	bdnz .L783
	add 3,8,10
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mr. 10,3
	beq 0,.L792
	li 3,0
.L791:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	add 3,3,9
	rldic 4,4,1,32
	srdi. 10,10,1
	bne 0,.L791
.L790:
	rldicl 3,3,0,32
	blr
.L792:
	li 3,0
	b .L790
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr. 10,3
	beq 0,.L797
	cmpdi 0,4,0
	beq 0,.L798
	li 3,0
.L796:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	add 3,3,9
	rldic 10,10,1,32
	srdi. 4,4,1
	bne 0,.L796
.L795:
	rldicl 3,3,0,32
	blr
.L797:
	li 3,0
	b .L795
.L798:
	li 3,0
	b .L795
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	li 9,1
	cmplw 0,4,3
	bge 0,.L802
.L801:
	cmpwi 0,4,0
	blt 0,.L802
	slwi 4,4,1
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L802
	cmpwi 0,9,0
	bne 0,.L801
.L802:
	cmpwi 0,9,0
	beq 0,.L809
	li 10,0
	b .L806
.L805:
	srwi 9,9,1
	srdi 4,4,1
	cmpwi 0,9,0
	beq 0,.L804
.L806:
	cmplw 0,3,4
	blt 0,.L805
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
	b .L805
.L809:
	mr 10,9
.L804:
	cmpdi 0,5,0
	bne 0,.L813
.L807:
	rldicl 3,10,0,32
	blr
.L813:
	mr 10,3
	b .L807
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	li 3,-1
	fcmpu 0,1,2
	blt 0,.L815
	mfcr 3
	rlwinm 3,3,2,1
.L815:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	li 3,-1
	fcmpu 0,1,2
	blt 0,.L818
	mfcr 3
	rlwinm 3,3,2,1
.L818:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
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
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	li 7,0
	cmpwi 0,4,0
	blt 0,.L830
.L823:
	cmpdi 0,4,0
	beq 0,.L828
	li 8,32
	li 10,0
.L825:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,3
	add 10,10,9
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
	cmpdi 0,4,0
	beq 0,.L824
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne 0,.L825
.L824:
	cmpwi 0,7,0
	beq 0,.L826
	neg 10,10
.L826:
	extsw 3,10
	blr
.L830:
	neg 4,4
	extsw 4,4
	li 7,1
	b .L823
.L828:
	li 10,0
	b .L824
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE128:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
.LCF129:
0:	addis 2,12,.TOC.-.LCF129@ha
	addi 2,2,.TOC.-.LCF129@l
	.localentry	__divsi3,.-__divsi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	cmpdi 0,3,0
	li 31,0
	blt 0,.L838
.L832:
	cmpdi 0,4,0
	blt 0,.L839
.L833:
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq 0,.L831
	neg 3,3
.L831:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L838:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L832
.L839:
	neg 4,4
	xori 31,31,0x1
	b .L833
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
.LCF130:
0:	addis 2,12,.TOC.-.LCF130@ha
	addi 2,2,.TOC.-.LCF130@l
	.localentry	__modsi3,.-__modsi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	cmpdi 0,3,0
	li 31,0
	blt 0,.L846
.L841:
	sradi 9,4,63
	xor 4,9,4
	subf 4,9,4
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,31,0
	beq 0,.L840
	neg 3,3
.L840:
	addi 1,1,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L846:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L841
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	li 9,1
	li 10,16
	mtctr 10
	cmplw 0,4,3
	bge 0,.L849
.L848:
	andi. 10,4,0x8000
	bne 0,.L849
	rldic 4,4,1,48
	slwi 9,9,1
	cmplw 0,3,4
	ble 0,.L849
	bdnz .L848
	li 9,0
.L849:
	andi. 10,9,0xffff
	beq 0,.L857
	li 8,0
	b .L853
.L852:
	rldicl 10,9,63,49
	mr 9,10
	srdi 4,4,1
	cmpwi 0,10,0
	beq 0,.L851
.L853:
	cmplw 0,3,4
	blt 0,.L852
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 8,9,8
	b .L852
.L857:
	mr 8,9
.L851:
	cmpdi 0,5,0
	bne 0,.L863
.L854:
	rlwinm 3,8,0,0xffff
	blr
.L863:
	mr 8,3
	b .L854
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mr 10,3
	li 9,1
	cmpld 0,4,3
	bge 0,.L866
.L865:
	andis. 8,4,0x8000
	bne 0,.L866
	sldi 4,4,1
	sldi 9,9,1
	cmpld 0,10,4
	ble 0,.L866
	cmpdi 0,9,0
	bne 0,.L865
.L866:
	cmpdi 0,9,0
	beq 0,.L873
	li 3,0
	b .L870
.L869:
	srdi 4,4,1
	srdi. 9,9,1
	beq 0,.L868
.L870:
	cmpld 0,10,4
	blt 0,.L869
	subf 10,4,10
	or 3,3,9
	b .L869
.L873:
	mr 3,9
.L868:
	cmpdi 0,5,0
	beqlr 0
	mr 3,10
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L878
	addi 4,4,-32
	slw 9,3,4
	li 3,0
.L879:
	sldi 9,9,32
	or 3,3,9
	blr
.L878:
	cmpdi 0,4,0
	beqlr 0
	slw 3,3,4
	subfic 10,4,32
	srw 10,9,10
	sradi 9,9,32
	slw 9,9,4
	or 9,10,9
	b .L879
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L883
	addi 5,5,-64
	sld 4,3,5
	li 10,0
.L884:
	mr 3,10
	blr
.L883:
	cmpdi 0,5,0
	beqlr 0
	sld 10,3,5
	subfic 9,5,64
	srd 9,3,9
	sld 4,4,5
	or 4,9,4
	b .L884
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-__ashlti3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L888
	sradi 9,3,32
	srawi 3,9,31
	addi 4,4,-32
	sraw 9,9,4
.L889:
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L888:
	cmpdi 0,4,0
	beqlr 0
	sradi 10,3,32
	sraw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 9,10,9
	b .L889
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L893
	sradi 10,4,63
	addi 5,5,-64
	srad 3,4,5
.L894:
	mr 4,10
	blr
.L893:
	cmpdi 0,5,0
	beqlr 0
	srad 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L894
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-__ashrti3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	srdi 9,3,56
	rldimi 9,3,56,0
	srdi 10,3,40
	rlwinm 10,10,0,16,23
	or 9,9,10
	srdi 10,3,24
	rlwinm 10,10,0,8,15
	or 9,9,10
	srdi 10,3,8
	rlwinm 10,10,0,0,7
	or 9,9,10
	rldicr 10,3,32,7
	srdi 10,10,24
	or 9,9,10
	rldicr 10,3,40,7
	srdi 10,10,16
	or 9,9,10
	rldicr 3,3,48,7
	srdi 3,3,8
	or 3,9,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE137:
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	srwi 9,3,24
	rlwimi 9,3,24,0,31-24
	rlwinm 10,3,24,16,23
	or 9,9,10
	rlwinm 3,3,8,8,15
	or 3,9,3
	rldicl 3,3,0,32
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE138:
	.size	__bswapsi2,.-__bswapsi2
	.align 2
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
	bne 0,.L900
	subfic 3,3,2
.L901:
	add 9,9,10
	add 3,3,9
	extsw 3,3
	blr
.L900:
	li 3,0
	b .L901
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	cntlzd 10,4
	srdi 10,10,6
	rlwinm 8,10,0,0xff
	addi 9,8,-1
	extsw 9,9
	and 9,9,4
	cmpwi 0,8,0
	bne 0,.L904
	li 3,0
.L904:
	or 9,9,3
	cntlzd 9,9
	slwi 3,10,6
	add 3,3,9
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-__clzti2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	sradi 8,3,32
	sradi 10,4,32
	li 9,0
	cmpw 0,8,10
	blt 0,.L906
	li 9,2
	bgt 0,.L906
	li 9,0
	cmplw 0,3,4
	blt 0,.L906
	li 9,2
	bgt 0,.L906
	li 9,1
.L906:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE141:
	.size	__cmpdi2,.-__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
.LCF142:
0:	addis 2,12,.TOC.-.LCF142@ha
	addi 2,2,.TOC.-.LCF142@l
	.localentry	__aeabi_lcmp,.-__aeabi_lcmp
	mflr 0
	std 0,16(1)
	stdu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_offset 65, 16
	bl __cmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,1,32
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	li 9,0
	cmpd 0,4,6
	blt 0,.L914
	li 9,2
	bgt 0,.L914
	li 9,0
	cmpld 0,3,5
	blt 0,.L914
	subfc 5,3,5
	subfe 9,9,9
	subfic 9,9,1
.L914:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-__cmpti2
	.align 2
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
	.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	cntlzd 9,3
	srdi 9,9,6
	neg 10,9
	and 4,4,10
	addic 10,9,-1
	subfe 10,10,10
	and 10,10,3
	or 4,4,10
	neg 10,4
	and 4,4,10
	cntlzd 4,4
	subfic 4,4,63
	slwi 3,9,6
	add 3,3,4
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-__ctzti2
	.align 2
	.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	cmpdi 0,3,0
	bne 0,.L924
	li 3,0
	cmpdi 0,4,0
	beq 0,.L925
	neg 9,4
	and 4,4,9
	cntlzd 4,4
	subfic 3,4,128
	b .L925
.L924:
	neg 9,3
	and 3,3,9
	cntlzd 3,3
	subfic 3,3,64
.L925:
	extsw 3,3
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-__ffsti2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L928
	srdi 9,3,32
	addi 4,4,-32
	srw 9,9,4
	li 3,0
.L929:
	rldicl 9,9,0,32
	sldi 3,3,32
	or 3,3,9
	blr
.L928:
	cmpdi 0,4,0
	beqlr 0
	srdi 10,3,32
	srw 3,10,4
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 9,10,9
	b .L929
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	andi. 9,5,0x40
	beq 0,.L933
	addi 5,5,-64
	srd 3,4,5
	li 10,0
.L934:
	mr 4,10
	blr
.L933:
	cmpdi 0,5,0
	beqlr 0
	srd 10,4,5
	subfic 9,5,64
	sld 9,4,9
	srd 3,3,5
	or 3,9,3
	b .L934
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-__lshrti3
	.align 2
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
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
.LCF150:
0:	addis 2,12,.TOC.-.LCF150@ha
	addi 2,2,.TOC.-.LCF150@l
	.localentry	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,3
	mr 30,4
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __muldsi3
	sradi 9,31,32
	mullw 9,30,9
	sradi 30,30,32
	mullw 31,31,30
	add 9,9,31
	sradi 10,3,32
	add 9,9,10
	rldimi 3,9,32,0
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
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
	.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
.LCF152:
0:	addis 2,12,.TOC.-.LCF152@ha
	addi 2,2,.TOC.-.LCF152@l
	.localentry	__multi3,.-__multi3
	mflr 0
	std 0,16(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 30,3
	mr 28,4
	mr 31,5
	mr 29,6
	mr 4,5
	bl __mulddi3
	mulld 31,31,28
	mulld 30,30,29
	add 31,31,30
	add 4,31,4
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.long 0
	.byte 0,0,0,1,128,4,0,0
	.cfi_endproc
.LFE152:
	.size	__multi3,.-__multi3
	.align 2
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
	mr 5,3
	sldi 0,4,63
	srdi 30,3,1
	or 30,0,30
	srdi 31,4,1
	lis 3,0x5555
	ori 3,3,0x5555
	rldimi 3,3,32,0
	and 30,30,3
	and 31,31,3
	subfc 10,30,5
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
	lfd 1,.LC32@toc@l(10)
	b .L955
.L953:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L954
	fmul 0,0,0
.L955:
	andi. 10,9,0x1
	beq 0,.L953
	fmul 1,1,0
	b .L953
.L954:
	cmpwi 0,4,0
	bgelr 0
	addis 9,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(9)
	fdiv 1,0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-__powidf2
	.align 2
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
	lfs 1,.LC33@toc@l(10)
	b .L960
.L958:
	srawi 9,9,1
	addze 9,9
	extsw. 9,9
	beq 0,.L959
	fmuls 0,0,0
.L960:
	andi. 10,9,0x1
	beq 0,.L958
	fmuls 1,1,0
	b .L958
.L959:
	cmpwi 0,4,0
	bgelr 0
	addis 9,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(9)
	fdivs 1,0,1
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	srdi 8,3,32
	srdi 10,4,32
	li 9,0
	cmplw 0,8,10
	blt 0,.L963
	li 9,2
	bgt 0,.L963
	li 9,0
	cmplw 0,3,4
	blt 0,.L963
	li 9,2
	bgt 0,.L963
	li 9,1
.L963:
	extsw 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,0
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2,.-__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
.LCF164:
0:	addis 2,12,.TOC.-.LCF164@ha
	addi 2,2,.TOC.-.LCF164@l
	.localentry	__aeabi_ulcmp,.-__aeabi_ulcmp
	mflr 0
	std 0,16(1)
	stdu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_offset 65, 16
	bl __ucmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,1,32
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,0
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	li 9,0
	cmpld 0,4,6
	blt 0,.L971
	li 9,2
	bgt 0,.L971
	li 9,0
	cmpld 0,3,5
	blt 0,.L971
	subfc 5,3,5
	subfe 9,9,9
	subfic 9,9,1
.L971:
	extsw 3,9
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
