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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 11,0
	li 10,0
	mr 11,3
	mr 10,4
	mr 3,10
	mr 4,11
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE0:
	.size	make_ti,.-make_ti
	.align 2
	.globl make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 11,0
	li 10,0
	mr 11,3
	mr 10,4
	mr 3,10
	mr 4,11
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE1:
	.size	make_tu,.-make_tu
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,3,4
	ble 0,.L4
	add 9,4,5
	add 5,3,5
	b .L5
.L6:
	lbzu 10,-1(9)
	addi 5,5,-1
	stb 10,0(5)
.L5:
	cmpld 0,9,4
	bne 0,.L6
	b .L7
.L4:
	cmpld 0,3,4
	beq 0,.L7
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	b .L8
.L9:
	addi 4,4,1
	lbz 10,0(4)
	addi 9,9,1
	stb 10,0(9)
.L8:
	cmpld 0,9,5
	bne 0,.L9
.L7:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE2:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 5,5,0,0xff
	addi 4,4,-1
	b .L11
.L13:
	addi 6,6,-1
	addi 3,3,1
.L11:
	cmpdi 0,6,0
	beq 0,.L12
	addi 4,4,1
	lbz 9,0(4)
	stb 9,0(3)
	rlwinm 9,9,0,0xff
	cmpw 0,9,5
	bne 0,.L13
.L12:
	cmpdi 0,6,0
	beq 0,.L15
	addi 3,3,1
	b .L14
.L15:
	li 3,0
.L14:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE3:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	b .L17
.L19:
	addi 3,3,1
	addi 5,5,-1
.L17:
	cmpdi 0,5,0
	beq 0,.L18
	lbz 9,0(3)
	cmpw 0,9,4
	bne 0,.L19
.L18:
	cmpdi 0,5,0
	bne 0,.L20
	li 3,0
.L20:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE4:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L23
.L25:
	addi 5,5,-1
	addi 3,3,1
	addi 4,4,1
.L23:
	cmpdi 0,5,0
	beq 0,.L24
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	beq 0,.L25
.L24:
	cmpdi 0,5,0
	beq 0,.L27
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L26
.L27:
	li 3,0
.L26:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE5:
	.size	memcmp,.-memcmp
	.align 2
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	b .L29
.L30:
	addi 4,4,1
	lbz 10,0(4)
	addi 9,9,1
	stb 10,0(9)
.L29:
	cmpld 0,9,5
	bne 0,.L30
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE6:
	.size	memcpy,.-memcpy
	.align 2
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	addi 5,5,-1
	b .L32
.L34:
	lbzx 10,3,5
	addi 9,5,-1
	cmpw 0,10,4
	bne 0,.L35
	add 3,3,5
	b .L33
.L35:
	mr 5,9
.L32:
	cmpdi 0,5,-1
	bne 0,.L34
	li 3,0
.L33:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE7:
	.size	memrchr,.-memrchr
	.align 2
	.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	b .L37
.L38:
	addi 9,9,1
	stb 4,0(9)
.L37:
	cmpld 0,9,5
	bne 0,.L38
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE8:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	b .L40
.L41:
	addi 3,3,1
.L40:
	addi 4,4,1
	lbz 9,0(4)
	stb 9,0(3)
	andi. 9,9,0xff
	bne 0,.L41
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 4,4,0,0xff
	b .L43
.L45:
	addi 3,3,1
.L43:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L44
	cmpw 0,9,4
	bne 0,.L45
.L44:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
.L48:
	lbz 9,0(3)
	cmpw 0,9,4
	beq 0,.L47
	addi 3,3,1
	lbz 9,-1(3)
	cmpwi 0,9,0
	bne 0,.L48
	li 3,0
.L47:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE11:
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L51
.L53:
	addi 3,3,1
	addi 4,4,1
.L51:
	lbz 10,0(3)
	lbz 9,0(4)
	cmpw 0,10,9
	bne 0,.L52
	mr 9,10
	cmpwi 0,9,0
	bne 0,.L53
.L52:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE12:
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L55
.L56:
	addi 9,9,1
.L55:
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L56
	subf 3,3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE13:
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,5,0
	beq 0,.L62
	addi 5,5,-1
	add 5,3,5
	b .L59
.L61:
	addi 3,3,1
	addi 4,4,1
.L59:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L60
	lbz 9,0(4)
	cmpwi 0,9,0
	beq 0,.L60
	cmpld 0,3,5
	beq 0,.L60
	lbz 10,0(3)
	cmpw 0,10,9
	beq 0,.L61
.L60:
	lbz 9,0(3)
	lbz 3,0(4)
	subf 3,3,9
	b .L58
.L62:
	li 3,0
.L58:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE14:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L64
.L65:
	lbz 10,1(9)
	stb 10,0(4)
	lbz 10,0(9)
	stb 10,1(4)
	addi 4,4,2
	addi 9,9,2
.L64:
	add 10,3,5
	subf 10,9,10
	cmpdi 0,10,1
	bgt 0,.L65
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE15:
	.size	swab,.-swab
	.align 2
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	ori 3,3,0x20
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE16:
	.size	isalpha,.-isalpha
	.align 2
	.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 3,3,0,32
	subfic 3,3,127
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE17:
	.size	isascii,.-isascii
	.align 2
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,32
	beq 0,.L70
	cmpwi 0,3,9
	bne 0,.L71
	li 3,1
	b .L69
.L70:
	li 3,1
	b .L69
.L71:
	li 3,0
.L69:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE18:
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,31
	ble 0,.L74
	cmpwi 0,3,127
	bne 0,.L75
	li 3,1
	b .L73
.L74:
	li 3,1
	b .L73
.L75:
	li 3,0
.L73:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-iscntrl
	.align 2
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE20:
	.size	isdigit,.-isdigit
	.align 2
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-33
	rldicl 3,3,0,32
	subfic 3,3,93
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE21:
	.size	isgraph,.-isgraph
	.align 2
	.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-97
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE22:
	.size	islower,.-islower
	.align 2
	.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-32
	rldicl 3,3,0,32
	subfic 3,3,94
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE23:
	.size	isprint,.-isprint
	.align 2
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,3,32
	beq 0,.L82
	addi 3,3,-9
	cmplwi 0,3,4
	bgt 0,.L83
	li 3,1
	b .L81
.L82:
	li 3,1
	b .L81
.L83:
	li 3,0
.L81:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE24:
	.size	isspace,.-isspace
	.align 2
	.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-65
	rldicl 3,3,0,32
	subfic 3,3,25
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE25:
	.size	isupper,.-isupper
	.align 2
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,31
	ble 0,.L87
	addi 9,3,-127
	cmplwi 0,9,32
	ble 0,.L88
	addi 9,3,-8232
	cmplwi 0,9,1
	ble 0,.L89
	addis 3,3,0xffff
	addi 3,3,7
	cmplwi 0,3,2
	bgt 0,.L90
	li 3,1
	b .L86
.L87:
	li 3,1
	b .L86
.L88:
	li 3,1
	b .L86
.L89:
	li 3,1
	b .L86
.L90:
	li 3,0
.L86:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE26:
	.size	iswcntrl,.-iswcntrl
	.align 2
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-48
	rldicl 3,3,0,32
	subfic 3,3,9
	srdi 3,3,63
	xori 3,3,0x1
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE27:
	.size	iswdigit,.-iswdigit
	.align 2
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,254
	bgt 0,.L93
	addi 3,3,1
	rldicl 3,3,0,57
	subfic 3,3,32
	srdi 3,3,63
	b .L94
.L93:
	cmplwi 0,3,8231
	ble 0,.L95
	addi 9,3,-8234
	cmplwi 0,9,47061
	ble 0,.L96
	addis 9,3,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	ble 0,.L97
	addis 9,3,0xffff
	addi 9,9,4
	lis 10,0x10
	ori 10,10,0x3
	cmplw 0,9,10
	bgt 0,.L98
	rlwinm 3,3,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,3,9
	beq 0,.L99
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
	b .L94
.L99:
	li 3,0
.L94:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE28:
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-48
	cmplwi 0,9,9
	ble 0,.L102
	ori 3,3,0x20
	addi 3,3,-97
	cmplwi 0,3,5
	bgt 0,.L103
	li 3,1
	b .L101
.L102:
	li 3,1
	b .L101
.L103:
	li 3,0
