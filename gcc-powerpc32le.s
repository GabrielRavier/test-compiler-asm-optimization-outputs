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
	ble- 0,.L88
	xori 3,3,0x7f
	cntlzw 3,3
	srwi 3,3,5
	blr
.L88:
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
	beq- 0,.L96
	addi 3,3,-9
	addic 3,3,-5
	subfe 3,3,3
	neg 3,3
	blr
.L96:
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
	ble- 0,.L101
	addi 10,3,-127
	li 3,1
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
.L101:
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
	ble- 0,.L114
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
.L114:
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
	ble- 0,.L117
	ori 3,3,0x20
	addi 3,3,-97
	addic 3,3,-6
	subfe 3,3,3
	neg 3,3
	blr
.L117:
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
	bne- 0,.L123
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L124
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L127
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __subdf3
.L121:
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
.L123:
	.cfi_restore_state
	mr 3,30
	mr 4,31
	b .L121
.L124:
	mr 3,28
	mr 4,29
	b .L121
.L127:
	li 4,0
	li 3,0
	b .L121
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
	bne- 0,.L132
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L133
	mr 4,30
	mr 3,31
	bl __gtsf2
	cmpwi 0,3,0
	ble- 0,.L136
	mr 4,30
	mr 3,31
	bl __subsf3
.L130:
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
.L132:
	.cfi_restore_state
	mr 3,31
	b .L130
.L133:
	mr 3,30
	b .L130
.L136:
	li 3,0
	b .L130
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
	bne- 0,.L142
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L143
	rlwinm 10,31,0,0,0
	rlwinm 9,29,0,0,0
	cmpw 0,10,9
	beq- 0,.L140
	cmpwi 0,31,0
	bge- 0,.L144
	mr 3,28
	mr 4,29
.L139:
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
.L140:
	.cfi_restore_state
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L147
	mr 3,28
	mr 4,29
	b .L139
.L142:
	mr 3,28
	mr 4,29
	b .L139
.L143:
	mr 3,30
	mr 4,31
	b .L139
.L144:
	mr 3,30
	mr 4,31
	b .L139
.L147:
	mr 3,30
	mr 4,31
	b .L139
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
	bne- 0,.L153
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L154
	rlwinm 10,30,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L151
	mr 3,30
	cmpwi 0,30,0
	bge- 0,.L150
	mr 3,31
.L150:
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
.L151:
	.cfi_restore_state
	mr 4,31
	mr 3,30
	bl __ltsf2
	mr 9,3
	mr 3,31
	cmpwi 0,9,0
	blt- 0,.L150
	mr 3,30
	b .L150
.L153:
	mr 3,31
	b .L150
.L154:
	mr 3,30
	b .L150
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
	bne- 0,.L164
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L165
	rlwinm 10,31,0,0,0
	rlwinm 9,27,0,0,0
	cmpw 0,10,9
	beq- 0,.L162
	cmpwi 0,31,0
	bge- 0,.L166
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L161:
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
.L162:
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
	bge- 0,.L169
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L161
.L164:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L161
.L165:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L161
.L166:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L161
.L169:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L161
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
	bne- 0,.L175
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L176
	rlwinm 10,29,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L173
	cmpwi 0,29,0
	bge- 0,.L177
	mr 3,28
	mr 4,29
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
.L173:
	.cfi_restore_state
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge- 0,.L180
	mr 3,28
	mr 4,29
	b .L172
.L175:
	mr 3,30
	mr 4,31
	b .L172
.L176:
	mr 3,28
	mr 4,29
	b .L172
.L177:
	mr 3,30
	mr 4,31
	b .L172
.L180:
	mr 3,30
	mr 4,31
	b .L172
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
	bne- 0,.L186
	mr 4,31
	mr 3,31
	bl __unordsf2
	cmpwi 0,3,0
	bne- 0,.L187
	rlwinm 10,30,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L184
	mr 3,31
	cmpwi 0,30,0
	bge- 0,.L183
	mr 3,30
.L183:
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
	mr 4,31
	mr 3,30
	bl __ltsf2
	mr 9,3
	mr 3,30
	cmpwi 0,9,0
	blt- 0,.L183
	mr 3,31
	b .L183
.L186:
	mr 3,31
	b .L183
.L187:
	mr 3,30
	b .L183
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
	bne- 0,.L197
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne- 0,.L198
	rlwinm 10,27,0,0,0
	rlwinm 9,31,0,0,0
	cmpw 0,10,9
	beq- 0,.L195
	cmpwi 0,27,0
	bge- 0,.L199
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
.L194:
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
.L195:
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
	bge- 0,.L202
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L194
.L197:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L194
.L198:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	b .L194
.L199:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L194
.L202:
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	b .L194
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
	b .L205
