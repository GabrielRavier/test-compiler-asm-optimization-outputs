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
	cmpwi 0,5,0
	mtctr 5
	beq- 0,.L75
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
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	blr
.L75:
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
	srwi 9,5,1
	addi 9,9,1
	mtctr 9
	cmpwi 0,5,0
	bge+ 0,.L77
	li 9,1
	mtctr 9
	b .L77
.L78:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
.L77:
	bdnz .L78
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
	cmpwi 0,3,32
	beq- 0,.L84
	xori 3,3,0x9
	cntlzw 3,3
	srwi 3,3,5
	blr
.L84:
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
	ble- 0,.L87
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L87:
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
	cmpwi 0,3,32
	beq- 0,.L94
	addi 3,3,-9
	subfic 3,3,4
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	blr
.L94:
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
	cmplwi 0,3,31
	ble- 0,.L98
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
	rlwinm 3,3,0,0xff
	blr
.L98:
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
	ble- 0,.L109
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
.L109:
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
	addi 9,3,-48
	cmplwi 0,9,9
	ble- 0,.L112
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,5
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	blr
.L112:
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
	bne- 0,.L117
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L118
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L121
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
.L115:
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
.L117:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L115
.L118:
	mr 3,28
	mr 4,29
	b .L115
.L121:
	li 3,0
	li 4,0
	b .L115
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
	bne- 0,.L126
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L127
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	ble- 0,.L130
	mr 4,30
	mr 3,31
	bl __subsf3
.L124:
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
.L126:
	.cfi_restore_state
	mr 3,31
	b .L124
.L127:
	mr 3,30
	b .L124
.L130:
	li 3,0
	b .L124
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
	bne- 0,.L138
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L139
	rlwinm 10,30,0,0,0
	rlwinm 9,28,0,0,0
	cmpw 0,10,9
	beq- 0,.L134
	cmpwi 0,30,0
	bge- 0,.L140
	mr 3,28
	mr 4,29
.L133:
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
.L134:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L136
	mr 3,28
	mr 4,29
	b .L133
.L136:
	mr 3,30
	mr 4,31
	b .L133
.L138:
	mr 3,28
	mr 4,29
	b .L133
.L139:
	mr 3,30
	mr 4,31
	b .L133
.L140:
	mr 3,30
	mr 4,31
	b .L133
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
	mr 31,3
	mr 30,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L148
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L149
	rlwinm 10,31,0,0,0
	rlwinm 9,30,0,0,0
	cmpw 0,10,9
	beq- 0,.L144
	mr 3,31
	cmpwi 0,31,0
	bge- 0,.L143
	mr 3,30
	b .L143
.L144:
	mr 4,30
	mr 3,31
	bl __ltsf2
	cmpwi 0,3,0
	bge- 0,.L147
	mr 31,30
.L147:
	mr 3,31
.L143:
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
.L148:
	.cfi_restore_state
	mr 3,30
	b .L143
.L149:
	mr 3,31
	b .L143
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
	bne- 0,.L158
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L159
	rlwinm 10,28,0,0,0
	rlwinm 9,24,0,0,0
	cmpw 0,10,9
	beq- 0,.L154
	cmpwi 0,28,0
	bge- 0,.L160
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L153:
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
.L154:
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
	bge- 0,.L156
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L153
.L156:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L153
.L158:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L153
.L159:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L153
.L160:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L153
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
	bne- 0,.L168
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L169
	rlwinm 10,28,0,0,0
	rlwinm 9,30,0,0,0
	cmpw 0,10,9
	beq- 0,.L164
	cmpwi 0,28,0
	bge- 0,.L170
	mr 3,28
	mr 4,29
.L163:
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
.L164:
	.cfi_restore_state
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L166
	mr 3,28
	mr 4,29
	b .L163
.L166:
	mr 3,30
	mr 4,31
	b .L163
.L168:
	mr 3,30
	mr 4,31
	b .L163
.L169:
	mr 3,28
	mr 4,29
	b .L163
.L170:
	mr 3,30
	mr 4,31
	b .L163
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
	bne- 0,.L178
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L179
	rlwinm 10,30,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L174
	mr 3,31
	cmpwi 0,30,0
	bge- 0,.L173
	mr 3,30
	b .L173
.L174:
	mr 4,31
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge- 0,.L177
	mr 31,30
.L177:
	mr 3,31
.L173:
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
.L178:
	.cfi_restore_state
	mr 3,31
	b .L173
