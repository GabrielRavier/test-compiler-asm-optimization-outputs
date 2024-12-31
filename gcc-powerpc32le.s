	.file	"mini-libc.c"
	.machine "403"
	.section	".text"
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplw 0,3,4
	ble 0,.L2
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
	b .L5
.L2:
	cmplw 0,3,4
	beq 0,.L5
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
.L5:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 5,5,0,0xff
	addi 4,4,-1
	addi 9,6,1
	mtctr 9
	b .L9
.L11:
	addi 6,6,-1
	addi 3,3,1
.L9:
	bdz .L10
	lbzu 9,1(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,5,9
	bne 0,.L11
.L10:
	cmpwi 0,6,0
	beq 0,.L13
	addi 3,3,1
	b .L12
.L13:
	li 3,0
.L12:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	bne 0,.L19
.L18:
	cmpwi 0,5,0
	bne 0,.L20
	li 3,0
.L20:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L25
.L27:
	addi 5,5,-1
	addi 3,3,1
	addi 4,4,1
.L25:
	bdz .L26
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	beq 0,.L27
.L26:
	cmpwi 0,5,0
	beq 0,.L29
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L28
.L29:
	li 3,0
.L28:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	addi 9,5,-1
	addi 10,5,1
	mtctr 10
	b .L36
.L38:
	lbzx 8,3,9
	addi 10,9,-1
	cmpw 0,4,8
	bne 0,.L39
	add 3,3,9
	b .L37
.L39:
	mr 9,10
.L36:
	bdnz .L38
	li 3,0
.L37:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L41
.L42:
	stbu 4,1(9)
.L41:
	bdnz .L42
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	b .L44
.L45:
	addi 3,3,1
.L44:
	lbzu 9,1(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L45
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	b .L47
.L49:
	addi 3,3,1
.L47:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L48
	cmpw 0,4,9
	bne 0,.L49
.L48:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
.L52:
	lbz 9,0(3)
	cmpw 0,4,9
	beq 0,.L51
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne 0,.L52
	li 3,0
.L51:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	b .L56
.L58:
	addi 3,3,1
	addi 4,4,1
.L56:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L57
	cmpwi 0,10,0
	bne 0,.L58
.L57:
	lbz 3,0(3)
	lbz 9,0(4)
	subf 3,9,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L60
.L61:
	addi 9,9,1
.L60:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L61
	subf 3,3,9
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,5,0
	beq 0,.L67
	mtctr 5
	b .L64
.L66:
	addi 3,3,1
	addi 4,4,1
.L64:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L65
	lbz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L65
	bdz .L65
	lbz 10,0(3)
	cmpw 0,10,9
	beq 0,.L66
.L65:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L63
.L67:
	li 3,0
.L63:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,1
	addi 9,9,1
	mtctr 9
	cmpwi 0,5,0
	bge 0,.L71
	li 9,1
	mtctr 9
	b .L71
.L72:
	lbz 9,1(3)
	stb 9,0(4)
	lbz 9,0(3)
	stb 9,1(4)
	addi 4,4,2
	addi 3,3,2
.L71:
	bdnz .L72
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	ori 3,3,0x20
	addi 3,3,-97
	subfic 3,3,25
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 3,3,127
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,32
	beq 0,.L78
	cmpwi 0,3,9
	bne 0,.L79
	li 3,1
	b .L77
.L78:
	li 3,1
	b .L77
.L79:
	li 3,0
.L77:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,31
	ble 0,.L82
	cmpwi 0,3,127
	bne 0,.L83
	li 3,1
	b .L81
.L82:
	li 3,1
	b .L81
.L83:
	li 3,0
.L81:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-48
	subfic 3,3,9
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-33
	subfic 3,3,93
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-97
	subfic 3,3,25
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-32
	subfic 3,3,94
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,32
	beq 0,.L90
	addi 3,3,-9
	cmplwi 0,3,4
	bgt 0,.L91
	li 3,1
	b .L89
.L90:
	li 3,1
	b .L89
.L91:
	li 3,0
.L89:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-65
	subfic 3,3,25
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,31
	ble 0,.L95
	addi 9,3,-127
	cmplwi 0,9,32
	ble 0,.L96
	addi 9,3,-8232
	cmplwi 0,9,1
	ble 0,.L97
	addis 3,3,0xffff
	addi 3,3,7
	cmplwi 0,3,2
	bgt 0,.L98
	li 3,1
	b .L94
.L95:
	li 3,1
	b .L94
.L96:
	li 3,1
	b .L94
.L97:
	li 3,1
	b .L94
.L98:
	li 3,0
.L94:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-48
	subfic 3,3,9
	subfe 3,3,3
	addi 3,3,1
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,254
	bgt 0,.L101
	addi 3,3,1
	rlwinm 3,3,0,25,31
	subfic 3,3,32
	subfe 3,3,3
	neg 3,3
	rlwinm 3,3,0,0xff
	b .L102
.L101:
	cmplwi 0,3,8231
	ble 0,.L103
	addi 9,3,-8234
	cmplwi 0,9,47061
	ble 0,.L104
	addis 9,3,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	ble 0,.L105
	addis 9,3,0xffff
	addi 9,9,4
	lis 10,0x10
	ori 10,10,0x3
	cmplw 0,9,10
	bgt 0,.L106
	rlwinm 3,3,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,3,9
	beq 0,.L107
	li 3,1
	b .L102
.L103:
	li 3,1
	b .L102
.L104:
	li 3,1
	b .L102
.L105:
	li 3,1
	b .L102
.L106:
	li 3,0
	b .L102
.L107:
	li 3,0
.L102:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L110
	ori 3,3,0x20
	addi 3,3,-97
	cmplwi 0,3,5
	bgt 0,.L111
	li 3,1
	b .L109
.L110:
	li 3,1
	b .L109
.L111:
	li 3,0
.L109:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 3,3,0,25,31
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,4
	mr 26,3
	mr 29,6
	mr 28,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L116
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L117
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __gtdf2
	cmpwi 0,3,0
	ble 0,.L120
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __subdf3
	b .L114
.L116:
	mr 3,26
	mr 4,27
	b .L114
.L117:
	mr 3,28
	mr 4,29
	b .L114
.L120:
	li 4,0
	li 3,0
.L114:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
	blr
	.cfi_endproc
.LFE29:
	.size	fdim,.-fdim
	.align 2
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,3
	mr 30,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L124
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L125
	mr 4,30
	mr 3,29
	bl __gtsf2
	cmpwi 0,3,0
	ble 0,.L128
	mr 4,30
	mr 3,29
	bl __subsf3
	b .L122
.L124:
	mr 3,29
	b .L122
.L125:
	mr 3,30
	b .L122
.L128:
	li 3,0
.L122:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_register 1
	blr
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
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 27,6
	mr 26,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L133
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L130
	rlwinm 10,29,0,0,0
	rlwinm 9,27,0,0,0
	cmpw 0,10,9
	beq 0,.L131
	cmpwi 0,29,0
	bge 0,.L130
	mr 29,27
	mr 28,26
	b .L130
.L131:
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L130
	mr 29,27
	mr 28,26
	b .L130
.L133:
	mr 29,27
	mr 28,26
.L130:
	mr 3,28
	mr 4,29
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 29,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L143
	mr 4,29
	mr 3,29
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L140
	rlwinm 10,30,0,0,0
	rlwinm 9,29,0,0,0
	cmpw 0,10,9
	beq 0,.L141
	cmpwi 0,30,0
	bge 0,.L140
	mr 30,29
	b .L140
.L141:
	mr 4,29
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge 0,.L140
	mr 30,29
	b .L140
.L143:
	mr 30,29
.L140:
	mr 3,30
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
	mr 23,10
	mr 22,9
	mr 21,8
	mr 20,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L153
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L150
	rlwinm 10,27,0,0,0
	rlwinm 9,23,0,0,0
	cmpw 0,10,9
	beq 0,.L151
	cmpwi 0,27,0
	bge 0,.L150
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L150
.L151:
	mr 7,20
	mr 8,21
	mr 9,22
	mr 10,23
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qlt
	cmpwi 0,3,0
	bge 0,.L150
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L150
.L153:
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
.L150:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_def_cfa_register 1
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
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,4
	mr 26,3
	mr 29,6
	mr 28,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L160
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L164
	rlwinm 10,27,0,0,0
	rlwinm 9,29,0,0,0
	cmpw 0,10,9
	beq 0,.L161
	cmpwi 0,27,0
	bge 0,.L160
	mr 29,27
	mr 28,26
	b .L160
.L161:
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L160
	mr 29,27
	mr 28,26
	b .L160
.L164:
	mr 29,27
	mr 28,26
.L160:
	mr 3,28
	mr 4,29
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,3
	mr 30,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L170
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L174
	rlwinm 10,29,0,0,0
	rlwinm 9,30,0,0,0
	cmpw 0,10,9
	beq 0,.L171
	cmpwi 0,29,0
	bge 0,.L170
	mr 30,29
	b .L170
.L171:
	mr 4,30
	mr 3,29
	bl __ltsf2
	cmpwi 0,3,0
	bge 0,.L170
	mr 30,29
	b .L170
.L174:
	mr 30,29
.L170:
	mr 3,30
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
	mr 27,10
	mr 26,9
	mr 25,8
	mr 24,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L180
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L184
	rlwinm 10,23,0,0,0
	rlwinm 9,27,0,0,0
	cmpw 0,10,9
	beq 0,.L181
	cmpwi 0,23,0
	bge 0,.L180
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L180
.L181:
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qlt
	cmpwi 0,3,0
	bge 0,.L180
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L180
.L184:
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
.L180:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_def_cfa_register 1
	blr
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	lis 9,s.0@ha
	la 9,s.0@l(9)
	b .L190
.L191:
	rlwinm 8,3,0,26,31
	lis 10,digits@ha
	la 10,digits@l(10)
	lbzx 10,10,8
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L190:
	cmpwi 0,3,0
	bne 0,.L191
	li 10,0
	stb 10,0(9)
	lis 3,s.0@ha
	la 3,s.0@l(3)
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 10,3,-1
	li 11,0
	lis 9,seed@ha
	la 9,seed@l(9)
	stw 10,0(9)
	stw 11,4(9)
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,4,0
	bne 0,.L195
	li 9,0
	stw 9,4(3)
	stw 9,0(3)
	b .L194
.L195:
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L194
	stw 3,4(9)
.L194:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L198
	lwz 10,4(3)
	stw 10,4(9)
.L198:
	lwz 9,4(3)
	cmpwi 0,9,0
	beq 0,.L197
	lwz 10,0(3)
	stw 10,0(9)
.L197:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 26,3
	mr 30,4
	mr 25,5
	mr 29,6
	mr 23,7
	lwz 27,0(5)
	mr 24,4
	li 28,0
	b .L201
.L204:
	mr 4,24
	mr 3,26
	mtctr 23
	bctrl
	add 24,24,29
	cmpwi 0,3,0
	bne 0,.L202
	mullw 28,28,29
	add 3,30,28
	b .L203
.L202:
	addi 28,28,1
.L201:
	cmplw 0,28,27
	bne 0,.L204
	addi 9,27,1
	stw 9,0(25)
	mullw 27,29,27
	mr 5,29
	mr 4,26
	add 3,30,27
	bl memcpy
.L203:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,3
	mr 30,4
	mr 28,6
	mr 26,7
	lwz 24,0(5)
	mr 27,4
	li 29,0
	b .L206
.L209:
	mr 4,27
	mr 3,25
	mtctr 26
	bctrl
	add 27,27,28
	cmpwi 0,3,0
	bne 0,.L207
	mullw 29,29,28
	add 3,30,29
	b .L208
.L207:
	addi 29,29,1
.L206:
	cmplw 0,29,24
	bne 0,.L209
	li 3,0
.L208:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L212
.L213:
	addi 30,30,1
.L212:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L213
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L219
	cmpwi 0,9,45
	bne 0,.L220
	li 10,1
	b .L214
.L219:
	li 10,0
.L214:
	addi 30,30,1
	b .L215
.L220:
	li 10,0
.L215:
	addi 30,30,-1
	li 3,0
	b .L216
.L217:
	slwi 9,3,2
	add 9,9,3
	slwi 9,9,1
	lbz 3,0(30)
	addi 3,3,-48
	subf 3,3,9
.L216:
	lbzu 9,1(30)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L217
	cmpwi 0,10,0
	bne 0,.L218
	neg 3,3
.L218:
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L223
.L224:
	addi 30,30,1
.L223:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L224
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L230
	cmpwi 0,9,45
	bne 0,.L231
	li 10,1
	b .L225
.L230:
	li 10,0
.L225:
	addi 30,30,1
	b .L226
.L231:
	li 10,0
.L226:
	addi 30,30,-1
	li 3,0
	b .L227
.L228:
	slwi 9,3,2
	add 9,9,3
	slwi 9,9,1
	lbz 3,0(30)
	addi 3,3,-48
	subf 3,3,9
.L227:
	lbzu 9,1(30)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L228
	cmpwi 0,10,0
	bne 0,.L229
	neg 3,3
.L229:
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stw 26,24(1)
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
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L234
.L235:
	addi 30,30,1
.L234:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L235
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L241
	cmpwi 0,9,45
	bne 0,.L242
	li 8,1
	b .L236
.L241:
	li 8,0
.L236:
	addi 30,30,1
	b .L237
.L242:
	li 8,0
.L237:
	addi 30,30,-1
	li 11,0
	li 10,0
	b .L238
.L239:
	srwi 9,10,30
	slwi 29,11,2
	or 29,9,29
	slwi 28,10,2
	addc 24,28,10
	adde 25,29,11
	srwi 9,24,31
	slwi 27,25,1
	or 27,9,27
	slwi 26,24,1
	lbz 9,0(30)
	addi 9,9,-48
	srawi 23,9,31
	subfc 10,9,26
	subfe 11,23,27
.L238:
	lbzu 9,1(30)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L239
	cmpwi 0,8,0
	bne 0,.L243
	subfic 3,10,0
	subfze 4,11
	b .L240
.L243:
	mr 3,10
	mr 4,11
.L240:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
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
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,3
	mr 27,4
	mr 30,5
	mr 28,6
	mr 26,7
	b .L245
.L249:
	srwi 29,30,1
	mullw 29,29,28
	add 29,27,29
	mr 4,29
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	bge 0,.L246
	srwi 30,30,1
	b .L245
.L246:
	cmpwi 0,3,0
	ble 0,.L250
	add 27,29,28
	srwi 9,30,1
	addi 30,30,-1
	subf 30,9,30
.L245:
	cmpwi 0,30,0
	bne 0,.L249
	li 3,0
	b .L248
.L250:
	mr 3,29
.L248:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 24,3
	mr 27,6
	mr 25,7
	mr 26,8
	mr 29,5
	mr 28,4
	b .L252
.L255:
	srawi 30,29,1
	mullw 30,30,27
	add 30,28,30
	mr 5,26
	mr 4,30
	mr 3,24
	mtctr 25
	bctrl
	cmpwi 0,3,0
	beq 0,.L256
	ble 0,.L254
	add 28,30,27
	addi 29,29,-1
.L254:
	srawi 29,29,1
.L252:
	cmpwi 0,29,0
	bne 0,.L255
	li 3,0
	b .L253
.L256:
	mr 3,30
.L253:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	divw 10,4,5
	mullw 5,10,5
	subf 4,5,4
	stw 10,0(3)
	stw 4,4(3)
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srawi 10,4,31
	xor 9,10,4
	xor 8,10,3
	subfc 3,10,8
	subfe 4,10,9
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
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
	stw 24,0(30)
	stw 25,4(30)
	stw 3,8(30)
	stw 4,12(30)
	mr 3,30
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	divw 10,4,5
	mullw 5,10,5
	subf 4,5,4
	stw 10,0(3)
	stw 4,4(3)
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srawi 10,4,31
	xor 9,10,4
	xor 8,10,3
	subfc 3,10,8
	subfe 4,10,9
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
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
	stw 24,0(30)
	stw 25,4(30)
	stw 3,8(30)
	stw 4,12(30)
	mr 3,30
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	b .L265
.L267:
	addi 3,3,4
.L265:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L266
	cmpw 0,4,9
	bne 0,.L267
.L266:
	lwz 9,0(3)
	cmpwi 0,9,0
	bne 0,.L268
	li 3,0
.L268:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	b .L271
.L273:
	addi 3,3,4
	addi 4,4,4
.L271:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L272
	cmpwi 0,10,0
	beq 0,.L272
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L273
.L272:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L275
	mr 9,10
	lwz 10,0(4)
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
	b .L274
.L275:
	li 3,-1
.L274:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-4
	addi 9,3,-4
.L277:
	lwzu 10,4(4)
	stwu 10,4(9)
	cmpwi 0,10,0
	bne 0,.L277
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L280
.L281:
	addi 9,9,4
.L280:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L281
	subf 3,3,9
	srawi 3,3,2
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L283
.L285:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L283:
	bdz .L284
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L284
	cmpwi 0,10,0
	beq 0,.L284
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L285
.L284:
	cmpwi 0,5,0
	beq 0,.L287
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L288
	mr 9,10
	lwz 10,0(4)
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
	b .L286
.L287:
	li 3,0
	b .L286
.L288:
	li 3,-1
.L286:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L292
.L294:
	addi 5,5,-1
	addi 3,3,4
.L292:
	bdz .L293
	lwz 9,0(3)
	cmpw 0,4,9
	bne 0,.L294
.L293:
	cmpwi 0,5,0
	bne 0,.L295
	li 3,0
.L295:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,5,1
	mtctr 9
	b .L300
.L302:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L300:
	bdz .L301
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq 0,.L302
.L301:
	cmpwi 0,5,0
	beq 0,.L304
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L305
	mr 9,10
	lwz 10,0(4)
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
	b .L303
.L304:
	li 3,0
	b .L303
.L305:
	li 3,-1
.L303:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L309
.L310:
	lwzu 10,4(4)
	stwu 10,4(9)
.L309:
	addi 5,5,-1
	bdnz .L310
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplw 0,3,4
	beq 0,.L312
	subf 9,4,3
	slwi 10,5,2
	cmplw 0,9,10
	blt 0,.L313
	addi 4,4,-4
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L314
.L313:
	slwi 5,5,2
	add 4,4,5
	add 9,3,5
	srwi 5,5,2
	addi 10,5,1
	mtctr 10
	b .L315
.L316:
	lwzu 10,-4(4)
	stwu 10,-4(9)
.L315:
	bdnz .L316
	b .L312
.L317:
	lwzu 10,4(4)
	stwu 10,4(9)
.L314:
	addi 5,5,-1
	bdnz .L317
.L312:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-4
	addi 10,5,1
	mtctr 10
	b .L319
.L320:
	stwu 4,4(9)
.L319:
	addi 5,5,-1
	bdnz .L320
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplw 0,3,4
	bge 0,.L322
	add 3,3,5
	add 4,4,5
	addi 9,5,1
	mtctr 9
	b .L323
.L324:
	lbzu 9,-1(3)
	stbu 9,-1(4)
.L323:
	bdnz .L324
	b .L321
.L322:
	cmplw 0,3,4
	beq 0,.L321
	addi 3,3,-1
	addi 4,4,-1
	addi 9,5,1
	mtctr 9
	b .L326
.L327:
	lbzu 9,1(3)
	stbu 9,1(4)
.L326:
	bdnz .L327
.L321:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	addic. 9,5,-32
	blt 0,.L329
	li 6,0
	slw 7,3,9
	b .L330
.L329:
	srwi 9,3,1
	subfic 8,5,31
	srw 9,9,8
	slw 7,4,5
	or 7,9,7
	slw 6,3,5
.L330:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 4,9,-32
	blt 0,.L331
	srw 8,11,4
	li 9,0
	b .L332
.L331:
	slwi 4,11,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 9,5,31
	slw 4,4,9
	srw 8,10,5
	or 8,4,8
	srw 9,11,5
.L332:
	or 4,7,9
	or 3,6,8
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	addic. 9,5,-32
	blt 0,.L334
	srw 6,4,9
	li 7,0
	b .L335
.L334:
	slwi 9,4,1
	subfic 8,5,31
	slw 9,9,8
	srw 6,3,5
	or 6,9,6
	srw 7,4,5
.L335:
	neg 9,5
	rlwinm 9,9,0,26,31
	addic. 4,9,-32
	blt 0,.L336
	li 8,0
	slw 9,10,4
	b .L337
.L336:
	srwi 4,10,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 9,5,31
	srw 4,4,9
	slw 9,11,5
	or 9,4,9
	slw 8,10,5
.L337:
	or 4,7,9
	or 3,6,8
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rotlw 3,3,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 4,4,32
	rotlw 3,3,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rotlw 3,3,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 4,4,32
	rotlw 3,3,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	slw 9,3,4
	subfic 4,4,16
	srw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xffff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srw 9,3,4
	subfic 4,4,16
	slw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xffff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	slw 9,3,4
	subfic 4,4,8
	srw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srw 9,3,4
	subfic 4,4,8
	slw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 9,3,24,16,31
	rlwinm 3,3,8,16,23
	or 3,9,3
	rlwinm 3,3,0,0xffff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 10,3,24
	rlwinm 9,3,24,16,23
	or 9,9,10
	rlwinm 10,3,8,8,15
	or 9,9,10
	slwi 3,3,24
	or 3,9,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	rlwinm 7,4,0,0,7
	srwi 8,7,24
	rlwinm 5,4,0,8,15
	srwi 6,5,8
	li 29,0
	or 28,6,8
	rlwinm 7,4,0,16,23
	slwi 8,7,8
	srwi 9,7,24
	or 5,29,9
	or 4,28,8
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
	addi 11,31,32
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,33
	mtctr 10
	b .L350
.L353:
	srw 10,3,9
	andi. 10,10,0x1
	beq 0,.L351
	addi 3,9,1
	b .L352
.L351:
	addi 9,9,1
.L350:
	bdnz .L353
	li 3,0
.L352:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr. 9,3
	beq 0,.L358
	li 3,1
	b .L356
.L357:
	srawi 9,9,1
	addi 3,3,1
.L356:
	andi. 10,9,0x1
	beq 0,.L357
	b .L355
.L358:
	li 3,0
.L355:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	lis 4,0xff7f
	ori 4,4,0xffff
	bl __ltsf2
	cmpwi 0,3,0
	blt 0,.L362
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,30
	bl __gtsf2
	cmpwi 0,3,0
	ble 0,.L365
	li 3,1
	b .L360
.L362:
	li 3,1
	b .L360
.L365:
	li 3,0
.L360:
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	lis 6,0xffef
	ori 6,6,0xffff
	li 5,-1
	bl __ltdf2
	cmpwi 0,3,0
	blt 0,.L369
	lis 6,0x7fef
	ori 6,6,0xffff
	li 5,-1
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble 0,.L372
	li 3,1
	b .L367
.L369:
	li 3,1
	b .L367
.L372:
	li 3,0
.L367:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
	li 7,-1
	lis 8,0xffef
	ori 8,8,0xffff
	li 9,-2
	lis 10,0xfc8f
	ori 10,10,0xffff
	bl __gcc_qlt
	cmpwi 0,3,0
	blt 0,.L376
	li 7,-1
	lis 8,0x7fef
	ori 8,8,0xffff
	li 9,-2
	lis 10,0x7c8f
	ori 10,10,0xffff
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qgt
	cmpwi 0,3,0
	ble 0,.L379
	li 3,1
	b .L374
.L376:
	li 3,1
	b .L374
.L379:
	li 3,0
.L374:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 3,4
	bl __floatsidf
	bl __gcc_dtoq
	stw 3,0(30)
	stw 4,4(30)
	stw 5,8(30)
	stw 6,12(30)
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 28,4
	mr 4,3
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L382
	mr 4,30
	mr 3,30
	bl __addsf3
	mr 4,3
	mr 3,30
	bl __nesf2
	cmpwi 0,3,0
	beq 0,.L382
	cmpwi 0,28,0
	bge 0,.L387
	lis 29,0x3f00
	b .L386
.L387:
	lis 29,0x4000
.L386:
	andi. 9,28,0x1
	beq 0,.L385
	mr 4,29
	mr 3,30
	bl __mulsf3
	mr 30,3
.L385:
	srawi 28,28,1
	addze. 28,28
	beq 0,.L382
	mr 4,29
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L386
.L382:
	mr 3,30
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 30,5
	mr 5,3
	mr 6,4
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L390
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
	beq 0,.L390
	cmpwi 0,30,0
	bge 0,.L395
	lis 27,0x3fe0
	li 26,0
	b .L394
.L395:
	lis 27,0x4000
	li 26,0
.L394:
	andi. 9,30,0x1
	beq 0,.L393
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L393:
	srawi 30,30,1
	addze. 30,30
	beq 0,.L390
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L394
.L390:
	mr 3,28
	mr 4,29
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
	mr 30,7
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L398
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qadd
	mr 10,6
	mr 9,5
	mr 8,4
	mr 7,3
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qne
	cmpwi 0,3,0
	beq 0,.L398
	cmpwi 0,30,0
	bge 0,.L403
	li 20,0
	lis 21,0x3fe0
	li 22,0
	li 23,0
	b .L402
.L403:
	li 20,0
	lis 21,0x4000
	li 22,0
	li 23,0
.L402:
	andi. 9,30,0x1
	beq 0,.L401
	mr 7,20
	mr 8,21
	mr 9,22
	mr 10,23
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qmul
	mr 27,6
	mr 26,5
	mr 25,4
	mr 24,3
.L401:
	srawi 30,30,1
	addze. 30,30
	beq 0,.L398
	mr 7,20
	mr 8,21
	mr 9,22
	mr 10,23
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qmul
	mr 23,6
	mr 22,5
	mr 21,4
	mr 20,3
	b .L402
.L398:
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	addi 9,3,-1
	addi 10,5,1
	mtctr 10
	b .L406
.L407:
	lbzu 8,1(4)
	lbzu 10,1(9)
	xor 10,10,8
	stb 10,0(9)
.L406:
	bdnz .L407
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 28,3
	mr 30,4
	mr 29,5
	bl strlen
	add 3,28,3
	addi 30,30,-1
	addi 9,29,1
	mtctr 9
	b .L409
.L411:
	addi 3,3,1
	addi 29,29,-1
.L409:
	bdz .L410
	lbzu 10,1(30)
	stb 10,0(3)
	andi. 10,10,0xff
	bne 0,.L411
.L410:
	cmpwi 0,29,0
	bne 0,.L412
	li 10,0
	stb 10,0(3)
.L412:
	mr 3,28
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	addi 10,4,1
	mtctr 10
	b .L416
.L418:
	addi 3,3,1
.L416:
	bdz .L417
	lbzx 10,9,3
	cmpwi 0,10,0
	bne 0,.L418
.L417:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	b .L422
.L424:
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	beq 0,.L423
.L425:
	lbzu 10,1(9)
	andi. 10,10,0xff
	bne 0,.L424
	addi 3,3,1
.L422:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L427
	addi 9,4,-1
	b .L425
.L427:
	li 3,0
.L423:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
.L430:
	lbz 10,0(9)
	cmpw 0,4,10
	bne 0,.L429
	mr 3,9
.L429:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	bne 0,.L430
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 29,4
	mr 3,4
	bl strlen
	mr. 28,3
	beq 0,.L437
	lbz 27,0(29)
	b .L435
.L436:
	mr 5,28
	mr 4,29
	mr 3,30
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L438
	addi 30,30,1
.L435:
	mr 4,27
	mr 3,30
	bl strchr
	mr. 30,3
	bne 0,.L436
	b .L434
.L437:
	mr 3,30
	b .L434
.L438:
	mr 3,30
.L434:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_def_cfa_register 1
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
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 27,6
	mr 26,5
	li 6,0
	li 5,0
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L440
	li 6,0
	li 5,0
	mr 3,26
	mr 4,27
	bl __gtdf2
	cmpwi 0,3,0
	bgt 0,.L442
.L440:
	li 6,0
	li 5,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble 0,.L450
	li 6,0
	li 5,0
	mr 3,26
	mr 4,27
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L451
.L442:
	mr 3,28
	addis 4,29,0x8000
	b .L443
.L450:
	mr 3,28
	mr 4,29
	b .L443
.L451:
	mr 3,28
	mr 4,29
.L443:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 27,5
	mr 29,6
	subf 28,6,4
	add 28,3,28
	cmpwi 0,6,0
	beq 0,.L457
	subfc 4,6,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne 0,.L458
	b .L454
.L456:
	lbz 10,0(30)
	lbz 9,0(27)
	cmpw 0,10,9
	bne 0,.L455
	addi 5,29,-1
	addi 4,27,1
	addi 3,30,1
	bl memcmp
	cmpwi 0,3,0
	beq 0,.L459
.L455:
	addi 30,30,1
.L454:
	cmplw 0,30,28
	ble 0,.L456
	li 3,0
	b .L453
.L457:
	b .L453
.L458:
	li 3,0
	b .L453
.L459:
	mr 3,30
.L453:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_def_cfa_register 1
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
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,5
	bl memcpy
	add 3,3,30
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 27,5
	li 6,0
	li 5,0
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L478
	addis 11,29,0x8000
	mr 29,11
	li 26,1
	b .L462
.L478:
	li 26,0
.L462:
	lis 6,0x3ff0
	li 5,0
	mr 3,28
	mr 4,29
	bl __gedf2
	cmpwi 0,3,0
	bge 0,.L473
	b .L479
.L466:
	addi 30,30,1
	lis 6,0x3fe0
	li 5,0
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
	b .L464
.L473:
	li 30,0
.L464:
	lis 6,0x3ff0
	li 5,0
	mr 3,28
	mr 4,29
	bl __gedf2
	cmpwi 0,3,0
	bge 0,.L466
	b .L467
.L479:
	lis 6,0x3fe0
	li 5,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L480
	li 6,0
	li 5,0
	mr 3,28
	mr 4,29
	bl __nedf2
	cmpwi 0,3,0
	bne 0,.L475
	li 30,0
	b .L467
.L470:
	addi 30,30,-1
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __adddf3
	mr 29,4
	mr 28,3
	b .L469
.L475:
	li 30,0
.L469:
	lis 6,0x3fe0
	li 5,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt 0,.L470
	b .L467
.L480:
	li 30,0
.L467:
	stw 30,0(27)
	cmpwi 0,26,0
	beq 0,.L471
	addis 11,29,0x8000
	mr 29,11
.L471:
	mr 3,28
	mr 4,29
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
	blr
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
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 31,44(1)
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,6
	mr 8,5
	mr 11,4
	mr 10,3
	li 4,0
	li 3,0
	b .L482
.L485:
	li 25,0
	rlwinm 24,10,0,31,31
	or. 7,24,25
	beq 0,.L483
	addc 22,3,8
	adde 23,4,9
	mr 3,22
	mr 4,23
.L483:
	srwi 7,8,31
	slwi 29,9,1
	or 29,7,29
	slwi 28,8,1
	mr 8,28
	mr 9,29
	slwi 7,11,31
	srwi 26,10,1
	or 26,7,26
	srwi 27,11,1
	mr 10,26
	mr 11,27
.L482:
	or. 7,10,11
	bne 0,.L485
	addi 11,31,48
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L487
.L489:
	slwi 4,4,1
	slwi 9,9,1
.L487:
	cmplw 0,4,3
	bge 0,.L494
	cmpwi 0,9,0
	beq 0,.L495
	cmpwi 0,4,0
	bge 0,.L489
	li 10,0
	b .L491
.L492:
	cmplw 0,3,4
	blt 0,.L490
	subf 3,4,3
	or 10,10,9
.L490:
	srwi 9,9,1
	srwi 4,4,1
	b .L491
.L494:
	li 10,0
	b .L491
.L495:
	li 10,0
.L491:
	cmpwi 0,9,0
	bne 0,.L492
	cmpwi 0,5,0
	bne 0,.L493
	mr 3,10
.L493:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,0
	beq 0,.L499
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	b .L498
.L499:
	li 3,7
.L498:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	cmpwi 0,4,0
	bge 0,.L501
	not 9,4
	not 8,3
	mr 11,9
	mr 10,8
.L501:
	or. 9,10,11
	beq 0,.L507
	cmpwi 0,11,0
	beq 0,.L505
	cntlzw 3,11
	b .L506
.L505:
	cntlzw 3,10
	addi 3,3,32
.L506:
	addi 3,3,-1
	b .L503
.L507:
	li 3,63
.L503:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	b .L509
.L511:
	andi. 10,9,0x1
	beq 0,.L510
	add 3,3,4
.L510:
	srwi 9,9,1
	slwi 4,4,1
.L509:
	cmpwi 0,9,0
	bne 0,.L511
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,3
	rlwinm 10,5,0,0,28
	cmplw 0,3,4
	blt 0,.L513
	add 8,4,5
	cmplw 0,8,3
	bge 0,.L514
.L513:
	addi 11,4,-8
	addi 8,3,-8
	addi 9,9,1
	mtctr 9
	b .L515
.L514:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L516
.L517:
	addi 11,11,8
	lwz 6,0(11)
	lwz 7,4(11)
	addi 8,8,8
	stw 6,0(8)
	stw 7,4(8)
.L515:
	bdnz .L517
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt 0,.L522
	cmpwi 0,5,0
	bne 0,.L518
.L522:
	li 9,1
	mtctr 9
	b .L518
.L519:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L518:
	bdnz .L519
	b .L512
.L521:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L516:
	bdnz .L521
.L512:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,1
	cmplw 0,3,4
	blt 0,.L524
	add 10,4,5
	cmplw 0,10,3
	bge 0,.L525
.L524:
	addi 8,4,-2
	addi 10,3,-2
	addi 9,9,1
	mtctr 9
	b .L526
.L525:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L527
.L528:
	lhzu 9,2(8)
	sthu 9,2(10)
.L526:
	bdnz .L528
	andi. 9,5,0x1
	beq 0,.L523
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	b .L523
.L530:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L527:
	bdnz .L530
.L523:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,2
	rlwinm 10,5,0,0,29
	cmplw 0,3,4
	blt 0,.L532
	add 8,4,5
	cmplw 0,8,3
	bge 0,.L533
.L532:
	addi 7,4,-4
	addi 8,3,-4
	addi 9,9,1
	mtctr 9
	b .L534
.L533:
	add 4,4,5
	add 3,3,5
	addi 9,5,1
	mtctr 9
	b .L535
.L536:
	lwzu 9,4(7)
	stwu 9,4(8)
.L534:
	bdnz .L536
	subf 9,10,5
	addi 9,9,1
	mtctr 9
	cmplw 0,10,5
	bgt 0,.L541
	cmpwi 0,5,0
	bne 0,.L537
.L541:
	li 9,1
	mtctr 9
	b .L537
.L538:
	lbzx 9,4,10
	stbx 9,3,10
	addi 10,10,1
.L537:
	bdnz .L538
	b .L531
.L540:
	lbzu 9,-1(4)
	stbu 9,-1(3)
.L535:
	bdnz .L540
.L531:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	divw 9,3,4
	mullw 9,9,4
	subf 3,9,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	bl __floatunsidf
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	bl __floatunsisf
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	bl __floatundidf
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	bl __floatundisf
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	divwu 9,3,4
	mullw 9,9,4
	subf 3,9,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	li 3,0
	li 9,17
	mtctr 9
	b .L549
.L551:
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bne 0,.L550
	addi 3,3,1
.L549:
	bdnz .L551
.L550:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	li 10,17
	mtctr 10
	b .L553
.L555:
	sraw 10,9,3
	andi. 10,10,0x1
	bne 0,.L554
	addi 3,3,1
.L553:
	bdnz .L555
.L554:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	lis 4,0x4700
	bl __gesf2
	cmpwi 0,3,0
	blt 0,.L561
	lis 4,0x4700
	mr 3,30
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L559
.L561:
	mr 3,30
	bl __fixsfsi
.L559:
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,0
	li 8,17
	mtctr 8
	b .L563
.L565:
	sraw 8,3,10
	andi. 8,8,0x1
	beq 0,.L564
	addi 9,9,1
.L564:
	addi 10,10,1
.L563:
	bdnz .L565
	rlwinm 3,9,0,31,31
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	li 3,0
	li 9,0
	li 8,17
	mtctr 8
	b .L567
.L569:
	sraw 8,10,9
	andi. 8,8,0x1
	beq 0,.L568
	addi 3,3,1
.L568:
	addi 9,9,1
.L567:
	bdnz .L569
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	b .L571
.L573:
	andi. 10,9,0x1
	beq 0,.L572
	add 3,3,4
.L572:
	srwi 9,9,1
	slwi 4,4,1
.L571:
	cmpwi 0,9,0
	bne 0,.L573
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr. 9,3
	beq 0,.L579
	li 3,0
	b .L576
.L578:
	andi. 10,4,0x1
	beq 0,.L577
	add 3,3,9
.L577:
	slwi 9,9,1
	srwi 4,4,1
.L576:
	cmpwi 0,4,0
	bne 0,.L578
	b .L575
.L579:
	li 3,0
.L575:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L581
.L583:
	slwi 4,4,1
	slwi 9,9,1
.L581:
	cmplw 0,4,3
	bge 0,.L588
	cmpwi 0,9,0
	beq 0,.L589
	cmpwi 0,4,0
	bge 0,.L583
	li 10,0
	b .L585
.L586:
	cmplw 0,3,4
	blt 0,.L584
	subf 3,4,3
	or 10,10,9
.L584:
	srwi 9,9,1
	srwi 4,4,1
	b .L585
.L588:
	li 10,0
	b .L585
.L589:
	li 10,0
.L585:
	cmpwi 0,9,0
	bne 0,.L586
	cmpwi 0,5,0
	bne 0,.L587
	mr 3,10
.L587:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 29,4
	bl __ltsf2
	cmpwi 0,3,0
	blt 0,.L593
	mr 4,29
	mr 3,30
	bl __gtsf2
	cmpwi 0,3,0
	bgt 0,.L594
	li 3,0
	b .L592
.L593:
	li 3,-1
	b .L592
.L594:
	li 3,1
.L592:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_register 1
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
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 27,6
	mr 26,5
	bl __ltdf2
	cmpwi 0,3,0
	blt 0,.L597
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	bgt 0,.L598
	li 3,0
	b .L596
.L597:
	li 3,-1
	b .L596
.L598:
	li 3,1
.L596:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 5,3
	srawi 6,3,31
	srawi 11,4,31
	mullw 9,6,4
	mullw 7,11,3
	add 9,9,7
	mullw 3,3,4
	mulhwu 4,5,4
	add 4,9,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 8,3
	mullw 3,3,4
	mulhwu 4,8,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,4,0
	bge 0,.L608
	neg 4,4
	li 8,1
	b .L602
.L608:
	li 8,0
.L602:
	li 10,33
	li 9,0
	b .L603
.L606:
	andi. 7,4,0x1
	beq 0,.L604
	add 9,9,3
.L604:
	slwi 3,3,1
	srawi 4,4,1
.L603:
	cmpwi 0,4,0
	beq 0,.L605
	addi 10,10,-1
	andi. 7,10,0xff
	bne 0,.L606
.L605:
	cmpwi 0,8,0
	beq 0,.L609
	neg 3,9
	b .L607
.L609:
	mr 3,9
.L607:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,0
	bge 0,.L614
	neg 3,3
	li 30,1
	b .L611
.L614:
	li 30,0
.L611:
	cmpwi 0,4,0
	bge 0,.L612
	neg 4,4
	cntlzw 30,30
	srwi 30,30,5
.L612:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L613
	neg 3,3
.L613:
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,0
	bge 0,.L619
	neg 3,3
	li 30,1
	b .L616
.L619:
	li 30,0
.L616:
	cmpwi 0,4,0
	bge 0,.L617
	neg 4,4
.L617:
	li 5,1
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L618
	neg 3,3
.L618:
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
	blr
	.cfi_endproc
.LFE128:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	li 10,17
	mtctr 10
	b .L621
.L623:
	rlwinm 4,4,1,16,30
	slwi 9,9,1
.L621:
	cmplw 0,4,3
	bge 0,.L628
	bdz .L632
	andi. 10,4,0x8000
	beq 0,.L623
	li 10,0
	b .L625
.L626:
	cmplw 0,3,4
	blt 0,.L624
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
.L624:
	rlwinm 9,9,31,17,31
	srwi 4,4,1
	b .L625
.L628:
	li 10,0
	b .L625
.L632:
	li 10,0
.L625:
	andi. 8,9,0xffff
	bne 0,.L626
	cmpwi 0,5,0
	bne 0,.L627
	mr 3,10
.L627:
	rlwinm 3,3,0,0xffff
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L634
.L636:
	slwi 4,4,1
	slwi 9,9,1
.L634:
	cmplw 0,4,3
	bge 0,.L641
	cmpwi 0,9,0
	beq 0,.L642
	cmpwi 0,4,0
	bge 0,.L636
	li 10,0
	b .L638
.L639:
	cmplw 0,3,4
	blt 0,.L637
	subf 3,4,3
	or 10,10,9
.L637:
	srwi 9,9,1
	srwi 4,4,1
	b .L638
.L641:
	li 10,0
	b .L638
.L642:
	li 10,0
.L638:
	cmpwi 0,9,0
	bne 0,.L639
	cmpwi 0,5,0
	bne 0,.L640
	mr 3,10
.L640:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	andi. 9,5,0x20
	beq 0,.L645
	li 10,0
	addi 5,5,-32
	slw 11,3,5
	b .L647
.L645:
	cmpwi 0,5,0
	beq 0,.L647
	slw 10,3,5
	slw 8,4,5
	subfic 5,5,32
	srw 9,3,5
	or 11,9,8
.L647:
	mr 3,10
	mr 4,11
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	andi. 7,5,0x20
	beq 0,.L650
	srawi 11,4,31
	addi 5,5,-32
	sraw 10,4,5
	b .L652
.L650:
	cmpwi 0,5,0
	beq 0,.L652
	sraw 11,4,5
	subfic 7,5,32
	slw 9,4,7
	srw 8,3,5
	or 10,9,8
.L652:
	mr 3,10
	mr 4,11
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 18,8(1)
	stw 19,12(1)
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
	stw 31,60(1)
	.cfi_offset 18, -56
	.cfi_offset 19, -52
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
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	srwi 20,4,24
	srwi 8,4,8
	li 27,0
	rlwinm 26,8,0,16,23
	slwi 0,4,8
	srwi 8,3,24
	or 8,0,8
	li 29,0
	rlwinm 28,8,0,8,15
	slwi 3,4,24
	srwi 8,10,8
	or 8,3,8
	li 5,0
	rlwinm 4,8,0,0,7
	srwi 9,10,24
	or 19,9,0
	slwi 18,10,8
	rlwinm 23,19,0,24,31
	srwi 7,10,8
	or 9,7,3
	slwi 8,10,24
	rlwinm 25,9,0,16,23
	rlwinm 7,18,0,8,15
	or 11,8,27
	or 10,20,26
	or 9,11,29
	or 8,10,28
	or 11,9,5
	or 10,8,4
	or 9,11,23
	or 11,9,25
	or 4,11,7
	mr 3,10
	addi 11,31,64
	lwz 18,-56(11)
	lwz 19,-52(11)
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
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
	.cfi_restore 19
	.cfi_restore 18
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 8,3,24,16,23
	rlwinm 10,3,8,8,15
	srwi 9,3,24
	rlwimi 9,3,24,0,31-24
	or 9,9,8
	or 3,9,10
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,65535
	bgt 0,.L661
	li 10,16
	b .L657
.L661:
	li 10,0
.L657:
	subfic 9,10,16
	srw 3,3,9
	andi. 9,3,0xff00
	bne 0,.L662
	li 9,8
	b .L658
.L662:
	li 9,0
.L658:
	subfic 8,9,8
	srw 3,3,8
	add 10,10,9
	andi. 9,3,0xf0
	bne 0,.L663
	li 9,4
	b .L659
.L663:
	li 9,0
.L659:
	subfic 8,9,4
	srw 3,3,8
	add 10,10,9
	andi. 9,3,0xc
	bne 0,.L664
	li 9,2
	b .L660
.L664:
	li 9,0
.L660:
	subfic 8,9,2
	srw 3,3,8
	add 10,10,9
	rlwinm 8,3,0,30,30
	cntlzw 8,8
	srwi 8,8,5
	subfic 3,3,2
	mullw 3,8,3
	add 3,10,3
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmpw 0,6,4
	bgt 0,.L667
	blt 0,.L668
	cmplw 0,5,3
	bgt 0,.L669
	blt 0,.L670
	li 3,1
	b .L666
.L667:
	li 3,0
	b .L666
.L668:
	li 3,2
	b .L666
.L669:
	li 3,0
	b .L666
.L670:
	li 3,2
.L666:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	bl __cmpdi2
	addi 3,3,-1
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 9,3,0,16,31
	cmpwi 0,9,0
	bne 0,.L677
	li 10,16
	b .L673
.L677:
	li 10,0
.L673:
	srw 3,3,10
	rlwinm 9,3,0,24,31
	cmpwi 0,9,0
	bne 0,.L678
	li 9,8
	b .L674
.L678:
	li 9,0
.L674:
	srw 3,3,9
	add 10,10,9
	andi. 9,3,0xf
	bne 0,.L679
	li 9,4
	b .L675
.L679:
	li 9,0
.L675:
	srw 3,3,9
	add 10,10,9
	andi. 9,3,0x3
	bne 0,.L680
	li 9,2
	b .L676
.L680:
	li 9,0
.L676:
	srw 3,3,9
	rlwinm 3,3,0,30,31
	add 10,10,9
	not 8,3
	rlwinm 8,8,0,31,31
	srwi 9,3,1
	subfic 9,9,2
	neg 8,8
	and 9,9,8
	add 3,10,9
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	andi. 7,5,0x20
	beq 0,.L682
	li 11,0
	addi 5,5,-32
	srw 10,4,5
	b .L684
.L682:
	cmpwi 0,5,0
	beq 0,.L684
	srw 11,4,5
	subfic 7,5,32
	slw 9,4,7
	srw 8,3,5
	or 10,9,8
.L684:
	mr 3,10
	mr 4,11
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,4
	mr 26,3
	mr 29,6
	mr 28,5
	mr 4,5
	bl __muldsi3
	mullw 30,28,27
	mullw 25,26,29
	add 30,30,25
	add 4,30,4
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 3,3,0
	subfze 4,4
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
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
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,4
	mr 24,3
	mr 30,5
	srwi 27,5,31
	lis 29,0x3ff0
	li 28,0
.L696:
	andi. 9,30,0x1
	beq 0,.L694
	mr 5,24
	mr 6,25
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L694:
	srawi 30,30,1
	addze. 30,30
	beq 0,.L695
	mr 5,24
	mr 6,25
	mr 3,24
	mr 4,25
	bl __muldf3
	mr 25,4
	mr 24,3
	b .L696
.L695:
	cmpwi 0,27,0
	beq 0,.L698
	mr 5,28
	mr 6,29
	lis 4,0x3ff0
	li 3,0
	bl __divdf3
	b .L697
.L698:
	mr 3,28
	mr 4,29
.L697:
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,3
	mr 28,4
	srwi 27,4,31
	lis 30,0x3f80
.L702:
	andi. 9,28,0x1
	beq 0,.L700
	mr 4,29
	mr 3,30
	bl __mulsf3
	mr 30,3
.L700:
	srawi 28,28,1
	addze. 28,28
	beq 0,.L701
	mr 4,29
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L702
.L701:
	cmpwi 0,27,0
	beq 0,.L704
	mr 4,30
	lis 3,0x3f80
	bl __divsf3
	b .L703
.L704:
	mr 3,30
.L703:
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	cmplw 0,6,4
	bgt 0,.L707
	blt 0,.L708
	cmplw 0,5,3
	bgt 0,.L709
	blt 0,.L710
	li 3,1
	b .L706
.L707:
	li 3,0
	b .L706
.L708:
	li 3,2
	b .L706
.L709:
	li 3,0
	b .L706
.L710:
	li 3,2
.L706:
	addi 11,31,16
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	bl __ucmpdi2
	addi 3,3,-1
	addi 11,31,16
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