.L206:
	rlwinm 10,3,0,26,31
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L205:
	cmpwi 0,3,0
	bne+ 0,.L206
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
	addi 10,3,-1
	li 11,0
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
	mullw 9,6,5
	lis 10,0x5851
	ori 10,10,0xf42d
	mullw 10,10,4
	add 9,9,10
	mullw 10,6,4
	mulhwu 11,6,4
	add 11,9,11
	addic 8,10,1
	addze 9,11
	stw 8,0(7)
	stw 9,4(7)
	srwi 10,9,1
	mr 3,10
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
	beq- 0,.L212
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beqlr- 0
	stw 3,4(9)
	blr
.L212:
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
	beq- 0,.L214
	lwz 10,4(3)
	stw 10,4(9)
.L214:
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
	b .L217
.L218:
	addi 31,31,1
.L217:
	cmplw 0,31,28
	beq- 0,.L222
	mr 4,30
	mr 3,27
	mtctr 26
	bctrl
	add 30,30,29
	cmpwi 0,3,0
	bne+ 0,.L218
	mullw 31,31,29
	add 3,25,31
	b .L219
.L222:
	addi 9,28,1
	stw 9,0(24)
	mullw 28,29,28
	mr 5,29
	mr 4,27
	add 3,25,28
	bl memcpy
.L219:
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
	b .L224
.L225:
	addi 31,31,1
.L224:
	cmplw 0,31,26
	beq- 0,.L229
	mr 4,30
	mr 3,27
	mtctr 28
	bctrl
	add 30,30,29
	cmpwi 0,3,0
	bne+ 0,.L225
	mullw 31,31,29
	add 3,25,31
	b .L226
.L229:
	li 3,0
.L226:
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
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L247
	li 8,1
.L246:
	addi 31,31,1
.L247:
	addi 31,31,-1
	li 9,0
	b .L248
.L251:
	li 8,0
	b .L246
.L249:
	slwi 10,9,2
	add 10,10,9
	slwi 10,10,1
	lbz 9,0(31)
	addi 9,9,-48
	subf 9,9,10
.L248:
	lbzu 10,1(31)
	addi 10,10,-48
	cmplwi 0,10,9
	ble+ 0,.L249
	mr 3,9
	cmpwi 0,8,0
	bne- 0,.L250
	neg 3,9
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
	b .L256
.L257:
	addi 27,27,1
.L256:
	lbz 3,0(27)
	bl isspace
	cmpwi 0,3,0
	bne+ 0,.L257
	lbz 9,0(27)
	cmpwi 0,9,43
	beq- 0,.L263
	li 8,0
	cmpwi 0,9,45
	bne- 0,.L259
	li 8,1
.L258:
	addi 27,27,1
.L259:
	addi 27,27,-1
	li 11,0
	li 10,0
	b .L260
.L263:
	li 8,0
	b .L258
.L261:
	srwi 9,10,30
	slwi 31,11,2
	or 31,9,31
	slwi 30,10,2
	addc 24,30,10
	adde 25,31,11
	srwi 9,24,31
	slwi 29,25,1
	or 29,9,29
	slwi 28,24,1
	lbz 9,0(27)
	addi 9,9,-48
	srawi 23,9,31
	subfc 10,9,28
	subfe 11,23,29
.L260:
	lbzu 9,1(27)
	addi 9,9,-48
	cmplwi 0,9,9
	ble+ 0,.L261
	cmpwi 0,8,0
	bne- 0,.L265
	subfic 3,10,0
	subfze 4,11
.L262:
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
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
.L265:
	.cfi_restore_state
	mr 3,10
	mr 4,11
	b .L262
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
	b .L268
.L276:
	srwi 30,30,1
.L268:
	cmpwi 0,30,0
	beq- 0,.L275
	srwi 31,30,1
	mullw 31,31,29
	add 31,28,31
	mr 4,31
	mr 3,26
	mtctr 27
	bctrl
	cmpwi 0,3,0
	blt- 0,.L276
	cmpwi 0,3,0
	ble- 0,.L273
	add 28,31,29
	srwi 9,30,1
	addi 30,30,-1
	subf 30,9,30
	b .L268
.L275:
	li 3,0
.L271:
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
.L273:
	.cfi_restore_state
	mr 3,31
	b .L271
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
	b .L278
.L280:
	srawi 30,30,1
.L278:
	cmpwi 0,30,0
	beq- 0,.L284
	srawi 31,30,1
	mullw 31,31,28
	add 31,29,31
	mr 5,27
	mr 4,31
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	beq- 0,.L282
	ble- 0,.L280
	add 29,31,28
	addi 30,30,-1
	b .L280
.L284:
	li 3,0