.L179:
	mr 3,30
	b .L173
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
	bne- 0,.L188
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L189
	rlwinm 10,24,0,0,0
	rlwinm 9,28,0,0,0
	cmpw 0,10,9
	beq- 0,.L184
	cmpwi 0,24,0
	bge- 0,.L190
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L183:
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
.L184:
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
	bge- 0,.L186
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L183
.L186:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L183
.L188:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L183
.L189:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L183
.L190:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L183
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
	b .L193
.L194:
	rlwinm 10,3,0,26,31
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L193:
	cmpwi 0,3,0
	bne+ 0,.L194
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
	addi 3,3,-1
	lis 9,seed@ha
	la 10,seed@l(9)
	li 8,0
	stw 8,seed@l(9)
	stw 3,4(10)
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
	lis 8,seed@ha
	la 6,seed@l(8)
	lwz 3,seed@l(8)
	lwz 7,4(6)
	lis 9,0x4c95
	ori 9,9,0x7f2d
	mullw 3,9,3
	lis 10,0x5851
	ori 10,10,0xf42d
	mullw 10,10,7
	add 3,3,10
	mullw 10,9,7
	mulhwu 9,9,7
	addic 10,10,1
	adde 3,3,9
	stw 3,seed@l(8)
	stw 10,4(6)
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
	beq- 0,.L200
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L200:
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
	beq- 0,.L202
	lwz 10,4(3)
	stw 10,4(9)
.L202:
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
	b .L205
.L206:
	addi 31,31,1
.L205:
	cmplw 0,31,28
	beq- 0,.L210
	mr 4,30
	mr 3,27
	mtctr 26
	bctrl
	add 30,30,29
	cmpwi 0,3,0
	bne+ 0,.L206
	mullw 31,31,29
	add 3,25,31
	b .L207
.L210:
	addi 9,28,1
	stw 9,0(24)
	mullw 28,29,28
	mr 5,29
	mr 4,27
	add 3,25,28
	bl memcpy
.L207:
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
	b .L212
.L213:
	addi 31,31,1
.L212:
	cmplw 0,31,26
	beq- 0,.L217
	mr 4,30
	mr 3,27
	mtctr 28
	bctrl
	add 30,30,29
	cmpwi 0,3,0
	bne+ 0,.L213
	mullw 31,31,29
	add 3,25,31
	b .L214
.L217:
	li 3,0
.L214:
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
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
	b .L220
.L221:
	addi 31,31,1
.L220:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L221
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L227
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L223
	li 8,1
.L222:
	addi 31,31,1
.L223:
	addi 31,31,-1
	li 9,0
	b .L224
.L227:
	li 8,0
	b .L222
.L225:
	slwi 10,9,2
	add 10,10,9
	slwi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	subf 9,9,10
.L224:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L225
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L226
	neg 3,9
.L226:
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
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
	.cfi_restore 65
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	b .L244
.L245:
	addi 31,31,1
.L244:
	lbz 3,0(31)
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L245
	lbz 9,0(31)
	cmpwi 0,9,43
	beq- 0,.L251
	li 7,0
	cmpwi 0,9,45
	bne- 0,.L247
	li 7,1
.L246:
	addi 31,31,1
.L247:
	addi 31,31,-1
	li 3,0
	li 4,0
	b .L248
.L251:
	li 7,0
	b .L246
.L249:
	srwi 10,4,30
	rlwimi 10,3,2,0,31-2
	slwi 9,4,2
	addc 9,9,4
	adde 10,10,3
	srwi 8,9,31
	rlwimi 8,10,1,0,31-1
	slwi 9,9,1
	lbz 4,0(31)
	addi 4,4,-48
	srawi 3,4,31
	subfc 4,4,9
	subfe 3,3,8
