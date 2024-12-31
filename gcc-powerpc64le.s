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
	std 3,-16(1)
	std 4,-8(1)
	ld 9,-16(1)
	std 9,-24(1)
	ld 9,-8(1)
	std 9,-32(1)
	ld 10,-32(1)
	ld 11,-24(1)
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE0:
	.size	make_ti,.-make_ti
	.align 2
	.globl make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 9,-16(1)
	std 9,-24(1)
	ld 9,-8(1)
	std 9,-32(1)
	ld 10,-32(1)
	ld 11,-24(1)
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE1:
	.size	make_tu,.-make_tu
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	ld 10,-40(1)
	ld 9,-48(1)
	cmpld 0,10,9
	bge 0,.L6
	ld 10,-40(1)
	ld 9,-16(1)
	add 9,10,9
	std 9,-40(1)
	ld 10,-48(1)
	ld 9,-16(1)
	add 9,10,9
	std 9,-48(1)
	b .L7
.L8:
	ld 9,-40(1)
	addi 9,9,-1
	std 9,-40(1)
	ld 9,-48(1)
	addi 9,9,-1
	std 9,-48(1)
	ld 9,-40(1)
	lbz 10,0(9)
	ld 9,-48(1)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L7:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L8
	b .L9
.L6:
	ld 10,-40(1)
	ld 9,-48(1)
	cmpd 0,10,9
	beq 0,.L9
	b .L10