.L279:
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
.L282:
	.cfi_restore_state
	mr 3,31
	b .L279
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
	srawi 10,4,31
	xor 9,10,4
	xor 8,10,3
	subfc 3,10,8
	subfe 4,10,9
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
	.cfi_restore 65
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
	srawi 10,4,31
	xor 9,10,4
	xor 8,10,3
	subfc 3,10,8
	subfe 4,10,9
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
	.cfi_restore 65
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
	b .L295
.L297:
	addi 3,3,4
.L295:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L296
	cmpw 0,4,9
	bne+ 0,.L297
.L296:
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
	b .L301
.L303:
	addi 9,9,4
	addi 4,4,4
.L301:
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L302
	cmpwi 0,8,0
	beq- 0,.L302
	lwz 10,0(4)
	cmpwi 0,10,0
	bne+ 0,.L303
.L302:
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
.L307:
	lwzu 9,4(4)
	stwu 9,4(10)
	cmpwi 0,9,0
	bne+ 0,.L307
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
	b .L311
.L312:
	addi 9,9,4
.L311:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne+ 0,.L312
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
.L314:
	bdz .L315
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	bne- 0,.L315
	cmpwi 0,8,0
	beq- 0,.L315
	lwz 10,0(4)
	cmpwi 0,10,0
	beq- 0,.L315
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
	b .L314
.L315:
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
	b .L323
.L325:
	addi 5,5,-1
	addi 3,3,4
.L323:
	bdz .L324
	lwz 9,0(3)
	cmpw 0,4,9
	bne+ 0,.L325
.L324:
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
	b .L331
.L333:
	addi 5,5,-1
	addi 9,9,4
	addi 4,4,4
.L331:
	bdz .L332
	lwz 8,0(9)
	lwz 10,0(4)
	cmpw 0,8,10
	beq+ 0,.L333
.L332:
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
	b .L340
.L341:
	lwzu 10,4(4)
	stwu 10,4(9)
.L340:
	addi 5,5,-1
	bdnz .L341
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
	blt- 0,.L344
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L345
.L344:
	slwi 5,5,2
	add 4,4,5
	add 9,3,5
	srwi 5,5,2
	addi 10,5,1
	mtctr 10
	b .L346
.L347:
	lwzu 10,-4(4)
	stwu 10,-4(9)
.L346:
	bdnz .L347
	blr
.L348:
	lwzu 10,4(4)
	stwu 10,4(9)
.L345:
	addi 5,5,-1
	bdnz .L348
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
	b .L350
.L351:
	stwu 4,4(9)
.L350:
	addi 5,5,-1
	bdnz .L351
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
	bge- 0,.L353
	add 3,3,5
	add 4,4,5
	addi 9,5,1
	mtctr 9
	b .L354
.L355:
	lbzu 9,-1(3)
	stbu 9,-1(4)
.L354:
	bdnz .L355
	blr
.L353:
	cmplw 0,3,4
	beqlr- 0
	addi 3,3,-1
	addi 4,4,-1
	addi 9,5,1
	mtctr 9
	b .L357
.L358:
	lbzu 9,1(3)
	stbu 9,1(4)
.L357:
	bdnz .L358
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
	blt- 0,.L360
	li 30,0
	slw 31,3,9
.L361:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L362
	srw 6,11,9
	li 7,0
.L363:
	or 4,31,7
	or 3,30,6
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L360:
	.cfi_restore_state
	srwi 9,3,1
	subfic 8,5,31
	srw 9,9,8
	slw 31,4,5
	or 31,9,31
	slw 30,3,5
	b .L361
.L362:
	slwi 9,11,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 8,5,31
	slw 9,9,8
	srw 6,10,5
	or 6,9,6
	srw 7,11,5
	b .L363
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
	blt- 0,.L366
	srw 30,4,9
	li 31,0
.L367:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 9,9,-32
	blt- 0,.L368
	li 6,0
	slw 7,10,9
.L369:
	or 4,31,7
	or 3,30,6
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L366:
	.cfi_restore_state
	slwi 9,4,1
	subfic 8,5,31
	slw 9,9,8
	srw 30,3,5
	or 30,9,30
	srw 31,4,5
	b .L367