.L248:
	lbzu 9,1(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble+ 0,.L249
	cmpwi 0,7,0
	bne- 0,.L250
	subfic 4,4,0
	subfze 3,3
.L250:
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
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
	b .L256
.L264:
	srwi 30,30,1
.L256:
	cmpwi 0,30,0
	beq- 0,.L263
	srwi 31,30,1
	mullw 31,31,29
	add 31,28,31
	mr 4,31
	mr 3,26
	mtctr 27
	bctrl
	cmpwi 0,3,0
	blt- 0,.L264
	cmpwi 0,3,0
	ble- 0,.L261
	add 28,31,29
	srwi 9,30,1
	addi 30,30,-1
	subf 30,9,30
	b .L256
.L263:
	li 3,0
.L259:
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
.L261:
	.cfi_restore_state
	mr 3,31
	b .L259
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
	b .L266
.L268:
	srawi 30,30,1
.L266:
	cmpwi 0,30,0
	beq- 0,.L272
	srawi 31,30,1
	mullw 31,31,28
	add 31,29,31
	mr 5,27
	mr 4,31
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L270
	ble- 0,.L268
	add 29,31,28
	addi 30,30,-1
	b .L268
.L272:
	li 3,0
.L267:
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
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
.L270:
	.cfi_restore_state
	mr 3,31
	b .L267
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
	mr 25,3
	mr 26,4
	mr 5,27
	mr 6,28
	mr 3,29
	mr 4,30
	bl __moddi3
	stw 25,0(31)
	stw 26,4(31)
	stw 3,8(31)
	stw 4,12(31)
	mr 3,31
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
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
	mr 25,3
	mr 26,4
	mr 5,27
	mr 6,28
	mr 3,29
	mr 4,30
	bl __moddi3
	stw 25,0(31)
	stw 26,4(31)
	stw 3,8(31)
	stw 4,12(31)
	mr 3,31
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
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
.LFE56:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	b .L283
.L285:
	addi 3,3,4
.L283:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L284
	cmpw 0,4,9
	bne+ 0,.L285
.L284:
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
	b .L289
.L291:
	addi 9,9,4
	addi 4,4,4
.L289:
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L290
	cmpwi 0,8,0
	beq- 0,.L290
	lwz 10,0(4)
	cmpwi 0,10,0
	bne+ 0,.L291
.L290:
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
.L295:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L295
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
	b .L299
.L300:
	addi 9,9,4
.L299:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne+ 0,.L300
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
.L302:
	bdz .L303
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L303
	cmpwi 0,8,0
	beq- 0,.L303
	lwz 10,0(4)
	cmpwi 0,10,0
	beq- 0,.L303
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
	b .L302
.L303:
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
	b .L311
.L313:
	addi 5,5,-1
	addi 3,3,4
.L311:
	bdz .L312
	lwz 9,0(3)
	cmpw 0,4,9
	bne+ 0,.L313
.L312:
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
	b .L319
.L321:
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
.L319:
	bdz .L320
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	beq+ 0,.L321
.L320:
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
	b .L328
.L329:
	lwzu 10,4(4)
	stwu 10,4(9)
.L328:
	addi 5,5,-1
	bdnz .L329
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
	blt- 0,.L332
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L333
.L332:
	slwi 5,5,2
	add 4,4,5
	add 9,3,5
	srwi 5,5,2
	addi 10,5,1
	mtctr 10
	b .L334
.L335:
	lwzu 10,-4(4)
	stwu 10,-4(9)
.L334:
	bdnz .L335
	blr
.L336:
	lwzu 10,4(4)
	stwu 10,4(9)
.L333:
	addi 5,5,-1
	bdnz .L336
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
	b .L338
.L339:
	stwu 4,4(9)
.L338:
	addi 5,5,-1
	bdnz .L339
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
	bge- 0,.L341
	add 3,3,5
	add 4,4,5
	addi 9,5,1
	mtctr 9
	b .L342
.L343:
	lbzu 9,-1(3)
	stbu 9,-1(4)
.L342:
	bdnz .L343
	blr
.L341:
	cmplw 0,3,4
	beqlr- 0
	addi 3,3,-1
	addi 4,4,-1
	addi 9,5,1
	mtctr 9
	b .L345
.L346:
	lbzu 9,1(3)
	stbu 9,1(4)
.L345:
	bdnz .L346
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
	blt- 0,.L348
	slw 10,4,10
	li 8,0
.L349:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L350
	srw 4,3,9
	li 3,0
.L351:
	or 3,10,3
	or 4,8,4
	blr
.L348:
	srwi 9,4,1
	subfic 10,5,31
	srw 9,9,10
	slw 10,3,5
	or 10,9,10
	slw 8,4,5
	b .L349
.L350:
	slwi 9,3,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 7,5,31
	slw 9,9,7
	srw 4,4,5
	or 4,9,4
	srw 3,3,5
	b .L351
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
	blt- 0,.L353
	srw 10,3,10
	li 8,0
.L354:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L355
	slw 3,4,9
	li 4,0
.L356:
	or 3,8,3
	or 4,10,4
	blr
.L353:
	slwi 9,3,1
	subfic 10,5,31
	slw 9,9,10
	srw 10,4,5
	or 10,9,10
	srw 8,3,5
	b .L354
.L355:
	srwi 9,4,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 7,5,31
	srw 9,9,7
	slw 3,3,5
	or 3,9,3
	slw 4,4,5
	b .L356
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
	srwi 9,3,24
	rlwinm 10,3,24,16,23
	or 10,10,9
	rlwinm 9,3,8,8,15
	or 10,10,9
	slwi 9,3,24
	srwi 3,4,24
	rlwinm 8,4,24,16,23
	or 3,3,8
	rlwinm 8,4,8,8,15
	or 3,3,8
	slwi 4,4,24
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
	li 10,33
	mtctr 10
.L369:
	bdz .L373
	srw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L374
	addi 9,9,1
	b .L369
.L374:
	addi 3,9,1
	blr
.L373:
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
	beq- 0,.L379
	li 3,1
	b .L377
.L381:
	srawi 9,9,1
	addi 3,3,1
.L377:
	andi. 10,9,0x1
	beq+ 0,.L381
	blr
.L379:
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
	blt- 0,.L385
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L383:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L385:
	.cfi_restore_state
	li 3,1
	b .L383
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
	blt- 0,.L390
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L388:
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
.L390:
	.cfi_restore_state
	li 3,1
	b .L388
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
	blt- 0,.L395
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
.L393:
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
.L395:
	.cfi_restore_state
	li 3,1
	b .L393
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
	bne- 0,.L400
	mr 4,30
	mr 3,30
	bl __addsf3
	mr 4,3
	mr 3,30
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L400
	stw 31,28(1)
	.cfi_offset 31, -4
	lis 31,0x4000
	cmpwi 0,29,0
	bge+ 0,.L404
	lis 31,0x3f00
	b .L404
.L403:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L408
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L404:
	andi. 9,29,0x1
	beq- 0,.L403
	mr 4,31
	mr 3,30
	bl __mulsf3
	mr 30,3
	b .L403
.L408:
	lwz 31,28(1)
	.cfi_restore 31
.L400:
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
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	mr 29,4
	mr 28,3
	mr 27,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L410
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
	beq- 0,.L410
	stw 30,24(1)
	.cfi_offset 30, -8
	stw 31,28(1)
	.cfi_offset 31, -4
	lis 30,0x4000
	li 31,0
	cmpwi 0,27,0
	bge+ 0,.L414
	lis 30,0x3fe0
	li 31,0
	b .L414
.L413:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L418
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L414:
	andi. 9,27,0x1
	beq- 0,.L413
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
	b .L413
.L418:
	lwz 30,24(1)
	.cfi_restore 30
	lwz 31,28(1)
	.cfi_restore 31
.L410:
	mr 3,28
	mr 4,29
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	addi 1,1,32
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
	bne- 0,.L420
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
	beq- 0,.L420
	stw 28,48(1)
	.cfi_offset 28, -16
	stw 29,52(1)
	.cfi_offset 29, -12
	stw 30,56(1)
	.cfi_offset 30, -8
	stw 31,60(1)
	.cfi_offset 31, -4
	cmpwi 0,27,0
	blt- 0,.L429
	lis 28,0x4000
	li 29,0
	li 30,0
	li 31,0
	b .L424
.L429:
	lis 28,0x3fe0
	li 29,0
	li 30,0
	li 31,0
	b .L424
.L423:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L428
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
.L424:
	andi. 9,27,0x1
	beq- 0,.L423
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
	b .L423
.L428:
	lwz 28,48(1)
	.cfi_restore 28
	lwz 29,52(1)
	.cfi_restore 29
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L420:
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
	addi 4,4,-1
	addi 10,3,-1
	addi 9,5,1
	mtctr 9
	b .L431
.L432:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
.L431:
	bdnz .L432
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
	b .L434
.L436:
	addi 3,3,1
	addi 30,30,-1
.L434:
	bdz .L435
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	bne+ 0,.L436
.L435:
	cmpwi 0,30,0
	bne- 0,.L437
	li 9,0
	stb 9,0(3)
.L437:
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
	addi 10,4,1
	mtctr 10
.L442:
	bdz .L443
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr+ 0
	addi 3,3,1
	b .L442
.L443:
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
.L448:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L453
	addi 9,4,-1
.L451:
	lbzu 10,1(9)
	cmpwi 0,10,0
	beq- 0,.L454
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	bne+ 0,.L451
	blr
.L454:
	addi 3,3,1
	b .L448
.L453:
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
	b .L457
.L456:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	beqlr- 0
.L457:
	lbz 10,0(9)
	cmpw 0,4,10
	bne+ 0,.L456
	mr 3,9
	b .L456
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
	beq- 0,.L465
	stw 28,16(1)
	.cfi_offset 28, -16
	lbz 28,0(30)
.L463:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L468
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L466
	addi 31,31,1
	b .L463
.L468:
	lwz 28,16(1)
	.cfi_restore 28
	b .L462
.L465:
	mr 3,31
.L462:
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
.L466:
	.cfi_def_cfa_offset 32
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	mr 3,31
	lwz 28,16(1)
	.cfi_restore 28
	b .L462
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
	blt- 0,.L483
.L470:
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L480
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L472
	mr 3,30
	mr 4,31
.L473:
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
.L483:
	.cfi_restore_state
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L470
.L472:
	addis 3,30,0x8000
	mr 4,31
	b .L473
.L480:
	mr 3,30
	mr 4,31
	b .L473
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
	.cfi_offset 29, -12
	subf 29,6,4
	add 29,3,29
	cmpwi 0,6,0
	beq- 0,.L485
	stw 30,24(1)
	.cfi_offset 30, -8
	mr 30,5
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne- 0,.L490
	mflr 0
	.cfi_register 65, 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 27,12(1)
	.cfi_offset 27, -20
	stw 28,16(1)
	.cfi_offset 28, -16
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,3
	addi 27,5,1
	addi 28,6,-1
	b .L486
.L487:
	addi 31,31,1
.L486:
	cmplw 0,31,29
	bgt- 0,.L493
	lbz 10,0(31)
	lbz 9,0(30)
	cmpw 0,10,9
	bne+ 0,.L487
	mr 5,28
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L487
	mr 3,31
	lwz 27,12(1)
	.cfi_remember_state
	.cfi_restore 27
	lwz 28,16(1)
	.cfi_restore 28
	lwz 30,24(1)
	.cfi_restore 30
	lwz 31,28(1)
	.cfi_restore 31
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	b .L485
.L493:
	.cfi_restore_state
	li 3,0
	lwz 27,12(1)
	.cfi_restore 27
	lwz 28,16(1)
	.cfi_restore 28
	lwz 30,24(1)
	.cfi_restore 30
	lwz 31,28(1)
	.cfi_restore 31
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
.L485:
	lwz 29,20(1)
	addi 1,1,32
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L490:
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	li 3,0
	lwz 30,24(1)
	.cfi_restore 30
	b .L485
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
	blt- 0,.L518
.L497:
	lis 5,0x3ff0
	li 6,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 29,0
	cmpwi 0,3,0
	blt- 0,.L515
	stw 24,16(1)
	.cfi_remember_state
	.cfi_offset 24, -32
	stw 25,20(1)
	.cfi_offset 25, -28
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	lis 26,0x3ff0
	li 27,0
	lis 24,0x3fe0
	li 25,0
	b .L499
.L518:
	.cfi_restore_state
	addis 10,30,0x8000
	mr 30,10
	li 23,1
	b .L497
.L501:
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	addi 29,29,1
	mr 5,24
	mr 6,25
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L499:
	mr 5,26
	mr 6,27
	mr 3,30
	mr 4,31
	bl __gedf2
	cmpwi 0,3,0
	bge+ 0,.L501
	lwz 24,16(1)
	.cfi_restore 24
	lwz 25,20(1)
	.cfi_restore 25
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
.L502:
	stw 29,0(28)
	cmpwi 0,23,0
	beq- 0,.L506
	addis 10,30,0x8000
	mr 30,10
.L506:
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
.L515:
	.cfi_restore_state
	lis 5,0x3fe0
	li 6,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	li 29,0
	cmpwi 0,3,0
	bge- 0,.L502
	li 5,0
	li 6,0
	mr 3,30
	mr 4,31
	bl __nedf2
	li 29,0
	cmpwi 0,3,0
	beq- 0,.L502
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 27,28(1)
	.cfi_offset 27, -20
	li 29,0
	lis 26,0x3fe0
	li 27,0
	b .L504
.L505:
	addi 29,29,-1
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __adddf3
	mr 31,4
	mr 30,3
.L504:
	mr 5,26
	mr 6,27
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	blt+ 0,.L505
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	b .L502
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
	mr 9,4
	li 3,0
	li 4,0
	b .L520
.L523:
	rlwinm 10,9,0,31,31
	mullw 7,5,10
	mullw 11,6,10
	mulhwu 10,6,10
	add 10,7,10
	addc 4,4,11
	srwi 7,6,31
	rlwimi 7,5,1,0,31-1
	mr 5,7
	slwi 6,6,1
	srwi 9,9,1
	rlwimi 9,8,31,0,31-31
	srwi 8,8,1
	adde 3,3,10
.L520:
	or. 10,8,9
	bne+ 0,.L523
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
	b .L525
.L529:
	slwi 4,4,1
	slwi 9,9,1
.L525:
	cmplw 0,4,3
	bge- 0,.L535
	cmpwi 0,9,0
	beq- 0,.L533
	cmpwi 0,4,0
	bge+ 0,.L529
	li 10,0
	b .L527
.L535:
	li 10,0
	b .L527
.L533:
	li 10,0
	b .L527
.L530:
	srwi 9,9,1
	srwi 4,4,1
.L527:
	cmpwi 0,9,0
	beq- 0,.L536
	cmplw 0,3,4
	blt- 0,.L530
	subf 3,4,3
	or 10,10,9
	b .L530
.L536:
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
	cmpwi 0,3,0
	beq- 0,.L539
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L539:
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
	xor 3,9,3
	xor 9,9,4
	or. 10,3,9
	beq- 0,.L545
	cmpwi 0,3,0
	beq- 0,.L543
	cntlzw 3,3
.L544:
	addi 3,3,-1
	blr
.L543:
	cntlzw 9,9
	addi 3,9,32
	b .L544
.L545:
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
	mr 10,3
	li 3,0
	b .L547
.L550:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	srwi 10,10,1
	add 3,9,3
	slwi 4,4,1
.L547:
	cmpwi 0,10,0
	bne+ 0,.L550
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
	srwi 9,5,3
	rlwinm 10,5,0,0,28
	cmplw 0,3,4
	blt- 0,.L552
	add 8,4,5
	cmplw 0,8,3
	blt- 0,.L552
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L555
.L558:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L557:
	bdnz .L558
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L560:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L555:
	bdnz .L560
	blr
.L552:
	addi 7,4,-8
	addi 8,3,-8
	addi 9,9,1
	mtctr 9
	bdz .L572
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
.L556:
	addi 7,7,8
	lwz 30,0(7)
	lwz 31,4(7)
	stwu 30,8(8)
	stw 31,4(8)
	bdnz .L556
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L561
	cmpwi 0,5,0
	bne+ 0,.L557
.L561:
	li 9,1
	mtctr 9
	b .L557
.L572:
	.cfi_def_cfa_offset 0
	.cfi_restore 30
	.cfi_restore 31
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L566
	cmpwi 0,5,0
	bne+ 0,.L567
.L566:
	li 9,1
	mtctr 9
	b .L567
.L568:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L567:
	bdnz .L568
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
	blt- 0,.L574
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L575
.L574:
	addi 8,4,-2
	addi 10,3,-2
	addi 9,9,1
	mtctr 9
	b .L576
.L575:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L577
.L578:
	lhzu 9,2(8)
	sthu 9,2(10)
.L576:
	bdnz .L578
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L580:
	lbzu 8,-1(4)
	stbu 8,-1(3)
.L577:
	bdnz .L580
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
	blt- 0,.L582
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L583
.L582:
	addi 7,4,-4
	addi 8,3,-4
	addi 9,9,1
	mtctr 9
	b .L584
.L583:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L585
.L586:
	lwzu 9,4(7)
	stwu 9,4(8)
.L584:
	bdnz .L586
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L591
	cmpwi 0,5,0
	bne+ 0,.L587
.L591:
	li 9,1
	mtctr 9
	b .L587
.L588:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L587:
	bdnz .L588
	blr
.L590:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L585:
	bdnz .L590
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
	li 9,17
	mtctr 9
.L603:
	bdz .L606
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	b .L603
.L606:
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
.L608:
	bdz .L611
	sraw 9,10,3
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	b .L608
.L611:
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
	bge- 0,.L619
	mr 3,31
	bl __fixsfsi
.L615:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L619:
	.cfi_restore_state
	lis 4,0x4700
	mr 3,31
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L615
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
	b .L621
.L622:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	addi 10,10,1
	add 8,9,8
.L621:
	bdnz .L622
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
	b .L624
.L625:
	sraw 9,8,10
	rlwinm 9,9,0,31,31
	addi 10,10,1
	add 3,9,3
.L624:
	bdnz .L625
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
	mr 10,3
	li 3,0
	b .L627
.L630:
	rlwinm 9,10,0,31,31
	neg 9,9
	and 9,9,4
	srwi 10,10,1
	add 3,9,3
	slwi 4,4,1
.L627:
	cmpwi 0,10,0
	bne+ 0,.L630
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
	beq- 0,.L635
	li 3,0
	b .L633
.L637:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,10
	srwi 4,4,1
	add 3,9,3
	slwi 10,10,1
.L633:
	cmpwi 0,4,0
	bne+ 0,.L637
	blr
.L635:
	li 3,0
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
	li 9,1
	b .L639
.L643:
	slwi 4,4,1
	slwi 9,9,1
.L639:
	cmplw 0,4,3
	bge- 0,.L649
	cmpwi 0,9,0
	beq- 0,.L647
	cmpwi 0,4,0
	bge+ 0,.L643
	li 10,0
	b .L641
.L649:
	li 10,0
	b .L641
.L647:
	li 10,0
	b .L641
.L644:
	srwi 9,9,1
	srwi 4,4,1
.L641:
	cmpwi 0,9,0
	beq- 0,.L650
	cmplw 0,3,4
	blt- 0,.L644
	subf 3,4,3
	or 10,10,9
	b .L644
.L650:
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
	cmpwi 0,3,0
	blt- 0,.L654
	mr 4,30
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L652:
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
.L654:
	.cfi_restore_state
	li 3,-1
	b .L652
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
	blt- 0,.L659
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L657:
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
.L659:
	.cfi_restore_state
	li 3,-1
	b .L657
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
	li 7,0
	cmpwi 0,4,0
	blt- 0,.L671
.L664:
	li 8,33
	li 10,0
	b .L665
.L671:
	neg 4,4
	li 7,1
	b .L664
.L667:
	rlwinm 9,4,0,31,31
	neg 9,9
	and 9,9,3
	srawi 4,4,1
	add 10,10,9
	slwi 3,3,1
.L665:
	cmpwi 0,4,0
	beq- 0,.L666
	addi 9,8,-1
	mr 8,9
	andi. 9,9,0xff
	bne+ 0,.L667
.L666:
	mr 3,10
	cmpwi 0,7,0
	beqlr- 0
	neg 3,10
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
	blt- 0,.L678
.L673:
	cmpwi 0,4,0
	blt- 0,.L679
.L674:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L675
	neg 3,3
.L675:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L678:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L673
.L679:
	neg 4,4
	xori 31,31,0x1
	b .L674
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
	blt- 0,.L685
.L681:
	srawi 9,4,31
	xor 4,9,4
	li 5,1
	subf 4,9,4
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L682
	neg 3,3
.L682:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L685:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L681
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
.L687:
	cmplw 0,4,3
	bge- 0,.L699
	bdz .L698
	andi. 10,4,0x8000
	bne- 0,.L700
	rlwinm 4,4,1,16,30
	slwi 9,9,1
	b .L687
.L699:
	li 10,0
	b .L689
.L698:
	li 10,0
	b .L689
.L700:
	li 10,0
	b .L689
.L692:
	rlwinm 9,9,31,17,31
	srwi 4,4,1
.L689:
	andi. 8,9,0xffff
	beq- 0,.L701
	cmplw 0,3,4
	blt- 0,.L692
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
	b .L692
.L701:
	cmpwi 0,5,0
	bne- 0,.L694
	mr 3,10
.L694:
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
	b .L703
.L707:
	slwi 4,4,1
	slwi 9,9,1
.L703:
	cmplw 0,4,3
	bge- 0,.L713
	cmpwi 0,9,0
	beq- 0,.L711
	cmpwi 0,4,0
	bge+ 0,.L707
	li 10,0
	b .L705
.L713:
	li 10,0
	b .L705
.L711:
	li 10,0
	b .L705
.L708:
	srwi 9,9,1
	srwi 4,4,1
.L705:
	cmpwi 0,9,0
	beq- 0,.L714
	cmplw 0,3,4
	blt- 0,.L708
	subf 3,4,3
	or 10,10,9
	b .L708
.L714:
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
	andi. 9,5,0x20
	beq- 0,.L716
	li 10,0
	addi 5,5,-32
	slw 3,4,5
.L717:
	mr 4,10
	blr
.L716:
	cmpwi 0,5,0
	beqlr- 0
	slw 10,4,5
	slw 3,3,5
	subfic 5,5,32
	srw 5,4,5
	or 3,5,3
	b .L717
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
	beq- 0,.L721
	srawi 10,3,31
	addi 5,5,-32
	sraw 4,3,5
.L722:
	mr 3,10
	blr
.L721:
	cmpwi 0,5,0
	beqlr- 0
	sraw 10,3,5
	subfic 9,5,32
	slw 9,3,9
	srw 4,4,5
	or 4,9,4
	b .L722
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	srwi 8,3,24
	rlwinm 11,3,24,16,23
	rlwinm 5,3,8,8,15
	slwi 10,3,24
	srwi 6,4,24
	rlwinm 7,4,24,16,23
	rlwinm 3,4,8,8,15
	slwi 9,4,24
	or 4,8,11
	or 4,4,5
	or 9,9,6
	or 9,9,7
	or 3,9,3
	or 4,4,10
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
	subfe 10,10,10
	neg 10,10
	rlwinm 10,10,4,20,27
	subfic 9,10,16
	srw 9,3,9
	rlwinm 8,9,0,16,23
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,3
	subfic 7,8,8
	srw 9,9,7
	add 10,10,8
	rlwinm 8,9,0,24,27
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,2
	subfic 7,8,4
	srw 9,9,7
	add 10,10,8
	rlwinm 8,9,0,28,29
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,1
	subfic 7,8,2
	srw 9,9,7
	add 10,10,8
	rlwinm 3,9,0,30,30
	cntlzw 3,3
	srwi 3,3,5
	subfic 9,9,2
	mullw 3,3,9
	add 3,10,3
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
	blt- 0,.L730
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	subfic 3,3,1
	blr
.L730:
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
	rlwinm 10,3,0,16,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,4
	srw 9,3,10
	rlwinm 8,9,0,24,31
	cntlzw 8,8
	srwi 8,8,5
	slwi 8,8,3
	srw 9,9,8
	add 3,10,8
	rlwinm 10,9,0,28,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,2
	srw 9,9,10
	add 3,3,10
	rlwinm 10,9,0,30,31
	cntlzw 10,10
	srwi 10,10,5
	slwi 10,10,1
	srw 9,9,10
	rlwinm 9,9,0,30,31
	add 3,3,10
	not 10,9
	rlwinm 10,10,0,31,31
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 9,9,10
	add 3,3,9
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
	beq- 0,.L738
	li 10,0
	addi 5,5,-32
	srw 4,3,5
.L739:
	mr 3,10
	blr
.L738:
	cmpwi 0,5,0
	beqlr- 0
	srw 10,3,5
	subfic 9,5,32
	slw 9,3,9
	srw 4,4,5
	or 4,9,4
	b .L739
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	mr 10,4
	rlwinm 8,3,0,16,31
	rlwinm 7,4,0,16,31
	mullw 4,8,7
	srwi 9,4,16
	srwi 3,3,16
	mullw 7,3,7
	add 9,9,7
	rlwimi 4,9,16,0,31-16
	srwi 7,9,16
	srwi 9,4,16
	srwi 10,10,16
	mullw 8,8,10
	add 9,9,8
	srwi 8,9,16
	add 8,8,7
	mullw 3,3,10
	add 3,3,8
	rlwimi 4,9,16,0,31-16
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
	mr 29,4
	mr 30,5
	mr 31,6
	mr 4,6
	mr 3,29
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
	xor 4,4,3
	srwi 9,4,16
	xor 4,4,9
	srwi 9,4,8
	xor 4,4,9
	srwi 9,4,4
	xor 4,4,9
	rlwinm 4,4,0,28,31
	li 3,27030
	sraw 3,3,4
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
	srwi 8,4,1
	rlwimi 8,3,31,0,31-31
	srwi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	and 9,9,10
	and 8,8,10
	subfc 8,8,4
	subfe 3,9,3
	srwi 10,8,2
	rlwimi 10,3,30,0,31-30
	srwi 9,3,2
	lis 7,0x3333
	ori 7,7,0x3333
	and 9,9,7
	and 10,10,7
	and 3,3,7
	and 8,8,7
	addc 10,10,8
	adde 9,9,3
	srwi 8,10,4
	rlwimi 8,9,28,0,31-28
	srwi 7,9,4
	addc 10,8,10
	adde 9,7,9
	lis 8,0xf0f
	ori 8,8,0xf0f
	and 9,9,8
	and 10,10,8
	add 9,9,10
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
	b .L753
.L751:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L752
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L753:
	andi. 9,29,0x1
	beq- 0,.L751
	mr 5,30
	mr 6,31
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L751
.L752:
	cmpwi 0,28,0
	beq- 0,.L755
	mr 5,26
	mr 6,27
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
.L754:
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
.L755:
	.cfi_restore_state
	mr 3,26
	mr 4,27
	b .L754
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
	b .L760
.L758:
	srawi 9,30,1
	addze 9,9
	mr 30,9
	cmpwi 0,9,0
	beq- 0,.L759
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L760:
	andi. 9,30,0x1
	beq- 0,.L758
	mr 4,31
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L758
.L759:
	mr 3,29
	cmpwi 0,28,0
	beq- 0,.L761
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
.L761:
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
	cmplw 0,3,5
	blt- 0,.L766
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,4,6
	bltlr- 0
	subfc 6,4,6
	subfe 3,3,3
	subfic 3,3,1
	blr
.L766:
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
