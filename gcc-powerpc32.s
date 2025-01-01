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
	addi 10,5,1
	mtctr 10
	b .L3
.L4:
	lbzu 10,-1(4)
	stbu 10,-1(9)
.L3:
	bdnz .L4
	blr
.L2:
	cmplw 0,3,4
	beqlr- 0
	addi 4,4,-1
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L6
.L7:
	lbzu 10,1(4)
	stbu 10,1(9)
.L6:
	bdnz .L7
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
	addi 4,4,-1
	mr 10,3
	addi 9,6,1
	mtctr 9
	b .L9
.L11:
	addi 6,6,-1
	addi 10,10,1
.L9:
	bdz .L10
	lbzu 9,1(4)
	stb 9,0(10)
	rlwinm 9,9,0,0xff
	cmpw 0,5,9
	bne+ 0,.L11
.L10:
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
	addi 9,5,1
	mtctr 9
	b .L17
.L19:
	addi 3,3,1
	addi 5,5,-1
.L17:
	bdz .L18
	lbz 9,0(3)
	cmpw 0,4,9
	bne+ 0,.L19
.L18:
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
	addi 10,5,1
	mtctr 10
	b .L25
.L27:
	addi 5,5,-1
	addi 9,9,1
	addi 4,4,1
.L25:
	bdz .L26
	lbz 8,0(9)
	lbz 10,0(4)
	cmpw 0,8,10
	beq+ 0,.L27
.L26:
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
	addi 4,4,-1
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L33
.L34:
	lbzu 10,1(4)
	stbu 10,1(9)
.L33:
	bdnz .L34
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
	addi 9,5,-1
	addi 10,5,1
	mtctr 10
.L36:
	bdz .L40
	lbzx 10,3,9
	addi 8,9,-1
	cmpw 0,4,10
	beq- 0,.L41
	mr 9,8
	b .L36
.L41:
	add 3,3,9
	blr
.L40:
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
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L43
.L44:
	stbu 4,1(9)
.L43:
	bdnz .L44
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
	addi 4,4,-1
	b .L46
.L49:
	addi 3,3,1