.L368:
	srwi 9,10,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 8,5,31
	srw 9,9,8
	slw 7,11,5
	or 7,9,7
	slw 6,10,5
	b .L369
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
	mr 11,4
	mr 10,3
	rlwinm 7,4,0,0,7
	srwi 8,7,24
	rlwinm 5,4,0,8,15
	srwi 6,5,8
	li 31,0
	or 30,6,8
	rlwinm 7,4,0,16,23
	slwi 8,7,8
	srwi 9,7,24
	or 5,31,9
	or 4,30,8
	rlwinm 7,11,0,24,31
	slwi 8,7,24
	srwi 9,7,8
	or 7,5,9
	or 6,4,8
	li 5,0
	rlwinm 4,3,0,0,7
	srwi 3,4,24
	slwi 9,5,8
	or 9,3,9
	slwi 8,4,8
	or 5,7,9
	or 4,6,8
	li 7,0
	rlwinm 6,10,0,8,15
	srwi 3,6,8
	slwi 9,7,24
	or 9,3,9
	slwi 8,6,24
	or 7,5,9
	or 6,4,8
	rlwinm 8,10,0,16,23
	slwi 5,8,8
	or 9,7,5
	mr 8,6
	rlwinm 6,10,0,24,31
	slwi 11,6,24
	or 4,9,11
	mr 3,8
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
.L384:
	bdz .L388
	srw 10,3,9
	andi. 10,10,0x1
	bne- 0,.L389
	addi 9,9,1
	b .L384
.L389:
	addi 3,9,1
	blr
.L388:
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
	beq- 0,.L394
	li 3,1
	b .L392
.L396:
	srawi 9,9,1
	addi 3,3,1
.L392:
	andi. 10,9,0x1
	beq+ 0,.L396
	blr
.L394:
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
	blt- 0,.L400
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L398:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L400:
	.cfi_restore_state
	li 3,1
	b .L398
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
	blt- 0,.L407
	lis 6,0x7fef
	ori 6,6,0xffff
	li 5,-1
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L405:
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
.L407:
	.cfi_restore_state
	li 3,1
	b .L405
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
	blt- 0,.L414
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
.L412:
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
.L414:
	.cfi_restore_state
	li 3,1
	b .L412
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
	bne- 0,.L421
	mr 4,30
	mr 3,30
	bl __addsf3
	mr 4,3
	mr 3,30
	bl __nesf2
	cmpwi 0,3,0
	beq- 0,.L421
	lis 31,0x4000
	cmpwi 0,29,0
	bge+ 0,.L425
	lis 31,0x3f00
	b .L425
.L424:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L421
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L425:
	andi. 9,29,0x1
	beq- 0,.L424
	mr 4,31
	mr 3,30
	bl __mulsf3
	mr 30,3
	b .L424
.L421:
	mr 3,30
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
	bne- 0,.L430
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
	beq- 0,.L430
	lis 31,0x4000
	li 30,0
	cmpwi 0,27,0
	bge+ 0,.L434
	lis 31,0x3fe0
	li 30,0
	b .L434
.L433:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L430
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L434:
	andi. 9,27,0x1
	beq- 0,.L433
	mr 5,30
	mr 6,31
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
	b .L433
.L430:
	mr 3,28
	mr 4,29
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
	bne- 0,.L439
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
	beq- 0,.L439
	cmpwi 0,27,0
	blt- 0,.L447
	li 28,0
	lis 29,0x4000
	li 30,0
	li 31,0
	b .L443
.L447:
	li 28,0
	lis 29,0x3fe0
	li 30,0
	li 31,0
	b .L443
.L442:
	srawi 9,27,1
	addze 9,9
	mr 27,9
	cmpwi 0,9,0
	beq- 0,.L439
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
.L443:
	andi. 9,27,0x1
	beq- 0,.L442
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
	b .L442
.L439:
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
	b .L449
.L450:
	lbzu 8,1(4)
	lbzu 9,1(10)
	xor 9,9,8
	stb 9,0(10)
.L449:
	bdnz .L450
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
	b .L452
.L454:
	addi 3,3,1
	addi 30,30,-1
.L452:
	bdz .L453
	lbzu 9,1(31)
	stb 9,0(3)
	andi. 9,9,0xff
	bne+ 0,.L454
.L453:
	cmpwi 0,30,0
	bne- 0,.L455
	li 9,0
	stb 9,0(3)
.L455:
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
.L460:
	bdz .L461
	lbzx 10,9,3
	cmpwi 0,10,0
	beqlr+ 0
	addi 3,3,1
	b .L460
.L461:
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
.L466:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq- 0,.L471
	addi 9,4,-1
.L469:
	lbzu 10,1(9)
	cmpwi 0,10,0
	beq- 0,.L472
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	bne+ 0,.L469
	blr
.L472:
	addi 3,3,1
	b .L466
.L471:
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
	b .L475
.L474:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	beqlr- 0
.L475:
	lbz 10,0(9)
	cmpw 0,4,10
	bne+ 0,.L474
	mr 3,9
	b .L474
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
	mr. 29,3
	beq- 0,.L483
	lbz 28,0(30)