.L11:
	ld 10,-40(1)
	addi 9,10,1
	std 9,-40(1)
	ld 9,-48(1)
	addi 8,9,1
	std 8,-48(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L10:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L11
.L9:
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE2:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	mr 9,5
	std 6,-8(1)
	stw 9,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,0xff
	stw 9,-16(1)
	b .L14
.L16:
	ld 9,-8(1)
	addi 9,9,-1
	std 9,-8(1)
	ld 9,-40(1)
	addi 9,9,1
	std 9,-40(1)
	ld 9,-48(1)
	addi 9,9,1
	std 9,-48(1)
.L14:
	ld 9,-8(1)
	cmpdi 0,9,0
	beq 0,.L15
	ld 9,-40(1)
	lbz 10,0(9)
	ld 9,-48(1)
	stb 10,0(9)
	ld 9,-48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,-16(1)
	cmpw 0,10,9
	bne 0,.L16
.L15:
	ld 9,-8(1)
	cmpdi 0,9,0
	beq 0,.L17
	ld 9,-48(1)
	addi 9,9,1
	b .L18
.L17:
	li 9,0
.L18:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE3:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	std 3,-32(1)
	mr 9,4
	std 5,-16(1)
	stw 9,-24(1)
	ld 9,-32(1)
	std 9,-48(1)
	lwz 9,-24(1)
	rlwinm 9,9,0,0xff
	stw 9,-24(1)
	b .L20
.L22:
	ld 9,-48(1)
	addi 9,9,1
	std 9,-48(1)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L20:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L21
	ld 9,-48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,-24(1)
	cmpw 0,10,9
	bne 0,.L22
.L21:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L23
	ld 9,-48(1)
	b .L25
.L23:
	li 9,0
.L25:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE4:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	b .L27
.L29:
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-48(1)
	addi 9,9,1
	std 9,-48(1)
	ld 9,-40(1)
	addi 9,9,1
	std 9,-40(1)
.L27:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L28
	ld 9,-48(1)
	lbz 10,0(9)
	ld 9,-40(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L29
.L28:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L30
	ld 9,-48(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,-40(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	b .L32
.L30:
	li 9,0
.L32:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE5:
	.size	memcmp,.-memcmp
	.align 2
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	b .L34
.L35:
	ld 10,-40(1)
	addi 9,10,1
	std 9,-40(1)
	ld 9,-48(1)
	addi 8,9,1
	std 8,-48(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L34:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L35
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE6:
	.size	memcpy,.-memcpy
	.align 2
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	std 3,-32(1)
	mr 9,4
	std 5,-16(1)
	stw 9,-24(1)
	ld 9,-32(1)
	std 9,-48(1)
	lwz 9,-24(1)
	rlwinm 9,9,0,0xff
	stw 9,-24(1)
	b .L38
.L40:
	ld 10,-48(1)
	ld 9,-16(1)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,-24(1)
	cmpw 0,10,9
	bne 0,.L38
	ld 10,-48(1)
	ld 9,-16(1)
	add 9,10,9
	b .L39
.L38:
	ld 9,-16(1)
	addi 10,9,-1
	std 10,-16(1)
	cmpdi 0,9,0
	bne 0,.L40
	li 9,0
.L39:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE7:
	.size	memrchr,.-memrchr
	.align 2
	.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	std 3,-32(1)
	mr 9,4
	std 5,-16(1)
	stw 9,-24(1)
	ld 9,-32(1)
	std 9,-48(1)
	b .L42
.L43:
	lwz 9,-24(1)
	mr 10,9
	ld 9,-48(1)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-48(1)
	addi 9,9,1
	std 9,-48(1)
.L42:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L43
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE8:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	b .L46
.L47:
	ld 9,-8(1)
	addi 9,9,1
	std 9,-8(1)
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L46:
	ld 9,-8(1)
	lbz 10,0(9)
	ld 9,-16(1)
	stb 10,0(9)
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L47
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	lwz 9,-8(1)
	rlwinm 9,9,0,0xff
	stw 9,-8(1)
	b .L50
.L52:
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L50:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L51
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,-8(1)
	cmpw 0,10,9
	bne 0,.L52
.L51:
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 10,-16(1)
.L57:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,-16(1)
	cmpw 0,8,10
	bne 0,.L55
	b .L56
.L55:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L57
	li 9,0
.L56:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE11:
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	b .L59
.L61:
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
	ld 9,-8(1)
	addi 9,9,1
	std 9,-8(1)
.L59:
	ld 9,-16(1)
	lbz 10,0(9)
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L60
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L61
.L60:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE12:
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	std 9,-32(1)
	b .L64
.L65:
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L64:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L65
	ld 10,-16(1)
	ld 9,-32(1)
	subf 9,9,10
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE13:
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	ld 9,-16(1)
	addi 10,9,-1
	std 10,-16(1)
	cmpdi 0,9,0
	bne 0,.L70
	li 9,0
	b .L69
.L72:
	ld 9,-48(1)
	addi 9,9,1
	std 9,-48(1)
	ld 9,-40(1)
	addi 9,9,1
	std 9,-40(1)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L70:
	ld 9,-48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,-40(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L71
	ld 9,-48(1)
	lbz 10,0(9)
	ld 9,-40(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L72
.L71:
	ld 9,-48(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,-40(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
.L69:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE14:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	b .L74
.L75:
	ld 9,-48(1)
	addi 9,9,1
	lbz 10,0(9)
	ld 9,-40(1)
	stb 10,0(9)
	ld 9,-40(1)
	addi 9,9,1
	ld 10,-48(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,-40(1)
	addi 9,9,2
	std 9,-40(1)
	ld 9,-48(1)
	addi 9,9,2
	std 9,-48(1)
	ld 9,-16(1)
	addi 9,9,-2
	std 9,-16(1)
.L74:
	ld 9,-16(1)
	cmpdi 0,9,1
	bgt 0,.L75
	nop
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE15:
	.size	swab,.-swab
	.align 2
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	ori 9,9,0x20
	addi 9,9,-97
	li 10,25
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE16:
	.size	isalpha,.-isalpha
	.align 2
	.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	li 10,127
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE17:
	.size	isascii,.-isascii
	.align 2
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	cmpwi 0,9,32
	beq 0,.L81
	lwz 9,-16(1)
	cmpwi 0,9,9
	bne 0,.L82
.L81:
	li 9,1
	b .L84
.L82:
	li 9,0
.L84:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE18:
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	cmplwi 0,9,31
	ble 0,.L86
	lwz 9,-16(1)
	cmpwi 0,9,127
	bne 0,.L87
.L86:
	li 9,1
	b .L89
.L87:
	li 9,0
.L89:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-iscntrl
	.align 2
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-48
	li 10,9
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE20:
	.size	isdigit,.-isdigit
	.align 2
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-33
	li 10,93
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE21:
	.size	isgraph,.-isgraph
	.align 2
	.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-97
	li 10,25
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE22:
	.size	islower,.-islower
	.align 2
	.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-32
	li 10,94
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE23:
	.size	isprint,.-isprint
	.align 2
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	cmpwi 0,9,32
	beq 0,.L99
	lwz 9,-16(1)
	addi 9,9,-9
	cmplwi 0,9,4
	bgt 0,.L100
.L99:
	li 9,1
	b .L102
.L100:
	li 9,0
.L102:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE24:
	.size	isspace,.-isspace
	.align 2
	.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-65
	li 10,25
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE25:
	.size	isupper,.-isupper
	.align 2
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	cmplwi 0,9,31
	ble 0,.L106
	lwz 9,-16(1)
	addi 9,9,-127
	cmplwi 0,9,32
	ble 0,.L106
	lwz 9,-16(1)
	addi 9,9,-8232
	cmplwi 0,9,1
	ble 0,.L106
	lwz 9,-16(1)
	addis 9,9,0xffff
	addi 9,9,7
	cmplwi 0,9,2
	bgt 0,.L107
.L106:
	li 9,1
	b .L109
.L107:
	li 9,0
.L109:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE26:
	.size	iswcntrl,.-iswcntrl
	.align 2
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-48
	li 10,9
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE27:
	.size	iswdigit,.-iswdigit
	.align 2
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	cmplwi 0,9,254
	bgt 0,.L113
	lwz 9,-16(1)
	addi 9,9,1
	rlwinm 9,9,0,25,31
	li 10,32
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L114
.L113:
	lwz 9,-16(1)
	cmplwi 0,9,8231
	ble 0,.L115
	lwz 9,-16(1)
	addi 10,9,-8234
	li 9,0
	ori 9,9,0xb7d5
	cmplw 0,10,9
	ble 0,.L115
	lwz 9,-16(1)
	addis 9,9,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	bgt 0,.L116
.L115:
	li 9,1
	b .L114
.L116:
	lwz 9,-16(1)
	addis 9,9,0xffff
	addi 10,9,4
	lis 9,0x10
	ori 9,9,0x3
	cmplw 0,10,9
	bgt 0,.L117
	lwz 9,-16(1)
	rlwinm 10,9,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,10,9
	bne 0,.L118
.L117:
	li 9,0
	b .L114
.L118:
	li 9,1
.L114:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE28:
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L120
	lwz 9,-16(1)
	ori 9,9,0x20
	addi 9,9,-97
	cmplwi 0,9,5
	bgt 0,.L121
.L120:
	li 9,1
	b .L123
.L121:
	li 9,0
.L123:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-iswxdigit
	.align 2
	.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,25,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	lfd 0,-16(1)
	fcmpu 0,12,0
	bnu 0,.L127
	lfd 0,-16(1)
	b .L128
.L127:
	lfd 12,-8(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bnu 0,.L129
	lfd 0,-8(1)
	b .L128
.L129:
	lfd 12,-16(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bng 0,.L134
	lfd 12,-16(1)
	lfd 0,-8(1)
	fsub 0,12,0
	b .L128
.L134:
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
.L128:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfs 1,-16(1)
	stfs 2,-12(1)
	lfs 12,-16(1)
	lfs 0,-16(1)
	fcmpu 0,12,0
	bnu 0,.L136
	lfs 0,-16(1)
	b .L137
.L136:
	lfs 12,-12(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bnu 0,.L138
	lfs 0,-12(1)
	b .L137
.L138:
	lfs 12,-16(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bng 0,.L143
	lfs 12,-16(1)
	lfs 0,-12(1)
	fsubs 0,12,0
	b .L137
.L143:
	addis 9,2,.LC1@toc@ha
	addi 9,9,.LC1@toc@l
	lfs 0,0(9)
.L137:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE32:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	lfd 0,-16(1)
	fcmpu 0,12,0
	bnu 0,.L145
	lfd 0,-8(1)
	b .L146
.L145:
	lfd 12,-8(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bnu 0,.L147
	lfd 0,-16(1)
	b .L146
.L147:
	ld 9,-16(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,-8(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L148
	ld 9,-16(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L149
	lfd 0,-8(1)
	b .L146
.L149:
	lfd 0,-16(1)
	b .L146
.L148:
	lfd 12,-16(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bnl 0,.L155
	lfd 0,-8(1)
	b .L146
.L155:
	lfd 0,-16(1)
.L146:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	lfs 12,-16(1)
	lfs 0,-16(1)
	fcmpu 0,12,0
	bnu 0,.L157
	lfs 0,-12(1)
	b .L158
.L157:
	lfs 12,-12(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bnu 0,.L159
	lfs 0,-16(1)
	b .L158
.L159:
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L160
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L161
	lfs 0,-12(1)
	b .L158
.L161:
	lfs 0,-16(1)
	b .L158
.L160:
	lfs 12,-16(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bnl 0,.L167
	lfs 0,-12(1)
	b .L158
.L167:
	lfs 0,-16(1)
.L158:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	stfd 1,-48(1)
	stfd 2,-40(1)
	addi 9,1,-32
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,-48(1)
	lfd 1,-40(1)
	fcmpu 0,0,0
	bnu 0,.L169
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L169:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L171
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L170
.L171:
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	mr 10,9
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L172
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L173
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L173:
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L170
.L172:
	lfd 12,-48(1)
	lfd 13,-40(1)
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L179
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L179:
	lfd 0,-48(1)
	lfd 1,-40(1)
.L170:
	fmr 2,1
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	lfd 0,-16(1)
	fcmpu 0,12,0
	bnu 0,.L181
	lfd 0,-8(1)
	b .L182
.L181:
	lfd 12,-8(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bnu 0,.L183
	lfd 0,-16(1)
	b .L182
.L183:
	ld 9,-16(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,-8(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L184
	ld 9,-16(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L185
	lfd 0,-16(1)
	b .L182
.L185:
	lfd 0,-8(1)
	b .L182
.L184:
	lfd 12,-16(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bnl 0,.L191
	lfd 0,-16(1)
	b .L182
.L191:
	lfd 0,-8(1)
.L182:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	lfs 12,-16(1)
	lfs 0,-16(1)
	fcmpu 0,12,0
	bnu 0,.L193
	lfs 0,-12(1)
	b .L194
.L193:
	lfs 12,-12(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bnu 0,.L195
	lfs 0,-16(1)
	b .L194
.L195:
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,-12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L196
	lwz 9,-16(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L197
	lfs 0,-16(1)
	b .L194
.L197:
	lfs 0,-12(1)
	b .L194
.L196:
	lfs 12,-16(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bnl 0,.L203
	lfs 0,-16(1)
	b .L194
.L203:
	lfs 0,-12(1)
.L194:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE37:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	stfd 1,-48(1)
	stfd 2,-40(1)
	addi 9,1,-32
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,-48(1)
	lfd 1,-40(1)
	fcmpu 0,0,0
	bnu 0,.L205
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L205:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L207
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L206
.L207:
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	mr 10,9
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L208
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L209
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L206
.L209:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L208:
	lfd 12,-48(1)
	lfd 13,-40(1)
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L215
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L206
.L215:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
.L206:
	fmr 2,1
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	std 3,-16(1)
	ld 9,-16(1)
	stw 9,-24(1)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	std 9,-32(1)
	b .L217
.L218:
	lwz 9,-24(1)
	rlwinm 9,9,0,26,31
	addis 10,2,digits@toc@ha
	addi 10,10,digits@toc@l
	rldicl 9,9,0,32
	lbzx 10,10,9
	ld 9,-32(1)
	stb 10,0(9)
	ld 9,-32(1)
	addi 9,9,1
	std 9,-32(1)
	lwz 9,-24(1)
	srwi 9,9,6
	stw 9,-24(1)
.L217:
	lwz 9,-24(1)
	cmpwi 0,9,0
	bne 0,.L218
	ld 9,-32(1)
	li 10,0
	stb 10,0(9)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-1
	rldicl 10,9,0,32
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	std 10,0(9)
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	ld 10,0(9)
	addis 9,2,.LC2@toc@ha
	ld 9,.LC2@toc@l(9)
	mulld 9,10,9
	addi 10,9,1
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	std 10,0(9)
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	ld 9,0(9)
	srdi 9,9,33
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE41:
	.size	rand,.-rand
	.align 2
	.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 9,-16(1)
	std 9,-32(1)
	ld 9,-8(1)
	std 9,-24(1)
	ld 9,-24(1)
	cmpdi 0,9,0
	bne 0,.L224
	ld 9,-32(1)
	li 10,0
	std 10,8(9)
	ld 9,-32(1)
	ld 10,8(9)
	ld 9,-32(1)
	std 10,0(9)
	blr
.L224:
	ld 9,-24(1)
	ld 10,0(9)
	ld 9,-32(1)
	std 10,0(9)
	ld 9,-32(1)
	ld 10,-24(1)
	std 10,8(9)
	ld 9,-24(1)
	ld 10,-32(1)
	std 10,0(9)
	ld 9,-32(1)
	ld 9,0(9)
	cmpdi 0,9,0
	beqlr 0
	ld 9,-32(1)
	ld 9,0(9)
	ld 10,-32(1)
	std 10,8(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE42:
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	std 9,-32(1)
	ld 9,-32(1)
	ld 9,0(9)
	cmpdi 0,9,0
	beq 0,.L227
	ld 9,-32(1)
	ld 9,0(9)
	ld 10,-32(1)
	ld 10,8(10)
	std 10,8(9)
.L227:
	ld 9,-32(1)
	ld 9,8(9)
	cmpdi 0,9,0
	beq 0,.L229
	ld 9,-32(1)
	ld 9,8(9)
	ld 10,-32(1)
	ld 10,0(10)
	std 10,0(9)
.L229:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	std 2,24(1)
	std 3,64(1)
	std 4,72(1)
	std 5,80(1)
	std 6,88(1)
	std 7,96(1)
	ld 31,88(1)
	mr 7,31
	addi 7,31,-1
	std 7,40(1)
	mr 10,31
	li 11,0
	srdi 7,31,61
	sldi 9,11,3
	or 9,7,9
	sldi 8,31,3
	ld 9,72(1)
	std 9,48(1)
	ld 9,80(1)
	ld 9,0(9)
	std 9,56(1)
	li 9,0
	std 9,32(1)
	b .L231
.L234:
	ld 9,32(1)
	mulld 9,31,9
	ld 10,48(1)
	add 10,10,9
	ld 9,96(1)
	mr 4,10
	ld 3,64(1)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L232
	ld 9,32(1)
	mulld 9,31,9
	ld 10,48(1)
	add 9,10,9
	b .L233
.L232:
	ld 9,32(1)
	addi 9,9,1
	std 9,32(1)
.L231:
	ld 10,32(1)
	ld 9,56(1)
	cmpld 0,10,9
	blt 0,.L234
	ld 9,56(1)
	addi 10,9,1
	ld 9,80(1)
	std 10,0(9)
	ld 9,56(1)
	mulld 9,31,9
	ld 10,48(1)
	add 9,10,9
	ld 5,88(1)
	ld 4,64(1)
	mr 3,9
	bl memcpy
	mr 9,3
.L233:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	std 2,24(1)
	std 3,64(1)
	std 4,72(1)
	std 5,80(1)
	std 6,88(1)
	std 7,96(1)
	ld 31,88(1)
	mr 7,31
	addi 7,31,-1
	std 7,40(1)
	mr 10,31
	li 11,0
	srdi 7,31,61
	sldi 9,11,3
	or 9,7,9
	sldi 8,31,3
	ld 9,72(1)
	std 9,48(1)
	ld 9,80(1)
	ld 9,0(9)
	std 9,56(1)
	li 9,0
	std 9,32(1)
	b .L237
.L240:
	ld 9,32(1)
	mulld 9,31,9
	ld 10,48(1)
	add 10,10,9
	ld 9,96(1)
	mr 4,10
	ld 3,64(1)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L238
	ld 9,32(1)
	mulld 9,31,9
	ld 10,48(1)
	add 9,10,9
	b .L239
.L238:
	ld 9,32(1)
	addi 9,9,1
	std 9,32(1)
.L237:
	ld 10,32(1)
	ld 9,56(1)
	cmpld 0,10,9
	blt 0,.L240
	li 9,0
.L239:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	ld 31,-8(1)
	.cfi_restore 31
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE45:
	.size	lfind,.-lfind
	.align 2
	.globl abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	srawi 10,9,31
	lwz 9,-16(1)
	xor 9,10,9
	subf 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,48(1)
	li 9,0
	stw 9,32(1)
	li 9,0
	stw 9,36(1)
	b .L245
.L246:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L245:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L246
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L247
	cmpwi 0,9,45
	bne 0,.L249
	li 9,1
	stw 9,36(1)
.L247:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
	b .L249
.L250:
	lwz 9,32(1)
	mulli 10,9,10
	ld 9,48(1)
	addi 8,9,1
	std 8,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,10
	stw 9,32(1)
.L249:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L250
	lwz 9,36(1)
	cmpwi 0,9,0
	bne 0,.L251
	lwz 9,32(1)
	neg 9,9
	b .L253
.L251:
	lwz 9,32(1)
.L253:
	extsw 9,9
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,48(1)
	li 9,0
	std 9,32(1)
	li 9,0
	stw 9,40(1)
	b .L256
.L257:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L256:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L257
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L258
	cmpwi 0,9,45
	bne 0,.L260
	li 9,1
	stw 9,40(1)
.L258:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
	b .L260
.L261:
	ld 9,32(1)
	mulli 10,9,10
	ld 9,48(1)
	addi 8,9,1
	std 8,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
	std 9,32(1)
.L260:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L261
	lwz 9,40(1)
	cmpwi 0,9,0
	bne 0,.L262
	ld 9,32(1)
	neg 9,9
	b .L264
.L262:
	ld 9,32(1)
.L264:
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,48(1)
	li 9,0
	std 9,32(1)
	li 9,0
	stw 9,40(1)
	b .L267
.L268:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L267:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L268
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L269
	cmpwi 0,9,45
	bne 0,.L271
	li 9,1
	stw 9,40(1)
.L269:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
	b .L271
.L272:
	ld 9,32(1)
	mulli 10,9,10
	ld 9,48(1)
	addi 8,9,1
	std 8,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
	std 9,32(1)
.L271:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L272
	lwz 9,40(1)
	cmpwi 0,9,0
	bne 0,.L273
	ld 9,32(1)
	neg 9,9
	b .L275
.L273:
	ld 9,32(1)
.L275:
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	std 2,24(1)
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	std 6,72(1)
	std 7,80(1)
	b .L278
.L283:
	ld 9,64(1)
	srdi 10,9,1
	ld 9,72(1)
	mulld 9,10,9
	ld 10,56(1)
	add 9,10,9
	std 9,32(1)
	ld 9,80(1)
	ld 4,32(1)
	ld 3,48(1)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	stw 9,40(1)
	lwz 9,40(1)
	cmpwi 0,9,0
	bge 0,.L279
	ld 9,64(1)
	srdi 9,9,1
	std 9,64(1)
	b .L278
.L279:
	lwz 9,40(1)
	cmpwi 0,9,0
	ble 0,.L281
	ld 10,32(1)
	ld 9,72(1)
	add 9,10,9
	std 9,56(1)
	ld 9,64(1)
	srdi 9,9,1
	ld 10,64(1)
	subf 9,9,10
	addi 9,9,-1
	std 9,64(1)
	b .L278
.L281:
	ld 9,32(1)
	b .L282
.L278:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L283
	li 9,0
.L282:
	mr 3,9
	addi 1,1,96
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	std 2,24(1)
	std 3,64(1)
	std 4,72(1)
	std 5,80(1)
	std 6,88(1)
	std 7,96(1)
	std 8,104(1)
	ld 9,72(1)
	std 9,32(1)
	ld 9,80(1)
	stw 9,40(1)
	b .L286
.L290:
	lwz 9,40(1)
	srawi 9,9,1
	extsw 10,9
	ld 9,88(1)
	mulld 9,10,9
	ld 10,32(1)
	add 9,10,9
	std 9,48(1)
	ld 9,96(1)
	ld 5,104(1)
	ld 4,48(1)
	ld 3,64(1)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	stw 9,56(1)
	lwz 9,56(1)
	cmpwi 0,9,0
	bne 0,.L287
	ld 9,48(1)
	b .L288
.L287:
	lwz 9,56(1)
	cmpwi 0,9,0
	ble 0,.L289
	ld 10,48(1)
	ld 9,88(1)
	add 9,10,9
	std 9,32(1)
	lwz 9,40(1)
	addi 9,9,-1
	stw 9,40(1)
.L289:
	lwz 9,40(1)
	srawi 9,9,1
	stw 9,40(1)
.L286:
	lwz 9,40(1)
	cmpwi 0,9,0
	bne 0,.L290
	li 9,0
.L288:
	mr 3,9
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE51:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	mr 10,3
	mr 8,4
	stw 10,-16(1)
	mr 10,8
	stw 10,-12(1)
	lwz 8,-16(1)
	lwz 10,-12(1)
	divw 6,8,10
	lwz 10,-16(1)
	lwz 8,-12(1)
	divw 7,10,8
	lwz 8,-12(1)
	mullw 8,7,8
	subf 8,8,10
	rldicl 10,6,0,32
	rldicr 9,9,0,31
	or 9,9,10
	rldicl 10,8,0,32
	sldi 10,10,32
	rldicl 9,9,0,32
	or 9,9,10
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE52:
	.size	div,.-div
	.align 2
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	sradi 10,9,63
	ld 9,-16(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE53:
	.size	imaxabs,.-imaxabs
	.align 2
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	divd 5,10,9
	ld 9,-16(1)
	ld 10,-8(1)
	divd 8,9,10
	ld 10,-8(1)
	mulld 10,8,10
	subf 9,10,9
	mr 6,5
	mr 7,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-imaxdiv
	.align 2
	.globl labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	sradi 10,9,63
	ld 9,-16(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE55:
	.size	labs,.-labs
	.align 2
	.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	divd 5,10,9
	ld 9,-16(1)
	ld 10,-8(1)
	divd 8,9,10
	ld 10,-8(1)
	mulld 10,8,10
	subf 9,10,9
	mr 6,5
	mr 7,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE56:
	.size	ldiv,.-ldiv
	.align 2
	.globl llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	sradi 10,9,63
	ld 9,-16(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE57:
	.size	llabs,.-llabs
	.align 2
	.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	divd 5,10,9
	ld 9,-16(1)
	ld 10,-8(1)
	divd 8,9,10
	ld 10,-8(1)
	mulld 10,8,10
	subf 9,10,9
	mr 6,5
	mr 7,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE58:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	b .L307
.L309:
	ld 9,-16(1)
	addi 9,9,4
	std 9,-16(1)
.L307:
	ld 9,-16(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L308
	ld 9,-16(1)
	lwz 9,0(9)
	lwz 10,-8(1)
	cmpw 0,10,9
	bne 0,.L309
.L308:
	ld 9,-16(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L310
	ld 9,-16(1)
	b .L312
.L310:
	li 9,0
.L312:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE59:
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	b .L314
.L316:
	ld 9,-16(1)
	addi 9,9,4
	std 9,-16(1)
	ld 9,-8(1)
	addi 9,9,4
	std 9,-8(1)
.L314:
	ld 9,-16(1)
	lwz 10,0(9)
	ld 9,-8(1)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L315
	ld 9,-16(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L315
	ld 9,-8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L316
.L315:
	ld 9,-16(1)
	lwz 10,0(9)
	ld 9,-8(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L317
	ld 9,-16(1)
	lwz 8,0(9)
	ld 9,-8(1)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L319
.L317:
	li 9,-1
.L319:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 9,-16(1)
	std 9,-32(1)
	nop
.L321:
	ld 10,-8(1)
	addi 9,10,4
	std 9,-8(1)
	ld 9,-16(1)
	addi 8,9,4
	std 8,-16(1)
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L321
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	std 9,-32(1)
	b .L324
.L325:
	ld 9,-16(1)
	addi 9,9,4
	std 9,-16(1)
.L324:
	ld 9,-16(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L325
	ld 10,-16(1)
	ld 9,-32(1)
	subf 9,9,10
	sradi 9,9,2
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE62:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	b .L328
.L330:
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-32(1)
	addi 9,9,4
	std 9,-32(1)
	ld 9,-24(1)
	addi 9,9,4
	std 9,-24(1)
.L328:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L329
	ld 9,-32(1)
	lwz 10,0(9)
	ld 9,-24(1)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L329
	ld 9,-32(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L329
	ld 9,-24(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L330
.L329:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L331
	ld 9,-32(1)
	lwz 10,0(9)
	ld 9,-24(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L332
	ld 9,-32(1)
	lwz 8,0(9)
	ld 9,-24(1)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L335
.L332:
	li 9,-1
	b .L335
.L331:
	li 9,0
.L335:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	std 3,-32(1)
	mr 9,4
	std 5,-16(1)
	stw 9,-24(1)
	b .L337
.L339:
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-32(1)
	addi 9,9,4
	std 9,-32(1)
.L337:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L338
	ld 9,-32(1)
	lwz 9,0(9)
	lwz 10,-24(1)
	cmpw 0,10,9
	bne 0,.L339
.L338:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L340
	ld 9,-32(1)
	b .L342
.L340:
	li 9,0
.L342:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	b .L344
.L346:
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-32(1)
	addi 9,9,4
	std 9,-32(1)
	ld 9,-24(1)
	addi 9,9,4
	std 9,-24(1)
.L344:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L345
	ld 9,-32(1)
	lwz 10,0(9)
	ld 9,-24(1)
	lwz 9,0(9)
	cmpw 0,10,9
	beq 0,.L346
.L345:
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L347
	ld 9,-32(1)
	lwz 10,0(9)
	ld 9,-24(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L348
	ld 9,-32(1)
	lwz 8,0(9)
	ld 9,-24(1)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L351
.L348:
	li 9,-1
	b .L351
.L347:
	li 9,0
.L351:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	b .L353
.L354:
	ld 10,-24(1)
	addi 9,10,4
	std 9,-24(1)
	ld 9,-32(1)
	addi 8,9,4
	std 8,-32(1)
	lwz 10,0(10)
	stw 10,0(9)
.L353:
	ld 9,-16(1)
	addi 10,9,-1
	std 10,-16(1)
	cmpdi 0,9,0
	bne 0,.L354
	ld 9,-48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 10,-32(1)
	ld 9,-24(1)
	cmpd 0,10,9
	bne 0,.L357
	ld 9,-32(1)
	b .L358
.L357:
	ld 10,-32(1)
	ld 9,-24(1)
	subf 10,9,10
	ld 9,-16(1)
	sldi 9,9,2
	cmpld 0,10,9
	bge 0,.L363
	b .L360
.L361:
	ld 9,-16(1)
	sldi 9,9,2
	ld 10,-24(1)
	add 10,10,9
	ld 9,-16(1)
	sldi 9,9,2
	ld 8,-32(1)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
.L360:
	ld 9,-16(1)
	addi 10,9,-1
	std 10,-16(1)
	cmpdi 0,9,0
	bne 0,.L361
	b .L362
.L364:
	ld 10,-24(1)
	addi 9,10,4
	std 9,-24(1)
	ld 9,-32(1)
	addi 8,9,4
	std 8,-32(1)
	lwz 10,0(10)
	stw 10,0(9)
.L363:
	ld 9,-16(1)
	addi 10,9,-1
	std 10,-16(1)
	cmpdi 0,9,0
	bne 0,.L364
.L362:
	ld 9,-48(1)
.L358:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-wmemmove
	.align 2
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	std 3,-32(1)
	mr 9,4
	std 5,-16(1)
	stw 9,-24(1)
	ld 9,-32(1)
	std 9,-48(1)
	b .L366
.L367:
	ld 9,-32(1)
	addi 10,9,4
	std 10,-32(1)
	lwz 10,-24(1)
	stw 10,0(9)
.L366:
	ld 9,-16(1)
	addi 10,9,-1
	std 10,-16(1)
	cmpdi 0,9,0
	bne 0,.L367
	ld 9,-48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE68:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	ld 10,-48(1)
	ld 9,-40(1)
	cmpld 0,10,9
	bge 0,.L370
	ld 10,-48(1)
	ld 9,-16(1)
	add 9,10,9
	std 9,-48(1)
	ld 10,-40(1)
	ld 9,-16(1)
	add 9,10,9
	std 9,-40(1)
	b .L371
.L372:
	ld 9,-48(1)
	addi 9,9,-1
	std 9,-48(1)
	ld 9,-40(1)
	addi 9,9,-1
	std 9,-40(1)
	ld 9,-48(1)
	lbz 10,0(9)
	ld 9,-40(1)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L371:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L372
	b .L376
.L370:
	ld 10,-48(1)
	ld 9,-40(1)
	cmpd 0,10,9
	beq 0,.L376
	b .L374
.L375:
	ld 10,-48(1)
	addi 9,10,1
	std 9,-48(1)
	ld 9,-40(1)
	addi 8,9,1
	std 8,-40(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L374:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L375
.L376:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE69:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	ld 10,-16(1)
	lwz 9,-8(1)
	rotld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE70:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	lwz 9,-8(1)
	subfic 9,9,64
	ld 10,-16(1)
	rotld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE71:
	.size	rotr64,.-rotr64
	.align 2
	.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lwz 10,-16(1)
	lwz 9,-12(1)
	rotlw 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE72:
	.size	rotl32,.-rotl32
	.align 2
	.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lwz 9,-12(1)
	subfic 9,9,32
	lwz 10,-16(1)
	rotlw 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE73:
	.size	rotr32,.-rotr32
	.align 2
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	ld 10,-16(1)
	lwz 9,-8(1)
	sld 10,10,9
	lwz 9,-8(1)
	subfic 9,9,64
	ld 8,-16(1)
	srd 9,8,9
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE74:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	ld 10,-16(1)
	lwz 9,-8(1)
	srd 10,10,9
	lwz 9,-8(1)
	subfic 9,9,64
	ld 8,-16(1)
	sld 9,8,9
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE75:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	mr 9,3
	mr 10,4
	sth 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lhz 10,-16(1)
	lwz 9,-12(1)
	slw 9,10,9
	mr 8,9
	lhz 10,-16(1)
	lwz 9,-12(1)
	subfic 9,9,16
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE76:
	.size	rotl16,.-rotl16
	.align 2
	.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	mr 9,3
	mr 10,4
	sth 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lhz 10,-16(1)
	lwz 9,-12(1)
	srw 9,10,9
	mr 8,9
	lhz 10,-16(1)
	lwz 9,-12(1)
	subfic 9,9,16
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE77:
	.size	rotr16,.-rotr16
	.align 2
	.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stb 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lbz 10,-16(1)
	lwz 9,-12(1)
	slw 9,10,9
	mr 8,9
	lbz 10,-16(1)
	lwz 9,-12(1)
	subfic 9,9,8
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE78:
	.size	rotl8,.-rotl8
	.align 2
	.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stb 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lbz 10,-16(1)
	lwz 9,-12(1)
	srw 9,10,9
	mr 8,9
	lbz 10,-16(1)
	lwz 9,-12(1)
	subfic 9,9,8
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE79:
	.size	rotr8,.-rotr8
	.align 2
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	mr 9,3
	sth 9,-16(1)
	li 9,255
	std 9,-32(1)
	lhz 10,-16(1)
	ld 9,-32(1)
	sldi 9,9,8
	and 9,10,9
	srdi 9,9,8
	mr 10,9
	ld 9,-32(1)
	mr 8,9
	lhz 9,-16(1)
	and 9,9,8
	slwi 9,9,8
	or 9,10,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE80:
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	li 9,255
	std 9,-32(1)
	lwz 10,-16(1)
	ld 9,-32(1)
	sldi 9,9,24
	and 9,10,9
	srdi 9,9,24
	mr 8,9
	lwz 10,-16(1)
	ld 9,-32(1)
	sldi 9,9,16
	and 9,10,9
	srdi 9,9,8
	or 10,8,9
	ld 9,-32(1)
	slwi 8,9,8
	lwz 9,-16(1)
	and 9,8,9
	slwi 9,9,8
	or 10,10,9
	ld 9,-32(1)
	mr 8,9
	lwz 9,-16(1)
	and 9,8,9
	slwi 9,9,24
	or 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE81:
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	std 3,-16(1)
	li 9,255
	std 9,-32(1)
	ld 9,-32(1)
	sldi 10,9,56
	ld 9,-16(1)
	and 9,10,9
	srdi 10,9,56
	ld 9,-32(1)
	sldi 8,9,48
	ld 9,-16(1)
	and 9,8,9
	srdi 9,9,40
	or 10,10,9
	ld 9,-32(1)
	sldi 8,9,40
	ld 9,-16(1)
	and 9,8,9
	srdi 9,9,24
	or 10,10,9
	ld 9,-32(1)
	sldi 8,9,32
	ld 9,-16(1)
	and 9,8,9
	srdi 9,9,8
	or 10,10,9
	ld 9,-32(1)
	sldi 8,9,24
	ld 9,-16(1)
	and 9,8,9
	sldi 9,9,8
	or 10,10,9
	ld 9,-32(1)
	sldi 8,9,16
	ld 9,-16(1)
	and 9,8,9
	sldi 9,9,24
	or 10,10,9
	ld 9,-32(1)
	sldi 8,9,8
	ld 9,-16(1)
	and 9,8,9
	sldi 9,9,40
	or 10,10,9
	ld 8,-16(1)
	ld 9,-32(1)
	and 9,8,9
	sldi 9,9,56
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE82:
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	li 9,0
	stw 9,-32(1)
	b .L404
.L407:
	lwz 10,-16(1)
	lwz 9,-32(1)
	srw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L405
	lwz 9,-32(1)
	addi 9,9,1
	b .L406
.L405:
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L404:
	lwz 9,-32(1)
	cmplwi 0,9,31
	ble 0,.L407
	li 9,0
.L406:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE83:
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	cmpdi 0,3,0
	bne 0,.L409
	li 9,0
	b .L414
.L409:
	std 31,-8(1)
	.cfi_offset 31, -8
	mr 9,3
	li 31,1
	b .L411
.L412:
	srawi 9,9,1
	extsw 9,9
	addi 31,31,1
.L411:
	rlwinm 10,9,0,31,31
	cmpwi 0,10,0
	beq 0,.L412
	mr 9,31
	extsw 9,9
	mr 3,9
	ld 31,-8(1)
	.cfi_restore 31
	blr
.L414:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,1
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
	stfs 1,-16(1)
	lfs 12,-16(1)
	addis 9,2,.LC3@toc@ha
	addi 9,9,.LC3@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	blt 0,.L417
	lfs 12,-16(1)
	addis 9,2,.LC4@toc@ha
	addi 9,9,.LC4@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	bng 0,.L422
.L417:
	li 9,1
	b .L421
.L422:
	li 9,0
.L421:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfd 1,-16(1)
	lfd 12,-16(1)
	addis 9,2,.LC5@toc@ha
	addi 9,9,.LC5@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L424
	lfd 12,-16(1)
	addis 9,2,.LC6@toc@ha
	addi 9,9,.LC6@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bng 0,.L429
.L424:
	li 9,1
	b .L428
.L429:
	li 9,0
.L428:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	lfd 13,-8(1)
	addis 9,2,.LC7@toc@ha
	addi 9,9,.LC7@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	blt 0,.L431
	lfd 12,-16(1)
	lfd 13,-8(1)
	addis 9,2,.LC8@toc@ha
	addi 9,9,.LC8@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bng 0,.L436
.L431:
	li 9,1
	b .L435
.L436:
	li 9,0
.L435:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	std 3,-32(1)
	mr 9,4
	stw 9,-24(1)
	lwz 9,-24(1)
	extsw 9,9
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 12,0
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 11,0(9)
	fmr 0,12
	fmr 1,11
	ld 9,-32(1)
	stfd 0,0(9)
	stfd 1,8(9)
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfs 1,-16(1)
	mr 9,4
	stw 9,-12(1)
	lfs 12,-16(1)
	lfs 0,-16(1)
	fcmpu 0,12,0
	bun 0,.L439
	lfs 0,-16(1)
	fadds 0,0,0
	lfs 12,-16(1)
	fcmpu 0,12,0
	beq 0,.L439
	lwz 9,-12(1)
	cmpwi 0,9,0
	bge 0,.L440
	addis 9,2,.LC9@toc@ha
	addi 9,9,.LC9@toc@l
	lfs 0,0(9)
	b .L441
.L440:
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfs 0,0(9)
.L441:
	stfs 0,-32(1)
.L444:
	lwz 9,-12(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L442
	lfs 12,-16(1)
	lfs 0,-32(1)
	fmuls 0,12,0
	stfs 0,-16(1)
.L442:
	lwz 9,-12(1)
	srawi 9,9,1
	addze 9,9
	stw 9,-12(1)
	lwz 9,-12(1)
	cmpwi 0,9,0
	beq 0,.L446
	lfs 0,-32(1)
	fmuls 0,0,0
	stfs 0,-32(1)
	b .L444
.L446:
	nop
.L439:
	lfs 0,-16(1)
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfd 1,-16(1)
	mr 9,4
	stw 9,-8(1)
	lfd 12,-16(1)
	lfd 0,-16(1)
	fcmpu 0,12,0
	bun 0,.L448
	lfd 0,-16(1)
	fadd 0,0,0
	lfd 12,-16(1)
	fcmpu 0,12,0
	beq 0,.L448
	lwz 9,-8(1)
	cmpwi 0,9,0
	bge 0,.L449
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	b .L450
.L449:
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 0,0(9)
.L450:
	stfd 0,-32(1)
.L453:
	lwz 9,-8(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L451
	lfd 12,-16(1)
	lfd 0,-32(1)
	fmul 0,12,0
	stfd 0,-16(1)
.L451:
	lwz 9,-8(1)
	srawi 9,9,1
	addze 9,9
	stw 9,-8(1)
	lwz 9,-8(1)
	cmpwi 0,9,0
	beq 0,.L455
	lfd 0,-32(1)
	fmul 0,0,0
	stfd 0,-32(1)
	b .L453
.L455:
	nop
.L448:
	lfd 0,-16(1)
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	addi 9,1,48
	stfd 1,0(9)
	stfd 2,8(9)
	mr 9,5
	stw 5,64(1)
	addi 9,1,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bun 0,.L457
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	addi 9,1,48
	lfd 0,0(9)
	lfd 1,8(9)
	fmr 4,1
	fmr 3,0
	fmr 2,1
	fmr 1,0
	bl __gcc_qadd
	nop
	fmr 0,1
	fmr 1,2
	fmr 13,1
	fmr 12,0
	addi 9,1,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	beq 0,.L466
	lwz 9,64(1)
	cmpwi 0,9,0
	bge 0,.L458
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	b .L459
.L458:
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
.L459:
	stfd 0,32(1)
	stfd 1,40(1)
.L462:
	lwz 9,64(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L460
	addi 9,1,48
	lfd 3,32(1)
	lfd 4,40(1)
	lfd 1,0(9)
	lfd 2,8(9)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	addi 9,1,48
	stfd 0,0(9)
	stfd 1,8(9)
.L460:
	lwz 9,64(1)
	srawi 9,9,1
	addze 9,9
	stw 9,64(1)
	lwz 9,64(1)
	cmpwi 0,9,0
	beq 0,.L464
	lfd 3,32(1)
	lfd 4,40(1)
	lfd 1,32(1)
	lfd 2,40(1)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	stfd 0,32(1)
	stfd 1,40(1)
	b .L462
.L464:
	nop
	ld 0,96(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	b .L457
.L466:
	.cfi_restore_state
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L457:
	addi 9,1,48
	lfd 0,0(9)
	lfd 1,8(9)
	fmr 2,1
	fmr 1,0
	addi 1,1,80
	.cfi_def_cfa_offset 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	std 5,-16(1)
	ld 9,-24(1)
	std 9,-48(1)
	ld 9,-32(1)
	std 9,-40(1)
	b .L468
.L469:
	ld 9,-48(1)
	addi 10,9,1
	std 10,-48(1)
	lbz 8,0(9)
	ld 9,-40(1)
	addi 10,9,1
	std 10,-40(1)
	lbz 10,0(9)
	xor 10,8,10
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
.L468:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L469
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 3,48(1)
	bl strlen
	mr 10,3
	ld 9,48(1)
	add 9,9,3
	std 9,32(1)
	b .L472
.L474:
	ld 9,56(1)
	addi 9,9,1
	std 9,56(1)
	ld 9,32(1)
	addi 9,9,1
	std 9,32(1)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L472:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L473
	ld 9,56(1)
	lbz 10,0(9)
	ld 9,32(1)
	stb 10,0(9)
	ld 9,32(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L474
.L473:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L475
	ld 9,32(1)
	li 10,0
	stb 10,0(9)
.L475:
	ld 9,48(1)
	mr 3,9
	addi 1,1,80
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE93:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	li 9,0
	std 9,-32(1)
	b .L479
.L484:
	nop
	ld 9,-32(1)
	addi 9,9,1
	std 9,-32(1)
.L479:
	ld 10,-32(1)
	ld 9,-8(1)
	cmpld 0,10,9
	bge 0,.L480
	ld 10,-16(1)
	ld 9,-32(1)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L484
.L480:
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE94:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	b .L486
.L490:
	ld 9,-8(1)
	std 9,-32(1)
	b .L487
.L489:
	ld 9,-32(1)
	addi 10,9,1
	std 10,-32(1)
	lbz 10,0(9)
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L487
	ld 9,-16(1)
	b .L488
.L487:
	ld 9,-32(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L489
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L486:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L490
	li 9,0
.L488:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 10,-16(1)
	li 10,0
	std 10,-32(1)
.L493:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,-16(1)
	cmpw 0,8,10
	bne 0,.L492
	std 9,-32(1)
.L492:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L493
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,32(1)
	ld 3,56(1)
	bl strlen
	std 3,40(1)
	ld 9,40(1)
	cmpdi 0,9,0
	bne 0,.L498
	ld 9,48(1)
	b .L497
.L500:
	ld 5,40(1)
	ld 4,56(1)
	ld 3,32(1)
	bl strncmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L499
	ld 9,32(1)
	b .L497
.L499:
	ld 9,32(1)
	addi 9,9,1
	std 9,32(1)
.L498:
	ld 9,56(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 4,9
	ld 3,32(1)
	bl strchr
	std 3,32(1)
	ld 9,32(1)
	cmpdi 0,9,0
	bne 0,.L500
	li 9,0
.L497:
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L503
	lfd 12,-8(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bgt 0,.L505
.L503:
	lfd 12,-16(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bng 0,.L506
	lfd 12,-8(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L506
.L505:
	lfd 0,-16(1)
	fneg 0,0
	b .L509
.L506:
	lfd 0,-16(1)
.L509:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	std 6,72(1)
	ld 10,56(1)
	ld 9,72(1)
	subf 9,9,10
	ld 10,48(1)
	add 9,10,9
	std 9,40(1)
	ld 9,72(1)
	cmpdi 0,9,0
	bne 0,.L513
	ld 9,48(1)
	b .L514
.L513:
	ld 10,56(1)
	ld 9,72(1)
	subfc 9,9,10
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpdi 0,9,0
	beq 0,.L515
	li 9,0
	b .L514
.L515:
	mflr 0
	.cfi_register 65, 0
	std 0,96(1)
	.cfi_offset 65, 16
	ld 9,48(1)
	std 9,32(1)
	b .L516
.L518:
	ld 9,32(1)
	lbz 10,0(9)
	ld 9,64(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L517
	ld 9,32(1)
	addi 10,9,1
	ld 9,64(1)
	addi 8,9,1
	ld 9,72(1)
	addi 9,9,-1
	mr 5,9
	mr 4,8
	mr 3,10
	bl memcmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L517
	ld 9,32(1)
	ld 0,96(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	b .L514
.L517:
	.cfi_restore_state
	ld 9,32(1)
	addi 9,9,1
	std 9,32(1)
.L516:
	ld 10,32(1)
	ld 9,40(1)
	cmpld 0,10,9
	ble 0,.L518
	li 9,0
	ld 0,96(1)
	mtlr 0
	.cfi_restore 65
.L514:
	mr 3,9
	addi 1,1,80
	.cfi_def_cfa_offset 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,32(1)
	std 4,40(1)
	std 5,48(1)
	ld 5,48(1)
	ld 4,40(1)
	ld 3,32(1)
	bl memcpy
	mr 10,3
	ld 9,48(1)
	add 9,10,9
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stfd 1,-16(1)
	std 4,-8(1)
	li 9,0
	stw 9,-28(1)
	li 9,0
	stw 9,-32(1)
	lfd 12,-16(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L524
	lfd 0,-16(1)
	fneg 0,0
	stfd 0,-16(1)
	li 9,1
	stw 9,-32(1)
.L524:
	lfd 12,-16(1)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L539
	b .L528
.L529:
	lwz 9,-28(1)
	addi 9,9,1
	stw 9,-28(1)
	lfd 12,-16(1)
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 0,0(9)
	fdiv 0,12,0
	stfd 0,-16(1)
.L528:
	lfd 12,-16(1)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,1,2
	beq 0,.L529
	b .L530
.L539:
	lfd 12,-16(1)
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L530
	lfd 12,-16(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	beq 0,.L530
	b .L532
.L533:
	lwz 9,-28(1)
	addi 9,9,-1
	stw 9,-28(1)
	lfd 0,-16(1)
	fadd 0,0,0
	stfd 0,-16(1)
.L532:
	lfd 12,-16(1)
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L533
.L530:
	ld 9,-8(1)
	lwz 10,-28(1)
	stw 10,0(9)
	lwz 9,-32(1)
	cmpwi 0,9,0
	beq 0,.L534
	lfd 0,-16(1)
	fneg 0,0
	stfd 0,-16(1)
.L534:
	lfd 0,-16(1)
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE101:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	li 9,0
	std 9,-32(1)
	ld 9,-16(1)
	std 9,-24(1)
	b .L541
.L543:
	ld 9,-24(1)
	rldicl 9,9,0,63
	cmpdi 0,9,0
	beq 0,.L542
	ld 10,-32(1)
	ld 9,-8(1)
	add 9,10,9
	std 9,-32(1)
.L542:
	ld 9,-8(1)
	sldi 9,9,1
	std 9,-8(1)
	ld 9,-24(1)
	srdi 9,9,1
	std 9,-24(1)
.L541:
	ld 9,-24(1)
	cmpdi 0,9,0
	bne 0,.L543
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mr 9,3
	mr 10,4
	std 5,-8(1)
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	li 9,1
	stw 9,-32(1)
	li 9,0
	stw 9,-28(1)
	b .L546
.L548:
	lwz 9,-12(1)
	slwi 9,9,1
	stw 9,-12(1)
	lwz 9,-32(1)
	slwi 9,9,1
	stw 9,-32(1)
.L546:
	lwz 10,-12(1)
	lwz 9,-16(1)
	cmplw 0,10,9
	bge 0,.L549
	lwz 9,-32(1)
	cmpwi 0,9,0
	beq 0,.L549
	lwz 9,-12(1)
	cmpwi 0,9,0
	bge 0,.L548
	b .L549
.L551:
	lwz 10,-16(1)
	lwz 9,-12(1)
	cmplw 0,10,9
	blt 0,.L550
	lwz 10,-16(1)
	lwz 9,-12(1)
	subf 9,9,10
	stw 9,-16(1)
	lwz 10,-28(1)
	lwz 9,-32(1)
	or 9,10,9
	stw 9,-28(1)
.L550:
	lwz 9,-32(1)
	srwi 9,9,1
	stw 9,-32(1)
	lwz 9,-12(1)
	srwi 9,9,1
	stw 9,-12(1)
.L549:
	lwz 9,-32(1)
	cmpwi 0,9,0
	bne 0,.L551
	ld 9,-8(1)
	cmpdi 0,9,0
	beq 0,.L552
	lwz 9,-16(1)
	b .L553
.L552:
	lwz 9,-28(1)
.L553:
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	mr 9,3
	stb 9,-16(1)
	lbz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L555
	li 9,7
	b .L556
.L555:
	lbz 9,-16(1)
	slwi 9,9,8
	cntlzw 9,9
	stw 9,-32(1)
	lwz 9,-32(1)
	addi 9,9,-1
.L556:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	bge 0,.L558
	ld 9,-16(1)
	not 9,9
	std 9,-16(1)
.L558:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L559
	li 9,63
	b .L560
.L559:
	ld 9,-16(1)
	cntlzd 9,9
	stw 9,-32(1)
	lwz 9,-32(1)
	addi 9,9,-1
.L560:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	li 9,0
	stw 9,-32(1)
	b .L562
.L564:
	lwz 9,-16(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L563
	lwz 10,-32(1)
	lwz 9,-12(1)
	add 9,10,9
	stw 9,-32(1)
.L563:
	lwz 9,-16(1)
	srwi 9,9,1
	stw 9,-16(1)
	lwz 9,-12(1)
	slwi 9,9,1
	stw 9,-12(1)
.L562:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L564
	lwz 9,-32(1)
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	mr 9,5
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,3
	stw 9,-56(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,0,28
	stw 9,-60(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	ld 10,-48(1)
	ld 9,-40(1)
	cmpld 0,10,9
	blt 0,.L567
	lwz 9,-16(1)
	ld 10,-40(1)
	add 9,10,9
	ld 10,-48(1)
	cmpld 0,10,9
	ble 0,.L574
.L567:
	li 9,0
	stw 9,-64(1)
	b .L569
.L570:
	lwz 9,-64(1)
	sldi 9,9,3
	ld 10,-24(1)
	add 10,10,9
	lwz 9,-64(1)
	sldi 9,9,3
	ld 8,-32(1)
	add 9,8,9
	ld 10,0(10)
	std 10,0(9)
	lwz 9,-64(1)
	addi 9,9,1
	stw 9,-64(1)
.L569:
	lwz 10,-64(1)
	lwz 9,-56(1)
	cmplw 0,10,9
	blt 0,.L570
	b .L571
.L572:
	lwz 9,-60(1)
	ld 10,-40(1)
	add 10,10,9
	lwz 9,-60(1)
	ld 8,-48(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,-60(1)
	addi 9,9,1
	stw 9,-60(1)
.L571:
	lwz 10,-16(1)
	lwz 9,-60(1)
	cmplw 0,10,9
	bgt 0,.L572
	b .L573
.L575:
	lwz 9,-16(1)
	ld 10,-40(1)
	add 10,10,9
	lwz 9,-16(1)
	ld 8,-48(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L574:
	lwz 9,-16(1)
	addi 10,9,-1
	stw 10,-16(1)
	cmpwi 0,9,0
	bne 0,.L575
	nop
.L573:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	mr 9,5
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,1
	stw 9,-60(1)
	ld 9,-32(1)
	std 9,-56(1)
	ld 9,-24(1)
	std 9,-48(1)
	ld 10,-56(1)
	ld 9,-48(1)
	cmpld 0,10,9
	blt 0,.L577
	lwz 9,-16(1)
	ld 10,-48(1)
	add 9,10,9
	ld 10,-56(1)
	cmpld 0,10,9
	ble 0,.L583
.L577:
	li 9,0
	stw 9,-64(1)
	b .L579
.L580:
	lwz 9,-64(1)
	sldi 9,9,1
	ld 10,-24(1)
	add 10,10,9
	lwz 9,-64(1)
	sldi 9,9,1
	ld 8,-32(1)
	add 9,8,9
	lhz 10,0(10)
	sth 10,0(9)
	lwz 9,-64(1)
	addi 9,9,1
	stw 9,-64(1)
.L579:
	lwz 10,-64(1)
	lwz 9,-60(1)
	cmplw 0,10,9
	blt 0,.L580
	lwz 9,-16(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L582
	lwz 9,-16(1)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 10,-48(1)
	add 10,10,9
	lwz 9,-16(1)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 8,-56(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	b .L582
.L584:
	lwz 9,-16(1)
	ld 10,-48(1)
	add 10,10,9
	lwz 9,-16(1)
	ld 8,-56(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L583:
	lwz 9,-16(1)
	addi 10,9,-1
	stw 10,-16(1)
	cmpwi 0,9,0
	bne 0,.L584
	nop
.L582:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	mr 9,5
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,2
	stw 9,-56(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,0,29
	stw 9,-60(1)
	ld 9,-32(1)
	std 9,-48(1)
	ld 9,-24(1)
	std 9,-40(1)
	ld 10,-48(1)
	ld 9,-40(1)
	cmpld 0,10,9
	blt 0,.L586
	lwz 9,-16(1)
	ld 10,-40(1)
	add 9,10,9
	ld 10,-48(1)
	cmpld 0,10,9
	ble 0,.L593
.L586:
	li 9,0
	stw 9,-64(1)
	b .L588
.L589:
	lwz 9,-64(1)
	sldi 9,9,2
	ld 10,-24(1)
	add 10,10,9
	lwz 9,-64(1)
	sldi 9,9,2
	ld 8,-32(1)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,-64(1)
	addi 9,9,1
	stw 9,-64(1)
.L588:
	lwz 10,-64(1)
	lwz 9,-56(1)
	cmplw 0,10,9
	blt 0,.L589
	b .L590
.L591:
	lwz 9,-60(1)
	ld 10,-40(1)
	add 10,10,9
	lwz 9,-60(1)
	ld 8,-48(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,-60(1)
	addi 9,9,1
	stw 9,-60(1)
.L590:
	lwz 10,-16(1)
	lwz 9,-60(1)
	cmplw 0,10,9
	bgt 0,.L591
	b .L592
.L594:
	lwz 9,-16(1)
	ld 10,-40(1)
	add 10,10,9
	lwz 9,-16(1)
	ld 8,-48(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L593:
	lwz 9,-16(1)
	addi 10,9,-1
	stw 10,-16(1)
	cmpwi 0,9,0
	bne 0,.L594
	nop
.L592:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-__cmovw
	.align 2
	.globl __modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lwz 9,-16(1)
	lwz 10,-12(1)
	divw 8,9,10
	lwz 10,-12(1)
	mullw 10,8,10
	subf 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE110:
	.size	__modi,.-__modi
	.align 2
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	rldicl 9,9,0,32
	std 9,-8(1)
	lfd 0,-8(1)
	fcfid 0,0
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE111:
	.size	__uitod,.-__uitod
	.align 2
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	rldicl 10,9,0,32
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L600
	mr 9,10
.L600:
	std 9,-8(1)
	lfd 0,-8(1)
	fcfid 12,0
	frsp 0,12
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE112:
	.size	__uitof,.-__uitof
	.align 2
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	blt 0,.L604
	lfd 0,-16(1)
	fcfid 0,0
	b .L605
.L604:
	ld 9,-16(1)
	rldicl 9,9,0,63
	ld 10,-16(1)
	srdi 10,10,1
	or 9,9,10
	std 9,-8(1)
	lfd 0,-8(1)
	fcfid 0,0
	fadd 0,0,0
.L605:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-__ulltod
	.align 2
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	cmpdi 0,9,0
	blt 0,.L608
	ld 10,-16(1)
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L609
	mr 9,10
.L609:
	std 9,-8(1)
	lfd 0,-8(1)
	fcfid 12,0
	frsp 0,12
	b .L611
.L608:
	ld 9,-16(1)
	rldicl 10,9,0,63
	ld 9,-16(1)
	srdi 9,9,1
	or 10,10,9
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L610
	mr 9,10
.L610:
	std 9,-8(1)
	lfd 0,-8(1)
	fcfid 12,0
	frsp 0,12
	fadds 0,0,0
.L611:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-__ulltof
	.align 2
	.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	lwz 9,-16(1)
	lwz 10,-12(1)
	divwu 8,9,10
	lwz 10,-12(1)
	mullw 10,8,10
	subf 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE115:
	.size	__umodi,.-__umodi
	.align 2
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	mr 9,3
	sth 9,-16(1)
	li 9,0
	stw 9,-32(1)
	b .L615
.L618:
	lhz 10,-16(1)
	lwz 9,-32(1)
	subfic 9,9,15
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L620
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L615:
	lwz 9,-32(1)
	cmpwi 0,9,15
	ble 0,.L618
	b .L617
.L620:
	nop
.L617:
	lwz 9,-32(1)
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	mr 9,3
	sth 9,-16(1)
	li 9,0
	stw 9,-32(1)
	b .L622
.L625:
	lhz 10,-16(1)
	lwz 9,-32(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L627
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L622:
	lwz 9,-32(1)
	cmpwi 0,9,15
	ble 0,.L625
	b .L624
.L627:
	nop
.L624:
	lwz 9,-32(1)
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfs 1,-16(1)
	lfs 12,-16(1)
	addis 9,2,.LC16@toc@ha
	addi 9,9,.LC16@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L633
	lfs 12,-16(1)
	addis 9,2,.LC16@toc@ha
	addi 9,9,.LC16@toc@l
	lfs 0,0(9)
	fsubs 0,12,0
	fctidz 0,0
	stfd 0,-8(1)
	ld 9,-8(1)
	addis 9,9,0x1
	addi 9,9,-32768
	b .L631
.L633:
	lfs 0,-16(1)
	fctidz 0,0
	stfd 0,-8(1)
	ld 9,-8(1)
.L631:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	mr 9,3
	sth 9,-16(1)
	li 9,0
	stw 9,-28(1)
	li 9,0
	stw 9,-32(1)
	b .L635
.L637:
	lhz 10,-16(1)
	lwz 9,-32(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L636
	lwz 9,-28(1)
	addi 9,9,1
	stw 9,-28(1)
.L636:
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L635:
	lwz 9,-32(1)
	cmpwi 0,9,15
	ble 0,.L637
	lwz 9,-28(1)
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-__parityhi2
	.align 2
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	mr 9,3
	sth 9,-16(1)
	li 9,0
	stw 9,-28(1)
	li 9,0
	stw 9,-32(1)
	b .L640
.L642:
	lhz 10,-16(1)
	lwz 9,-32(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L641
	lwz 9,-28(1)
	addi 9,9,1
	stw 9,-28(1)
.L641:
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L640:
	lwz 9,-32(1)
	cmpwi 0,9,15
	ble 0,.L642
	lwz 9,-28(1)
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	li 9,0
	stw 9,-32(1)
	b .L645
.L647:
	lwz 9,-16(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L646
	lwz 10,-32(1)
	lwz 9,-12(1)
	add 9,10,9
	stw 9,-32(1)
.L646:
	lwz 9,-16(1)
	srwi 9,9,1
	stw 9,-16(1)
	lwz 9,-12(1)
	slwi 9,9,1
	stw 9,-12(1)
.L645:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L647
	lwz 9,-32(1)
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	li 9,0
	stw 9,-32(1)
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L652
	li 9,0
	b .L651
.L654:
	lwz 9,-12(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L653
	lwz 10,-32(1)
	lwz 9,-16(1)
	add 9,10,9
	stw 9,-32(1)
.L653:
	lwz 9,-16(1)
	slwi 9,9,1
	stw 9,-16(1)
	lwz 9,-12(1)
	srwi 9,9,1
	stw 9,-12(1)
.L652:
	lwz 9,-12(1)
	cmpwi 0,9,0
	bne 0,.L654
	lwz 9,-32(1)
.L651:
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mr 9,3
	mr 8,4
	mr 10,5
	stw 9,-16(1)
	mr 9,8
	stw 9,-12(1)
	mr 9,10
	stw 9,-8(1)
	li 9,1
	stw 9,-32(1)
	li 9,0
	stw 9,-28(1)
	b .L656
.L658:
	lwz 9,-12(1)
	slwi 9,9,1
	stw 9,-12(1)
	lwz 9,-32(1)
	slwi 9,9,1
	stw 9,-32(1)
.L656:
	lwz 10,-12(1)
	lwz 9,-16(1)
	cmplw 0,10,9
	bge 0,.L659
	lwz 9,-32(1)
	cmpwi 0,9,0
	beq 0,.L659
	lwz 9,-12(1)
	cmpwi 0,9,0
	bge 0,.L658
	b .L659
.L661:
	lwz 10,-16(1)
	lwz 9,-12(1)
	cmplw 0,10,9
	blt 0,.L660
	lwz 10,-16(1)
	lwz 9,-12(1)
	subf 9,9,10
	stw 9,-16(1)
	lwz 10,-28(1)
	lwz 9,-32(1)
	or 9,10,9
	stw 9,-28(1)
.L660:
	lwz 9,-32(1)
	srwi 9,9,1
	stw 9,-32(1)
	lwz 9,-12(1)
	srwi 9,9,1
	stw 9,-12(1)
.L659:
	lwz 9,-32(1)
	cmpwi 0,9,0
	bne 0,.L661
	lwz 9,-8(1)
	cmpwi 0,9,0
	beq 0,.L662
	lwz 9,-16(1)
	b .L663
.L662:
	lwz 9,-28(1)
.L663:
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	stfs 1,-16(1)
	stfs 2,-12(1)
	lfs 12,-16(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bnl 0,.L672
	li 9,-1
	b .L667
.L672:
	lfs 12,-16(1)
	lfs 0,-12(1)
	fcmpu 0,12,0
	bng 0,.L673
	li 9,1
	b .L667
.L673:
	li 9,0
.L667:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bnl 0,.L682
	li 9,-1
	b .L677
.L682:
	lfd 12,-16(1)
	lfd 0,-8(1)
	fcmpu 0,12,0
	bng 0,.L683
	li 9,1
	b .L677
.L683:
	li 9,0
.L677:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	mulld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll,.-__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	mulld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull,.-__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	li 9,0
	stw 9,-28(1)
	li 9,0
	stw 9,-24(1)
	lwz 9,-12(1)
	cmpwi 0,9,0
	bge 0,.L689
	lwz 9,-12(1)
	neg 9,9
	stw 9,-12(1)
	li 9,1
	stw 9,-28(1)
.L689:
	li 9,0
	stb 9,-32(1)
	b .L690
.L693:
	lwz 9,-12(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L691
	lwz 10,-24(1)
	lwz 9,-16(1)
	add 9,10,9
	stw 9,-24(1)
.L691:
	lwz 9,-16(1)
	slwi 9,9,1
	stw 9,-16(1)
	lwz 9,-12(1)
	srawi 9,9,1
	stw 9,-12(1)
	lbz 9,-32(1)
	addi 9,9,1
	stb 9,-32(1)
.L690:
	lwz 9,-12(1)
	cmpwi 0,9,0
	beq 0,.L692
	lbz 9,-32(1)
	cmplwi 0,9,31
	ble 0,.L693
.L692:
	lwz 9,-28(1)
	cmpwi 0,9,0
	beq 0,.L694
	lwz 9,-24(1)
	neg 9,9
	b .L696
.L694:
	lwz 9,-24(1)
.L696:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,48(1)
	std 4,56(1)
	li 9,0
	stw 9,32(1)
	ld 9,48(1)
	cmpdi 0,9,0
	bge 0,.L698
	ld 9,48(1)
	neg 9,9
	std 9,48(1)
	lwz 9,32(1)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,32(1)
.L698:
	ld 9,56(1)
	cmpdi 0,9,0
	bge 0,.L699
	ld 9,56(1)
	neg 9,9
	std 9,56(1)
	lwz 9,32(1)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,32(1)
.L699:
	ld 9,48(1)
	mr 8,9
	ld 9,56(1)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,0
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,40(1)
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L700
	ld 9,40(1)
	neg 9,9
	std 9,40(1)
.L700:
	ld 9,40(1)
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
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
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	std 3,48(1)
	std 4,56(1)
	li 9,0
	stw 9,32(1)
	ld 9,48(1)
	cmpdi 0,9,0
	bge 0,.L704
	ld 9,48(1)
	neg 9,9
	std 9,48(1)
	li 9,1
	stw 9,32(1)
.L704:
	ld 9,56(1)
	cmpdi 0,9,0
	bge 0,.L705
	ld 9,56(1)
	neg 9,9
	std 9,56(1)
.L705:
	ld 9,48(1)
	mr 8,9
	ld 9,56(1)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,1
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,40(1)
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L706
	ld 9,40(1)
	neg 9,9
	std 9,40(1)
.L706:
	ld 9,40(1)
	mr 3,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mr 9,3
	mr 8,4
	mr 10,5
	sth 9,-16(1)
	mr 9,8
	sth 9,-14(1)
	mr 9,10
	stw 9,-12(1)
	li 9,1
	sth 9,-32(1)
	li 9,0
	sth 9,-30(1)
	b .L710
.L712:
	lhz 9,-14(1)
	slwi 9,9,1
	sth 9,-14(1)
	lhz 9,-32(1)
	slwi 9,9,1
	sth 9,-32(1)
.L710:
	lhz 10,-14(1)
	lhz 9,-16(1)
	cmplw 0,10,9
	bge 0,.L713
	lhz 9,-32(1)
	cmpwi 0,9,0
	beq 0,.L713
	lhz 9,-14(1)
	extsh 9,9
	cmpwi 0,9,0
	bge 0,.L712
	b .L713
.L715:
	lhz 10,-16(1)
	lhz 9,-14(1)
	cmplw 0,10,9
	blt 0,.L714
	lhz 10,-16(1)
	lhz 9,-14(1)
	subf 9,9,10
	sth 9,-16(1)
	lhz 10,-30(1)
	lhz 9,-32(1)
	or 9,10,9
	sth 9,-30(1)
.L714:
	lhz 9,-32(1)
	srwi 9,9,1
	sth 9,-32(1)
	lhz 9,-14(1)
	srwi 9,9,1
	sth 9,-14(1)
.L713:
	lhz 9,-32(1)
	cmpwi 0,9,0
	bne 0,.L715
	lwz 9,-12(1)
	cmpwi 0,9,0
	beq 0,.L716
	lhz 9,-16(1)
	b .L717
.L716:
	lhz 9,-30(1)
.L717:
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	std 3,-32(1)
	std 4,-24(1)
	mr 9,5
	stw 9,-16(1)
	li 9,1
	std 9,-48(1)
	li 9,0
	std 9,-40(1)
	b .L719
.L721:
	ld 9,-24(1)
	sldi 9,9,1
	std 9,-24(1)
	ld 9,-48(1)
	sldi 9,9,1
	std 9,-48(1)
.L719:
	ld 10,-24(1)
	ld 9,-32(1)
	cmpld 0,10,9
	bge 0,.L722
	ld 9,-48(1)
	cmpdi 0,9,0
	beq 0,.L722
	ld 9,-24(1)
	rlwinm 9,9,0,0,0
	cmpdi 0,9,0
	beq 0,.L721
	b .L722
.L724:
	ld 10,-32(1)
	ld 9,-24(1)
	cmpld 0,10,9
	blt 0,.L723
	ld 10,-32(1)
	ld 9,-24(1)
	subf 9,9,10
	std 9,-32(1)
	ld 10,-40(1)
	ld 9,-48(1)
	or 9,10,9
	std 9,-40(1)
.L723:
	ld 9,-48(1)
	srdi 9,9,1
	std 9,-48(1)
	ld 9,-24(1)
	srdi 9,9,1
	std 9,-24(1)
.L722:
	ld 9,-48(1)
	cmpdi 0,9,0
	bne 0,.L724
	lwz 9,-16(1)
	cmpwi 0,9,0
	beq 0,.L725
	ld 9,-32(1)
	b .L726
.L725:
	ld 9,-40(1)
.L726:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	li 9,32
	stw 9,-48(1)
	ld 9,-16(1)
	std 9,-40(1)
	lwz 10,-8(1)
	lwz 9,-48(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L728
	li 9,0
	stw 9,-32(1)
	lwz 10,-40(1)
	lwz 8,-8(1)
	lwz 9,-48(1)
	subf 9,9,8
	slw 9,10,9
	stw 9,-28(1)
	b .L729
.L728:
	lwz 9,-8(1)
	cmpwi 0,9,0
	bne 0,.L730
	ld 9,-16(1)
	b .L732
.L730:
	lwz 10,-40(1)
	lwz 9,-8(1)
	slw 9,10,9
	stw 9,-32(1)
	lwz 9,-36(1)
	mr 10,9
	lwz 9,-8(1)
	slw 10,10,9
	lwz 8,-40(1)
	lwz 7,-48(1)
	lwz 9,-8(1)
	subf 9,9,7
	srw 9,8,9
	or 9,10,9
	stw 9,-28(1)
.L729:
	ld 9,-32(1)
.L732:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,-16(1)
	li 9,64
	stw 9,-80(1)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-64
	std 10,0(9)
	std 11,8(9)
	lwz 10,-16(1)
	lwz 9,-80(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L734
	li 9,0
	std 9,-48(1)
	ld 10,-64(1)
	lwz 8,-16(1)
	lwz 9,-80(1)
	subf 9,9,8
	sld 9,10,9
	std 9,-40(1)
	b .L735
.L734:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L736
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	b .L738
.L736:
	ld 10,-64(1)
	lwz 9,-16(1)
	sld 9,10,9
	std 9,-48(1)
	ld 9,-56(1)
	mr 10,9
	lwz 9,-16(1)
	sld 10,10,9
	ld 8,-64(1)
	lwz 7,-80(1)
	lwz 9,-16(1)
	subf 9,9,7
	srd 9,8,9
	or 9,10,9
	std 9,-40(1)
.L735:
	addi 9,1,-48
	ld 10,0(9)
	ld 11,8(9)
.L738:
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-__ashlti3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	li 9,32
	stw 9,-48(1)
	ld 9,-16(1)
	std 9,-40(1)
	lwz 10,-8(1)
	lwz 9,-48(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L740
	lwz 10,-36(1)
	lwz 9,-48(1)
	addi 9,9,-1
	sraw 9,10,9
	stw 9,-28(1)
	lwz 10,-36(1)
	lwz 8,-8(1)
	lwz 9,-48(1)
	subf 9,9,8
	sraw 9,10,9
	stw 9,-32(1)
	b .L741
.L740:
	lwz 9,-8(1)
	cmpwi 0,9,0
	bne 0,.L742
	ld 9,-16(1)
	b .L744
.L742:
	lwz 10,-36(1)
	lwz 9,-8(1)
	sraw 9,10,9
	stw 9,-28(1)
	lwz 9,-36(1)
	mr 8,9
	lwz 10,-48(1)
	lwz 9,-8(1)
	subf 9,9,10
	slw 10,8,9
	lwz 8,-40(1)
	lwz 9,-8(1)
	srw 9,8,9
	or 9,10,9
	stw 9,-32(1)
.L741:
	ld 9,-32(1)
.L744:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,-16(1)
	li 9,64
	stw 9,-80(1)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-64
	std 10,0(9)
	std 11,8(9)
	lwz 10,-16(1)
	lwz 9,-80(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L746
	ld 10,-56(1)
	lwz 9,-80(1)
	addi 9,9,-1
	srad 9,10,9
	std 9,-40(1)
	ld 10,-56(1)
	lwz 8,-16(1)
	lwz 9,-80(1)
	subf 9,9,8
	srad 9,10,9
	std 9,-48(1)
	b .L747
.L746:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L748
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	b .L750
.L748:
	ld 10,-56(1)
	lwz 9,-16(1)
	srad 9,10,9
	std 9,-40(1)
	ld 9,-56(1)
	mr 8,9
	lwz 10,-80(1)
	lwz 9,-16(1)
	subf 9,9,10
	sld 10,8,9
	ld 8,-64(1)
	lwz 9,-16(1)
	srd 9,8,9
	or 9,10,9
	std 9,-48(1)
.L747:
	addi 9,1,-48
	ld 10,0(9)
	ld 11,8(9)
.L750:
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-__ashrti3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	srdi 10,9,56
	ld 9,-16(1)
	srdi 9,9,40
	rlwinm 9,9,0,16,23
	or 10,10,9
	ld 9,-16(1)
	srdi 9,9,24
	rlwinm 9,9,0,8,15
	or 10,10,9
	ld 9,-16(1)
	srdi 9,9,8
	rlwinm 9,9,0,0,7
	or 10,10,9
	ld 9,-16(1)
	sldi 9,9,8
	sldi 9,9,24
	rldicr 9,9,0,7
	srdi 9,9,24
	or 10,10,9
	ld 9,-16(1)
	sldi 9,9,24
	sldi 9,9,16
	rldicr 9,9,0,7
	srdi 9,9,16
	or 10,10,9
	ld 9,-16(1)
	sldi 9,9,40
	sldi 9,9,8
	rldicr 9,9,0,7
	srdi 9,9,8
	or 10,10,9
	ld 9,-16(1)
	sldi 9,9,56
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE137:
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 10,9,24
	lwz 9,-16(1)
	srwi 9,9,8
	rlwinm 9,9,0,16,23
	or 10,10,9
	lwz 9,-16(1)
	slwi 9,9,8
	rlwinm 9,9,0,8,15
	or 10,10,9
	lwz 9,-16(1)
	slwi 9,9,24
	or 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE138:
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	stw 9,-32(1)
	lwz 10,-32(1)
	lis 9,0x1
	cmplw 0,10,9
	bge 0,.L756
	li 9,16
	b .L757
.L756:
	li 9,0
.L757:
	stw 9,-28(1)
	lwz 9,-28(1)
	subfic 9,9,16
	lwz 10,-32(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,16,23
	cmpwi 0,9,0
	bne 0,.L758
	li 9,8
	b .L759
.L758:
	li 9,0
.L759:
	stw 9,-28(1)
	lwz 9,-28(1)
	subfic 9,9,8
	lwz 10,-32(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,24,27
	cmpwi 0,9,0
	bne 0,.L760
	li 9,4
	b .L761
.L760:
	li 9,0
.L761:
	stw 9,-28(1)
	lwz 9,-28(1)
	subfic 9,9,4
	lwz 10,-32(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,28,29
	cmpwi 0,9,0
	bne 0,.L762
	li 9,2
	b .L763
.L762:
	li 9,0
.L763:
	stw 9,-28(1)
	lwz 9,-28(1)
	subfic 9,9,2
	lwz 10,-32(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,30,30
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	mr 10,9
	lwz 9,-32(1)
	subfic 9,9,2
	mullw 10,10,9
	lwz 9,-24(1)
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-32
	std 10,0(9)
	std 11,8(9)
	ld 9,-24(1)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,-48(1)
	ld 10,-24(1)
	ld 9,-48(1)
	not 9,9
	and 9,10,9
	mr 8,9
	ld 10,-32(1)
	ld 9,-48(1)
	and 9,10,9
	or 9,8,9
	cntlzd 9,9
	mr 10,9
	ld 9,-48(1)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-__clzti2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 9,-16(1)
	std 9,-32(1)
	ld 9,-8(1)
	std 9,-24(1)
	lwz 10,-28(1)
	lwz 9,-20(1)
	cmpw 0,10,9
	bge 0,.L768
	li 9,0
	b .L773
.L768:
	lwz 10,-28(1)
	lwz 9,-20(1)
	cmpw 0,10,9
	ble 0,.L770
	li 9,2
	b .L773
.L770:
	lwz 10,-32(1)
	lwz 9,-24(1)
	cmplw 0,10,9
	bge 0,.L771
	li 9,0
	b .L773
.L771:
	lwz 10,-32(1)
	lwz 9,-24(1)
	cmplw 0,10,9
	ble 0,.L772
	li 9,2
	b .L773
.L772:
	li 9,1
.L773:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	std 3,32(1)
	std 4,40(1)
	ld 4,40(1)
	ld 3,32(1)
	bl __cmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	std 5,0(9)
	std 6,8(9)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	std 10,-64(1)
	std 11,-56(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	ld 10,-56(1)
	ld 9,-40(1)
	cmpd 0,10,9
	bge 0,.L778
	li 9,0
	b .L783
.L778:
	ld 10,-56(1)
	ld 9,-40(1)
	cmpd 0,10,9
	ble 0,.L780
	li 9,2
	b .L783
.L780:
	ld 10,-64(1)
	ld 9,-48(1)
	cmpld 0,10,9
	bge 0,.L781
	li 9,0
	b .L783
.L781:
	ld 10,-64(1)
	ld 9,-48(1)
	cmpld 0,10,9
	ble 0,.L782
	li 9,2
	b .L783
.L782:
	li 9,1
.L783:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-__cmpti2
	.align 2
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	stw 9,-32(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,16,31
	cmpwi 0,9,0
	bne 0,.L785
	li 9,16
	b .L786
.L785:
	li 9,0
.L786:
	stw 9,-28(1)
	lwz 10,-32(1)
	lwz 9,-28(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,24,31
	cmpwi 0,9,0
	bne 0,.L787
	li 9,8
	b .L788
.L787:
	li 9,0
.L788:
	stw 9,-28(1)
	lwz 10,-32(1)
	lwz 9,-28(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,28,31
	cmpwi 0,9,0
	bne 0,.L789
	li 9,4
	b .L790
.L789:
	li 9,0
.L790:
	stw 9,-28(1)
	lwz 10,-32(1)
	lwz 9,-28(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,30,31
	cmpwi 0,9,0
	bne 0,.L791
	li 9,2
	b .L792
.L791:
	li 9,0
.L792:
	stw 9,-28(1)
	lwz 10,-32(1)
	lwz 9,-28(1)
	srw 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,30,31
	stw 9,-32(1)
	lwz 9,-28(1)
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-32(1)
	not 9,9
	rlwinm 10,9,0,31,31
	lwz 9,-32(1)
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 10,10,9
	lwz 9,-24(1)
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE144:
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-32
	std 10,0(9)
	std 11,8(9)
	ld 9,-32(1)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,-48(1)
	ld 10,-24(1)
	ld 9,-48(1)
	and 9,10,9
	mr 8,9
	ld 10,-32(1)
	ld 9,-48(1)
	not 9,9
	and 9,10,9
	or 9,8,9
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	mr 10,9
	ld 9,-48(1)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-__ctzti2
	.align 2
	.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	std 10,-32(1)
	std 11,-24(1)
	ld 9,-32(1)
	cmpdi 0,9,0
	bne 0,.L797
	ld 9,-24(1)
	cmpdi 0,9,0
	bne 0,.L798
	li 9,0
	b .L800
.L798:
	ld 9,-24(1)
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,65
	b .L800
.L797:
	ld 9,-32(1)
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,1
.L800:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-__ffsti2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	std 3,-16(1)
	mr 9,4
	stw 9,-8(1)
	li 9,32
	stw 9,-48(1)
	ld 9,-16(1)
	std 9,-40(1)
	lwz 10,-8(1)
	lwz 9,-48(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L802
	li 9,0
	stw 9,-28(1)
	lwz 10,-36(1)
	lwz 8,-8(1)
	lwz 9,-48(1)
	subf 9,9,8
	srw 9,10,9
	stw 9,-32(1)
	b .L803
.L802:
	lwz 9,-8(1)
	cmpwi 0,9,0
	bne 0,.L804
	ld 9,-16(1)
	b .L806
.L804:
	lwz 10,-36(1)
	lwz 9,-8(1)
	srw 9,10,9
	stw 9,-28(1)
	lwz 10,-36(1)
	lwz 8,-48(1)
	lwz 9,-8(1)
	subf 9,9,8
	slw 10,10,9
	lwz 8,-40(1)
	lwz 9,-8(1)
	srw 9,8,9
	or 9,10,9
	stw 9,-32(1)
.L803:
	ld 9,-32(1)
.L806:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,-16(1)
	li 9,64
	stw 9,-80(1)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-64
	std 10,0(9)
	std 11,8(9)
	lwz 10,-16(1)
	lwz 9,-80(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L808
	li 9,0
	std 9,-40(1)
	ld 10,-56(1)
	lwz 8,-16(1)
	lwz 9,-80(1)
	subf 9,9,8
	srd 9,10,9
	std 9,-48(1)
	b .L809
.L808:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L810
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	b .L812
.L810:
	ld 10,-56(1)
	lwz 9,-16(1)
	srd 9,10,9
	std 9,-40(1)
	ld 10,-56(1)
	lwz 8,-80(1)
	lwz 9,-16(1)
	subf 9,9,8
	sld 10,10,9
	ld 8,-64(1)
	lwz 9,-16(1)
	srd 9,8,9
	or 9,10,9
	std 9,-48(1)
.L809:
	addi 9,1,-48
	ld 10,0(9)
	ld 11,8(9)
.L812:
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-__lshrti3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,-16(1)
	mr 9,10
	stw 9,-12(1)
	li 9,16
	stw 9,-48(1)
	li 10,-1
	lwz 9,-48(1)
	srw 9,10,9
	stw 9,-44(1)
	lwz 10,-16(1)
	lwz 9,-44(1)
	and 10,10,9
	lwz 8,-12(1)
	lwz 9,-44(1)
	and 9,8,9
	mullw 9,10,9
	stw 9,-32(1)
	lwz 10,-32(1)
	lwz 9,-48(1)
	srw 9,10,9
	stw 9,-40(1)
	lwz 10,-32(1)
	lwz 9,-44(1)
	and 9,10,9
	stw 9,-32(1)
	lwz 10,-16(1)
	lwz 9,-48(1)
	srw 10,10,9
	lwz 8,-12(1)
	lwz 9,-44(1)
	and 9,8,9
	mullw 9,10,9
	lwz 10,-40(1)
	add 9,10,9
	stw 9,-40(1)
	lwz 10,-32(1)
	lwz 8,-40(1)
	lwz 9,-44(1)
	and 8,8,9
	lwz 9,-48(1)
	slw 9,8,9
	add 9,10,9
	stw 9,-32(1)
	lwz 10,-40(1)
	lwz 9,-48(1)
	srw 9,10,9
	stw 9,-28(1)
	lwz 10,-32(1)
	lwz 9,-48(1)
	srw 9,10,9
	stw 9,-40(1)
	lwz 10,-32(1)
	lwz 9,-44(1)
	and 9,10,9
	stw 9,-32(1)
	lwz 10,-12(1)
	lwz 9,-48(1)
	srw 10,10,9
	lwz 8,-16(1)
	lwz 9,-44(1)
	and 9,8,9
	mullw 9,10,9
	lwz 10,-40(1)
	add 9,10,9
	stw 9,-40(1)
	lwz 10,-32(1)
	lwz 8,-40(1)
	lwz 9,-44(1)
	and 8,8,9
	lwz 9,-48(1)
	slw 9,8,9
	add 9,10,9
	stw 9,-32(1)
	lwz 9,-28(1)
	mr 8,9
	lwz 10,-40(1)
	lwz 9,-48(1)
	srw 9,10,9
	add 9,8,9
	stw 9,-28(1)
	lwz 9,-28(1)
	mr 7,9
	lwz 10,-16(1)
	lwz 9,-48(1)
	srw 10,10,9
	lwz 8,-12(1)
	lwz 9,-48(1)
	srw 9,8,9
	mullw 9,10,9
	add 9,7,9
	stw 9,-28(1)
	ld 9,-32(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	std 3,64(1)
	std 4,72(1)
	ld 9,64(1)
	std 9,32(1)
	ld 9,72(1)
	std 9,40(1)
	lwz 9,32(1)
	lwz 10,40(1)
	rldicl 10,10,0,32
	rldicl 9,9,0,32
	mr 4,10
	mr 3,9
	bl __muldsi3
	mr 9,3
	std 9,48(1)
	lwz 9,52(1)
	mr 8,9
	lwz 9,36(1)
	mr 10,9
	lwz 9,40(1)
	mullw 10,10,9
	lwz 9,32(1)
	lwz 7,44(1)
	mullw 9,9,7
	add 9,10,9
	add 9,8,9
	stw 9,52(1)
	ld 9,48(1)
	mr 3,9
	addi 1,1,80
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	li 9,32
	stw 9,-64(1)
	li 10,-1
	lwz 9,-64(1)
	srd 9,10,9
	std 9,-56(1)
	ld 10,-16(1)
	ld 9,-56(1)
	and 10,10,9
	ld 8,-8(1)
	ld 9,-56(1)
	and 9,8,9
	mulld 9,10,9
	std 9,-32(1)
	ld 10,-32(1)
	lwz 9,-64(1)
	srd 9,10,9
	std 9,-48(1)
	ld 10,-32(1)
	ld 9,-56(1)
	and 9,10,9
	std 9,-32(1)
	ld 10,-16(1)
	lwz 9,-64(1)
	srd 10,10,9
	ld 8,-8(1)
	ld 9,-56(1)
	and 9,8,9
	mulld 9,10,9
	ld 10,-48(1)
	add 9,10,9
	std 9,-48(1)
	ld 10,-32(1)
	ld 8,-48(1)
	ld 9,-56(1)
	and 8,8,9
	lwz 9,-64(1)
	sld 9,8,9
	add 9,10,9
	std 9,-32(1)
	ld 10,-48(1)
	lwz 9,-64(1)
	srd 9,10,9
	std 9,-24(1)
	ld 10,-32(1)
	lwz 9,-64(1)
	srd 9,10,9
	std 9,-48(1)
	ld 10,-32(1)
	ld 9,-56(1)
	and 9,10,9
	std 9,-32(1)
	ld 10,-8(1)
	lwz 9,-64(1)
	srd 10,10,9
	ld 8,-16(1)
	ld 9,-56(1)
	and 9,8,9
	mulld 9,10,9
	ld 10,-48(1)
	add 9,10,9
	std 9,-48(1)
	ld 10,-32(1)
	ld 8,-48(1)
	ld 9,-56(1)
	and 8,8,9
	lwz 9,-64(1)
	sld 9,8,9
	add 9,10,9
	std 9,-32(1)
	ld 9,-24(1)
	mr 8,9
	ld 10,-48(1)
	lwz 9,-64(1)
	srd 9,10,9
	add 9,8,9
	std 9,-24(1)
	ld 9,-24(1)
	mr 7,9
	ld 10,-16(1)
	lwz 9,-64(1)
	srd 10,10,9
	ld 8,-8(1)
	lwz 9,-64(1)
	srd 9,8,9
	mulld 9,10,9
	add 9,7,9
	std 9,-24(1)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	addi 9,1,80
	std 3,0(9)
	std 4,8(9)
	addi 9,1,96
	std 5,0(9)
	std 6,8(9)
	addi 9,1,80
	ld 10,0(9)
	ld 11,8(9)
	std 10,32(1)
	std 11,40(1)
	addi 9,1,96
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,48
	std 10,0(9)
	std 11,8(9)
	ld 9,32(1)
	ld 10,48(1)
	mr 4,10
	mr 3,9
	bl __mulddi3
	mr 11,4
	mr 10,3
	addi 9,1,64
	std 10,0(9)
	std 11,8(9)
	ld 9,72(1)
	mr 8,9
	ld 9,40(1)
	mr 10,9
	ld 9,48(1)
	mulld 10,10,9
	ld 9,32(1)
	ld 7,56(1)
	mulld 9,9,7
	add 9,10,9
	add 9,8,9
	std 9,72(1)
	addi 9,1,64
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE152:
	.size	__multi3,.-__multi3
	.align 2
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	neg 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE153:
	.size	__negdi2,.-__negdi2
	.align 2
	.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 11,-8(1)
	subfic 8,10,0
	subfze 9,11
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE154:
	.size	__negti2,.-__negti2
	.align 2
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	std 9,-24(1)
	lwz 9,-20(1)
	mr 10,9
	lwz 9,-24(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,16
	lwz 10,-32(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,8
	lwz 10,-32(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,4
	lwz 10,-32(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE155:
	.size	__paritydi2,.-__paritydi2
	.align 2
	.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	ld 9,-40(1)
	mr 10,9
	ld 9,-48(1)
	xor 9,10,9
	std 9,-32(1)
	lwz 9,-28(1)
	mr 10,9
	lwz 9,-32(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	srwi 9,9,16
	lwz 10,-64(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	srwi 9,9,8
	lwz 10,-64(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	srwi 9,9,4
	lwz 10,-64(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-__parityti2
	.align 2
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,16
	lwz 10,-32(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,8
	lwz 10,-32(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,4
	lwz 10,-32(1)
	xor 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE157:
	.size	__paritysi2,.-__paritysi2
	.align 2
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	std 3,-16(1)
	ld 9,-16(1)
	std 9,-32(1)
	ld 9,-32(1)
	srdi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	rldimi 9,9,32,0
	and 9,10,9
	ld 10,-32(1)
	subf 9,9,10
	std 9,-32(1)
	ld 9,-32(1)
	srdi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 10,10,9
	ld 8,-32(1)
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 9,8,9
	add 9,10,9
	std 9,-32(1)
	ld 9,-32(1)
	srdi 10,9,4
	ld 9,-32(1)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 9,10,9
	std 9,-32(1)
	ld 9,-32(1)
	mr 10,9
	ld 9,-32(1)
	srdi 9,9,32
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-24(1)
	srwi 9,9,16
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 9,-24(1)
	srwi 10,9,8
	lwz 9,-24(1)
	add 9,10,9
	rlwinm 9,9,0,25,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE158:
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	mr 9,3
	stw 9,-16(1)
	lwz 9,-16(1)
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	and 9,10,9
	lwz 10,-32(1)
	subf 9,9,10
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	lwz 8,-32(1)
	lis 9,0x3333
	ori 9,9,0x3333
	and 9,8,9
	add 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 10,9,4
	lwz 9,-32(1)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 9,9,16
	lwz 10,-32(1)
	add 9,10,9
	stw 9,-32(1)
	lwz 9,-32(1)
	srwi 10,9,8
	lwz 9,-32(1)
	add 9,10,9
	rlwinm 9,9,0,26,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE159:
	.size	__popcountsi2,.-__popcountsi2
	.align 2
	.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	std 16,-128(1)
	std 17,-120(1)
	std 18,-112(1)
	std 19,-104(1)
	std 20,-96(1)
	std 21,-88(1)
	std 22,-80(1)
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	.cfi_offset 16, -128
	.cfi_offset 17, -120
	.cfi_offset 18, -112
	.cfi_offset 19, -104
	.cfi_offset 20, -96
	.cfi_offset 21, -88
	.cfi_offset 22, -80
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	addi 5,1,-144
	std 3,0(5)
	std 4,8(5)
	addi 5,1,-144
	ld 4,0(5)
	ld 5,8(5)
	std 4,-176(1)
	std 5,-168(1)
	ld 5,-168(1)
	sldi 5,5,63
	ld 4,-176(1)
	srdi 6,4,1
	or 6,5,6
	ld 5,-168(1)
	srdi 7,5,1
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	mr 19,5
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	mr 18,5
	and 4,6,18
	and 5,7,19
	ld 6,-176(1)
	ld 7,-168(1)
	subfc 20,4,6
	subfe 21,5,7
	std 20,-176(1)
	std 21,-168(1)
	ld 7,-168(1)
	sldi 7,7,62
	ld 6,-176(1)
	srdi 8,6,2
	or 8,7,8
	ld 7,-168(1)
	srdi 9,7,2
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	mr 23,7
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	mr 22,7
	and 6,8,22
	and 7,9,23
	ld 8,-176(1)
	ld 9,-168(1)
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 25,5
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 24,5
	and 8,8,24
	and 9,9,25
	addc 26,6,8
	adde 27,7,9
	std 26,-176(1)
	std 27,-168(1)
	ld 9,-168(1)
	sldi 9,9,60
	ld 8,-176(1)
	srdi 10,8,4
	or 10,9,10
	ld 9,-168(1)
	srdi 11,9,4
	ld 8,-176(1)
	ld 9,-168(1)
	addc 28,10,8
	adde 29,11,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 31,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 30,9
	and 10,28,30
	and 11,29,31
	std 10,-176(1)
	std 11,-168(1)
	ld 9,-176(1)
	ld 10,-168(1)
	srdi 16,10,0
	li 17,0
	mr 10,16
	add 9,9,10
	std 9,-160(1)
	ld 9,-160(1)
	mr 10,9
	ld 9,-160(1)
	srdi 9,9,32
	add 9,10,9
	stw 9,-152(1)
	lwz 9,-152(1)
	srwi 9,9,16
	lwz 10,-152(1)
	add 9,10,9
	stw 9,-152(1)
	lwz 9,-152(1)
	srwi 10,9,8
	lwz 9,-152(1)
	add 9,10,9
	rlwinm 9,9,0,24,31
	extsw 9,9
	mr 3,9
	ld 16,-128(1)
	ld 17,-120(1)
	ld 18,-112(1)
	ld 19,-104(1)
	ld 20,-96(1)
	ld 21,-88(1)
	ld 22,-80(1)
	ld 23,-72(1)
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
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	blr
	.long 0
	.byte 0,0,0,0,0,16,0,1
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
	stfd 1,-16(1)
	mr 9,4
	stw 9,-8(1)
	lwz 9,-8(1)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,-24(1)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 0,0(9)
	stfd 0,-32(1)
.L844:
	lwz 9,-8(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L841
	lfd 12,-32(1)
	lfd 0,-16(1)
	fmul 0,12,0
	stfd 0,-32(1)
.L841:
	lwz 9,-8(1)
	srawi 9,9,1
	addze 9,9
	stw 9,-8(1)
	lwz 9,-8(1)
	cmpwi 0,9,0
	beq 0,.L849
	lfd 0,-16(1)
	fmul 0,0,0
	stfd 0,-16(1)
	b .L844
.L849:
	nop
	lwz 9,-24(1)
	cmpwi 0,9,0
	beq 0,.L845
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 0,-32(1)
	fdiv 0,12,0
	b .L847
.L845:
	lfd 0,-32(1)
.L847:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stfs 1,-16(1)
	mr 9,4
	stw 9,-12(1)
	lwz 9,-12(1)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,-28(1)
	addis 9,2,.LC17@toc@ha
	addi 9,9,.LC17@toc@l
	lfs 0,0(9)
	stfs 0,-32(1)
.L854:
	lwz 9,-12(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L851
	lfs 12,-32(1)
	lfs 0,-16(1)
	fmuls 0,12,0
	stfs 0,-32(1)
.L851:
	lwz 9,-12(1)
	srawi 9,9,1
	addze 9,9
	stw 9,-12(1)
	lwz 9,-12(1)
	cmpwi 0,9,0
	beq 0,.L859
	lfs 0,-16(1)
	fmuls 0,0,0
	stfs 0,-16(1)
	b .L854
.L859:
	nop
	lwz 9,-28(1)
	cmpwi 0,9,0
	beq 0,.L855
	addis 9,2,.LC17@toc@ha
	addi 9,9,.LC17@toc@l
	lfs 12,0(9)
	lfs 0,-32(1)
	fdivs 0,12,0
	b .L857
.L855:
	lfs 0,-32(1)
.L857:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 9,-16(1)
	std 9,-32(1)
	ld 9,-8(1)
	std 9,-24(1)
	lwz 10,-28(1)
	lwz 9,-20(1)
	cmplw 0,10,9
	bge 0,.L861
	li 9,0
	b .L866
.L861:
	lwz 10,-28(1)
	lwz 9,-20(1)
	cmplw 0,10,9
	ble 0,.L863
	li 9,2
	b .L866
.L863:
	lwz 10,-32(1)
	lwz 9,-24(1)
	cmplw 0,10,9
	bge 0,.L864
	li 9,0
	b .L866
.L864:
	lwz 10,-32(1)
	lwz 9,-24(1)
	cmplw 0,10,9
	ble 0,.L865
	li 9,2
	b .L866
.L865:
	li 9,1
.L866:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
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
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 65, 16
	std 3,32(1)
	std 4,40(1)
	ld 9,32(1)
	ld 10,40(1)
	mr 4,10
	mr 3,9
	bl __ucmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	.cfi_restore 65
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	std 5,0(9)
	std 6,8(9)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	std 10,-64(1)
	std 11,-56(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	ld 10,-56(1)
	ld 9,-40(1)
	cmpld 0,10,9
	bge 0,.L871
	li 9,0
	b .L876
.L871:
	ld 10,-56(1)
	ld 9,-40(1)
	cmpld 0,10,9
	ble 0,.L873
	li 9,2
	b .L876
.L873:
	ld 10,-64(1)
	ld 9,-48(1)
	cmpld 0,10,9
	bge 0,.L874
	li 9,0
	b .L876
.L874:
	ld 10,-64(1)
	ld 9,-48(1)
	cmpld 0,10,9
	ble 0,.L875
	li 9,2
	b .L876
.L875:
	li 9,1
.L876:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.long	0
	.section	.rodata.cst8
	.align 3
.LC2:
	.quad	6364136223846793005
	.section	.rodata.cst4
	.align 2
.LC3:
	.long	-8388609
	.align 2
.LC4:
	.long	2139095039
	.section	.rodata.cst8
	.align 3
.LC5:
	.long	-1
	.long	-1048577
	.align 3
.LC6:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC7:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC8:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.section	.rodata.cst4
	.align 2
.LC9:
	.long	1056964608
	.align 2
.LC10:
	.long	1073741824
	.section	.rodata.cst8
	.align 3
.LC11:
	.long	0
	.long	1071644672
	.align 3
.LC12:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 4
.LC13:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.align 4
.LC14:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 3
.LC15:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
.LC16:
	.long	1191182336
	.align 2
.LC17:
	.long	1065353216
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