.L101:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-iswxdigit
	.align 2
	.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 3,3,0,57
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L106
	fcmpu 0,2,2
	bun 0,.L109
	fcmpu 0,1,2
	bng 0,.L112
	fsub 1,1,2
	b .L106
.L109:
	fmr 1,2
	b .L106
.L112:
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
.L106:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L114
	fcmpu 0,2,2
	bun 0,.L117
	fcmpu 0,1,2
	bng 0,.L120
	fsubs 1,1,2
	b .L114
.L117:
	fmr 1,2
	b .L114
.L120:
	addis 9,2,.LC1@toc@ha
	lfs 1,.LC1@toc@l(9)
.L114:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE32:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L125
	fcmpu 0,2,2
	bun 0,.L122
	stfd 1,32(31)
	ld 10,32(31)
	srdi 10,10,63
	stfd 2,32(31)
	ld 9,32(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L123
	stfd 1,32(31)
	ld 9,32(31)
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L122
	fmr 1,2
	b .L122
.L123:
	fcmpu 0,1,2
	bnl 0,.L122
	fmr 1,2
	b .L122
.L125:
	fmr 1,2
.L122:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE33:
	.size	fmax,.-fmax
	.align 2
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	stfs 2,36(31)
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L135
	fmr 0,2
	fcmpu 0,0,0
	bun 0,.L136
	lwz 10,32(31)
	rlwinm 10,10,0,0,0
	lwz 9,36(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L133
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L137
	fmr 1,0
	b .L132
.L133:
	lfs 0,32(31)
	lfs 12,36(31)
	fcmpu 0,0,12
	bnl 0,.L140
	fmr 1,12
	b .L132
.L135:
	lfs 1,36(31)
	b .L132
.L136:
	lfs 1,32(31)
	b .L132
.L137:
	lfs 1,32(31)
	b .L132
.L140:
	lfs 1,32(31)
.L132:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fmr 0,1
	fmr 1,2
	fmr 13,4
	fmr 12,3
	fmr 11,0
	fcmpu 0,11,11
	bun 0,.L145
	fmr 11,12
	fcmpu 0,11,11
	bun 0,.L142
	fmr 11,0
	stfd 11,32(31)
	ld 10,32(31)
	srdi 10,10,63
	fmr 11,12
	stfd 11,32(31)
	ld 9,32(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L143
	fmr 11,0
	stfd 11,32(31)
	ld 9,32(31)
	cmpdi 0,9,0
	bge 0,.L142
	fmr 0,12
	fmr 1,13
	b .L142
.L143:
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	bnl 0,.L142
	fmr 0,12
	fmr 1,13
	b .L142
.L145:
	fmr 0,12
	fmr 1,13
.L142:
	fmr 2,1
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L155
	fcmpu 0,2,2
	bun 0,.L152
	stfd 1,32(31)
	ld 10,32(31)
	srdi 10,10,63
	stfd 2,32(31)
	ld 9,32(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L153
	stfd 1,32(31)
	ld 9,32(31)
	mr 9,10
	cmpwi 0,9,0
	beq 0,.L157
	b .L152
.L153:
	fcmpu 0,1,2
	bnl 0,.L160
	b .L152
.L155:
	fmr 1,2
	b .L152
.L157:
	fmr 1,2
	b .L152
.L160:
	fmr 1,2
.L152:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE36:
	.size	fmin,.-fmin
	.align 2
	.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	stfs 2,36(31)
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L165
	fmr 0,2
	fcmpu 0,0,0
	bun 0,.L166
	lwz 10,32(31)
	rlwinm 10,10,0,0,0
	lwz 9,36(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L163
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L167
	b .L162
.L163:
	lfs 0,32(31)
	lfs 12,36(31)
	fcmpu 0,0,12
	bnl 0,.L170
	fmr 1,0
	b .L162
.L165:
	lfs 1,36(31)
	b .L162
.L166:
	lfs 1,32(31)
	b .L162
.L167:
	lfs 1,36(31)
	b .L162
.L170:
	lfs 1,36(31)
.L162:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE37:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fmr 13,2
	fmr 12,1
	fmr 1,3
	fmr 2,4
	fmr 0,12
	fcmpu 0,0,0
	bun 0,.L172
	fmr 0,1
	fcmpu 0,0,0
	bun 0,.L176
	fmr 0,12
	stfd 0,32(31)
	ld 10,32(31)
	srdi 10,10,63
	fmr 0,1
	stfd 0,32(31)
	ld 9,32(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L173
	fmr 0,12
	stfd 0,32(31)
	ld 9,32(31)
	cmpdi 0,9,0
	bge 0,.L172
	fmr 1,12
	fmr 2,13
	b .L172
.L173:
	fcmpu 0,12,1
	bne 0,$+8
	fcmpu 0,13,2
	bnl 0,.L172
	fmr 1,12
	fmr 2,13
	b .L172
.L176:
	fmr 1,12
	fmr 2,13
.L172:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE38:
	.size	fminl,.-fminl
	.section	.rodata
	.align 3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	b .L182
.L183:
	rldicl 10,3,0,58
	addis 8,2,digits@toc@ha
	addi 8,8,digits@toc@l
	lbzx 10,8,10
	stb 10,0(9)
	addi 9,9,1
	srwi 3,3,6
.L182:
	cmpwi 0,3,0
	bne 0,.L183
	li 10,0
	stb 10,0(9)
	addis 3,2,s.0@toc@ha
	addi 3,3,s.0@toc@l
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE39:
	.size	l64a,.-l64a
	.lcomm	seed,8,8
	.type	seed, @object
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 3,3,-1
	rldicl 3,3,0,32
	addis 9,2,seed@toc@ha
	std 3,seed@toc@l(9)
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 10,2,seed@toc@ha
	addi 10,10,seed@toc@l
	ld 3,0(10)
	lis 9,0x4c95
	ori 9,9,0x7f2d
	lis 8,0x5851
	ori 8,8,0xf42d
	rldimi 9,8,32,0
	mulld 3,3,9
	addi 3,3,1
	std 3,0(10)
	srdi 3,3,33
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE41:
	.size	rand,.-rand
	.align 2
	.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,4,0
	bne 0,.L187
	li 9,0
	std 9,8(3)
	std 9,0(3)
	b .L186
.L187:
	ld 9,0(4)
	std 9,0(3)
	std 4,8(3)
	std 3,0(4)
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L186
	std 3,8(9)
.L186:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE42:
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	ld 9,0(3)
	cmpdi 0,9,0
	beq 0,.L190
	ld 10,8(3)
	std 10,8(9)
.L190:
	ld 9,8(3)
	cmpdi 0,9,0
	beq 0,.L189
	ld 10,0(3)
	std 10,0(9)
.L189:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 26,3
	mr 30,4
	mr 25,5
	mr 29,6
	mr 24,7
	ld 27,0(25)
	mr 23,30
	li 28,0
	b .L193
.L196:
	mr 4,23
	mr 3,26
	std 2,24(1)
	mr 12,24
	mtctr 24
	bctrl
	ld 2,24(1)
	add 23,23,29
	cmpwi 0,3,0
	bne 0,.L194
	mulld 28,28,29
	add 3,30,28
	b .L195
.L194:
	addi 28,28,1
.L193:
	cmpld 0,28,27
	bne 0,.L196
	addi 9,27,1
	std 9,0(25)
	mulld 27,29,27
	add 3,30,27
	mr 5,29
	mr 4,26
	bl memcpy
	nop
.L195:
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
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
	mflr 0
	std 0,16(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,3
	mr 30,4
	mr 28,6
	mr 27,7
	ld 24,0(5)
	mr 26,30
	li 29,0
	b .L198
.L201:
	mr 4,26
	mr 3,25
	std 2,24(1)
	mr 12,27
	mtctr 27
	bctrl
	ld 2,24(1)
	add 26,26,28
	cmpwi 0,3,0
	bne 0,.L199
	mulld 29,29,28
	add 3,30,29
	b .L200
.L199:
	addi 29,29,1
.L198:
	cmpld 0,29,24
	bne 0,.L201
	li 3,0
.L200:
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,8,0,0
	.cfi_endproc
.LFE45:
	.size	lfind,.-lfind
	.align 2
	.globl abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srawi 9,3,31
	xor 3,9,3
	subf 3,9,3
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L204
.L205:
	addi 30,30,1
.L204:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L205
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L211
	cmpwi 0,9,45
	bne 0,.L212
	li 9,1
	b .L206
.L211:
	li 9,0
.L206:
	addi 30,30,1
	b .L207
.L212:
	li 9,0
.L207:
	addi 30,30,-1
	li 3,0
	b .L208
.L209:
	mulli 3,3,10
	lbz 10,0(30)
	addi 10,10,-48
	subf 3,10,3
.L208:
	addi 30,30,1
	lbz 10,0(30)
	addi 10,10,-48
	cmplwi 0,10,9
	ble 0,.L209
	cmpwi 0,9,0
	bne 0,.L210
	neg 3,3
.L210:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L215
.L216:
	addi 30,30,1
.L215:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L216
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L222
	cmpwi 0,9,45
	bne 0,.L223
	li 10,1
	b .L217
.L222:
	li 10,0
.L217:
	addi 30,30,1
	b .L218
.L223:
	li 10,0
.L218:
	addi 30,30,-1
	li 3,0
	b .L219
.L220:
	mulli 3,3,10
	lbz 9,0(30)
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
.L219:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L220
	cmpwi 0,10,0
	bne 0,.L221
	neg 3,3
.L221:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	b .L226
.L227:
	addi 30,30,1
.L226:
	lbz 3,0(30)
	bl isspace
	cmpwi 0,3,0
	bne 0,.L227
	lbz 9,0(30)
	cmpwi 0,9,43
	beq 0,.L233
	cmpwi 0,9,45
	bne 0,.L234
	li 10,1
	b .L228
.L233:
	li 10,0
.L228:
	addi 30,30,1
	b .L229
.L234:
	li 10,0
.L229:
	addi 30,30,-1
	li 3,0
	b .L230
.L231:
	mulli 3,3,10
	lbz 9,0(30)
	addi 9,9,-48
	extsw 9,9
	subf 3,9,3
.L230:
	addi 30,30,1
	lbz 9,0(30)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L231
	cmpwi 0,10,0
	bne 0,.L232
	neg 3,3
.L232:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
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
	mflr 0
	std 0,16(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 25,3
	mr 26,4
	mr 30,5
	mr 27,6
	mr 28,7
	b .L237
.L241:
	srdi 29,30,1
	mulld 29,29,27
	add 29,26,29
	mr 4,29
	mr 3,25
	std 2,24(1)
	mr 12,28
	mtctr 28
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	bge 0,.L238
	srdi 30,30,1
	b .L237
.L238:
	cmpwi 0,3,0
	ble 0,.L242
	add 26,29,27
	srdi 9,30,1
	addi 30,30,-1
	subf 30,9,30
.L237:
	cmpdi 0,30,0
	bne 0,.L241
	li 3,0
	b .L240
.L242:
	mr 3,29
.L240:
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
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
	mflr 0
	std 0,16(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 24,3
	mr 26,6
	mr 27,7
	mr 25,8
	mr 29,5
	mr 28,4
	b .L244
.L247:
	srawi 30,29,1
	mulld 30,30,26
	add 30,28,30
	mr 5,25
	mr 4,30
	mr 3,24
	std 2,24(1)
	mr 12,27
	mtctr 27
	bctrl
	ld 2,24(1)
	cmpwi 0,3,0
	beq 0,.L248
	ble 0,.L246
	add 28,30,26
	addi 29,29,-1
.L246:
	srawi 29,29,1
.L244:
	cmpwi 0,29,0
	bne 0,.L247
	li 3,0
	b .L245
.L248:
	mr 3,30
.L245:
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,8,0,0
	.cfi_endproc
.LFE51:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,4
	divw 10,3,9
	mr 9,10
	mullw 9,9,4
	subf 9,9,3
	rldicl 3,10,0,32
	sldi 9,9,32
	or 3,3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE52:
	.size	div,.-div
	.align 2
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE53:
	.size	imaxabs,.-imaxabs
	.align 2
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divd 9,3,4
	mulld 4,9,4
	li 11,0
	li 10,0
	mr 10,9
	subf 11,4,3
	mr 3,10
	mr 4,11
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-imaxdiv
	.align 2
	.globl labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE55:
	.size	labs,.-labs
	.align 2
	.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divd 9,3,4
	mulld 4,9,4
	li 11,0
	li 10,0
	mr 10,9
	subf 11,4,3
	mr 3,10
	mr 4,11
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE56:
	.size	ldiv,.-ldiv
	.align 2
	.globl llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,63
	xor 3,9,3
	subf 3,9,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE57:
	.size	llabs,.-llabs
	.align 2
	.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divd 9,3,4
	mulld 4,9,4
	li 11,0
	li 10,0
	mr 10,9
	subf 11,4,3
	mr 3,10
	mr 4,11
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE58:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L257
.L259:
	addi 3,3,4
.L257:
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L258
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L259
.L258:
	lwz 9,0(3)
	cmpwi 0,9,0
	bne 0,.L260
	li 3,0
.L260:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE59:
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L263
.L265:
	addi 3,3,4
	addi 4,4,4
.L263:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L264
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L264
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L265
.L264:
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L267
	lwa 3,0(3)
	lwa 9,0(4)
	subf 3,3,9
	srdi 3,3,63
	b .L266
.L267:
	li 3,-1
.L266:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-4
	addi 9,3,-4
.L269:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
	cmpwi 0,10,0
	bne 0,.L269
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	b .L271
.L272:
	addi 9,9,4
.L271:
	lwz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L272
	subf 3,3,9
	sradi 3,3,2
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE62:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L274
.L276:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L274:
	cmpdi 0,5,0
	beq 0,.L275
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	bne 0,.L275
	lwz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L275
	lwz 9,0(4)
	cmpwi 0,9,0
	bne 0,.L276
.L275:
	cmpdi 0,5,0
	beq 0,.L278
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L279
	lwa 3,0(3)
	lwa 9,0(4)
	subf 3,3,9
	srdi 3,3,63
	b .L277
.L278:
	li 3,0
	b .L277
.L279:
	li 3,-1
.L277:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L281
.L283:
	addi 5,5,-1
	addi 3,3,4
.L281:
	cmpdi 0,5,0
	beq 0,.L282
	lwz 9,0(3)
	cmpw 0,9,4
	bne 0,.L283
.L282:
	cmpdi 0,5,0
	bne 0,.L284
	li 3,0
.L284:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L287
.L289:
	addi 5,5,-1
	addi 3,3,4
	addi 4,4,4
.L287:
	cmpdi 0,5,0
	beq 0,.L288
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	beq 0,.L289
.L288:
	cmpdi 0,5,0
	beq 0,.L291
	lwz 10,0(3)
	lwz 9,0(4)
	cmpw 0,10,9
	blt 0,.L292
	lwa 3,0(3)
	lwa 9,0(4)
	subf 3,3,9
	srdi 3,3,63
	b .L290
.L291:
	li 3,0
	b .L290
.L292:
	li 3,-1
.L290:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-4
	addi 9,3,-4
	b .L294
.L295:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
.L294:
	addi 5,5,-1
	cmpdi 0,5,-1
	bne 0,.L295
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,3,4
	beq 0,.L297
	subf 9,4,3
	sldi 10,5,2
	cmpld 0,9,10
	blt 0,.L298
	addi 4,4,-4
	addi 9,3,-4
	b .L299
.L298:
	sldi 5,5,2
	add 4,4,5
	add 5,3,5
	mr 9,3
	b .L300
.L301:
	addi 4,4,-4
	lwz 10,0(4)
	addi 5,5,-4
	stw 10,0(5)
.L300:
	cmpld 0,5,9
	bne 0,.L301
	b .L297
.L302:
	addi 4,4,4
	lwz 10,0(4)
	addi 9,9,4
	stw 10,0(9)
.L299:
	addi 5,5,-1
	cmpdi 0,5,-1
	bne 0,.L302
.L297:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-wmemmove
	.align 2
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,3,-4
	b .L304
.L305:
	addi 9,9,4
	stw 4,0(9)
.L304:
	addi 5,5,-1
	cmpdi 0,5,-1
	bne 0,.L305
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE68:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpld 0,3,4
	bge 0,.L307
	add 9,3,5
	add 4,4,5
	b .L308
.L309:
	lbzu 10,-1(9)
	addi 4,4,-1
	stb 10,0(4)
.L308:
	cmpld 0,9,3
	bne 0,.L309
	b .L306
.L307:
	cmpld 0,3,4
	beq 0,.L306
	addi 3,3,-1
	addi 9,4,-1
	addi 5,5,-1
	add 5,5,4
	b .L311
.L312:
	addi 3,3,1
	lbz 10,0(3)
	addi 9,9,1
	stb 10,0(9)
.L311:
	cmpld 0,9,5
	bne 0,.L312
.L306:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE69:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rotld 3,3,4
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE70:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 4,4,64
	rotld 3,3,4
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE71:
	.size	rotr64,.-rotr64
	.align 2
	.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rotlw 3,3,4
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE72:
	.size	rotl32,.-rotl32
	.align 2
	.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	subfic 4,4,32
	rotlw 3,3,4
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE73:
	.size	rotr32,.-rotr32
	.align 2
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sld 9,3,4
	subfic 4,4,64
	srd 3,3,4
	or 3,3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE74:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srd 9,3,4
	subfic 4,4,64
	sld 3,3,4
	or 3,3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE75:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	slw 9,3,4
	subfic 4,4,16
	srw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xffff
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE76:
	.size	rotl16,.-rotl16
	.align 2
	.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srw 9,3,4
	subfic 4,4,16
	slw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xffff
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE77:
	.size	rotr16,.-rotr16
	.align 2
	.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	slw 9,3,4
	subfic 4,4,8
	srw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xff
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE78:
	.size	rotl8,.-rotl8
	.align 2
	.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srw 9,3,4
	subfic 4,4,8
	slw 3,3,4
	or 3,3,9
	rlwinm 3,3,0,0xff
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE79:
	.size	rotr8,.-rotr8
	.align 2
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 9,3,56,48
	rlwinm 3,3,8,16,23
	or 3,9,3
	rlwinm 3,3,0,0xffff
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE80:
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rldicl 10,3,40,32
	rlwinm 9,3,24,16,23
	rlwinm 8,3,8,8,15
	slwi 3,3,24
	or 3,3,8
	or 3,3,10
	or 3,3,9
	rldicl 3,3,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE81:
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 10,3,56
	rldicr 9,3,8,7
	srdi 9,9,48
	or 9,9,10
	rldicr 10,3,16,7
	srdi 10,10,40
	or 9,9,10
	rldicr 10,3,24,7
	srdi 10,10,32
	or 9,9,10
	rlwinm 10,3,0,0,7
	sldi 10,10,8
	or 9,9,10
	rlwinm 10,3,0,8,15
	sldi 10,10,24
	or 9,9,10
	rlwinm 10,3,0,16,23
	sldi 10,10,40
	or 9,9,10
	sldi 3,3,56
	or 3,9,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE82:
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L327
.L330:
	srw 10,3,9
	andi. 10,10,0x1
	beq 0,.L328
	addi 9,9,1
	b .L329
.L328:
	addi 9,9,1
.L327:
	cmplwi 0,9,32
	bne 0,.L330
	li 9,0
.L329:
	extsw 3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE83:
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr. 9,3
	beq 0,.L335
	li 3,1
	b .L333
.L334:
	srawi 9,9,1
	addi 3,3,1
.L333:
	andi. 10,9,0x1
	beq 0,.L334
	b .L332
.L335:
	li 3,0
.L332:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC6@toc@ha
	lfs 0,.LC6@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L339
	addis 9,2,.LC7@toc@ha
	lfs 0,.LC7@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L342
	li 3,1
	b .L337
.L339:
	li 3,1
	b .L337
.L342:
	li 3,0
.L337:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC10@toc@ha
	lfd 0,.LC10@toc@l(9)
	fcmpu 0,1,0
	blt 0,.L346
	addis 9,2,.LC11@toc@ha
	lfd 0,.LC11@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L349
	li 3,1
	b .L344
.L346:
	li 3,1
	b .L344
.L349:
	li 3,0
.L344:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	blt 0,.L353
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 13,8(9)
	fcmpu 0,1,12
	bne 0,$+8
	fcmpu 0,2,13
	bng 0,.L356
	li 3,1
	b .L351
.L353:
	li 3,1
	b .L351
.L356:
	li 3,0
.L351:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 4,32(31)
	lfd 0,32(31)
	fcfid 0,0
	addis 9,2,.LC0@toc@ha
	lfd 1,.LC0@toc@l(9)
	stfd 0,0(3)
	stfd 1,8(3)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L359
	fadds 0,1,1
	fcmpu 0,1,0
	beq 0,.L359
	cmpwi 0,4,0
	bge 0,.L363
	addis 9,2,.LC19@toc@ha
	lfs 0,.LC19@toc@l(9)
	b .L362
.L363:
	addis 9,2,.LC20@toc@ha
	lfs 0,.LC20@toc@l(9)
.L362:
	andi. 9,4,0x1
	beq 0,.L361
	fmuls 1,1,0
.L361:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L359
	fmuls 0,0,0
	b .L362
.L359:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,1
	bun 0,.L365
	fadd 0,1,1
	fcmpu 0,1,0
	beq 0,.L365
	cmpwi 0,4,0
	bge 0,.L369
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	b .L368
.L369:
	addis 9,2,.LC24@toc@ha
	lfd 0,.LC24@toc@l(9)
.L368:
	andi. 9,4,0x1
	beq 0,.L367
	fmul 1,1,0
.L367:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L365
	fmul 0,0,0
	b .L368
.L365:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mflr 0
	std 0,16(1)
	stfd 28,-32(1)
	stfd 29,-24(1)
	stfd 30,-16(1)
	stfd 31,-8(1)
	std 30,-48(1)
	std 31,-40(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 30, -48
	.cfi_offset 31, -40
	mr 31,1
	.cfi_def_cfa_register 31
	fmr 31,2
	fmr 30,1
	mr 30,5
	fmr 0,30
	fcmpu 0,0,0
	bun 0,.L371
	fmr 3,30
	fmr 4,31
	fmr 1,30
	fmr 2,31
	bl __gcc_qadd
	nop
	fcmpu 0,30,1
	bne 0,$+8
	fcmpu 0,31,2
	beq 0,.L371
	cmpwi 0,30,0
	bge 0,.L375
	addis 9,2,.LC27@toc@ha
	addi 9,9,.LC27@toc@l
	lfd 28,0(9)
	lfd 29,8(9)
	b .L374
.L375:
	addis 9,2,.LC28@toc@ha
	addi 9,9,.LC28@toc@l
	lfd 28,0(9)
	lfd 29,8(9)
.L374:
	andi. 9,30,0x1
	beq 0,.L373
	fmr 3,28
	fmr 4,29
	fmr 1,30
	fmr 2,31
	bl __gcc_qmul
	nop
	fmr 31,2
	fmr 30,1
.L373:
	srawi 30,30,1
	addze 30,30
	extsw. 30,30
	beq 0,.L371
	fmr 3,28
	fmr 4,29
	fmr 1,28
	fmr 2,29
	bl __gcc_qmul
	nop
	fmr 29,2
	fmr 28,1
	b .L374
.L371:
	fmr 1,30
	fmr 2,31
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-48(1)
	ld 31,-40(1)
	lfd 28,-32(1)
	lfd 29,-24(1)
	lfd 30,-16(1)
	lfd 31,-8(1)
	blr
	.long 0
	.byte 0,0,2,1,132,2,0,0
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 4,4,-1
	addi 9,3,-1
	addi 5,5,-1
	add 5,5,3
	b .L377
.L378:
	addi 4,4,1
	lbz 8,0(4)
	addi 9,9,1
	lbz 10,0(9)
	xor 10,10,8
	stb 10,0(9)
.L377:
	cmpld 0,9,5
	bne 0,.L378
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mr 31,1
	.cfi_def_cfa_register 31
	mr 28,3
	mr 30,4
	mr 29,5
	bl strlen
	add 3,28,3
	addi 30,30,-1
	b .L380
.L382:
	addi 3,3,1
	addi 29,29,-1
.L380:
	cmpdi 0,29,0
	beq 0,.L381
	addi 30,30,1
	lbz 10,0(30)
	stb 10,0(3)
	andi. 10,10,0xff
	bne 0,.L382
.L381:
	cmpdi 0,29,0
	bne 0,.L383
	li 10,0
	stb 10,0(3)
.L383:
	mr 3,28
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,4,0,0
	.cfi_endproc
.LFE93:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	b .L385
.L387:
	addi 3,3,1
.L385:
	cmpld 0,3,4
	beq 0,.L386
	lbzx 10,9,3
	cmpwi 0,10,0
	bne 0,.L387
.L386:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE94:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	b .L389
.L391:
	lbz 8,0(9)
	lbz 10,0(3)
	cmpw 0,8,10
	beq 0,.L390
.L392:
	addi 9,9,1
	lbz 10,0(9)
	cmpwi 0,10,0
	bne 0,.L391
	addi 3,3,1
.L389:
	lbz 9,0(3)
	cmpwi 0,9,0
	beq 0,.L394
	addi 9,4,-1
	b .L392
.L394:
	li 3,0
.L390:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
.L397:
	lbz 10,0(9)
	cmpw 0,10,4
	bne 0,.L396
	mr 3,9
.L396:
	addi 9,9,1
	lbz 10,-1(9)
	cmpwi 0,10,0
	bne 0,.L397
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 29,4
	mr 3,29
	bl strlen
	mr 28,3
	cmpdi 0,28,0
	beq 0,.L403
	lbz 27,0(29)
	b .L401
.L402:
	mr 5,28
	mr 4,29
	mr 3,30
	bl strncmp
	cmpwi 0,3,0
	beq 0,.L404
	addi 30,30,1
.L401:
	extsw 4,27
	mr 3,30
	bl strchr
	mr. 30,3
	bne 0,.L402
	b .L400
.L403:
	mr 3,30
	b .L400
.L404:
	mr 3,30
.L400:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,5,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L406
	fcmpu 0,2,0
	bgt 0,.L408
.L406:
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bng 0,.L409
	fcmpu 0,2,0
	bnl 0,.L409
.L408:
	fneg 1,1
.L409:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	mflr 0
	std 0,16(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,3
	mr 27,5
	mr 29,6
	subf 28,29,4
	add 28,30,28
	cmpdi 0,29,0
	beq 0,.L423
	subfc 4,29,4
	subfe 9,9,9
	neg 9,9
	andi. 9,9,0xff
	bne 0,.L424
	b .L420
.L422:
	lbz 10,0(30)
	lbz 9,0(27)
	cmpw 0,10,9
	bne 0,.L421
	addi 3,30,1
	addi 5,29,-1
	addi 4,27,1
	bl memcmp
	cmpwi 0,3,0
	beq 0,.L425
.L421:
	addi 30,30,1
.L420:
	cmpld 0,30,28
	ble 0,.L422
	li 3,0
	b .L419
.L423:
	mr 3,30
	b .L419
.L424:
	li 3,0
	b .L419
.L425:
	mr 3,30
.L419:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,5
	bl memcpy
	nop
	add 3,3,30
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L444
	fneg 1,1
	li 10,1
	b .L428
.L444:
	li 10,0
.L428:
	addis 9,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(9)
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L439
	b .L445
.L432:
	addi 9,9,1
	addis 8,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(8)
	fmul 1,1,0
	b .L430
.L439:
	li 9,0
.L430:
	addis 8,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(8)
	fcmpu 0,1,0
	cror 2,1,2
	beq 0,.L432
	b .L433
.L445:
	addis 9,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(9)
	fcmpu 0,1,0
	bnl 0,.L446
	addis 9,2,.LC0@toc@ha
	lfd 0,.LC0@toc@l(9)
	fcmpu 0,1,0
	bne 0,.L441
	li 9,0
	b .L433
.L436:
	addi 9,9,-1
	fadd 1,1,1
	b .L435
.L441:
	li 9,0
.L435:
	addis 8,2,.LC23@toc@ha
	lfd 0,.LC23@toc@l(8)
	fcmpu 0,1,0
	blt 0,.L436
	b .L433
.L446:
	li 9,0
.L433:
	stw 9,0(4)
	cmpwi 0,10,0
	beq 0,.L437
	fneg 1,1
.L437:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE101:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	li 3,0
	b .L448
.L450:
	andi. 10,9,0x1
	beq 0,.L449
	add 3,3,4
.L449:
	sldi 4,4,1
	srdi 9,9,1
.L448:
	cmpdi 0,9,0
	bne 0,.L450
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L452
.L454:
	rldic 4,4,1,32
	slwi 9,9,1
.L452:
	cmplw 0,4,3
	bge 0,.L459
	cmpwi 0,9,0
	beq 0,.L460
	cmpwi 0,4,0
	bge 0,.L454
	li 10,0
	b .L456
.L457:
	cmplw 0,3,4
	blt 0,.L455
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
.L455:
	srwi 9,9,1
	srdi 4,4,1
	b .L456
.L459:
	li 10,0
	b .L456
.L460:
	li 10,0
.L456:
	cmpwi 0,9,0
	bne 0,.L457
	cmpdi 0,5,0
	bne 0,.L458
	mr 3,10
.L458:
	rldicl 3,3,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	beq 0,.L464
	slwi 3,3,8
	cntlzw 3,3
	addi 3,3,-1
	b .L463
.L464:
	li 3,7
.L463:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	bge 0,.L466
	not 3,3
.L466:
	cmpdi 0,3,0
	beq 0,.L468
	cntlzd 3,3
	addi 3,3,-1
	b .L467
.L468:
	li 3,63
.L467:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L470
.L472:
	andi. 10,3,0x1
	beq 0,.L471
	add 9,9,4
.L471:
	srdi 3,3,1
	rldic 4,4,1,32
.L470:
	cmpdi 0,3,0
	bne 0,.L472
	rldicl 3,9,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 10,5,3
	rlwinm 9,5,0,0,28
	cmpld 0,3,4
	blt 0,.L474
	add 8,4,5
	cmpld 0,8,3
	bge 0,.L475
.L474:
	addi 8,4,-8
	addi 7,3,-8
	rldic 10,10,3,32
	add 10,8,10
	b .L476
.L477:
	addi 8,8,8
	ld 6,0(8)
	addi 7,7,8
	std 6,0(7)
.L476:
	cmpld 0,8,10
	bne 0,.L477
	rldicl 9,9,0,32
	b .L478
.L479:
	lbzx 10,4,9
	stbx 10,3,9
	addi 9,9,1
.L478:
	cmplw 0,9,5
	blt 0,.L479
	b .L473
.L481:
	lbzx 9,4,5
	stbx 9,3,5
.L475:
	addi 9,5,-1
	rldicl 5,9,0,32
	cmpwi 0,9,-1
	bne 0,.L481
.L473:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,5,1
	cmpld 0,3,4
	blt 0,.L483
	add 10,4,5
	cmpld 0,10,3
	bge 0,.L484
.L483:
	addi 10,4,-2
	addi 8,3,-2
	rldic 9,9,1,32
	add 9,10,9
	b .L485
.L486:
	addi 10,10,2
	lhz 7,0(10)
	addi 8,8,2
	sth 7,0(8)
.L485:
	cmpld 0,10,9
	bne 0,.L486
	andi. 9,5,0x1
	beq 0,.L482
	addi 5,5,-1
	rldicl 5,5,0,32
	lbzx 9,4,5
	stbx 9,3,5
	b .L482
.L488:
	lbzx 9,4,5
	stbx 9,3,5
.L484:
	addi 9,5,-1
	rldicl 5,9,0,32
	cmpwi 0,9,-1
	bne 0,.L488
.L482:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 10,5,2
	rlwinm 9,5,0,0,29
	cmpld 0,3,4
	blt 0,.L490
	add 8,4,5
	cmpld 0,8,3
	bge 0,.L491
.L490:
	addi 8,4,-4
	addi 7,3,-4
	rldic 10,10,2,32
	add 10,8,10
	b .L492
.L493:
	addi 8,8,4
	lwz 6,0(8)
	addi 7,7,4
	stw 6,0(7)
.L492:
	cmpld 0,8,10
	bne 0,.L493
	rldicl 9,9,0,32
	b .L494
.L495:
	lbzx 10,4,9
	stbx 10,3,9
	addi 9,9,1
.L494:
	cmplw 0,9,5
	blt 0,.L495
	b .L489
.L497:
	lbzx 9,4,5
	stbx 9,3,5
.L491:
	addi 9,5,-1
	rldicl 5,9,0,32
	cmpwi 0,9,-1
	bne 0,.L497
.L489:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-__cmovw
	.align 2
	.globl __modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divw 9,3,4
	mullw 9,9,4
	subf 3,9,3
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE110:
	.size	__modi,.-__modi
	.align 2
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	lfd 1,32(31)
	fcfid 1,1
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE111:
	.size	__uitod,.-__uitod
	.align 2
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	std 9,32(31)
	lfd 0,32(31)
	fcfid 0,0
	frsp 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE112:
	.size	__uitof,.-__uitof
	.align 2
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	blt 0,.L504
	std 3,32(31)
	lfd 0,32(31)
	fcfid 1,0
	b .L503
.L504:
	rldicl 9,3,0,63
	srdi 3,3,1
	or 9,9,3
	std 9,32(31)
	lfd 0,32(31)
	fcfid 1,0
	fadd 1,1,1
.L503:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-__ulltod
	.align 2
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	blt 0,.L507
	sradi 10,3,53
	rldicl 9,3,0,53
	addi 10,10,1
	addi 9,9,2047
	cmpldi 0,10,2
	or 9,9,3
	rldicr 9,9,0,52
	bge 0,.L508
	mr 9,3
.L508:
	std 9,32(31)
	lfd 0,32(31)
	fcfid 0,0
	frsp 1,0
	b .L506
.L507:
	rldicl 10,3,0,63
	srdi 3,3,1
	or 10,10,3
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L509
	mr 9,10
.L509:
	std 9,32(31)
	lfd 0,32(31)
	fcfid 0,0
	frsp 1,0
	fadds 1,1,1
.L506:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-__ulltof
	.align 2
	.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	divwu 9,3,4
	mullw 9,9,4
	subf 3,9,3
	rldicl 3,3,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE115:
	.size	__umodi,.-__umodi
	.align 2
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L512
.L514:
	subfic 10,9,15
	sraw 10,3,10
	andi. 10,10,0x1
	bne 0,.L513
	addi 9,9,1
.L512:
	cmpwi 0,9,16
	bne 0,.L514
.L513:
	extsw 3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L516
.L518:
	sraw 10,3,9
	andi. 10,10,0x1
	bne 0,.L517
	addi 9,9,1
.L516:
	cmpwi 0,9,16
	bne 0,.L518
.L517:
	extsw 3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,.LC37@toc@ha
	lfs 0,.LC37@toc@l(9)
	fcmpu 0,1,0
	cror 2,0,3
	beq 0,.L524
	fsubs 1,1,0
	fctidz 0,1
	stfd 0,32(31)
	ld 3,32(31)
	addis 3,3,0x1
	addi 3,3,-32768
	b .L522
.L524:
	fctidz 0,1
	stfd 0,32(31)
	ld 3,32(31)
.L522:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,0
	b .L526
.L528:
	sraw 8,3,10
	andi. 8,8,0x1
	beq 0,.L527
	addi 9,9,1
.L527:
	addi 10,10,1
.L526:
	cmpwi 0,10,16
	bne 0,.L528
	rldicl 3,9,0,63
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-__parityhi2
	.align 2
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	li 10,0
	b .L530
.L532:
	sraw 8,3,10
	andi. 8,8,0x1
	beq 0,.L531
	addi 9,9,1
.L531:
	addi 10,10,1
.L530:
	cmpwi 0,10,16
	bne 0,.L532
	extsw 3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,0
	b .L534
.L536:
	andi. 10,3,0x1
	beq 0,.L535
	add 9,9,4
.L535:
	srdi 3,3,1
	rldic 4,4,1,32
.L534:
	cmpdi 0,3,0
	bne 0,.L536
	rldicl 3,9,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr. 9,3
	beq 0,.L542
	li 3,0
	b .L539
.L541:
	andi. 10,4,0x1
	beq 0,.L540
	add 3,3,9
.L540:
	rldic 9,9,1,32
	srdi 4,4,1
.L539:
	cmpdi 0,4,0
	bne 0,.L541
	b .L538
.L542:
	li 3,0
.L538:
	rldicl 3,3,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L544
.L546:
	rldic 4,4,1,32
	slwi 9,9,1
.L544:
	cmplw 0,4,3
	bge 0,.L551
	cmpwi 0,9,0
	beq 0,.L552
	cmpwi 0,4,0
	bge 0,.L546
	li 10,0
	b .L548
.L549:
	cmplw 0,3,4
	blt 0,.L547
	subf 3,4,3
	rldicl 3,3,0,32
	or 10,10,9
.L547:
	srwi 9,9,1
	srdi 4,4,1
	b .L548
.L551:
	li 10,0
	b .L548
.L552:
	li 10,0
.L548:
	cmpwi 0,9,0
	bne 0,.L549
	cmpdi 0,5,0
	bne 0,.L550
	mr 3,10
.L550:
	rldicl 3,3,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,2
	blt 0,.L556
	bgt 0,.L557
	li 3,0
	b .L555
.L556:
	li 3,-1
	b .L555
.L557:
	li 3,1
.L555:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	fcmpu 0,1,2
	blt 0,.L560
	bgt 0,.L561
	li 3,0
	b .L559
.L560:
	li 3,-1
	b .L559
.L561:
	li 3,1
.L559:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mulld 3,3,4
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll,.-__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mulld 3,3,4
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull,.-__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpwi 0,4,0
	bge 0,.L571
	neg 4,4
	extsw 4,4
	li 8,1
	b .L565
.L571:
	li 8,0
.L565:
	li 10,33
	li 9,0
	b .L566
.L569:
	andi. 7,4,0x1
	beq 0,.L567
	add 9,9,3
.L567:
	slwi 3,3,1
	extsw 3,3
	srawi 4,4,1
.L566:
	cmpdi 0,4,0
	beq 0,.L568
	addi 10,10,-1
	andi. 7,10,0xff
	bne 0,.L569
.L568:
	cmpwi 0,8,0
	beq 0,.L570
	neg 9,9
.L570:
	extsw 3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	bge 0,.L577
	neg 3,3
	li 30,1
	b .L574
.L577:
	li 30,0
.L574:
	cmpdi 0,4,0
	bge 0,.L575
	neg 4,4
	cntlzw 30,30
	srwi 30,30,5
.L575:
	li 5,0
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L576
	neg 3,3
.L576:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmpdi 0,3,0
	bge 0,.L582
	neg 3,3
	li 30,1
	b .L579
.L582:
	li 30,0
.L579:
	cmpdi 0,4,0
	bge 0,.L580
	neg 4,4
.L580:
	li 5,1
	rldicl 4,4,0,32
	rldicl 3,3,0,32
	bl __udivmodsi4
	cmpwi 0,30,0
	beq 0,.L581
	neg 3,3
.L581:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 10,17
	li 9,1
	b .L584
.L586:
	rldic 4,4,1,48
	slwi 9,9,1
.L584:
	cmplw 0,4,3
	bge 0,.L591
	addi 10,10,-1
	cmpwi 0,10,0
	beq 0,.L592
	srdi. 8,4,15
	beq 0,.L586
	li 10,0
	b .L588
.L589:
	cmplw 0,3,4
	blt 0,.L587
	subf 3,4,3
	rlwinm 3,3,0,0xffff
	or 10,10,9
.L587:
	rldicl 9,9,63,49
	srdi 4,4,1
	b .L588
.L591:
	li 10,0
	b .L588
.L592:
	li 10,0
.L588:
	andi. 8,9,0xffff
	bne 0,.L589
	cmpdi 0,5,0
	bne 0,.L590
	mr 3,10
.L590:
	rlwinm 3,3,0,0xffff
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 9,1
	b .L595
.L597:
	sldi 4,4,1
	sldi 9,9,1
.L595:
	cmpld 0,4,3
	bge 0,.L602
	cmpdi 0,9,0
	beq 0,.L603
	andis. 10,4,0x8000
	beq 0,.L597
	li 10,0
	b .L599
.L600:
	cmpld 0,3,4
	blt 0,.L598
	subf 3,4,3
	or 10,10,9
.L598:
	srdi 9,9,1
	srdi 4,4,1
	b .L599
.L602:
	li 10,0
	b .L599
.L603:
	li 10,0
.L599:
	cmpdi 0,9,0
	bne 0,.L600
	cmpdi 0,5,0
	bne 0,.L601
	mr 3,10
.L601:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L606
	addi 4,4,-32
	slw 9,9,4
	sldi 3,9,32
	b .L608
.L606:
	cmpdi 0,4,0
	beq 0,.L608
	mr 10,9
	slw 3,10,4
	sradi 9,9,32
	slw 9,9,4
	subfic 4,4,32
	srw 10,10,4
	or 10,10,9
	sldi 10,10,32
	or 3,3,10
.L608:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 7,4
	mr 6,3
	andi. 10,5,0x40
	beq 0,.L611
	li 11,0
	li 10,0
	addi 5,5,-64
	sld 8,6,5
	mr 11,8
	b .L612
.L611:
	cmpdi 0,5,0
	beq 0,.L613
	mr 8,6
	li 11,0
	li 10,0
	sld 10,8,5
	sld 9,7,5
	subfic 5,5,64
	srd 8,8,5
	or 8,8,9
	mr 11,8
.L612:
	mr 3,10
	mr 4,11
.L613:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-__ashlti3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	andi. 10,4,0x20
	beq 0,.L616
	sradi 9,9,32
	srawi 10,9,31
	sldi 3,10,32
	addi 4,4,-32
	sraw 9,9,4
	rldicl 9,9,0,32
	or 3,3,9
	b .L618
.L616:
	cmpdi 0,4,0
	beq 0,.L618
	sradi 10,9,32
	sraw 8,10,4
	sldi 3,8,32
	subfic 8,4,32
	slw 10,10,8
	srw 9,9,4
	or 10,10,9
	rldicl 10,10,0,32
	or 3,3,10
.L618:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,4
	mr 29,3
	andi. 10,5,0x40
	beq 0,.L621
	mr 9,30
	li 11,0
	li 10,0
	sradi 11,9,63
	addi 5,5,-64
	srad 9,9,5
	mr 10,9
	b .L622
.L621:
	cmpdi 0,5,0
	beq 0,.L623
	mr 9,30
	li 11,0
	li 10,0
	srad 11,9,5
	subfic 7,5,64
	sld 9,9,7
	srd 8,29,5
	or 10,9,8
.L622:
	mr 3,10
	mr 4,11
.L623:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,3,0,0
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-__ashrti3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	srdi 11,10,40
	rlwinm 11,11,0,16,23
	srdi 4,10,24
	rlwinm 4,4,0,8,15
	srdi 5,10,8
	rlwinm 5,5,0,0,7
	rldicr 6,10,32,7
	srdi 6,6,24
	rldicr 7,10,40,7
	srdi 7,7,16
	rldicr 8,10,48,7
	srdi 8,8,8
	srdi 3,10,56
	mr 9,3
	rldimi 9,10,56,0
	or 3,9,11
	or 3,3,4
	or 3,3,5
	or 3,3,6
	or 3,3,7
	or 3,3,8
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE137:
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	rlwinm 7,10,24,16,23
	rlwinm 8,10,8,8,15
	srwi 3,10,24
	mr 9,3
	rlwimi 9,10,24,0,31-24
	or 3,9,7
	or 3,3,8
	rldicl 3,3,0,32
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE138:
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	cmplwi 0,3,65535
	bgt 0,.L632
	li 9,16
	b .L628
.L632:
	li 9,0
.L628:
	subfic 10,9,16
	srw 3,3,10
	andi. 10,3,0xff00
	bne 0,.L633
	li 10,8
	b .L629
.L633:
	li 10,0
.L629:
	subfic 8,10,8
	srw 3,3,8
	add 9,9,10
	andi. 10,3,0xf0
	bne 0,.L634
	li 10,4
	b .L630
.L634:
	li 10,0
.L630:
	subfic 8,10,4
	srw 3,3,8
	add 9,9,10
	andi. 10,3,0xc
	bne 0,.L635
	li 10,2
	b .L631
.L635:
	li 10,0
.L631:
	subfic 8,10,2
	srw 3,3,8
	add 9,9,10
	rlwinm 10,3,0,30,30
	cntlzw 10,10
	srwi 10,10,5
	subfic 3,3,2
	mullw 10,10,3
	add 3,9,10
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,4
	addic 8,9,-1
	subfe 8,8,8
	andc 9,9,8
	and 10,8,3
	or 3,9,10
	cntlzd 3,3
	rlwinm 8,8,0,25,25
	add 3,3,8
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-__clzti2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 10,3,32
	srdi 9,4,32
	cmpw 0,10,9
	blt 0,.L639
	cmpw 0,10,9
	bgt 0,.L640
	cmplw 0,4,3
	bgt 0,.L641
	blt 0,.L642
	li 3,1
	b .L638
.L639:
	li 3,0
	b .L638
.L640:
	li 3,2
	b .L638
.L641:
	li 3,0
	b .L638
.L642:
	li 3,2
.L638:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	bl __cmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	std 28,-32(1)
	std 29,-24(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 11,6
	mr 10,5
	cmpd 0,11,29
	bgt 0,.L646
	blt 0,.L647
	cmpld 0,10,28
	bgt 0,.L648
	blt 0,.L649
	li 9,1
	b .L645
.L646:
	li 9,0
	b .L645
.L647:
	li 9,2
	b .L645
.L648:
	li 9,0
	b .L645
.L649:
	li 9,2
.L645:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,4,0,0
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-__cmpti2
	.align 2
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	rlwinm 9,3,0,16,31
	cmpwi 0,9,0
	bne 0,.L655
	li 9,16
	b .L651
.L655:
	li 9,0
.L651:
	srw 3,3,9
	rlwinm 10,3,0,24,31
	cmpwi 0,10,0
	bne 0,.L656
	li 10,8
	b .L652
.L656:
	li 10,0
.L652:
	srw 3,3,10
	add 9,9,10
	andi. 10,3,0xf
	bne 0,.L657
	li 10,4
	b .L653
.L657:
	li 10,0
.L653:
	srw 3,3,10
	add 9,9,10
	andi. 10,3,0x3
	bne 0,.L658
	li 10,2
	b .L654
.L658:
	li 10,0
.L654:
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
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE144:
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	addic 10,9,-1
	subfe 10,10,10
	and 8,10,4
	andc 9,9,10
	or 9,9,8
	neg 8,9
	and 3,9,8
	cntlzd 3,3
	subfic 3,3,63
	rlwinm 10,10,0,25,25
	add 3,3,10
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-__ctzti2
	.align 2
	.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 11,4
	mr 10,3
	cmpdi 0,10,0
	bne 0,.L661
	cmpdi 0,11,0
	beq 0,.L663
	neg 9,11
	and 9,9,11
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,65
	b .L662
.L661:
	neg 9,10
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,64
	b .L662
.L663:
	li 9,0
.L662:
	extsw 3,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-__ffsti2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	andi. 9,4,0x20
	beq 0,.L665
	srdi 10,10,32
	addi 4,4,-32
	srw 3,10,4
	b .L667
.L665:
	cmpdi 0,4,0
	beq 0,.L667
	srdi 9,10,32
	srw 8,9,4
	sldi 3,8,32
	subfic 8,4,32
	slw 9,9,8
	srw 10,10,4
	or 9,9,10
	rldicl 9,9,0,32
	or 3,3,9
.L667:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 30,4
	mr 29,3
	andi. 10,5,0x40
	beq 0,.L670
	li 11,0
	li 10,0
	addi 5,5,-64
	srd 10,30,5
	b .L671
.L670:
	cmpdi 0,5,0
	beq 0,.L672
	mr 9,30
	li 11,0
	li 10,0
	srd 11,9,5
	subfic 7,5,64
	sld 9,9,7
	srd 8,29,5
	or 10,9,8
.L671:
	mr 3,10
	mr 4,11
.L672:
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,3,0,0
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-__lshrti3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	rlwinm 8,10,0,16,31
	rlwinm 7,4,0,16,31
	mullw 9,8,7
	rldicl 3,9,0,32
	srwi 9,3,16
	rlwinm 3,3,0,0xffff
	srwi 10,10,16
	mullw 7,10,7
	add 9,9,7
	slwi 7,9,16
	add 3,7,3
	rldicl 3,3,0,32
	srwi 9,9,16
	sldi 9,9,32
	li 6,-1
	rldicl 6,6,0,32
	or 3,3,9
	mr 7,3
	srwi 9,7,16
	rlwinm 7,7,0,0xffff
	rldicr 3,3,0,31
	or 3,3,7
	srwi 4,4,16
	mullw 8,8,4
	add 9,9,8
	slwi 8,9,16
	add 8,8,3
	rldimi 3,8,0,32
	sradi 8,3,32
	srwi 9,9,16
	add 9,9,8
	sldi 9,9,32
	and 3,3,6
	or 3,3,9
	sradi 9,3,32
	mullw 10,10,4
	add 10,10,9
	sldi 10,10,32
	and 3,3,6
	or 3,3,10
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 28,3
	mr 29,4
	mr 27,28
	mr 30,29
	rldicl 4,30,0,32
	rldicl 3,27,0,32
	bl __muldsi3
	sradi 9,3,32
	sradi 28,28,32
	mullw 30,30,28
	sradi 29,29,32
	mullw 27,27,29
	add 30,30,27
	add 30,30,9
	rldimi 3,30,32,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,5,0,0
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	li 6,-1
	rldicl 6,6,0,32
	and 7,3,6
	and 5,4,6
	mulld 8,7,5
	li 11,0
	li 10,0
	mr 10,8
	srdi 9,8,32
	and 8,8,6
	mr 10,8
	srdi 3,3,32
	mulld 5,3,5
	add 9,9,5
	sldi 5,9,32
	add 10,5,8
	srdi 9,9,32
	mr 11,9
	mr 8,10
	srdi 9,8,32
	and 8,8,6
	mr 10,8
	srdi 4,4,32
	mulld 7,7,4
	add 9,9,7
	sldi 7,9,32
	add 10,7,8
	srdi 9,9,32
	add 9,9,11
	mr 11,9
	mulld 3,3,4
	add 3,3,9
	mr 11,3
	mr 3,10
	mr 4,11
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 27,4
	mr 26,3
	mr 29,6
	mr 28,5
	mr 25,26
	mr 30,28
	mr 4,28
	mr 3,26
	bl __mulddi3
	mr 11,4
	mr 10,3
	mulld 30,30,27
	mulld 25,25,29
	add 30,30,25
	add 30,30,4
	mr 11,30
	mr 3,10
	mr 4,11
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,7,0,0
	.cfi_endproc
.LFE152:
	.size	__multi3,.-__multi3
	.align 2
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	neg 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE153:
	.size	__negdi2,.-__negdi2
	.align 2
	.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,4
	mr 8,3
	li 4,0
	li 3,0
	subfic 3,8,0
	subfze 4,9
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE154:
	.size	__negti2,.-__negti2
	.align 2
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	sradi 9,3,32
	xor 3,3,9
	srwi 9,3,16
	xor 3,3,9
	srwi 9,3,8
	xor 3,3,9
	srwi 9,3,4
	xor 3,3,9
	rlwinm 3,3,0,28,31
	li 9,27030
	sraw 3,9,3
	rldicl 3,3,0,63
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE155:
	.size	__paritydi2,.-__paritydi2
	.align 2
	.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	xor 10,3,4
	sradi 9,10,32
	xor 10,10,9
	srwi 9,10,16
	xor 10,10,9
	srwi 9,10,8
	xor 10,10,9
	srwi 9,10,4
	xor 10,10,9
	rlwinm 10,10,0,28,31
	li 3,27030
	sraw 3,3,10
	rldicl 3,3,0,63
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-__parityti2
	.align 2
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
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
	rldicl 3,3,0,63
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE157:
	.size	__paritysi2,.-__paritysi2
	.align 2
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 9,3,1
	lis 10,0x5555
	ori 10,10,0x5555
	rldimi 10,10,32,0
	and 9,9,10
	subf 9,9,3
	srdi 8,9,2
	lis 10,0x3333
	ori 10,10,0x3333
	rldimi 10,10,32,0
	and 8,8,10
	and 9,9,10
	add 9,8,9
	srdi 10,9,4
	add 9,10,9
	lis 10,0xf0f
	ori 10,10,0xf0f
	rldimi 10,10,32,0
	and 9,9,10
	srdi 10,9,32
	add 9,10,9
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rldicl 3,3,0,57
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE158:
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
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
	rldicl 3,3,0,58
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 7,4
	mr 6,3
	sldi 9,7,63
	li 11,0
	li 10,0
	srdi 10,6,1
	or 10,9,10
	srdi 11,7,1
	lis 9,0x5555
	ori 9,9,0x5555
	rldimi 9,9,32,0
	mr 25,9
	lis 9,0x5555
	ori 9,9,0x5555
	mr 9,25
	mr 24,9
	and 24,24,10
	and 25,25,11
	li 11,0
	li 10,0
	subfc 10,24,6
	subfe 11,25,7
	mr 8,10
	mr 9,11
	sldi 5,11,62
	li 7,0
	li 6,0
	srdi 6,10,2
	or 6,5,6
	srdi 7,11,2
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 27,5
	lis 5,0x3333
	ori 5,5,0x3333
	mr 5,27
	mr 26,5
	and 6,6,26
	and 7,7,27
	and 10,10,26
	and 11,11,27
	addc 8,6,10
	adde 9,7,11
	sldi 7,9,60
	li 11,0
	li 10,0
	srdi 10,8,4
	or 10,7,10
	srdi 11,9,4
	li 7,0
	li 6,0
	addc 6,10,8
	adde 7,11,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 29,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	mr 9,29
	mr 28,9
	and 8,6,28
	and 9,7,29
	li 11,0
	li 10,0
	mr 10,9
	add 10,10,8
	srdi 9,10,32
	add 9,9,10
	srwi 10,9,16
	add 9,9,10
	srwi 3,9,8
	add 3,3,9
	rlwinm 3,3,0,0xff
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,8,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,4,31
	addis 10,2,.LC32@toc@ha
	lfd 0,.LC32@toc@l(10)
.L689:
	andi. 10,4,0x1
	beq 0,.L687
	fmul 0,0,1
.L687:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L688
	fmul 1,1,1
	b .L689
.L688:
	cmpwi 0,9,0
	beq 0,.L691
	addis 9,2,.LC32@toc@ha
	lfd 1,.LC32@toc@l(9)
	fdiv 1,1,0
	b .L690
.L691:
	fmr 1,0
.L690:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srwi 9,4,31
	addis 10,2,.LC33@toc@ha
	lfs 0,.LC33@toc@l(10)
.L695:
	andi. 10,4,0x1
	beq 0,.L693
	fmuls 0,0,1
.L693:
	srawi 4,4,1
	addze 4,4
	extsw. 4,4
	beq 0,.L694
	fmuls 1,1,1
	b .L695
.L694:
	cmpwi 0,9,0
	beq 0,.L697
	addis 9,2,.LC33@toc@ha
	lfs 1,.LC33@toc@l(9)
	fdivs 1,1,0
	b .L696
.L697:
	fmr 1,0
.L696:
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	srdi 10,3,32
	srdi 9,4,32
	cmplw 0,10,9
	blt 0,.L700
	cmplw 0,10,9
	bgt 0,.L701
	cmplw 0,4,3
	bgt 0,.L702
	blt 0,.L703
	li 3,1
	b .L699
.L700:
	li 3,0
	b .L699
.L701:
	li 3,2
	b .L699
.L702:
	li 3,0
	b .L699
.L703:
	li 3,2
.L699:
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,0
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
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	bl __ucmpdi2
	addi 3,3,-1
	extsw 3,3
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,0
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	std 28,-32(1)
	std 29,-24(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 29,4
	mr 28,3
	mr 11,6
	mr 10,5
	cmpld 0,11,29
	bgt 0,.L707
	blt 0,.L708
	cmpld 0,10,28
	bgt 0,.L709
	blt 0,.L710
	li 9,1
	b .L706
.L707:
	li 9,0
	b .L706
.L708:
	li 9,2
	b .L706
.L709:
	li 9,0
	b .L706
.L710:
	li 9,2
.L706:
	extsw 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,4,0,0
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.set	.LC0,.LC27+8
	.set	.LC1,.LC27
	.section	.rodata
	.align 2
.LC6:
	.long	-8388609
	.align 2
.LC7:
	.long	2139095039
	.set	.LC10,.LC14
	.set	.LC11,.LC15
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
	.align 2
.LC19:
	.long	1056964608
	.set	.LC20,.LC28+4
	.set	.LC23,.LC27
	.set	.LC24,.LC28
	.align 4
.LC27:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.align 4
.LC28:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 3
.LC32:
	.long	0
	.long	1072693248
	.align 2
.LC33:
	.long	1065353216
	.align 2
.LC37:
	.long	1191182336
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