.L481:
	mr 4,28
	mr 3,31
	bl strchr
	mr. 31,3
	beq- 0,.L480
	mr 5,29
	mr 4,30
	mr 3,31
	bl strncmp
	cmpwi 0,3,0
	beq- 0,.L484
	addi 31,31,1
	b .L481
.L483:
	mr 3,31
.L480:
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
.L484:
	.cfi_restore_state
	mr 3,31
	b .L480
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
	blt- 0,.L500
.L487:
	li 6,0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gtdf2
	cmpwi 0,3,0
	ble- 0,.L497
	li 6,0
	li 5,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L489
	mr 3,30
	mr 4,31
.L490:
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
.L500:
	.cfi_restore_state
	li 6,0
	li 5,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble+ 0,.L487
.L489:
	mr 3,30
	addis 4,31,0x8000
	b .L490
.L497:
	mr 3,30
	mr 4,31
	b .L490
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
	subf 29,6,4
	add 29,3,29
	cmpwi 0,6,0
	beq- 0,.L502
	mr 30,5
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne- 0,.L507
	mr 31,3
	addi 27,5,1
	addi 28,6,-1
	b .L503
.L504:
	addi 31,31,1
.L503:
	cmplw 0,31,29
	bgt- 0,.L510
	lbz 10,0(31)
	lbz 9,0(30)
	cmpw 0,10,9
	bne+ 0,.L504
	mr 5,28
	mr 4,27
	addi 3,31,1
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L504
	mr 3,31
	b .L502
.L510:
	li 3,0
.L502:
	lwz 0,36(1)
	mtlr 0
	.cfi_remember_state
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
.L507:
	.cfi_restore_state
	li 3,0
	b .L502
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
	li 6,0
	li 5,0
	bl __ltdf2
	li 23,0
	cmpwi 0,3,0
	blt- 0,.L535
.L514:
	lis 6,0x3ff0
	li 5,0
	mr 3,30
	mr 4,31
	bl __gedf2
	li 29,0
	cmpwi 0,3,0
	blt- 0,.L532
	lis 27,0x3ff0
	li 26,0
	lis 25,0x3fe0
	li 24,0
	b .L516
.L535:
	addis 11,31,0x8000
	mr 31,11
	li 23,1
	b .L514
.L518:
	addi 29,29,1
	mr 5,24
	mr 6,25
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L516:
	mr 5,26
	mr 6,27
	mr 3,30
	mr 4,31
	bl __gedf2
	cmpwi 0,3,0
	bge+ 0,.L518
.L519:
	stw 29,0(28)
	cmpwi 0,23,0
	beq- 0,.L523
	addis 11,31,0x8000
	mr 31,11
.L523:
	mr 3,30
	mr 4,31
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
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
	.cfi_def_cfa_offset 0
	blr
.L532:
	.cfi_restore_state
	lis 6,0x3fe0
	li 5,0
	mr 3,30
	mr 4,31
	bl __ltdf2
	li 29,0
	cmpwi 0,3,0
	bge- 0,.L519
	li 6,0
	li 5,0
	mr 3,30
	mr 4,31
	bl __nedf2
	li 29,0
	cmpwi 0,3,0
	beq- 0,.L519
	li 29,0
	lis 27,0x3fe0
	li 26,0
	b .L521
.L522:
	addi 29,29,-1
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __adddf3
	mr 31,4
	mr 30,3
.L521:
	mr 5,26
	mr 6,27
	mr 3,30
	mr 4,31
	bl __ltdf2
	cmpwi 0,3,0
	blt+ 0,.L522
	b .L519
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	mr 9,6
	mr 8,5
	mr 11,4
	mr 10,3
	li 7,0
	li 6,0
	or. 5,3,4
	beq- 0,.L545
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
	b .L540
.L538:
	srwi 5,8,31
	slwi 31,9,1
	or 31,5,31
	slwi 30,8,1
	mr 8,30
	mr 9,31
	slwi 5,11,31
	srwi 28,10,1
	or 28,5,28
	srwi 29,11,1
	mr 10,28
	mr 11,29
	or. 5,28,29
	beq- 0,.L546
.L540:
	li 27,0
	rlwinm 26,10,0,31,31
	or. 5,26,27
	beq- 0,.L538
	addc 24,6,8
	adde 25,7,9
	mr 6,24
	mr 7,25
	b .L538
.L546:
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
.L545:
	mr 3,6
	mr 4,7
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
	b .L548
.L552:
	slwi 4,4,1
	slwi 9,9,1
.L548:
	cmplw 0,4,3
	bge- 0,.L558
	cmpwi 0,9,0
	beq- 0,.L556
	cmpwi 0,4,0
	bge+ 0,.L552
	li 10,0
	b .L550
.L558:
	li 10,0
	b .L550
.L556:
	li 10,0
	b .L550
