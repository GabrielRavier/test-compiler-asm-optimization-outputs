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
	add 9,4,5
	add 5,3,5
	b .L3
.L4:
	lbzu 10,-1(9)
	addi 5,5,-1
	stb 10,0(5)
.L3:
	cmplw 0,9,4
	bne 0,.L4
	b .L5
.L2:
	cmplw 0,3,4
	beq 0,.L5
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	b .L6
.L7:
	addi 4,4,1
	lbz 10,0(4)
	addi 9,9,1
	stb 10,0(9)
.L6:
	cmplw 0,9,5
	bne 0,.L7
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
	b .L9
.L11:
	addi 6,6,-1
	addi 3,3,1
.L9:
	cmpwi 0,6,0
	beq 0,.L10
	addi 4,4,1
	lbz 9,0(4)
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
	b .L15
.L17:
	addi 3,3,1
	addi 5,5,-1
.L15:
	cmpwi 0,5,0
	beq 0,.L16
	lbz 9,0(3)
	cmpw 0,4,9
	bne 0,.L17
.L16:
	cmpwi 0,5,0
	bne 0,.L18
	li 3,0
.L18:
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
	b .L21
.L23:
	addi 5,5,-1
	addi 3,3,1
	addi 4,4,1
.L21:
	cmpwi 0,5,0
	beq 0,.L22
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	beq 0,.L23
.L22:
	cmpwi 0,5,0
	beq 0,.L25
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L24
.L25:
	li 3,0
.L24:
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
	addi 5,5,-1
	add 5,5,3
	b .L27
.L28:
	addi 4,4,1
	lbz 10,0(4)
	addi 9,9,1
	stb 10,0(9)
.L27:
	cmplw 0,9,5
	bne 0,.L28
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
	addi 5,5,-1
	b .L30
.L32:
	lbzx 10,3,5
	addi 9,5,-1
	cmpw 0,4,10
	bne 0,.L33
	add 3,3,5
	b .L31
.L33:
	mr 5,9
.L30:
	cmpwi 0,5,-1
	bne 0,.L32
	li 3,0
.L31:
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
	addi 5,5,-1
	add 5,5,3
	b .L35
.L36:
	addi 9,9,1
	stb 4,0(9)
.L35:
	cmplw 0,9,5
	bne 0,.L36
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
	b .L38
.L39:
	addi 3,3,1