.L46:
	lbzu 9,1(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne+ 0,.L49
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
	b .L51
.L54:
	addi 3,3,1
.L51:
	lbz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	cmpw 0,4,9
	bne+ 0,.L54
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
.L57:
	lbz 9,0(3)
	cmpw 0,4,9
	beqlr- 0
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne+ 0,.L57
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
	b .L61
.L63:
	addi 3,3,1
	addi 4,4,1
.L61:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne- 0,.L62
	cmpwi 0,10,0
	bne+ 0,.L63
.L62:
	lbz 3,0(3)
	lbz 9,0(4)
	subf 3,9,3
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
	mr 9,3
	b .L65
.L66:
	addi 9,9,1
.L65:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne+ 0,.L66
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
	li 9,0
	cmpwi 0,5,0
	mtctr 5
	beq- 0,.L68
.L69:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L70
	lbz 9,0(4)
	cmpwi 0,9,0
	beq- 0,.L70
	bdz .L70
	lbz 10,0(3)
	cmpw 0,10,9
	bne- 0,.L70
	addi 3,3,1
	addi 4,4,1
	b .L69
.L70:
	lbz 10,0(3)
	lbz 9,0(4)
	subf 9,9,10
.L68:
	mr 3,9
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
	srwi 9,5,1
	addi 9,9,1
	mtctr 9
	cmpwi 0,5,0
	bge+ 0,.L76
	li 9,1
	mtctr 9
	b .L76
.L77:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
.L76:
	bdnz .L77
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
	rlwinm 3,3,0,0xff
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
	rlwinm 3,3,0,0xff
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
	mr 9,3
	li 3,1
	cmpwi 0,9,32
	beqlr- 0
	xori 9,9,0x9
	cntlzw 9,9
	srwi 3,9,5
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
	mr 9,3
	li 3,1
	cmplwi 0,9,31
	blelr- 0
	xori 9,9,0x7f
	cntlzw 9,9
	srwi 3,9,5
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
	rlwinm 3,3,0,0xff
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
	rlwinm 3,3,0,0xff
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
	rlwinm 3,3,0,0xff
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
	rlwinm 3,3,0,0xff
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
	mr 9,3
	li 3,1
	cmpwi 0,9,32
	beqlr- 0
	addi 9,9,-9
	addic 9,9,-5
	subfe 3,3,3
	neg 3,3
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
	rlwinm 3,3,0,0xff
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
	li 3,1
	cmplwi 0,9,31
	blelr- 0
	addi 10,9,-127
	cmplwi 0,10,32
	blelr- 0
	addi 10,9,-8232
	cmplwi 0,10,1
	blelr- 0
	addis 9,9,0xffff
	addi 9,9,7
	addic 9,9,-3
	subfe 3,3,3
	neg 3,3
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
	rlwinm 3,3,0,0xff
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
	ble- 0,.L113
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
.L113:
	addi 9,3,1
	rlwinm 9,9,0,25,31
	subfic 9,9,32
	subfe 3,3,3
	neg 3,3
	rlwinm 3,3,0,0xff
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
	mr 9,3
	addi 10,3,-48
	li 3,1
	cmplwi 0,10,9
	blelr- 0
	ori 9,9,0x20
	addi 9,9,-97
	addic 9,9,-6
	subfe 3,3,3
	neg 3,3
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
	bne- 0,.L122
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L123
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L126
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
.L120:
	lwz 0,36(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L122:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L120
.L123:
	mr 3,28
	mr 4,29
	b .L120
.L126:
	li 3,0
	li 4,0
	b .L120
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
	bne- 0,.L130
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L131
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	ble- 0,.L134
	mr 4,30
	mr 3,31
	bl __subsf3
.L128:
	lwz 0,20(1)
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L130:
	.cfi_restore_state
	mr 3,31
	b .L128
.L131:
	mr 3,30
	b .L128
.L134:
	li 3,0
	b .L128
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
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L139
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L140
	rlwinm 10,30,0,0,0
	rlwinm 9,28,0,0,0
	cmpw 0,10,9
	beq- 0,.L137
	cmpwi 0,30,0
	bge- 0,.L141
	mr 3,28
	mr 4,29
.L136:
	lwz 0,36(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L137:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L144
	mr 3,28
	mr 4,29
	b .L136
.L139:
	mr 3,28
	mr 4,29
	b .L136
.L140:
	mr 3,30
	mr 4,31
	b .L136
.L141:
	mr 3,30
	mr 4,31
	b .L136
.L144:
	mr 3,30
	mr 4,31
	b .L136
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
	bne- 0,.L149
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L150
	rlwinm 10,30,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L147
	mr 3,30
	cmpwi 0,30,0
	bge- 0,.L146
	mr 3,31
.L146:
	lwz 0,20(1)
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L147:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	mr 9,3
	mr 3,31
	cmpwi 0,9,0
	blt- 0,.L146
	mr 3,30
	b .L146
.L149:
	mr 3,31
	b .L146
.L150:
	mr 3,30
	b .L146
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
	bne- 0,.L159
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L160
	rlwinm 10,28,0,0,0
	rlwinm 9,24,0,0,0
	cmpw 0,10,9
	beq- 0,.L157
	cmpwi 0,28,0
	bge- 0,.L161
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L156:
	lwz 0,52(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
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
.L157:
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
	bge- 0,.L164
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L156
.L159:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L156
.L160:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L156
.L161:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L156
.L164:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L156
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
	mr 29,4
	mr 28,3
	mr 31,6
	mr 30,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L169
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L170
	rlwinm 10,28,0,0,0
	rlwinm 9,30,0,0,0
	cmpw 0,10,9
	beq- 0,.L167
	cmpwi 0,28,0
	bge- 0,.L171
	mr 3,28
	mr 4,29
.L166:
	lwz 0,36(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L167:
	.cfi_restore_state
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L174
	mr 3,28
	mr 4,29
	b .L166
.L169:
	mr 3,30
	mr 4,31
	b .L166
.L170:
	mr 3,28
	mr 4,29
	b .L166
.L171:
	mr 3,30
	mr 4,31
	b .L166
.L174:
	mr 3,30
	mr 4,31
	b .L166
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
	bne- 0,.L179
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L180
	rlwinm 10,30,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L177
	mr 3,31
	cmpwi 0,30,0
	bge- 0,.L176
	mr 3,30
.L176:
	lwz 0,20(1)
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L177:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	mr 9,3
	mr 3,30
	cmpwi 0,9,0
	blt- 0,.L176
	mr 3,31
	b .L176
.L179:
	mr 3,31
	b .L176
.L180:
	mr 3,30
	b .L176
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
	bne- 0,.L189
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L190
	rlwinm 10,24,0,0,0
	rlwinm 9,28,0,0,0
	cmpw 0,10,9
	beq- 0,.L187
	cmpwi 0,24,0
	bge- 0,.L191
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L186:
	lwz 0,52(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
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
.L187:
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
	bge- 0,.L194
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L186
.L189:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L186
.L190:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L186
.L191:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L186
.L194:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L186
	.cfi_endproc
.LFE36:
	.size	fminl,.-fminl
	.section	.rodata
	.align 2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 2
	.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	lis 9,s.0@ha
	la 9,s.0@l(9)
	lis 8,digits@ha
	la 8,digits@l(8)
	b .L196
.L197:
	rlwinm 10,3,0,26,31
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L196:
	cmpwi 0,3,0
	bne+ 0,.L197
	li 10,0
	stb 10,0(9)
	lis 3,s.0@ha
	la 3,s.0@l(3)
	blr
	.cfi_endproc
.LFE37:
	.size	l64a,.-l64a
	.lcomm	seed,8,8
	.type	seed, @object
	.align 2
	.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	addi 11,3,-1
	li 10,0
	lis 9,seed@ha
	la 9,seed@l(9)
	stw 10,0(9)
	stw 11,4(9)
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
	lis 7,seed@ha
	la 7,seed@l(7)
	lwz 4,0(7)
	lwz 5,4(7)
	lis 6,0x4c95
	ori 6,6,0x7f2d
	mullw 8,6,4
	lis 10,0x5851
	ori 10,10,0xf42d
	mullw 10,10,5
	add 8,8,10
	mullw 11,6,5
	mulhwu 10,6,5
	add 10,8,10
	addic 9,11,1
	addze 8,10
	stw 8,0(7)
	stw 9,4(7)
	srwi 11,8,1
	mr 3,11
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
	beq- 0,.L203
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L203:
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
	beq- 0,.L205
	lwz 10,4(3)
	stw 10,4(9)
.L205:
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
	mr 27,3
	mr 25,4
	mr 24,5
	mr 29,6
	mr 26,7
	lwz 28,0(5)
	mr 30,4
	li 31,0
	b .L208
.L209:
	addi 31,31,1
.L208:
	cmplw 0,31,28
	beq- 0,.L212
	mr 4,30
	mr 3,27
	mtctr 26
	bctrl
	add 30,30,29
	cmpwi 0,3,0
	bne+ 0,.L209
	mullw 31,31,29
	add 3,25,31
	b .L210
.L212:
	addi 9,28,1
	stw 9,0(24)
	mullw 28,29,28
	mr 5,29
	mr 4,27
	add 3,25,28
	bl memcpy
.L210:
	lwz 0,52(1)
	mtlr 0
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
	mflr 0
	stw 0,52(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 27,3
	mr 25,4
	mr 29,6
	mr 28,7
	lwz 26,0(5)
	mr 30,4
	li 31,0
	b .L214
.L215:
	addi 31,31,1
.L214:
	cmplw 0,31,26
	beq- 0,.L218
	mr 4,30
	mr 3,27
	mtctr 28
	bctrl
	add 30,30,29
	cmpwi 0,3,0
	bne+ 0,.L215
	mullw 31,31,29
	add 3,25,31
	b .L216
.L218:
	li 3,0
.L216:
	lwz 0,52(1)
	mtlr 0
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	b .L221
.L222:
	addi 31,31,1
.L221:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L222
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L228
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L224
	li 8,1
.L223:
	addi 31,31,1
.L224:
	addi 31,31,-1
	li 9,0
	b .L225
.L228:
	li 8,0
	b .L223
.L226:
	slwi 10,9,2
	add 10,10,9
	slwi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	subf 9,9,10
.L225:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L226
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L227
	neg 3,9
.L227:
	lwz 0,20(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	b .L232
.L233:
	addi 31,31,1
.L232:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L233
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L239
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L235
	li 8,1
.L234:
	addi 31,31,1
.L235:
	addi 31,31,-1
	li 9,0
	b .L236
.L239:
	li 8,0
	b .L234
.L237:
	slwi 10,9,2
	add 10,10,9
	slwi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	subf 9,9,10
.L236:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L237
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L238
	neg 3,9
.L238:
	lwz 0,20(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 27,3
	b .L243
.L244:
	addi 27,27,1
.L243:
	lbz 3,0(27)
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L244
	lbz 9,0(27)
	cmpwi 0,9,43
	beq- 0,.L250
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L246
	li 8,1
.L245:
	addi 27,27,1
.L246:
	addi 27,27,-1
	li 10,0
	li 11,0
	b .L247
.L250:
	li 8,0
	b .L245
.L248:
	srwi 9,11,30
	slwi 30,10,2
	or 30,9,30
	slwi 31,11,2
	addc 25,31,11
	adde 24,30,10
	srwi 9,25,31
	slwi 28,24,1
	or 28,9,28
	slwi 29,25,1
	lbz 9,0(27)
	addi 9,9,-48
	srawi 22,9,31
	subfc 11,9,29
	subfe 10,22,28
.L247:
	lbzu 9,1(27)
	addi 9,9,-48
	cmplwi 0,9,9
	ble+ 0,.L248
	cmpwi 0,8,0
	bne- 0,.L252
	subfic 4,11,0
	subfze 3,10
.L249:
	lwz 0,52(1)
	mtlr 0
	lwz 22,8(1)
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	blr
.L252:
	.cfi_restore_state
	mr 3,10
	mr 4,11
	b .L249
	.cfi_endproc
.LFE47:
	.size	atoll,.-atoll
	.align 2
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
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
	mr 26,3
	mr 28,4
	mr 30,5
	mr 29,6
	mr 27,7
	b .L254
.L261:
	srwi 30,30,1
.L254:
	cmpwi 0,30,0
	beq- 0,.L260
	srwi 31,30,1
	mullw 31,31,29
	add 31,28,31
	mr 4,31
	mr 3,26
	mtctr 27
	bctrl
	cmpwi 0,3,0
	blt- 0,.L261
	cmpwi 0,3,0
	ble- 0,.L259
	add 28,31,29
	srwi 9,30,1
	addi 30,30,-1
	subf 30,9,30
	b .L254
.L260:
	li 3,0
.L257:
	lwz 0,36(1)
	mtlr 0
	lwz 26,8(1)
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	blr
.L259:
	.cfi_restore_state
	mr 3,31
	b .L257
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
	mflr 0
	stw 0,52(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 25,3
	mr 28,6
	mr 26,7
	mr 27,8
	mr 30,5
	mr 29,4
	b .L263
.L265:
	srawi 30,30,1
.L263:
	cmpwi 0,30,0
	beq- 0,.L268
	srawi 31,30,1
	mullw 31,31,28
	add 31,29,31
	mr 5,27
	mr 4,31
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L267
	ble- 0,.L265
	add 29,31,28
	addi 30,30,-1
	b .L265
.L268:
	li 3,0
.L264:
	lwz 0,52(1)
	mtlr 0
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L267:
	.cfi_restore_state
	mr 3,31
	b .L264
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
	subf 4,5,4
	stw 10,0(3)
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
	srawi 11,3,31
	xor 8,11,3
	xor 9,11,4
	subfc 4,11,9
	subfe 3,11,8
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
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,3
	mr 29,6
	mr 28,5
	mr 27,8
	mr 26,7
	mr 5,7
	mr 6,8
	mr 3,28
	mr 4,29
	bl __divdi3
	mr 25,4
	mr 24,3
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __moddi3
	stw 24,0(31)
	stw 25,4(31)
	stw 3,8(31)
	stw 4,12(31)
	mr 3,31
	lwz 0,52(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
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
	divw 10,4,5
	mullw 5,10,5
	subf 4,5,4
	stw 10,0(3)
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
	srawi 11,3,31
	xor 8,11,3
	xor 9,11,4
	subfc 4,11,9
	subfe 3,11,8
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
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,3
	mr 29,6
	mr 28,5
	mr 27,8
	mr 26,7
	mr 5,7
	mr 6,8
	mr 3,28
	mr 4,29
	bl __divdi3
	mr 25,4
	mr 24,3
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __moddi3
	stw 24,0(31)
	stw 25,4(31)
	stw 3,8(31)
	stw 4,12(31)
	mr 3,31
	lwz 0,52(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
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
	b .L277
.L279:
	addi 3,3,4
.L277:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L278
	cmpw 0,4,9
	bne+ 0,.L279
.L278:
	lwz 9,0(3)
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
	mr 9,3
	b .L283
.L285:
	addi 9,9,4
	addi 4,4,4
.L283:
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L284
	cmpwi 0,8,0
	beq- 0,.L284
	lwz 10,0(4)
	cmpwi 0,10,0
	bne+ 0,.L285
.L284:
	lwz 8,0(9)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,8,10
	bltlr- 0
	mr 9,8
	srwi 3,8,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
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
.L289:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L289
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
	mr 9,3
	b .L293
.L294:
	addi 9,9,4
.L293:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne+ 0,.L294
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
	mr 9,3
	addi 10,5,1
	mtctr 10
.L296:
	bdz .L297
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L297
	cmpwi 0,8,0
	beq- 0,.L297
	lwz 10,0(4)
	cmpwi 0,10,0
	beq- 0,.L297
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
	b .L296
.L297:
	li 3,0
	cmpwi 0,5,0
	beqlr- 0
	lwz 8,0(9)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,8,10
	bltlr- 0
	mr 9,8
	srwi 3,8,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
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
	addi 9,5,1
	mtctr 9
	b .L305
.L307:
	addi 5,5,-1
	addi 3,3,4
.L305:
	bdz .L306
	lwz 9,0(3)
	cmpw 0,4,9
	bne+ 0,.L307
.L306:
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
	addi 10,5,1
	mtctr 10
	b .L313
.L315:
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
.L313:
	bdz .L314
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	beq+ 0,.L315
.L314:
	li 3,0
	cmpwi 0,5,0
	beqlr- 0
	lwz 8,0(9)
	lwz 10,0(4)
	li 3,-1
	cmpw 0,8,10
	bltlr- 0
	mr 9,8
	srwi 3,8,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
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
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L322
.L323:
	lwzu 10,4(4)
	stwu 10,4(9)
.L322:
	addi 5,5,-1
	bdnz .L323
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
	subf 9,4,3
	slwi 10,5,2
	cmplw 0,9,10
	blt- 0,.L326
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L327
.L326:
	slwi 5,5,2
	add 4,4,5
	add 9,3,5
	srwi 5,5,2
	addi 10,5,1
	mtctr 10
	b .L328
.L329:
	lwzu 10,-4(4)
	stwu 10,-4(9)
.L328:
	bdnz .L329
	blr
.L330:
	lwzu 10,4(4)
	stwu 10,4(9)
.L327:
	addi 5,5,-1
	bdnz .L330
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
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L332
.L333:
	stwu 4,4(9)
.L332:
	addi 5,5,-1
	bdnz .L333
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
	bge- 0,.L335
	add 3,3,5
	add 4,4,5
	addi 9,5,1
	mtctr 9
	b .L336
.L337:
	lbzu 9,-1(3)
	stbu 9,-1(4)
.L336:
	bdnz .L337
	blr
.L335:
	cmplw 0,3,4
	beqlr- 0
	addi 3,3,-1
	addi 4,4,-1
	addi 9,5,1
	mtctr 9
	b .L339
.L340:
	lbzu 9,1(3)
	stbu 9,1(4)
.L339:
	bdnz .L340
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 11,4
	mr 10,3
	addic. 9,5,-32
	blt- 0,.L342
	slw 30,4,9
	li 31,0
.L343:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L344
	srw 7,10,9
	li 6,0
.L345:
	or 3,30,6
	or 4,31,7
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L342:
	.cfi_restore_state
	srwi 9,4,1
	subfic 8,5,31
	srw 9,9,8
	slw 30,3,5
	or 30,9,30
	slw 31,4,5
	b .L343
.L344:
	slwi 9,10,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 8,5,31
	slw 9,9,8
	srw 7,11,5
	or 7,9,7
	srw 6,10,5
	b .L345
	.cfi_endproc
.LFE68:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 11,4
	mr 10,3
	addic. 9,5,-32
	blt- 0,.L347
	srw 31,3,9
	li 30,0
.L348:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L349
	slw 6,11,9
	li 7,0
.L350:
	or 3,30,6
	or 4,31,7
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L347:
	.cfi_restore_state
	slwi 9,3,1
	subfic 8,5,31
	slw 9,9,8
	srw 31,4,5
	or 31,9,31
	srw 30,3,5
	b .L348
.L349:
	srwi 9,11,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 8,5,31
	srw 9,9,8
	slw 6,10,5
	or 6,9,6
	slw 7,11,5
	b .L350
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
	slw 9,3,4
	subfic 4,4,16
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
	srw 9,3,4
	subfic 4,4,16
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
	slw 9,3,4
	subfic 4,4,8
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
	srw 9,3,4
	subfic 4,4,8
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
	or 3,9,3
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
	srwi 10,3,24
	rlwinm 9,3,24,16,23
	or 9,9,10
	rlwinm 10,3,8,8,15
	or 9,9,10
	slwi 3,3,24
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 12,4
	rlwinm 6,3,0,0,7
	srwi 9,6,24
	rlwinm 4,3,0,8,15
	srwi 7,4,8
	li 30,0
	or 31,7,9
	rlwinm 6,3,0,16,23
	slwi 9,6,8
	srwi 8,6,24
	or 4,30,8
	or 5,31,9
	rlwinm 6,3,0,24,31
	slwi 9,6,24
	srwi 8,6,8
	or 6,4,8
	or 7,5,9
	li 4,0
	rlwinm 5,12,0,0,7
	srwi 10,5,24
	slwi 8,4,8
	or 8,10,8
	slwi 9,5,8
	or 4,6,8
	or 5,7,9
	li 6,0
	rlwinm 7,12,0,8,15
	srwi 10,7,8
	slwi 8,6,24
	or 8,10,8
	slwi 9,7,24
	or 6,4,8
	or 7,5,9
	rlwinm 9,12,0,16,23
	slwi 4,9,8
	or 8,6,4
	mr 9,7
	rlwinm 7,12,0,24,31
	slwi 10,7,24
	or 3,8,10
	mr 4,9
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
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
	li 10,33
	mtctr 10
.L363:
	bdz .L367
	srw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L368
	addi 9,9,1
	b .L363
.L368:
	addi 3,9,1
	blr
.L367:
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
	mr 9,3
	li 3,0
	cmpwi 0,9,0
	beqlr- 0
	li 3,1
	b .L371
.L374:
	srawi 9,9,1
	addi 3,3,1
.L371:
	andi. 10,9,0x1
	beq+ 0,.L374
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
	li 9,1
	cmpwi 0,3,0
	blt- 0,.L376
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 9,9,3
	srwi 9,9,31
.L376:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
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
	lis 5,0xffef
	ori 5,5,0xffff
	li 6,-1
	bl __ltdf2
	li 9,1
	cmpwi 0,3,0
	blt- 0,.L382
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 9,9,3
	srwi 9,9,31
.L382:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
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
	lis 7,0xffef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0xfc8f
	ori 9,9,0xffff
	li 10,-2
	bl __gcc_qlt
	li 9,1
	cmpwi 0,3,0
	blt- 0,.L388
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
	nor 9,9,3
	srwi 9,9,31
.L388:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	mr 29,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L395
	mr 4,30
	mr 3,30
	bl __addsf3
	mr 4,3
	mr 3,30
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L395
	lis 31,0x4000
	cmpwi 0,29,0
	bge+ 0,.L399
	lis 31,0x3f00
	b .L399
.L398:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L395
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L399:
	andi. 9,29,0x1
	beq- 0,.L398
	mr 4,31
	mr 3,30
	bl __mulsf3
	mr 30,3
	b .L398
.L395:
	mr 3,30
	lwz 0,36(1)
	mtlr 0
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
	mr 29,4
	mr 28,3
	mr 27,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L403
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __adddf3
	mr 6,4
	mr 5,3
	mr 3,28
	mr 4,29
	bl __nedf2
	cmpwi 0,3,0
	beq- 0,.L403
	lis 30,0x4000
	li 31,0
	cmpwi 0,27,0
	bge+ 0,.L407
	lis 30,0x3fe0
	li 31,0
	b .L407
.L406:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L403
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L407:
	andi. 9,27,0x1
	beq- 0,.L406
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
	b .L406
.L403:
	mr 3,28
	mr 4,29
	lwz 0,36(1)
	mtlr 0
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
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
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
	bne- 0,.L411
	mr 7,20
	mr 8,21
	mr 9,22
	mr 10,23
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qadd
	mr 10,6
	mr 9,5
	mr 8,4
	mr 7,3
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qne
	cmpwi 0,3,0
	beq- 0,.L411
	cmpwi 0,27,0
	blt- 0,.L418
	lis 28,0x4000
	li 29,0
	li 30,0
	li 31,0
	b .L415
.L418:
	lis 28,0x3fe0
	li 29,0
	li 30,0
	li 31,0
	b .L415
.L414:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L411
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
.L415:
	andi. 9,27,0x1
	beq- 0,.L414
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
	b .L414
.L411:
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	lwz 0,68(1)
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
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
	addi 4,4,-1
	addi 10,3,-1
	addi 9,5,1
	mtctr 9
	b .L420
.L421:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
.L420:
	bdnz .L421
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
	mr 31,4
	mr 30,5
	bl strlen
	add 3,29,3
	addi 31,31,-1
	addi 9,30,1
	mtctr 9
	b .L423
.L425:
	addi 3,3,1
	addi 30,30,-1
.L423:
	bdz .L424
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	bne+ 0,.L425
.L424:
	cmpwi 0,30,0
	bne- 0,.L426
	li 9,0
	stb 9,0(3)
.L426:
	mr 3,29
	lwz 0,36(1)
	mtlr 0
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
	addi 10,4,1
	mtctr 10
.L430:
	bdz .L431
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr+ 0
	addi 3,3,1
	b .L430
.L431:
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
.L436:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L441
	addi 9,4,-1
.L439:
	lbzu 10,1(9)
	cmpwi 0,10,0
	beq- 0,.L442
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	bne+ 0,.L439
	blr
.L442:
	addi 3,3,1
	b .L436
.L441:
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
	b .L445
.L444:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	beqlr- 0
.L445:
	lbz 10,0(9)
	cmpw 0,4,10
	bne+ 0,.L444
	mr 3,9
	b .L444
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
	mr 30,4
	mr 3,4
	bl strlen
	mr 29,3
	mr 3,31
	cmpwi 0,29,0
	beq- 0,.L450
	lbz 28,0(30)
.L451:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L450
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L454
	addi 31,31,1
	b .L451
.L454:
	mr 3,31
.L450:
	lwz 0,36(1)
	mtlr 0
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
	blt- 0,.L468
.L456:
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L466
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L458
	mr 3,30
	mr 4,31
.L459:
	lwz 0,36(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L468:
	.cfi_restore_state
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L456
.L458:
	addis 3,30,0x8000
	mr 4,31
	b .L459
.L466:
	mr 3,30
	mr 4,31
	b .L459
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
	mr 30,5
	subf 29,6,4
	add 29,3,29
	cmpwi 0,6,0
	beq- 0,.L470
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne- 0,.L475
	addi 27,5,1
	addi 28,6,-1
	b .L471
.L472:
	addi 31,31,1
.L471:
	cmplw 0,31,29
	bgt- 0,.L477
	lbz 10,0(31)
	lbz 9,0(30)
	cmpw 0,10,9
	bne+ 0,.L472
	mr 5,28
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L472
	mr 3,31
	b .L470
.L477:
	li 3,0
.L470:
	lwz 0,36(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_def_cfa_offset 0
	blr
.L475:
	.cfi_restore_state
	li 3,0
	b .L470
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
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
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
	blt- 0,.L500
.L480:
	lis 5,0x3ff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 29,0
	cmpwi 0,3,0
	blt- 0,.L498
	lis 26,0x3ff0
	li 27,0
	lis 24,0x3fe0
	li 25,0
	b .L482
.L500:
	addis 10,30,0x8000
	mr 30,10
	li 23,1
	b .L480
.L484:
	addi 29,29,1
	mr 5,24
	mr 6,25
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L482:
	mr 5,26
	mr 6,27
	mr 3,30
	mr 4,31
	bl __gedf2
	cmpwi 0,3,0
	bge+ 0,.L484
.L485:
	stw 29,0(28)
	cmpwi 0,23,0
	beq- 0,.L489
	addis 10,30,0x8000
	mr 30,10
.L489:
	mr 3,30
	mr 4,31
	lwz 0,52(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	blr
.L498:
	.cfi_restore_state
	lis 5,0x3fe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	li 29,0
	cmpwi 0,3,0
	bge- 0,.L485
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __nedf2
	li 29,0
	cmpwi 0,3,0
	beq- 0,.L485
	li 29,0
	lis 26,0x3fe0
	li 27,0
	b .L487
.L488:
	addi 29,29,-1
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __adddf3
	mr 31,4
	mr 30,3
.L487:
	mr 5,26
	mr 6,27
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	blt+ 0,.L488
	b .L485
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 9,6
	mr 8,5
	mr 11,4
	mr 10,3
	li 6,0
	li 7,0
	b .L502
.L503:
	srwi 5,9,31
	slwi 30,8,1
	or 30,5,30
	slwi 31,9,1
	mr 8,30
	mr 9,31
	slwi 5,10,31
	srwi 29,11,1
	or 29,5,29
	srwi 28,10,1
	mr 10,28
	mr 11,29
.L502:
	or. 5,10,11
	beq- 0,.L506
	li 26,0
	rlwinm 27,11,0,31,31
	or. 5,26,27
	beq- 0,.L503
	addc 25,7,9
	adde 24,6,8
	mr 6,24
	mr 7,25
	b .L503
.L506:
	mr 3,6
	mr 4,7
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
.LFE100:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	li 9,1
	b .L508
.L512:
	slwi 4,4,1
	slwi 9,9,1
.L508:
	cmplw 0,4,3
	bge- 0,.L518
	cmpwi 0,9,0
	beq- 0,.L516
	cmpwi 0,4,0
	bge+ 0,.L512
	li 10,0
	b .L510
.L518:
	li 10,0
	b .L510
.L516:
	li 10,0
	b .L510
.L513:
	srwi 9,9,1
	srwi 4,4,1
.L510:
	cmpwi 0,9,0
	beq- 0,.L519
	cmplw 0,3,4
	blt- 0,.L513
	subf 3,4,3
	or 10,10,9
	b .L513
.L519:
	cmpwi 0,5,0
	bnelr- 0
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
	li 10,7
	cmpwi 0,3,0
	beq- 0,.L521
	slwi 3,3,8
	cntlzw 3,3
	addi 10,3,-1
.L521:
	mr 3,10
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
	mr 11,4
	mr 10,3
	cmpwi 0,3,0
	blt- 0,.L531
.L524:
	li 3,63
	or. 9,10,11
	beqlr- 0
	cntlzw 3,10
	cmpwi 0,10,0
	bne- 0,.L529
	cntlzw 3,11
	addi 3,3,32
.L529:
	addi 3,3,-1
	blr
.L531:
	not 8,3
	not 9,4
	mr 11,9
	mr 10,8
	b .L524
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	mr 9,3
	li 3,0
	b .L533
.L534:
	srwi 9,9,1
	slwi 4,4,1
.L533:
	cmpwi 0,9,0
	beqlr- 0
	andi. 10,9,0x1
	beq- 0,.L534
	add 3,3,4
	b .L534
	.cfi_endproc
.LFE104:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	srwi 9,5,3
	rlwinm 10,5,0,0,28
	cmplw 0,3,4
	blt- 0,.L538
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L539
.L538:
	addi 7,4,-8
	addi 8,3,-8
	addi 9,9,1
	mtctr 9
	b .L540
.L539:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L541
.L542:
	addi 7,7,8
	lwz 30,0(7)
	lwz 31,4(7)
	stwu 30,8(8)
	stw 31,4(8)
.L540:
	bdnz .L542
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L547
	cmpwi 0,5,0
	bne+ 0,.L543
.L547:
	li 9,1
	mtctr 9
	b .L543
.L544:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L543:
	bdnz .L544
.L537:
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L546:
	.cfi_restore_state
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L541:
	bdnz .L546
	b .L537
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
	blt- 0,.L549
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L550
.L549:
	addi 8,4,-2
	addi 10,3,-2
	addi 9,9,1
	mtctr 9
	b .L551
.L550:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L552
.L553:
	lhzu 9,2(8)
	sthu 9,2(10)
.L551:
	bdnz .L553
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L555:
	lbzu 8,-1(4)
	stbu 8,-1(3)
.L552:
	bdnz .L555
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
	srwi 9,5,2
	rlwinm 10,5,0,0,29
	cmplw 0,3,4
	blt- 0,.L557
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L558
.L557:
	addi 7,4,-4
	addi 8,3,-4
	addi 9,9,1
	mtctr 9
	b .L559
.L558:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L560
.L561:
	lwzu 9,4(7)
	stwu 9,4(8)
.L559:
	bdnz .L561
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L566
	cmpwi 0,5,0
	bne+ 0,.L562
.L566:
	li 9,1
	mtctr 9
	b .L562
.L563:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L562:
	bdnz .L563
	blr
.L565:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L560:
	bdnz .L565
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
	li 9,17
	mtctr 9
.L574:
	bdz .L577
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	b .L574
.L577:
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
	li 9,17
	mtctr 9
.L579:
	bdz .L582
	sraw 9,10,3
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	b .L579
.L582:
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
	bge- 0,.L589
	mr 3,31
	bl __fixsfsi
.L586:
	lwz 0,20(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L589:
	.cfi_restore_state
	lis 4,0x4700
	mr 3,31
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L586
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
	li 9,17
	mtctr 9
	b .L591
.L593:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
.L591:
	bdnz .L593
	rlwinm 3,8,0,31,31
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
	li 9,17
	mtctr 9
	b .L595
.L597:
	sraw 9,8,10
	rlwinm 9,9,0,31,31
	add 3,3,9
	addi 10,10,1
.L595:
	bdnz .L597
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
	mr 9,3
	li 3,0
	b .L599
.L600:
	srwi 9,9,1
	slwi 4,4,1
.L599:
	cmpwi 0,9,0
	beqlr- 0
	andi. 10,9,0x1
	beq- 0,.L600
	add 3,3,4
	b .L600
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mr 9,3
	li 3,0
	cmpwi 0,9,0
	bne+ 0,.L605
	blr
.L606:
	slwi 9,9,1
	srwi 4,4,1
.L605:
	cmpwi 0,4,0
	beqlr- 0
	andi. 10,4,0x1
	beq- 0,.L606
	add 3,3,9
	b .L606
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	li 9,1
	b .L610
.L614:
	slwi 4,4,1
	slwi 9,9,1
.L610:
	cmplw 0,4,3
	bge- 0,.L620
	cmpwi 0,9,0
	beq- 0,.L618
	cmpwi 0,4,0
	bge+ 0,.L614
	li 10,0
	b .L612
.L620:
	li 10,0
	b .L612
.L618:
	li 10,0
	b .L612
.L615:
	srwi 9,9,1
	srwi 4,4,1
.L612:
	cmpwi 0,9,0
	beq- 0,.L621
	cmplw 0,3,4
	blt- 0,.L615
	subf 3,4,3
	or 10,10,9
	b .L615
.L621:
	cmpwi 0,5,0
	bnelr- 0
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
	li 9,-1
	cmpwi 0,3,0
	blt- 0,.L623
	mr 4,30
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 9,9,3
	srwi 9,9,31
.L623:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
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
	li 9,-1
	cmpwi 0,3,0
	blt- 0,.L627
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 9,9,3
	srwi 9,9,31
.L627:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
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
	srawi 6,3,31
	mr 12,4
	srawi 11,4,31
	mullw 8,6,4
	mullw 10,11,3
	add 10,8,10
	mullw 4,3,4
	mulhwu 3,3,12
	add 3,10,3
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
	mr 11,4
	mullw 4,3,4
	mulhwu 3,3,11
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
	li 7,0
	cmpwi 0,4,0
	blt- 0,.L641
.L633:
	li 10,33
	li 8,0
	b .L634
.L641:
	neg 4,4
	li 7,1
	b .L633
.L635:
	slwi 3,3,1
	srawi 4,4,1
.L634:
	cmpwi 0,4,0
	beq- 0,.L636
	addi 9,10,-1
	mr 10,9
	andi. 9,9,0xff
	beq- 0,.L636
	andi. 9,4,0x1
	beq- 0,.L635
	add 8,8,3
	b .L635
.L636:
	mr 3,8
	cmpwi 0,7,0
	beqlr- 0
	neg 3,8
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	li 31,0
	cmpwi 0,3,0
	blt- 0,.L647
.L643:
	cmpwi 0,4,0
	blt- 0,.L648
.L644:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L645
	neg 3,3
.L645:
	lwz 0,20(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L647:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L643
.L648:
	neg 4,4
	xori 31,31,0x1
	b .L644
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
	li 31,0
	cmpwi 0,3,0
	blt- 0,.L654
.L650:
	srawi 9,4,31
	xor 4,4,9
	li 5,1
	subf 4,9,4
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L652
	neg 3,3
.L652:
	lwz 0,20(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L654:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L650
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
	li 10,17
	mtctr 10
.L656:
	cmplw 0,4,3
	bge- 0,.L668
	bdz .L667
	andi. 10,4,0x8000
	bne- 0,.L669
	rlwinm 4,4,1,16,30
	slwi 9,9,1
	b .L656
.L668:
	li 10,0
	b .L658
.L667:
	li 10,0
	b .L658
.L669:
	li 10,0
	b .L658
.L661:
	rlwinm 9,9,31,17,31
	srwi 4,4,1
.L658:
	andi. 8,9,0xffff
	beq- 0,.L670
	cmplw 0,3,4
	blt- 0,.L661
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
	b .L661
.L670:
	cmpwi 0,5,0
	bne- 0,.L663
	mr 3,10
.L663:
	rlwinm 3,3,0,0xffff
	blr
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	li 9,1
	b .L672
.L676:
	slwi 4,4,1
	slwi 9,9,1
.L672:
	cmplw 0,4,3
	bge- 0,.L682
	cmpwi 0,9,0
	beq- 0,.L680
	cmpwi 0,4,0
	bge+ 0,.L676
	li 10,0
	b .L674
.L682:
	li 10,0
	b .L674
.L680:
	li 10,0
	b .L674
.L677:
	srwi 9,9,1
	srwi 4,4,1
.L674:
	cmpwi 0,9,0
	beq- 0,.L683
	cmplw 0,3,4
	blt- 0,.L677
	subf 3,4,3
	or 10,10,9
	b .L677
.L683:
	cmpwi 0,5,0
	bnelr- 0
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
	andi. 10,5,0x20
	beq- 0,.L685
	li 11,0
	addi 5,5,-32
	slw 10,4,5
.L686:
	mr 3,10
	mr 4,11
	blr
.L685:
	cmpwi 0,5,0
	beqlr- 0
	slw 11,4,5
	slw 8,3,5
	subfic 5,5,32
	srw 5,4,5
	or 10,5,8
	b .L686
	.cfi_endproc
.LFE131:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	andi. 10,5,0x20
	beq- 0,.L690
	srawi 10,3,31
	addi 5,5,-32
	sraw 11,3,5
.L691:
	mr 3,10
	mr 4,11
	blr
.L690:
	cmpwi 0,5,0
	beqlr- 0
	sraw 10,3,5
	subfic 7,5,32
	slw 7,3,7
	srw 5,4,5
	or 11,7,5
	b .L691
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 12,4
	srwi 23,3,24
	srwi 9,3,8
	li 26,0
	rlwinm 27,9,0,16,23
	slwi 4,3,8
	srwi 9,12,24
	or 9,4,9
	li 28,0
	rlwinm 29,9,0,8,15
	slwi 5,3,24
	srwi 9,12,8
	or 9,5,9
	li 30,0
	rlwinm 31,9,0,0,7
	srwi 9,12,24
	or 6,9,4
	slwi 7,12,8
	rlwinm 24,6,0,24,31
	srwi 10,12,8
	or 8,10,5
	slwi 9,12,24
	rlwinm 4,8,0,16,23
	rlwinm 6,7,0,8,15
	or 10,9,26
	or 11,23,27
	or 8,10,28
	or 9,11,29
	or 10,8,30
	or 11,9,31
	or 8,10,24
	or 10,8,4
	or 3,10,6
	mr 4,11
	lwz 22,8(1)
	lwz 23,12(1)
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
	.cfi_restore 23
	.cfi_restore 22
	.cfi_def_cfa_offset 0
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
	rlwinm 8,3,24,16,23
	rlwinm 10,3,8,8,15
	srwi 9,3,24
	rlwimi 9,3,24,0,31-24
	or 9,9,8
	or 3,9,10
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
	subfe 9,9,9
	neg 9,9
	slwi 9,9,4
	subfic 10,9,16
	srw 3,3,10
	rlwinm 10,3,0,16,23
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	subfic 8,10,8
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,24,27
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	subfic 8,10,4
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,28,29
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	subfic 8,10,2
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,30,30
	cntlzw 10,10
	srwi 10,10,5
	subfic 3,3,2
	mullw 3,10,3
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
	mr 10,3
	li 3,0
	cmpw 0,10,5
	bltlr- 0
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	subfc 9,4,6
	subfe 3,3,3
	subfic 3,3,1
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
	rlwinm 9,3,0,16,31
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,4
	srw 3,3,9
	rlwinm 10,3,0,24,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,3
	srw 3,3,10
	add 9,9,10
	rlwinm 10,3,0,28,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	srw 3,3,10
	add 9,9,10
	rlwinm 10,3,0,30,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	srw 3,3,10
	rlwinm 3,3,0,30,31
	add 9,9,10
	not 10,3
	rlwinm 10,10,0,31,31
	srwi 3,3,1
	subfic 3,3,2
	neg 10,10
	and 3,3,10
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
	andi. 10,5,0x20
	beq- 0,.L722
	li 10,0
	addi 5,5,-32
	srw 11,3,5
.L723:
	mr 3,10
	mr 4,11
	blr
.L722:
	cmpwi 0,5,0
	beqlr- 0
	srw 10,3,5
	subfic 7,5,32
	slw 7,3,7
	srw 5,4,5
	or 11,7,5
	b .L723
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	rlwinm 7,3,0,16,31
	rlwinm 6,4,0,16,31
	mullw 8,7,6
	srwi 9,8,16
	rlwinm 8,8,0,16,31
	srwi 3,3,16
	mullw 6,3,6
	add 9,9,6
	slwi 6,9,16
	add 11,6,8
	srwi 10,9,16
	srwi 9,11,16
	rlwinm 8,11,0,16,31
	srwi 4,4,16
	mullw 7,7,4
	add 9,9,7
	slwi 7,9,16
	add 11,7,8
	srwi 9,9,16
	add 9,9,10
	mullw 3,3,4
	add 10,3,9
	mr 3,10
	mr 4,11
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
	mr 29,4
	mr 28,3
	mr 31,6
	mr 30,5
	mr 4,6
	mr 3,29
	bl __muldsi3
	mr 10,3
	mullw 9,28,31
	mullw 30,30,29
	add 9,9,30
	add 3,9,10
	lwz 0,36(1)
	mtlr 0
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
	xor 3,4,3
	srwi 9,3,16
	xor 3,3,9
	srwi 9,3,8
	xor 3,3,9
	srwi 9,3,4
	xor 3,3,9
	rlwinm 3,3,0,28,31
	li 9,27030
	sraw 3,9,3
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
	xor 3,9,3
	srwi 9,3,8
	xor 3,3,9
	srwi 9,3,4
	xor 3,3,9
	rlwinm 3,3,0,28,31
	li 9,27030
	sraw 3,9,3
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
	slwi 7,3,31
	srwi 9,4,1
	or 9,7,9
	srwi 8,3,1
	lis 5,0x5555
	ori 5,5,0x5555
	and 6,8,5
	and 7,9,5
	subfc 9,7,4
	subfe 8,6,3
	slwi 7,8,30
	srwi 5,9,2
	or 5,7,5
	srwi 4,8,2
	lis 3,0x3333
	ori 3,3,0x3333
	and 6,4,3
	and 7,5,3
	and 4,8,3
	and 5,9,3
	addc 11,7,5
	adde 10,6,4
	slwi 7,10,28
	srwi 9,11,4
	or 9,7,9
	srwi 8,10,4
	addc 7,9,11
	adde 6,8,10
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 10,6,9
	and 11,7,9
	add 9,10,11
	srwi 10,9,16
	add 9,9,10
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
	srwi 9,3,2
	lis 10,0x3333
	ori 10,10,0x3333
	and 9,9,10
	and 3,3,10
	add 3,9,3
	srwi 9,3,4
	add 3,9,3
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 3,3,9
	srwi 9,3,16
	add 3,3,9
	srwi 9,3,8
	add 3,9,3
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
	mr 29,5
	srwi 28,5,31
	lis 26,0x3ff0
	li 27,0
	b .L736
.L734:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L735
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L736:
	andi. 9,29,0x1
	beq- 0,.L734
	mr 5,30
	mr 6,31
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L734
.L735:
	cmpwi 0,28,0
	beq- 0,.L738
	mr 5,26
	mr 6,27
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
.L737:
	lwz 0,36(1)
	mtlr 0
	lwz 26,8(1)
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	blr
.L738:
	.cfi_restore_state
	mr 3,26
	mr 4,27
	b .L737
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
	mr 30,4
	srwi 28,4,31
	lis 29,0x3f80
	b .L742
.L740:
	srawi 9,30,1
	addze 9,9
	mr 30,9
	cmpwi 0,9,0
	beq- 0,.L741
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L742:
	andi. 9,30,0x1
	beq- 0,.L740
	mr 4,31
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L740
.L741:
	mr 3,29
	cmpwi 0,28,0
	beq- 0,.L743
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
.L743:
	lwz 0,36(1)
	mtlr 0
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
	mr 10,3
	li 3,0
	cmplw 0,10,5
	bltlr- 0
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	subfc 9,4,6
	subfe 3,3,3
	subfic 3,3,1
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
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.lcomm	s.0,7,4
	.type	s.0, @object
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