.L553:
	srwi 9,9,1
	srwi 4,4,1
.L550:
	cmpwi 0,9,0
	beq- 0,.L559
	cmplw 0,3,4
	blt- 0,.L553
	subf 3,4,3
	or 10,10,9
	b .L553
.L559:
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
	beq- 0,.L562
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	blr
.L562:
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
	mr 11,4
	mr 10,3
	cmpwi 0,4,0
	blt- 0,.L571
.L564:
	li 3,63
	or. 9,10,11
	beqlr- 0
	cntlzw 3,11
	cmpwi 0,11,0
	bne- 0,.L569
	cntlzw 10,10
	addi 3,10,32
.L569:
	addi 3,3,-1
	blr
.L571:
	not 9,4
	not 8,3
	mr 11,9
	mr 10,8
	b .L564
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
	b .L573
.L574:
	srwi 9,9,1
	slwi 4,4,1
.L573:
	cmpwi 0,9,0
	beqlr- 0
	andi. 10,9,0x1
	beq- 0,.L574
	add 3,3,4
	b .L574
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
	blt- 0,.L578
	add 8,4,5
	cmplw 0,8,3
	blt- 0,.L578
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L581
.L584:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L583:
	bdnz .L584
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L586:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L581:
	bdnz .L586
	blr
.L578:
	addi 7,4,-8
	addi 8,3,-8
	addi 9,9,1
	mtctr 9
	bdz .L598
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
.L582:
	addi 7,7,8
	lwz 30,0(7)
	lwz 31,4(7)
	stwu 30,8(8)
	stw 31,4(8)
	bdnz .L582
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L587
	cmpwi 0,5,0
	bne+ 0,.L583
.L587:
	li 9,1
	mtctr 9
	b .L583
.L598:
	.cfi_def_cfa_offset 0
	.cfi_restore 30
	.cfi_restore 31
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L592
	cmpwi 0,5,0
	bne+ 0,.L593
.L592:
	li 9,1
	mtctr 9
	b .L593
.L594:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L593:
	bdnz .L594
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
	blt- 0,.L600
	add 10,4,5
	cmplw 0,10,3
	bge- 0,.L601
.L600:
	addi 8,4,-2
	addi 10,3,-2
	addi 9,9,1
	mtctr 9
	b .L602
.L601:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L603
.L604:
	lhzu 9,2(8)
	sthu 9,2(10)
.L602:
	bdnz .L604
	andi. 9,5,0x1
	beqlr- 0
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	blr
.L606:
	lbzu 8,-1(4)
	stbu 8,-1(3)
.L603:
	bdnz .L606
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
	blt- 0,.L608
	add 8,4,5
	cmplw 0,8,3
	bge- 0,.L609
.L608:
	addi 7,4,-4
	addi 8,3,-4
	addi 9,9,1
	mtctr 9
	b .L610
.L609:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L611
.L612:
	lwzu 9,4(7)
	stwu 9,4(8)
.L610:
	bdnz .L612
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt- 0,.L617
	cmpwi 0,5,0
	bne+ 0,.L613
.L617:
	li 9,1
	mtctr 9
	b .L613
.L614:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L613:
	bdnz .L614
	blr
.L616:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L611:
	bdnz .L616
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
.L629:
	bdz .L632
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	b .L629
.L632:
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
.L634:
	bdz .L637
	sraw 9,10,3
	andi. 9,9,0x1
	bnelr- 0
	addi 3,3,1
	b .L634
.L637:
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
	bge- 0,.L645
	mr 3,31
	bl __fixsfsi
.L641:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L645:
	.cfi_restore_state
	lis 4,0x4700
	mr 3,31
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L641
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
	b .L647
.L649:
	sraw 9,3,10
	rlwinm 9,9,0,31,31
	add 8,8,9
	addi 10,10,1
.L647:
	bdnz .L649
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
	b .L651
.L653:
	sraw 9,8,10
	rlwinm 9,9,0,31,31
	add 3,3,9
	addi 10,10,1
.L651:
	bdnz .L653
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
	b .L655
.L656:
	srwi 9,9,1
	slwi 4,4,1
.L655:
	cmpwi 0,9,0
	beqlr- 0
	andi. 10,9,0x1
	beq- 0,.L656
	add 3,3,4
	b .L656
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mr. 9,3
	beq- 0,.L664
	li 3,0
	b .L661
.L662:
	slwi 9,9,1
	srwi 4,4,1
.L661:
	cmpwi 0,4,0
	beqlr- 0
	andi. 10,4,0x1
	beq- 0,.L662
	add 3,3,9
	b .L662
.L664:
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
	b .L667
.L671:
	slwi 4,4,1
	slwi 9,9,1