.L38:
	addi 4,4,1
	lbz 9,0(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L39
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
	b .L41
.L43:
	addi 3,3,1
.L41:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L42
	cmpw 0,4,9
	bne 0,.L43
.L42:
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
.L46:
	lbz 9,0(3)
	cmpw 0,4,9
	beq 0,.L45
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne 0,.L46
	li 3,0
.L45:
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
	b .L49
.L51:
	addi 3,3,1
	addi 4,4,1
.L49:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L50
	mr 9,10
	cmpwi 0,9,0
	bne 0,.L51
.L50:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
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
	b .L53
.L54:
	addi 9,9,1
.L53:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L54
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
	beq 0,.L60
	addi 5,5,-1
	add 5,3,5
	b .L57
.L59:
	addi 3,3,1
	addi 4,4,1
.L57:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L58
	lbz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L58
	cmplw 0,3,5
	beq 0,.L58
	lbz 10,0(3)
	cmpw 0,10,9
	beq 0,.L59
.L58:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L56
.L60:
	li 3,0
.L56:
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
	mr 9,3
	b .L62
.L63:
	lbz 10,1(9)
	stb 10,0(4)
	lbz 10,0(9)
	stb 10,1(4)
	addi 4,4,2
	addi 9,9,2
.L62:
	add 10,3,5
	subf 10,9,10
	cmpwi 0,10,1
	bgt 0,.L63
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
	beq 0,.L68
	cmpwi 0,3,9
	bne 0,.L69
	li 3,1
	b .L67
.L68:
	li 3,1
	b .L67
.L69:
	li 3,0
.L67:
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
	ble 0,.L72
	cmpwi 0,3,127
	bne 0,.L73
	li 3,1
	b .L71
.L72:
	li 3,1
	b .L71
.L73:
	li 3,0
.L71:
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
	beq 0,.L80
	addi 3,3,-9
	cmplwi 0,3,4
	bgt 0,.L81
	li 3,1
	b .L79
.L80:
	li 3,1
	b .L79
.L81:
	li 3,0
.L79:
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
	ble 0,.L85
	addi 9,3,-127
	cmplwi 0,9,32
	ble 0,.L86
	addi 9,3,-8232
	cmplwi 0,9,1
	ble 0,.L87
	addis 3,3,0xffff
	addi 3,3,7
	cmplwi 0,3,2
	bgt 0,.L88
	li 3,1
	b .L84
.L85:
	li 3,1
	b .L84
.L86:
	li 3,1
	b .L84
.L87:
	li 3,1
	b .L84
.L88:
	li 3,0
.L84:
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
	bgt 0,.L91
	addi 3,3,1
	rlwinm 3,3,0,25,31
	subfic 3,3,32
	subfe 3,3,3
	neg 3,3
	rlwinm 3,3,0,0xff
	b .L92
.L91:
	cmplwi 0,3,8231
	ble 0,.L93
	addi 9,3,-8234
	cmplwi 0,9,47061
	ble 0,.L94
	addis 9,3,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	ble 0,.L95
	addis 9,3,0xffff
	addi 9,9,4
	lis 10,0x10
	ori 10,10,0x3
	cmplw 0,9,10
	bgt 0,.L96
	rlwinm 3,3,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,3,9
	beq 0,.L97
	li 3,1
	b .L92
.L93:
	li 3,1
	b .L92
.L94:
	li 3,1
	b .L92
.L95:
	li 3,1
	b .L92
.L96:
	li 3,0
	b .L92
.L97:
	li 3,0
.L92:
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
	ble 0,.L100
	ori 3,3,0x20
	addi 3,3,-97
	cmplwi 0,3,5
	bgt 0,.L101
	li 3,1
	b .L99
.L100:
	li 3,1
	b .L99
.L101:
	li 3,0
.L99:
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
	mr 5,26
	mr 6,27
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L106
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L107
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __gtdf2
	cmpwi 0,3,0
	ble 0,.L110
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __subdf3
	b .L104
.L106:
	mr 3,26
	mr 4,27
	b .L104
.L107:
	mr 3,28
	mr 4,29
	b .L104
.L110:
	li 3,0
	li 4,0
.L104:
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
	mr 4,29
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L114
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L115
	mr 4,30
	mr 3,29
	bl __gtsf2
	cmpwi 0,3,0
	ble 0,.L118
	mr 4,30
	mr 3,29
	bl __subsf3
	b .L112
.L114:
	mr 3,29
	b .L112
.L115:
	mr 3,30
	b .L112
.L118:
	li 3,0
.L112:
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
	mr 5,28
	mr 6,29
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L123
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L120
	mr 10,28
	rlwinm 10,10,0,0,0
	mr 9,26
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L121
	mr 9,28
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L120
	mr 29,27
	mr 28,26
	b .L120
.L121:
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L120
	mr 29,27
	mr 28,26
	b .L120
.L123:
	mr 29,27
	mr 28,26
.L120:
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
	mr 4,30
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L133
	mr 4,29
	mr 3,29
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L130
	mr 10,30
	rlwinm 10,10,0,0,0
	mr 9,29
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L131
	mr 9,30
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L130
	mr 30,29
	b .L130
.L131:
	mr 4,29
	mr 3,30
	bl __ltsf2
	cmpwi 0,3,0
	bge 0,.L130
	mr 30,29
	b .L130
.L133:
	mr 30,29
.L130:
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
	bne 0,.L143
	mr 3,20
	mr 4,21
	mr 5,22
	mr 6,23
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L140
	mr 10,24
	rlwinm 10,10,0,0,0
	mr 9,20
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L141
	mr 9,24
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L140
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L140
.L141:
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
	bge 0,.L140
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L140
.L143:
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
.L140:
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
	mr 5,26
	mr 6,27
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L150
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L154
	mr 10,26
	rlwinm 10,10,0,0,0
	mr 9,28
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L151
	mr 9,26
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L150
	mr 29,27
	mr 28,26
	b .L150
.L151:
	mr 5,28
	mr 6,29
	mr 3,26
	mr 4,27
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L150
	mr 29,27
	mr 28,26
	b .L150
.L154:
	mr 29,27
	mr 28,26
.L150:
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
	mr 4,29
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L160
	mr 4,30
	mr 3,30
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L164
	mr 10,29
	rlwinm 10,10,0,0,0
	mr 9,30
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L161
	mr 9,29
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L160
	mr 30,29
	b .L160
.L161:
	mr 4,30
	mr 3,29
	bl __ltsf2
	cmpwi 0,3,0
	bge 0,.L160
	mr 30,29
	b .L160
.L164:
	mr 30,29
.L160:
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
	bne 0,.L170
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qtod
	mr 6,4
	mr 5,3
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L174
	mr 10,20
	rlwinm 10,10,0,0,0
	mr 9,24
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L171
	mr 9,20
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L170
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L170
.L171:
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
	bge 0,.L170
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
	b .L170
.L174:
	mr 27,23
	mr 26,22
	mr 25,21
	mr 24,20
.L170:
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
	b .L180
.L181:
	rlwinm 8,3,0,26,31
	lis 10,digits@ha
	la 10,digits@l(10)
	lbzx 10,10,8
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L180:
	cmpwi 0,3,0
	bne 0,.L181
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
	li 10,0
	li 11,0
	addi 11,3,-1
	li 10,0
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
	mullw 8,6,4
	lis 10,0x5851
	ori 10,10,0xf42d
	mullw 10,10,5
	add 8,8,10
	li 10,0
	li 11,0
	mullw 11,6,5
	mulhwu 10,6,5
	add 10,8,10
	li 8,0
	li 9,0
	addic 9,11,1
	addze 8,10
	stw 8,0(7)
	stw 9,4(7)
	li 10,0
	li 11,0
	srwi 11,8,1
	li 10,0
	mr 3,11
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
	bne 0,.L185
	li 9,0
	stw 9,4(3)
	stw 9,0(3)
	b .L184
.L185:
	lwz 9,0(4)
	stw 9,0(3)
	stw 4,4(3)
	stw 3,0(4)
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L184
	stw 3,4(9)
.L184:
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
	beq 0,.L188
	lwz 10,4(3)
	stw 10,4(9)
.L188:
	lwz 9,4(3)
	cmpwi 0,9,0
	beq 0,.L187
	lwz 10,0(3)
	stw 10,0(9)
.L187:
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
	lwz 27,0(25)
	mr 24,30
	li 28,0
	b .L191
.L194:
	mr 4,24
	mr 3,26
	mtctr 23
	bctrl
	add 24,24,29
	cmpwi 0,3,0
	bne 0,.L192
	mullw 28,28,29
	add 3,30,28
	b .L193
.L192:
	addi 28,28,1
.L191:
	cmplw 0,28,27
	bne 0,.L194
	addi 9,27,1
	stw 9,0(25)
	mullw 27,29,27
	add 3,30,27
	mr 5,29
	mr 4,26
	bl memcpy
.L193:
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
	mr 27,30
	li 29,0
	b .L196
.L199:
	mr 4,27
	mr 3,25
	mtctr 26
	bctrl
	add 27,27,28
	cmpwi 0,3,0
	bne 0,.L197
	mullw 29,29,28
	add 3,30,29
	b .L198
.L197:
	addi 29,29,1
.L196:
	cmplw 0,29,24
	bne 0,.L199
	li 3,0
.L198:
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
	b .L202
.L203:
	addi 30,30,1
.L202:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L203
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L209
	cmpwi 0,9,45
	bne 0,.L210
	li 10,1
	b .L204
.L209:
	li 10,0
.L204:
	addi 30,30,1
	b .L205
.L210:
	li 10,0
.L205:
	addi 30,30,-1
	li 3,0
	b .L206
.L207:
	slwi 9,3,2
	add 9,9,3
	slwi 8,9,1
	lbz 3,0(30)
	addi 3,3,-48
	subf 3,3,8
.L206:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L207
	cmpwi 0,10,0
	bne 0,.L208
	neg 3,3
.L208:
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
	b .L213
.L214:
	addi 30,30,1
.L213:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L214
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L220
	cmpwi 0,9,45
	bne 0,.L221
	li 10,1
	b .L215
.L220:
	li 10,0
.L215:
	addi 30,30,1
	b .L216
.L221:
	li 10,0
.L216:
	addi 30,30,-1
	li 3,0
	b .L217
.L218:
	slwi 9,3,2
	add 9,9,3
	slwi 8,9,1
	lbz 3,0(30)
	addi 3,3,-48
	subf 3,3,8
.L217:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L218
	cmpwi 0,10,0
	bne 0,.L219
	neg 3,3
.L219:
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
	b .L224
.L225:
	addi 30,30,1
.L224:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L225
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L231
	cmpwi 0,9,45
	bne 0,.L232
	li 8,1
	b .L226
.L231:
	li 8,0
.L226:
	addi 30,30,1
	b .L227
.L232:
	li 8,0
.L227:
	addi 30,30,-1
	li 10,0
	li 11,0
	b .L228
.L229:
	srwi 9,11,30
	slwi 28,10,2
	or 28,9,28
	slwi 29,11,2
	addc 25,29,11
	adde 24,28,10
	srwi 9,25,31
	slwi 26,24,1
	or 26,9,26
	slwi 27,25,1
	mr 24,26
	mr 25,27
	lbz 9,0(30)
	addi 9,9,-48
	mr 23,9
	srawi 22,9,31
	subfc 11,23,27
	subfe 10,22,26
.L228:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L229
	cmpwi 0,8,0
	bne 0,.L233
	li 3,0
	li 4,0
	subfic 4,11,0
	subfze 3,10
	b .L230
.L233:
	mr 3,10
	mr 4,11
.L230:
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
	b .L235
.L239:
	srwi 29,30,1
	mullw 29,29,28
	add 29,27,29
	mr 4,29
	mr 3,25
	mtctr 26
	bctrl
	cmpwi 0,3,0
	bge 0,.L236
	srwi 30,30,1
	b .L235
.L236:
	cmpwi 0,3,0
	ble 0,.L240
	add 27,29,28
	srwi 9,30,1
	addi 30,30,-1
	subf 30,9,30
.L235:
	cmpwi 0,30,0
	bne 0,.L239
	li 3,0
	b .L238
.L240:
	mr 3,29
.L238:
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
	b .L242
.L245:
	srawi 30,29,1
	mullw 30,30,27
	add 30,28,30
	mr 5,26
	mr 4,30
	mr 3,24
	mtctr 25
	bctrl
	cmpwi 0,3,0
	beq 0,.L246
	ble 0,.L244
	add 28,30,27
	addi 29,29,-1
.L244:
	srawi 29,29,1
.L242:
	cmpwi 0,29,0
	bne 0,.L245
	li 3,0
	b .L243
.L246:
	mr 3,30
.L243:
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
	mr 9,3
	divw 10,4,5
	mullw 5,10,5
	subf 4,5,4
	stw 10,0(9)
	stw 4,4(9)
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
	mr 7,4
	mr 6,3
	li 10,0
	li 11,0
	srawi 11,6,31
	mr 10,11
	li 8,0
	li 9,0
	xor 8,10,6
	xor 9,11,7
	li 3,0
	li 4,0
	subfc 4,11,9
	subfe 3,10,8
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
	mr 5,26
	mr 6,27
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
	mr 9,3
	divw 10,4,5
	mullw 5,10,5
	subf 4,5,4
	stw 10,0(9)
	stw 4,4(9)
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
	mr 7,4
	mr 6,3
	li 10,0
	li 11,0
	srawi 11,6,31
	mr 10,11
	li 8,0
	li 9,0
	xor 8,10,6
	xor 9,11,7
	li 3,0
	li 4,0
	subfc 4,11,9
	subfe 3,10,8
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
	mr 5,26
	mr 6,27
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
	b .L255
.L257:
	addi 3,3,4
.L255:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L256
	cmpw 0,4,9
	bne 0,.L257
.L256:
	lwz 9,0(3)
	cmpwi 0,9,0
	bne 0,.L258
	li 3,0
.L258:
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
	b .L261
.L263:
	addi 3,3,4
	addi 4,4,4
.L261:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L262
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L262
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L263
.L262:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L265
	mr 9,10
	lwz 10,0(4)
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
	b .L264
.L265:
	li 3,-1
.L264:
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
.L267:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
	cmpwi 0,10,0
	bne 0,.L267
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
	b .L269
.L270:
	addi 9,9,4
.L269:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L270
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
	b .L272
.L274:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L272:
	cmpwi 0,5,0
	beq 0,.L273
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L273
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L273
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L274
.L273:
	cmpwi 0,5,0
	beq 0,.L276
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L277
	mr 9,10
	lwz 10,0(4)
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
	b .L275
.L276:
	li 3,0
	b .L275
.L277:
	li 3,-1
.L275:
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
	b .L279
.L281:
	addi 5,5,-1
	addi 3,3,4
.L279:
	cmpwi 0,5,0
	beq 0,.L280
	lwz 9,0(3)
	cmpw 0,4,9
	bne 0,.L281
.L280:
	cmpwi 0,5,0
	bne 0,.L282
	li 3,0
.L282:
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
	b .L285
.L287:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L285:
	cmpwi 0,5,0
	beq 0,.L286
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq 0,.L287
.L286:
	cmpwi 0,5,0
	beq 0,.L289
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L290
	mr 9,10
	lwz 10,0(4)
	srwi 3,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 3,3,8
	xori 3,3,0x1
	rlwinm 3,3,0,0xff
	b .L288
.L289:
	li 3,0
	b .L288
.L290:
	li 3,-1
.L288:
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
	b .L292
.L293:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
.L292:
	addi 5,5,-1
	cmpwi 0,5,-1
	bne 0,.L293
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
	beq 0,.L295
	subf 9,4,3
	slwi 10,5,2
	cmplw 0,9,10
	blt 0,.L296
	addi 4,4,-4
	addi 9,3,-4
	b .L297
.L296:
	slwi 5,5,2
	add 4,4,5
	add 5,3,5
	mr 9,3
	b .L298
.L299:
	addi 4,4,-4
	lwz 10,0(4)
	addi 5,5,-4
	stw 10,0(5)
.L298:
	cmplw 0,5,9
	bne 0,.L299
	b .L295
.L300:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
.L297:
	addi 5,5,-1
	cmpwi 0,5,-1
	bne 0,.L300
.L295:
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
	b .L302
.L303:
	addi 9,9,4
	stw 4,0(9)
.L302:
	addi 5,5,-1
	cmpwi 0,5,-1
	bne 0,.L303
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
	bge 0,.L305
	add 9,3,5
	add 4,4,5
	b .L306
.L307:
	lbzu 10,-1(9)
	addi 4,4,-1
	stb 10,0(4)
.L306:
	cmplw 0,9,3
	bne 0,.L307
	b .L304
.L305:
	cmplw 0,3,4
	beq 0,.L304
	addi 3,3,-1
	addi 9,4,-1
	addi 5,5,-1
	add 5,5,4
	b .L309
.L310:
	addi 3,3,1
	lbz 10,0(3)
	addi 9,9,1
	stb 10,0(9)
.L309:
	cmplw 0,9,5
	bne 0,.L310
.L304:
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
	mr 7,4
	mr 6,3
	addic. 10,5,-32
	blt 0,.L312
	li 8,0
	li 9,0
	slw 8,7,10
	li 9,0
	b .L313
.L312:
	srwi 9,7,1
	subfic 10,5,31
	srw 10,9,10
	li 8,0
	li 9,0
	slw 8,6,5
	or 8,10,8
	slw 9,7,5
.L313:
	neg 10,5
	rlwinm 10,10,0,26,31
	addic. 4,10,-32
	blt 0,.L314
	li 10,0
	li 11,0
	srw 11,6,4
	li 10,0
	b .L315
.L314:
	slwi 4,6,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 10,5,31
	slw 4,4,10
	li 10,0
	li 11,0
	srw 11,7,5
	or 11,4,11
	srw 10,6,5
.L315:
	li 3,0
	li 4,0
	or 3,8,10
	or 4,9,11
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
	mr 7,4
	mr 6,3
	addic. 10,5,-32
	blt 0,.L317
	li 8,0
	li 9,0
	srw 9,6,10
	li 8,0
	b .L318
.L317:
	slwi 9,6,1
	subfic 10,5,31
	slw 10,9,10
	li 8,0
	li 9,0
	srw 9,7,5
	or 9,10,9
	srw 8,6,5
.L318:
	neg 10,5
	rlwinm 10,10,0,26,31
	addic. 4,10,-32
	blt 0,.L319
	li 10,0
	li 11,0
	slw 10,7,4
	li 11,0
	b .L320
.L319:
	srwi 4,7,1
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 10,5,31
	srw 4,4,10
	li 10,0
	li 11,0
	slw 10,6,5
	or 10,4,10
	slw 11,7,5
.L320:
	li 3,0
	li 4,0
	or 3,8,10
	or 4,9,11
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
	mr 12,4
	mr 11,3
	li 6,0
	li 7,0
	rlwinm 6,11,0,0,7
	li 7,0
	li 8,0
	li 9,0
	srwi 9,6,24
	li 8,0
	li 4,0
	li 5,0
	rlwinm 4,11,0,8,15
	li 5,0
	li 6,0
	li 7,0
	srwi 7,4,8
	li 6,0
	li 28,0
	li 29,0
	or 29,7,9
	li 6,0
	li 7,0
	rlwinm 6,11,0,16,23
	li 7,0
	li 8,0
	li 9,0
	slwi 9,6,8
	srwi 8,6,24
	li 4,0
	li 5,0
	or 4,28,8
	or 5,29,9
	li 6,0
	li 7,0
	rlwinm 6,11,0,24,31
	li 7,0
	li 8,0
	li 9,0
	slwi 9,6,24
	srwi 8,6,8
	li 6,0
	li 7,0
	or 6,4,8
	or 7,5,9
	li 4,0
	li 5,0
	rlwinm 5,12,0,0,7
	srwi 10,5,24
	li 8,0
	li 9,0
	slwi 8,4,8
	or 8,10,8
	slwi 9,5,8
	li 4,0
	li 5,0
	or 4,6,8
	or 5,7,9
	li 6,0
	li 7,0
	rlwinm 7,12,0,8,15
	srwi 10,7,8
	li 8,0
	li 9,0
	slwi 8,6,24
	or 8,10,8
	slwi 9,7,24
	li 6,0
	li 7,0
	or 6,4,8
	or 7,5,9
	li 8,0
	li 9,0
	rlwinm 9,12,0,16,23
	li 4,0
	li 5,0
	slwi 4,9,8
	li 5,0
	li 8,0
	li 9,0
	or 8,6,4
	mr 9,7
	li 6,0
	li 7,0
	rlwinm 7,12,0,24,31
	li 10,0
	li 11,0
	slwi 10,7,24
	li 11,0
	li 3,0
	li 4,0
	or 3,8,10
	mr 4,9
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
	b .L333
.L336:
	srw 10,3,9
	andi. 10,10,0x1
	beq 0,.L334
	addi 3,9,1
	b .L335
.L334:
	addi 9,9,1
.L333:
	cmplwi 0,9,32
	bne 0,.L336
	li 3,0
.L335:
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
	beq 0,.L341
	li 3,1
	b .L339
.L340:
	srawi 9,9,1
	addi 3,3,1
.L339:
	andi. 10,9,0x1
	beq 0,.L340
	b .L338
.L341:
	li 3,0
.L338:
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
	blt 0,.L345
	lis 4,0x7f7f
	ori 4,4,0xffff
	mr 3,30
	bl __gtsf2
	cmpwi 0,3,0
	ble 0,.L348
	li 3,1
	b .L343
.L345:
	li 3,1
	b .L343
.L348:
	li 3,0
.L343:
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
	lis 5,0xffef
	ori 5,5,0xffff
	li 6,-1
	bl __ltdf2
	cmpwi 0,3,0
	blt 0,.L352
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble 0,.L355
	li 3,1
	b .L350
.L352:
	li 3,1
	b .L350
.L355:
	li 3,0
.L350:
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
	lis 7,0xffef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0xfc8f
	ori 9,9,0xffff
	li 10,-2
	bl __gcc_qlt
	cmpwi 0,3,0
	blt 0,.L359
	lis 7,0x7fef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0x7c8f
	ori 9,9,0xffff
	li 10,-2
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qgt
	cmpwi 0,3,0
	ble 0,.L362
	li 3,1
	b .L357
.L359:
	li 3,1
	b .L357
.L362:
	li 3,0
.L357:
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
	mr 4,30
	bl __unordsf2
	cmpwi 0,3,0
	bne 0,.L365
	mr 4,30
	mr 3,30
	bl __addsf3
	mr 4,3
	mr 3,30
	bl __nesf2
	cmpwi 0,3,0
	beq 0,.L365
	cmpwi 0,28,0
	bge 0,.L370
	lis 29,0x3f00
	b .L369
.L370:
	lis 29,0x4000
.L369:
	andi. 9,28,0x1
	beq 0,.L368
	mr 4,29
	mr 3,30
	bl __mulsf3
	mr 30,3
.L368:
	srawi 28,28,1
	addze. 28,28
	beq 0,.L365
	mr 4,29
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L369
.L365:
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
	mr 5,28
	mr 6,29
	bl __unorddf2
	cmpwi 0,3,0
	bne 0,.L373
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
	beq 0,.L373
	cmpwi 0,30,0
	bge 0,.L378
	lis 26,0x3fe0
	li 27,0
	b .L377
.L378:
	lis 26,0x4000
	li 27,0
.L377:
	andi. 9,30,0x1
	beq 0,.L376
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L376:
	srawi 30,30,1
	addze. 30,30
	beq 0,.L373
	mr 5,26
	mr 6,27
	mr 3,26
	mr 4,27
	bl __muldf3
	mr 27,4
	mr 26,3
	b .L377
.L373:
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
	bne 0,.L381
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
	beq 0,.L381
	cmpwi 0,30,0
	bge 0,.L386
	lis 20,0x3fe0
	li 21,0
	li 22,0
	li 23,0
	b .L385
.L386:
	lis 20,0x4000
	li 21,0
	li 22,0
	li 23,0
.L385:
	andi. 9,30,0x1
	beq 0,.L384
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
.L384:
	srawi 30,30,1
	addze. 30,30
	beq 0,.L381
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
	b .L385
.L381:
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
	addi 5,5,-1
	add 5,5,3
	b .L389
.L390:
	addi 4,4,1
	lbz 8,0(4)
	addi 9,9,1
	lbz 10,0(9)
	xor 10,10,8
	stb 10,0(9)
.L389:
	cmplw 0,9,5
	bne 0,.L390
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
	b .L392
.L394:
	addi 3,3,1
	addi 29,29,-1
.L392:
	cmpwi 0,29,0
	beq 0,.L393
	addi 30,30,1
	lbz 10,0(30)
	stb 10,0(3)
	andi. 10,10,0xff
	bne 0,.L394
.L393:
	cmpwi 0,29,0
	bne 0,.L395
	li 10,0
	stb 10,0(3)
.L395:
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
	b .L397
.L399:
	addi 3,3,1
.L397:
	cmplw 0,3,4
	beq 0,.L398
	lbzx 10,9,3
	cmpwi 0,10,0
	bne 0,.L399
.L398:
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
	b .L401
.L403:
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	beq 0,.L402
.L404:
	addi 9,9,1
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L403
	addi 3,3,1
.L401:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L406
	addi 9,4,-1
	b .L404
.L406:
	li 3,0
.L402:
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
.L409:
	lbz 10,0(9)
	cmpw 0,4,10
	bne 0,.L408
	mr 3,9
.L408:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	bne 0,.L409
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
	mr 3,29
	bl strlen
	mr 28,3
	cmpwi 0,28,0
	beq 0,.L415
	lbz 27,0(29)
	b .L413
.L414:
	mr 5,28
	mr 4,29
	mr 3,30
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L416
	addi 30,30,1
.L413:
	mr 4,27
	mr 3,30
	bl strchr
	mr. 30,3
	bne 0,.L414
	b .L412
.L415:
	mr 3,30
	b .L412
.L416:
	mr 3,30
.L412:
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
	li 5,0
	li 6,0
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L418
	li 5,0
	li 6,0
	mr 3,26
	mr 4,27
	bl __gtdf2
	cmpwi 0,3,0
	bgt 0,.L420
.L418:
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	ble 0,.L428
	li 5,0
	li 6,0
	mr 3,26
	mr 4,27
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L429
.L420:
	li 3,0
	li 4,0
	addis 3,28,0x8000
	mr 4,29
	b .L421
.L428:
	mr 3,28
	mr 4,29
	b .L421
.L429:
	mr 3,28
	mr 4,29
.L421:
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
	mr 28,5
	mr 29,6
	subf 27,29,4
	add 27,30,27
	cmpwi 0,29,0
	beq 0,.L435
	subfc 4,29,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne 0,.L436
	b .L432
.L434:
	lbz 10,0(30)
	lbz 9,0(28)
	cmpw 0,10,9
	bne 0,.L433
	addi 3,30,1
	addi 5,29,-1
	addi 4,28,1
	bl memcmp
	cmpwi 0,3,0
	beq 0,.L437
.L433:
	addi 30,30,1
.L432:
	cmplw 0,30,27
	ble 0,.L434
	li 3,0
	b .L431
.L435:
	mr 3,30
	b .L431
.L436:
	li 3,0
	b .L431
.L437:
	mr 3,30
.L431:
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
	li 5,0
	li 6,0
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L456
	li 10,0
	li 11,0
	addis 10,28,0x8000
	mr 11,29
	mr 29,11
	mr 28,10
	li 26,1
	b .L440
.L456:
	li 26,0
.L440:
	lis 5,0x3ff0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gedf2
	cmpwi 0,3,0
	bge 0,.L451
	b .L457
.L444:
	addi 30,30,1
	lis 5,0x3fe0
	li 6,0
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
	b .L442
.L451:
	li 30,0
.L442:
	lis 5,0x3ff0
	li 6,0
	mr 3,28
	mr 4,29
	bl __gedf2
	cmpwi 0,3,0
	bge 0,.L444
	b .L445
.L457:
	lis 5,0x3fe0
	li 6,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	bge 0,.L458
	li 5,0
	li 6,0
	mr 3,28
	mr 4,29
	bl __nedf2
	cmpwi 0,3,0
	bne 0,.L453
	li 30,0
	b .L445
.L448:
	addi 30,30,-1
	mr 5,28
	mr 6,29
	mr 3,28
	mr 4,29
	bl __adddf3
	mr 29,4
	mr 28,3
	b .L447
.L453:
	li 30,0
.L447:
	lis 5,0x3fe0
	li 6,0
	mr 3,28
	mr 4,29
	bl __ltdf2
	cmpwi 0,3,0
	blt 0,.L448
	b .L445
.L458:
	li 30,0
.L445:
	stw 30,0(27)
	cmpwi 0,26,0
	beq 0,.L449
	li 10,0
	li 11,0
	addis 10,28,0x8000
	mr 11,29
	mr 29,11
	mr 28,10
.L449:
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
	li 3,0
	li 4,0
	b .L460
.L463:
	li 24,0
	rlwinm 25,11,0,31,31
	or. 7,24,25
	beq 0,.L461
	addc 23,4,9
	adde 22,3,8
	mr 3,22
	mr 4,23
.L461:
	srwi 7,9,31
	slwi 28,8,1
	or 28,7,28
	slwi 29,9,1
	mr 8,28
	mr 9,29
	slwi 7,10,31
	srwi 27,11,1
	or 27,7,27
	srwi 26,10,1
	mr 10,26
	mr 11,27
.L460:
	or. 7,10,11
	bne 0,.L463
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
	b .L465
.L467:
	slwi 4,4,1
	slwi 9,9,1
.L465:
	cmplw 0,4,3
	bge 0,.L472
	cmpwi 0,9,0
	beq 0,.L473
	cmpwi 0,4,0
	bge 0,.L467
	li 10,0
	b .L469
.L470:
	cmplw 0,3,4
	blt 0,.L468
	subf 3,4,3
	or 10,10,9
.L468:
	srwi 9,9,1
	srwi 4,4,1
	b .L469
.L472:
	li 10,0
	b .L469
.L473:
	li 10,0
.L469:
	cmpwi 0,9,0
	bne 0,.L470
	cmpwi 0,5,0
	bne 0,.L471
	mr 3,10
.L471:
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
	beq 0,.L477
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	b .L476
.L477:
	li 3,7
.L476:
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
	cmpwi 0,10,0
	bge 0,.L479
	li 8,0
	li 9,0
	not 8,10
	not 9,11
	mr 11,9
	mr 10,8
.L479:
	or. 9,10,11
	beq 0,.L485
	cmpwi 0,10,0
	beq 0,.L483
	cntlzw 10,10
	b .L484
.L483:
	cntlzw 10,11
	addi 10,10,32
.L484:
	addi 3,10,-1
	b .L481
.L485:
	li 3,63
.L481:
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
	b .L487
.L489:
	andi. 10,9,0x1
	beq 0,.L488
	add 3,3,4
.L488:
	srwi 9,9,1
	slwi 4,4,1
.L487:
	cmpwi 0,9,0
	bne 0,.L489
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
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	cmplw 0,3,4
	blt 0,.L491
	add 8,4,5
	cmplw 0,8,3
	bge 0,.L492
.L491:
	addi 8,4,-8
	addi 11,3,-8
	slwi 10,10,3
	add 10,8,10
	b .L493
.L492:
	add 9,4,5
	add 3,3,5
	b .L494
.L495:
	addi 8,8,8
	lwz 6,0(8)
	lwz 7,4(8)
	addi 11,11,8
	stw 6,0(11)
	stw 7,4(11)
.L493:
	cmplw 0,8,10
	bne 0,.L495
	b .L496
.L497:
	lbzx 10,4,9
	stbx 10,3,9
	addi 9,9,1
.L496:
	cmplw 0,5,9
	bgt 0,.L497
	b .L490
.L499:
	addi 9,9,-1
	lbz 10,0(9)
	addi 3,3,-1
	stb 10,0(3)
.L494:
	cmplw 0,9,4
	bne 0,.L499
.L490:
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
	blt 0,.L501
	add 10,4,5
	cmplw 0,10,3
	bge 0,.L502
.L501:
	addi 10,4,-2
	addi 8,3,-2
	slwi 9,9,1
	add 9,10,9
	b .L503
.L502:
	add 9,4,5
	add 3,3,5
	b .L504
.L505:
	addi 10,10,2
	lhz 7,0(10)
	addi 8,8,2
	sth 7,0(8)
.L503:
	cmplw 0,10,9
	bne 0,.L505
	andi. 9,5,0x1
	beq 0,.L500
	addi 5,5,-1
	lbzx 9,4,5
	stbx 9,3,5
	b .L500
.L507:
	addi 9,9,-1
	lbz 10,0(9)
	addi 3,3,-1
	stb 10,0(3)
.L504:
	cmplw 0,9,4
	bne 0,.L507
.L500:
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
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	cmplw 0,3,4
	blt 0,.L509
	add 8,4,5
	cmplw 0,8,3
	bge 0,.L510
.L509:
	addi 8,4,-4
	addi 7,3,-4
	slwi 10,10,2
	add 10,8,10
	b .L511
.L510:
	add 9,4,5
	add 3,3,5
	b .L512
.L513:
	addi 8,8,4
	lwz 6,0(8)
	addi 7,7,4
	stw 6,0(7)
.L511:
	cmplw 0,8,10
	bne 0,.L513
	b .L514
.L515:
	lbzx 10,4,9
	stbx 10,3,9
	addi 9,9,1
.L514:
	cmplw 0,5,9
	bgt 0,.L515
	b .L508
.L517:
	addi 9,9,-1
	lbz 10,0(9)
	addi 3,3,-1
	stb 10,0(3)
.L512:
	cmplw 0,9,4
	bne 0,.L517
.L508:
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
	b .L525
.L527:
	subfic 9,3,15
	sraw 9,10,9
	andi. 9,9,0x1
	bne 0,.L526
	addi 3,3,1
.L525:
	cmpwi 0,3,16
	bne 0,.L527
.L526:
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
	b .L529
.L531:
	sraw 10,9,3
	andi. 10,10,0x1
	bne 0,.L530
	addi 3,3,1
.L529:
	cmpwi 0,3,16
	bne 0,.L531
.L530:
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
	blt 0,.L537
	lis 4,0x4700
	mr 3,30
	bl __subsf3
	bl __fixsfsi
	addis 3,3,0x1
	addi 3,3,-32768
	b .L535
.L537:
	mr 3,30
	bl __fixsfsi
.L535:
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
	b .L539
.L541:
	sraw 8,3,10
	andi. 8,8,0x1
	beq 0,.L540
	addi 9,9,1
.L540:
	addi 10,10,1
.L539:
	cmpwi 0,10,16
	bne 0,.L541
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
	b .L543
.L545:
	sraw 8,10,9
	andi. 8,8,0x1
	beq 0,.L544
	addi 3,3,1
.L544:
	addi 9,9,1
.L543:
	cmpwi 0,9,16
	bne 0,.L545
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
	b .L547
.L549:
	andi. 10,9,0x1
	beq 0,.L548
	add 3,3,4
.L548:
	srwi 9,9,1
	slwi 4,4,1
.L547:
	cmpwi 0,9,0
	bne 0,.L549
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
	beq 0,.L555
	li 3,0
	b .L552
.L554:
	andi. 10,4,0x1
	beq 0,.L553
	add 3,3,9
.L553:
	slwi 9,9,1
	srwi 4,4,1
.L552:
	cmpwi 0,4,0
	bne 0,.L554
	b .L551
.L555:
	li 3,0
.L551:
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
	b .L557
.L559:
	slwi 4,4,1
	slwi 9,9,1
.L557:
	cmplw 0,4,3
	bge 0,.L564
	cmpwi 0,9,0
	beq 0,.L565
	cmpwi 0,4,0
	bge 0,.L559
	li 10,0
	b .L561
.L562:
	cmplw 0,3,4
	blt 0,.L560
	subf 3,4,3
	or 10,10,9
.L560:
	srwi 9,9,1
	srwi 4,4,1
	b .L561
.L564:
	li 10,0
	b .L561
.L565:
	li 10,0
.L561:
	cmpwi 0,9,0
	bne 0,.L562
	cmpwi 0,5,0
	bne 0,.L563
	mr 3,10
.L563:
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
	blt 0,.L569
	mr 4,29
	mr 3,30
	bl __gtsf2
	cmpwi 0,3,0
	bgt 0,.L570
	li 3,0
	b .L568
.L569:
	li 3,-1
	b .L568
.L570:
	li 3,1
.L568:
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
	blt 0,.L573
	mr 5,26
	mr 6,27
	mr 3,28
	mr 4,29
	bl __gtdf2
	cmpwi 0,3,0
	bgt 0,.L574
	li 3,0
	b .L572
.L573:
	li 3,-1
	b .L572
.L574:
	li 3,1
.L572:
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
	li 6,0
	li 7,0
	mr 7,3
	srawi 6,3,31
	li 11,0
	li 12,0
	mr 12,4
	srawi 11,4,31
	mullw 8,6,12
	mullw 10,11,7
	add 10,8,10
	li 3,0
	li 4,0
	mullw 4,7,12
	mulhwu 3,7,12
	add 3,10,3
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
	li 8,0
	li 9,0
	mr 9,3
	li 8,0
	li 10,0
	li 11,0
	mr 11,4
	li 10,0
	li 3,0
	li 4,0
	mullw 4,9,11
	mulhwu 3,9,11
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
	bge 0,.L584
	neg 4,4
	li 8,1
	b .L578
.L584:
	li 8,0
.L578:
	li 10,33
	li 9,0
	b .L579
.L582:
	andi. 7,4,0x1
	beq 0,.L580
	add 9,9,3
.L580:
	slwi 3,3,1
	srawi 4,4,1
.L579:
	cmpwi 0,4,0
	beq 0,.L581
	addi 10,10,-1
	andi. 7,10,0xff
	bne 0,.L582
.L581:
	cmpwi 0,8,0
	beq 0,.L585
	neg 3,9
	b .L583
.L585:
	mr 3,9
.L583:
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
	bge 0,.L590
	neg 3,3
	li 30,1
	b .L587
.L590:
	li 30,0
.L587:
	cmpwi 0,4,0
	bge 0,.L588
	neg 4,4
	cntlzw 30,30
	srwi 30,30,5
.L588:
	li 5,0
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L589
	neg 3,3
.L589:
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
	bge 0,.L595
	neg 3,3
	li 30,1
	b .L592
.L595:
	li 30,0
.L592:
	cmpwi 0,4,0
	bge 0,.L593
	neg 4,4
.L593:
	li 5,1
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L594
	neg 3,3
.L594:
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
	li 10,17
	li 9,1
	b .L597
.L599:
	rlwinm 4,4,1,16,30
	slwi 9,9,1
.L597:
	cmplw 0,4,3
	bge 0,.L604
	addic. 10,10,-1
	beq 0,.L605
	andi. 8,4,0x8000
	beq 0,.L599
	li 10,0
	b .L601
.L602:
	cmplw 0,3,4
	blt 0,.L600
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
.L600:
	rlwinm 9,9,31,17,31
	srwi 4,4,1
	b .L601
.L604:
	li 10,0
	b .L601
.L605:
	li 10,0
.L601:
	andi. 8,9,0xffff
	bne 0,.L602
	cmpwi 0,5,0
	bne 0,.L603
	mr 3,10
.L603:
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
	b .L608
.L610:
	slwi 4,4,1
	slwi 9,9,1
.L608:
	cmplw 0,4,3
	bge 0,.L615
	cmpwi 0,9,0
	beq 0,.L616
	cmpwi 0,4,0
	bge 0,.L610
	li 10,0
	b .L612
.L613:
	cmplw 0,3,4
	blt 0,.L611
	subf 3,4,3
	or 10,10,9
.L611:
	srwi 9,9,1
	srwi 4,4,1
	b .L612
.L615:
	li 10,0
	b .L612
.L616:
	li 10,0
.L612:
	cmpwi 0,9,0
	bne 0,.L613
	cmpwi 0,5,0
	bne 0,.L614
	mr 3,10
.L614:
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
	mr 8,4
	mr 7,3
	andi. 10,5,0x20
	beq 0,.L619
	li 10,0
	li 11,0
	addi 5,5,-32
	slw 5,8,5
	mr 10,5
	b .L620
.L619:
	cmpwi 0,5,0
	beq 0,.L621
	mr 9,8
	li 10,0
	li 11,0
	slw 11,9,5
	slw 8,7,5
	subfic 5,5,32
	srw 9,9,5
	or 9,9,8
	mr 10,9
.L620:
	mr 3,10
	mr 4,11
.L621:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,4
	mr 29,3
	andi. 10,5,0x20
	beq 0,.L624
	mr 8,29
	li 10,0
	li 11,0
	srawi 10,8,31
	addi 5,5,-32
	sraw 8,8,5
	mr 11,8
	b .L625
.L624:
	cmpwi 0,5,0
	beq 0,.L626
	mr 8,29
	li 10,0
	li 11,0
	sraw 10,8,5
	subfic 7,5,32
	slw 8,8,7
	srw 5,30,5
	or 11,8,5
.L625:
	mr 3,10
	mr 4,11
.L626:
	addi 11,31,32
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
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 12,4
	mr 11,3
	li 20,0
	li 21,0
	srwi 21,11,24
	li 20,0
	li 8,0
	li 9,0
	srwi 9,11,8
	li 8,0
	li 26,0
	li 27,0
	rlwinm 27,9,0,16,23
	slwi 0,11,8
	li 8,0
	li 9,0
	srwi 9,12,24
	or 9,0,9
	mr 8,21
	li 28,0
	li 29,0
	rlwinm 29,9,0,8,15
	slwi 3,11,24
	li 8,0
	li 9,0
	srwi 9,12,8
	or 9,3,9
	srwi 8,11,8
	li 4,0
	li 5,0
	rlwinm 5,9,0,0,7
	srwi 9,12,24
	li 6,0
	li 7,0
	mr 6,0
	or 6,9,6
	slwi 7,12,8
	li 22,0
	li 23,0
	rlwinm 22,6,0,24,31
	li 23,0
	srwi 10,12,8
	li 8,0
	li 9,0
	mr 8,3
	or 8,10,8
	slwi 9,12,24
	li 24,0
	li 25,0
	rlwinm 24,8,0,16,23
	li 25,0
	li 10,0
	li 11,0
	mr 10,7
	li 11,0
	li 6,0
	li 7,0
	rlwinm 6,10,0,8,15
	li 7,0
	li 10,0
	li 11,0
	mr 10,9
	li 11,0
	li 8,0
	li 9,0
	mr 8,10
	mr 9,21
	li 10,0
	li 11,0
	or 10,8,26
	or 11,9,27
	li 8,0
	li 9,0
	or 8,10,28
	or 9,11,29
	li 10,0
	li 11,0
	or 10,8,4
	or 11,9,5
	li 8,0
	li 9,0
	or 8,10,22
	mr 9,11
	li 10,0
	li 11,0
	or 10,8,24
	mr 11,9
	li 3,0
	li 4,0
	or 3,10,6
	mr 4,11
	addi 11,31,64
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
	mr 10,3
	rlwinm 7,10,24,16,23
	rlwinm 8,10,8,8,15
	srwi 3,10,24
	rlwimi 3,10,24,0,31-24
	or 3,3,7
	or 3,3,8
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
	bgt 0,.L635
	li 9,16
	b .L631
.L635:
	li 9,0
.L631:
	subfic 10,9,16
	srw 3,3,10
	andi. 10,3,0xff00
	bne 0,.L636
	li 10,8
	b .L632
.L636:
	li 10,0
.L632:
	subfic 8,10,8
	srw 3,3,8
	add 9,9,10
	andi. 10,3,0xf0
	bne 0,.L637
	li 10,4
	b .L633
.L637:
	li 10,0
.L633:
	subfic 8,10,4
	srw 3,3,8
	add 9,9,10
	andi. 10,3,0xc
	bne 0,.L638
	li 10,2
	b .L634
.L638:
	li 10,0
.L634:
	subfic 8,10,2
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,30,30
	cntlzw 10,10
	srwi 10,10,5
	subfic 3,3,2
	mullw 3,10,3
	add 3,9,3
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
	mr 9,4
	mr 8,3
	mr 11,6
	mr 10,5
	cmpw 0,10,8
	bgt 0,.L641
	blt 0,.L642
	cmplw 0,11,9
	bgt 0,.L643
	blt 0,.L644
	li 3,1
	b .L640
.L641:
	li 3,0
	b .L640
.L642:
	li 3,2
	b .L640
.L643:
	li 3,0
	b .L640
.L644:
	li 3,2
.L640:
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
	bne 0,.L651
	li 10,16
	b .L647
.L651:
	li 10,0
.L647:
	srw 3,3,10
	rlwinm 9,3,0,24,31
	cmpwi 0,9,0
	bne 0,.L652
	li 9,8
	b .L648
.L652:
	li 9,0
.L648:
	srw 3,3,9
	add 10,10,9
	andi. 9,3,0xf
	bne 0,.L653
	li 9,4
	b .L649
.L653:
	li 9,0
.L649:
	srw 3,3,9
	add 10,10,9
	andi. 9,3,0x3
	bne 0,.L654
	li 9,2
	b .L650
.L654:
	li 9,0
.L650:
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,4
	mr 29,3
	andi. 10,5,0x20
	beq 0,.L656
	li 10,0
	li 11,0
	addi 5,5,-32
	srw 11,29,5
	b .L657
.L656:
	cmpwi 0,5,0
	beq 0,.L658
	mr 8,29
	li 10,0
	li 11,0
	srw 10,8,5
	subfic 7,5,32
	slw 8,8,7
	srw 5,30,5
	or 11,8,5
.L657:
	mr 3,10
	mr 4,11
.L658:
	addi 11,31,32
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
	li 10,0
	li 11,0
	mr 11,8
	srwi 9,8,16
	rlwinm 8,8,0,16,31
	mr 11,8
	srwi 3,3,16
	mullw 6,3,6
	add 9,9,6
	slwi 6,9,16
	add 11,6,8
	srwi 9,9,16
	mr 10,9
	mr 8,11
	srwi 9,8,16
	rlwinm 8,8,0,16,31
	mr 11,8
	srwi 4,4,16
	mullw 7,7,4
	add 9,9,7
	slwi 7,9,16
	add 11,7,8
	srwi 9,9,16
	add 9,9,10
	mr 10,9
	mullw 3,3,4
	add 3,3,9
	mr 10,3
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
	mr 25,27
	mr 30,29
	mr 4,29
	mr 3,27
	bl __muldsi3
	mr 11,4
	mr 10,3
	mullw 30,30,26
	mullw 25,25,28
	add 30,30,25
	add 8,30,3
	mr 10,8
	mr 3,10
	mr 4,11
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
	mr 11,4
	mr 10,3
	li 3,0
	li 4,0
	subfic 4,11,0
	subfze 3,10
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
	xor 10,4,3
	srwi 9,10,16
	xor 10,10,9
	srwi 9,10,8
	xor 10,10,9
	srwi 9,10,4
	xor 10,10,9
	rlwinm 10,10,0,28,31
	li 3,27030
	sraw 3,3,10
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
	xor 9,3,9
	srwi 10,9,8
	xor 9,9,10
	srwi 10,9,4
	xor 9,9,10
	rlwinm 9,9,0,28,31
	li 3,27030
	sraw 3,3,9
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
	mr 7,4
	mr 6,3
	slwi 9,6,31
	li 10,0
	li 11,0
	srwi 11,7,1
	or 11,9,11
	srwi 10,6,1
	lis 9,0x5555
	ori 9,9,0x5555
	li 4,0
	li 5,0
	and 4,10,9
	and 5,11,9
	li 8,0
	li 9,0
	subfc 9,5,7
	subfe 8,4,6
	mr 11,9
	mr 10,8
	slwi 7,8,30
	li 4,0
	li 5,0
	srwi 5,9,2
	or 5,7,5
	srwi 4,8,2
	lis 3,0x3333
	ori 3,3,0x3333
	li 6,0
	li 7,0
	and 6,4,3
	and 7,5,3
	li 4,0
	li 5,0
	and 4,8,3
	and 5,9,3
	addc 11,7,5
	adde 10,6,4
	slwi 7,10,28
	li 8,0
	li 9,0
	srwi 9,11,4
	or 9,7,9
	srwi 8,10,4
	li 6,0
	li 7,0
	addc 7,9,11
	adde 6,8,10
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 10,6,9
	and 11,7,9
	li 8,0
	li 9,0
	mr 9,10
	li 8,0
	add 9,9,11
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
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
	subf 9,9,3
	srwi 10,9,2
	lis 8,0x3333
	ori 8,8,0x3333
	and 10,10,8
	and 9,9,8
	add 9,10,9
	srwi 10,9,4
	add 9,10,9
	lis 10,0xf0f
	ori 10,10,0xf0f
	and 9,9,10
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
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
	srwi 27,30,31
	lis 28,0x3ff0
	li 29,0
.L670:
	andi. 9,30,0x1
	beq 0,.L668
	mr 5,24
	mr 6,25
	mr 3,28
	mr 4,29
	bl __muldf3
	mr 29,4
	mr 28,3
.L668:
	srawi 30,30,1
	addze. 30,30
	beq 0,.L669
	mr 5,24
	mr 6,25
	mr 3,24
	mr 4,25
	bl __muldf3
	mr 25,4
	mr 24,3
	b .L670
.L669:
	cmpwi 0,27,0
	beq 0,.L672
	mr 5,28
	mr 6,29
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	b .L671
.L672:
	mr 3,28
	mr 4,29
.L671:
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
	srwi 27,28,31
	lis 30,0x3f80
.L676:
	andi. 9,28,0x1
	beq 0,.L674
	mr 4,29
	mr 3,30
	bl __mulsf3
	mr 30,3
.L674:
	srawi 28,28,1
	addze. 28,28
	beq 0,.L675
	mr 4,29
	mr 3,29
	bl __mulsf3
	mr 29,3
	b .L676
.L675:
	cmpwi 0,27,0
	beq 0,.L678
	mr 4,30
	lis 3,0x3f80
	bl __divsf3
	b .L677
.L678:
	mr 3,30
.L677:
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
	mr 9,4
	mr 8,3
	mr 11,6
	mr 10,5
	cmplw 0,10,8
	bgt 0,.L681
	blt 0,.L682
	cmplw 0,11,9
	bgt 0,.L683
	blt 0,.L684
	li 3,1
	b .L680
.L681:
	li 3,0
	b .L680
.L682:
	li 3,2
	b .L680
.L683:
	li 3,0
	b .L680
.L684:
	li 3,2
.L680:
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