.L667:
	cmplw 0,4,3
	bge- 0,.L677
	cmpwi 0,9,0
	beq- 0,.L675
	cmpwi 0,4,0
	bge+ 0,.L671
	li 10,0
	b .L669
.L677:
	li 10,0
	b .L669
.L675:
	li 10,0
	b .L669
.L672:
	srwi 9,9,1
	srwi 4,4,1
.L669:
	cmpwi 0,9,0
	beq- 0,.L678
	cmplw 0,3,4
	blt- 0,.L672
	subf 3,4,3
	or 10,10,9
	b .L672
.L678:
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
	blt- 0,.L681
	mr 4,30
	mr 3,31
	bl __gtsf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L680:
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
.L681:
	.cfi_restore_state
	li 3,-1
	b .L680
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
	blt- 0,.L686
	mr 5,28
	mr 6,29
	mr 3,30
	mr 4,31
	bl __gtdf2
	addi 9,3,-1
	nor 3,9,3
	srwi 3,3,31
.L685:
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
.L686:
	.cfi_restore_state
	li 3,-1
	b .L685
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	mr 5,3
	srawi 6,3,31
	srawi 11,4,31
	mullw 9,6,4
	mullw 7,11,3
	add 9,9,7
	mullw 3,3,4
	mulhwu 4,5,4
	add 4,9,4
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
	mr 8,3
	mullw 3,3,4
	mulhwu 4,8,4
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
	blt- 0,.L700
.L692:
	li 10,33
	li 8,0
	b .L693
.L700:
	neg 4,4
	li 7,1
	b .L692
.L694:
	slwi 3,3,1
	srawi 4,4,1
.L693:
	cmpwi 0,4,0
	beq- 0,.L695
	addi 9,10,-1
	mr 10,9
	andi. 9,9,0xff
	beq- 0,.L695
	andi. 9,4,0x1
	beq- 0,.L694
	add 8,8,3
	b .L694
.L695:
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
	blt- 0,.L707
.L702:
	cmpwi 0,4,0
	blt- 0,.L708
.L703:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L704
	neg 3,3
.L704:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L707:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L702
.L708:
	neg 4,4
	xori 31,31,0x1
	b .L703
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
	blt- 0,.L715
.L710:
	srawi 9,4,31
	xor 4,4,9
	li 5,1
	subf 4,9,4
	bl __udivmodsi4
	cmpwi 0,31,0
	beq- 0,.L712
	neg 3,3
.L712:
	lwz 0,20(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L715:
	.cfi_restore_state
	neg 3,3
	li 31,1
	b .L710
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
.L717:
	cmplw 0,4,3
	bge- 0,.L729
	bdz .L728
	andi. 10,4,0x8000
	bne- 0,.L730
	rlwinm 4,4,1,16,30
	slwi 9,9,1
	b .L717
.L729:
	li 10,0
	b .L719
.L728:
	li 10,0
	b .L719
.L730:
	li 10,0
	b .L719
.L722:
	rlwinm 9,9,31,17,31
	srwi 4,4,1
.L719:
	andi. 8,9,0xffff
	beq- 0,.L731
	cmplw 0,3,4
	blt- 0,.L722
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
	b .L722
.L731:
	cmpwi 0,5,0
	bne- 0,.L724
	mr 3,10
.L724:
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
	b .L733
.L737:
	slwi 4,4,1
	slwi 9,9,1
.L733:
	cmplw 0,4,3
	bge- 0,.L743
	cmpwi 0,9,0
	beq- 0,.L741
	cmpwi 0,4,0
	bge+ 0,.L737
	li 10,0
	b .L735
.L743:
	li 10,0
	b .L735
.L741:
	li 10,0
	b .L735
.L738:
	srwi 9,9,1
	srwi 4,4,1
.L735:
	cmpwi 0,9,0
	beq- 0,.L744
	cmplw 0,3,4
	blt- 0,.L738
	subf 3,4,3
	or 10,10,9
	b .L738
.L744:
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
	beq- 0,.L746
	li 8,0
	addi 5,5,-32
	slw 9,3,5
.L747:
	mr 3,8
	mr 4,9
	blr
.L746:
	cmpwi 0,5,0
	beqlr- 0
	slw 8,3,5
	slw 7,4,5
	subfic 5,5,32
	srw 5,3,5
	or 9,5,7
	b .L747
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
	beq- 0,.L751
	srawi 9,4,31
	addi 5,5,-32
	sraw 8,4,5
.L752:
	mr 3,8
	mr 4,9
	blr
.L751:
	cmpwi 0,5,0
	beqlr- 0
	sraw 9,4,5
	subfic 7,5,32
	slw 7,4,7
	srw 5,3,5
	or 8,7,5
	b .L752
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 20, -48
	.cfi_offset 21, -44
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
	mr 11,4
	srwi 22,4,24
	srwi 8,4,8
	li 27,0
	rlwinm 26,8,0,16,23
	slwi 4,4,8
	srwi 8,3,24
	or 8,4,8
	li 29,0
	rlwinm 28,8,0,8,15
	slwi 5,11,24
	srwi 8,3,8
	or 8,5,8
	li 31,0
	rlwinm 30,8,0,0,7
	srwi 9,3,24
	or 21,9,4
	slwi 20,3,8
	rlwinm 25,21,0,24,31
	srwi 7,3,8
	or 9,7,5
	slwi 8,3,24
	rlwinm 5,9,0,16,23
	rlwinm 7,20,0,8,15
	or 11,8,27
	or 10,22,26
	or 9,11,29
	or 8,10,28
	or 11,9,31
	or 10,8,30
	or 9,11,25
	or 11,9,5
	or 4,11,7
	mr 3,10
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
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
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
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
	cmpw 0,4,6
	blt- 0,.L769
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,10,5
	bltlr- 0
	subfc 10,10,5
	subfe 3,3,3
	subfic 3,3,1
	blr
.L769:
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
	andi. 9,5,0x20
	beq- 0,.L785
	li 9,0
	addi 5,5,-32
	srw 8,4,5
.L786:
	mr 3,8
	mr 4,9
	blr
.L785:
	cmpwi 0,5,0
	beqlr- 0
	srw 9,4,5
	subfic 7,5,32
	slw 7,4,7
	srw 5,3,5
	or 8,7,5
	b .L786
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
	add 10,6,8
	srwi 11,9,16
	srwi 9,10,16
	rlwinm 8,10,0,16,31
	srwi 4,4,16
	mullw 7,7,4
	add 9,9,7
	slwi 7,9,16
	add 10,7,8
	srwi 9,9,16
	add 9,9,11
	mullw 3,3,4
	add 11,3,9
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
	mr 31,4
	mr 30,3
	mr 29,6
	mr 28,5
	mr 4,5
	bl __muldsi3
	mullw 9,31,28
	mullw 30,29,30
	add 9,9,30
	add 4,9,4
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
	xor 3,3,4
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
	slwi 7,4,31
	srwi 8,3,1
	or 8,7,8
	srwi 9,4,1
	lis 5,0x5555
	ori 5,5,0x5555
	and 7,9,5
	and 6,8,5
	subfc 8,6,3
	subfe 9,7,4
	slwi 7,9,30
	srwi 4,8,2
	or 4,7,4
	srwi 5,9,2
	lis 3,0x3333
	ori 3,3,0x3333
	and 7,5,3
	and 6,4,3
	and 5,9,3
	and 4,8,3
	addc 10,6,4
	adde 11,7,5
	slwi 7,11,28
	srwi 8,10,4
	or 8,7,8
	srwi 9,11,4
	addc 6,8,10
	adde 7,9,11
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 11,7,9
	and 10,6,9
	add 8,11,10
	srwi 9,8,16
	add 8,8,9
	srwi 3,8,8
	add 3,3,8
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
	lis 27,0x3ff0
	li 26,0
	b .L800
.L798:
	srawi 9,29,1
	addze 9,9
	mr 29,9
	cmpwi 0,9,0
	beq- 0,.L799
	mr 5,30
	mr 6,31
	mr 3,30
	mr 4,31
	bl __muldf3
	mr 31,4
	mr 30,3
.L800:
	andi. 9,29,0x1
	beq- 0,.L798
	mr 5,30
	mr 6,31
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L798
.L799:
	cmpwi 0,28,0
	beq- 0,.L802
	mr 5,26
	mr 6,27
	lis 4,0x3ff0
	li 3,0
	bl __divdf3
.L801:
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
.L802:
	.cfi_restore_state
	mr 3,26
	mr 4,27
	b .L801
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
	b .L807
.L805:
	srawi 9,30,1
	addze 9,9
	mr 30,9
	cmpwi 0,9,0
	beq- 0,.L806
	mr 4,31
	mr 3,31
	bl __mulsf3
	mr 31,3
.L807:
	andi. 9,30,0x1
	beq- 0,.L805
	mr 4,31
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L805
.L806:
	mr 3,29
	cmpwi 0,28,0
	beq- 0,.L808
	mr 4,29
	lis 3,0x3f80
	bl __divsf3
.L808:
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
	mr 10,3
	cmplw 0,4,6
	blt- 0,.L813
	li 3,2
	bgtlr- 0
	li 3,0
	cmplw 0,10,5
	bltlr- 0
	subfc 10,10,5
	subfe 3,3,3
	subfic 3,3,1
	blr
.L813:
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
